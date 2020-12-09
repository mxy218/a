.class Lcom/android/server/wm/WindowState;
.super Lcom/android/server/wm/WindowContainer;
.source "WindowState.java"

# interfaces
.implements Lcom/android/server/policy/WindowManagerPolicy$WindowState;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wm/WindowState$MoveAnimationSpec;,
        Lcom/android/server/wm/WindowState$WindowId;,
        Lcom/android/server/wm/WindowState$UpdateReportedVisibilityResults;,
        Lcom/android/server/wm/WindowState$DeathRecipient;,
        Lcom/android/server/wm/WindowState$DeadWindowEventReceiver;,
        Lcom/android/server/wm/WindowState$PowerManagerWrapper;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/server/wm/WindowContainer<",
        "Lcom/android/server/wm/WindowState;",
        ">;",
        "Lcom/android/server/policy/WindowManagerPolicy$WindowState;"
    }
.end annotation


# static fields
.field private static final DEFAULT_DIM_AMOUNT_DEAD_WINDOW:F = 0.5f

.field static final EXCLUSION_LEFT:I = 0x0

.field static final EXCLUSION_RIGHT:I = 0x1

.field static final LEGACY_POLICY_VISIBILITY:I = 0x1

.field static final MINIMUM_VISIBLE_HEIGHT_IN_DP:I = 0x20

.field static final MINIMUM_VISIBLE_WIDTH_IN_DP:I = 0x30

.field private static final POLICY_VISIBILITY_ALL:I = 0x3

.field static final RESIZE_HANDLE_WIDTH_IN_DP:I = 0x1e

.field static final TAG:Ljava/lang/String; = "WindowManager"

.field private static final VISIBLE_FOR_USER:I = 0x2

.field private static final sTmpSB:Ljava/lang/StringBuilder;

.field private static final sWindowSubLayerComparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Lcom/android/server/wm/WindowState;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mAnimateReplacingWindow:Z

.field mAnimatingExit:Z

.field mAppDied:Z

.field mAppFreezing:Z

.field final mAppOp:I

.field private mAppOpVisibility:Z

.field mAppToken:Lcom/android/server/wm/AppWindowToken;

.field final mAttrs:Landroid/view/WindowManager$LayoutParams;

.field final mBaseLayer:I

.field final mClient:Landroid/view/IWindow;

.field private mClientChannel:Landroid/view/InputChannel;

.field final mContext:Landroid/content/Context;

.field private mDeadWindowEventReceiver:Lcom/android/server/wm/WindowState$DeadWindowEventReceiver;

.field final mDeathRecipient:Lcom/android/server/wm/WindowState$DeathRecipient;

.field mDestroying:Z

.field private mDragResizing:Z

.field private mDragResizingChangeReported:Z

.field private mDrawLock:Landroid/os/PowerManager$WakeLock;

.field private mDrawnStateEvaluated:Z

.field private final mEmbeddedDisplayContents:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Lcom/android/server/wm/DisplayContent;",
            ">;"
        }
    .end annotation
.end field

.field private final mExclusionRects:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/graphics/Rect;",
            ">;"
        }
    .end annotation
.end field

.field mFinishSeamlessRotateFrameNumber:J

.field private mFocusCallbacks:Landroid/os/RemoteCallbackList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/RemoteCallbackList<",
            "Landroid/view/IWindowFocusObserver;",
            ">;"
        }
    .end annotation
.end field

.field private mForceHideNonSystemOverlayWindow:Z

.field final mForceSeamlesslyRotate:Z

.field private mFrameNumber:J

.field final mGivenContentInsets:Landroid/graphics/Rect;

.field mGivenInsetsPending:Z

.field final mGivenTouchableRegion:Landroid/graphics/Region;

.field final mGivenVisibleInsets:Landroid/graphics/Rect;

.field mGlobalScale:F

.field mHScale:F

.field mHasSurface:Z

.field mHaveFrame:Z

.field mHidden:Z

.field private mHiddenWhileSuspended:Z

.field mInRelayout:Z

.field mInputChannel:Landroid/view/InputChannel;

.field final mInputWindowHandle:Landroid/view/InputWindowHandle;

.field private final mInsetFrame:Landroid/graphics/Rect;

.field private mInsetProvider:Lcom/android/server/wm/InsetsSourceProvider;

.field mInvGlobalScale:F

.field private mIsChildWindow:Z

.field private mIsDimming:Z

.field private final mIsFloatingLayer:Z

.field final mIsImWindow:Z

.field final mIsWallpaper:Z

.field private mLastConfigReportedToClient:Z

.field private final mLastExclusionLogUptimeMillis:[J

.field mLastFreezeDuration:I

.field private final mLastGrantedExclusionHeight:[I

.field mLastHScale:F

.field final mLastRelayoutContentInsets:Landroid/graphics/Rect;

.field private final mLastReportedConfiguration:Landroid/util/MergedConfiguration;

.field private final mLastReportedDisplayOffset:Landroid/graphics/Point;

.field private final mLastRequestedExclusionHeight:[I

.field private mLastRequestedHeight:I

.field private mLastRequestedWidth:I

.field private mLastShownChangedReported:Z

.field final mLastSurfaceInsets:Landroid/graphics/Rect;

.field private mLastTitle:Ljava/lang/CharSequence;

.field mLastVScale:F

.field mLastVisibleLayoutRotation:I

.field mLayer:I

.field final mLayoutAttached:Z

.field mLayoutNeeded:Z

.field mLayoutSeq:I

.field mLegacyPolicyVisibilityAfterAnim:Z

.field private mMovedByResize:Z

.field mObscured:Z

.field private mOrientationChangeTimedOut:Z

.field private mOrientationChanging:Z

.field final mOwnerCanAddInternalSystemWindow:Z

.field final mOwnerUid:I

.field mPendingSeamlessRotate:Lcom/android/server/wm/SeamlessRotator;

.field mPermanentlyHidden:Z

.field final mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

.field private mPolicyVisibility:I

.field private mPowerManagerWrapper:Lcom/android/server/wm/WindowState$PowerManagerWrapper;

.field mRelayoutCalled:Z

.field mRemoveOnExit:Z

.field mRemoved:Z

.field private mReplacementWindow:Lcom/android/server/wm/WindowState;

.field private mReplacingRemoveRequested:Z

.field mReportOrientationChanged:Z

.field mRequestedHeight:I

.field mRequestedWidth:I

.field private mResizeMode:I

.field mResizedWhileGone:Z

.field mSeamlesslyRotated:Z

.field mSeq:I

.field final mSession:Lcom/android/server/wm/Session;

.field private mShowToOwnerOnly:Z

.field mSkipEnterAnimationForSeamlessReplacement:Z

.field private mStringNameCache:Ljava/lang/String;

.field final mSubLayer:I

.field private final mSurfacePosition:Landroid/graphics/Point;

.field mSystemUiVisibility:I

.field private mTapExcludeRegionHolder:Lcom/android/server/wm/TapExcludeRegionHolder;

.field private final mTempConfiguration:Landroid/content/res/Configuration;

.field final mTmpMatrix:Landroid/graphics/Matrix;

.field private final mTmpPoint:Landroid/graphics/Point;

.field private final mTmpRect:Landroid/graphics/Rect;

.field mToken:Lcom/android/server/wm/WindowToken;

.field mTouchableInsets:I

.field mVScale:F

.field mViewVisibility:I

.field mWallpaperDisplayOffsetX:I

.field mWallpaperDisplayOffsetY:I

.field mWallpaperVisible:Z

.field mWallpaperX:F

.field mWallpaperXStep:F

.field mWallpaperY:F

.field mWallpaperYStep:F

.field private mWasExiting:Z

.field private mWasVisibleBeforeClientHidden:Z

.field mWillReplaceWindow:Z

.field final mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

.field private final mWindowFrames:Lcom/android/server/wm/WindowFrames;

.field final mWindowId:Lcom/android/server/wm/WindowState$WindowId;

.field mWindowRemovalAllowed:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 609
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sput-object v0, Lcom/android/server/wm/WindowState;->sTmpSB:Ljava/lang/StringBuilder;

    .line 615
    new-instance v0, Lcom/android/server/wm/WindowState$1;

    invoke-direct {v0}, Lcom/android/server/wm/WindowState$1;-><init>()V

    sput-object v0, Lcom/android/server/wm/WindowState;->sWindowSubLayerComparator:Ljava/util/Comparator;

    return-void
.end method

.method constructor <init>(Lcom/android/server/wm/WindowManagerService;Lcom/android/server/wm/Session;Landroid/view/IWindow;Lcom/android/server/wm/WindowToken;Lcom/android/server/wm/WindowState;IILandroid/view/WindowManager$LayoutParams;IIZ)V
    .registers 25

    .line 720
    new-instance v12, Lcom/android/server/wm/WindowState$2;

    move-object v1, p1

    invoke-direct {v12, p1}, Lcom/android/server/wm/WindowState$2;-><init>(Lcom/android/server/wm/WindowManagerService;)V

    move-object v0, p0

    move-object v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move-object/from16 v8, p8

    move/from16 v9, p9

    move/from16 v10, p10

    move/from16 v11, p11

    invoke-direct/range {v0 .. v12}, Lcom/android/server/wm/WindowState;-><init>(Lcom/android/server/wm/WindowManagerService;Lcom/android/server/wm/Session;Landroid/view/IWindow;Lcom/android/server/wm/WindowToken;Lcom/android/server/wm/WindowState;IILandroid/view/WindowManager$LayoutParams;IIZLcom/android/server/wm/WindowState$PowerManagerWrapper;)V

    .line 732
    return-void
.end method

.method constructor <init>(Lcom/android/server/wm/WindowManagerService;Lcom/android/server/wm/Session;Landroid/view/IWindow;Lcom/android/server/wm/WindowToken;Lcom/android/server/wm/WindowState;IILandroid/view/WindowManager$LayoutParams;IIZLcom/android/server/wm/WindowState$PowerManagerWrapper;)V
    .registers 26

    .line 738
    move-object v1, p0

    move-object/from16 v0, p3

    move-object/from16 v2, p4

    move-object/from16 v3, p5

    move-object/from16 v4, p8

    invoke-direct {p0, p1}, Lcom/android/server/wm/WindowContainer;-><init>(Lcom/android/server/wm/WindowManagerService;)V

    .line 253
    new-instance v5, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v5}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    iput-object v5, v1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    .line 281
    const/4 v5, 0x3

    iput v5, v1, Lcom/android/server/wm/WindowState;->mPolicyVisibility:I

    .line 291
    const/4 v5, 0x1

    iput-boolean v5, v1, Lcom/android/server/wm/WindowState;->mLegacyPolicyVisibilityAfterAnim:Z

    .line 294
    iput-boolean v5, v1, Lcom/android/server/wm/WindowState;->mAppOpVisibility:Z

    .line 299
    iput-boolean v5, v1, Lcom/android/server/wm/WindowState;->mHidden:Z

    .line 302
    iput-boolean v5, v1, Lcom/android/server/wm/WindowState;->mDragResizingChangeReported:Z

    .line 328
    const/4 v6, -0x1

    iput v6, v1, Lcom/android/server/wm/WindowState;->mLayoutSeq:I

    .line 331
    new-instance v7, Landroid/util/ArraySet;

    invoke-direct {v7}, Landroid/util/ArraySet;-><init>()V

    iput-object v7, v1, Lcom/android/server/wm/WindowState;->mEmbeddedDisplayContents:Landroid/util/ArraySet;

    .line 338
    new-instance v7, Landroid/util/MergedConfiguration;

    invoke-direct {v7}, Landroid/util/MergedConfiguration;-><init>()V

    iput-object v7, v1, Lcom/android/server/wm/WindowState;->mLastReportedConfiguration:Landroid/util/MergedConfiguration;

    .line 343
    new-instance v7, Landroid/content/res/Configuration;

    invoke-direct {v7}, Landroid/content/res/Configuration;-><init>()V

    iput-object v7, v1, Lcom/android/server/wm/WindowState;->mTempConfiguration:Landroid/content/res/Configuration;

    .line 352
    new-instance v7, Landroid/graphics/Rect;

    invoke-direct {v7}, Landroid/graphics/Rect;-><init>()V

    iput-object v7, v1, Lcom/android/server/wm/WindowState;->mLastRelayoutContentInsets:Landroid/graphics/Rect;

    .line 364
    new-instance v7, Landroid/graphics/Rect;

    invoke-direct {v7}, Landroid/graphics/Rect;-><init>()V

    iput-object v7, v1, Lcom/android/server/wm/WindowState;->mGivenContentInsets:Landroid/graphics/Rect;

    .line 370
    new-instance v7, Landroid/graphics/Rect;

    invoke-direct {v7}, Landroid/graphics/Rect;-><init>()V

    iput-object v7, v1, Lcom/android/server/wm/WindowState;->mGivenVisibleInsets:Landroid/graphics/Rect;

    .line 375
    new-instance v7, Landroid/graphics/Region;

    invoke-direct {v7}, Landroid/graphics/Region;-><init>()V

    iput-object v7, v1, Lcom/android/server/wm/WindowState;->mGivenTouchableRegion:Landroid/graphics/Region;

    .line 383
    const/4 v7, 0x0

    iput v7, v1, Lcom/android/server/wm/WindowState;->mTouchableInsets:I

    .line 386
    const/high16 v8, 0x3f800000  # 1.0f

    iput v8, v1, Lcom/android/server/wm/WindowState;->mGlobalScale:F

    .line 387
    iput v8, v1, Lcom/android/server/wm/WindowState;->mInvGlobalScale:F

    .line 388
    iput v8, v1, Lcom/android/server/wm/WindowState;->mHScale:F

    iput v8, v1, Lcom/android/server/wm/WindowState;->mVScale:F

    .line 389
    iput v8, v1, Lcom/android/server/wm/WindowState;->mLastHScale:F

    iput v8, v1, Lcom/android/server/wm/WindowState;->mLastVScale:F

    .line 390
    new-instance v8, Landroid/graphics/Matrix;

    invoke-direct {v8}, Landroid/graphics/Matrix;-><init>()V

    iput-object v8, v1, Lcom/android/server/wm/WindowState;->mTmpMatrix:Landroid/graphics/Matrix;

    .line 392
    new-instance v8, Lcom/android/server/wm/WindowFrames;

    invoke-direct {v8}, Lcom/android/server/wm/WindowFrames;-><init>()V

    iput-object v8, v1, Lcom/android/server/wm/WindowState;->mWindowFrames:Lcom/android/server/wm/WindowFrames;

    .line 398
    new-instance v8, Landroid/graphics/Rect;

    invoke-direct {v8}, Landroid/graphics/Rect;-><init>()V

    iput-object v8, v1, Lcom/android/server/wm/WindowState;->mInsetFrame:Landroid/graphics/Rect;

    .line 405
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    iput-object v8, v1, Lcom/android/server/wm/WindowState;->mExclusionRects:Ljava/util/List;

    .line 408
    const/4 v8, 0x2

    new-array v9, v8, [I

    fill-array-data v9, :array_224

    iput-object v9, v1, Lcom/android/server/wm/WindowState;->mLastRequestedExclusionHeight:[I

    .line 409
    new-array v9, v8, [I

    fill-array-data v9, :array_22c

    iput-object v9, v1, Lcom/android/server/wm/WindowState;->mLastGrantedExclusionHeight:[I

    .line 410
    new-array v8, v8, [J

    fill-array-data v8, :array_234

    iput-object v8, v1, Lcom/android/server/wm/WindowState;->mLastExclusionLogUptimeMillis:[J

    .line 416
    const/high16 v8, -0x40800000  # -1.0f

    iput v8, v1, Lcom/android/server/wm/WindowState;->mWallpaperX:F

    .line 417
    iput v8, v1, Lcom/android/server/wm/WindowState;->mWallpaperY:F

    .line 421
    iput v8, v1, Lcom/android/server/wm/WindowState;->mWallpaperXStep:F

    .line 422
    iput v8, v1, Lcom/android/server/wm/WindowState;->mWallpaperYStep:F

    .line 426
    const/high16 v8, -0x80000000

    iput v8, v1, Lcom/android/server/wm/WindowState;->mWallpaperDisplayOffsetX:I

    .line 427
    iput v8, v1, Lcom/android/server/wm/WindowState;->mWallpaperDisplayOffsetY:I

    .line 484
    iput v6, v1, Lcom/android/server/wm/WindowState;->mLastVisibleLayoutRotation:I

    .line 518
    iput-boolean v7, v1, Lcom/android/server/wm/WindowState;->mHasSurface:Z

    .line 531
    iput-boolean v7, v1, Lcom/android/server/wm/WindowState;->mWillReplaceWindow:Z

    .line 533
    iput-boolean v7, v1, Lcom/android/server/wm/WindowState;->mReplacingRemoveRequested:Z

    .line 535
    iput-boolean v7, v1, Lcom/android/server/wm/WindowState;->mAnimateReplacingWindow:Z

    .line 538
    const/4 v6, 0x0

    iput-object v6, v1, Lcom/android/server/wm/WindowState;->mReplacementWindow:Lcom/android/server/wm/WindowState;

    .line 543
    iput-boolean v7, v1, Lcom/android/server/wm/WindowState;->mSkipEnterAnimationForSeamlessReplacement:Z

    .line 556
    new-instance v8, Landroid/graphics/Rect;

    invoke-direct {v8}, Landroid/graphics/Rect;-><init>()V

    iput-object v8, v1, Lcom/android/server/wm/WindowState;->mTmpRect:Landroid/graphics/Rect;

    .line 557
    new-instance v8, Landroid/graphics/Point;

    invoke-direct {v8}, Landroid/graphics/Point;-><init>()V

    iput-object v8, v1, Lcom/android/server/wm/WindowState;->mTmpPoint:Landroid/graphics/Point;

    .line 563
    new-instance v8, Landroid/graphics/Point;

    invoke-direct {v8}, Landroid/graphics/Point;-><init>()V

    iput-object v8, v1, Lcom/android/server/wm/WindowState;->mLastReportedDisplayOffset:Landroid/graphics/Point;

    .line 568
    iput-boolean v7, v1, Lcom/android/server/wm/WindowState;->mResizedWhileGone:Z

    .line 577
    iput-boolean v7, v1, Lcom/android/server/wm/WindowState;->mSeamlesslyRotated:Z

    .line 583
    new-instance v8, Landroid/graphics/Rect;

    invoke-direct {v8}, Landroid/graphics/Rect;-><init>()V

    iput-object v8, v1, Lcom/android/server/wm/WindowState;->mLastSurfaceInsets:Landroid/graphics/Rect;

    .line 592
    new-instance v8, Landroid/graphics/Point;

    invoke-direct {v8}, Landroid/graphics/Point;-><init>()V

    iput-object v8, v1, Lcom/android/server/wm/WindowState;->mSurfacePosition:Landroid/graphics/Point;

    .line 607
    const-wide/16 v8, -0x1

    iput-wide v8, v1, Lcom/android/server/wm/WindowState;->mFrameNumber:J

    .line 636
    iput-boolean v7, v1, Lcom/android/server/wm/WindowState;->mIsDimming:Z

    .line 739
    move-object v8, p2

    iput-object v8, v1, Lcom/android/server/wm/WindowState;->mSession:Lcom/android/server/wm/Session;

    .line 740
    iput-object v0, v1, Lcom/android/server/wm/WindowState;->mClient:Landroid/view/IWindow;

    .line 741
    move/from16 v8, p6

    iput v8, v1, Lcom/android/server/wm/WindowState;->mAppOp:I

    .line 742
    iput-object v2, v1, Lcom/android/server/wm/WindowState;->mToken:Lcom/android/server/wm/WindowToken;

    .line 743
    iget-object v8, v1, Lcom/android/server/wm/WindowState;->mToken:Lcom/android/server/wm/WindowToken;

    invoke-virtual {v8}, Lcom/android/server/wm/WindowToken;->asAppWindowToken()Lcom/android/server/wm/AppWindowToken;

    move-result-object v8

    iput-object v8, v1, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    .line 744
    move/from16 v8, p10

    iput v8, v1, Lcom/android/server/wm/WindowState;->mOwnerUid:I

    .line 745
    move/from16 v8, p11

    iput-boolean v8, v1, Lcom/android/server/wm/WindowState;->mOwnerCanAddInternalSystemWindow:Z

    .line 746
    new-instance v8, Lcom/android/server/wm/WindowState$WindowId;

    invoke-direct {v8, p0, v6}, Lcom/android/server/wm/WindowState$WindowId;-><init>(Lcom/android/server/wm/WindowState;Lcom/android/server/wm/WindowState$1;)V

    iput-object v8, v1, Lcom/android/server/wm/WindowState;->mWindowId:Lcom/android/server/wm/WindowState$WindowId;

    .line 747
    iget-object v8, v1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {v8, v4}, Landroid/view/WindowManager$LayoutParams;->copyFrom(Landroid/view/WindowManager$LayoutParams;)I

    .line 748
    iget-object v8, v1, Lcom/android/server/wm/WindowState;->mLastSurfaceInsets:Landroid/graphics/Rect;

    iget-object v9, v1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget-object v9, v9, Landroid/view/WindowManager$LayoutParams;->surfaceInsets:Landroid/graphics/Rect;

    invoke-virtual {v8, v9}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 749
    move/from16 v8, p9

    iput v8, v1, Lcom/android/server/wm/WindowState;->mViewVisibility:I

    .line 750
    iget-object v8, v1, Lcom/android/server/wm/WindowState;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v8, v8, Lcom/android/server/wm/WindowManagerService;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    iput-object v8, v1, Lcom/android/server/wm/WindowState;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    .line 751
    iget-object v8, v1, Lcom/android/server/wm/WindowState;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v8, v8, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    iput-object v8, v1, Lcom/android/server/wm/WindowState;->mContext:Landroid/content/Context;

    .line 752
    new-instance v8, Lcom/android/server/wm/WindowState$DeathRecipient;

    invoke-direct {v8, p0, v6}, Lcom/android/server/wm/WindowState$DeathRecipient;-><init>(Lcom/android/server/wm/WindowState;Lcom/android/server/wm/WindowState$1;)V

    .line 753
    move/from16 v9, p7

    iput v9, v1, Lcom/android/server/wm/WindowState;->mSeq:I

    .line 754
    move-object/from16 v9, p12

    iput-object v9, v1, Lcom/android/server/wm/WindowState;->mPowerManagerWrapper:Lcom/android/server/wm/WindowState$PowerManagerWrapper;

    .line 755
    iget-boolean v2, v2, Lcom/android/server/wm/WindowToken;->mRoundedCornerOverlay:Z

    iput-boolean v2, v1, Lcom/android/server/wm/WindowState;->mForceSeamlesslyRotate:Z

    .line 760
    :try_start_133
    invoke-interface/range {p3 .. p3}, Landroid/view/IWindow;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-interface {v2, v8, v7}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_13a
    .catch Landroid/os/RemoteException; {:try_start_133 .. :try_end_13a} :catch_20e

    .line 773
    nop

    .line 774
    iput-object v8, v1, Lcom/android/server/wm/WindowState;->mDeathRecipient:Lcom/android/server/wm/WindowState$DeathRecipient;

    .line 776
    iget-object v2, v1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v2, v2, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v8, 0x7dd

    const/16 v9, 0x7dc

    const/16 v10, 0x7db

    const/16 v11, 0x3e8

    if-lt v2, v11, :cond_19a

    iget-object v2, v1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v2, v2, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v12, 0x7cf

    if-gt v2, v12, :cond_19a

    .line 779
    iget-object v2, v1, Lcom/android/server/wm/WindowState;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    invoke-interface {v2, v3}, Lcom/android/server/policy/WindowManagerPolicy;->getWindowLayerLw(Lcom/android/server/policy/WindowManagerPolicy$WindowState;)I

    move-result v2

    mul-int/lit16 v2, v2, 0x2710

    add-int/2addr v2, v11

    iput v2, v1, Lcom/android/server/wm/WindowState;->mBaseLayer:I

    .line 781
    iget-object v2, v1, Lcom/android/server/wm/WindowState;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    iget v11, v4, Landroid/view/WindowManager$LayoutParams;->type:I

    invoke-interface {v2, v11}, Lcom/android/server/policy/WindowManagerPolicy;->getSubWindowLayerFromTypeLw(I)I

    move-result v2

    iput v2, v1, Lcom/android/server/wm/WindowState;->mSubLayer:I

    .line 782
    iput-boolean v5, v1, Lcom/android/server/wm/WindowState;->mIsChildWindow:Z

    .line 785
    sget-object v2, Lcom/android/server/wm/WindowState;->sWindowSubLayerComparator:Ljava/util/Comparator;

    invoke-virtual {v3, p0, v2}, Lcom/android/server/wm/WindowState;->addChild(Lcom/android/server/wm/WindowContainer;Ljava/util/Comparator;)V

    .line 787
    iget-object v2, v1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v2, v2, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v11, 0x3eb

    if-eq v2, v11, :cond_179

    move v2, v5

    goto :goto_17a

    :cond_179
    move v2, v7

    :goto_17a
    iput-boolean v2, v1, Lcom/android/server/wm/WindowState;->mLayoutAttached:Z

    .line 789
    iget-object v2, v3, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v2, v2, Landroid/view/WindowManager$LayoutParams;->type:I

    if-eq v2, v10, :cond_18b

    iget-object v2, v3, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v2, v2, Landroid/view/WindowManager$LayoutParams;->type:I

    if-ne v2, v9, :cond_189

    goto :goto_18b

    :cond_189
    move v2, v7

    goto :goto_18c

    :cond_18b
    :goto_18b
    move v2, v5

    :goto_18c
    iput-boolean v2, v1, Lcom/android/server/wm/WindowState;->mIsImWindow:Z

    .line 791
    iget-object v2, v3, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v2, v2, Landroid/view/WindowManager$LayoutParams;->type:I

    if-ne v2, v8, :cond_196

    move v2, v5

    goto :goto_197

    :cond_196
    move v2, v7

    :goto_197
    iput-boolean v2, v1, Lcom/android/server/wm/WindowState;->mIsWallpaper:Z

    goto :goto_1c8

    .line 795
    :cond_19a
    iget-object v2, v1, Lcom/android/server/wm/WindowState;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    invoke-interface {v2, p0}, Lcom/android/server/policy/WindowManagerPolicy;->getWindowLayerLw(Lcom/android/server/policy/WindowManagerPolicy$WindowState;)I

    move-result v2

    mul-int/lit16 v2, v2, 0x2710

    add-int/2addr v2, v11

    iput v2, v1, Lcom/android/server/wm/WindowState;->mBaseLayer:I

    .line 797
    iput v7, v1, Lcom/android/server/wm/WindowState;->mSubLayer:I

    .line 798
    iput-boolean v7, v1, Lcom/android/server/wm/WindowState;->mIsChildWindow:Z

    .line 799
    iput-boolean v7, v1, Lcom/android/server/wm/WindowState;->mLayoutAttached:Z

    .line 800
    iget-object v2, v1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v2, v2, Landroid/view/WindowManager$LayoutParams;->type:I

    if-eq v2, v10, :cond_1ba

    iget-object v2, v1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v2, v2, Landroid/view/WindowManager$LayoutParams;->type:I

    if-ne v2, v9, :cond_1b8

    goto :goto_1ba

    :cond_1b8
    move v2, v7

    goto :goto_1bb

    :cond_1ba
    :goto_1ba
    move v2, v5

    :goto_1bb
    iput-boolean v2, v1, Lcom/android/server/wm/WindowState;->mIsImWindow:Z

    .line 802
    iget-object v2, v1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v2, v2, Landroid/view/WindowManager$LayoutParams;->type:I

    if-ne v2, v8, :cond_1c5

    move v2, v5

    goto :goto_1c6

    :cond_1c5
    move v2, v7

    :goto_1c6
    iput-boolean v2, v1, Lcom/android/server/wm/WindowState;->mIsWallpaper:Z

    .line 804
    :goto_1c8
    iget-boolean v2, v1, Lcom/android/server/wm/WindowState;->mIsImWindow:Z

    if-nez v2, :cond_1d2

    iget-boolean v2, v1, Lcom/android/server/wm/WindowState;->mIsWallpaper:Z

    if-eqz v2, :cond_1d1

    goto :goto_1d2

    :cond_1d1
    move v5, v7

    :cond_1d2
    :goto_1d2
    iput-boolean v5, v1, Lcom/android/server/wm/WindowState;->mIsFloatingLayer:Z

    .line 806
    iget-object v2, v1, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    if-eqz v2, :cond_1e5

    iget-boolean v2, v2, Lcom/android/server/wm/AppWindowToken;->mShowForAllUsers:Z

    if-eqz v2, :cond_1e5

    .line 809
    iget-object v2, v1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v3, v2, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v5, 0x80000

    or-int/2addr v3, v5

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 812
    :cond_1e5
    new-instance v2, Lcom/android/server/wm/WindowStateAnimator;

    invoke-direct {v2, p0}, Lcom/android/server/wm/WindowStateAnimator;-><init>(Lcom/android/server/wm/WindowState;)V

    iput-object v2, v1, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    .line 813
    iget-object v2, v1, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    iget v3, v4, Landroid/view/WindowManager$LayoutParams;->alpha:F

    iput v3, v2, Lcom/android/server/wm/WindowStateAnimator;->mAlpha:F

    .line 815
    iput v7, v1, Lcom/android/server/wm/WindowState;->mRequestedWidth:I

    .line 816
    iput v7, v1, Lcom/android/server/wm/WindowState;->mRequestedHeight:I

    .line 817
    iput v7, v1, Lcom/android/server/wm/WindowState;->mLastRequestedWidth:I

    .line 818
    iput v7, v1, Lcom/android/server/wm/WindowState;->mLastRequestedHeight:I

    .line 819
    iput v7, v1, Lcom/android/server/wm/WindowState;->mLayer:I

    .line 820
    new-instance v2, Landroid/view/InputWindowHandle;

    .line 821
    iget-object v3, v1, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    if-eqz v3, :cond_204

    iget-object v6, v3, Lcom/android/server/wm/AppWindowToken;->mInputApplicationHandle:Landroid/view/InputApplicationHandle;

    .line 822
    :cond_204
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getDisplayId()I

    move-result v3

    invoke-direct {v2, v6, v0, v3}, Landroid/view/InputWindowHandle;-><init>(Landroid/view/InputApplicationHandle;Landroid/view/IWindow;I)V

    iput-object v2, v1, Lcom/android/server/wm/WindowState;->mInputWindowHandle:Landroid/view/InputWindowHandle;

    .line 823
    return-void

    .line 761
    :catch_20e
    move-exception v0

    .line 762
    iput-object v6, v1, Lcom/android/server/wm/WindowState;->mDeathRecipient:Lcom/android/server/wm/WindowState$DeathRecipient;

    .line 763
    iput-boolean v7, v1, Lcom/android/server/wm/WindowState;->mIsChildWindow:Z

    .line 764
    iput-boolean v7, v1, Lcom/android/server/wm/WindowState;->mLayoutAttached:Z

    .line 765
    iput-boolean v7, v1, Lcom/android/server/wm/WindowState;->mIsImWindow:Z

    .line 766
    iput-boolean v7, v1, Lcom/android/server/wm/WindowState;->mIsWallpaper:Z

    .line 767
    iput-boolean v7, v1, Lcom/android/server/wm/WindowState;->mIsFloatingLayer:Z

    .line 768
    iput v7, v1, Lcom/android/server/wm/WindowState;->mBaseLayer:I

    .line 769
    iput v7, v1, Lcom/android/server/wm/WindowState;->mSubLayer:I

    .line 770
    iput-object v6, v1, Lcom/android/server/wm/WindowState;->mInputWindowHandle:Landroid/view/InputWindowHandle;

    .line 771
    iput-object v6, v1, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    .line 772
    return-void

    :array_224
    .array-data 4
        0x0
        0x0
    .end array-data

    :array_22c
    .array-data 4
        0x0
        0x0
    .end array-data

    :array_234
    .array-data 8
        0x0
        0x0
    .end array-data
.end method

.method static synthetic access$200(Lcom/android/server/wm/WindowState;)Z
    .registers 1

    .line 221
    invoke-direct {p0}, Lcom/android/server/wm/WindowState;->shouldKeepVisibleDeadAppWindow()Z

    move-result p0

    return p0
.end method

.method static synthetic access$300(Lcom/android/server/wm/WindowState;Z)V
    .registers 2

    .line 221
    invoke-direct {p0, p1}, Lcom/android/server/wm/WindowState;->removeIfPossible(Z)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/server/wm/WindowState;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;ZLandroid/util/MergedConfiguration;ZILandroid/view/DisplayCutout;)V
    .registers 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 221
    invoke-direct/range {p0 .. p11}, Lcom/android/server/wm/WindowState;->dispatchResized(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;ZLandroid/util/MergedConfiguration;ZILandroid/view/DisplayCutout;)V

    return-void
.end method

.method private applyDims(Lcom/android/server/wm/Dimmer;)V
    .registers 4

    .line 4955
    iget-boolean v0, p0, Lcom/android/server/wm/WindowState;->mAnimatingExit:Z

    const/4 v1, 0x1

    if-nez v0, :cond_15

    iget-boolean v0, p0, Lcom/android/server/wm/WindowState;->mAppDied:Z

    if-eqz v0, :cond_15

    .line 4956
    iput-boolean v1, p0, Lcom/android/server/wm/WindowState;->mIsDimming:Z

    .line 4957
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getPendingTransaction()Landroid/view/SurfaceControl$Transaction;

    move-result-object v0

    const/high16 v1, 0x3f000000  # 0.5f

    invoke-virtual {p1, v0, p0, v1}, Lcom/android/server/wm/Dimmer;->dimAbove(Landroid/view/SurfaceControl$Transaction;Lcom/android/server/wm/WindowContainer;F)V

    goto :goto_34

    .line 4958
    :cond_15
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_34

    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->isVisibleNow()Z

    move-result v0

    if-eqz v0, :cond_34

    iget-boolean v0, p0, Lcom/android/server/wm/WindowState;->mHidden:Z

    if-nez v0, :cond_34

    .line 4964
    iput-boolean v1, p0, Lcom/android/server/wm/WindowState;->mIsDimming:Z

    .line 4965
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getPendingTransaction()Landroid/view/SurfaceControl$Transaction;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v1, v1, Landroid/view/WindowManager$LayoutParams;->dimAmount:F

    invoke-virtual {p1, v0, p0, v1}, Lcom/android/server/wm/Dimmer;->dimBelow(Landroid/view/SurfaceControl$Transaction;Lcom/android/server/wm/WindowContainer;F)V

    .line 4967
    :cond_34
    :goto_34
    return-void
.end method

.method private applyGravityAndUpdateFrame(Landroid/graphics/Rect;Landroid/graphics/Rect;)V
    .registers 20

    .line 3781
    move-object/from16 v0, p0

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Rect;->width()I

    move-result v1

    .line 3782
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Rect;->height()I

    move-result v2

    .line 3783
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/WindowState;->getTask()Lcom/android/server/wm/Task;

    move-result-object v3

    .line 3784
    invoke-direct/range {p0 .. p0}, Lcom/android/server/wm/WindowState;->inAppWindowThatMatchesParentBounds()Z

    move-result v4

    .line 3785
    const/4 v5, 0x1

    xor-int/2addr v4, v5

    iget-object v6, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v6, v6, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit16 v6, v6, 0x200

    const/4 v7, 0x0

    if-eqz v6, :cond_1f

    move v6, v5

    goto :goto_20

    :cond_1f
    move v6, v7

    .line 3794
    :goto_20
    if-eqz v3, :cond_2e

    if-eqz v4, :cond_2e

    iget-object v3, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v3, v3, Landroid/view/WindowManager$LayoutParams;->type:I

    if-eq v3, v5, :cond_2d

    if-nez v6, :cond_2d

    goto :goto_2e

    :cond_2d
    move v5, v7

    .line 3799
    :cond_2e
    :goto_2e
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/WindowState;->inSizeCompatMode()Z

    move-result v3

    .line 3800
    iget-object v6, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v6, v6, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit16 v6, v6, 0x4000

    const/high16 v7, 0x3f000000  # 0.5f

    if-eqz v6, :cond_6f

    .line 3801
    iget-object v6, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v6, v6, Landroid/view/WindowManager$LayoutParams;->width:I

    if-gez v6, :cond_44

    .line 3802
    move v6, v1

    goto :goto_55

    .line 3803
    :cond_44
    if-eqz v3, :cond_51

    .line 3804
    iget-object v6, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v6, v6, Landroid/view/WindowManager$LayoutParams;->width:I

    int-to-float v6, v6

    iget v8, v0, Lcom/android/server/wm/WindowState;->mGlobalScale:F

    mul-float/2addr v6, v8

    add-float/2addr v6, v7

    float-to-int v6, v6

    goto :goto_55

    .line 3806
    :cond_51
    iget-object v6, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v6, v6, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 3808
    :goto_55
    iget-object v8, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v8, v8, Landroid/view/WindowManager$LayoutParams;->height:I

    if-gez v8, :cond_5d

    .line 3809
    move v7, v2

    goto :goto_9a

    .line 3810
    :cond_5d
    if-eqz v3, :cond_6a

    .line 3811
    iget-object v8, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v8, v8, Landroid/view/WindowManager$LayoutParams;->height:I

    int-to-float v8, v8

    iget v9, v0, Lcom/android/server/wm/WindowState;->mGlobalScale:F

    mul-float/2addr v8, v9

    add-float/2addr v8, v7

    float-to-int v7, v8

    goto :goto_9a

    .line 3813
    :cond_6a
    iget-object v7, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v7, v7, Landroid/view/WindowManager$LayoutParams;->height:I

    goto :goto_9a

    .line 3816
    :cond_6f
    iget-object v6, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v6, v6, Landroid/view/WindowManager$LayoutParams;->width:I

    const/4 v8, -0x1

    if-ne v6, v8, :cond_78

    .line 3817
    move v6, v1

    goto :goto_85

    .line 3818
    :cond_78
    if-eqz v3, :cond_83

    .line 3819
    iget v6, v0, Lcom/android/server/wm/WindowState;->mRequestedWidth:I

    int-to-float v6, v6

    iget v9, v0, Lcom/android/server/wm/WindowState;->mGlobalScale:F

    mul-float/2addr v6, v9

    add-float/2addr v6, v7

    float-to-int v6, v6

    goto :goto_85

    .line 3821
    :cond_83
    iget v6, v0, Lcom/android/server/wm/WindowState;->mRequestedWidth:I

    .line 3823
    :goto_85
    iget-object v9, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v9, v9, Landroid/view/WindowManager$LayoutParams;->height:I

    if-ne v9, v8, :cond_8d

    .line 3824
    move v7, v2

    goto :goto_9a

    .line 3825
    :cond_8d
    if-eqz v3, :cond_98

    .line 3826
    iget v8, v0, Lcom/android/server/wm/WindowState;->mRequestedHeight:I

    int-to-float v8, v8

    iget v9, v0, Lcom/android/server/wm/WindowState;->mGlobalScale:F

    mul-float/2addr v8, v9

    add-float/2addr v8, v7

    float-to-int v7, v8

    goto :goto_9a

    .line 3828
    :cond_98
    iget v7, v0, Lcom/android/server/wm/WindowState;->mRequestedHeight:I

    .line 3832
    :goto_9a
    if-eqz v3, :cond_ad

    .line 3833
    iget-object v8, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v8, v8, Landroid/view/WindowManager$LayoutParams;->x:I

    int-to-float v8, v8

    iget v9, v0, Lcom/android/server/wm/WindowState;->mGlobalScale:F

    mul-float/2addr v8, v9

    .line 3834
    iget-object v9, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v9, v9, Landroid/view/WindowManager$LayoutParams;->y:I

    int-to-float v9, v9

    iget v10, v0, Lcom/android/server/wm/WindowState;->mGlobalScale:F

    mul-float/2addr v9, v10

    goto :goto_b7

    .line 3836
    :cond_ad
    iget-object v8, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v8, v8, Landroid/view/WindowManager$LayoutParams;->x:I

    int-to-float v8, v8

    .line 3837
    iget-object v9, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v9, v9, Landroid/view/WindowManager$LayoutParams;->y:I

    int-to-float v9, v9

    .line 3840
    :goto_b7
    if-eqz v4, :cond_ca

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/WindowState;->layoutInParentFrame()Z

    move-result v4

    if-nez v4, :cond_ca

    .line 3843
    invoke-static {v6, v1}, Ljava/lang/Math;->min(II)I

    move-result v6

    .line 3844
    invoke-static {v7, v2}, Ljava/lang/Math;->min(II)I

    move-result v7

    move v11, v6

    move v12, v7

    goto :goto_cc

    .line 3848
    :cond_ca
    move v11, v6

    move v12, v7

    :goto_cc
    iget-object v4, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v10, v4, Landroid/view/WindowManager$LayoutParams;->gravity:I

    iget-object v4, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v4, v4, Landroid/view/WindowManager$LayoutParams;->horizontalMargin:F

    int-to-float v1, v1

    mul-float/2addr v4, v1

    add-float/2addr v8, v4

    float-to-int v14, v8

    iget-object v1, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v1, v1, Landroid/view/WindowManager$LayoutParams;->verticalMargin:F

    int-to-float v2, v2

    mul-float/2addr v1, v2

    add-float/2addr v9, v1

    float-to-int v15, v9

    iget-object v1, v0, Lcom/android/server/wm/WindowState;->mWindowFrames:Lcom/android/server/wm/WindowFrames;

    iget-object v1, v1, Lcom/android/server/wm/WindowFrames;->mFrame:Landroid/graphics/Rect;

    move-object/from16 v13, p1

    move-object/from16 v16, v1

    invoke-static/range {v10 .. v16}, Landroid/view/Gravity;->apply(IIILandroid/graphics/Rect;IILandroid/graphics/Rect;)V

    .line 3853
    if-eqz v5, :cond_fa

    .line 3854
    iget-object v1, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v1, v1, Landroid/view/WindowManager$LayoutParams;->gravity:I

    iget-object v2, v0, Lcom/android/server/wm/WindowState;->mWindowFrames:Lcom/android/server/wm/WindowFrames;

    iget-object v2, v2, Lcom/android/server/wm/WindowFrames;->mFrame:Landroid/graphics/Rect;

    move-object/from16 v4, p2

    invoke-static {v1, v4, v2}, Landroid/view/Gravity;->applyDisplay(ILandroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 3859
    :cond_fa
    iget-object v1, v0, Lcom/android/server/wm/WindowState;->mWindowFrames:Lcom/android/server/wm/WindowFrames;

    iget-object v1, v1, Lcom/android/server/wm/WindowFrames;->mCompatFrame:Landroid/graphics/Rect;

    iget-object v2, v0, Lcom/android/server/wm/WindowState;->mWindowFrames:Lcom/android/server/wm/WindowFrames;

    iget-object v2, v2, Lcom/android/server/wm/WindowFrames;->mFrame:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 3860
    if-eqz v3, :cond_110

    .line 3862
    iget-object v1, v0, Lcom/android/server/wm/WindowState;->mWindowFrames:Lcom/android/server/wm/WindowFrames;

    iget-object v1, v1, Lcom/android/server/wm/WindowFrames;->mCompatFrame:Landroid/graphics/Rect;

    iget v0, v0, Lcom/android/server/wm/WindowState;->mInvGlobalScale:F

    invoke-virtual {v1, v0}, Landroid/graphics/Rect;->scale(F)V

    .line 3864
    :cond_110
    return-void
.end method

.method private applyImeWindowsIfNeeded(Lcom/android/internal/util/ToBooleanFunction;Z)Z
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/util/ToBooleanFunction<",
            "Lcom/android/server/wm/WindowState;",
            ">;Z)Z"
        }
    .end annotation

    .line 4257
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->isInputMethodTarget()Z

    move-result v0

    if-eqz v0, :cond_18

    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->inSplitScreenWindowingMode()Z

    move-result v0

    if-nez v0, :cond_18

    .line 4258
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/android/server/wm/DisplayContent;->forAllImeWindows(Lcom/android/internal/util/ToBooleanFunction;Z)Z

    move-result p1

    if-eqz p1, :cond_18

    .line 4259
    const/4 p1, 0x1

    return p1

    .line 4262
    :cond_18
    const/4 p1, 0x0

    return p1
.end method

.method private applyInOrderWithImeWindows(Lcom/android/internal/util/ToBooleanFunction;Z)Z
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/util/ToBooleanFunction<",
            "Lcom/android/server/wm/WindowState;",
            ">;Z)Z"
        }
    .end annotation

    .line 4267
    const/4 v0, 0x1

    if-eqz p2, :cond_10

    .line 4268
    invoke-direct {p0, p1, p2}, Lcom/android/server/wm/WindowState;->applyImeWindowsIfNeeded(Lcom/android/internal/util/ToBooleanFunction;Z)Z

    move-result p2

    if-nez p2, :cond_f

    .line 4269
    invoke-interface {p1, p0}, Lcom/android/internal/util/ToBooleanFunction;->apply(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1d

    .line 4270
    :cond_f
    return v0

    .line 4273
    :cond_10
    invoke-interface {p1, p0}, Lcom/android/internal/util/ToBooleanFunction;->apply(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1f

    .line 4274
    invoke-direct {p0, p1, p2}, Lcom/android/server/wm/WindowState;->applyImeWindowsIfNeeded(Lcom/android/internal/util/ToBooleanFunction;Z)Z

    move-result p1

    if-eqz p1, :cond_1d

    goto :goto_1f

    .line 4278
    :cond_1d
    const/4 p1, 0x0

    return p1

    .line 4275
    :cond_1f
    :goto_1f
    return v0
.end method

.method private static applyInsets(Landroid/graphics/Region;Landroid/graphics/Rect;Landroid/graphics/Rect;)V
    .registers 7

    .line 3068
    iget v0, p1, Landroid/graphics/Rect;->left:I

    iget v1, p2, Landroid/graphics/Rect;->left:I

    add-int/2addr v0, v1

    iget v1, p1, Landroid/graphics/Rect;->top:I

    iget v2, p2, Landroid/graphics/Rect;->top:I

    add-int/2addr v1, v2

    iget v2, p1, Landroid/graphics/Rect;->right:I

    iget v3, p2, Landroid/graphics/Rect;->right:I

    sub-int/2addr v2, v3

    iget p1, p1, Landroid/graphics/Rect;->bottom:I

    iget p2, p2, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr p1, p2

    invoke-virtual {p0, v0, v1, v2, p1}, Landroid/graphics/Region;->set(IIII)Z

    .line 3071
    return-void
.end method

.method private calculateSystemDecorRect(Landroid/graphics/Rect;)V
    .registers 10

    .line 4588
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mWindowFrames:Lcom/android/server/wm/WindowFrames;

    iget-object v0, v0, Lcom/android/server/wm/WindowFrames;->mDecorFrame:Landroid/graphics/Rect;

    .line 4589
    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mWindowFrames:Lcom/android/server/wm/WindowFrames;

    iget-object v1, v1, Lcom/android/server/wm/WindowFrames;->mFrame:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    .line 4590
    iget-object v2, p0, Lcom/android/server/wm/WindowState;->mWindowFrames:Lcom/android/server/wm/WindowFrames;

    iget-object v2, v2, Lcom/android/server/wm/WindowFrames;->mFrame:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    .line 4592
    iget-object v3, p0, Lcom/android/server/wm/WindowState;->mWindowFrames:Lcom/android/server/wm/WindowFrames;

    iget-object v3, v3, Lcom/android/server/wm/WindowFrames;->mFrame:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    .line 4593
    iget-object v4, p0, Lcom/android/server/wm/WindowState;->mWindowFrames:Lcom/android/server/wm/WindowFrames;

    iget-object v4, v4, Lcom/android/server/wm/WindowFrames;->mFrame:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    .line 4596
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->isDockedResizing()Z

    move-result v5

    const/4 v6, 0x0

    if-eqz v5, :cond_3f

    .line 4605
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/server/wm/DisplayContent;->getDisplayInfo()Landroid/view/DisplayInfo;

    move-result-object v5

    .line 4606
    iget v7, v5, Landroid/view/DisplayInfo;->logicalWidth:I

    .line 4607
    invoke-static {v1, v7}, Ljava/lang/Math;->max(II)I

    move-result v1

    iget v5, v5, Landroid/view/DisplayInfo;->logicalHeight:I

    .line 4608
    invoke-static {v2, v5}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 4606
    invoke-virtual {p1, v6, v6, v1, v2}, Landroid/graphics/Rect;->set(IIII)V

    .line 4609
    goto :goto_42

    .line 4610
    :cond_3f
    invoke-virtual {p1, v6, v6, v1, v2}, Landroid/graphics/Rect;->set(IIII)V

    .line 4619
    :goto_42
    nop

    .line 4620
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->inFreeformWindowingMode()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_50

    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->isAnimatingLw()Z

    move-result v1

    if-nez v1, :cond_57

    :cond_50
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->isDockedResizing()Z

    move-result v1

    if-nez v1, :cond_57

    move v6, v2

    .line 4621
    :cond_57
    if-eqz v6, :cond_68

    .line 4623
    iget v1, v0, Landroid/graphics/Rect;->left:I

    sub-int/2addr v1, v3

    iget v5, v0, Landroid/graphics/Rect;->top:I

    sub-int/2addr v5, v4

    iget v6, v0, Landroid/graphics/Rect;->right:I

    sub-int/2addr v6, v3

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v0, v4

    invoke-virtual {p1, v1, v5, v6, v0}, Landroid/graphics/Rect;->intersect(IIII)Z

    .line 4633
    :cond_68
    iget v0, p0, Lcom/android/server/wm/WindowState;->mInvGlobalScale:F

    const/high16 v1, 0x3f800000  # 1.0f

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_9c

    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->inSizeCompatMode()Z

    move-result v0

    if-eqz v0, :cond_9c

    .line 4634
    iget v0, p0, Lcom/android/server/wm/WindowState;->mInvGlobalScale:F

    .line 4635
    iget v1, p1, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    mul-float/2addr v1, v0

    const/high16 v3, 0x3f000000  # 0.5f

    sub-float/2addr v1, v3

    float-to-int v1, v1

    iput v1, p1, Landroid/graphics/Rect;->left:I

    .line 4636
    iget v1, p1, Landroid/graphics/Rect;->top:I

    int-to-float v1, v1

    mul-float/2addr v1, v0

    sub-float/2addr v1, v3

    float-to-int v1, v1

    iput v1, p1, Landroid/graphics/Rect;->top:I

    .line 4637
    iget v1, p1, Landroid/graphics/Rect;->right:I

    add-int/2addr v1, v2

    int-to-float v1, v1

    mul-float/2addr v1, v0

    sub-float/2addr v1, v3

    float-to-int v1, v1

    iput v1, p1, Landroid/graphics/Rect;->right:I

    .line 4638
    iget v1, p1, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v1, v2

    int-to-float v1, v1

    mul-float/2addr v1, v0

    sub-float/2addr v1, v3

    float-to-int v0, v1

    iput v0, p1, Landroid/graphics/Rect;->bottom:I

    .line 4641
    :cond_9c
    return-void
.end method

.method private computeDragResizing()Z
    .registers 5

    .line 3488
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getTask()Lcom/android/server/wm/Task;

    move-result-object v0

    .line 3489
    const/4 v1, 0x0

    if-nez v0, :cond_8

    .line 3490
    return v1

    .line 3492
    :cond_8
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->inSplitScreenWindowingMode()Z

    move-result v2

    if-nez v2, :cond_15

    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->inFreeformWindowingMode()Z

    move-result v2

    if-nez v2, :cond_15

    .line 3493
    return v1

    .line 3495
    :cond_15
    iget-object v2, p0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v2, v2, Landroid/view/WindowManager$LayoutParams;->width:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_53

    iget-object v2, p0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v2, v2, Landroid/view/WindowManager$LayoutParams;->height:I

    if-eq v2, v3, :cond_23

    goto :goto_53

    .line 3499
    :cond_23
    invoke-virtual {v0}, Lcom/android/server/wm/Task;->isDragResizing()Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_2b

    .line 3500
    return v3

    .line 3507
    :cond_2b
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v2

    iget-object v2, v2, Lcom/android/server/wm/DisplayContent;->mDividerControllerLocked:Lcom/android/server/wm/DockedStackDividerController;

    invoke-virtual {v2}, Lcom/android/server/wm/DockedStackDividerController;->isResizing()Z

    move-result v2

    if-nez v2, :cond_43

    iget-object v2, p0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    if-eqz v2, :cond_51

    iget-object v2, v2, Lcom/android/server/wm/AppWindowToken;->mFrozenBounds:Ljava/util/ArrayDeque;

    .line 3508
    invoke-virtual {v2}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_51

    .line 3509
    :cond_43
    invoke-virtual {v0}, Lcom/android/server/wm/Task;->inFreeformWindowingMode()Z

    move-result v0

    if-nez v0, :cond_51

    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->isGoneForLayoutLw()Z

    move-result v0

    if-nez v0, :cond_51

    move v1, v3

    goto :goto_52

    :cond_51
    nop

    .line 3507
    :goto_52
    return v1

    .line 3497
    :cond_53
    :goto_53
    return v1
.end method

.method private cropRegionToStackBoundsIfNeeded(Landroid/graphics/Region;)V
    .registers 4

    .line 3131
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getTask()Lcom/android/server/wm/Task;

    move-result-object v0

    .line 3132
    if-eqz v0, :cond_1f

    invoke-virtual {v0}, Lcom/android/server/wm/Task;->cropWindowsToStackBounds()Z

    move-result v1

    if-nez v1, :cond_d

    goto :goto_1f

    .line 3136
    :cond_d
    iget-object v0, v0, Lcom/android/server/wm/Task;->mStack:Lcom/android/server/wm/TaskStack;

    .line 3137
    if-nez v0, :cond_12

    .line 3138
    return-void

    .line 3141
    :cond_12
    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Lcom/android/server/wm/TaskStack;->getDimBounds(Landroid/graphics/Rect;)V

    .line 3142
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mTmpRect:Landroid/graphics/Rect;

    sget-object v1, Landroid/graphics/Region$Op;->INTERSECT:Landroid/graphics/Region$Op;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Region;->op(Landroid/graphics/Rect;Landroid/graphics/Region$Op;)Z

    .line 3143
    return-void

    .line 3133
    :cond_1f
    :goto_1f
    return-void
.end method

.method private dispatchResized(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;ZLandroid/util/MergedConfiguration;ZILandroid/view/DisplayCutout;)V
    .registers 29
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3374
    move-object/from16 v0, p0

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/WindowState;->isDragResizeChanged()Z

    move-result v1

    const/4 v2, 0x1

    if-nez v1, :cond_f

    if-eqz p9, :cond_c

    goto :goto_f

    :cond_c
    const/4 v1, 0x0

    move v13, v1

    goto :goto_10

    :cond_f
    :goto_f
    move v13, v2

    .line 3376
    :goto_10
    iget-object v3, v0, Lcom/android/server/wm/WindowState;->mClient:Landroid/view/IWindow;

    .line 3377
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/wm/WindowState;->getBackdropFrame(Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v12

    .line 3378
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/WindowState;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/wm/DisplayContent;->getDisplayPolicy()Lcom/android/server/wm/DisplayPolicy;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/server/wm/DisplayPolicy;->areSystemBarsForcedShownLw(Lcom/android/server/wm/WindowState;)Z

    move-result v14

    new-instance v1, Landroid/view/DisplayCutout$ParcelableWrapper;

    move-object/from16 v4, p11

    invoke-direct {v1, v4}, Landroid/view/DisplayCutout$ParcelableWrapper;-><init>(Landroid/view/DisplayCutout;)V

    .line 3376
    move-object/from16 v4, p1

    move-object/from16 v5, p2

    move-object/from16 v6, p3

    move-object/from16 v7, p4

    move-object/from16 v8, p5

    move-object/from16 v9, p6

    move/from16 v10, p7

    move-object/from16 v11, p8

    move/from16 v15, p10

    move-object/from16 v16, v1

    invoke-interface/range {v3 .. v16}, Landroid/view/IWindow;->resized(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;ZLandroid/util/MergedConfiguration;Landroid/graphics/Rect;ZZILandroid/view/DisplayCutout$ParcelableWrapper;)V

    .line 3380
    iput-boolean v2, v0, Lcom/android/server/wm/WindowState;->mDragResizingChangeReported:Z

    .line 3381
    return-void
.end method

.method private forAllWindowBottomToTop(Lcom/android/internal/util/ToBooleanFunction;)Z
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/util/ToBooleanFunction<",
            "Lcom/android/server/wm/WindowState;",
            ">;)Z"
        }
    .end annotation

    .line 4182
    nop

    .line 4183
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowList;->size()I

    move-result v0

    .line 4184
    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mChildren:Lcom/android/server/wm/WindowList;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/WindowState;

    move-object v3, v1

    move v1, v2

    .line 4186
    :goto_12
    const/4 v4, 0x1

    if-ge v1, v0, :cond_2e

    iget v5, v3, Lcom/android/server/wm/WindowState;->mSubLayer:I

    if-gez v5, :cond_2e

    .line 4187
    invoke-direct {v3, p1, v2}, Lcom/android/server/wm/WindowState;->applyInOrderWithImeWindows(Lcom/android/internal/util/ToBooleanFunction;Z)Z

    move-result v5

    if-eqz v5, :cond_20

    .line 4188
    return v4

    .line 4190
    :cond_20
    add-int/lit8 v1, v1, 0x1

    .line 4191
    if-lt v1, v0, :cond_25

    .line 4192
    goto :goto_2e

    .line 4194
    :cond_25
    iget-object v3, p0, Lcom/android/server/wm/WindowState;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v3, v1}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/WindowState;

    goto :goto_12

    .line 4197
    :cond_2e
    :goto_2e
    invoke-direct {p0, p1, v2}, Lcom/android/server/wm/WindowState;->applyInOrderWithImeWindows(Lcom/android/internal/util/ToBooleanFunction;Z)Z

    move-result v5

    if-eqz v5, :cond_35

    .line 4198
    return v4

    .line 4201
    :cond_35
    :goto_35
    if-ge v1, v0, :cond_4c

    .line 4202
    invoke-direct {v3, p1, v2}, Lcom/android/server/wm/WindowState;->applyInOrderWithImeWindows(Lcom/android/internal/util/ToBooleanFunction;Z)Z

    move-result v3

    if-eqz v3, :cond_3e

    .line 4203
    return v4

    .line 4205
    :cond_3e
    add-int/lit8 v1, v1, 0x1

    .line 4206
    if-lt v1, v0, :cond_43

    .line 4207
    goto :goto_4c

    .line 4209
    :cond_43
    iget-object v3, p0, Lcom/android/server/wm/WindowState;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v3, v1}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/WindowState;

    goto :goto_35

    .line 4212
    :cond_4c
    :goto_4c
    return v2
.end method

.method private forAllWindowTopToBottom(Lcom/android/internal/util/ToBooleanFunction;)Z
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/util/ToBooleanFunction<",
            "Lcom/android/server/wm/WindowState;",
            ">;)Z"
        }
    .end annotation

    .line 4219
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowList;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    .line 4220
    iget-object v2, p0, Lcom/android/server/wm/WindowState;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v2, v0}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/WindowState;

    .line 4222
    :goto_10
    if-ltz v0, :cond_2b

    iget v3, v2, Lcom/android/server/wm/WindowState;->mSubLayer:I

    if-ltz v3, :cond_2b

    .line 4223
    invoke-direct {v2, p1, v1}, Lcom/android/server/wm/WindowState;->applyInOrderWithImeWindows(Lcom/android/internal/util/ToBooleanFunction;Z)Z

    move-result v3

    if-eqz v3, :cond_1d

    .line 4224
    return v1

    .line 4226
    :cond_1d
    add-int/lit8 v0, v0, -0x1

    .line 4227
    if-gez v0, :cond_22

    .line 4228
    goto :goto_2b

    .line 4230
    :cond_22
    iget-object v2, p0, Lcom/android/server/wm/WindowState;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v2, v0}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/WindowState;

    goto :goto_10

    .line 4233
    :cond_2b
    :goto_2b
    invoke-direct {p0, p1, v1}, Lcom/android/server/wm/WindowState;->applyInOrderWithImeWindows(Lcom/android/internal/util/ToBooleanFunction;Z)Z

    move-result v3

    if-eqz v3, :cond_32

    .line 4234
    return v1

    .line 4237
    :cond_32
    :goto_32
    if-ltz v0, :cond_49

    .line 4238
    invoke-direct {v2, p1, v1}, Lcom/android/server/wm/WindowState;->applyInOrderWithImeWindows(Lcom/android/internal/util/ToBooleanFunction;Z)Z

    move-result v2

    if-eqz v2, :cond_3b

    .line 4239
    return v1

    .line 4241
    :cond_3b
    add-int/lit8 v0, v0, -0x1

    .line 4242
    if-gez v0, :cond_40

    .line 4243
    goto :goto_49

    .line 4245
    :cond_40
    iget-object v2, p0, Lcom/android/server/wm/WindowState;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v2, v0}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/WindowState;

    goto :goto_32

    .line 4248
    :cond_49
    :goto_49
    const/4 p1, 0x0

    return p1
.end method

.method private frameCoversEntireAppTokenBounds()Z
    .registers 3

    .line 3445
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mTmpRect:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    invoke-virtual {v1}, Lcom/android/server/wm/AppWindowToken;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 3446
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mTmpRect:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mWindowFrames:Lcom/android/server/wm/WindowFrames;

    iget-object v1, v1, Lcom/android/server/wm/WindowFrames;->mFrame:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->intersectUnchecked(Landroid/graphics/Rect;)V

    .line 3447
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    invoke-virtual {v0}, Lcom/android/server/wm/AppWindowToken;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private getLastReportedConfiguration()Landroid/content/res/Configuration;
    .registers 2

    .line 2492
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mLastReportedConfiguration:Landroid/util/MergedConfiguration;

    invoke-virtual {v0}, Landroid/util/MergedConfiguration;->getMergedConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    return-object v0
.end method

.method private getProcessGlobalConfiguration()Landroid/content/res/Configuration;
    .registers 3

    .line 2469
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getParentWindow()Lcom/android/server/wm/WindowState;

    move-result-object v0

    .line 2470
    if-eqz v0, :cond_9

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mSession:Lcom/android/server/wm/Session;

    goto :goto_b

    :cond_9
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mSession:Lcom/android/server/wm/Session;

    :goto_b
    iget v0, v0, Lcom/android/server/wm/Session;->mPid:I

    .line 2471
    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 2472
    invoke-virtual {v1, v0}, Lcom/android/server/wm/ActivityTaskManagerService;->getGlobalConfigurationForPid(I)Landroid/content/res/Configuration;

    move-result-object v0

    .line 2473
    return-object v0
.end method

.method private getStackId()I
    .registers 2

    .line 3362
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getStack()Lcom/android/server/wm/TaskStack;

    move-result-object v0

    .line 3363
    if-nez v0, :cond_8

    .line 3364
    const/4 v0, -0x1

    return v0

    .line 3366
    :cond_8
    iget v0, v0, Lcom/android/server/wm/TaskStack;->mStackId:I

    return v0
.end method

.method private hasMoved()Z
    .registers 3

    .line 1853
    iget-boolean v0, p0, Lcom/android/server/wm/WindowState;->mHasSurface:Z

    if-eqz v0, :cond_40

    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mWindowFrames:Lcom/android/server/wm/WindowFrames;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowFrames;->hasContentChanged()Z

    move-result v0

    if-nez v0, :cond_10

    iget-boolean v0, p0, Lcom/android/server/wm/WindowState;->mMovedByResize:Z

    if-eqz v0, :cond_40

    :cond_10
    iget-boolean v0, p0, Lcom/android/server/wm/WindowState;->mAnimatingExit:Z

    if-nez v0, :cond_40

    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mWindowFrames:Lcom/android/server/wm/WindowFrames;

    iget-object v0, v0, Lcom/android/server/wm/WindowFrames;->mFrame:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mWindowFrames:Lcom/android/server/wm/WindowFrames;

    iget-object v1, v1, Lcom/android/server/wm/WindowFrames;->mLastFrame:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    if-ne v0, v1, :cond_30

    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mWindowFrames:Lcom/android/server/wm/WindowFrames;

    iget-object v0, v0, Lcom/android/server/wm/WindowFrames;->mFrame:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mWindowFrames:Lcom/android/server/wm/WindowFrames;

    iget-object v1, v1, Lcom/android/server/wm/WindowFrames;->mLastFrame:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    if-eq v0, v1, :cond_40

    :cond_30
    iget-boolean v0, p0, Lcom/android/server/wm/WindowState;->mIsChildWindow:Z

    if-eqz v0, :cond_3e

    .line 1857
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getParentWindow()Lcom/android/server/wm/WindowState;

    move-result-object v0

    invoke-direct {v0}, Lcom/android/server/wm/WindowState;->hasMoved()Z

    move-result v0

    if-nez v0, :cond_40

    :cond_3e
    const/4 v0, 0x1

    goto :goto_41

    :cond_40
    const/4 v0, 0x0

    .line 1853
    :goto_41
    return v0
.end method

.method private inAppWindowThatMatchesParentBounds()Z
    .registers 2

    .line 3407
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    if-eqz v0, :cond_13

    invoke-virtual {v0}, Lcom/android/server/wm/AppWindowToken;->matchParentBounds()Z

    move-result v0

    if-eqz v0, :cond_11

    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->inMultiWindowMode()Z

    move-result v0

    if-nez v0, :cond_11

    goto :goto_13

    :cond_11
    const/4 v0, 0x0

    goto :goto_14

    :cond_13
    :goto_13
    const/4 v0, 0x1

    :goto_14
    return v0
.end method

.method private initExclusionRestrictions()V
    .registers 5

    .line 3026
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 3027
    iget-object v2, p0, Lcom/android/server/wm/WindowState;->mLastExclusionLogUptimeMillis:[J

    const/4 v3, 0x0

    aput-wide v0, v2, v3

    .line 3028
    const/4 v3, 0x1

    aput-wide v0, v2, v3

    .line 3029
    return-void
.end method

.method private isDragResizingChangeReported()Z
    .registers 2

    .line 3471
    iget-boolean v0, p0, Lcom/android/server/wm/WindowState;->mDragResizingChangeReported:Z

    return v0
.end method

.method private isHiddenFromUserLocked()Z
    .registers 5

    .line 3047
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getTopParentWindow()Lcom/android/server/wm/WindowState;

    move-result-object v0

    .line 3048
    iget-object v1, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v1, v1, Landroid/view/WindowManager$LayoutParams;->type:I

    const/4 v2, 0x0

    const/16 v3, 0x7d0

    if-ge v1, v3, :cond_4e

    iget-object v1, v0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    if-eqz v1, :cond_4e

    iget-boolean v1, v1, Lcom/android/server/wm/AppWindowToken;->mShowForAllUsers:Z

    if-eqz v1, :cond_4e

    .line 3054
    invoke-virtual {v0}, Lcom/android/server/wm/WindowState;->getFrameLw()Landroid/graphics/Rect;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Rect;->left:I

    invoke-virtual {v0}, Lcom/android/server/wm/WindowState;->getDisplayFrameLw()Landroid/graphics/Rect;

    move-result-object v3

    iget v3, v3, Landroid/graphics/Rect;->left:I

    if-gt v1, v3, :cond_4e

    .line 3055
    invoke-virtual {v0}, Lcom/android/server/wm/WindowState;->getFrameLw()Landroid/graphics/Rect;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Rect;->top:I

    invoke-virtual {v0}, Lcom/android/server/wm/WindowState;->getDisplayFrameLw()Landroid/graphics/Rect;

    move-result-object v3

    iget v3, v3, Landroid/graphics/Rect;->top:I

    if-gt v1, v3, :cond_4e

    .line 3056
    invoke-virtual {v0}, Lcom/android/server/wm/WindowState;->getFrameLw()Landroid/graphics/Rect;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Rect;->right:I

    invoke-virtual {v0}, Lcom/android/server/wm/WindowState;->getStableFrameLw()Landroid/graphics/Rect;

    move-result-object v3

    iget v3, v3, Landroid/graphics/Rect;->right:I

    if-lt v1, v3, :cond_4e

    .line 3057
    invoke-virtual {v0}, Lcom/android/server/wm/WindowState;->getFrameLw()Landroid/graphics/Rect;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v0}, Lcom/android/server/wm/WindowState;->getStableFrameLw()Landroid/graphics/Rect;

    move-result-object v3

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    if-lt v1, v3, :cond_4e

    .line 3059
    return v2

    .line 3063
    :cond_4e
    iget-boolean v1, v0, Lcom/android/server/wm/WindowState;->mShowToOwnerOnly:Z

    if-eqz v1, :cond_62

    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget v0, v0, Lcom/android/server/wm/WindowState;->mOwnerUid:I

    .line 3064
    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/android/server/wm/WindowManagerService;->isCurrentProfileLocked(I)Z

    move-result v0

    if-nez v0, :cond_62

    const/4 v2, 0x1

    goto :goto_63

    :cond_62
    nop

    .line 3063
    :goto_63
    return v2
.end method

.method private isLegacyPolicyVisibility()Z
    .registers 3

    .line 1509
    iget v0, p0, Lcom/android/server/wm/WindowState;->mPolicyVisibility:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_7

    goto :goto_8

    :cond_7
    const/4 v1, 0x0

    :goto_8
    return v1
.end method

.method private isOpaqueDrawn()Z
    .registers 3

    .line 1698
    iget-boolean v0, p0, Lcom/android/server/wm/WindowState;->mIsWallpaper:Z

    if-nez v0, :cond_b

    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->format:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_13

    :cond_b
    iget-boolean v0, p0, Lcom/android/server/wm/WindowState;->mIsWallpaper:Z

    if-eqz v0, :cond_21

    iget-boolean v0, p0, Lcom/android/server/wm/WindowState;->mWallpaperVisible:Z

    if-eqz v0, :cond_21

    .line 1700
    :cond_13
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->isDrawnLw()Z

    move-result v0

    if-eqz v0, :cond_21

    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->isAnimating()Z

    move-result v0

    if-nez v0, :cond_21

    const/4 v0, 0x1

    goto :goto_22

    :cond_21
    const/4 v0, 0x0

    .line 1698
    :goto_22
    return v0
.end method

.method private isParentWindowGoneForLayout()Z
    .registers 2

    .line 3915
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getParentWindow()Lcom/android/server/wm/WindowState;

    move-result-object v0

    .line 3916
    if-eqz v0, :cond_e

    invoke-virtual {v0}, Lcom/android/server/wm/WindowState;->isGoneForLayoutLw()Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    goto :goto_f

    :cond_e
    const/4 v0, 0x0

    :goto_f
    return v0
.end method

.method private logExclusionRestrictions(I)V
    .registers 15

    .line 3003
    invoke-static {p0}, Lcom/android/server/wm/DisplayContent;->logsGestureExclusionRestrictions(Lcom/android/server/wm/WindowState;)Z

    move-result v0

    if-eqz v0, :cond_51

    .line 3004
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lcom/android/server/wm/WindowState;->mLastExclusionLogUptimeMillis:[J

    aget-wide v2, v2, p1

    iget-object v4, p0, Lcom/android/server/wm/WindowState;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-wide v4, v4, Lcom/android/server/wm/WindowManagerService;->mSystemGestureExclusionLogDebounceTimeoutMillis:J

    add-long/2addr v2, v4

    cmp-long v0, v0, v2

    if-gez v0, :cond_18

    goto :goto_51

    .line 3011
    :cond_18
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 3012
    iget-object v2, p0, Lcom/android/server/wm/WindowState;->mLastExclusionLogUptimeMillis:[J

    aget-wide v3, v2, p1

    sub-long v3, v0, v3

    .line 3013
    aput-wide v0, v2, p1

    .line 3015
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mLastRequestedExclusionHeight:[I

    aget v7, v0, p1

    .line 3016
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mLastGrantedExclusionHeight:[I

    aget v0, v0, p1

    .line 3018
    const/16 v5, 0xdf

    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget-object v6, v1, Landroid/view/WindowManager$LayoutParams;->packageName:Ljava/lang/String;

    sub-int v8, v7, v0

    const/4 v0, 0x1

    add-int/lit8 v9, p1, 0x1

    .line 3021
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    iget p1, p1, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x2

    if-ne p1, v1, :cond_42

    move v10, v0

    goto :goto_44

    :cond_42
    const/4 p1, 0x0

    move v10, p1

    .line 3022
    :goto_44
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getWindowingMode()I

    move-result p1

    invoke-static {p1}, Landroid/app/WindowConfiguration;->isSplitScreenWindowingMode(I)Z

    move-result v11

    long-to-int v12, v3

    .line 3018
    invoke-static/range {v5 .. v12}, Landroid/util/StatsLog;->write(ILjava/lang/String;IIIZZI)I

    .line 3023
    return-void

    .line 3008
    :cond_51
    :goto_51
    return-void
.end method

.method private logPerformShow(Ljava/lang/String;)V
    .registers 2

    .line 4117
    return-void
.end method

.method private matchesDisplayBounds()Z
    .registers 3

    .line 1876
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private registeredForDisplayConfigChanges()Z
    .registers 5

    .line 3208
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getParentWindow()Lcom/android/server/wm/WindowState;

    move-result-object v0

    .line 3209
    if-eqz v0, :cond_9

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mSession:Lcom/android/server/wm/Session;

    goto :goto_b

    :cond_9
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mSession:Lcom/android/server/wm/Session;

    .line 3211
    :goto_b
    iget v1, v0, Lcom/android/server/wm/Session;->mPid:I

    sget v2, Lcom/android/server/am/ActivityManagerService;->MY_PID:I

    const/4 v3, 0x0

    if-eq v1, v2, :cond_2f

    iget v1, v0, Lcom/android/server/wm/Session;->mPid:I

    if-gez v1, :cond_17

    goto :goto_2f

    .line 3212
    :cond_17
    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget v2, v0, Lcom/android/server/wm/Session;->mPid:I

    iget v0, v0, Lcom/android/server/wm/Session;->mUid:I

    .line 3213
    invoke-virtual {v1, v2, v0}, Lcom/android/server/wm/ActivityTaskManagerService;->getProcessController(II)Lcom/android/server/wm/WindowProcessController;

    move-result-object v0

    .line 3214
    if-eqz v0, :cond_2e

    invoke-virtual {v0}, Lcom/android/server/wm/WindowProcessController;->registeredForDisplayConfigChanges()Z

    move-result v0

    if-nez v0, :cond_2c

    goto :goto_2e

    .line 3215
    :cond_2c
    const/4 v0, 0x1

    return v0

    .line 3214
    :cond_2e
    :goto_2e
    return v3

    .line 3211
    :cond_2f
    :goto_2f
    return v3
.end method

.method private removeIfPossible(Z)V
    .registers 9

    .line 1975
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/wm/WindowState;->mWindowRemovalAllowed:Z

    .line 1979
    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v1, v1, Landroid/view/WindowManager$LayoutParams;->type:I

    const/4 v2, 0x0

    const/4 v3, 0x3

    if-ne v1, v3, :cond_d

    move v1, v0

    goto :goto_e

    :cond_d
    move v1, v2

    .line 1980
    :goto_e
    nop

    .line 1989
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v3

    .line 1992
    :try_start_13
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->disposeInputChannel()V

    .line 2010
    nop

    .line 2012
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getDisplayId()I

    .line 2017
    iget-boolean v5, p0, Lcom/android/server/wm/WindowState;->mHasSurface:Z

    if-eqz v5, :cond_c3

    iget-object v5, p0, Lcom/android/server/wm/WindowState;->mToken:Lcom/android/server/wm/WindowToken;

    invoke-virtual {v5}, Lcom/android/server/wm/WindowToken;->okToAnimate()Z

    move-result v5

    if-eqz v5, :cond_c3

    .line 2018
    iget-boolean v5, p0, Lcom/android/server/wm/WindowState;->mWillReplaceWindow:Z

    if-eqz v5, :cond_32

    .line 2027
    iput-boolean v0, p0, Lcom/android/server/wm/WindowState;->mAnimatingExit:Z

    .line 2028
    iput-boolean v0, p0, Lcom/android/server/wm/WindowState;->mReplacingRemoveRequested:Z
    :try_end_2e
    .catchall {:try_start_13 .. :try_end_2e} :catchall_ea

    .line 2102
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2029
    return-void

    .line 2033
    :cond_32
    :try_start_32
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->isWinVisibleLw()Z

    move-result v5

    .line 2035
    if-eqz p1, :cond_57

    .line 2039
    iput-boolean v0, p0, Lcom/android/server/wm/WindowState;->mAppDied:Z

    .line 2040
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->setDisplayLayoutNeeded()V

    .line 2041
    iget-object p1, p0, Lcom/android/server/wm/WindowState;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object p1, p1, Lcom/android/server/wm/WindowManagerService;->mWindowPlacerLocked:Lcom/android/server/wm/WindowSurfacePlacer;

    invoke-virtual {p1}, Lcom/android/server/wm/WindowSurfacePlacer;->performSurfacePlacement()V

    .line 2045
    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/android/server/wm/WindowState;->openInputChannel(Landroid/view/InputChannel;)V

    .line 2046
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/server/wm/DisplayContent;->getInputMonitor()Lcom/android/server/wm/InputMonitor;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/android/server/wm/InputMonitor;->updateInputWindowsLw(Z)V
    :try_end_53
    .catchall {:try_start_32 .. :try_end_53} :catchall_ea

    .line 2102
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2047
    return-void

    .line 2050
    :cond_57
    if-eqz v5, :cond_7d

    .line 2051
    if-nez v1, :cond_5d

    const/4 p1, 0x2

    goto :goto_5e

    :cond_5d
    const/4 p1, 0x5

    .line 2054
    :goto_5e
    :try_start_5e
    iget-object v6, p0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    invoke-virtual {v6, p1, v2}, Lcom/android/server/wm/WindowStateAnimator;->applyAnimationLocked(IZ)Z

    move-result v6

    if-eqz v6, :cond_70

    .line 2055
    iput-boolean v0, p0, Lcom/android/server/wm/WindowState;->mAnimatingExit:Z

    .line 2059
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->setDisplayLayoutNeeded()V

    .line 2060
    iget-object v6, p0, Lcom/android/server/wm/WindowState;->mWmService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v6}, Lcom/android/server/wm/WindowManagerService;->requestTraversal()V

    .line 2062
    :cond_70
    iget-object v6, p0, Lcom/android/server/wm/WindowState;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v6, v6, Lcom/android/server/wm/WindowManagerService;->mAccessibilityController:Lcom/android/server/wm/AccessibilityController;

    if-eqz v6, :cond_7d

    .line 2063
    iget-object v6, p0, Lcom/android/server/wm/WindowState;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v6, v6, Lcom/android/server/wm/WindowManagerService;->mAccessibilityController:Lcom/android/server/wm/AccessibilityController;

    invoke-virtual {v6, p0, p1}, Lcom/android/server/wm/AccessibilityController;->onWindowTransitionLocked(Lcom/android/server/wm/WindowState;I)V

    .line 2066
    :cond_7d
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->isAnimating()Z

    move-result p1

    if-eqz p1, :cond_91

    iget-object p1, p0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    if-eqz p1, :cond_8f

    iget-object p1, p0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    .line 2067
    invoke-virtual {p1}, Lcom/android/server/wm/AppWindowToken;->isWaitingForTransitionStart()Z

    move-result p1

    if-nez p1, :cond_91

    :cond_8f
    move p1, v0

    goto :goto_92

    :cond_91
    move p1, v2

    .line 2068
    :goto_92
    if-eqz v1, :cond_a2

    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    if-eqz v1, :cond_a2

    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    .line 2069
    invoke-virtual {v1, p0}, Lcom/android/server/wm/AppWindowToken;->isLastWindow(Lcom/android/server/wm/WindowState;)Z

    move-result v1

    if-eqz v1, :cond_a2

    move v1, v0

    goto :goto_a3

    :cond_a2
    move v1, v2

    .line 2075
    :goto_a3
    iget-object v6, p0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    invoke-virtual {v6}, Lcom/android/server/wm/WindowStateAnimator;->getShown()Z

    move-result v6

    if-eqz v6, :cond_c4

    iget-boolean v6, p0, Lcom/android/server/wm/WindowState;->mAnimatingExit:Z

    if-eqz v6, :cond_c4

    if-eqz v1, :cond_b3

    if-eqz p1, :cond_c4

    .line 2080
    :cond_b3
    invoke-direct {p0}, Lcom/android/server/wm/WindowState;->setupWindowForRemoveOnExit()V

    .line 2081
    iget-object p1, p0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    if-eqz p1, :cond_bf

    .line 2082
    iget-object p1, p0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    invoke-virtual {p1}, Lcom/android/server/wm/AppWindowToken;->updateReportedVisibilityLocked()V
    :try_end_bf
    .catchall {:try_start_5e .. :try_end_bf} :catchall_ea

    .line 2102
    :cond_bf
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2084
    return-void

    .line 2088
    :cond_c3
    move v5, v2

    :cond_c4
    :try_start_c4
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->removeImmediately()V

    .line 2091
    if-eqz v5, :cond_d6

    .line 2092
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object p1

    .line 2093
    invoke-virtual {p1}, Lcom/android/server/wm/DisplayContent;->updateOrientationFromAppTokens()Z

    move-result v1

    if-eqz v1, :cond_d6

    .line 2094
    invoke-virtual {p1}, Lcom/android/server/wm/DisplayContent;->sendNewConfiguration()V

    .line 2097
    :cond_d6
    iget-object p1, p0, Lcom/android/server/wm/WindowState;->mWmService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->isFocused()Z

    move-result v1

    if-eqz v1, :cond_e0

    .line 2098
    const/4 v2, 0x4

    goto :goto_e1

    .line 2099
    :cond_e0
    nop

    :goto_e1
    nop

    .line 2097
    invoke-virtual {p1, v2, v0}, Lcom/android/server/wm/WindowManagerService;->updateFocusedWindowLocked(IZ)Z
    :try_end_e5
    .catchall {:try_start_c4 .. :try_end_e5} :catchall_ea

    .line 2102
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2103
    nop

    .line 2104
    return-void

    .line 2102
    :catchall_ea
    move-exception p1

    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p1
.end method

.method private removeReplacedWindow()V
    .registers 2

    .line 2239
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/wm/WindowState;->mWillReplaceWindow:Z

    .line 2240
    iput-boolean v0, p0, Lcom/android/server/wm/WindowState;->mAnimateReplacingWindow:Z

    .line 2241
    iput-boolean v0, p0, Lcom/android/server/wm/WindowState;->mReplacingRemoveRequested:Z

    .line 2242
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/wm/WindowState;->mReplacementWindow:Lcom/android/server/wm/WindowState;

    .line 2243
    iget-boolean v0, p0, Lcom/android/server/wm/WindowState;->mAnimatingExit:Z

    if-nez v0, :cond_12

    iget-boolean v0, p0, Lcom/android/server/wm/WindowState;->mAnimateReplacingWindow:Z

    if-nez v0, :cond_15

    .line 2244
    :cond_12
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->removeImmediately()V

    .line 2246
    :cond_15
    return-void
.end method

.method private setAppOpVisibilityLw(Z)V
    .registers 3

    .line 2763
    iget-boolean v0, p0, Lcom/android/server/wm/WindowState;->mAppOpVisibility:Z

    if-eq v0, p1, :cond_10

    .line 2764
    iput-boolean p1, p0, Lcom/android/server/wm/WindowState;->mAppOpVisibility:Z

    .line 2765
    const/4 v0, 0x1

    if-eqz p1, :cond_d

    .line 2772
    invoke-virtual {p0, v0, v0}, Lcom/android/server/wm/WindowState;->showLw(ZZ)Z

    goto :goto_10

    .line 2774
    :cond_d
    invoke-virtual {p0, v0, v0}, Lcom/android/server/wm/WindowState;->hideLw(ZZ)Z

    .line 2777
    :cond_10
    :goto_10
    return-void
.end method

.method private setTouchableRegionCropIfNeeded(Landroid/view/InputWindowHandle;)V
    .registers 4

    .line 3117
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getTask()Lcom/android/server/wm/Task;

    move-result-object v0

    .line 3118
    if-eqz v0, :cond_1a

    invoke-virtual {v0}, Lcom/android/server/wm/Task;->cropWindowsToStackBounds()Z

    move-result v1

    if-nez v1, :cond_d

    goto :goto_1a

    .line 3122
    :cond_d
    iget-object v0, v0, Lcom/android/server/wm/Task;->mStack:Lcom/android/server/wm/TaskStack;

    .line 3123
    if-nez v0, :cond_12

    .line 3124
    return-void

    .line 3127
    :cond_12
    invoke-virtual {v0}, Lcom/android/server/wm/TaskStack;->getSurfaceControl()Landroid/view/SurfaceControl;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/InputWindowHandle;->setTouchableRegionCrop(Landroid/view/SurfaceControl;)V

    .line 3128
    return-void

    .line 3119
    :cond_1a
    :goto_1a
    return-void
.end method

.method private setupWindowForRemoveOnExit()V
    .registers 4

    .line 2107
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/wm/WindowState;->mRemoveOnExit:Z

    .line 2108
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->setDisplayLayoutNeeded()V

    .line 2111
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mWmService:Lcom/android/server/wm/WindowManagerService;

    const/4 v1, 0x0

    const/4 v2, 0x3

    invoke-virtual {v0, v2, v1}, Lcom/android/server/wm/WindowManagerService;->updateFocusedWindowLocked(IZ)Z

    move-result v0

    .line 2113
    iget-object v2, p0, Lcom/android/server/wm/WindowState;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mWindowPlacerLocked:Lcom/android/server/wm/WindowSurfacePlacer;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowSurfacePlacer;->performSurfacePlacement()V

    .line 2114
    if-eqz v0, :cond_22

    .line 2115
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->getInputMonitor()Lcom/android/server/wm/InputMonitor;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/android/server/wm/InputMonitor;->updateInputWindowsLw(Z)V

    .line 2117
    :cond_22
    return-void
.end method

.method private shouldKeepVisibleDeadAppWindow()Z
    .registers 4

    .line 2578
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->isWinVisibleLw()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_30

    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    if-eqz v0, :cond_30

    invoke-virtual {v0}, Lcom/android/server/wm/AppWindowToken;->isClientHidden()Z

    move-result v0

    if-eqz v0, :cond_12

    goto :goto_30

    .line 2583
    :cond_12
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget-object v0, v0, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    iget-object v2, p0, Lcom/android/server/wm/WindowState;->mClient:Landroid/view/IWindow;

    invoke-interface {v2}, Landroid/view/IWindow;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    if-eq v0, v2, :cond_1f

    .line 2586
    return v1

    .line 2589
    :cond_1f
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/4 v2, 0x3

    if-ne v0, v2, :cond_27

    .line 2592
    return v1

    .line 2595
    :cond_27
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getWindowConfiguration()Landroid/app/WindowConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/WindowConfiguration;->keepVisibleDeadAppWindowOnScreen()Z

    move-result v0

    return v0

    .line 2580
    :cond_30
    :goto_30
    return v1
.end method

.method private skipDecorCrop()Z
    .registers 2

    .line 4542
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mWindowFrames:Lcom/android/server/wm/WindowFrames;

    iget-object v0, v0, Lcom/android/server/wm/WindowFrames;->mDecorFrame:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 4543
    const/4 v0, 0x1

    return v0

    .line 4547
    :cond_c
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    if-eqz v0, :cond_12

    .line 4548
    const/4 v0, 0x0

    return v0

    .line 4553
    :cond_12
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mToken:Lcom/android/server/wm/WindowToken;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowToken;->canLayerAboveSystemBars()Z

    move-result v0

    return v0
.end method

.method private startAnimation(Landroid/view/SurfaceControl$Transaction;Lcom/android/server/wm/AnimationAdapter;)V
    .registers 4

    .line 4808
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    iget-boolean v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mLastHidden:Z

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/server/wm/WindowState;->startAnimation(Landroid/view/SurfaceControl$Transaction;Lcom/android/server/wm/AnimationAdapter;Z)V

    .line 4809
    return-void
.end method

.method private startMoveAnimation(II)V
    .registers 12

    .line 4791
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mInsetProvider:Lcom/android/server/wm/InsetsSourceProvider;

    if-eqz v0, :cond_b

    invoke-virtual {v0}, Lcom/android/server/wm/InsetsSourceProvider;->isControllable()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 4792
    return-void

    .line 4796
    :cond_b
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    .line 4797
    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    .line 4798
    iget-object v2, p0, Lcom/android/server/wm/WindowState;->mWindowFrames:Lcom/android/server/wm/WindowFrames;

    iget-object v2, v2, Lcom/android/server/wm/WindowFrames;->mLastFrame:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    iget-object v3, p0, Lcom/android/server/wm/WindowState;->mWindowFrames:Lcom/android/server/wm/WindowFrames;

    iget-object v3, v3, Lcom/android/server/wm/WindowFrames;->mLastFrame:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    invoke-direct {p0, v2, v3, v0}, Lcom/android/server/wm/WindowState;->transformFrameToSurfacePosition(IILandroid/graphics/Point;)V

    .line 4800
    invoke-direct {p0, p1, p2, v1}, Lcom/android/server/wm/WindowState;->transformFrameToSurfacePosition(IILandroid/graphics/Point;)V

    .line 4801
    new-instance p1, Lcom/android/server/wm/LocalAnimationAdapter;

    new-instance p2, Lcom/android/server/wm/WindowState$MoveAnimationSpec;

    iget v4, v0, Landroid/graphics/Point;->x:I

    iget v5, v0, Landroid/graphics/Point;->y:I

    iget v6, v1, Landroid/graphics/Point;->x:I

    iget v7, v1, Landroid/graphics/Point;->y:I

    const/4 v8, 0x0

    move-object v2, p2

    move-object v3, p0

    invoke-direct/range {v2 .. v8}, Lcom/android/server/wm/WindowState$MoveAnimationSpec;-><init>(Lcom/android/server/wm/WindowState;IIIILcom/android/server/wm/WindowState$1;)V

    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mSurfaceAnimationRunner:Lcom/android/server/wm/SurfaceAnimationRunner;

    invoke-direct {p1, p2, v0}, Lcom/android/server/wm/LocalAnimationAdapter;-><init>(Lcom/android/server/wm/LocalAnimationAdapter$AnimationSpec;Lcom/android/server/wm/SurfaceAnimationRunner;)V

    .line 4804
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getPendingTransaction()Landroid/view/SurfaceControl$Transaction;

    move-result-object p2

    invoke-direct {p0, p2, p1}, Lcom/android/server/wm/WindowState;->startAnimation(Landroid/view/SurfaceControl$Transaction;Lcom/android/server/wm/AnimationAdapter;)V

    .line 4805
    return-void
.end method

.method private subtractInsets(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)V
    .registers 10

    .line 893
    iget v0, p3, Landroid/graphics/Rect;->left:I

    iget v1, p2, Landroid/graphics/Rect;->left:I

    iget v2, p4, Landroid/graphics/Rect;->left:I

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    sub-int/2addr v0, v1

    const/4 v1, 0x0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 894
    iget v2, p3, Landroid/graphics/Rect;->top:I

    iget v3, p2, Landroid/graphics/Rect;->top:I

    iget v4, p4, Landroid/graphics/Rect;->top:I

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    sub-int/2addr v2, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 895
    iget v3, p2, Landroid/graphics/Rect;->right:I

    iget v4, p4, Landroid/graphics/Rect;->right:I

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    iget v4, p3, Landroid/graphics/Rect;->right:I

    sub-int/2addr v3, v4

    invoke-static {v1, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 896
    iget p2, p2, Landroid/graphics/Rect;->bottom:I

    iget p4, p4, Landroid/graphics/Rect;->bottom:I

    invoke-static {p2, p4}, Ljava/lang/Math;->min(II)I

    move-result p2

    iget p3, p3, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr p2, p3

    invoke-static {v1, p2}, Ljava/lang/Math;->max(II)I

    move-result p2

    .line 897
    invoke-virtual {p1, v0, v2, v3, p2}, Landroid/graphics/Rect;->inset(IIII)V

    .line 898
    return-void
.end method

.method private subtractTouchExcludeRegionIfNeeded(Landroid/graphics/Region;)V
    .registers 4

    .line 3150
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mTapExcludeRegionHolder:Lcom/android/server/wm/TapExcludeRegionHolder;

    if-nez v0, :cond_5

    .line 3151
    return-void

    .line 3153
    :cond_5
    invoke-static {}, Landroid/graphics/Region;->obtain()Landroid/graphics/Region;

    move-result-object v0

    .line 3154
    invoke-virtual {p0, v0}, Lcom/android/server/wm/WindowState;->amendTapExcludeRegion(Landroid/graphics/Region;)V

    .line 3155
    invoke-virtual {v0}, Landroid/graphics/Region;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_17

    .line 3156
    sget-object v1, Landroid/graphics/Region$Op;->DIFFERENCE:Landroid/graphics/Region$Op;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Region;->op(Landroid/graphics/Region;Landroid/graphics/Region$Op;)Z

    .line 3158
    :cond_17
    invoke-virtual {v0}, Landroid/graphics/Region;->recycle()V

    .line 3159
    return-void
.end method

.method private transformFrameToSurfacePosition(IILandroid/graphics/Point;)V
    .registers 5

    .line 5027
    invoke-virtual {p3, p1, p2}, Landroid/graphics/Point;->set(II)V

    .line 5030
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object p1

    .line 5031
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->isChildWindow()Z

    move-result p2

    if-eqz p2, :cond_36

    .line 5037
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getParentWindow()Lcom/android/server/wm/WindowState;

    move-result-object p1

    .line 5038
    iget-object p2, p0, Lcom/android/server/wm/WindowState;->mTmpPoint:Landroid/graphics/Point;

    iget-object v0, p1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget-object v0, v0, Landroid/view/WindowManager$LayoutParams;->surfaceInsets:Landroid/graphics/Rect;

    invoke-direct {p0, p2, v0}, Lcom/android/server/wm/WindowState;->transformSurfaceInsetsPosition(Landroid/graphics/Point;Landroid/graphics/Rect;)V

    .line 5039
    iget-object p2, p1, Lcom/android/server/wm/WindowState;->mWindowFrames:Lcom/android/server/wm/WindowFrames;

    iget-object p2, p2, Lcom/android/server/wm/WindowFrames;->mFrame:Landroid/graphics/Rect;

    iget p2, p2, Landroid/graphics/Rect;->left:I

    neg-int p2, p2

    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mTmpPoint:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->x:I

    add-int/2addr p2, v0

    iget-object p1, p1, Lcom/android/server/wm/WindowState;->mWindowFrames:Lcom/android/server/wm/WindowFrames;

    iget-object p1, p1, Lcom/android/server/wm/WindowFrames;->mFrame:Landroid/graphics/Rect;

    iget p1, p1, Landroid/graphics/Rect;->top:I

    neg-int p1, p1

    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mTmpPoint:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->y:I

    add-int/2addr p1, v0

    invoke-virtual {p3, p2, p1}, Landroid/graphics/Point;->offset(II)V

    goto :goto_46

    .line 5041
    :cond_36
    if-eqz p1, :cond_46

    .line 5042
    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->getDisplayedBounds()Landroid/graphics/Rect;

    move-result-object p1

    .line 5043
    iget p2, p1, Landroid/graphics/Rect;->left:I

    neg-int p2, p2

    iget p1, p1, Landroid/graphics/Rect;->top:I

    neg-int p1, p1

    invoke-virtual {p3, p2, p1}, Landroid/graphics/Point;->offset(II)V

    goto :goto_47

    .line 5041
    :cond_46
    :goto_46
    nop

    .line 5046
    :goto_47
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getStack()Lcom/android/server/wm/TaskStack;

    move-result-object p1

    .line 5052
    if-eqz p1, :cond_54

    .line 5053
    invoke-virtual {p1}, Lcom/android/server/wm/TaskStack;->getStackOutset()I

    move-result p1

    .line 5054
    invoke-virtual {p3, p1, p1}, Landroid/graphics/Point;->offset(II)V

    .line 5058
    :cond_54
    iget-object p1, p0, Lcom/android/server/wm/WindowState;->mTmpPoint:Landroid/graphics/Point;

    iget-object p2, p0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget-object p2, p2, Landroid/view/WindowManager$LayoutParams;->surfaceInsets:Landroid/graphics/Rect;

    invoke-direct {p0, p1, p2}, Lcom/android/server/wm/WindowState;->transformSurfaceInsetsPosition(Landroid/graphics/Point;Landroid/graphics/Rect;)V

    .line 5059
    iget-object p1, p0, Lcom/android/server/wm/WindowState;->mTmpPoint:Landroid/graphics/Point;

    iget p1, p1, Landroid/graphics/Point;->x:I

    neg-int p1, p1

    iget-object p2, p0, Lcom/android/server/wm/WindowState;->mTmpPoint:Landroid/graphics/Point;

    iget p2, p2, Landroid/graphics/Point;->y:I

    neg-int p2, p2

    invoke-virtual {p3, p1, p2}, Landroid/graphics/Point;->offset(II)V

    .line 5060
    return-void
.end method

.method private transformSurfaceInsetsPosition(Landroid/graphics/Point;Landroid/graphics/Rect;)V
    .registers 5

    .line 5067
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->inSizeCompatMode()Z

    move-result v0

    if-nez v0, :cond_f

    .line 5068
    iget v0, p2, Landroid/graphics/Rect;->left:I

    iput v0, p1, Landroid/graphics/Point;->x:I

    .line 5069
    iget p2, p2, Landroid/graphics/Rect;->top:I

    iput p2, p1, Landroid/graphics/Point;->y:I

    .line 5070
    return-void

    .line 5072
    :cond_f
    iget v0, p2, Landroid/graphics/Rect;->left:I

    int-to-float v0, v0

    iget v1, p0, Lcom/android/server/wm/WindowState;->mGlobalScale:F

    mul-float/2addr v0, v1

    const/high16 v1, 0x3f000000  # 0.5f

    add-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p1, Landroid/graphics/Point;->x:I

    .line 5073
    iget p2, p2, Landroid/graphics/Rect;->top:I

    int-to-float p2, p2

    iget v0, p0, Lcom/android/server/wm/WindowState;->mGlobalScale:F

    mul-float/2addr p2, v0

    add-float/2addr p2, v1

    float-to-int p2, p2

    iput p2, p1, Landroid/graphics/Point;->y:I

    .line 5074
    return-void
.end method


# virtual methods
.method addEmbeddedDisplayContent(Lcom/android/server/wm/DisplayContent;)Z
    .registers 3

    .line 4747
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mEmbeddedDisplayContents:Landroid/util/ArraySet;

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method addWinAnimatorToList(Ljava/util/ArrayList;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/android/server/wm/WindowStateAnimator;",
            ">;)V"
        }
    .end annotation

    .line 2862
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2864
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_d
    if-ltz v0, :cond_1d

    .line 2865
    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v1, v0}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/WindowState;

    .line 2866
    invoke-virtual {v1, p1}, Lcom/android/server/wm/WindowState;->addWinAnimatorToList(Ljava/util/ArrayList;)V

    .line 2864
    add-int/lit8 v0, v0, -0x1

    goto :goto_d

    .line 2868
    :cond_1d
    return-void
.end method

.method adjustStartingWindowFlags()V
    .registers 5

    .line 2496
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_26

    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    if-eqz v0, :cond_26

    iget-object v0, v0, Lcom/android/server/wm/AppWindowToken;->startingWindow:Lcom/android/server/wm/WindowState;

    if-eqz v0, :cond_26

    .line 2503
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    iget-object v0, v0, Lcom/android/server/wm/AppWindowToken;->startingWindow:Lcom/android/server/wm/WindowState;

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    .line 2504
    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    const v2, -0x480002

    and-int/2addr v1, v2

    iget-object v2, p0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v2, v2, Landroid/view/WindowManager$LayoutParams;->flags:I

    const v3, 0x480001

    and-int/2addr v2, v3

    or-int/2addr v1, v2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 2506
    :cond_26
    return-void
.end method

.method amendTapExcludeRegion(Landroid/graphics/Region;)V
    .registers 5

    .line 5172
    invoke-static {}, Landroid/graphics/Region;->obtain()Landroid/graphics/Region;

    move-result-object v0

    .line 5173
    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mTmpRect:Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/android/server/wm/WindowState;->mWindowFrames:Lcom/android/server/wm/WindowFrames;

    iget-object v2, v2, Lcom/android/server/wm/WindowFrames;->mFrame:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 5174
    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mTmpRect:Landroid/graphics/Rect;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v2}, Landroid/graphics/Rect;->offsetTo(II)V

    .line 5175
    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mTapExcludeRegionHolder:Lcom/android/server/wm/TapExcludeRegionHolder;

    iget-object v2, p0, Lcom/android/server/wm/WindowState;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v1, v0, v2}, Lcom/android/server/wm/TapExcludeRegionHolder;->amendRegion(Landroid/graphics/Region;Landroid/graphics/Rect;)V

    .line 5178
    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mWindowFrames:Lcom/android/server/wm/WindowFrames;

    iget-object v1, v1, Lcom/android/server/wm/WindowFrames;->mFrame:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    iget-object v2, p0, Lcom/android/server/wm/WindowState;->mWindowFrames:Lcom/android/server/wm/WindowFrames;

    iget-object v2, v2, Lcom/android/server/wm/WindowFrames;->mFrame:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Region;->translate(II)V

    .line 5179
    sget-object v1, Landroid/graphics/Region$Op;->UNION:Landroid/graphics/Region$Op;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Region;->op(Landroid/graphics/Region;Landroid/graphics/Region$Op;)Z

    .line 5180
    invoke-virtual {v0}, Landroid/graphics/Region;->recycle()V

    .line 5181
    return-void
.end method

.method applyAdjustForImeIfNeeded()V
    .registers 3

    .line 2275
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getTask()Lcom/android/server/wm/Task;

    move-result-object v0

    .line 2276
    if-eqz v0, :cond_17

    iget-object v1, v0, Lcom/android/server/wm/Task;->mStack:Lcom/android/server/wm/TaskStack;

    if-eqz v1, :cond_17

    iget-object v1, v0, Lcom/android/server/wm/Task;->mStack:Lcom/android/server/wm/TaskStack;

    invoke-virtual {v1}, Lcom/android/server/wm/TaskStack;->isAdjustedForIme()Z

    move-result v1

    if-eqz v1, :cond_17

    .line 2277
    iget-object v1, v0, Lcom/android/server/wm/Task;->mStack:Lcom/android/server/wm/TaskStack;

    invoke-virtual {v1, v0}, Lcom/android/server/wm/TaskStack;->applyAdjustForImeIfNeeded(Lcom/android/server/wm/Task;)V

    .line 2279
    :cond_17
    return-void
.end method

.method public assignChildLayers(Landroid/view/SurfaceControl$Transaction;)V
    .registers 7

    .line 5121
    nop

    .line 5122
    const/4 v0, 0x2

    const/4 v1, 0x0

    :goto_3
    iget-object v2, p0, Lcom/android/server/wm/WindowState;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowList;->size()I

    move-result v2

    if-ge v1, v2, :cond_38

    .line 5123
    iget-object v2, p0, Lcom/android/server/wm/WindowState;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v2, v1}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/WindowState;

    .line 5129
    iget-object v3, v2, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v3, v3, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v4, 0x3e9

    if-ne v3, v4, :cond_20

    .line 5130
    const/4 v3, -0x2

    invoke-virtual {v2, p1, v3}, Lcom/android/server/wm/WindowState;->assignLayer(Landroid/view/SurfaceControl$Transaction;I)V

    goto :goto_30

    .line 5131
    :cond_20
    iget-object v3, v2, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v3, v3, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v4, 0x3ec

    if-ne v3, v4, :cond_2d

    .line 5132
    const/4 v3, -0x1

    invoke-virtual {v2, p1, v3}, Lcom/android/server/wm/WindowState;->assignLayer(Landroid/view/SurfaceControl$Transaction;I)V

    goto :goto_30

    .line 5134
    :cond_2d
    invoke-virtual {v2, p1, v0}, Lcom/android/server/wm/WindowState;->assignLayer(Landroid/view/SurfaceControl$Transaction;I)V

    .line 5136
    :goto_30
    invoke-virtual {v2, p1}, Lcom/android/server/wm/WindowState;->assignChildLayers(Landroid/view/SurfaceControl$Transaction;)V

    .line 5137
    add-int/lit8 v0, v0, 0x1

    .line 5122
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 5139
    :cond_38
    return-void
.end method

.method assignLayer(Landroid/view/SurfaceControl$Transaction;I)V
    .registers 4

    .line 5103
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->needsRelativeLayeringToIme()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 5104
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object p2

    invoke-virtual {p2, p1, p0}, Lcom/android/server/wm/DisplayContent;->assignRelativeLayerForImeTargetChild(Landroid/view/SurfaceControl$Transaction;Lcom/android/server/wm/WindowContainer;)V

    .line 5105
    return-void

    .line 5107
    :cond_e
    invoke-super {p0, p1, p2}, Lcom/android/server/wm/WindowContainer;->assignLayer(Landroid/view/SurfaceControl$Transaction;I)V

    .line 5108
    return-void
.end method

.method attach()V
    .registers 3

    .line 827
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mSession:Lcom/android/server/wm/Session;

    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget-object v1, v1, Landroid/view/WindowManager$LayoutParams;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/server/wm/Session;->windowAddedLocked(Ljava/lang/String;)V

    .line 828
    return-void
.end method

.method calculatePolicyCrop(Landroid/graphics/Rect;)V
    .registers 7

    .line 4562
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    .line 4564
    iget-boolean v1, v0, Lcom/android/server/wm/DisplayContent;->isDefaultDisplay:Z

    const/4 v2, 0x0

    if-nez v1, :cond_4a

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->supportsSystemDecorations()Z

    move-result v1

    if-nez v1, :cond_4a

    .line 4567
    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->getDisplayInfo()Landroid/view/DisplayInfo;

    move-result-object v0

    .line 4568
    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mWindowFrames:Lcom/android/server/wm/WindowFrames;

    iget-object v1, v1, Lcom/android/server/wm/WindowFrames;->mCompatFrame:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    iget-object v3, p0, Lcom/android/server/wm/WindowState;->mWindowFrames:Lcom/android/server/wm/WindowFrames;

    iget-object v3, v3, Lcom/android/server/wm/WindowFrames;->mCompatFrame:Landroid/graphics/Rect;

    .line 4569
    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v3

    .line 4568
    invoke-virtual {p1, v2, v2, v1, v3}, Landroid/graphics/Rect;->set(IIII)V

    .line 4570
    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mWindowFrames:Lcom/android/server/wm/WindowFrames;

    iget-object v1, v1, Lcom/android/server/wm/WindowFrames;->mCompatFrame:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    neg-int v1, v1

    iget-object v2, p0, Lcom/android/server/wm/WindowState;->mWindowFrames:Lcom/android/server/wm/WindowFrames;

    iget-object v2, v2, Lcom/android/server/wm/WindowFrames;->mCompatFrame:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    neg-int v2, v2

    iget v3, v0, Landroid/view/DisplayInfo;->logicalWidth:I

    iget-object v4, p0, Lcom/android/server/wm/WindowState;->mWindowFrames:Lcom/android/server/wm/WindowFrames;

    iget-object v4, v4, Lcom/android/server/wm/WindowFrames;->mCompatFrame:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->left:I

    sub-int/2addr v3, v4

    iget v0, v0, Landroid/view/DisplayInfo;->logicalHeight:I

    iget-object v4, p0, Lcom/android/server/wm/WindowState;->mWindowFrames:Lcom/android/server/wm/WindowFrames;

    iget-object v4, v4, Lcom/android/server/wm/WindowFrames;->mCompatFrame:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    sub-int/2addr v0, v4

    invoke-virtual {p1, v1, v2, v3, v0}, Landroid/graphics/Rect;->intersect(IIII)Z

    .line 4573
    goto :goto_67

    :cond_4a
    invoke-direct {p0}, Lcom/android/server/wm/WindowState;->skipDecorCrop()Z

    move-result v0

    if-eqz v0, :cond_64

    .line 4575
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mWindowFrames:Lcom/android/server/wm/WindowFrames;

    iget-object v0, v0, Lcom/android/server/wm/WindowFrames;->mCompatFrame:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mWindowFrames:Lcom/android/server/wm/WindowFrames;

    iget-object v1, v1, Lcom/android/server/wm/WindowFrames;->mCompatFrame:Landroid/graphics/Rect;

    .line 4576
    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    .line 4575
    invoke-virtual {p1, v2, v2, v0, v1}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_67

    .line 4579
    :cond_64
    invoke-direct {p0, p1}, Lcom/android/server/wm/WindowState;->calculateSystemDecorRect(Landroid/graphics/Rect;)V

    .line 4581
    :goto_67
    return-void
.end method

.method public canAcquireSleepToken()Z
    .registers 2

    .line 882
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mSession:Lcom/android/server/wm/Session;

    iget-boolean v0, v0, Lcom/android/server/wm/Session;->mCanAcquireSleepToken:Z

    return v0
.end method

.method public canAddInternalSystemWindow()Z
    .registers 2

    .line 877
    iget-boolean v0, p0, Lcom/android/server/wm/WindowState;->mOwnerCanAddInternalSystemWindow:Z

    return v0
.end method

.method public canAffectSystemUiFlags()Z
    .registers 5

    .line 1622
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->alpha:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_d

    move v0, v1

    goto :goto_e

    :cond_d
    move v0, v2

    .line 1623
    :goto_e
    if-eqz v0, :cond_11

    .line 1624
    return v2

    .line 1626
    :cond_11
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    if-nez v0, :cond_2e

    .line 1627
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowStateAnimator;->getShown()Z

    move-result v0

    .line 1628
    iget-boolean v3, p0, Lcom/android/server/wm/WindowState;->mAnimatingExit:Z

    if-nez v3, :cond_26

    iget-boolean v3, p0, Lcom/android/server/wm/WindowState;->mDestroying:Z

    if-eqz v3, :cond_24

    goto :goto_26

    :cond_24
    move v3, v2

    goto :goto_27

    :cond_26
    :goto_26
    move v3, v1

    .line 1629
    :goto_27
    if-eqz v0, :cond_2c

    if-nez v3, :cond_2c

    goto :goto_2d

    :cond_2c
    move v1, v2

    :goto_2d
    return v1

    .line 1631
    :cond_2e
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getTask()Lcom/android/server/wm/Task;

    move-result-object v0

    .line 1632
    if-eqz v0, :cond_3c

    invoke-virtual {v0}, Lcom/android/server/wm/Task;->canAffectSystemUiFlags()Z

    move-result v0

    if-eqz v0, :cond_3c

    move v0, v1

    goto :goto_3d

    :cond_3c
    move v0, v2

    .line 1633
    :goto_3d
    if-eqz v0, :cond_48

    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    invoke-virtual {v0}, Lcom/android/server/wm/AppWindowToken;->isHidden()Z

    move-result v0

    if-nez v0, :cond_48

    goto :goto_49

    :cond_48
    move v1, v2

    :goto_49
    return v1
.end method

.method canBeImeTarget()Z
    .registers 5

    .line 2124
    iget-boolean v0, p0, Lcom/android/server/wm/WindowState;->mIsImWindow:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_6

    .line 2127
    return v1

    .line 2130
    :cond_6
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    if-eqz v0, :cond_13

    invoke-virtual {v0}, Lcom/android/server/wm/AppWindowToken;->windowsAreFocusable()Z

    move-result v0

    if-eqz v0, :cond_11

    goto :goto_13

    :cond_11
    move v0, v1

    goto :goto_14

    :cond_13
    :goto_13
    const/4 v0, 0x1

    .line 2131
    :goto_14
    if-nez v0, :cond_17

    .line 2133
    return v1

    .line 2136
    :cond_17
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    const v2, 0x20008

    and-int/2addr v0, v2

    .line 2137
    iget-object v3, p0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v3, v3, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 2141
    if-eqz v0, :cond_2b

    if-eq v0, v2, :cond_2b

    const/4 v0, 0x3

    if-eq v3, v0, :cond_2b

    .line 2143
    return v1

    .line 2161
    :cond_2b
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->isVisibleOrAdding()Z

    move-result v0

    return v0
.end method

.method public canReceiveKeys()Z
    .registers 2

    .line 2600
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->isVisibleOrAdding()Z

    move-result v0

    if-eqz v0, :cond_28

    iget v0, p0, Lcom/android/server/wm/WindowState;->mViewVisibility:I

    if-nez v0, :cond_28

    iget-boolean v0, p0, Lcom/android/server/wm/WindowState;->mRemoveOnExit:Z

    if-nez v0, :cond_28

    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit8 v0, v0, 0x8

    if-nez v0, :cond_28

    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    if-eqz v0, :cond_20

    .line 2603
    invoke-virtual {v0}, Lcom/android/server/wm/AppWindowToken;->windowsAreFocusable()Z

    move-result v0

    if-eqz v0, :cond_28

    .line 2604
    :cond_20
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->cantReceiveTouchInput()Z

    move-result v0

    if-nez v0, :cond_28

    const/4 v0, 0x1

    goto :goto_29

    :cond_28
    const/4 v0, 0x0

    .line 2600
    :goto_29
    return v0
.end method

.method public canShowWhenLocked()Z
    .registers 6

    .line 2609
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_10

    iget-object v0, v0, Lcom/android/server/wm/AppWindowToken;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    .line 2610
    invoke-virtual {v0}, Lcom/android/server/wm/ActivityRecord;->canShowWhenLocked()Z

    move-result v0

    if-eqz v0, :cond_10

    move v0, v1

    goto :goto_11

    :cond_10
    move v0, v2

    .line 2611
    :goto_11
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v3

    iget v3, v3, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v4, 0x80000

    and-int/2addr v3, v4

    if-eqz v3, :cond_1e

    move v3, v1

    goto :goto_1f

    :cond_1e
    move v3, v2

    .line 2612
    :goto_1f
    if-nez v0, :cond_25

    if-eqz v3, :cond_24

    goto :goto_25

    :cond_24
    move v1, v2

    :cond_25
    :goto_25
    return v1
.end method

.method cantReceiveTouchInput()Z
    .registers 2

    .line 2617
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    if-eqz v0, :cond_20

    invoke-virtual {v0}, Lcom/android/server/wm/AppWindowToken;->getTask()Lcom/android/server/wm/Task;

    move-result-object v0

    if-eqz v0, :cond_20

    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    .line 2618
    invoke-virtual {v0}, Lcom/android/server/wm/AppWindowToken;->getTask()Lcom/android/server/wm/Task;

    move-result-object v0

    iget-object v0, v0, Lcom/android/server/wm/Task;->mStack:Lcom/android/server/wm/TaskStack;

    invoke-virtual {v0}, Lcom/android/server/wm/TaskStack;->shouldIgnoreInput()Z

    move-result v0

    if-nez v0, :cond_1e

    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    iget-boolean v0, v0, Lcom/android/server/wm/AppWindowToken;->hiddenRequested:Z

    if-eqz v0, :cond_20

    :cond_1e
    const/4 v0, 0x1

    goto :goto_21

    :cond_20
    const/4 v0, 0x0

    .line 2617
    :goto_21
    return v0
.end method

.method checkPolicyVisibilityChange()V
    .registers 4

    .line 2381
    invoke-direct {p0}, Lcom/android/server/wm/WindowState;->isLegacyPolicyVisibility()Z

    move-result v0

    iget-boolean v1, p0, Lcom/android/server/wm/WindowState;->mLegacyPolicyVisibilityAfterAnim:Z

    if-eq v0, v1, :cond_31

    .line 2386
    const/4 v0, 0x1

    if-eqz v1, :cond_f

    .line 2387
    invoke-virtual {p0, v0}, Lcom/android/server/wm/WindowState;->setPolicyVisibilityFlag(I)V

    goto :goto_12

    .line 2389
    :cond_f
    invoke-virtual {p0, v0}, Lcom/android/server/wm/WindowState;->clearPolicyVisibilityFlag(I)V

    .line 2391
    :goto_12
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->isVisibleByPolicy()Z

    move-result v1

    if-nez v1, :cond_31

    .line 2392
    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    const-string v2, "checkPolicyVisibilityChange"

    invoke-virtual {v1, v2}, Lcom/android/server/wm/WindowStateAnimator;->hide(Ljava/lang/String;)V

    .line 2393
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->isFocused()Z

    move-result v1

    if-eqz v1, :cond_29

    .line 2396
    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iput-boolean v0, v1, Lcom/android/server/wm/WindowManagerService;->mFocusMayChange:Z

    .line 2398
    :cond_29
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->setDisplayLayoutNeeded()V

    .line 2402
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mWmService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerService;->enableScreenIfNeededLocked()V

    .line 2405
    :cond_31
    return-void
.end method

.method clearAnimatingFlags()Z
    .registers 5

    .line 4409
    nop

    .line 4417
    iget-boolean v0, p0, Lcom/android/server/wm/WindowState;->mWillReplaceWindow:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_23

    iget-boolean v0, p0, Lcom/android/server/wm/WindowState;->mRemoveOnExit:Z

    if-nez v0, :cond_23

    .line 4425
    iget-boolean v0, p0, Lcom/android/server/wm/WindowState;->mAnimatingExit:Z

    if-eqz v0, :cond_13

    .line 4426
    iput-boolean v2, p0, Lcom/android/server/wm/WindowState;->mAnimatingExit:Z

    .line 4427
    move v0, v1

    goto :goto_14

    .line 4425
    :cond_13
    move v0, v2

    .line 4429
    :goto_14
    iget-boolean v3, p0, Lcom/android/server/wm/WindowState;->mDestroying:Z

    if-eqz v3, :cond_24

    .line 4430
    iput-boolean v2, p0, Lcom/android/server/wm/WindowState;->mDestroying:Z

    .line 4431
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mDestroySurface:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 4432
    move v0, v1

    goto :goto_24

    .line 4436
    :cond_23
    move v0, v2

    :cond_24
    :goto_24
    iget-object v2, p0, Lcom/android/server/wm/WindowState;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowList;->size()I

    move-result v2

    sub-int/2addr v2, v1

    :goto_2b
    if-ltz v2, :cond_3d

    .line 4437
    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v1, v2}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/WindowState;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowState;->clearAnimatingFlags()Z

    move-result v1

    or-int/2addr v0, v1

    .line 4436
    add-int/lit8 v2, v2, -0x1

    goto :goto_2b

    .line 4440
    :cond_3d
    return v0
.end method

.method clearPolicyVisibilityFlag(I)V
    .registers 3

    .line 1499
    iget v0, p0, Lcom/android/server/wm/WindowState;->mPolicyVisibility:I

    not-int p1, p1

    and-int/2addr p1, v0

    iput p1, p0, Lcom/android/server/wm/WindowState;->mPolicyVisibility:I

    .line 1500
    iget-object p1, p0, Lcom/android/server/wm/WindowState;->mWmService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {p1}, Lcom/android/server/wm/WindowManagerService;->scheduleAnimationLocked()V

    .line 1501
    return-void
.end method

.method clearWillReplaceWindow()V
    .registers 3

    .line 3938
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/wm/WindowState;->mWillReplaceWindow:Z

    .line 3939
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/wm/WindowState;->mReplacementWindow:Lcom/android/server/wm/WindowState;

    .line 3940
    iput-boolean v0, p0, Lcom/android/server/wm/WindowState;->mAnimateReplacingWindow:Z

    .line 3942
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_10
    if-ltz v0, :cond_20

    .line 3943
    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v1, v0}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/WindowState;

    .line 3944
    invoke-virtual {v1}, Lcom/android/server/wm/WindowState;->clearWillReplaceWindow()V

    .line 3942
    add-int/lit8 v0, v0, -0x1

    goto :goto_10

    .line 3946
    :cond_20
    return-void
.end method

.method public computeFrameLw()V
    .registers 16

    .line 914
    iget-boolean v0, p0, Lcom/android/server/wm/WindowState;->mWillReplaceWindow:Z

    if-eqz v0, :cond_d

    iget-boolean v0, p0, Lcom/android/server/wm/WindowState;->mAnimatingExit:Z

    if-nez v0, :cond_c

    iget-boolean v0, p0, Lcom/android/server/wm/WindowState;->mReplacingRemoveRequested:Z

    if-nez v0, :cond_d

    .line 919
    :cond_c
    return-void

    .line 921
    :cond_d
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/wm/WindowState;->mHaveFrame:Z

    .line 923
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getTask()Lcom/android/server/wm/Task;

    move-result-object v1

    .line 924
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->inMultiWindowMode()Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_23

    invoke-direct {p0}, Lcom/android/server/wm/WindowState;->matchesDisplayBounds()Z

    move-result v2

    if-eqz v2, :cond_23

    move v2, v0

    goto :goto_24

    :cond_23
    move v2, v3

    .line 925
    :goto_24
    if-eqz v1, :cond_2e

    invoke-virtual {v1}, Lcom/android/server/wm/Task;->isFloating()Z

    move-result v1

    if-eqz v1, :cond_2e

    move v1, v0

    goto :goto_2f

    :cond_2e
    move v1, v3

    .line 926
    :goto_2f
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v4

    .line 928
    iget-object v5, p0, Lcom/android/server/wm/WindowState;->mInsetFrame:Landroid/graphics/Rect;

    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getBounds()Landroid/graphics/Rect;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 940
    iget-object v5, p0, Lcom/android/server/wm/WindowState;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v5, v5, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v5}, Lcom/android/server/wm/RootWindowContainer;->getCurrentInputMethodWindow()Lcom/android/server/wm/WindowState;

    move-result-object v5

    .line 941
    if-eqz v5, :cond_54

    .line 942
    invoke-virtual {v5}, Lcom/android/server/wm/WindowState;->isVisibleNow()Z

    move-result v5

    if-eqz v5, :cond_54

    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->isInputMethodTarget()Z

    move-result v5

    if-eqz v5, :cond_54

    move v5, v0

    goto :goto_55

    :cond_54
    move v5, v3

    .line 943
    :goto_55
    if-nez v2, :cond_19e

    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->layoutInParentFrame()Z

    move-result v6

    if-eqz v6, :cond_5f

    goto/16 :goto_19e

    .line 951
    :cond_5f
    iget-object v6, p0, Lcom/android/server/wm/WindowState;->mWindowFrames:Lcom/android/server/wm/WindowFrames;

    iget-object v6, v6, Lcom/android/server/wm/WindowFrames;->mContainingFrame:Landroid/graphics/Rect;

    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getDisplayedBounds()Landroid/graphics/Rect;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 952
    iget-object v6, p0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    if-eqz v6, :cond_a2

    iget-object v6, v6, Lcom/android/server/wm/AppWindowToken;->mFrozenBounds:Ljava/util/ArrayDeque;

    invoke-virtual {v6}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_a2

    .line 956
    iget-object v6, p0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    iget-object v6, v6, Lcom/android/server/wm/AppWindowToken;->mFrozenBounds:Ljava/util/ArrayDeque;

    invoke-virtual {v6}, Ljava/util/ArrayDeque;->peek()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/graphics/Rect;

    .line 957
    iget-object v7, p0, Lcom/android/server/wm/WindowState;->mWindowFrames:Lcom/android/server/wm/WindowFrames;

    iget-object v7, v7, Lcom/android/server/wm/WindowFrames;->mContainingFrame:Landroid/graphics/Rect;

    iget-object v8, p0, Lcom/android/server/wm/WindowState;->mWindowFrames:Lcom/android/server/wm/WindowFrames;

    iget-object v8, v8, Lcom/android/server/wm/WindowFrames;->mContainingFrame:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->left:I

    .line 958
    invoke-virtual {v6}, Landroid/graphics/Rect;->width()I

    move-result v9

    add-int/2addr v8, v9

    iput v8, v7, Landroid/graphics/Rect;->right:I

    .line 959
    iget-object v7, p0, Lcom/android/server/wm/WindowState;->mWindowFrames:Lcom/android/server/wm/WindowFrames;

    iget-object v7, v7, Lcom/android/server/wm/WindowFrames;->mContainingFrame:Landroid/graphics/Rect;

    iget-object v8, p0, Lcom/android/server/wm/WindowState;->mWindowFrames:Lcom/android/server/wm/WindowFrames;

    iget-object v8, v8, Lcom/android/server/wm/WindowFrames;->mContainingFrame:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->top:I

    .line 960
    invoke-virtual {v6}, Landroid/graphics/Rect;->height()I

    move-result v6

    add-int/2addr v8, v6

    iput v8, v7, Landroid/graphics/Rect;->bottom:I

    .line 963
    :cond_a2
    if-eqz v5, :cond_f9

    .line 964
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->inFreeformWindowingMode()Z

    move-result v6

    if-eqz v6, :cond_d8

    .line 967
    iget-object v6, p0, Lcom/android/server/wm/WindowState;->mWindowFrames:Lcom/android/server/wm/WindowFrames;

    iget-object v6, v6, Lcom/android/server/wm/WindowFrames;->mContainingFrame:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->bottom:I

    iget-object v7, p0, Lcom/android/server/wm/WindowState;->mWindowFrames:Lcom/android/server/wm/WindowFrames;

    iget-object v7, v7, Lcom/android/server/wm/WindowFrames;->mVisibleFrame:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v6, v7

    .line 969
    if-lez v6, :cond_f9

    .line 970
    iget-object v7, p0, Lcom/android/server/wm/WindowState;->mWindowFrames:Lcom/android/server/wm/WindowFrames;

    iget-object v7, v7, Lcom/android/server/wm/WindowFrames;->mContainingFrame:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->top:I

    iget-object v8, p0, Lcom/android/server/wm/WindowState;->mWindowFrames:Lcom/android/server/wm/WindowFrames;

    iget-object v8, v8, Lcom/android/server/wm/WindowFrames;->mDisplayFrame:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->top:I

    sub-int/2addr v7, v8

    invoke-static {v7, v3}, Ljava/lang/Math;->max(II)I

    move-result v7

    .line 972
    invoke-static {v6, v7}, Ljava/lang/Math;->min(II)I

    move-result v6

    .line 973
    iget-object v7, p0, Lcom/android/server/wm/WindowState;->mWindowFrames:Lcom/android/server/wm/WindowFrames;

    iget-object v7, v7, Lcom/android/server/wm/WindowFrames;->mContainingFrame:Landroid/graphics/Rect;

    iget v8, v7, Landroid/graphics/Rect;->top:I

    sub-int/2addr v8, v6

    iput v8, v7, Landroid/graphics/Rect;->top:I

    goto :goto_f9

    .line 975
    :cond_d8
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->inPinnedWindowingMode()Z

    move-result v6

    if-nez v6, :cond_f9

    iget-object v6, p0, Lcom/android/server/wm/WindowState;->mWindowFrames:Lcom/android/server/wm/WindowFrames;

    iget-object v6, v6, Lcom/android/server/wm/WindowFrames;->mContainingFrame:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->bottom:I

    iget-object v7, p0, Lcom/android/server/wm/WindowState;->mWindowFrames:Lcom/android/server/wm/WindowFrames;

    iget-object v7, v7, Lcom/android/server/wm/WindowFrames;->mParentFrame:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->bottom:I

    if-le v6, v7, :cond_f9

    .line 980
    iget-object v6, p0, Lcom/android/server/wm/WindowState;->mWindowFrames:Lcom/android/server/wm/WindowFrames;

    iget-object v6, v6, Lcom/android/server/wm/WindowFrames;->mContainingFrame:Landroid/graphics/Rect;

    iget-object v7, p0, Lcom/android/server/wm/WindowState;->mWindowFrames:Lcom/android/server/wm/WindowFrames;

    iget-object v7, v7, Lcom/android/server/wm/WindowFrames;->mParentFrame:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->bottom:I

    iput v7, v6, Landroid/graphics/Rect;->bottom:I

    nop

    .line 984
    :cond_f9
    :goto_f9
    if-eqz v1, :cond_110

    .line 988
    iget-object v6, p0, Lcom/android/server/wm/WindowState;->mWindowFrames:Lcom/android/server/wm/WindowFrames;

    iget-object v6, v6, Lcom/android/server/wm/WindowFrames;->mContainingFrame:Landroid/graphics/Rect;

    invoke-virtual {v6}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_110

    .line 989
    iget-object v6, p0, Lcom/android/server/wm/WindowState;->mWindowFrames:Lcom/android/server/wm/WindowFrames;

    iget-object v6, v6, Lcom/android/server/wm/WindowFrames;->mContainingFrame:Landroid/graphics/Rect;

    iget-object v7, p0, Lcom/android/server/wm/WindowState;->mWindowFrames:Lcom/android/server/wm/WindowFrames;

    iget-object v7, v7, Lcom/android/server/wm/WindowFrames;->mContentFrame:Landroid/graphics/Rect;

    invoke-virtual {v6, v7}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 993
    :cond_110
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getStack()Lcom/android/server/wm/TaskStack;

    move-result-object v6

    .line 994
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->inPinnedWindowingMode()Z

    move-result v7

    if-eqz v7, :cond_136

    if-eqz v6, :cond_136

    .line 995
    invoke-virtual {v6}, Lcom/android/server/wm/TaskStack;->lastAnimatingBoundsWasToFullscreen()Z

    move-result v6

    if-eqz v6, :cond_136

    .line 999
    iget-object v6, p0, Lcom/android/server/wm/WindowState;->mInsetFrame:Landroid/graphics/Rect;

    iget-object v7, p0, Lcom/android/server/wm/WindowState;->mWindowFrames:Lcom/android/server/wm/WindowFrames;

    iget-object v7, v7, Lcom/android/server/wm/WindowFrames;->mParentFrame:Landroid/graphics/Rect;

    invoke-virtual {v6, v7}, Landroid/graphics/Rect;->intersectUnchecked(Landroid/graphics/Rect;)V

    .line 1000
    iget-object v6, p0, Lcom/android/server/wm/WindowState;->mWindowFrames:Lcom/android/server/wm/WindowFrames;

    iget-object v6, v6, Lcom/android/server/wm/WindowFrames;->mContainingFrame:Landroid/graphics/Rect;

    iget-object v7, p0, Lcom/android/server/wm/WindowState;->mWindowFrames:Lcom/android/server/wm/WindowFrames;

    iget-object v7, v7, Lcom/android/server/wm/WindowFrames;->mParentFrame:Landroid/graphics/Rect;

    invoke-virtual {v6, v7}, Landroid/graphics/Rect;->intersectUnchecked(Landroid/graphics/Rect;)V

    .line 1003
    :cond_136
    new-instance v6, Landroid/graphics/Rect;

    iget-object v7, p0, Lcom/android/server/wm/WindowState;->mWindowFrames:Lcom/android/server/wm/WindowFrames;

    iget-object v7, v7, Lcom/android/server/wm/WindowFrames;->mDisplayFrame:Landroid/graphics/Rect;

    invoke-direct {v6, v7}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 1004
    iget-object v7, p0, Lcom/android/server/wm/WindowState;->mWindowFrames:Lcom/android/server/wm/WindowFrames;

    iget-object v7, v7, Lcom/android/server/wm/WindowFrames;->mDisplayFrame:Landroid/graphics/Rect;

    iget-object v8, p0, Lcom/android/server/wm/WindowState;->mWindowFrames:Lcom/android/server/wm/WindowFrames;

    iget-object v8, v8, Lcom/android/server/wm/WindowFrames;->mContainingFrame:Landroid/graphics/Rect;

    invoke-virtual {v7, v8}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 1005
    iget-object v7, p0, Lcom/android/server/wm/WindowState;->mInsetFrame:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->left:I

    iget-object v8, p0, Lcom/android/server/wm/WindowState;->mWindowFrames:Lcom/android/server/wm/WindowFrames;

    iget-object v8, v8, Lcom/android/server/wm/WindowFrames;->mContainingFrame:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->left:I

    sub-int/2addr v7, v8

    .line 1006
    iget-object v8, p0, Lcom/android/server/wm/WindowState;->mInsetFrame:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->top:I

    iget-object v9, p0, Lcom/android/server/wm/WindowState;->mWindowFrames:Lcom/android/server/wm/WindowFrames;

    iget-object v9, v9, Lcom/android/server/wm/WindowFrames;->mContainingFrame:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->top:I

    sub-int/2addr v8, v9

    .line 1007
    iget-object v9, p0, Lcom/android/server/wm/WindowState;->mInsetFrame:Landroid/graphics/Rect;

    .line 1008
    iget-object v10, p0, Lcom/android/server/wm/WindowState;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v4}, Lcom/android/server/wm/DisplayContent;->getDisplayInfo()Landroid/view/DisplayInfo;

    move-result-object v11

    iget v11, v11, Landroid/view/DisplayInfo;->logicalWidth:I

    invoke-virtual {v4}, Lcom/android/server/wm/DisplayContent;->getDisplayInfo()Landroid/view/DisplayInfo;

    move-result-object v12

    iget v12, v12, Landroid/view/DisplayInfo;->logicalHeight:I

    invoke-virtual {v10, v3, v3, v11, v12}, Landroid/graphics/Rect;->set(IIII)V

    .line 1009
    iget-object v10, p0, Lcom/android/server/wm/WindowState;->mWindowFrames:Lcom/android/server/wm/WindowFrames;

    iget-object v10, v10, Lcom/android/server/wm/WindowFrames;->mDisplayFrame:Landroid/graphics/Rect;

    iget-object v11, p0, Lcom/android/server/wm/WindowState;->mTmpRect:Landroid/graphics/Rect;

    invoke-direct {p0, v10, v9, v6, v11}, Lcom/android/server/wm/WindowState;->subtractInsets(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 1011
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->layoutInParentFrame()Z

    move-result v10

    if-nez v10, :cond_19a

    .line 1012
    iget-object v10, p0, Lcom/android/server/wm/WindowState;->mWindowFrames:Lcom/android/server/wm/WindowFrames;

    iget-object v10, v10, Lcom/android/server/wm/WindowFrames;->mContainingFrame:Landroid/graphics/Rect;

    iget-object v11, p0, Lcom/android/server/wm/WindowState;->mWindowFrames:Lcom/android/server/wm/WindowFrames;

    iget-object v11, v11, Lcom/android/server/wm/WindowFrames;->mParentFrame:Landroid/graphics/Rect;

    iget-object v12, p0, Lcom/android/server/wm/WindowState;->mTmpRect:Landroid/graphics/Rect;

    invoke-direct {p0, v10, v9, v11, v12}, Lcom/android/server/wm/WindowState;->subtractInsets(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 1014
    iget-object v10, p0, Lcom/android/server/wm/WindowState;->mInsetFrame:Landroid/graphics/Rect;

    iget-object v11, p0, Lcom/android/server/wm/WindowState;->mWindowFrames:Lcom/android/server/wm/WindowFrames;

    iget-object v11, v11, Lcom/android/server/wm/WindowFrames;->mParentFrame:Landroid/graphics/Rect;

    iget-object v12, p0, Lcom/android/server/wm/WindowState;->mTmpRect:Landroid/graphics/Rect;

    invoke-direct {p0, v10, v9, v11, v12}, Lcom/android/server/wm/WindowState;->subtractInsets(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 1017
    :cond_19a
    invoke-virtual {v6, v9}, Landroid/graphics/Rect;->intersect(Landroid/graphics/Rect;)Z

    goto :goto_1b4

    .line 945
    :cond_19e
    :goto_19e
    iget-object v6, p0, Lcom/android/server/wm/WindowState;->mWindowFrames:Lcom/android/server/wm/WindowFrames;

    iget-object v6, v6, Lcom/android/server/wm/WindowFrames;->mContainingFrame:Landroid/graphics/Rect;

    iget-object v7, p0, Lcom/android/server/wm/WindowState;->mWindowFrames:Lcom/android/server/wm/WindowFrames;

    iget-object v7, v7, Lcom/android/server/wm/WindowFrames;->mParentFrame:Landroid/graphics/Rect;

    invoke-virtual {v6, v7}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 946
    iget-object v6, p0, Lcom/android/server/wm/WindowState;->mWindowFrames:Lcom/android/server/wm/WindowFrames;

    iget-object v6, v6, Lcom/android/server/wm/WindowFrames;->mDisplayFrame:Landroid/graphics/Rect;

    .line 947
    iget-object v7, p0, Lcom/android/server/wm/WindowState;->mWindowFrames:Lcom/android/server/wm/WindowFrames;

    iget-object v9, v7, Lcom/android/server/wm/WindowFrames;->mParentFrame:Landroid/graphics/Rect;

    .line 948
    nop

    .line 949
    move v7, v3

    move v8, v7

    .line 1020
    :goto_1b4
    iget-object v10, p0, Lcom/android/server/wm/WindowState;->mWindowFrames:Lcom/android/server/wm/WindowFrames;

    iget-object v10, v10, Lcom/android/server/wm/WindowFrames;->mContainingFrame:Landroid/graphics/Rect;

    invoke-virtual {v10}, Landroid/graphics/Rect;->width()I

    .line 1021
    iget-object v10, p0, Lcom/android/server/wm/WindowState;->mWindowFrames:Lcom/android/server/wm/WindowFrames;

    iget-object v10, v10, Lcom/android/server/wm/WindowFrames;->mContainingFrame:Landroid/graphics/Rect;

    invoke-virtual {v10}, Landroid/graphics/Rect;->height()I

    .line 1023
    iget v10, p0, Lcom/android/server/wm/WindowState;->mRequestedWidth:I

    iget v11, p0, Lcom/android/server/wm/WindowState;->mLastRequestedWidth:I

    if-ne v10, v11, :cond_1ce

    iget v10, p0, Lcom/android/server/wm/WindowState;->mRequestedHeight:I

    iget v11, p0, Lcom/android/server/wm/WindowState;->mLastRequestedHeight:I

    if-eq v10, v11, :cond_1db

    .line 1024
    :cond_1ce
    iget v10, p0, Lcom/android/server/wm/WindowState;->mRequestedWidth:I

    iput v10, p0, Lcom/android/server/wm/WindowState;->mLastRequestedWidth:I

    .line 1025
    iget v10, p0, Lcom/android/server/wm/WindowState;->mRequestedHeight:I

    iput v10, p0, Lcom/android/server/wm/WindowState;->mLastRequestedHeight:I

    .line 1026
    iget-object v10, p0, Lcom/android/server/wm/WindowState;->mWindowFrames:Lcom/android/server/wm/WindowFrames;

    invoke-virtual {v10, v0}, Lcom/android/server/wm/WindowFrames;->setContentChanged(Z)V

    .line 1029
    :cond_1db
    iget-object v10, p0, Lcom/android/server/wm/WindowState;->mWindowFrames:Lcom/android/server/wm/WindowFrames;

    iget-object v10, v10, Lcom/android/server/wm/WindowFrames;->mFrame:Landroid/graphics/Rect;

    invoke-virtual {v10}, Landroid/graphics/Rect;->width()I

    move-result v10

    .line 1030
    iget-object v11, p0, Lcom/android/server/wm/WindowState;->mWindowFrames:Lcom/android/server/wm/WindowFrames;

    iget-object v11, v11, Lcom/android/server/wm/WindowFrames;->mFrame:Landroid/graphics/Rect;

    invoke-virtual {v11}, Landroid/graphics/Rect;->height()I

    move-result v11

    .line 1032
    invoke-direct {p0, v9, v6}, Lcom/android/server/wm/WindowState;->applyGravityAndUpdateFrame(Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 1035
    iget-object v6, p0, Lcom/android/server/wm/WindowState;->mWindowFrames:Lcom/android/server/wm/WindowFrames;

    invoke-virtual {v6}, Lcom/android/server/wm/WindowFrames;->calculateOutsets()V

    .line 1039
    const/16 v6, 0x7f2

    if-eqz v1, :cond_256

    iget-object v12, p0, Lcom/android/server/wm/WindowState;->mWindowFrames:Lcom/android/server/wm/WindowFrames;

    iget-object v12, v12, Lcom/android/server/wm/WindowFrames;->mFrame:Landroid/graphics/Rect;

    invoke-virtual {v12}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v12

    if-nez v12, :cond_256

    .line 1040
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mWindowFrames:Lcom/android/server/wm/WindowFrames;

    iget-object v0, v0, Lcom/android/server/wm/WindowFrames;->mVisibleFrame:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    .line 1041
    iget-object v4, p0, Lcom/android/server/wm/WindowState;->mWindowFrames:Lcom/android/server/wm/WindowFrames;

    iget-object v4, v4, Lcom/android/server/wm/WindowFrames;->mContentFrame:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    .line 1042
    iget-object v12, p0, Lcom/android/server/wm/WindowState;->mWindowFrames:Lcom/android/server/wm/WindowFrames;

    iget-object v12, v12, Lcom/android/server/wm/WindowFrames;->mContentFrame:Landroid/graphics/Rect;

    iget-object v13, p0, Lcom/android/server/wm/WindowState;->mWindowFrames:Lcom/android/server/wm/WindowFrames;

    iget-object v13, v13, Lcom/android/server/wm/WindowFrames;->mFrame:Landroid/graphics/Rect;

    invoke-virtual {v12, v13}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 1043
    iget-object v12, p0, Lcom/android/server/wm/WindowState;->mWindowFrames:Lcom/android/server/wm/WindowFrames;

    iget-object v12, v12, Lcom/android/server/wm/WindowFrames;->mVisibleFrame:Landroid/graphics/Rect;

    iget-object v13, p0, Lcom/android/server/wm/WindowState;->mWindowFrames:Lcom/android/server/wm/WindowFrames;

    iget-object v13, v13, Lcom/android/server/wm/WindowFrames;->mContentFrame:Landroid/graphics/Rect;

    invoke-virtual {v12, v13}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 1044
    iget-object v12, p0, Lcom/android/server/wm/WindowState;->mWindowFrames:Lcom/android/server/wm/WindowFrames;

    iget-object v12, v12, Lcom/android/server/wm/WindowFrames;->mStableFrame:Landroid/graphics/Rect;

    iget-object v13, p0, Lcom/android/server/wm/WindowState;->mWindowFrames:Lcom/android/server/wm/WindowFrames;

    iget-object v13, v13, Lcom/android/server/wm/WindowFrames;->mContentFrame:Landroid/graphics/Rect;

    invoke-virtual {v12, v13}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 1045
    if-eqz v5, :cond_254

    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->inFreeformWindowingMode()Z

    move-result v5

    if-eqz v5, :cond_254

    .line 1048
    add-int/2addr v4, v8

    iget-object v5, p0, Lcom/android/server/wm/WindowState;->mWindowFrames:Lcom/android/server/wm/WindowFrames;

    iget-object v5, v5, Lcom/android/server/wm/WindowFrames;->mContentFrame:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    if-ge v4, v5, :cond_245

    .line 1049
    iget-object v5, p0, Lcom/android/server/wm/WindowState;->mWindowFrames:Lcom/android/server/wm/WindowFrames;

    iget-object v5, v5, Lcom/android/server/wm/WindowFrames;->mContentFrame:Landroid/graphics/Rect;

    iput v4, v5, Landroid/graphics/Rect;->bottom:I

    .line 1051
    :cond_245
    add-int/2addr v0, v8

    iget-object v4, p0, Lcom/android/server/wm/WindowState;->mWindowFrames:Lcom/android/server/wm/WindowFrames;

    iget-object v4, v4, Lcom/android/server/wm/WindowFrames;->mVisibleFrame:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    if-ge v0, v4, :cond_254

    .line 1052
    iget-object v4, p0, Lcom/android/server/wm/WindowState;->mWindowFrames:Lcom/android/server/wm/WindowFrames;

    iget-object v4, v4, Lcom/android/server/wm/WindowFrames;->mVisibleFrame:Landroid/graphics/Rect;

    iput v0, v4, Landroid/graphics/Rect;->bottom:I

    .line 1055
    :cond_254
    goto/16 :goto_359

    :cond_256
    iget-object v5, p0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v5, v5, Landroid/view/WindowManager$LayoutParams;->type:I

    if-ne v5, v6, :cond_284

    .line 1056
    invoke-virtual {v4}, Lcom/android/server/wm/DisplayContent;->getDockedDividerController()Lcom/android/server/wm/DockedStackDividerController;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/wm/WindowState;->mWindowFrames:Lcom/android/server/wm/WindowFrames;

    iget-object v5, v5, Lcom/android/server/wm/WindowFrames;->mFrame:Landroid/graphics/Rect;

    invoke-virtual {v4, v5}, Lcom/android/server/wm/DockedStackDividerController;->positionDockedStackedDivider(Landroid/graphics/Rect;)V

    .line 1057
    iget-object v4, p0, Lcom/android/server/wm/WindowState;->mWindowFrames:Lcom/android/server/wm/WindowFrames;

    iget-object v4, v4, Lcom/android/server/wm/WindowFrames;->mContentFrame:Landroid/graphics/Rect;

    iget-object v5, p0, Lcom/android/server/wm/WindowState;->mWindowFrames:Lcom/android/server/wm/WindowFrames;

    iget-object v5, v5, Lcom/android/server/wm/WindowFrames;->mFrame:Landroid/graphics/Rect;

    invoke-virtual {v4, v5}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 1058
    iget-object v4, p0, Lcom/android/server/wm/WindowState;->mWindowFrames:Lcom/android/server/wm/WindowFrames;

    iget-object v4, v4, Lcom/android/server/wm/WindowFrames;->mFrame:Landroid/graphics/Rect;

    iget-object v5, p0, Lcom/android/server/wm/WindowState;->mWindowFrames:Lcom/android/server/wm/WindowFrames;

    iget-object v5, v5, Lcom/android/server/wm/WindowFrames;->mLastFrame:Landroid/graphics/Rect;

    invoke-virtual {v4, v5}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_359

    .line 1059
    iput-boolean v0, p0, Lcom/android/server/wm/WindowState;->mMovedByResize:Z

    goto/16 :goto_359

    .line 1062
    :cond_284
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mWindowFrames:Lcom/android/server/wm/WindowFrames;

    iget-object v0, v0, Lcom/android/server/wm/WindowFrames;->mContentFrame:Landroid/graphics/Rect;

    iget-object v4, p0, Lcom/android/server/wm/WindowState;->mWindowFrames:Lcom/android/server/wm/WindowFrames;

    iget-object v4, v4, Lcom/android/server/wm/WindowFrames;->mContentFrame:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->left:I

    iget-object v5, p0, Lcom/android/server/wm/WindowState;->mWindowFrames:Lcom/android/server/wm/WindowFrames;

    iget-object v5, v5, Lcom/android/server/wm/WindowFrames;->mFrame:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->left:I

    .line 1063
    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v4

    iget-object v5, p0, Lcom/android/server/wm/WindowState;->mWindowFrames:Lcom/android/server/wm/WindowFrames;

    iget-object v5, v5, Lcom/android/server/wm/WindowFrames;->mContentFrame:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->top:I

    iget-object v12, p0, Lcom/android/server/wm/WindowState;->mWindowFrames:Lcom/android/server/wm/WindowFrames;

    iget-object v12, v12, Lcom/android/server/wm/WindowFrames;->mFrame:Landroid/graphics/Rect;

    iget v12, v12, Landroid/graphics/Rect;->top:I

    .line 1064
    invoke-static {v5, v12}, Ljava/lang/Math;->max(II)I

    move-result v5

    iget-object v12, p0, Lcom/android/server/wm/WindowState;->mWindowFrames:Lcom/android/server/wm/WindowFrames;

    iget-object v12, v12, Lcom/android/server/wm/WindowFrames;->mContentFrame:Landroid/graphics/Rect;

    iget v12, v12, Landroid/graphics/Rect;->right:I

    iget-object v13, p0, Lcom/android/server/wm/WindowState;->mWindowFrames:Lcom/android/server/wm/WindowFrames;

    iget-object v13, v13, Lcom/android/server/wm/WindowFrames;->mFrame:Landroid/graphics/Rect;

    iget v13, v13, Landroid/graphics/Rect;->right:I

    .line 1065
    invoke-static {v12, v13}, Ljava/lang/Math;->min(II)I

    move-result v12

    iget-object v13, p0, Lcom/android/server/wm/WindowState;->mWindowFrames:Lcom/android/server/wm/WindowFrames;

    iget-object v13, v13, Lcom/android/server/wm/WindowFrames;->mContentFrame:Landroid/graphics/Rect;

    iget v13, v13, Landroid/graphics/Rect;->bottom:I

    iget-object v14, p0, Lcom/android/server/wm/WindowState;->mWindowFrames:Lcom/android/server/wm/WindowFrames;

    iget-object v14, v14, Lcom/android/server/wm/WindowFrames;->mFrame:Landroid/graphics/Rect;

    iget v14, v14, Landroid/graphics/Rect;->bottom:I

    .line 1066
    invoke-static {v13, v14}, Ljava/lang/Math;->min(II)I

    move-result v13

    .line 1062
    invoke-virtual {v0, v4, v5, v12, v13}, Landroid/graphics/Rect;->set(IIII)V

    .line 1068
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mWindowFrames:Lcom/android/server/wm/WindowFrames;

    iget-object v0, v0, Lcom/android/server/wm/WindowFrames;->mVisibleFrame:Landroid/graphics/Rect;

    iget-object v4, p0, Lcom/android/server/wm/WindowState;->mWindowFrames:Lcom/android/server/wm/WindowFrames;

    iget-object v4, v4, Lcom/android/server/wm/WindowFrames;->mVisibleFrame:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->left:I

    iget-object v5, p0, Lcom/android/server/wm/WindowState;->mWindowFrames:Lcom/android/server/wm/WindowFrames;

    iget-object v5, v5, Lcom/android/server/wm/WindowFrames;->mFrame:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->left:I

    .line 1069
    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v4

    iget-object v5, p0, Lcom/android/server/wm/WindowState;->mWindowFrames:Lcom/android/server/wm/WindowFrames;

    iget-object v5, v5, Lcom/android/server/wm/WindowFrames;->mVisibleFrame:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->top:I

    iget-object v12, p0, Lcom/android/server/wm/WindowState;->mWindowFrames:Lcom/android/server/wm/WindowFrames;

    iget-object v12, v12, Lcom/android/server/wm/WindowFrames;->mFrame:Landroid/graphics/Rect;

    iget v12, v12, Landroid/graphics/Rect;->top:I

    .line 1070
    invoke-static {v5, v12}, Ljava/lang/Math;->max(II)I

    move-result v5

    iget-object v12, p0, Lcom/android/server/wm/WindowState;->mWindowFrames:Lcom/android/server/wm/WindowFrames;

    iget-object v12, v12, Lcom/android/server/wm/WindowFrames;->mVisibleFrame:Landroid/graphics/Rect;

    iget v12, v12, Landroid/graphics/Rect;->right:I

    iget-object v13, p0, Lcom/android/server/wm/WindowState;->mWindowFrames:Lcom/android/server/wm/WindowFrames;

    iget-object v13, v13, Lcom/android/server/wm/WindowFrames;->mFrame:Landroid/graphics/Rect;

    iget v13, v13, Landroid/graphics/Rect;->right:I

    .line 1071
    invoke-static {v12, v13}, Ljava/lang/Math;->min(II)I

    move-result v12

    iget-object v13, p0, Lcom/android/server/wm/WindowState;->mWindowFrames:Lcom/android/server/wm/WindowFrames;

    iget-object v13, v13, Lcom/android/server/wm/WindowFrames;->mVisibleFrame:Landroid/graphics/Rect;

    iget v13, v13, Landroid/graphics/Rect;->bottom:I

    iget-object v14, p0, Lcom/android/server/wm/WindowState;->mWindowFrames:Lcom/android/server/wm/WindowFrames;

    iget-object v14, v14, Lcom/android/server/wm/WindowFrames;->mFrame:Landroid/graphics/Rect;

    iget v14, v14, Landroid/graphics/Rect;->bottom:I

    .line 1072
    invoke-static {v13, v14}, Ljava/lang/Math;->min(II)I

    move-result v13

    .line 1068
    invoke-virtual {v0, v4, v5, v12, v13}, Landroid/graphics/Rect;->set(IIII)V

    .line 1074
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mWindowFrames:Lcom/android/server/wm/WindowFrames;

    iget-object v0, v0, Lcom/android/server/wm/WindowFrames;->mStableFrame:Landroid/graphics/Rect;

    iget-object v4, p0, Lcom/android/server/wm/WindowState;->mWindowFrames:Lcom/android/server/wm/WindowFrames;

    iget-object v4, v4, Lcom/android/server/wm/WindowFrames;->mStableFrame:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->left:I

    iget-object v5, p0, Lcom/android/server/wm/WindowState;->mWindowFrames:Lcom/android/server/wm/WindowFrames;

    iget-object v5, v5, Lcom/android/server/wm/WindowFrames;->mFrame:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->left:I

    .line 1075
    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v4

    iget-object v5, p0, Lcom/android/server/wm/WindowState;->mWindowFrames:Lcom/android/server/wm/WindowFrames;

    iget-object v5, v5, Lcom/android/server/wm/WindowFrames;->mStableFrame:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->top:I

    iget-object v12, p0, Lcom/android/server/wm/WindowState;->mWindowFrames:Lcom/android/server/wm/WindowFrames;

    iget-object v12, v12, Lcom/android/server/wm/WindowFrames;->mFrame:Landroid/graphics/Rect;

    iget v12, v12, Landroid/graphics/Rect;->top:I

    .line 1076
    invoke-static {v5, v12}, Ljava/lang/Math;->max(II)I

    move-result v5

    iget-object v12, p0, Lcom/android/server/wm/WindowState;->mWindowFrames:Lcom/android/server/wm/WindowFrames;

    iget-object v12, v12, Lcom/android/server/wm/WindowFrames;->mStableFrame:Landroid/graphics/Rect;

    iget v12, v12, Landroid/graphics/Rect;->right:I

    iget-object v13, p0, Lcom/android/server/wm/WindowState;->mWindowFrames:Lcom/android/server/wm/WindowFrames;

    iget-object v13, v13, Lcom/android/server/wm/WindowFrames;->mFrame:Landroid/graphics/Rect;

    iget v13, v13, Landroid/graphics/Rect;->right:I

    .line 1077
    invoke-static {v12, v13}, Ljava/lang/Math;->min(II)I

    move-result v12

    iget-object v13, p0, Lcom/android/server/wm/WindowState;->mWindowFrames:Lcom/android/server/wm/WindowFrames;

    iget-object v13, v13, Lcom/android/server/wm/WindowFrames;->mStableFrame:Landroid/graphics/Rect;

    iget v13, v13, Landroid/graphics/Rect;->bottom:I

    iget-object v14, p0, Lcom/android/server/wm/WindowState;->mWindowFrames:Lcom/android/server/wm/WindowFrames;

    iget-object v14, v14, Lcom/android/server/wm/WindowFrames;->mFrame:Landroid/graphics/Rect;

    iget v14, v14, Landroid/graphics/Rect;->bottom:I

    .line 1078
    invoke-static {v13, v14}, Ljava/lang/Math;->min(II)I

    move-result v13

    .line 1074
    invoke-virtual {v0, v4, v5, v12, v13}, Landroid/graphics/Rect;->set(IIII)V

    .line 1081
    :cond_359
    :goto_359
    if-eqz v2, :cond_368

    if-nez v1, :cond_368

    .line 1084
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mWindowFrames:Lcom/android/server/wm/WindowFrames;

    iget-object v0, v0, Lcom/android/server/wm/WindowFrames;->mOverscanFrame:Landroid/graphics/Rect;

    iget-object v4, p0, Lcom/android/server/wm/WindowState;->mWindowFrames:Lcom/android/server/wm/WindowFrames;

    iget-object v4, v4, Lcom/android/server/wm/WindowFrames;->mOverscanInsets:Landroid/graphics/Rect;

    invoke-static {v9, v0, v4}, Lcom/android/server/wm/utils/InsetUtils;->insetsBetweenFrames(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 1088
    :cond_368
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    if-ne v0, v6, :cond_388

    .line 1089
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mWindowFrames:Lcom/android/server/wm/WindowFrames;

    iget-object v0, v0, Lcom/android/server/wm/WindowFrames;->mDisplayCutout:Lcom/android/server/wm/utils/WmDisplayCutout;

    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mWindowFrames:Lcom/android/server/wm/WindowFrames;

    iget-object v1, v1, Lcom/android/server/wm/WindowFrames;->mDisplayFrame:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Lcom/android/server/wm/utils/WmDisplayCutout;->calculateRelativeTo(Landroid/graphics/Rect;)Lcom/android/server/wm/utils/WmDisplayCutout;

    move-result-object v0

    .line 1091
    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mWindowFrames:Lcom/android/server/wm/WindowFrames;

    invoke-virtual {v0}, Lcom/android/server/wm/utils/WmDisplayCutout;->getDisplayCutout()Landroid/view/DisplayCutout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/DisplayCutout;->getSafeInsets()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/android/server/wm/WindowFrames;->calculateDockedDividerInsets(Landroid/graphics/Rect;)V

    .line 1092
    goto :goto_398

    .line 1093
    :cond_388
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    iget-object v4, p0, Lcom/android/server/wm/WindowState;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v4}, Lcom/android/server/wm/DisplayContent;->getBounds(Landroid/graphics/Rect;)V

    .line 1094
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mWindowFrames:Lcom/android/server/wm/WindowFrames;

    iget-object v4, p0, Lcom/android/server/wm/WindowState;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1, v2, v4}, Lcom/android/server/wm/WindowFrames;->calculateInsets(ZZLandroid/graphics/Rect;)V

    .line 1098
    :goto_398
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mWindowFrames:Lcom/android/server/wm/WindowFrames;

    iget-object v1, v0, Lcom/android/server/wm/WindowFrames;->mDisplayCutout:Lcom/android/server/wm/utils/WmDisplayCutout;

    iget-object v2, p0, Lcom/android/server/wm/WindowState;->mWindowFrames:Lcom/android/server/wm/WindowFrames;

    iget-object v2, v2, Lcom/android/server/wm/WindowFrames;->mFrame:Landroid/graphics/Rect;

    .line 1099
    invoke-virtual {v1, v2}, Lcom/android/server/wm/utils/WmDisplayCutout;->calculateRelativeTo(Landroid/graphics/Rect;)Lcom/android/server/wm/utils/WmDisplayCutout;

    move-result-object v1

    .line 1098
    invoke-virtual {v0, v1}, Lcom/android/server/wm/WindowFrames;->setDisplayCutout(Lcom/android/server/wm/utils/WmDisplayCutout;)V

    .line 1102
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mWindowFrames:Lcom/android/server/wm/WindowFrames;

    neg-int v1, v7

    neg-int v2, v8

    invoke-virtual {v0, v1, v2}, Lcom/android/server/wm/WindowFrames;->offsetFrames(II)V

    .line 1104
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mWindowFrames:Lcom/android/server/wm/WindowFrames;

    iget-object v0, v0, Lcom/android/server/wm/WindowFrames;->mCompatFrame:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mWindowFrames:Lcom/android/server/wm/WindowFrames;

    iget-object v1, v1, Lcom/android/server/wm/WindowFrames;->mFrame:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 1105
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->inSizeCompatMode()Z

    move-result v0

    if-eqz v0, :cond_3cf

    .line 1109
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mWindowFrames:Lcom/android/server/wm/WindowFrames;

    iget v1, p0, Lcom/android/server/wm/WindowState;->mInvGlobalScale:F

    invoke-virtual {v0, v1}, Lcom/android/server/wm/WindowFrames;->scaleInsets(F)V

    .line 1113
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mWindowFrames:Lcom/android/server/wm/WindowFrames;

    iget-object v0, v0, Lcom/android/server/wm/WindowFrames;->mCompatFrame:Landroid/graphics/Rect;

    iget v1, p0, Lcom/android/server/wm/WindowState;->mInvGlobalScale:F

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->scale(F)V

    .line 1116
    :cond_3cf
    iget-boolean v0, p0, Lcom/android/server/wm/WindowState;->mIsWallpaper:Z

    if-eqz v0, :cond_3fe

    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mWindowFrames:Lcom/android/server/wm/WindowFrames;

    iget-object v0, v0, Lcom/android/server/wm/WindowFrames;->mFrame:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    if-ne v10, v0, :cond_3e7

    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mWindowFrames:Lcom/android/server/wm/WindowFrames;

    iget-object v0, v0, Lcom/android/server/wm/WindowFrames;->mFrame:Landroid/graphics/Rect;

    .line 1117
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    if-eq v11, v0, :cond_3fe

    .line 1118
    :cond_3e7
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    .line 1119
    if-eqz v0, :cond_3fe

    .line 1120
    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->getDisplayInfo()Landroid/view/DisplayInfo;

    move-result-object v0

    .line 1121
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v1

    iget-object v1, v1, Lcom/android/server/wm/DisplayContent;->mWallpaperController:Lcom/android/server/wm/WallpaperController;

    iget v2, v0, Landroid/view/DisplayInfo;->logicalWidth:I

    iget v0, v0, Landroid/view/DisplayInfo;->logicalHeight:I

    invoke-virtual {v1, p0, v2, v0, v3}, Lcom/android/server/wm/WallpaperController;->updateWallpaperOffset(Lcom/android/server/wm/WindowState;IIZ)Z

    .line 1133
    :cond_3fe
    return-void
.end method

.method destroySurface(ZZ)Z
    .registers 9

    .line 2932
    nop

    .line 2935
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 2936
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    const/4 v3, 0x0

    move v4, v3

    :goto_10
    if-ltz v1, :cond_20

    .line 2937
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/wm/WindowState;

    .line 2938
    invoke-virtual {v5, p1, p2}, Lcom/android/server/wm/WindowState;->destroySurface(ZZ)Z

    move-result v5

    or-int/2addr v4, v5

    .line 2936
    add-int/lit8 v1, v1, -0x1

    goto :goto_10

    .line 2941
    :cond_20
    if-nez p2, :cond_29

    iget-boolean v0, p0, Lcom/android/server/wm/WindowState;->mWindowRemovalAllowed:Z

    if-nez v0, :cond_29

    if-nez p1, :cond_29

    .line 2942
    return v4

    .line 2945
    :cond_29
    if-nez p2, :cond_2f

    iget-boolean p2, p0, Lcom/android/server/wm/WindowState;->mWindowRemovalAllowed:Z

    if-eqz p2, :cond_34

    .line 2946
    :cond_2f
    iget-object p2, p0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    invoke-virtual {p2}, Lcom/android/server/wm/WindowStateAnimator;->destroyPreservedSurfaceLocked()V

    .line 2949
    :cond_34
    iget-boolean p2, p0, Lcom/android/server/wm/WindowState;->mDestroying:Z

    if-eqz p2, :cond_72

    .line 2954
    if-eqz p1, :cond_3e

    iget-boolean p2, p0, Lcom/android/server/wm/WindowState;->mRemoveOnExit:Z

    if-eqz p2, :cond_41

    .line 2955
    :cond_3e
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->destroySurfaceUnchecked()V

    .line 2957
    :cond_41
    iget-boolean p2, p0, Lcom/android/server/wm/WindowState;->mRemoveOnExit:Z

    if-eqz p2, :cond_48

    .line 2958
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->removeImmediately()V

    .line 2960
    :cond_48
    if-eqz p1, :cond_4d

    .line 2961
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->requestUpdateWallpaperIfNeeded()V

    .line 2963
    :cond_4d
    iput-boolean v3, p0, Lcom/android/server/wm/WindowState;->mDestroying:Z

    .line 2964
    nop

    .line 2968
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object p1

    iget-object p1, p1, Lcom/android/server/wm/DisplayContent;->mAppTransition:Lcom/android/server/wm/AppTransition;

    invoke-virtual {p1}, Lcom/android/server/wm/AppTransition;->isTransitionSet()Z

    move-result p1

    if-eqz p1, :cond_73

    .line 2969
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object p1

    iget-object p1, p1, Lcom/android/server/wm/DisplayContent;->mOpeningApps:Landroid/util/ArraySet;

    iget-object p2, p0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    invoke-virtual {p1, p2}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_73

    .line 2970
    iget-object p1, p0, Lcom/android/server/wm/WindowState;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object p1, p1, Lcom/android/server/wm/WindowManagerService;->mWindowPlacerLocked:Lcom/android/server/wm/WindowSurfacePlacer;

    invoke-virtual {p1}, Lcom/android/server/wm/WindowSurfacePlacer;->requestTraversal()V

    goto :goto_73

    .line 2949
    :cond_72
    move v2, v4

    .line 2974
    :cond_73
    :goto_73
    return v2
.end method

.method destroySurfaceUnchecked()V
    .registers 2

    .line 2981
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowStateAnimator;->destroySurfaceLocked()V

    .line 2985
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/wm/WindowState;->mAnimatingExit:Z

    .line 2986
    return-void
.end method

.method dispatchWallpaperVisibility(Z)V
    .registers 4

    .line 4472
    nop

    .line 4473
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    iget-object v0, v0, Lcom/android/server/wm/DisplayContent;->mWallpaperController:Lcom/android/server/wm/WallpaperController;

    iget-object v0, v0, Lcom/android/server/wm/WallpaperController;->mDeferredHideWallpaper:Lcom/android/server/wm/WindowState;

    if-nez v0, :cond_d

    const/4 v0, 0x1

    goto :goto_e

    :cond_d
    const/4 v0, 0x0

    .line 4477
    :goto_e
    iget-boolean v1, p0, Lcom/android/server/wm/WindowState;->mWallpaperVisible:Z

    if-eq v1, p1, :cond_1f

    if-nez v0, :cond_16

    if-eqz p1, :cond_1f

    .line 4478
    :cond_16
    iput-boolean p1, p0, Lcom/android/server/wm/WindowState;->mWallpaperVisible:Z

    .line 4483
    :try_start_18
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mClient:Landroid/view/IWindow;

    invoke-interface {v0, p1}, Landroid/view/IWindow;->dispatchAppVisibility(Z)V
    :try_end_1d
    .catch Landroid/os/RemoteException; {:try_start_18 .. :try_end_1d} :catch_1e

    .line 4485
    goto :goto_1f

    .line 4484
    :catch_1e
    move-exception p1

    .line 4487
    :cond_1f
    :goto_1f
    return-void
.end method

.method disposeInputChannel()V
    .registers 4

    .line 2201
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mDeadWindowEventReceiver:Lcom/android/server/wm/WindowState$DeadWindowEventReceiver;

    const/4 v1, 0x0

    if-eqz v0, :cond_a

    .line 2202
    invoke-virtual {v0}, Lcom/android/server/wm/WindowState$DeadWindowEventReceiver;->dispose()V

    .line 2203
    iput-object v1, p0, Lcom/android/server/wm/WindowState;->mDeadWindowEventReceiver:Lcom/android/server/wm/WindowState$DeadWindowEventReceiver;

    .line 2207
    :cond_a
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mInputChannel:Landroid/view/InputChannel;

    if-eqz v0, :cond_1e

    .line 2208
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mInputManager:Lcom/android/server/input/InputManagerService;

    iget-object v2, p0, Lcom/android/server/wm/WindowState;->mInputChannel:Landroid/view/InputChannel;

    invoke-virtual {v0, v2}, Lcom/android/server/input/InputManagerService;->unregisterInputChannel(Landroid/view/InputChannel;)V

    .line 2210
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mInputChannel:Landroid/view/InputChannel;

    invoke-virtual {v0}, Landroid/view/InputChannel;->dispose()V

    .line 2211
    iput-object v1, p0, Lcom/android/server/wm/WindowState;->mInputChannel:Landroid/view/InputChannel;

    .line 2213
    :cond_1e
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mClientChannel:Landroid/view/InputChannel;

    if-eqz v0, :cond_27

    .line 2214
    invoke-virtual {v0}, Landroid/view/InputChannel;->dispose()V

    .line 2215
    iput-object v1, p0, Lcom/android/server/wm/WindowState;->mClientChannel:Landroid/view/InputChannel;

    .line 2217
    :cond_27
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mInputWindowHandle:Landroid/view/InputWindowHandle;

    iput-object v1, v0, Landroid/view/InputWindowHandle;->token:Landroid/os/IBinder;

    .line 2218
    return-void
.end method

.method dump(Ljava/io/PrintWriter;Ljava/lang/String;Z)V
    .registers 7

    .line 3593
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getStack()Lcom/android/server/wm/TaskStack;

    move-result-object v0

    .line 3594
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "mDisplayId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getDisplayId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3595
    if-eqz v0, :cond_37

    .line 3596
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " stackId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, v0, Lcom/android/server/wm/TaskStack;->mStackId:I

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3598
    :cond_37
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mSession="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mSession:Lcom/android/server/wm/Session;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " mClient="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mClient:Landroid/view/IWindow;

    .line 3599
    invoke-interface {v1}, Landroid/view/IWindow;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3598
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3600
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "mOwnerUid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/wm/WindowState;->mOwnerUid:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " mShowToOwnerOnly="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/wm/WindowState;->mShowToOwnerOnly:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " package="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget-object v1, v1, Landroid/view/WindowManager$LayoutParams;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " appop="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/wm/WindowState;->mAppOp:I

    .line 3603
    invoke-static {v1}, Landroid/app/AppOpsManager;->opToName(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3600
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3604
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "mAttrs="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {v1, p2}, Landroid/view/WindowManager$LayoutParams;->toString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3605
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "Requested w="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/wm/WindowState;->mRequestedWidth:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " h="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/wm/WindowState;->mRequestedHeight:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " mLayoutSeq="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/wm/WindowState;->mLayoutSeq:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3608
    iget v0, p0, Lcom/android/server/wm/WindowState;->mRequestedWidth:I

    iget v2, p0, Lcom/android/server/wm/WindowState;->mLastRequestedWidth:I

    if-ne v0, v2, :cond_ee

    iget v0, p0, Lcom/android/server/wm/WindowState;->mRequestedHeight:I

    iget v2, p0, Lcom/android/server/wm/WindowState;->mLastRequestedHeight:I

    if-eq v0, v2, :cond_10f

    .line 3609
    :cond_ee
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "LastRequested w="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/wm/WindowState;->mLastRequestedWidth:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/wm/WindowState;->mLastRequestedHeight:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3612
    :cond_10f
    iget-boolean v0, p0, Lcom/android/server/wm/WindowState;->mIsChildWindow:Z

    if-nez v0, :cond_117

    iget-boolean v0, p0, Lcom/android/server/wm/WindowState;->mLayoutAttached:Z

    if-eqz v0, :cond_13c

    .line 3613
    :cond_117
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "mParentWindow="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getParentWindow()Lcom/android/server/wm/WindowState;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " mLayoutAttached="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/wm/WindowState;->mLayoutAttached:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3616
    :cond_13c
    iget-boolean v0, p0, Lcom/android/server/wm/WindowState;->mIsImWindow:Z

    if-nez v0, :cond_148

    iget-boolean v0, p0, Lcom/android/server/wm/WindowState;->mIsWallpaper:Z

    if-nez v0, :cond_148

    iget-boolean v0, p0, Lcom/android/server/wm/WindowState;->mIsFloatingLayer:Z

    if-eqz v0, :cond_17f

    .line 3617
    :cond_148
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "mIsImWindow="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/wm/WindowState;->mIsImWindow:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " mIsWallpaper="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/wm/WindowState;->mIsWallpaper:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " mIsFloatingLayer="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/wm/WindowState;->mIsFloatingLayer:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " mWallpaperVisible="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/wm/WindowState;->mWallpaperVisible:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3622
    :cond_17f
    if-eqz p3, :cond_198

    .line 3623
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mBaseLayer="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/wm/WindowState;->mBaseLayer:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 3624
    const-string v0, " mSubLayer="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/wm/WindowState;->mSubLayer:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 3626
    :cond_198
    if-eqz p3, :cond_277

    .line 3627
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "mToken="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mToken:Lcom/android/server/wm/WindowToken;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3628
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    if-eqz v0, :cond_21f

    .line 3629
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "mAppToken="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3630
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "mAppDied="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/wm/WindowState;->mAppDied:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3631
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "drawnStateEvaluated="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getDrawnStateEvaluated()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3632
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "mightAffectAllDrawn="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->mightAffectAllDrawn()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3634
    :cond_21f
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "mViewVisibility=0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/wm/WindowState;->mViewVisibility:I

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " mHaveFrame="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/wm/WindowState;->mHaveFrame:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " mObscured="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/wm/WindowState;->mObscured:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3637
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "mSeq="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/wm/WindowState;->mSeq:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " mSystemUiVisibility=0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/wm/WindowState;->mSystemUiVisibility:I

    .line 3638
    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3637
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3640
    :cond_277
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->isVisibleByPolicy()Z

    move-result v0

    if-eqz v0, :cond_297

    iget-boolean v0, p0, Lcom/android/server/wm/WindowState;->mLegacyPolicyVisibilityAfterAnim:Z

    if-eqz v0, :cond_297

    iget-boolean v0, p0, Lcom/android/server/wm/WindowState;->mAppOpVisibility:Z

    if-eqz v0, :cond_297

    .line 3641
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->isParentWindowHidden()Z

    move-result v0

    if-nez v0, :cond_297

    iget-boolean v0, p0, Lcom/android/server/wm/WindowState;->mPermanentlyHidden:Z

    if-nez v0, :cond_297

    iget-boolean v0, p0, Lcom/android/server/wm/WindowState;->mForceHideNonSystemOverlayWindow:Z

    if-nez v0, :cond_297

    iget-boolean v0, p0, Lcom/android/server/wm/WindowState;->mHiddenWhileSuspended:Z

    if-eqz v0, :cond_2f0

    .line 3643
    :cond_297
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "mPolicyVisibility="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->isVisibleByPolicy()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " mLegacyPolicyVisibilityAfterAnim="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/wm/WindowState;->mLegacyPolicyVisibilityAfterAnim:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " mAppOpVisibility="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/wm/WindowState;->mAppOpVisibility:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " parentHidden="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3646
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->isParentWindowHidden()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " mPermanentlyHidden="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/wm/WindowState;->mPermanentlyHidden:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " mHiddenWhileSuspended="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/wm/WindowState;->mHiddenWhileSuspended:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " mForceHideNonSystemOverlayWindow="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/wm/WindowState;->mForceHideNonSystemOverlayWindow:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3643
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3651
    :cond_2f0
    iget-boolean v0, p0, Lcom/android/server/wm/WindowState;->mRelayoutCalled:Z

    if-eqz v0, :cond_2f8

    iget-boolean v0, p0, Lcom/android/server/wm/WindowState;->mLayoutNeeded:Z

    if-eqz v0, :cond_31b

    .line 3652
    :cond_2f8
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "mRelayoutCalled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/wm/WindowState;->mRelayoutCalled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " mLayoutNeeded="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/wm/WindowState;->mLayoutNeeded:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3655
    :cond_31b
    if-eqz p3, :cond_3cc

    .line 3656
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "mGivenContentInsets="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mGivenContentInsets:Landroid/graphics/Rect;

    sget-object v2, Lcom/android/server/wm/WindowState;->sTmpSB:Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Landroid/graphics/Rect;->toShortString(Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " mGivenVisibleInsets="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mGivenVisibleInsets:Landroid/graphics/Rect;

    sget-object v2, Lcom/android/server/wm/WindowState;->sTmpSB:Ljava/lang/StringBuilder;

    .line 3657
    invoke-virtual {v1, v2}, Landroid/graphics/Rect;->toShortString(Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3656
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3658
    iget v0, p0, Lcom/android/server/wm/WindowState;->mTouchableInsets:I

    if-nez v0, :cond_354

    iget-boolean v0, p0, Lcom/android/server/wm/WindowState;->mGivenInsetsPending:Z

    if-eqz v0, :cond_396

    .line 3659
    :cond_354
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "mTouchableInsets="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/wm/WindowState;->mTouchableInsets:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " mGivenInsetsPending="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/wm/WindowState;->mGivenInsetsPending:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3661
    new-instance v0, Landroid/graphics/Region;

    invoke-direct {v0}, Landroid/graphics/Region;-><init>()V

    .line 3662
    invoke-virtual {p0, v0}, Lcom/android/server/wm/WindowState;->getTouchableRegion(Landroid/graphics/Region;)V

    .line 3663
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "touchable region="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3665
    :cond_396
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "mFullConfiguration="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3666
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "mLastReportedConfiguration="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/android/server/wm/WindowState;->getLastReportedConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3668
    :cond_3cc
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "mHasSurface="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/wm/WindowState;->mHasSurface:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " isReadyForDisplay()="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3669
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->isReadyForDisplay()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " mWindowRemovalAllowed="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/wm/WindowState;->mWindowRemovalAllowed:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3668
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3671
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->inSizeCompatMode()Z

    move-result v0

    if-eqz v0, :cond_422

    .line 3672
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "mCompatFrame="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mWindowFrames:Lcom/android/server/wm/WindowFrames;

    iget-object v1, v1, Lcom/android/server/wm/WindowFrames;->mCompatFrame:Landroid/graphics/Rect;

    sget-object v2, Lcom/android/server/wm/WindowState;->sTmpSB:Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Landroid/graphics/Rect;->toShortString(Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3674
    :cond_422
    if-eqz p3, :cond_44a

    .line 3675
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mWindowFrames:Lcom/android/server/wm/WindowFrames;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/wm/WindowFrames;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 3676
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " surface="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget-object v1, v1, Landroid/view/WindowManager$LayoutParams;->surfaceInsets:Landroid/graphics/Rect;

    sget-object v2, Lcom/android/server/wm/WindowState;->sTmpSB:Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Landroid/graphics/Rect;->toShortString(Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3678
    :cond_44a
    invoke-super {p0, p1, p2, p3}, Lcom/android/server/wm/WindowContainer;->dump(Ljava/io/PrintWriter;Ljava/lang/String;Z)V

    .line 3679
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3680
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1, p3}, Lcom/android/server/wm/WindowStateAnimator;->dump(Ljava/io/PrintWriter;Ljava/lang/String;Z)V

    .line 3681
    iget-boolean p3, p0, Lcom/android/server/wm/WindowState;->mAnimatingExit:Z

    if-nez p3, :cond_48c

    iget-boolean p3, p0, Lcom/android/server/wm/WindowState;->mRemoveOnExit:Z

    if-nez p3, :cond_48c

    iget-boolean p3, p0, Lcom/android/server/wm/WindowState;->mDestroying:Z

    if-nez p3, :cond_48c

    iget-boolean p3, p0, Lcom/android/server/wm/WindowState;->mRemoved:Z

    if-eqz p3, :cond_4c3

    .line 3682
    :cond_48c
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "mAnimatingExit="

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Lcom/android/server/wm/WindowState;->mAnimatingExit:Z

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, " mRemoveOnExit="

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Lcom/android/server/wm/WindowState;->mRemoveOnExit:Z

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, " mDestroying="

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Lcom/android/server/wm/WindowState;->mDestroying:Z

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, " mRemoved="

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Lcom/android/server/wm/WindowState;->mRemoved:Z

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3687
    :cond_4c3
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getOrientationChanging()Z

    move-result p3

    if-nez p3, :cond_4d1

    iget-boolean p3, p0, Lcom/android/server/wm/WindowState;->mAppFreezing:Z

    if-nez p3, :cond_4d1

    iget-boolean p3, p0, Lcom/android/server/wm/WindowState;->mReportOrientationChanged:Z

    if-eqz p3, :cond_517

    .line 3688
    :cond_4d1
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "mOrientationChanging="

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Lcom/android/server/wm/WindowState;->mOrientationChanging:Z

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, " configOrientationChanging="

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3690
    invoke-direct {p0}, Lcom/android/server/wm/WindowState;->getLastReportedConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    if-eq v0, v1, :cond_4f8

    const/4 v0, 0x1

    goto :goto_4f9

    :cond_4f8
    const/4 v0, 0x0

    :goto_4f9
    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, " mAppFreezing="

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Lcom/android/server/wm/WindowState;->mAppFreezing:Z

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, " mReportOrientationChanged="

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Lcom/android/server/wm/WindowState;->mReportOrientationChanged:Z

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    .line 3688
    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3694
    :cond_517
    iget p3, p0, Lcom/android/server/wm/WindowState;->mLastFreezeDuration:I

    if-eqz p3, :cond_538

    .line 3695
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "mLastFreezeDuration="

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3696
    iget p3, p0, Lcom/android/server/wm/WindowState;->mLastFreezeDuration:I

    int-to-long v0, p3

    invoke-static {v0, v1, p1}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 3697
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 3699
    :cond_538
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "mForceSeamlesslyRotate="

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Lcom/android/server/wm/WindowState;->mForceSeamlesslyRotate:Z

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, " seamlesslyRotate: pending="

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3701
    iget-object p3, p0, Lcom/android/server/wm/WindowState;->mPendingSeamlessRotate:Lcom/android/server/wm/SeamlessRotator;

    if-eqz p3, :cond_55e

    .line 3702
    invoke-virtual {p3, p1}, Lcom/android/server/wm/SeamlessRotator;->dump(Ljava/io/PrintWriter;)V

    goto :goto_563

    .line 3704
    :cond_55e
    const-string p3, "null"

    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3706
    :goto_563
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, " finishedFrameNumber="

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v0, p0, Lcom/android/server/wm/WindowState;->mFinishSeamlessRotateFrameNumber:J

    invoke-virtual {p3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3708
    iget p3, p0, Lcom/android/server/wm/WindowState;->mHScale:F

    const/high16 v0, 0x3f800000  # 1.0f

    cmpl-float p3, p3, v0

    if-nez p3, :cond_587

    iget p3, p0, Lcom/android/server/wm/WindowState;->mVScale:F

    cmpl-float p3, p3, v0

    if-eqz p3, :cond_5aa

    .line 3709
    :cond_587
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "mHScale="

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/android/server/wm/WindowState;->mHScale:F

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v0, " mVScale="

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/android/server/wm/WindowState;->mVScale:F

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3712
    :cond_5aa
    iget p3, p0, Lcom/android/server/wm/WindowState;->mWallpaperX:F

    const/high16 v0, -0x40800000  # -1.0f

    cmpl-float p3, p3, v0

    if-nez p3, :cond_5b8

    iget p3, p0, Lcom/android/server/wm/WindowState;->mWallpaperY:F

    cmpl-float p3, p3, v0

    if-eqz p3, :cond_5db

    .line 3713
    :cond_5b8
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "mWallpaperX="

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/wm/WindowState;->mWallpaperX:F

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, " mWallpaperY="

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/wm/WindowState;->mWallpaperY:F

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3716
    :cond_5db
    iget p3, p0, Lcom/android/server/wm/WindowState;->mWallpaperXStep:F

    cmpl-float p3, p3, v0

    if-nez p3, :cond_5e7

    iget p3, p0, Lcom/android/server/wm/WindowState;->mWallpaperYStep:F

    cmpl-float p3, p3, v0

    if-eqz p3, :cond_60a

    .line 3717
    :cond_5e7
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "mWallpaperXStep="

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/android/server/wm/WindowState;->mWallpaperXStep:F

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v0, " mWallpaperYStep="

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/android/server/wm/WindowState;->mWallpaperYStep:F

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3720
    :cond_60a
    iget p3, p0, Lcom/android/server/wm/WindowState;->mWallpaperDisplayOffsetX:I

    const/high16 v0, -0x80000000

    if-ne p3, v0, :cond_614

    iget p3, p0, Lcom/android/server/wm/WindowState;->mWallpaperDisplayOffsetY:I

    if-eq p3, v0, :cond_637

    .line 3722
    :cond_614
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "mWallpaperDisplayOffsetX="

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/android/server/wm/WindowState;->mWallpaperDisplayOffsetX:I

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " mWallpaperDisplayOffsetY="

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/android/server/wm/WindowState;->mWallpaperDisplayOffsetY:I

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3725
    :cond_637
    iget-object p3, p0, Lcom/android/server/wm/WindowState;->mDrawLock:Landroid/os/PowerManager$WakeLock;

    if-eqz p3, :cond_654

    .line 3726
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "mDrawLock="

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mDrawLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3728
    :cond_654
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->isDragResizing()Z

    move-result p3

    if-eqz p3, :cond_675

    .line 3729
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "isDragResizing="

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->isDragResizing()Z

    move-result v0

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3731
    :cond_675
    invoke-direct {p0}, Lcom/android/server/wm/WindowState;->computeDragResizing()Z

    move-result p3

    if-eqz p3, :cond_696

    .line 3732
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "computeDragResizing="

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/android/server/wm/WindowState;->computeDragResizing()Z

    move-result v0

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3734
    :cond_696
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "isOnScreen="

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->isOnScreen()Z

    move-result v0

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3735
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "isVisible="

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->isVisible()Z

    move-result v0

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3736
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "mEmbeddedDisplayContents="

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/android/server/wm/WindowState;->mEmbeddedDisplayContents:Landroid/util/ArraySet;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3737
    return-void
.end method

.method expandForSurfaceInsets(Landroid/graphics/Rect;)V
    .registers 6

    .line 4650
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget-object v0, v0, Landroid/view/WindowManager$LayoutParams;->surfaceInsets:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    neg-int v0, v0

    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget-object v1, v1, Landroid/view/WindowManager$LayoutParams;->surfaceInsets:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    neg-int v1, v1

    iget-object v2, p0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget-object v2, v2, Landroid/view/WindowManager$LayoutParams;->surfaceInsets:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->right:I

    neg-int v2, v2

    iget-object v3, p0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget-object v3, v3, Landroid/view/WindowManager$LayoutParams;->surfaceInsets:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    neg-int v3, v3

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Rect;->inset(IIII)V

    .line 4654
    return-void
.end method

.method fillsDisplay()Z
    .registers 4

    .line 1869
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getDisplayInfo()Landroid/view/DisplayInfo;

    move-result-object v0

    .line 1870
    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mWindowFrames:Lcom/android/server/wm/WindowFrames;

    iget-object v1, v1, Lcom/android/server/wm/WindowFrames;->mFrame:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    if-gtz v1, :cond_2a

    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mWindowFrames:Lcom/android/server/wm/WindowFrames;

    iget-object v1, v1, Lcom/android/server/wm/WindowFrames;->mFrame:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    if-gtz v1, :cond_2a

    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mWindowFrames:Lcom/android/server/wm/WindowFrames;

    iget-object v1, v1, Lcom/android/server/wm/WindowFrames;->mFrame:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->right:I

    iget v2, v0, Landroid/view/DisplayInfo;->appWidth:I

    if-lt v1, v2, :cond_2a

    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mWindowFrames:Lcom/android/server/wm/WindowFrames;

    iget-object v1, v1, Lcom/android/server/wm/WindowFrames;->mFrame:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    iget v0, v0, Landroid/view/DisplayInfo;->appHeight:I

    if-lt v1, v0, :cond_2a

    const/4 v0, 0x1

    goto :goto_2b

    :cond_2a
    const/4 v0, 0x0

    :goto_2b
    return v0
.end method

.method finishSeamlessRotation(Z)V
    .registers 4

    .line 661
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mPendingSeamlessRotate:Lcom/android/server/wm/SeamlessRotator;

    if-eqz v0, :cond_16

    .line 662
    invoke-virtual {v0, p0, p1}, Lcom/android/server/wm/SeamlessRotator;->finish(Lcom/android/server/wm/WindowState;Z)V

    .line 663
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getFrameNumber()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/wm/WindowState;->mFinishSeamlessRotateFrameNumber:J

    .line 664
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/server/wm/WindowState;->mPendingSeamlessRotate:Lcom/android/server/wm/SeamlessRotator;

    .line 665
    iget-object p1, p0, Lcom/android/server/wm/WindowState;->mWmService:Lcom/android/server/wm/WindowManagerService;

    const/4 v0, 0x0

    invoke-virtual {p1, p0, v0}, Lcom/android/server/wm/WindowManagerService;->markForSeamlessRotation(Lcom/android/server/wm/WindowState;Z)V

    .line 667
    :cond_16
    return-void
.end method

.method forAllWindows(Lcom/android/internal/util/ToBooleanFunction;Z)Z
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/util/ToBooleanFunction<",
            "Lcom/android/server/wm/WindowState;",
            ">;Z)Z"
        }
    .end annotation

    .line 4166
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 4168
    invoke-direct {p0, p1, p2}, Lcom/android/server/wm/WindowState;->applyInOrderWithImeWindows(Lcom/android/internal/util/ToBooleanFunction;Z)Z

    move-result p1

    return p1

    .line 4171
    :cond_d
    if-eqz p2, :cond_14

    .line 4172
    invoke-direct {p0, p1}, Lcom/android/server/wm/WindowState;->forAllWindowTopToBottom(Lcom/android/internal/util/ToBooleanFunction;)Z

    move-result p1

    return p1

    .line 4174
    :cond_14
    invoke-direct {p0, p1}, Lcom/android/server/wm/WindowState;->forAllWindowBottomToTop(Lcom/android/internal/util/ToBooleanFunction;)Z

    move-result p1

    return p1
.end method

.method forceWindowsScaleableInTransaction(Z)V
    .registers 3

    .line 1912
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    if-eqz v0, :cond_11

    invoke-virtual {v0}, Lcom/android/server/wm/WindowStateAnimator;->hasSurface()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 1913
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    iget-object v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceController:Lcom/android/server/wm/WindowSurfaceController;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/WindowSurfaceController;->forceScaleableInTransaction(Z)V

    .line 1916
    :cond_11
    invoke-super {p0, p1}, Lcom/android/server/wm/WindowContainer;->forceWindowsScaleableInTransaction(Z)V

    .line 1917
    return-void
.end method

.method public getAppToken()Landroid/view/IApplicationToken;
    .registers 2

    .line 1240
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    if-eqz v0, :cond_7

    iget-object v0, v0, Lcom/android/server/wm/AppWindowToken;->appToken:Landroid/view/IApplicationToken;

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    :goto_8
    return-object v0
.end method

.method public getAttrs()Landroid/view/WindowManager$LayoutParams;
    .registers 2

    .line 1215
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    return-object v0
.end method

.method getBackdropFrame(Landroid/graphics/Rect;)Landroid/graphics/Rect;
    .registers 5

    .line 3347
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->isDragResizing()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_10

    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->isDragResizeChanged()Z

    move-result v0

    if-eqz v0, :cond_e

    goto :goto_10

    :cond_e
    move v0, v1

    goto :goto_11

    :cond_10
    :goto_10
    const/4 v0, 0x1

    .line 3348
    :goto_11
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getWindowConfiguration()Landroid/app/WindowConfiguration;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/WindowConfiguration;->useWindowFrameForBackdrop()Z

    move-result v2

    if-nez v2, :cond_2e

    if-nez v0, :cond_1e

    goto :goto_2e

    .line 3356
    :cond_1e
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getDisplayInfo()Landroid/view/DisplayInfo;

    move-result-object p1

    .line 3357
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mTmpRect:Landroid/graphics/Rect;

    iget v2, p1, Landroid/view/DisplayInfo;->logicalWidth:I

    iget p1, p1, Landroid/view/DisplayInfo;->logicalHeight:I

    invoke-virtual {v0, v1, v1, v2, p1}, Landroid/graphics/Rect;->set(IIII)V

    .line 3358
    iget-object p1, p0, Lcom/android/server/wm/WindowState;->mTmpRect:Landroid/graphics/Rect;

    return-object p1

    .line 3352
    :cond_2e
    :goto_2e
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 3353
    iget-object p1, p0, Lcom/android/server/wm/WindowState;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {p1, v1, v1}, Landroid/graphics/Rect;->offsetTo(II)V

    .line 3354
    iget-object p1, p0, Lcom/android/server/wm/WindowState;->mTmpRect:Landroid/graphics/Rect;

    return-object p1
.end method

.method public getBaseType()I
    .registers 2

    .line 1235
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getTopParentWindow()Lcom/android/server/wm/WindowState;

    move-result-object v0

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    return v0
.end method

.method public getBounds()Landroid/graphics/Rect;
    .registers 2

    .line 1138
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    if-eqz v0, :cond_9

    .line 1139
    invoke-virtual {v0}, Lcom/android/server/wm/AppWindowToken;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    return-object v0

    .line 1141
    :cond_9
    invoke-super {p0}, Lcom/android/server/wm/WindowContainer;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    return-object v0
.end method

.method getCompatFrame(Landroid/graphics/Rect;)V
    .registers 3

    .line 1191
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mWindowFrames:Lcom/android/server/wm/WindowFrames;

    iget-object v0, v0, Lcom/android/server/wm/WindowFrames;->mCompatFrame:Landroid/graphics/Rect;

    invoke-virtual {p1, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 1192
    return-void
.end method

.method getCompatFrameSize(Landroid/graphics/Rect;)V
    .registers 5

    .line 1195
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mWindowFrames:Lcom/android/server/wm/WindowFrames;

    iget-object v0, v0, Lcom/android/server/wm/WindowFrames;->mCompatFrame:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mWindowFrames:Lcom/android/server/wm/WindowFrames;

    iget-object v1, v1, Lcom/android/server/wm/WindowFrames;->mCompatFrame:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {p1, v2, v2, v0, v1}, Landroid/graphics/Rect;->set(IIII)V

    .line 1196
    return-void
.end method

.method public getConfiguration()Landroid/content/res/Configuration;
    .registers 3

    .line 3189
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    if-eqz v0, :cond_17

    iget-object v0, v0, Lcom/android/server/wm/AppWindowToken;->mFrozenMergedConfig:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->size()I

    move-result v0

    if-lez v0, :cond_17

    .line 3190
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    iget-object v0, v0, Lcom/android/server/wm/AppWindowToken;->mFrozenMergedConfig:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/res/Configuration;

    return-object v0

    .line 3195
    :cond_17
    invoke-direct {p0}, Lcom/android/server/wm/WindowState;->registeredForDisplayConfigChanges()Z

    move-result v0

    if-nez v0, :cond_22

    .line 3196
    invoke-super {p0}, Lcom/android/server/wm/WindowContainer;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    return-object v0

    .line 3201
    :cond_22
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mTempConfiguration:Landroid/content/res/Configuration;

    invoke-direct {p0}, Lcom/android/server/wm/WindowState;->getProcessGlobalConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/res/Configuration;->setTo(Landroid/content/res/Configuration;)V

    .line 3202
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mTempConfiguration:Landroid/content/res/Configuration;

    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getMergedOverrideConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/res/Configuration;->updateFrom(Landroid/content/res/Configuration;)I

    .line 3203
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mTempConfiguration:Landroid/content/res/Configuration;

    return-object v0
.end method

.method getContainingFrame()Landroid/graphics/Rect;
    .registers 2

    .line 1183
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mWindowFrames:Lcom/android/server/wm/WindowFrames;

    iget-object v0, v0, Lcom/android/server/wm/WindowFrames;->mContainingFrame:Landroid/graphics/Rect;

    return-object v0
.end method

.method public getContentFrameLw()Landroid/graphics/Rect;
    .registers 2

    .line 1162
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mWindowFrames:Lcom/android/server/wm/WindowFrames;

    iget-object v0, v0, Lcom/android/server/wm/WindowFrames;->mContentFrame:Landroid/graphics/Rect;

    return-object v0
.end method

.method getContentInsets()Landroid/graphics/Rect;
    .registers 2

    .line 5239
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mWindowFrames:Lcom/android/server/wm/WindowFrames;

    iget-object v0, v0, Lcom/android/server/wm/WindowFrames;->mContentInsets:Landroid/graphics/Rect;

    return-object v0
.end method

.method getContentInsets(Landroid/graphics/Rect;)V
    .registers 3

    .line 5235
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mWindowFrames:Lcom/android/server/wm/WindowFrames;

    iget-object v0, v0, Lcom/android/server/wm/WindowFrames;->mContentInsets:Landroid/graphics/Rect;

    invoke-virtual {p1, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 5236
    return-void
.end method

.method getDecorFrame()Landroid/graphics/Rect;
    .registers 2

    .line 1175
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mWindowFrames:Lcom/android/server/wm/WindowFrames;

    iget-object v0, v0, Lcom/android/server/wm/WindowFrames;->mDecorFrame:Landroid/graphics/Rect;

    return-object v0
.end method

.method getDisplayContent()Lcom/android/server/wm/DisplayContent;
    .registers 2

    .line 1368
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mToken:Lcom/android/server/wm/WindowToken;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowToken;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    return-object v0
.end method

.method public getDisplayFrameLw()Landroid/graphics/Rect;
    .registers 2

    .line 1152
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mWindowFrames:Lcom/android/server/wm/WindowFrames;

    iget-object v0, v0, Lcom/android/server/wm/WindowFrames;->mDisplayFrame:Landroid/graphics/Rect;

    return-object v0
.end method

.method public getDisplayId()I
    .registers 2

    .line 1388
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    .line 1389
    if-nez v0, :cond_8

    .line 1390
    const/4 v0, -0x1

    return v0

    .line 1392
    :cond_8
    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->getDisplayId()I

    move-result v0

    return v0
.end method

.method getDisplayInfo()Landroid/view/DisplayInfo;
    .registers 2

    .line 1382
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    .line 1383
    if-eqz v0, :cond_b

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->getDisplayInfo()Landroid/view/DisplayInfo;

    move-result-object v0

    goto :goto_c

    :cond_b
    const/4 v0, 0x0

    :goto_c
    return-object v0
.end method

.method public getDisplayedBounds()Landroid/graphics/Rect;
    .registers 3

    .line 902
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getTask()Lcom/android/server/wm/Task;

    move-result-object v0

    .line 903
    if-eqz v0, :cond_11

    .line 904
    invoke-virtual {v0}, Lcom/android/server/wm/Task;->getOverrideDisplayedBounds()Landroid/graphics/Rect;

    move-result-object v0

    .line 905
    invoke-virtual {v0}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_11

    .line 906
    return-object v0

    .line 909
    :cond_11
    invoke-super {p0}, Lcom/android/server/wm/WindowContainer;->getDisplayedBounds()Landroid/graphics/Rect;

    move-result-object v0

    return-object v0
.end method

.method getDrawnStateEvaluated()Z
    .registers 2

    .line 846
    iget-boolean v0, p0, Lcom/android/server/wm/WindowState;->mDrawnStateEvaluated:Z

    return v0
.end method

.method getEffectiveTouchableRegion(Landroid/graphics/Region;)V
    .registers 4

    .line 3104
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit8 v0, v0, 0x28

    if-nez v0, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    .line 3105
    :goto_b
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v1

    .line 3107
    if-eqz v0, :cond_21

    if-eqz v1, :cond_21

    .line 3108
    invoke-virtual {v1}, Lcom/android/server/wm/DisplayContent;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/graphics/Region;->set(Landroid/graphics/Rect;)Z

    .line 3109
    invoke-direct {p0, p1}, Lcom/android/server/wm/WindowState;->cropRegionToStackBoundsIfNeeded(Landroid/graphics/Region;)V

    .line 3110
    invoke-direct {p0, p1}, Lcom/android/server/wm/WindowState;->subtractTouchExcludeRegionIfNeeded(Landroid/graphics/Region;)V

    goto :goto_24

    .line 3112
    :cond_21
    invoke-virtual {p0, p1}, Lcom/android/server/wm/WindowState;->getTouchableRegion(Landroid/graphics/Region;)V

    .line 3114
    :goto_24
    return-void
.end method

.method public getFrameLw()Landroid/graphics/Rect;
    .registers 2

    .line 1147
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mWindowFrames:Lcom/android/server/wm/WindowFrames;

    iget-object v0, v0, Lcom/android/server/wm/WindowFrames;->mFrame:Landroid/graphics/Rect;

    return-object v0
.end method

.method getFrameNumber()J
    .registers 3

    .line 5193
    iget-wide v0, p0, Lcom/android/server/wm/WindowState;->mFrameNumber:J

    return-wide v0
.end method

.method public getGivenContentInsetsLw()Landroid/graphics/Rect;
    .registers 2

    .line 1205
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mGivenContentInsets:Landroid/graphics/Rect;

    return-object v0
.end method

.method public getGivenInsetsPendingLw()Z
    .registers 2

    .line 1200
    iget-boolean v0, p0, Lcom/android/server/wm/WindowState;->mGivenInsetsPending:Z

    return v0
.end method

.method public getGivenVisibleInsetsLw()Landroid/graphics/Rect;
    .registers 2

    .line 1210
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mGivenVisibleInsets:Landroid/graphics/Rect;

    return-object v0
.end method

.method public getInputDispatchingTimeoutNanos()J
    .registers 3

    .line 1445
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    if-eqz v0, :cond_7

    .line 1446
    iget-wide v0, v0, Lcom/android/server/wm/AppWindowToken;->mInputDispatchingTimeoutNanos:J

    goto :goto_c

    .line 1447
    :cond_7
    const-wide v0, 0x12a05f200L

    .line 1445
    :goto_c
    return-wide v0
.end method

.method getInsetProvider()Lcom/android/server/wm/InsetsSourceProvider;
    .registers 2

    .line 5272
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mInsetProvider:Lcom/android/server/wm/InsetsSourceProvider;

    return-object v0
.end method

.method getInsetsForRelayout(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)V
    .registers 7

    .line 5225
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mWindowFrames:Lcom/android/server/wm/WindowFrames;

    iget-object v0, v0, Lcom/android/server/wm/WindowFrames;->mOverscanInsets:Landroid/graphics/Rect;

    invoke-virtual {p1, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 5226
    iget-object p1, p0, Lcom/android/server/wm/WindowState;->mWindowFrames:Lcom/android/server/wm/WindowFrames;

    iget-object p1, p1, Lcom/android/server/wm/WindowFrames;->mContentInsets:Landroid/graphics/Rect;

    invoke-virtual {p2, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 5227
    iget-object p1, p0, Lcom/android/server/wm/WindowState;->mWindowFrames:Lcom/android/server/wm/WindowFrames;

    iget-object p1, p1, Lcom/android/server/wm/WindowFrames;->mVisibleInsets:Landroid/graphics/Rect;

    invoke-virtual {p3, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 5228
    iget-object p1, p0, Lcom/android/server/wm/WindowState;->mWindowFrames:Lcom/android/server/wm/WindowFrames;

    iget-object p1, p1, Lcom/android/server/wm/WindowFrames;->mStableInsets:Landroid/graphics/Rect;

    invoke-virtual {p4, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 5229
    iget-object p1, p0, Lcom/android/server/wm/WindowState;->mWindowFrames:Lcom/android/server/wm/WindowFrames;

    iget-object p1, p1, Lcom/android/server/wm/WindowFrames;->mOutsets:Landroid/graphics/Rect;

    invoke-virtual {p5, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 5231
    iget-object p1, p0, Lcom/android/server/wm/WindowState;->mLastRelayoutContentInsets:Landroid/graphics/Rect;

    iget-object p2, p0, Lcom/android/server/wm/WindowState;->mWindowFrames:Lcom/android/server/wm/WindowFrames;

    iget-object p2, p2, Lcom/android/server/wm/WindowFrames;->mContentInsets:Landroid/graphics/Rect;

    invoke-virtual {p1, p2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 5232
    return-void
.end method

.method getLastReportedMergedConfiguration(Landroid/util/MergedConfiguration;)V
    .registers 3

    .line 2488
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mLastReportedConfiguration:Landroid/util/MergedConfiguration;

    invoke-virtual {p1, v0}, Landroid/util/MergedConfiguration;->setTo(Landroid/util/MergedConfiguration;)V

    .line 2489
    return-void
.end method

.method public getMaxVisibleBounds(Landroid/graphics/Rect;)V
    .registers 4

    .line 5201
    invoke-virtual {p1}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 5202
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mWindowFrames:Lcom/android/server/wm/WindowFrames;

    iget-object v0, v0, Lcom/android/server/wm/WindowFrames;->mVisibleFrame:Landroid/graphics/Rect;

    invoke-virtual {p1, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 5203
    return-void

    .line 5206
    :cond_e
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mWindowFrames:Lcom/android/server/wm/WindowFrames;

    iget-object v0, v0, Lcom/android/server/wm/WindowFrames;->mVisibleFrame:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    iget v1, p1, Landroid/graphics/Rect;->left:I

    if-ge v0, v1, :cond_20

    .line 5207
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mWindowFrames:Lcom/android/server/wm/WindowFrames;

    iget-object v0, v0, Lcom/android/server/wm/WindowFrames;->mVisibleFrame:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    iput v0, p1, Landroid/graphics/Rect;->left:I

    .line 5209
    :cond_20
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mWindowFrames:Lcom/android/server/wm/WindowFrames;

    iget-object v0, v0, Lcom/android/server/wm/WindowFrames;->mVisibleFrame:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    iget v1, p1, Landroid/graphics/Rect;->top:I

    if-ge v0, v1, :cond_32

    .line 5210
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mWindowFrames:Lcom/android/server/wm/WindowFrames;

    iget-object v0, v0, Lcom/android/server/wm/WindowFrames;->mVisibleFrame:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    iput v0, p1, Landroid/graphics/Rect;->top:I

    .line 5212
    :cond_32
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mWindowFrames:Lcom/android/server/wm/WindowFrames;

    iget-object v0, v0, Lcom/android/server/wm/WindowFrames;->mVisibleFrame:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->right:I

    iget v1, p1, Landroid/graphics/Rect;->right:I

    if-le v0, v1, :cond_44

    .line 5213
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mWindowFrames:Lcom/android/server/wm/WindowFrames;

    iget-object v0, v0, Lcom/android/server/wm/WindowFrames;->mVisibleFrame:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->right:I

    iput v0, p1, Landroid/graphics/Rect;->right:I

    .line 5215
    :cond_44
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mWindowFrames:Lcom/android/server/wm/WindowFrames;

    iget-object v0, v0, Lcom/android/server/wm/WindowFrames;->mVisibleFrame:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    iget v1, p1, Landroid/graphics/Rect;->bottom:I

    if-le v0, v1, :cond_56

    .line 5216
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mWindowFrames:Lcom/android/server/wm/WindowFrames;

    iget-object v0, v0, Lcom/android/server/wm/WindowFrames;->mVisibleFrame:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    iput v0, p1, Landroid/graphics/Rect;->bottom:I

    .line 5218
    :cond_56
    return-void
.end method

.method getMergedConfiguration(Landroid/util/MergedConfiguration;)V
    .registers 4

    .line 2477
    invoke-direct {p0}, Lcom/android/server/wm/WindowState;->getProcessGlobalConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 2478
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getMergedOverrideConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    .line 2479
    invoke-virtual {p1, v0, v1}, Landroid/util/MergedConfiguration;->setConfiguration(Landroid/content/res/Configuration;Landroid/content/res/Configuration;)V

    .line 2480
    return-void
.end method

.method getName()Ljava/lang/String;
    .registers 3

    .line 3741
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3742
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getWindowTag()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3741
    return-object v0
.end method

.method public getNeedsMenuLw(Lcom/android/server/policy/WindowManagerPolicy$WindowState;)Z
    .registers 3

    .line 1220
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/android/server/wm/DisplayContent;->getNeedsMenu(Lcom/android/server/wm/WindowState;Lcom/android/server/policy/WindowManagerPolicy$WindowState;)Z

    move-result p1

    return p1
.end method

.method getOrientationChanging()Z
    .registers 3

    .line 1351
    iget-boolean v0, p0, Lcom/android/server/wm/WindowState;->mOrientationChanging:Z

    if-nez v0, :cond_18

    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_22

    .line 1352
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    invoke-direct {p0}, Lcom/android/server/wm/WindowState;->getLastReportedConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    if-eq v0, v1, :cond_22

    :cond_18
    iget-boolean v0, p0, Lcom/android/server/wm/WindowState;->mSeamlesslyRotated:Z

    if-nez v0, :cond_22

    iget-boolean v0, p0, Lcom/android/server/wm/WindowState;->mOrientationChangeTimedOut:Z

    if-nez v0, :cond_22

    const/4 v0, 0x1

    goto :goto_23

    :cond_22
    const/4 v0, 0x0

    .line 1351
    :goto_23
    return v0
.end method

.method public getOverscanFrameLw()Landroid/graphics/Rect;
    .registers 2

    .line 1157
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mWindowFrames:Lcom/android/server/wm/WindowFrames;

    iget-object v0, v0, Lcom/android/server/wm/WindowFrames;->mOverscanFrame:Landroid/graphics/Rect;

    return-object v0
.end method

.method public getOwningPackage()Ljava/lang/String;
    .registers 2

    .line 872
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget-object v0, v0, Landroid/view/WindowManager$LayoutParams;->packageName:Ljava/lang/String;

    return-object v0
.end method

.method public getOwningUid()I
    .registers 2

    .line 867
    iget v0, p0, Lcom/android/server/wm/WindowState;->mOwnerUid:I

    return v0
.end method

.method getParentFrame()Landroid/graphics/Rect;
    .registers 2

    .line 1179
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mWindowFrames:Lcom/android/server/wm/WindowFrames;

    iget-object v0, v0, Lcom/android/server/wm/WindowFrames;->mParentFrame:Landroid/graphics/Rect;

    return-object v0
.end method

.method getParentWindow()Lcom/android/server/wm/WindowState;
    .registers 2

    .line 3890
    iget-boolean v0, p0, Lcom/android/server/wm/WindowState;->mIsChildWindow:Z

    if-eqz v0, :cond_b

    invoke-super {p0}, Lcom/android/server/wm/WindowContainer;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/WindowState;

    goto :goto_c

    :cond_b
    const/4 v0, 0x0

    :goto_c
    return-object v0
.end method

.method getReplacingWindow()Lcom/android/server/wm/WindowState;
    .registers 3

    .line 4016
    iget-boolean v0, p0, Lcom/android/server/wm/WindowState;->mAnimatingExit:Z

    if-eqz v0, :cond_d

    iget-boolean v0, p0, Lcom/android/server/wm/WindowState;->mWillReplaceWindow:Z

    if-eqz v0, :cond_d

    iget-boolean v0, p0, Lcom/android/server/wm/WindowState;->mAnimateReplacingWindow:Z

    if-eqz v0, :cond_d

    .line 4017
    return-object p0

    .line 4019
    :cond_d
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_15
    if-ltz v0, :cond_29

    .line 4020
    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v1, v0}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/WindowState;

    .line 4021
    invoke-virtual {v1}, Lcom/android/server/wm/WindowState;->getReplacingWindow()Lcom/android/server/wm/WindowState;

    move-result-object v1

    .line 4022
    if-eqz v1, :cond_26

    .line 4023
    return-object v1

    .line 4019
    :cond_26
    add-int/lit8 v0, v0, -0x1

    goto :goto_15

    .line 4026
    :cond_29
    const/4 v0, 0x0

    return-object v0
.end method

.method getResizeMode()I
    .registers 2

    .line 3484
    iget v0, p0, Lcom/android/server/wm/WindowState;->mResizeMode:I

    return v0
.end method

.method public getRotationAnimationHint()I
    .registers 2

    .line 4031
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    if-eqz v0, :cond_7

    .line 4032
    iget v0, v0, Lcom/android/server/wm/AppWindowToken;->mRotationAnimationHint:I

    return v0

    .line 4034
    :cond_7
    const/4 v0, -0x1

    return v0
.end method

.method getSession()Landroid/view/SurfaceSession;
    .registers 2

    .line 4935
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mSession:Lcom/android/server/wm/Session;

    iget-object v0, v0, Lcom/android/server/wm/Session;->mSurfaceSession:Landroid/view/SurfaceSession;

    if-eqz v0, :cond_b

    .line 4936
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mSession:Lcom/android/server/wm/Session;

    iget-object v0, v0, Lcom/android/server/wm/Session;->mSurfaceSession:Landroid/view/SurfaceSession;

    return-object v0

    .line 4938
    :cond_b
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/WindowContainer;->getSession()Landroid/view/SurfaceSession;

    move-result-object v0

    return-object v0
.end method

.method getStableFrameLw()Landroid/graphics/Rect;
    .registers 2

    .line 1171
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mWindowFrames:Lcom/android/server/wm/WindowFrames;

    iget-object v0, v0, Lcom/android/server/wm/WindowFrames;->mStableFrame:Landroid/graphics/Rect;

    return-object v0
.end method

.method getStableInsets()Landroid/graphics/Rect;
    .registers 2

    .line 5247
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mWindowFrames:Lcom/android/server/wm/WindowFrames;

    iget-object v0, v0, Lcom/android/server/wm/WindowFrames;->mStableInsets:Landroid/graphics/Rect;

    return-object v0
.end method

.method getStableInsets(Landroid/graphics/Rect;)V
    .registers 3

    .line 5243
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mWindowFrames:Lcom/android/server/wm/WindowFrames;

    iget-object v0, v0, Lcom/android/server/wm/WindowFrames;->mStableInsets:Landroid/graphics/Rect;

    invoke-virtual {p1, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 5244
    return-void
.end method

.method getStack()Lcom/android/server/wm/TaskStack;
    .registers 4

    .line 1400
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getTask()Lcom/android/server/wm/Task;

    move-result-object v0

    .line 1401
    if-eqz v0, :cond_d

    .line 1402
    iget-object v1, v0, Lcom/android/server/wm/Task;->mStack:Lcom/android/server/wm/TaskStack;

    if-eqz v1, :cond_d

    .line 1403
    iget-object v0, v0, Lcom/android/server/wm/Task;->mStack:Lcom/android/server/wm/TaskStack;

    return-object v0

    .line 1408
    :cond_d
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    .line 1409
    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v1, v1, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v2, 0x7d0

    if-lt v1, v2, :cond_20

    if-eqz v0, :cond_20

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->getHomeStack()Lcom/android/server/wm/TaskStack;

    move-result-object v0

    goto :goto_21

    :cond_20
    const/4 v0, 0x0

    :goto_21
    return-object v0
.end method

.method public getSurfaceLayer()I
    .registers 2

    .line 1230
    iget v0, p0, Lcom/android/server/wm/WindowState;->mLayer:I

    return v0
.end method

.method getSurfaceTouchableRegion(Landroid/view/InputWindowHandle;I)I
    .registers 10

    .line 2294
    and-int/lit8 v0, p2, 0x28

    const/4 v1, 0x0

    if-nez v0, :cond_7

    const/4 v0, 0x1

    goto :goto_8

    :cond_7
    move v0, v1

    .line 2295
    :goto_8
    iget-object v2, p1, Landroid/view/InputWindowHandle;->touchableRegion:Landroid/graphics/Region;

    .line 2296
    invoke-direct {p0, p1}, Lcom/android/server/wm/WindowState;->setTouchableRegionCropIfNeeded(Landroid/view/InputWindowHandle;)V

    .line 2298
    iget-object v3, p0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    const/4 v4, 0x0

    if-eqz v3, :cond_17

    .line 2299
    invoke-virtual {v3}, Lcom/android/server/wm/AppWindowToken;->getResolvedOverrideBounds()Landroid/graphics/Rect;

    move-result-object v3

    goto :goto_18

    :cond_17
    move-object v3, v4

    .line 2300
    :goto_18
    if-eqz v3, :cond_66

    invoke-virtual {v3}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_66

    .line 2304
    if-eqz v0, :cond_32

    .line 2306
    or-int/lit8 p2, p2, 0x20

    .line 2307
    iget-object p1, p0, Lcom/android/server/wm/WindowState;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v0

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v3

    invoke-virtual {p1, v1, v1, v0, v3}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_3b

    .line 2310
    :cond_32
    iget-object p1, p0, Lcom/android/server/wm/WindowState;->mTmpRect:Landroid/graphics/Rect;

    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mWindowFrames:Lcom/android/server/wm/WindowFrames;

    iget-object v0, v0, Lcom/android/server/wm/WindowFrames;->mCompatFrame:Landroid/graphics/Rect;

    invoke-virtual {p1, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 2314
    :goto_3b
    iget-object p1, p0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    invoke-virtual {p1}, Lcom/android/server/wm/AppWindowToken;->inSizeCompatMode()Z

    move-result p1

    if-eqz p1, :cond_4c

    .line 2315
    iget-object p1, p0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    invoke-virtual {p1}, Lcom/android/server/wm/AppWindowToken;->getBounds()Landroid/graphics/Rect;

    move-result-object p1

    iget v1, p1, Landroid/graphics/Rect;->left:I

    goto :goto_4d

    :cond_4c
    nop

    .line 2316
    :goto_4d
    iget-object p1, p0, Lcom/android/server/wm/WindowState;->mTmpRect:Landroid/graphics/Rect;

    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mWindowFrames:Lcom/android/server/wm/WindowFrames;

    iget-object v0, v0, Lcom/android/server/wm/WindowFrames;->mFrame:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    sub-int/2addr v1, v0

    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mWindowFrames:Lcom/android/server/wm/WindowFrames;

    iget-object v0, v0, Lcom/android/server/wm/WindowFrames;->mFrame:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    neg-int v0, v0

    invoke-virtual {p1, v1, v0}, Landroid/graphics/Rect;->offset(II)V

    .line 2317
    iget-object p1, p0, Lcom/android/server/wm/WindowState;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v2, p1}, Landroid/graphics/Region;->set(Landroid/graphics/Rect;)Z

    .line 2318
    return p2

    .line 2321
    :cond_66
    if-eqz v0, :cond_b6

    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    if-eqz v1, :cond_b6

    .line 2323
    or-int/lit8 p2, p2, 0x20

    .line 2327
    iget-object p1, p0, Lcom/android/server/wm/WindowState;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v1, p1}, Lcom/android/server/wm/AppWindowToken;->getLetterboxInnerBounds(Landroid/graphics/Rect;)V

    .line 2328
    iget-object p1, p0, Lcom/android/server/wm/WindowState;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/graphics/Rect;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_90

    .line 2334
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getTask()Lcom/android/server/wm/Task;

    move-result-object p1

    .line 2335
    if-eqz p1, :cond_87

    .line 2336
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {p1, v0}, Lcom/android/server/wm/Task;->getDimBounds(Landroid/graphics/Rect;)V

    goto :goto_90

    .line 2338
    :cond_87
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getStack()Lcom/android/server/wm/TaskStack;

    move-result-object p1

    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {p1, v0}, Lcom/android/server/wm/TaskStack;->getDimBounds(Landroid/graphics/Rect;)V

    .line 2341
    :cond_90
    :goto_90
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->inFreeformWindowingMode()Z

    move-result p1

    if-eqz p1, :cond_aa

    .line 2344
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/server/wm/DisplayContent;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    .line 2345
    const/16 v0, 0x1e

    invoke-static {v0, p1}, Lcom/android/server/wm/WindowManagerService;->dipToPixel(ILandroid/util/DisplayMetrics;)I

    move-result p1

    .line 2347
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mTmpRect:Landroid/graphics/Rect;

    neg-int p1, p1

    invoke-virtual {v0, p1, p1}, Landroid/graphics/Rect;->inset(II)V

    .line 2349
    :cond_aa
    iget-object p1, p0, Lcom/android/server/wm/WindowState;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v2, p1}, Landroid/graphics/Region;->set(Landroid/graphics/Rect;)Z

    .line 2350
    invoke-direct {p0, v2}, Lcom/android/server/wm/WindowState;->cropRegionToStackBoundsIfNeeded(Landroid/graphics/Region;)V

    .line 2351
    invoke-direct {p0, v2}, Lcom/android/server/wm/WindowState;->subtractTouchExcludeRegionIfNeeded(Landroid/graphics/Region;)V

    goto :goto_f6

    .line 2352
    :cond_b6
    if-eqz v0, :cond_f3

    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mTapExcludeRegionHolder:Lcom/android/server/wm/TapExcludeRegionHolder;

    if-eqz v0, :cond_f3

    .line 2353
    invoke-static {}, Landroid/graphics/Region;->obtain()Landroid/graphics/Region;

    move-result-object v0

    .line 2354
    invoke-virtual {p0, v0}, Lcom/android/server/wm/WindowState;->amendTapExcludeRegion(Landroid/graphics/Region;)V

    .line 2355
    invoke-virtual {v0}, Landroid/graphics/Region;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_ef

    .line 2357
    or-int/lit8 p2, p2, 0x20

    .line 2361
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v1

    iget-object v3, p0, Lcom/android/server/wm/WindowState;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v1, v3}, Lcom/android/server/wm/DisplayContent;->getBounds(Landroid/graphics/Rect;)V

    .line 2362
    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    .line 2363
    iget-object v3, p0, Lcom/android/server/wm/WindowState;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v3

    .line 2364
    neg-int v5, v1

    neg-int v6, v3

    add-int/2addr v1, v1

    add-int/2addr v3, v3

    invoke-virtual {v2, v5, v6, v1, v3}, Landroid/graphics/Region;->set(IIII)Z

    .line 2366
    sget-object v1, Landroid/graphics/Region$Op;->DIFFERENCE:Landroid/graphics/Region$Op;

    invoke-virtual {v2, v0, v1}, Landroid/graphics/Region;->op(Landroid/graphics/Region;Landroid/graphics/Region$Op;)Z

    .line 2367
    invoke-virtual {p1, v4}, Landroid/view/InputWindowHandle;->setTouchableRegionCrop(Landroid/view/SurfaceControl;)V

    .line 2369
    :cond_ef
    invoke-virtual {v0}, Landroid/graphics/Region;->recycle()V

    .line 2370
    goto :goto_f6

    .line 2372
    :cond_f3
    invoke-virtual {p0, v2}, Lcom/android/server/wm/WindowState;->getTouchableRegion(Landroid/graphics/Region;)V

    .line 2375
    :goto_f6
    iget-object p1, p0, Lcom/android/server/wm/WindowState;->mWindowFrames:Lcom/android/server/wm/WindowFrames;

    iget-object p1, p1, Lcom/android/server/wm/WindowFrames;->mFrame:Landroid/graphics/Rect;

    iget p1, p1, Landroid/graphics/Rect;->left:I

    neg-int p1, p1

    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mWindowFrames:Lcom/android/server/wm/WindowFrames;

    iget-object v0, v0, Lcom/android/server/wm/WindowFrames;->mFrame:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    neg-int v0, v0

    invoke-virtual {v2, p1, v0}, Landroid/graphics/Region;->translate(II)V

    .line 2377
    return p2
.end method

.method getSystemGestureExclusion()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/graphics/Rect;",
            ">;"
        }
    .end annotation

    .line 670
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mExclusionRects:Ljava/util/List;

    return-object v0
.end method

.method public getSystemUiVisibility()I
    .registers 2

    .line 1225
    iget v0, p0, Lcom/android/server/wm/WindowState;->mSystemUiVisibility:I

    return v0
.end method

.method getTask()Lcom/android/server/wm/Task;
    .registers 2

    .line 1396
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Lcom/android/server/wm/AppWindowToken;->getTask()Lcom/android/server/wm/Task;

    move-result-object v0

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    return-object v0
.end method

.method getTopParentWindow()Lcom/android/server/wm/WindowState;
    .registers 4

    .line 3895
    nop

    .line 3896
    move-object v0, p0

    move-object v1, v0

    .line 3897
    :cond_3
    :goto_3
    if-eqz v0, :cond_11

    iget-boolean v2, v0, Lcom/android/server/wm/WindowState;->mIsChildWindow:Z

    if-eqz v2, :cond_11

    .line 3898
    invoke-virtual {v0}, Lcom/android/server/wm/WindowState;->getParentWindow()Lcom/android/server/wm/WindowState;

    move-result-object v0

    .line 3902
    if-eqz v0, :cond_3

    .line 3903
    move-object v1, v0

    goto :goto_3

    .line 3906
    :cond_11
    return-object v1
.end method

.method getTouchableRegion(Landroid/graphics/Region;)V
    .registers 5

    .line 3075
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mWindowFrames:Lcom/android/server/wm/WindowFrames;

    iget-object v0, v0, Lcom/android/server/wm/WindowFrames;->mFrame:Landroid/graphics/Rect;

    .line 3076
    iget v1, p0, Lcom/android/server/wm/WindowState;->mTouchableInsets:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_26

    const/4 v2, 0x2

    if-eq v1, v2, :cond_20

    const/4 v2, 0x3

    if-eq v1, v2, :cond_13

    .line 3079
    invoke-virtual {p1, v0}, Landroid/graphics/Region;->set(Landroid/graphics/Rect;)Z

    .line 3080
    goto :goto_2c

    .line 3088
    :cond_13
    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mGivenTouchableRegion:Landroid/graphics/Region;

    invoke-virtual {p1, v1}, Landroid/graphics/Region;->set(Landroid/graphics/Region;)Z

    .line 3089
    iget v1, v0, Landroid/graphics/Rect;->left:I

    iget v0, v0, Landroid/graphics/Rect;->top:I

    invoke-virtual {p1, v1, v0}, Landroid/graphics/Region;->translate(II)V

    goto :goto_2c

    .line 3085
    :cond_20
    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mGivenVisibleInsets:Landroid/graphics/Rect;

    invoke-static {p1, v0, v1}, Lcom/android/server/wm/WindowState;->applyInsets(Landroid/graphics/Region;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 3086
    goto :goto_2c

    .line 3082
    :cond_26
    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mGivenContentInsets:Landroid/graphics/Rect;

    invoke-static {p1, v0, v1}, Lcom/android/server/wm/WindowState;->applyInsets(Landroid/graphics/Region;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 3083
    nop

    .line 3093
    :goto_2c
    invoke-direct {p0, p1}, Lcom/android/server/wm/WindowState;->cropRegionToStackBoundsIfNeeded(Landroid/graphics/Region;)V

    .line 3094
    invoke-direct {p0, p1}, Lcom/android/server/wm/WindowState;->subtractTouchExcludeRegionIfNeeded(Landroid/graphics/Region;)V

    .line 3095
    return-void
.end method

.method getTransformationMatrix([FLandroid/graphics/Matrix;)V
    .registers 10

    .line 4824
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    iget v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mDsDx:F

    const/4 v1, 0x0

    aput v0, p1, v1

    .line 4825
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    iget v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mDtDx:F

    const/4 v1, 0x3

    aput v0, p1, v1

    .line 4826
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    iget v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mDtDy:F

    const/4 v1, 0x1

    aput v0, p1, v1

    .line 4827
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    iget v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mDsDy:F

    const/4 v1, 0x4

    aput v0, p1, v1

    .line 4828
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mSurfacePosition:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->x:I

    .line 4829
    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mSurfacePosition:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->y:I

    .line 4833
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v2

    .line 4834
    :goto_28
    if-eqz v2, :cond_75

    invoke-virtual {v2}, Lcom/android/server/wm/DisplayContent;->getParentWindow()Lcom/android/server/wm/WindowState;

    move-result-object v3

    if-eqz v3, :cond_75

    .line 4835
    invoke-virtual {v2}, Lcom/android/server/wm/DisplayContent;->getParentWindow()Lcom/android/server/wm/WindowState;

    move-result-object v3

    .line 4836
    int-to-float v0, v0

    iget-object v4, v3, Lcom/android/server/wm/WindowState;->mWindowFrames:Lcom/android/server/wm/WindowFrames;

    iget-object v4, v4, Lcom/android/server/wm/WindowFrames;->mFrame:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->left:I

    iget-object v5, v3, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget-object v5, v5, Landroid/view/WindowManager$LayoutParams;->surfaceInsets:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->left:I

    sub-int/2addr v4, v5

    int-to-float v4, v4

    .line 4837
    invoke-virtual {v2}, Lcom/android/server/wm/DisplayContent;->getLocationInParentWindow()Landroid/graphics/Point;

    move-result-object v5

    iget v5, v5, Landroid/graphics/Point;->x:I

    int-to-float v5, v5

    iget v6, v3, Lcom/android/server/wm/WindowState;->mGlobalScale:F

    mul-float/2addr v5, v6

    const/high16 v6, 0x3f000000  # 0.5f

    add-float/2addr v5, v6

    add-float/2addr v4, v5

    add-float/2addr v0, v4

    float-to-int v0, v0

    .line 4838
    int-to-float v1, v1

    iget-object v4, v3, Lcom/android/server/wm/WindowState;->mWindowFrames:Lcom/android/server/wm/WindowFrames;

    iget-object v4, v4, Lcom/android/server/wm/WindowFrames;->mFrame:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    iget-object v5, v3, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget-object v5, v5, Landroid/view/WindowManager$LayoutParams;->surfaceInsets:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->top:I

    sub-int/2addr v4, v5

    int-to-float v4, v4

    .line 4839
    invoke-virtual {v2}, Lcom/android/server/wm/DisplayContent;->getLocationInParentWindow()Landroid/graphics/Point;

    move-result-object v2

    iget v2, v2, Landroid/graphics/Point;->y:I

    int-to-float v2, v2

    iget v5, v3, Lcom/android/server/wm/WindowState;->mGlobalScale:F

    mul-float/2addr v2, v5

    add-float/2addr v2, v6

    add-float/2addr v4, v2

    add-float/2addr v1, v4

    float-to-int v1, v1

    .line 4840
    invoke-virtual {v3}, Lcom/android/server/wm/WindowState;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v2

    .line 4841
    goto :goto_28

    .line 4844
    :cond_75
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object v2

    .line 4845
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->isChildWindow()Z

    move-result v3

    if-eqz v3, :cond_a0

    .line 4846
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getParentWindow()Lcom/android/server/wm/WindowState;

    move-result-object v2

    .line 4847
    iget-object v3, v2, Lcom/android/server/wm/WindowState;->mWindowFrames:Lcom/android/server/wm/WindowFrames;

    iget-object v3, v3, Lcom/android/server/wm/WindowFrames;->mFrame:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    iget-object v4, v2, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget-object v4, v4, Landroid/view/WindowManager$LayoutParams;->surfaceInsets:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->left:I

    sub-int/2addr v3, v4

    add-int/2addr v0, v3

    .line 4848
    iget-object v3, v2, Lcom/android/server/wm/WindowState;->mWindowFrames:Lcom/android/server/wm/WindowFrames;

    iget-object v3, v3, Lcom/android/server/wm/WindowFrames;->mFrame:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    iget-object v2, v2, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget-object v2, v2, Landroid/view/WindowManager$LayoutParams;->surfaceInsets:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    sub-int/2addr v3, v2

    add-int/2addr v1, v3

    goto :goto_ad

    .line 4849
    :cond_a0
    if-eqz v2, :cond_ad

    .line 4850
    invoke-virtual {v2}, Lcom/android/server/wm/WindowContainer;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    .line 4851
    iget v3, v2, Landroid/graphics/Rect;->left:I

    add-int/2addr v0, v3

    .line 4852
    iget v2, v2, Landroid/graphics/Rect;->top:I

    add-int/2addr v1, v2

    goto :goto_ae

    .line 4849
    :cond_ad
    :goto_ad
    nop

    .line 4854
    :goto_ae
    const/4 v2, 0x2

    int-to-float v0, v0

    aput v0, p1, v2

    .line 4855
    const/4 v0, 0x5

    int-to-float v1, v1

    aput v1, p1, v0

    .line 4856
    const/4 v0, 0x6

    const/4 v1, 0x0

    aput v1, p1, v0

    .line 4857
    const/4 v0, 0x7

    aput v1, p1, v0

    .line 4858
    const/16 v0, 0x8

    const/high16 v1, 0x3f800000  # 1.0f

    aput v1, p1, v0

    .line 4859
    invoke-virtual {p2, p1}, Landroid/graphics/Matrix;->setValues([F)V

    .line 4860
    return-void
.end method

.method getVisibleBounds(Landroid/graphics/Rect;)V
    .registers 6

    .line 1417
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getTask()Lcom/android/server/wm/Task;

    move-result-object v0

    .line 1418
    const/4 v1, 0x0

    if-eqz v0, :cond_f

    invoke-virtual {v0}, Lcom/android/server/wm/Task;->cropWindowsToStackBounds()Z

    move-result v2

    if-eqz v2, :cond_f

    const/4 v2, 0x1

    goto :goto_10

    :cond_f
    move v2, v1

    .line 1419
    :goto_10
    invoke-virtual {p1}, Landroid/graphics/Rect;->setEmpty()V

    .line 1420
    iget-object v3, p0, Lcom/android/server/wm/WindowState;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->setEmpty()V

    .line 1421
    if-eqz v2, :cond_25

    .line 1422
    iget-object v0, v0, Lcom/android/server/wm/Task;->mStack:Lcom/android/server/wm/TaskStack;

    .line 1423
    if-eqz v0, :cond_24

    .line 1424
    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Lcom/android/server/wm/TaskStack;->getDimBounds(Landroid/graphics/Rect;)V

    goto :goto_25

    .line 1426
    :cond_24
    goto :goto_26

    .line 1430
    :cond_25
    :goto_25
    move v1, v2

    :goto_26
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mWindowFrames:Lcom/android/server/wm/WindowFrames;

    iget-object v0, v0, Lcom/android/server/wm/WindowFrames;->mVisibleFrame:Landroid/graphics/Rect;

    invoke-virtual {p1, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 1431
    if-eqz v1, :cond_34

    .line 1432
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {p1, v0}, Landroid/graphics/Rect;->intersect(Landroid/graphics/Rect;)Z

    .line 1435
    :cond_34
    invoke-virtual {p1}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_49

    .line 1436
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mWindowFrames:Lcom/android/server/wm/WindowFrames;

    iget-object v0, v0, Lcom/android/server/wm/WindowFrames;->mFrame:Landroid/graphics/Rect;

    invoke-virtual {p1, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 1437
    if-eqz v1, :cond_48

    .line 1438
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {p1, v0}, Landroid/graphics/Rect;->intersect(Landroid/graphics/Rect;)Z

    .line 1440
    :cond_48
    return-void

    .line 1442
    :cond_49
    return-void
.end method

.method public getVisibleFrameLw()Landroid/graphics/Rect;
    .registers 2

    .line 1167
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mWindowFrames:Lcom/android/server/wm/WindowFrames;

    iget-object v0, v0, Lcom/android/server/wm/WindowFrames;->mVisibleFrame:Landroid/graphics/Rect;

    return-object v0
.end method

.method getVisibleInsets()Landroid/graphics/Rect;
    .registers 2

    .line 5255
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mWindowFrames:Lcom/android/server/wm/WindowFrames;

    iget-object v0, v0, Lcom/android/server/wm/WindowFrames;->mVisibleInsets:Landroid/graphics/Rect;

    return-object v0
.end method

.method getWindow(Ljava/util/function/Predicate;)Lcom/android/server/wm/WindowState;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Predicate<",
            "Lcom/android/server/wm/WindowState;",
            ">;)",
            "Lcom/android/server/wm/WindowState;"
        }
    .end annotation

    .line 4282
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowList;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_11

    .line 4283
    invoke-interface {p1, p0}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_10

    move-object v1, p0

    :cond_10
    return-object v1

    .line 4289
    :cond_11
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .line 4290
    iget-object v2, p0, Lcom/android/server/wm/WindowState;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v2, v0}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/WindowState;

    .line 4292
    :goto_21
    if-ltz v0, :cond_3c

    iget v3, v2, Lcom/android/server/wm/WindowState;->mSubLayer:I

    if-ltz v3, :cond_3c

    .line 4293
    invoke-interface {p1, v2}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2e

    .line 4294
    return-object v2

    .line 4296
    :cond_2e
    add-int/lit8 v0, v0, -0x1

    .line 4297
    if-gez v0, :cond_33

    .line 4298
    goto :goto_3c

    .line 4300
    :cond_33
    iget-object v2, p0, Lcom/android/server/wm/WindowState;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v2, v0}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/WindowState;

    goto :goto_21

    .line 4303
    :cond_3c
    :goto_3c
    invoke-interface {p1, p0}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_43

    .line 4304
    return-object p0

    .line 4307
    :cond_43
    :goto_43
    if-ltz v0, :cond_5a

    .line 4308
    invoke-interface {p1, v2}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4c

    .line 4309
    return-object v2

    .line 4311
    :cond_4c
    add-int/lit8 v0, v0, -0x1

    .line 4312
    if-gez v0, :cond_51

    .line 4313
    goto :goto_5a

    .line 4315
    :cond_51
    iget-object v2, p0, Lcom/android/server/wm/WindowState;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v2, v0}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/WindowState;

    goto :goto_43

    .line 4318
    :cond_5a
    :goto_5a
    return-object v1
.end method

.method public getWindowFrames()Lcom/android/server/wm/WindowFrames;
    .registers 2

    .line 5260
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mWindowFrames:Lcom/android/server/wm/WindowFrames;

    return-object v0
.end method

.method getWindowInfo()Landroid/view/WindowInfo;
    .registers 7

    .line 4120
    invoke-static {}, Landroid/view/WindowInfo;->obtain()Landroid/view/WindowInfo;

    move-result-object v0

    .line 4121
    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v1, v1, Landroid/view/WindowManager$LayoutParams;->type:I

    iput v1, v0, Landroid/view/WindowInfo;->type:I

    .line 4122
    iget v1, p0, Lcom/android/server/wm/WindowState;->mLayer:I

    iput v1, v0, Landroid/view/WindowInfo;->layer:I

    .line 4123
    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mClient:Landroid/view/IWindow;

    invoke-interface {v1}, Landroid/view/IWindow;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    iput-object v1, v0, Landroid/view/WindowInfo;->token:Landroid/os/IBinder;

    .line 4124
    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    if-eqz v1, :cond_22

    .line 4125
    iget-object v1, v1, Lcom/android/server/wm/AppWindowToken;->appToken:Landroid/view/IApplicationToken;

    invoke-interface {v1}, Landroid/view/IApplicationToken;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    iput-object v1, v0, Landroid/view/WindowInfo;->activityToken:Landroid/os/IBinder;

    .line 4127
    :cond_22
    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget-object v1, v1, Landroid/view/WindowManager$LayoutParams;->accessibilityTitle:Ljava/lang/CharSequence;

    iput-object v1, v0, Landroid/view/WindowInfo;->title:Ljava/lang/CharSequence;

    .line 4130
    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v1, v1, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v2, 0x3e8

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-lt v1, v2, :cond_3c

    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v1, v1, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v2, 0x7cf

    if-gt v1, v2, :cond_3c

    move v1, v3

    goto :goto_3d

    :cond_3c
    move v1, v4

    .line 4134
    :goto_3d
    iget v2, v0, Landroid/view/WindowInfo;->type:I

    const/16 v5, 0x7f0

    if-ne v2, v5, :cond_45

    move v2, v3

    goto :goto_46

    :cond_45
    move v2, v4

    .line 4136
    :goto_46
    iget-object v5, v0, Landroid/view/WindowInfo;->title:Ljava/lang/CharSequence;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_61

    if-nez v1, :cond_52

    if-eqz v2, :cond_61

    .line 4137
    :cond_52
    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {v1}, Landroid/view/WindowManager$LayoutParams;->getTitle()Ljava/lang/CharSequence;

    move-result-object v1

    .line 4138
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_5f

    const/4 v1, 0x0

    :cond_5f
    iput-object v1, v0, Landroid/view/WindowInfo;->title:Ljava/lang/CharSequence;

    .line 4140
    :cond_61
    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget-wide v1, v1, Landroid/view/WindowManager$LayoutParams;->accessibilityIdOfAnchor:J

    iput-wide v1, v0, Landroid/view/WindowInfo;->accessibilityIdOfAnchor:J

    .line 4141
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->isFocused()Z

    move-result v1

    iput-boolean v1, v0, Landroid/view/WindowInfo;->focused:Z

    .line 4142
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getTask()Lcom/android/server/wm/Task;

    move-result-object v1

    .line 4143
    if-eqz v1, :cond_7b

    invoke-virtual {v1}, Lcom/android/server/wm/Task;->inPinnedWindowingMode()Z

    move-result v1

    if-eqz v1, :cond_7b

    move v1, v3

    goto :goto_7c

    :cond_7b
    move v1, v4

    :goto_7c
    iput-boolean v1, v0, Landroid/view/WindowInfo;->inPictureInPicture:Z

    .line 4144
    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v1, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v2, 0x40000

    and-int/2addr v1, v2

    if-eqz v1, :cond_88

    goto :goto_89

    :cond_88
    move v3, v4

    :goto_89
    iput-boolean v3, v0, Landroid/view/WindowInfo;->hasFlagWatchOutsideTouch:Z

    .line 4147
    iget-boolean v1, p0, Lcom/android/server/wm/WindowState;->mIsChildWindow:Z

    if-eqz v1, :cond_9b

    .line 4148
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getParentWindow()Lcom/android/server/wm/WindowState;

    move-result-object v1

    iget-object v1, v1, Lcom/android/server/wm/WindowState;->mClient:Landroid/view/IWindow;

    invoke-interface {v1}, Landroid/view/IWindow;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    iput-object v1, v0, Landroid/view/WindowInfo;->parentToken:Landroid/os/IBinder;

    .line 4151
    :cond_9b
    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowList;->size()I

    move-result v1

    .line 4152
    if-lez v1, :cond_c7

    .line 4153
    iget-object v2, v0, Landroid/view/WindowInfo;->childTokens:Ljava/util/List;

    if-nez v2, :cond_ae

    .line 4154
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v2, v0, Landroid/view/WindowInfo;->childTokens:Ljava/util/List;

    .line 4156
    :cond_ae
    nop

    :goto_af
    if-ge v4, v1, :cond_c7

    .line 4157
    iget-object v2, p0, Lcom/android/server/wm/WindowState;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v2, v4}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/WindowState;

    .line 4158
    iget-object v3, v0, Landroid/view/WindowInfo;->childTokens:Ljava/util/List;

    iget-object v2, v2, Lcom/android/server/wm/WindowState;->mClient:Landroid/view/IWindow;

    invoke-interface {v2}, Landroid/view/IWindow;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4156
    add-int/lit8 v4, v4, 0x1

    goto :goto_af

    .line 4161
    :cond_c7
    return-object v0
.end method

.method getWindowTag()Ljava/lang/CharSequence;
    .registers 3

    .line 3746
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {v0}, Landroid/view/WindowManager$LayoutParams;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    .line 3747
    if-eqz v0, :cond_e

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-gtz v1, :cond_12

    .line 3748
    :cond_e
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget-object v0, v0, Landroid/view/WindowManager$LayoutParams;->packageName:Ljava/lang/String;

    .line 3750
    :cond_12
    return-object v0
.end method

.method getWmDisplayCutout()Lcom/android/server/wm/utils/WmDisplayCutout;
    .registers 2

    .line 1187
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mWindowFrames:Lcom/android/server/wm/WindowFrames;

    iget-object v0, v0, Lcom/android/server/wm/WindowFrames;->mDisplayCutout:Lcom/android/server/wm/utils/WmDisplayCutout;

    return-object v0
.end method

.method handleWindowMovedIfNeeded()V
    .registers 6

    .line 1812
    invoke-direct {p0}, Lcom/android/server/wm/WindowState;->hasMoved()Z

    move-result v0

    if-nez v0, :cond_7

    .line 1813
    return-void

    .line 1818
    :cond_7
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mWindowFrames:Lcom/android/server/wm/WindowFrames;

    iget-object v0, v0, Lcom/android/server/wm/WindowFrames;->mFrame:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    .line 1819
    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mWindowFrames:Lcom/android/server/wm/WindowFrames;

    iget-object v1, v1, Lcom/android/server/wm/WindowFrames;->mFrame:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    .line 1820
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getTask()Lcom/android/server/wm/Task;

    move-result-object v2

    .line 1821
    const/4 v3, 0x0

    if-eqz v2, :cond_2c

    iget-object v4, v2, Lcom/android/server/wm/Task;->mStack:Lcom/android/server/wm/TaskStack;

    .line 1822
    invoke-virtual {v4}, Lcom/android/server/wm/TaskStack;->isAdjustedForMinimizedDockedStack()Z

    move-result v4

    if-nez v4, :cond_2a

    iget-object v2, v2, Lcom/android/server/wm/Task;->mStack:Lcom/android/server/wm/TaskStack;

    .line 1823
    invoke-virtual {v2}, Lcom/android/server/wm/TaskStack;->isAdjustedForIme()Z

    move-result v2

    if-eqz v2, :cond_2c

    :cond_2a
    const/4 v2, 0x1

    goto :goto_2d

    :cond_2c
    move v2, v3

    .line 1824
    :goto_2d
    iget-object v4, p0, Lcom/android/server/wm/WindowState;->mToken:Lcom/android/server/wm/WindowToken;

    invoke-virtual {v4}, Lcom/android/server/wm/WindowToken;->okToAnimate()Z

    move-result v4

    if-eqz v4, :cond_5c

    iget-object v4, p0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v4, v4, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    and-int/lit8 v4, v4, 0x40

    if-nez v4, :cond_5c

    .line 1826
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->isDragResizing()Z

    move-result v4

    if-nez v4, :cond_5c

    if-nez v2, :cond_5c

    .line 1827
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getWindowConfiguration()Landroid/app/WindowConfiguration;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/WindowConfiguration;->hasMovementAnimations()Z

    move-result v2

    if-eqz v2, :cond_5c

    iget-object v2, p0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    iget-boolean v2, v2, Lcom/android/server/wm/WindowStateAnimator;->mLastHidden:Z

    if-nez v2, :cond_5c

    iget-boolean v2, p0, Lcom/android/server/wm/WindowState;->mSeamlesslyRotated:Z

    if-nez v2, :cond_5c

    .line 1830
    invoke-direct {p0, v0, v1}, Lcom/android/server/wm/WindowState;->startMoveAnimation(II)V

    .line 1835
    :cond_5c
    iget-object v2, p0, Lcom/android/server/wm/WindowState;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mAccessibilityController:Lcom/android/server/wm/AccessibilityController;

    if-eqz v2, :cond_79

    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getDisplayId()I

    move-result v2

    if-eqz v2, :cond_72

    .line 1836
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/wm/DisplayContent;->getParentWindow()Lcom/android/server/wm/WindowState;

    move-result-object v2

    if-eqz v2, :cond_79

    .line 1837
    :cond_72
    iget-object v2, p0, Lcom/android/server/wm/WindowState;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mAccessibilityController:Lcom/android/server/wm/AccessibilityController;

    invoke-virtual {v2}, Lcom/android/server/wm/AccessibilityController;->onSomeWindowResizedOrMovedLocked()V

    .line 1839
    :cond_79
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->updateLocationInParentDisplayIfNeeded()V

    .line 1842
    :try_start_7c
    iget-object v2, p0, Lcom/android/server/wm/WindowState;->mClient:Landroid/view/IWindow;

    invoke-interface {v2, v0, v1}, Landroid/view/IWindow;->moved(II)V
    :try_end_81
    .catch Landroid/os/RemoteException; {:try_start_7c .. :try_end_81} :catch_82

    .line 1844
    goto :goto_83

    .line 1843
    :catch_82
    move-exception v0

    .line 1845
    :goto_83
    iput-boolean v3, p0, Lcom/android/server/wm/WindowState;->mMovedByResize:Z

    .line 1846
    return-void
.end method

.method public hasAppShownWindows()Z
    .registers 2

    .line 1452
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    if-eqz v0, :cond_10

    iget-boolean v0, v0, Lcom/android/server/wm/AppWindowToken;->firstWindowDrawn:Z

    if-nez v0, :cond_e

    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    iget-boolean v0, v0, Lcom/android/server/wm/AppWindowToken;->startingDisplayed:Z

    if-eqz v0, :cond_10

    :cond_e
    const/4 v0, 0x1

    goto :goto_11

    :cond_10
    const/4 v0, 0x0

    :goto_11
    return v0
.end method

.method hasContentToDisplay()Z
    .registers 2

    .line 1474
    iget-boolean v0, p0, Lcom/android/server/wm/WindowState;->mAppFreezing:Z

    if-nez v0, :cond_22

    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->isDrawnLw()Z

    move-result v0

    if-eqz v0, :cond_22

    iget v0, p0, Lcom/android/server/wm/WindowState;->mViewVisibility:I

    if-eqz v0, :cond_20

    .line 1475
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->isAnimating()Z

    move-result v0

    if-eqz v0, :cond_22

    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    iget-object v0, v0, Lcom/android/server/wm/DisplayContent;->mAppTransition:Lcom/android/server/wm/AppTransition;

    invoke-virtual {v0}, Lcom/android/server/wm/AppTransition;->isTransitionSet()Z

    move-result v0

    if-nez v0, :cond_22

    .line 1476
    :cond_20
    const/4 v0, 0x1

    return v0

    .line 1479
    :cond_22
    invoke-super {p0}, Lcom/android/server/wm/WindowContainer;->hasContentToDisplay()Z

    move-result v0

    return v0
.end method

.method public hasDrawnLw()Z
    .registers 3

    .line 2623
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    iget v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mDrawState:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_9

    const/4 v0, 0x1

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    return v0
.end method

.method hasTapExcludeRegion()Z
    .registers 2

    .line 5184
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mTapExcludeRegionHolder:Lcom/android/server/wm/TapExcludeRegionHolder;

    if-eqz v0, :cond_c

    invoke-virtual {v0}, Lcom/android/server/wm/TapExcludeRegionHolder;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    return v0
.end method

.method hasVisibleNotDrawnWallpaper()Z
    .registers 4

    .line 4490
    iget-boolean v0, p0, Lcom/android/server/wm/WindowState;->mWallpaperVisible:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_c

    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->isDrawnLw()Z

    move-result v0

    if-nez v0, :cond_c

    .line 4491
    return v1

    .line 4493
    :cond_c
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowList;->size()I

    move-result v0

    sub-int/2addr v0, v1

    :goto_13
    if-ltz v0, :cond_27

    .line 4494
    iget-object v2, p0, Lcom/android/server/wm/WindowState;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v2, v0}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/WindowState;

    .line 4495
    invoke-virtual {v2}, Lcom/android/server/wm/WindowState;->hasVisibleNotDrawnWallpaper()Z

    move-result v2

    if-eqz v2, :cond_24

    .line 4496
    return v1

    .line 4493
    :cond_24
    add-int/lit8 v0, v0, -0x1

    goto :goto_13

    .line 4499
    :cond_27
    const/4 v0, 0x0

    return v0
.end method

.method public hideLw(Z)Z
    .registers 3

    .line 2685
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/android/server/wm/WindowState;->hideLw(ZZ)Z

    move-result p1

    return p1
.end method

.method hideLw(ZZ)Z
    .registers 6

    .line 2689
    const/4 v0, 0x0

    if-eqz p1, :cond_c

    .line 2690
    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mToken:Lcom/android/server/wm/WindowToken;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowToken;->okToAnimate()Z

    move-result v1

    if-nez v1, :cond_c

    .line 2691
    move p1, v0

    .line 2695
    :cond_c
    if-eqz p1, :cond_11

    iget-boolean v1, p0, Lcom/android/server/wm/WindowState;->mLegacyPolicyVisibilityAfterAnim:Z

    goto :goto_15

    :cond_11
    invoke-direct {p0}, Lcom/android/server/wm/WindowState;->isLegacyPolicyVisibility()Z

    move-result v1

    .line 2696
    :goto_15
    if-nez v1, :cond_18

    .line 2698
    return v0

    .line 2700
    :cond_18
    if-eqz p1, :cond_27

    .line 2701
    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    const/4 v2, 0x2

    invoke-virtual {v1, v2, v0}, Lcom/android/server/wm/WindowStateAnimator;->applyAnimationLocked(IZ)Z

    .line 2702
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->isAnimating()Z

    move-result v1

    if-nez v1, :cond_27

    .line 2703
    move p1, v0

    .line 2706
    :cond_27
    iput-boolean v0, p0, Lcom/android/server/wm/WindowState;->mLegacyPolicyVisibilityAfterAnim:Z

    .line 2707
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->isFocused()Z

    move-result v1

    .line 2708
    const/4 v2, 0x1

    if-nez p1, :cond_3e

    .line 2710
    invoke-virtual {p0, v2}, Lcom/android/server/wm/WindowState;->clearPolicyVisibilityFlag(I)V

    .line 2714
    iget-object p1, p0, Lcom/android/server/wm/WindowState;->mWmService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {p1}, Lcom/android/server/wm/WindowManagerService;->enableScreenIfNeededLocked()V

    .line 2715
    if-eqz v1, :cond_3e

    .line 2718
    iget-object p1, p0, Lcom/android/server/wm/WindowState;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iput-boolean v2, p1, Lcom/android/server/wm/WindowManagerService;->mFocusMayChange:Z

    .line 2721
    :cond_3e
    if-eqz p2, :cond_45

    .line 2722
    iget-object p1, p0, Lcom/android/server/wm/WindowState;->mWmService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {p1}, Lcom/android/server/wm/WindowManagerService;->scheduleAnimationLocked()V

    .line 2724
    :cond_45
    if-eqz v1, :cond_4c

    .line 2725
    iget-object p1, p0, Lcom/android/server/wm/WindowState;->mWmService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {p1, v0, v0}, Lcom/android/server/wm/WindowManagerService;->updateFocusedWindowLocked(IZ)Z

    .line 2727
    :cond_4c
    return v2
.end method

.method hideNonSystemOverlayWindowsWhenVisible()Z
    .registers 3

    .line 3882
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    const/high16 v1, 0x80000

    and-int/2addr v0, v1

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mSession:Lcom/android/server/wm/Session;

    iget-boolean v0, v0, Lcom/android/server/wm/Session;->mCanHideNonSystemOverlayWindows:Z

    if-eqz v0, :cond_11

    const/4 v0, 0x1

    goto :goto_12

    :cond_11
    const/4 v0, 0x0

    :goto_12
    return v0
.end method

.method public hidePermanentlyLw()V
    .registers 2

    .line 2823
    iget-boolean v0, p0, Lcom/android/server/wm/WindowState;->mPermanentlyHidden:Z

    if-nez v0, :cond_a

    .line 2824
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/wm/WindowState;->mPermanentlyHidden:Z

    .line 2825
    invoke-virtual {p0, v0, v0}, Lcom/android/server/wm/WindowState;->hideLw(ZZ)Z

    .line 2827
    :cond_a
    return-void
.end method

.method hideWallpaperWindow(ZLjava/lang/String;)V
    .registers 5

    .line 4448
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_8
    if-ltz v0, :cond_18

    .line 4449
    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v1, v0}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/WindowState;

    .line 4450
    invoke-virtual {v1, p1, p2}, Lcom/android/server/wm/WindowState;->hideWallpaperWindow(ZLjava/lang/String;)V

    .line 4448
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    .line 4452
    :cond_18
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    iget-boolean v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mLastHidden:Z

    if-eqz v0, :cond_20

    if-eqz p1, :cond_3e

    .line 4453
    :cond_20
    iget-object p1, p0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    invoke-virtual {p1, p2}, Lcom/android/server/wm/WindowStateAnimator;->hide(Ljava/lang/String;)V

    .line 4454
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object p1

    iget-object p1, p1, Lcom/android/server/wm/DisplayContent;->mWallpaperController:Lcom/android/server/wm/WallpaperController;

    const/4 p2, 0x0

    iput-object p2, p1, Lcom/android/server/wm/WallpaperController;->mDeferredHideWallpaper:Lcom/android/server/wm/WindowState;

    .line 4455
    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/android/server/wm/WindowState;->dispatchWallpaperVisibility(Z)V

    .line 4456
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object p1

    .line 4457
    if-eqz p1, :cond_3e

    .line 4458
    iget p2, p1, Lcom/android/server/wm/DisplayContent;->pendingLayoutChanges:I

    or-int/lit8 p2, p2, 0x4

    iput p2, p1, Lcom/android/server/wm/DisplayContent;->pendingLayoutChanges:I

    .line 4465
    :cond_3e
    return-void
.end method

.method inSizeCompatMode()Z
    .registers 3

    .line 836
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    and-int/lit16 v0, v0, 0x80

    if-nez v0, :cond_1c

    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    if-eqz v0, :cond_1a

    .line 837
    invoke-virtual {v0}, Lcom/android/server/wm/AppWindowToken;->inSizeCompatMode()Z

    move-result v0

    if-eqz v0, :cond_1a

    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1a

    goto :goto_1c

    :cond_1a
    const/4 v0, 0x0

    goto :goto_1d

    :cond_1c
    :goto_1c
    const/4 v0, 0x1

    .line 836
    :goto_1d
    return v0
.end method

.method initAppOpsState()V
    .registers 6

    .line 2780
    iget v0, p0, Lcom/android/server/wm/WindowState;->mAppOp:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_27

    iget-boolean v0, p0, Lcom/android/server/wm/WindowState;->mAppOpVisibility:Z

    if-nez v0, :cond_a

    goto :goto_27

    .line 2787
    :cond_a
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mAppOps:Landroid/app/AppOpsManager;

    iget v1, p0, Lcom/android/server/wm/WindowState;->mAppOp:I

    .line 2788
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getOwningUid()I

    move-result v2

    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getOwningPackage()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    .line 2787
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/app/AppOpsManager;->startOpNoThrow(IILjava/lang/String;Z)I

    move-result v0

    .line 2789
    if-eqz v0, :cond_26

    const/4 v1, 0x3

    if-eq v0, v1, :cond_26

    .line 2790
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/server/wm/WindowState;->setAppOpVisibilityLw(Z)V

    .line 2792
    :cond_26
    return-void

    .line 2781
    :cond_27
    :goto_27
    return-void
.end method

.method public isAlive()Z
    .registers 2

    .line 2854
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mClient:Landroid/view/IWindow;

    invoke-interface {v0}, Landroid/view/IWindow;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-interface {v0}, Landroid/os/IBinder;->isBinderAlive()Z

    move-result v0

    return v0
.end method

.method public isAnimatingLw()Z
    .registers 2

    .line 1654
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->isAnimating()Z

    move-result v0

    return v0
.end method

.method isChildWindow()Z
    .registers 2

    .line 3867
    iget-boolean v0, p0, Lcom/android/server/wm/WindowState;->mIsChildWindow:Z

    return v0
.end method

.method isClosing()Z
    .registers 2

    .line 2858
    iget-boolean v0, p0, Lcom/android/server/wm/WindowState;->mAnimatingExit:Z

    if-nez v0, :cond_11

    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    if-eqz v0, :cond_f

    invoke-virtual {v0}, Lcom/android/server/wm/AppWindowToken;->isClosingOrEnteringPip()Z

    move-result v0

    if-eqz v0, :cond_f

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

.method public isDefaultDisplay()Z
    .registers 2

    .line 3033
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    .line 3034
    if-nez v0, :cond_8

    .line 3036
    const/4 v0, 0x0

    return v0

    .line 3038
    :cond_8
    iget-boolean v0, v0, Lcom/android/server/wm/DisplayContent;->isDefaultDisplay:Z

    return v0
.end method

.method public isDimming()Z
    .registers 2

    .line 5112
    iget-boolean v0, p0, Lcom/android/server/wm/WindowState;->mIsDimming:Z

    return v0
.end method

.method public isDisplayedLw()Z
    .registers 3

    .line 1643
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    .line 1644
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->isDrawnLw()Z

    move-result v1

    if-eqz v1, :cond_22

    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->isVisibleByPolicy()Z

    move-result v1

    if-eqz v1, :cond_22

    .line 1645
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->isParentWindowHidden()Z

    move-result v1

    if-nez v1, :cond_1a

    if-eqz v0, :cond_20

    iget-boolean v0, v0, Lcom/android/server/wm/AppWindowToken;->hiddenRequested:Z

    if-eqz v0, :cond_20

    .line 1646
    :cond_1a
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->isAnimating()Z

    move-result v0

    if-eqz v0, :cond_22

    :cond_20
    const/4 v0, 0x1

    goto :goto_23

    :cond_22
    const/4 v0, 0x0

    .line 1644
    :goto_23
    return v0
.end method

.method isDockedResizing()Z
    .registers 3

    .line 3534
    iget-boolean v0, p0, Lcom/android/server/wm/WindowState;->mDragResizing:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_b

    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getResizeMode()I

    move-result v0

    if-eq v0, v1, :cond_1b

    .line 3535
    :cond_b
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->isChildWindow()Z

    move-result v0

    if-eqz v0, :cond_1c

    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getParentWindow()Lcom/android/server/wm/WindowState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/WindowState;->isDockedResizing()Z

    move-result v0

    if-eqz v0, :cond_1c

    :cond_1b
    goto :goto_1d

    :cond_1c
    const/4 v1, 0x0

    .line 3534
    :goto_1d
    return v1
.end method

.method isDragResizeChanged()Z
    .registers 3

    .line 3456
    iget-boolean v0, p0, Lcom/android/server/wm/WindowState;->mDragResizing:Z

    invoke-direct {p0}, Lcom/android/server/wm/WindowState;->computeDragResizing()Z

    move-result v1

    if-eq v0, v1, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method

.method isDragResizing()Z
    .registers 2

    .line 3530
    iget-boolean v0, p0, Lcom/android/server/wm/WindowState;->mDragResizing:Z

    return v0
.end method

.method public isDrawFinishedLw()Z
    .registers 3

    .line 1674
    iget-boolean v0, p0, Lcom/android/server/wm/WindowState;->mHasSurface:Z

    if-eqz v0, :cond_1f

    iget-boolean v0, p0, Lcom/android/server/wm/WindowState;->mDestroying:Z

    if-nez v0, :cond_1f

    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    iget v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mDrawState:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1d

    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    iget v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mDrawState:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1d

    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    iget v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mDrawState:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_1f

    :cond_1d
    const/4 v0, 0x1

    goto :goto_20

    :cond_1f
    const/4 v0, 0x0

    :goto_20
    return v0
.end method

.method public isDrawnLw()Z
    .registers 3

    .line 1686
    iget-boolean v0, p0, Lcom/android/server/wm/WindowState;->mHasSurface:Z

    if-eqz v0, :cond_18

    iget-boolean v0, p0, Lcom/android/server/wm/WindowState;->mDestroying:Z

    if-nez v0, :cond_18

    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    iget v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mDrawState:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_16

    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    iget v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mDrawState:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_18

    :cond_16
    const/4 v0, 0x1

    goto :goto_19

    :cond_18
    const/4 v0, 0x0

    :goto_19
    return v0
.end method

.method isFocused()Z
    .registers 2

    .line 3401
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    iget-object v0, v0, Lcom/android/server/wm/DisplayContent;->mCurrentFocus:Lcom/android/server/wm/WindowState;

    if-ne v0, p0, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method

.method public isGoneForLayoutLw()Z
    .registers 4

    .line 1659
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    .line 1660
    iget v1, p0, Lcom/android/server/wm/WindowState;->mViewVisibility:I

    const/16 v2, 0x8

    if-eq v1, v2, :cond_33

    iget-boolean v1, p0, Lcom/android/server/wm/WindowState;->mRelayoutCalled:Z

    if-eqz v1, :cond_33

    if-nez v0, :cond_16

    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mToken:Lcom/android/server/wm/WindowToken;

    .line 1662
    invoke-virtual {v1}, Lcom/android/server/wm/WindowToken;->isHidden()Z

    move-result v1

    if-nez v1, :cond_33

    :cond_16
    if-eqz v0, :cond_1c

    iget-boolean v0, v0, Lcom/android/server/wm/AppWindowToken;->hiddenRequested:Z

    if-nez v0, :cond_33

    .line 1664
    :cond_1c
    invoke-direct {p0}, Lcom/android/server/wm/WindowState;->isParentWindowGoneForLayout()Z

    move-result v0

    if-nez v0, :cond_33

    iget-boolean v0, p0, Lcom/android/server/wm/WindowState;->mAnimatingExit:Z

    if-eqz v0, :cond_2c

    .line 1665
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->isAnimatingLw()Z

    move-result v0

    if-eqz v0, :cond_30

    :cond_2c
    iget-boolean v0, p0, Lcom/android/server/wm/WindowState;->mDestroying:Z

    if-eqz v0, :cond_31

    :cond_30
    goto :goto_33

    :cond_31
    const/4 v0, 0x0

    goto :goto_34

    :cond_33
    :goto_33
    const/4 v0, 0x1

    .line 1660
    :goto_34
    return v0
.end method

.method isIdentityMatrix(FFFF)Z
    .registers 8

    .line 1456
    const v0, 0x3f7fff58  # 0.99999f

    cmpg-float v1, p1, v0

    const/4 v2, 0x0

    if-ltz v1, :cond_36

    const v1, 0x3f800054  # 1.00001f

    cmpl-float p1, p1, v1

    if-lez p1, :cond_10

    goto :goto_36

    .line 1457
    :cond_10
    cmpg-float p1, p4, v0

    if-ltz p1, :cond_35

    cmpl-float p1, p4, v1

    if-lez p1, :cond_19

    goto :goto_35

    .line 1458
    :cond_19
    const p1, -0x4a79c843  # -1.0E-6f

    cmpg-float p4, p2, p1

    if-ltz p4, :cond_34

    const p4, 0x358637bd  # 1.0E-6f

    cmpl-float p2, p2, p4

    if-lez p2, :cond_28

    goto :goto_34

    .line 1459
    :cond_28
    cmpg-float p1, p3, p1

    if-ltz p1, :cond_33

    cmpl-float p1, p3, p4

    if-lez p1, :cond_31

    goto :goto_33

    .line 1460
    :cond_31
    const/4 p1, 0x1

    return p1

    .line 1459
    :cond_33
    :goto_33
    return v2

    .line 1458
    :cond_34
    :goto_34
    return v2

    .line 1457
    :cond_35
    :goto_35
    return v2

    .line 1456
    :cond_36
    :goto_36
    return v2
.end method

.method isImplicitlyExcludingAllSystemGestures()Z
    .registers 5

    .line 690
    iget v0, p0, Lcom/android/server/wm/WindowState;->mSystemUiVisibility:I

    const/16 v1, 0x1002

    and-int/2addr v0, v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne v0, v1, :cond_b

    move v0, v2

    goto :goto_c

    :cond_b
    move v0, v3

    .line 692
    :goto_c
    if-eqz v0, :cond_1f

    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-boolean v0, v0, Lcom/android/server/wm/WindowManagerService;->mSystemGestureExcludedByPreQStickyImmersive:Z

    if-eqz v0, :cond_1f

    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    if-eqz v0, :cond_1f

    iget v0, v0, Lcom/android/server/wm/AppWindowToken;->mTargetSdk:I

    const/16 v1, 0x1d

    if-ge v0, v1, :cond_1f

    goto :goto_20

    :cond_1f
    move v2, v3

    :goto_20
    return v2
.end method

.method public isInputMethodTarget()Z
    .registers 2

    .line 5189
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    iget-object v0, v0, Lcom/android/server/wm/DisplayContent;->mInputMethodTarget:Lcom/android/server/wm/WindowState;

    if-ne v0, p0, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method

.method public isInputMethodWindow()Z
    .registers 2

    .line 4040
    iget-boolean v0, p0, Lcom/android/server/wm/WindowState;->mIsImWindow:Z

    return v0
.end method

.method isInteresting()Z
    .registers 3

    .line 1600
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    if-eqz v0, :cond_18

    iget-boolean v1, p0, Lcom/android/server/wm/WindowState;->mAppDied:Z

    if-nez v1, :cond_18

    .line 1601
    invoke-virtual {v0}, Lcom/android/server/wm/AppWindowToken;->isFreezingScreen()Z

    move-result v0

    if-eqz v0, :cond_12

    iget-boolean v0, p0, Lcom/android/server/wm/WindowState;->mAppFreezing:Z

    if-nez v0, :cond_18

    :cond_12
    iget v0, p0, Lcom/android/server/wm/WindowState;->mViewVisibility:I

    if-nez v0, :cond_18

    const/4 v0, 0x1

    goto :goto_19

    :cond_18
    const/4 v0, 0x0

    .line 1600
    :goto_19
    return v0
.end method

.method isLaidOut()Z
    .registers 3

    .line 4736
    iget v0, p0, Lcom/android/server/wm/WindowState;->mLayoutSeq:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_7

    const/4 v0, 0x1

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    :goto_8
    return v0
.end method

.method isLastConfigReportedToClient()Z
    .registers 2

    .line 1884
    iget-boolean v0, p0, Lcom/android/server/wm/WindowState;->mLastConfigReportedToClient:Z

    return v0
.end method

.method isLetterboxedAppWindow()Z
    .registers 2

    .line 3413
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->inMultiWindowMode()Z

    move-result v0

    if-nez v0, :cond_c

    invoke-direct {p0}, Lcom/android/server/wm/WindowState;->matchesDisplayBounds()Z

    move-result v0

    if-eqz v0, :cond_12

    .line 3414
    :cond_c
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->isLetterboxedForDisplayCutoutLw()Z

    move-result v0

    if-eqz v0, :cond_14

    :cond_12
    const/4 v0, 0x1

    goto :goto_15

    :cond_14
    const/4 v0, 0x0

    .line 3413
    :goto_15
    return v0
.end method

.method public isLetterboxedForDisplayCutoutLw()Z
    .registers 4

    .line 3419
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    .line 3421
    return v1

    .line 3423
    :cond_6
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mWindowFrames:Lcom/android/server/wm/WindowFrames;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowFrames;->parentFrameWasClippedByDisplayCutout()Z

    move-result v0

    if-nez v0, :cond_f

    .line 3425
    return v1

    .line 3427
    :cond_f
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->layoutInDisplayCutoutMode:I

    const/4 v2, 0x1

    if-ne v0, v2, :cond_17

    .line 3429
    return v1

    .line 3431
    :cond_17
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {v0}, Landroid/view/WindowManager$LayoutParams;->isFullscreen()Z

    move-result v0

    if-nez v0, :cond_20

    .line 3433
    return v1

    .line 3437
    :cond_20
    invoke-direct {p0}, Lcom/android/server/wm/WindowState;->frameCoversEntireAppTokenBounds()Z

    move-result v0

    xor-int/2addr v0, v2

    return v0
.end method

.method public isLetterboxedOverlappingWith(Landroid/graphics/Rect;)Z
    .registers 3

    .line 3452
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    if-eqz v0, :cond_c

    invoke-virtual {v0, p1}, Lcom/android/server/wm/AppWindowToken;->isLetterboxOverlappingWith(Landroid/graphics/Rect;)Z

    move-result p1

    if-eqz p1, :cond_c

    const/4 p1, 0x1

    goto :goto_d

    :cond_c
    const/4 p1, 0x0

    :goto_d
    return p1
.end method

.method isObscuringDisplay()Z
    .registers 4

    .line 1861
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getTask()Lcom/android/server/wm/Task;

    move-result-object v0

    .line 1862
    const/4 v1, 0x0

    if-eqz v0, :cond_14

    iget-object v2, v0, Lcom/android/server/wm/Task;->mStack:Lcom/android/server/wm/TaskStack;

    if-eqz v2, :cond_14

    iget-object v0, v0, Lcom/android/server/wm/Task;->mStack:Lcom/android/server/wm/TaskStack;

    invoke-virtual {v0}, Lcom/android/server/wm/TaskStack;->fillsParent()Z

    move-result v0

    if-nez v0, :cond_14

    .line 1863
    return v1

    .line 1865
    :cond_14
    invoke-direct {p0}, Lcom/android/server/wm/WindowState;->isOpaqueDrawn()Z

    move-result v0

    if-eqz v0, :cond_21

    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->fillsDisplay()Z

    move-result v0

    if-eqz v0, :cond_21

    const/4 v1, 0x1

    :cond_21
    return v1
.end method

.method isOnScreen()Z
    .registers 5

    .line 1573
    iget-boolean v0, p0, Lcom/android/server/wm/WindowState;->mHasSurface:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_35

    iget-boolean v0, p0, Lcom/android/server/wm/WindowState;->mDestroying:Z

    if-nez v0, :cond_35

    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->isVisibleByPolicy()Z

    move-result v0

    if-nez v0, :cond_10

    goto :goto_35

    .line 1576
    :cond_10
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    .line 1577
    const/4 v2, 0x1

    if-eqz v0, :cond_27

    .line 1578
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->isParentWindowHidden()Z

    move-result v3

    if-nez v3, :cond_1f

    iget-boolean v0, v0, Lcom/android/server/wm/AppWindowToken;->hiddenRequested:Z

    if-eqz v0, :cond_25

    .line 1579
    :cond_1f
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->isAnimating()Z

    move-result v0

    if-eqz v0, :cond_26

    :cond_25
    move v1, v2

    .line 1578
    :cond_26
    return v1

    .line 1581
    :cond_27
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->isParentWindowHidden()Z

    move-result v0

    if-eqz v0, :cond_33

    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->isAnimating()Z

    move-result v0

    if-eqz v0, :cond_34

    :cond_33
    move v1, v2

    :cond_34
    return v1

    .line 1574
    :cond_35
    :goto_35
    return v1
.end method

.method isParentWindowHidden()Z
    .registers 2

    .line 3910
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getParentWindow()Lcom/android/server/wm/WindowState;

    move-result-object v0

    .line 3911
    if-eqz v0, :cond_c

    iget-boolean v0, v0, Lcom/android/server/wm/WindowState;->mHidden:Z

    if-eqz v0, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    return v0
.end method

.method isPotentialDragTarget()Z
    .registers 2

    .line 1551
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->isVisibleNow()Z

    move-result v0

    if-eqz v0, :cond_14

    iget-boolean v0, p0, Lcom/android/server/wm/WindowState;->mRemoved:Z

    if-nez v0, :cond_14

    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mInputChannel:Landroid/view/InputChannel;

    if-eqz v0, :cond_14

    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mInputWindowHandle:Landroid/view/InputWindowHandle;

    if-eqz v0, :cond_14

    const/4 v0, 0x1

    goto :goto_15

    :cond_14
    const/4 v0, 0x0

    :goto_15
    return v0
.end method

.method isReadyForDisplay()Z
    .registers 5

    .line 1610
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mToken:Lcom/android/server/wm/WindowToken;

    iget-boolean v0, v0, Lcom/android/server/wm/WindowToken;->waitingToShow:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_14

    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    iget-object v0, v0, Lcom/android/server/wm/DisplayContent;->mAppTransition:Lcom/android/server/wm/AppTransition;

    invoke-virtual {v0}, Lcom/android/server/wm/AppTransition;->isTransitionSet()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 1611
    return v1

    .line 1613
    :cond_14
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->isParentWindowHidden()Z

    move-result v0

    const/4 v2, 0x1

    if-nez v0, :cond_29

    iget v0, p0, Lcom/android/server/wm/WindowState;->mViewVisibility:I

    if-nez v0, :cond_29

    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mToken:Lcom/android/server/wm/WindowToken;

    .line 1614
    invoke-virtual {v0}, Lcom/android/server/wm/WindowToken;->isHidden()Z

    move-result v0

    if-nez v0, :cond_29

    move v0, v2

    goto :goto_2a

    :cond_29
    move v0, v1

    .line 1615
    :goto_2a
    iget-boolean v3, p0, Lcom/android/server/wm/WindowState;->mHasSurface:Z

    if-eqz v3, :cond_42

    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->isVisibleByPolicy()Z

    move-result v3

    if-eqz v3, :cond_42

    iget-boolean v3, p0, Lcom/android/server/wm/WindowState;->mDestroying:Z

    if-nez v3, :cond_42

    if-nez v0, :cond_40

    .line 1616
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->isAnimating()Z

    move-result v0

    if-eqz v0, :cond_42

    :cond_40
    move v1, v2

    goto :goto_43

    :cond_42
    nop

    .line 1615
    :goto_43
    return v1
.end method

.method public isRtl()Z
    .registers 3

    .line 4444
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Configuration;->getLayoutDirection()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_c

    goto :goto_d

    :cond_c
    const/4 v1, 0x0

    :goto_d
    return v1
.end method

.method isSelfOrAncestorWindowAnimatingExit()Z
    .registers 3
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 4327
    move-object v0, p0

    .line 4329
    :goto_1
    iget-boolean v1, v0, Lcom/android/server/wm/WindowState;->mAnimatingExit:Z

    if-eqz v1, :cond_7

    .line 4330
    const/4 v0, 0x1

    return v0

    .line 4332
    :cond_7
    invoke-virtual {v0}, Lcom/android/server/wm/WindowState;->getParentWindow()Lcom/android/server/wm/WindowState;

    move-result-object v0

    .line 4333
    if-nez v0, :cond_f

    .line 4334
    const/4 v0, 0x0

    return v0

    .line 4333
    :cond_f
    goto :goto_1
.end method

.method isVisible()Z
    .registers 2

    .line 1484
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->wouldBeVisibleIfPolicyIgnored()Z

    move-result v0

    if-eqz v0, :cond_18

    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->isVisibleByPolicy()Z

    move-result v0

    if-eqz v0, :cond_18

    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mInsetProvider:Lcom/android/server/wm/InsetsSourceProvider;

    if-eqz v0, :cond_16

    .line 1487
    invoke-virtual {v0}, Lcom/android/server/wm/InsetsSourceProvider;->isClientVisible()Z

    move-result v0

    if-eqz v0, :cond_18

    :cond_16
    const/4 v0, 0x1

    goto :goto_19

    :cond_18
    const/4 v0, 0x0

    .line 1484
    :goto_19
    return v0
.end method

.method isVisibleByPolicy()Z
    .registers 3

    .line 1495
    iget v0, p0, Lcom/android/server/wm/WindowState;->mPolicyVisibility:I

    const/4 v1, 0x3

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public isVisibleLw()Z
    .registers 2

    .line 1523
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->isVisible()Z

    move-result v0

    return v0
.end method

.method isVisibleNow()Z
    .registers 3

    .line 1541
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mToken:Lcom/android/server/wm/WindowToken;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowToken;->isHidden()Z

    move-result v0

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_17

    .line 1542
    :cond_f
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_17

    const/4 v0, 0x1

    goto :goto_18

    :cond_17
    const/4 v0, 0x0

    .line 1541
    :goto_18
    return v0
.end method

.method isVisibleOrAdding()Z
    .registers 3

    .line 1560
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    .line 1561
    iget-boolean v1, p0, Lcom/android/server/wm/WindowState;->mHasSurface:Z

    if-nez v1, :cond_e

    iget-boolean v1, p0, Lcom/android/server/wm/WindowState;->mRelayoutCalled:Z

    if-nez v1, :cond_2a

    iget v1, p0, Lcom/android/server/wm/WindowState;->mViewVisibility:I

    if-nez v1, :cond_2a

    .line 1562
    :cond_e
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->isVisibleByPolicy()Z

    move-result v1

    if-eqz v1, :cond_2a

    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->isParentWindowHidden()Z

    move-result v1

    if-nez v1, :cond_2a

    if-eqz v0, :cond_20

    iget-boolean v0, v0, Lcom/android/server/wm/AppWindowToken;->hiddenRequested:Z

    if-nez v0, :cond_2a

    :cond_20
    iget-boolean v0, p0, Lcom/android/server/wm/WindowState;->mAnimatingExit:Z

    if-nez v0, :cond_2a

    iget-boolean v0, p0, Lcom/android/server/wm/WindowState;->mDestroying:Z

    if-nez v0, :cond_2a

    const/4 v0, 0x1

    goto :goto_2b

    :cond_2a
    const/4 v0, 0x0

    .line 1561
    :goto_2b
    return v0
.end method

.method public isVoiceInteraction()Z
    .registers 2

    .line 1245
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    if-eqz v0, :cond_a

    iget-boolean v0, v0, Lcom/android/server/wm/AppWindowToken;->mVoiceInteraction:Z

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method

.method isWinVisibleLw()Z
    .registers 2

    .line 1532
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    if-eqz v0, :cond_10

    iget-boolean v0, v0, Lcom/android/server/wm/AppWindowToken;->hiddenRequested:Z

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    invoke-virtual {v0}, Lcom/android/server/wm/AppWindowToken;->isSelfAnimating()Z

    move-result v0

    if-eqz v0, :cond_18

    .line 1533
    :cond_10
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_18

    const/4 v0, 0x1

    goto :goto_19

    :cond_18
    const/4 v0, 0x0

    .line 1532
    :goto_19
    return v0
.end method

.method layoutInParentFrame()Z
    .registers 3

    .line 3871
    iget-boolean v0, p0, Lcom/android/server/wm/WindowState;->mIsChildWindow:Z

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    const/high16 v1, 0x10000

    and-int/2addr v0, v1

    if-eqz v0, :cond_f

    const/4 v0, 0x1

    goto :goto_10

    :cond_f
    const/4 v0, 0x0

    :goto_10
    return v0
.end method

.method mightAffectAllDrawn()Z
    .registers 5

    .line 1590
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    iget v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mAttrType:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eq v0, v2, :cond_12

    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    iget v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mAttrType:I

    const/4 v3, 0x4

    if-ne v0, v3, :cond_10

    goto :goto_12

    :cond_10
    move v0, v1

    goto :goto_13

    :cond_12
    :goto_12
    move v0, v2

    .line 1592
    :goto_13
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->isOnScreen()Z

    move-result v3

    if-nez v3, :cond_1b

    if-eqz v0, :cond_24

    :cond_1b
    iget-boolean v0, p0, Lcom/android/server/wm/WindowState;->mAnimatingExit:Z

    if-nez v0, :cond_24

    iget-boolean v0, p0, Lcom/android/server/wm/WindowState;->mDestroying:Z

    if-nez v0, :cond_24

    move v1, v2

    :cond_24
    return v1
.end method

.method needsRelativeLayeringToIme()Z
    .registers 6

    .line 5079
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->inSplitScreenWindowingMode()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    .line 5080
    return v1

    .line 5083
    :cond_8
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->isChildWindow()Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_1a

    .line 5085
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getParentWindow()Lcom/android/server/wm/WindowState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/WindowState;->isInputMethodTarget()Z

    move-result v0

    if-eqz v0, :cond_38

    .line 5086
    return v2

    .line 5088
    :cond_1a
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    if-eqz v0, :cond_38

    .line 5092
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    iget-object v0, v0, Lcom/android/server/wm/DisplayContent;->mInputMethodTarget:Lcom/android/server/wm/WindowState;

    .line 5093
    if-eqz v0, :cond_36

    if-eq v0, p0, :cond_36

    iget-object v3, v0, Lcom/android/server/wm/WindowState;->mToken:Lcom/android/server/wm/WindowToken;

    iget-object v4, p0, Lcom/android/server/wm/WindowState;->mToken:Lcom/android/server/wm/WindowToken;

    if-ne v3, v4, :cond_36

    .line 5094
    invoke-virtual {v0, p0}, Lcom/android/server/wm/WindowState;->compareTo(Lcom/android/server/wm/WindowContainer;)I

    move-result v0

    if-gtz v0, :cond_36

    move v1, v2

    goto :goto_37

    :cond_36
    nop

    .line 5095
    :goto_37
    return v1

    .line 5097
    :cond_38
    return v1
.end method

.method needsZBoost()Z
    .registers 3

    .line 4944
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    iget-object v0, v0, Lcom/android/server/wm/DisplayContent;->mInputMethodTarget:Lcom/android/server/wm/WindowState;

    .line 4945
    iget-boolean v1, p0, Lcom/android/server/wm/WindowState;->mIsImWindow:Z

    if-eqz v1, :cond_15

    if-eqz v0, :cond_15

    .line 4946
    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    .line 4947
    if-eqz v0, :cond_15

    .line 4948
    invoke-virtual {v0}, Lcom/android/server/wm/AppWindowToken;->needsZBoost()Z

    move-result v0

    return v0

    .line 4951
    :cond_15
    iget-boolean v0, p0, Lcom/android/server/wm/WindowState;->mWillReplaceWindow:Z

    return v0
.end method

.method notifyInsetsChanged()V
    .registers 4

    .line 3322
    :try_start_0
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mClient:Landroid/view/IWindow;

    .line 3323
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/wm/DisplayContent;->getInsetsStateController()Lcom/android/server/wm/InsetsStateController;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/android/server/wm/InsetsStateController;->getInsetsForDispatch(Lcom/android/server/wm/WindowState;)Landroid/view/InsetsState;

    move-result-object v1

    .line 3322
    invoke-interface {v0, v1}, Landroid/view/IWindow;->insetsChanged(Landroid/view/InsetsState;)V
    :try_end_11
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_11} :catch_12

    .line 3326
    goto :goto_1a

    .line 3324
    :catch_12
    move-exception v0

    .line 3325
    const-string v1, "WindowManager"

    const-string v2, "Failed to deliver inset state change"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3327
    :goto_1a
    return-void
.end method

.method notifyInsetsControlChanged()V
    .registers 4

    .line 3330
    nop

    .line 3331
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->getInsetsStateController()Lcom/android/server/wm/InsetsStateController;

    move-result-object v0

    .line 3333
    :try_start_9
    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mClient:Landroid/view/IWindow;

    invoke-virtual {v0, p0}, Lcom/android/server/wm/InsetsStateController;->getInsetsForDispatch(Lcom/android/server/wm/WindowState;)Landroid/view/InsetsState;

    move-result-object v2

    .line 3334
    invoke-virtual {v0, p0}, Lcom/android/server/wm/InsetsStateController;->getControlsForDispatch(Lcom/android/server/wm/WindowState;)[Landroid/view/InsetsSourceControl;

    move-result-object v0

    .line 3333
    invoke-interface {v1, v2, v0}, Landroid/view/IWindow;->insetsControlChanged(Landroid/view/InsetsState;[Landroid/view/InsetsSourceControl;)V
    :try_end_16
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_16} :catch_17

    .line 3337
    goto :goto_1f

    .line 3335
    :catch_17
    move-exception v0

    .line 3336
    const-string v1, "WindowManager"

    const-string v2, "Failed to deliver inset state change"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3338
    :goto_1f
    return-void
.end method

.method protected onAnimationFinished()V
    .registers 2

    .line 4813
    invoke-super {p0}, Lcom/android/server/wm/WindowContainer;->onAnimationFinished()V

    .line 4814
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowStateAnimator;->onAnimationFinished()V

    .line 4815
    return-void
.end method

.method public onAnimationLeashCreated(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;)V
    .registers 4

    .line 4984
    invoke-super {p0, p1, p2}, Lcom/android/server/wm/WindowContainer;->onAnimationLeashCreated(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;)V

    .line 4987
    iget-object p2, p0, Lcom/android/server/wm/WindowState;->mSurfaceControl:Landroid/view/SurfaceControl;

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0, v0}, Landroid/view/SurfaceControl$Transaction;->setPosition(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    .line 4988
    iget-object p1, p0, Lcom/android/server/wm/WindowState;->mLastSurfacePosition:Landroid/graphics/Point;

    const/4 p2, 0x0

    invoke-virtual {p1, p2, p2}, Landroid/graphics/Point;->set(II)V

    .line 4989
    return-void
.end method

.method public onAnimationLeashLost(Landroid/view/SurfaceControl$Transaction;)V
    .registers 2

    .line 4993
    invoke-super {p0, p1}, Lcom/android/server/wm/WindowContainer;->onAnimationLeashLost(Landroid/view/SurfaceControl$Transaction;)V

    .line 4994
    invoke-virtual {p0, p1}, Lcom/android/server/wm/WindowState;->updateSurfacePosition(Landroid/view/SurfaceControl$Transaction;)V

    .line 4995
    return-void
.end method

.method onAppVisibilityChanged(ZZ)Z
    .registers 8

    .line 1711
    nop

    .line 1713
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowList;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    const/4 v2, 0x0

    move v3, v2

    :goto_b
    if-ltz v0, :cond_1d

    .line 1714
    iget-object v4, p0, Lcom/android/server/wm/WindowState;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v4, v0}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/wm/WindowState;

    .line 1715
    invoke-virtual {v4, p1, p2}, Lcom/android/server/wm/WindowState;->onAppVisibilityChanged(ZZ)Z

    move-result v4

    or-int/2addr v3, v4

    .line 1713
    add-int/lit8 v0, v0, -0x1

    goto :goto_b

    .line 1718
    :cond_1d
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/4 v4, 0x3

    if-ne v0, v4, :cond_3b

    .line 1722
    if-nez p1, :cond_3a

    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->isVisibleNow()Z

    move-result p1

    if-eqz p1, :cond_3a

    iget-object p1, p0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    invoke-virtual {p1}, Lcom/android/server/wm/AppWindowToken;->isSelfAnimating()Z

    move-result p1

    if-eqz p1, :cond_3a

    .line 1723
    iput-boolean v1, p0, Lcom/android/server/wm/WindowState;->mAnimatingExit:Z

    .line 1724
    iput-boolean v1, p0, Lcom/android/server/wm/WindowState;->mRemoveOnExit:Z

    .line 1725
    iput-boolean v1, p0, Lcom/android/server/wm/WindowState;->mWindowRemovalAllowed:Z

    .line 1727
    :cond_3a
    return v3

    .line 1730
    :cond_3b
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->isVisibleNow()Z

    move-result v0

    .line 1731
    if-eq p1, v0, :cond_59

    .line 1736
    if-nez p2, :cond_54

    if-eqz v0, :cond_54

    .line 1737
    iget-object p1, p0, Lcom/android/server/wm/WindowState;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object p1, p1, Lcom/android/server/wm/WindowManagerService;->mAccessibilityController:Lcom/android/server/wm/AccessibilityController;

    .line 1740
    iget-object p2, p0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    const/4 v0, 0x2

    invoke-virtual {p2, v0, v2}, Lcom/android/server/wm/WindowStateAnimator;->applyAnimationLocked(IZ)Z

    .line 1741
    if-eqz p1, :cond_54

    .line 1742
    invoke-virtual {p1, p0, v0}, Lcom/android/server/wm/AccessibilityController;->onWindowTransitionLocked(Lcom/android/server/wm/WindowState;I)V

    .line 1745
    :cond_54
    nop

    .line 1746
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->setDisplayLayoutNeeded()V

    goto :goto_5a

    .line 1731
    :cond_59
    move v1, v3

    .line 1749
    :goto_5a
    return v1
.end method

.method onDisplayChanged(Lcom/android/server/wm/DisplayContent;)V
    .registers 4

    .line 1373
    invoke-super {p0, p1}, Lcom/android/server/wm/WindowContainer;->onDisplayChanged(Lcom/android/server/wm/DisplayContent;)V

    .line 1375
    if-eqz p1, :cond_1d

    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mInputWindowHandle:Landroid/view/InputWindowHandle;

    iget v0, v0, Landroid/view/InputWindowHandle;->displayId:I

    invoke-virtual {p1}, Lcom/android/server/wm/DisplayContent;->getDisplayId()I

    move-result v1

    if-eq v0, v1, :cond_1d

    .line 1376
    iget v0, p1, Lcom/android/server/wm/DisplayContent;->mLayoutSeq:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/android/server/wm/WindowState;->mLayoutSeq:I

    .line 1377
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mInputWindowHandle:Landroid/view/InputWindowHandle;

    invoke-virtual {p1}, Lcom/android/server/wm/DisplayContent;->getDisplayId()I

    move-result p1

    iput p1, v0, Landroid/view/InputWindowHandle;->displayId:I

    .line 1379
    :cond_1d
    return-void
.end method

.method onExitAnimationDone()V
    .registers 6

    .line 4342
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowList;->isEmpty()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_23

    .line 4344
    new-instance v0, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/android/server/wm/WindowState;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 4345
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    sub-int/2addr v2, v1

    :goto_15
    if-ltz v2, :cond_23

    .line 4346
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/WindowState;

    invoke-virtual {v3}, Lcom/android/server/wm/WindowState;->onExitAnimationDone()V

    .line 4345
    add-int/lit8 v2, v2, -0x1

    goto :goto_15

    .line 4350
    :cond_23
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    iget-boolean v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mEnteringAnimation:Z

    const/4 v2, 0x0

    if-eqz v0, :cond_3e

    .line 4351
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    iput-boolean v2, v0, Lcom/android/server/wm/WindowStateAnimator;->mEnteringAnimation:Z

    .line 4352
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mWmService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerService;->requestTraversal()V

    .line 4355
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    if-nez v0, :cond_3e

    .line 4357
    :try_start_37
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mClient:Landroid/view/IWindow;

    invoke-interface {v0}, Landroid/view/IWindow;->dispatchWindowShown()V
    :try_end_3c
    .catch Landroid/os/RemoteException; {:try_start_37 .. :try_end_3c} :catch_3d

    .line 4359
    goto :goto_3e

    .line 4358
    :catch_3d
    move-exception v0

    .line 4363
    :cond_3e
    :goto_3e
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->isSelfAnimating()Z

    move-result v0

    if-eqz v0, :cond_45

    .line 4364
    return-void

    .line 4369
    :cond_45
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mAccessibilityController:Lcom/android/server/wm/AccessibilityController;

    if-eqz v0, :cond_62

    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getDisplayId()I

    move-result v0

    if-eqz v0, :cond_5b

    .line 4370
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->getParentWindow()Lcom/android/server/wm/WindowState;

    move-result-object v0

    if-eqz v0, :cond_62

    .line 4371
    :cond_5b
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mAccessibilityController:Lcom/android/server/wm/AccessibilityController;

    invoke-virtual {v0}, Lcom/android/server/wm/AccessibilityController;->onSomeWindowResizedOrMovedLocked()V

    .line 4374
    :cond_62
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->isSelfOrAncestorWindowAnimatingExit()Z

    move-result v0

    if-nez v0, :cond_69

    .line 4375
    return-void

    .line 4381
    :cond_69
    iput-boolean v1, p0, Lcom/android/server/wm/WindowState;->mDestroying:Z

    .line 4383
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowStateAnimator;->hasSurface()Z

    move-result v0

    .line 4387
    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getPendingTransaction()Landroid/view/SurfaceControl$Transaction;

    move-result-object v3

    const-string v4, "onExitAnimationDone"

    invoke-virtual {v1, v3, v4}, Lcom/android/server/wm/WindowStateAnimator;->hide(Landroid/view/SurfaceControl$Transaction;Ljava/lang/String;)V

    .line 4393
    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    if-eqz v1, :cond_84

    .line 4394
    invoke-virtual {v1}, Lcom/android/server/wm/AppWindowToken;->destroySurfaces()V

    goto :goto_9a

    .line 4396
    :cond_84
    if-eqz v0, :cond_8d

    .line 4397
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mDestroySurface:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4399
    :cond_8d
    iget-boolean v0, p0, Lcom/android/server/wm/WindowState;->mRemoveOnExit:Z

    if-eqz v0, :cond_9a

    .line 4400
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mPendingRemove:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4401
    iput-boolean v2, p0, Lcom/android/server/wm/WindowState;->mRemoveOnExit:Z

    .line 4404
    :cond_9a
    :goto_9a
    iput-boolean v2, p0, Lcom/android/server/wm/WindowState;->mAnimatingExit:Z

    .line 4405
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    iget-object v0, v0, Lcom/android/server/wm/DisplayContent;->mWallpaperController:Lcom/android/server/wm/WallpaperController;

    invoke-virtual {v0, p0}, Lcom/android/server/wm/WallpaperController;->hideWallpapers(Lcom/android/server/wm/WindowState;)V

    .line 4406
    return-void
.end method

.method onMergedOverrideConfigurationChanged()V
    .registers 2

    .line 1889
    invoke-super {p0}, Lcom/android/server/wm/WindowContainer;->onMergedOverrideConfigurationChanged()V

    .line 1890
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/wm/WindowState;->mLastConfigReportedToClient:Z

    .line 1891
    return-void
.end method

.method onMovedByResize()V
    .registers 2

    .line 1706
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/wm/WindowState;->mMovedByResize:Z

    .line 1707
    invoke-super {p0}, Lcom/android/server/wm/WindowContainer;->onMovedByResize()V

    .line 1708
    return-void
.end method

.method onParentChanged()V
    .registers 2

    .line 859
    invoke-super {p0}, Lcom/android/server/wm/WindowContainer;->onParentChanged()V

    .line 860
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/server/wm/WindowState;->setDrawnStateEvaluated(Z)V

    .line 862
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->reapplyMagnificationSpec()V

    .line 863
    return-void
.end method

.method onResize()V
    .registers 3

    .line 1777
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mResizingWindows:Ljava/util/ArrayList;

    .line 1778
    iget-boolean v1, p0, Lcom/android/server/wm/WindowState;->mHasSurface:Z

    if-eqz v1, :cond_17

    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->isGoneForLayoutLw()Z

    move-result v1

    if-nez v1, :cond_17

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_17

    .line 1780
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1782
    :cond_17
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->isGoneForLayoutLw()Z

    move-result v0

    if-eqz v0, :cond_20

    .line 1783
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/wm/WindowState;->mResizedWhileGone:Z

    .line 1786
    :cond_20
    invoke-super {p0}, Lcom/android/server/wm/WindowContainer;->onResize()V

    .line 1787
    return-void
.end method

.method onSetAppExiting()Z
    .registers 6

    .line 1753
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    .line 1754
    nop

    .line 1756
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->isVisibleNow()Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_27

    .line 1757
    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    const/4 v4, 0x2

    invoke-virtual {v1, v4, v3}, Lcom/android/server/wm/WindowStateAnimator;->applyAnimationLocked(IZ)Z

    .line 1758
    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mAccessibilityController:Lcom/android/server/wm/AccessibilityController;

    if-eqz v1, :cond_20

    .line 1759
    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mAccessibilityController:Lcom/android/server/wm/AccessibilityController;

    invoke-virtual {v1, p0, v4}, Lcom/android/server/wm/AccessibilityController;->onWindowTransitionLocked(Lcom/android/server/wm/WindowState;I)V

    .line 1761
    :cond_20
    nop

    .line 1762
    if-eqz v0, :cond_26

    .line 1763
    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->setLayoutNeeded()V

    .line 1767
    :cond_26
    move v3, v2

    :cond_27
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowList;->size()I

    move-result v0

    sub-int/2addr v0, v2

    :goto_2e
    if-ltz v0, :cond_40

    .line 1768
    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v1, v0}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/WindowState;

    .line 1769
    invoke-virtual {v1}, Lcom/android/server/wm/WindowState;->onSetAppExiting()Z

    move-result v1

    or-int/2addr v3, v1

    .line 1767
    add-int/lit8 v0, v0, -0x1

    goto :goto_2e

    .line 1772
    :cond_40
    return v3
.end method

.method onStartFreezingScreen()V
    .registers 3

    .line 2900
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/wm/WindowState;->mAppFreezing:Z

    .line 2901
    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowList;->size()I

    move-result v1

    sub-int/2addr v1, v0

    :goto_a
    if-ltz v1, :cond_1a

    .line 2902
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v0, v1}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/WindowState;

    .line 2903
    invoke-virtual {v0}, Lcom/android/server/wm/WindowState;->onStartFreezingScreen()V

    .line 2901
    add-int/lit8 v1, v1, -0x1

    goto :goto_a

    .line 2905
    :cond_1a
    return-void
.end method

.method onStopFreezingScreen()Z
    .registers 6

    .line 2908
    nop

    .line 2909
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowList;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    const/4 v2, 0x0

    move v3, v2

    :goto_b
    if-ltz v0, :cond_1d

    .line 2910
    iget-object v4, p0, Lcom/android/server/wm/WindowState;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v4, v0}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/wm/WindowState;

    .line 2911
    invoke-virtual {v4}, Lcom/android/server/wm/WindowState;->onStopFreezingScreen()Z

    move-result v4

    or-int/2addr v3, v4

    .line 2909
    add-int/lit8 v0, v0, -0x1

    goto :goto_b

    .line 2914
    :cond_1d
    iget-boolean v0, p0, Lcom/android/server/wm/WindowState;->mAppFreezing:Z

    if-nez v0, :cond_22

    .line 2915
    return v3

    .line 2918
    :cond_22
    iput-boolean v2, p0, Lcom/android/server/wm/WindowState;->mAppFreezing:Z

    .line 2920
    iget-boolean v0, p0, Lcom/android/server/wm/WindowState;->mHasSurface:Z

    if-eqz v0, :cond_3e

    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getOrientationChanging()Z

    move-result v0

    if-nez v0, :cond_3e

    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget v0, v0, Lcom/android/server/wm/WindowManagerService;->mWindowsFreezingScreen:I

    const/4 v3, 0x2

    if-eq v0, v3, :cond_3e

    .line 2923
    invoke-virtual {p0, v1}, Lcom/android/server/wm/WindowState;->setOrientationChanging(Z)V

    .line 2924
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    iput-boolean v2, v0, Lcom/android/server/wm/RootWindowContainer;->mOrientationChangeComplete:Z

    .line 2926
    :cond_3e
    iput v2, p0, Lcom/android/server/wm/WindowState;->mLastFreezeDuration:I

    .line 2927
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->setDisplayLayoutNeeded()V

    .line 2928
    return v1
.end method

.method onSurfaceShownChanged(Z)V
    .registers 3

    .line 2989
    iget-boolean v0, p0, Lcom/android/server/wm/WindowState;->mLastShownChangedReported:Z

    if-ne v0, p1, :cond_5

    .line 2990
    return-void

    .line 2992
    :cond_5
    iput-boolean p1, p0, Lcom/android/server/wm/WindowState;->mLastShownChangedReported:Z

    .line 2994
    if-eqz p1, :cond_d

    .line 2995
    invoke-direct {p0}, Lcom/android/server/wm/WindowState;->initExclusionRestrictions()V

    goto :goto_15

    .line 2997
    :cond_d
    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcom/android/server/wm/WindowState;->logExclusionRestrictions(I)V

    .line 2998
    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lcom/android/server/wm/WindowState;->logExclusionRestrictions(I)V

    .line 3000
    :goto_15
    return-void
.end method

.method onUnfreezeBounds()V
    .registers 4

    .line 1790
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowList;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    :goto_8
    if-ltz v0, :cond_18

    .line 1791
    iget-object v2, p0, Lcom/android/server/wm/WindowState;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v2, v0}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/WindowState;

    .line 1792
    invoke-virtual {v2}, Lcom/android/server/wm/WindowState;->onUnfreezeBounds()V

    .line 1790
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    .line 1795
    :cond_18
    iget-boolean v0, p0, Lcom/android/server/wm/WindowState;->mHasSurface:Z

    if-nez v0, :cond_1d

    .line 1796
    return-void

    .line 1799
    :cond_1d
    iput-boolean v1, p0, Lcom/android/server/wm/WindowState;->mLayoutNeeded:Z

    .line 1800
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->setDisplayLayoutNeeded()V

    .line 1801
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mResizingWindows:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_33

    .line 1802
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mResizingWindows:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1804
    :cond_33
    return-void
.end method

.method onWindowReplacementTimeout()V
    .registers 3

    .line 1894
    iget-boolean v0, p0, Lcom/android/server/wm/WindowState;->mWillReplaceWindow:Z

    if-eqz v0, :cond_8

    .line 1901
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->removeImmediately()V

    goto :goto_20

    .line 1903
    :cond_8
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_10
    if-ltz v0, :cond_20

    .line 1904
    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v1, v0}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/WindowState;

    .line 1905
    invoke-virtual {v1}, Lcom/android/server/wm/WindowState;->onWindowReplacementTimeout()V

    .line 1903
    add-int/lit8 v0, v0, -0x1

    goto :goto_10

    .line 1908
    :cond_20
    :goto_20
    return-void
.end method

.method openInputChannel(Landroid/view/InputChannel;)V
    .registers 4

    .line 2179
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mInputChannel:Landroid/view/InputChannel;

    if-nez v0, :cond_49

    .line 2182
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getName()Ljava/lang/String;

    move-result-object v0

    .line 2183
    invoke-static {v0}, Landroid/view/InputChannel;->openInputChannelPair(Ljava/lang/String;)[Landroid/view/InputChannel;

    move-result-object v0

    .line 2184
    const/4 v1, 0x0

    aget-object v1, v0, v1

    iput-object v1, p0, Lcom/android/server/wm/WindowState;->mInputChannel:Landroid/view/InputChannel;

    .line 2185
    const/4 v1, 0x1

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/android/server/wm/WindowState;->mClientChannel:Landroid/view/InputChannel;

    .line 2186
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mInputWindowHandle:Landroid/view/InputWindowHandle;

    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mClient:Landroid/view/IWindow;

    invoke-interface {v1}, Landroid/view/IWindow;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    iput-object v1, v0, Landroid/view/InputWindowHandle;->token:Landroid/os/IBinder;

    .line 2187
    if-eqz p1, :cond_30

    .line 2188
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mClientChannel:Landroid/view/InputChannel;

    invoke-virtual {v0, p1}, Landroid/view/InputChannel;->transferTo(Landroid/view/InputChannel;)V

    .line 2189
    iget-object p1, p0, Lcom/android/server/wm/WindowState;->mClientChannel:Landroid/view/InputChannel;

    invoke-virtual {p1}, Landroid/view/InputChannel;->dispose()V

    .line 2190
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/server/wm/WindowState;->mClientChannel:Landroid/view/InputChannel;

    goto :goto_39

    .line 2195
    :cond_30
    new-instance p1, Lcom/android/server/wm/WindowState$DeadWindowEventReceiver;

    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mClientChannel:Landroid/view/InputChannel;

    invoke-direct {p1, p0, v0}, Lcom/android/server/wm/WindowState$DeadWindowEventReceiver;-><init>(Lcom/android/server/wm/WindowState;Landroid/view/InputChannel;)V

    iput-object p1, p0, Lcom/android/server/wm/WindowState;->mDeadWindowEventReceiver:Lcom/android/server/wm/WindowState$DeadWindowEventReceiver;

    .line 2197
    :goto_39
    iget-object p1, p0, Lcom/android/server/wm/WindowState;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object p1, p1, Lcom/android/server/wm/WindowManagerService;->mInputManager:Lcom/android/server/input/InputManagerService;

    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mInputChannel:Landroid/view/InputChannel;

    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mClient:Landroid/view/IWindow;

    invoke-interface {v1}, Landroid/view/IWindow;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/android/server/input/InputManagerService;->registerInputChannel(Landroid/view/InputChannel;Landroid/os/IBinder;)V

    .line 2198
    return-void

    .line 2180
    :cond_49
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Window already has an input channel."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method orientationChangeTimedOut()V
    .registers 2

    .line 1363
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/wm/WindowState;->mOrientationChangeTimedOut:Z

    .line 1364
    return-void
.end method

.method performShowLocked()Z
    .registers 6

    .line 4045
    invoke-direct {p0}, Lcom/android/server/wm/WindowState;->isHiddenFromUserLocked()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_c

    .line 4047
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/android/server/wm/WindowState;->clearPolicyVisibilityFlag(I)V

    .line 4048
    return v1

    .line 4051
    :cond_c
    const-string v0, "performShow on "

    invoke-direct {p0, v0}, Lcom/android/server/wm/WindowState;->logPerformShow(Ljava/lang/String;)V

    .line 4053
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    iget v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mDrawState:I

    .line 4054
    const/4 v2, 0x4

    const/4 v3, 0x3

    if-eq v0, v2, :cond_1b

    if-ne v0, v3, :cond_2a

    :cond_1b
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    if-eq v0, v3, :cond_2a

    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    if-eqz v0, :cond_2a

    .line 4056
    iget-object v4, p0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    invoke-virtual {v0, p0, v4}, Lcom/android/server/wm/AppWindowToken;->onFirstWindowDrawn(Lcom/android/server/wm/WindowState;Lcom/android/server/wm/WindowStateAnimator;)V

    .line 4059
    :cond_2a
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    iget v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mDrawState:I

    if-ne v0, v3, :cond_92

    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->isReadyForDisplay()Z

    move-result v0

    if-nez v0, :cond_37

    goto :goto_92

    .line 4063
    :cond_37
    const-string v0, "Showing "

    invoke-direct {p0, v0}, Lcom/android/server/wm/WindowState;->logPerformShow(Ljava/lang/String;)V

    .line 4065
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mWmService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerService;->enableScreenIfNeededLocked()V

    .line 4066
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowStateAnimator;->applyEnterAnimationLocked()V

    .line 4069
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    const/high16 v3, -0x40800000  # -1.0f

    iput v3, v0, Lcom/android/server/wm/WindowStateAnimator;->mLastAlpha:F

    .line 4072
    iput v2, v0, Lcom/android/server/wm/WindowStateAnimator;->mDrawState:I

    .line 4073
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mWmService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerService;->scheduleAnimationLocked()V

    .line 4075
    iget-boolean v0, p0, Lcom/android/server/wm/WindowState;->mHidden:Z

    const/4 v2, 0x1

    if-eqz v0, :cond_80

    .line 4076
    iput-boolean v1, p0, Lcom/android/server/wm/WindowState;->mHidden:Z

    .line 4077
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    .line 4079
    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowList;->size()I

    move-result v1

    sub-int/2addr v1, v2

    :goto_65
    if-ltz v1, :cond_80

    .line 4080
    iget-object v3, p0, Lcom/android/server/wm/WindowState;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v3, v1}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/WindowState;

    .line 4081
    iget-object v4, v3, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    iget-object v4, v4, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceController:Lcom/android/server/wm/WindowSurfaceController;

    if-eqz v4, :cond_7d

    .line 4082
    invoke-virtual {v3}, Lcom/android/server/wm/WindowState;->performShowLocked()Z

    .line 4086
    if-eqz v0, :cond_7d

    .line 4087
    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->setLayoutNeeded()V

    .line 4079
    :cond_7d
    add-int/lit8 v1, v1, -0x1

    goto :goto_65

    .line 4093
    :cond_80
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v1, 0x7db

    if-ne v0, v1, :cond_91

    .line 4094
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    iget-object v0, v0, Lcom/android/server/wm/DisplayContent;->mDividerControllerLocked:Lcom/android/server/wm/DockedStackDividerController;

    invoke-virtual {v0}, Lcom/android/server/wm/DockedStackDividerController;->resetImeHideRequested()V

    .line 4097
    :cond_91
    return v2

    .line 4060
    :cond_92
    :goto_92
    return v1
.end method

.method public pokeDrawLockLw(J)V
    .registers 8

    .line 2830
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->isVisibleOrAdding()Z

    move-result v0

    if-eqz v0, :cond_46

    .line 2831
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mDrawLock:Landroid/os/PowerManager$WakeLock;

    if-nez v0, :cond_41

    .line 2835
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getWindowTag()Ljava/lang/CharSequence;

    move-result-object v0

    .line 2836
    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mPowerManager:Landroid/os/PowerManager;

    const/16 v2, 0x80

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Window:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wm/WindowState;->mDrawLock:Landroid/os/PowerManager$WakeLock;

    .line 2837
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mDrawLock:Landroid/os/PowerManager$WakeLock;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 2838
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mDrawLock:Landroid/os/PowerManager$WakeLock;

    new-instance v1, Landroid/os/WorkSource;

    iget v2, p0, Lcom/android/server/wm/WindowState;->mOwnerUid:I

    iget-object v3, p0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget-object v3, v3, Landroid/view/WindowManager$LayoutParams;->packageName:Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Landroid/os/WorkSource;-><init>(ILjava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/PowerManager$WakeLock;->setWorkSource(Landroid/os/WorkSource;)V

    .line 2845
    :cond_41
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mDrawLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0, p1, p2}, Landroid/os/PowerManager$WakeLock;->acquire(J)V

    .line 2850
    :cond_46
    return-void
.end method

.method prelayout()V
    .registers 3

    .line 1464
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->inSizeCompatMode()Z

    move-result v0

    const/high16 v1, 0x3f800000  # 1.0f

    if-eqz v0, :cond_16

    .line 1465
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mToken:Lcom/android/server/wm/WindowToken;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowToken;->getSizeCompatScale()F

    move-result v0

    iput v0, p0, Lcom/android/server/wm/WindowState;->mGlobalScale:F

    .line 1466
    iget v0, p0, Lcom/android/server/wm/WindowState;->mGlobalScale:F

    div-float/2addr v1, v0

    iput v1, p0, Lcom/android/server/wm/WindowState;->mInvGlobalScale:F

    goto :goto_1a

    .line 1468
    :cond_16
    iput v1, p0, Lcom/android/server/wm/WindowState;->mInvGlobalScale:F

    iput v1, p0, Lcom/android/server/wm/WindowState;->mGlobalScale:F

    .line 1470
    :goto_1a
    return-void
.end method

.method prepareSurfaces()V
    .registers 3

    .line 4971
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getDimmer()Lcom/android/server/wm/Dimmer;

    move-result-object v0

    .line 4972
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/wm/WindowState;->mIsDimming:Z

    .line 4973
    if-eqz v0, :cond_c

    .line 4974
    invoke-direct {p0, v0}, Lcom/android/server/wm/WindowState;->applyDims(Lcom/android/server/wm/Dimmer;)V

    .line 4976
    :cond_c
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->updateSurfacePosition()V

    .line 4978
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/server/wm/WindowStateAnimator;->prepareSurfaceLocked(Z)V

    .line 4979
    invoke-super {p0}, Lcom/android/server/wm/WindowContainer;->prepareSurfaces()V

    .line 4980
    return-void
.end method

.method prepareWindowToDisplayDuringRelayout(Z)V
    .registers 9

    .line 2417
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v1, 0x200000

    and-int/2addr v0, v1

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_d

    move v0, v1

    goto :goto_e

    :cond_d
    move v0, v2

    .line 2430
    :goto_e
    if-eqz v0, :cond_57

    .line 2431
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-boolean v0, v0, Lcom/android/server/wm/WindowManagerService;->mAllowTheaterModeWakeFromLayout:Z

    if-nez v0, :cond_29

    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    .line 2432
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "theater_mode_on"

    invoke-static {v0, v3, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_27

    goto :goto_29

    :cond_27
    move v0, v2

    goto :goto_2a

    :cond_29
    :goto_29
    move v0, v1

    .line 2434
    :goto_2a
    iget-object v3, p0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    if-eqz v3, :cond_37

    invoke-virtual {v3}, Lcom/android/server/wm/AppWindowToken;->canTurnScreenOn()Z

    move-result v3

    if-eqz v3, :cond_35

    goto :goto_37

    :cond_35
    move v3, v2

    goto :goto_38

    :cond_37
    :goto_37
    move v3, v1

    .line 2436
    :goto_38
    if-eqz v0, :cond_50

    if-eqz v3, :cond_50

    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mPowerManagerWrapper:Lcom/android/server/wm/WindowState$PowerManagerWrapper;

    invoke-interface {v0}, Lcom/android/server/wm/WindowState$PowerManagerWrapper;->isInteractive()Z

    move-result v0

    if-nez v0, :cond_50

    .line 2440
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mPowerManagerWrapper:Lcom/android/server/wm/WindowState$PowerManagerWrapper;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    const/4 v5, 0x2

    const-string v6, "android.server.wm:SCREEN_ON_FLAG"

    invoke-interface {v0, v3, v4, v5, v6}, Lcom/android/server/wm/WindowState$PowerManagerWrapper;->wakeUp(JILjava/lang/String;)V

    .line 2444
    :cond_50
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    if-eqz v0, :cond_57

    .line 2445
    invoke-virtual {v0, v2}, Lcom/android/server/wm/AppWindowToken;->setCanTurnScreenOn(Z)V

    .line 2450
    :cond_57
    if-eqz p1, :cond_5a

    .line 2453
    return-void

    .line 2456
    :cond_5a
    iget-object p1, p0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget p1, p1, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    and-int/lit16 p1, p1, 0xf0

    const/16 v0, 0x10

    if-ne p1, v0, :cond_66

    .line 2458
    iput-boolean v1, p0, Lcom/android/server/wm/WindowState;->mLayoutNeeded:Z

    .line 2461
    :cond_66
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->isDrawnLw()Z

    move-result p1

    if-eqz p1, :cond_79

    iget-object p1, p0, Lcom/android/server/wm/WindowState;->mToken:Lcom/android/server/wm/WindowToken;

    invoke-virtual {p1}, Lcom/android/server/wm/WindowToken;->okToAnimate()Z

    move-result p1

    if-eqz p1, :cond_79

    .line 2462
    iget-object p1, p0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    invoke-virtual {p1}, Lcom/android/server/wm/WindowStateAnimator;->applyEnterAnimationLocked()V

    .line 2464
    :cond_79
    return-void
.end method

.method public registerFocusObserver(Landroid/view/IWindowFocusObserver;)V
    .registers 4

    .line 3384
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_5
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 3385
    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mFocusCallbacks:Landroid/os/RemoteCallbackList;

    if-nez v1, :cond_13

    .line 3386
    new-instance v1, Landroid/os/RemoteCallbackList;

    invoke-direct {v1}, Landroid/os/RemoteCallbackList;-><init>()V

    iput-object v1, p0, Lcom/android/server/wm/WindowState;->mFocusCallbacks:Landroid/os/RemoteCallbackList;

    .line 3388
    :cond_13
    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mFocusCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v1, p1}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;)Z

    .line 3389
    monitor-exit v0
    :try_end_19
    .catchall {:try_start_5 .. :try_end_19} :catchall_1d

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 3390
    return-void

    .line 3389
    :catchall_1d
    move-exception p1

    :try_start_1e
    monitor-exit v0
    :try_end_1f
    .catchall {:try_start_1e .. :try_end_1f} :catchall_1d

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p1
.end method

.method relayoutVisibleWindow(II)I
    .registers 9

    .line 4661
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->isVisibleLw()Z

    move-result v0

    .line 4663
    const/4 v1, 0x0

    if-eqz v0, :cond_10

    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->isDrawnLw()Z

    move-result v2

    if-nez v2, :cond_e

    goto :goto_10

    :cond_e
    move v2, v1

    goto :goto_11

    :cond_10
    :goto_10
    const/4 v2, 0x2

    :goto_11
    or-int/2addr p1, v2

    .line 4665
    iget-boolean v2, p0, Lcom/android/server/wm/WindowState;->mAnimatingExit:Z

    if-eqz v2, :cond_4e

    .line 4666
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "relayoutVisibleWindow: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " mAnimatingExit=true, mRemoveOnExit="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/android/server/wm/WindowState;->mRemoveOnExit:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", mDestroying="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/android/server/wm/WindowState;->mDestroying:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "WindowManager"

    invoke-static {v3, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4670
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->isSelfAnimating()Z

    move-result v2

    if-eqz v2, :cond_4c

    .line 4671
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->cancelAnimation()V

    .line 4672
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->destroySurfaceUnchecked()V

    .line 4674
    :cond_4c
    iput-boolean v1, p0, Lcom/android/server/wm/WindowState;->mAnimatingExit:Z

    .line 4676
    :cond_4e
    iget-boolean v2, p0, Lcom/android/server/wm/WindowState;->mDestroying:Z

    if-eqz v2, :cond_5b

    .line 4677
    iput-boolean v1, p0, Lcom/android/server/wm/WindowState;->mDestroying:Z

    .line 4678
    iget-object v2, p0, Lcom/android/server/wm/WindowState;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mDestroySurface:Ljava/util/ArrayList;

    invoke-virtual {v2, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 4680
    :cond_5b
    const/4 v2, 0x1

    if-nez v0, :cond_62

    .line 4681
    iget-object v3, p0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    iput-boolean v2, v3, Lcom/android/server/wm/WindowStateAnimator;->mEnterAnimationPending:Z

    .line 4684
    :cond_62
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/wm/DisplayContent;->getRotation()I

    move-result v3

    iput v3, p0, Lcom/android/server/wm/WindowState;->mLastVisibleLayoutRotation:I

    .line 4686
    iget-object v3, p0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    iput-boolean v2, v3, Lcom/android/server/wm/WindowStateAnimator;->mEnteringAnimation:Z

    .line 4688
    const-wide/16 v3, 0x20

    const-string v5, "prepareToDisplay"

    invoke-static {v3, v4, v5}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 4690
    :try_start_77
    invoke-virtual {p0, v0}, Lcom/android/server/wm/WindowState;->prepareWindowToDisplayDuringRelayout(Z)V
    :try_end_7a
    .catchall {:try_start_77 .. :try_end_7a} :catchall_d6

    .line 4692
    invoke-static {v3, v4}, Landroid/os/Trace;->traceEnd(J)V

    .line 4693
    nop

    .line 4695
    const/16 v0, 0x8

    and-int/2addr p2, v0

    if-eqz p2, :cond_92

    .line 4699
    iget-object p2, p0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    invoke-virtual {p2}, Lcom/android/server/wm/WindowStateAnimator;->tryChangeFormatInPlaceLocked()Z

    move-result p2

    if-nez p2, :cond_92

    .line 4700
    iget-object p2, p0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    invoke-virtual {p2}, Lcom/android/server/wm/WindowStateAnimator;->preserveSurfaceLocked()V

    .line 4701
    or-int/lit8 p1, p1, 0x6

    .line 4711
    :cond_92
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->isDragResizeChanged()Z

    move-result p2

    if-eqz p2, :cond_ac

    .line 4712
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->setDragResizing()V

    .line 4717
    iget-boolean p2, p0, Lcom/android/server/wm/WindowState;->mHasSurface:Z

    if-eqz p2, :cond_ac

    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->isChildWindow()Z

    move-result p2

    if-nez p2, :cond_ac

    .line 4718
    iget-object p2, p0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    invoke-virtual {p2}, Lcom/android/server/wm/WindowStateAnimator;->preserveSurfaceLocked()V

    .line 4719
    or-int/lit8 p1, p1, 0x6

    .line 4723
    :cond_ac
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->isDragResizing()Z

    move-result p2

    if-eqz p2, :cond_ba

    .line 4724
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getResizeMode()I

    move-result p2

    if-nez p2, :cond_ba

    move p2, v2

    goto :goto_bb

    :cond_ba
    move p2, v1

    .line 4725
    :goto_bb
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->isDragResizing()Z

    move-result v3

    if-eqz v3, :cond_c8

    .line 4726
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getResizeMode()I

    move-result v3

    if-ne v3, v2, :cond_c8

    goto :goto_c9

    :cond_c8
    move v2, v1

    .line 4727
    :goto_c9
    if-eqz p2, :cond_ce

    const/16 p2, 0x10

    goto :goto_cf

    :cond_ce
    move p2, v1

    :goto_cf
    or-int/2addr p1, p2

    .line 4728
    if-eqz v2, :cond_d3

    goto :goto_d4

    :cond_d3
    move v0, v1

    :goto_d4
    or-int/2addr p1, v0

    .line 4729
    return p1

    .line 4692
    :catchall_d6
    move-exception p1

    invoke-static {v3, v4}, Landroid/os/Trace;->traceEnd(J)V

    throw p1
.end method

.method removeEmbeddedDisplayContent(Lcom/android/server/wm/DisplayContent;)Z
    .registers 3

    .line 4758
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mEmbeddedDisplayContents:Landroid/util/ArraySet;

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method removeIfPossible()V
    .registers 2

    .line 1970
    invoke-super {p0}, Lcom/android/server/wm/WindowContainer;->removeIfPossible()V

    .line 1971
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/server/wm/WindowState;->removeIfPossible(Z)V

    .line 1972
    return-void
.end method

.method removeImmediately()V
    .registers 5

    .line 1921
    invoke-super {p0}, Lcom/android/server/wm/WindowContainer;->removeImmediately()V

    .line 1923
    iget-boolean v0, p0, Lcom/android/server/wm/WindowState;->mRemoved:Z

    if-eqz v0, :cond_8

    .line 1927
    return-void

    .line 1930
    :cond_8
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/wm/WindowState;->mRemoved:Z

    .line 1932
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/wm/WindowState;->mWillReplaceWindow:Z

    .line 1933
    iget-object v2, p0, Lcom/android/server/wm/WindowState;->mReplacementWindow:Lcom/android/server/wm/WindowState;

    if-eqz v2, :cond_14

    .line 1934
    iput-boolean v1, v2, Lcom/android/server/wm/WindowState;->mSkipEnterAnimationForSeamlessReplacement:Z

    .line 1937
    :cond_14
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v2

    .line 1938
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->isInputMethodTarget()Z

    move-result v3

    if-eqz v3, :cond_21

    .line 1939
    invoke-virtual {v2, v0}, Lcom/android/server/wm/DisplayContent;->computeImeTarget(Z)Lcom/android/server/wm/WindowState;

    .line 1942
    :cond_21
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 1943
    invoke-static {v0}, Lcom/android/server/wm/WindowManagerService;->excludeWindowTypeFromTapOutTask(I)Z

    move-result v0

    if-eqz v0, :cond_30

    .line 1944
    iget-object v0, v2, Lcom/android/server/wm/DisplayContent;->mTapExcludedWindows:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1946
    :cond_30
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mTapExcludeRegionHolder:Lcom/android/server/wm/TapExcludeRegionHolder;

    if-eqz v0, :cond_39

    .line 1949
    iget-object v0, v2, Lcom/android/server/wm/DisplayContent;->mTapExcludeProvidingWindows:Landroid/util/ArraySet;

    invoke-virtual {v0, p0}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    .line 1951
    :cond_39
    invoke-virtual {v2}, Lcom/android/server/wm/DisplayContent;->getDisplayPolicy()Lcom/android/server/wm/DisplayPolicy;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/server/wm/DisplayPolicy;->removeWindowLw(Lcom/android/server/wm/WindowState;)V

    .line 1953
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->disposeInputChannel()V

    .line 1955
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowStateAnimator;->destroyDeferredSurfaceLocked()V

    .line 1956
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowStateAnimator;->destroySurfaceLocked()V

    .line 1957
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mSession:Lcom/android/server/wm/Session;

    invoke-virtual {v0}, Lcom/android/server/wm/Session;->windowRemovedLocked()V

    .line 1959
    :try_start_52
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mClient:Landroid/view/IWindow;

    invoke-interface {v0}, Landroid/view/IWindow;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    iget-object v2, p0, Lcom/android/server/wm/WindowState;->mDeathRecipient:Lcom/android/server/wm/WindowState$DeathRecipient;

    invoke-interface {v0, v2, v1}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z
    :try_end_5d
    .catch Ljava/lang/RuntimeException; {:try_start_52 .. :try_end_5d} :catch_5e

    .line 1963
    goto :goto_5f

    .line 1960
    :catch_5e
    move-exception v0

    .line 1965
    :goto_5f
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mWmService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0, p0}, Lcom/android/server/wm/WindowManagerService;->postWindowRemoveCleanupLocked(Lcom/android/server/wm/WindowState;)V

    .line 1966
    return-void
.end method

.method removeReplacedWindowIfNeeded(Lcom/android/server/wm/WindowState;)Z
    .registers 6

    .line 2222
    iget-boolean v0, p0, Lcom/android/server/wm/WindowState;->mWillReplaceWindow:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_16

    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mReplacementWindow:Lcom/android/server/wm/WindowState;

    if-ne v0, p1, :cond_16

    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->hasDrawnLw()Z

    move-result v0

    if-eqz v0, :cond_16

    .line 2223
    iput-boolean v1, p1, Lcom/android/server/wm/WindowState;->mSkipEnterAnimationForSeamlessReplacement:Z

    .line 2224
    invoke-direct {p0}, Lcom/android/server/wm/WindowState;->removeReplacedWindow()V

    .line 2225
    return v2

    .line 2228
    :cond_16
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowList;->size()I

    move-result v0

    sub-int/2addr v0, v2

    :goto_1d
    if-ltz v0, :cond_31

    .line 2229
    iget-object v3, p0, Lcom/android/server/wm/WindowState;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v3, v0}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/WindowState;

    .line 2230
    invoke-virtual {v3, p1}, Lcom/android/server/wm/WindowState;->removeReplacedWindowIfNeeded(Lcom/android/server/wm/WindowState;)Z

    move-result v3

    if-eqz v3, :cond_2e

    .line 2231
    return v2

    .line 2228
    :cond_2e
    add-int/lit8 v0, v0, -0x1

    goto :goto_1d

    .line 2234
    :cond_31
    return v1
.end method

.method reportFocusChangedSerialized(ZZ)V
    .registers 6

    .line 3167
    :try_start_0
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mClient:Landroid/view/IWindow;

    invoke-interface {v0, p1, p2}, Landroid/view/IWindow;->windowFocusChanged(ZZ)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 3169
    goto :goto_7

    .line 3168
    :catch_6
    move-exception p2

    .line 3170
    :goto_7
    iget-object p2, p0, Lcom/android/server/wm/WindowState;->mFocusCallbacks:Landroid/os/RemoteCallbackList;

    if-eqz p2, :cond_39

    .line 3171
    invoke-virtual {p2}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result p2

    .line 3172
    const/4 v0, 0x0

    :goto_10
    if-ge v0, p2, :cond_34

    .line 3173
    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mFocusCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v1, v0}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v1

    check-cast v1, Landroid/view/IWindowFocusObserver;

    .line 3175
    if-eqz p1, :cond_26

    .line 3176
    :try_start_1c
    iget-object v2, p0, Lcom/android/server/wm/WindowState;->mWindowId:Lcom/android/server/wm/WindowState$WindowId;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowState$WindowId;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-interface {v1, v2}, Landroid/view/IWindowFocusObserver;->focusGained(Landroid/os/IBinder;)V

    goto :goto_2f

    .line 3178
    :cond_26
    iget-object v2, p0, Lcom/android/server/wm/WindowState;->mWindowId:Lcom/android/server/wm/WindowState$WindowId;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowState$WindowId;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-interface {v1, v2}, Landroid/view/IWindowFocusObserver;->focusLost(Landroid/os/IBinder;)V
    :try_end_2f
    .catch Landroid/os/RemoteException; {:try_start_1c .. :try_end_2f} :catch_30

    .line 3181
    :goto_2f
    goto :goto_31

    .line 3180
    :catch_30
    move-exception v1

    .line 3172
    :goto_31
    add-int/lit8 v0, v0, 0x1

    goto :goto_10

    .line 3183
    :cond_34
    iget-object p1, p0, Lcom/android/server/wm/WindowState;->mFocusCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {p1}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 3185
    :cond_39
    return-void
.end method

.method reportResized()V
    .registers 21

    .line 3219
    move-object/from16 v14, p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "wm.reportResized_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/WindowState;->getWindowTag()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-wide/16 v12, 0x20

    invoke-static {v12, v13, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 3223
    :try_start_1c
    new-instance v0, Landroid/util/MergedConfiguration;

    iget-object v1, v14, Lcom/android/server/wm/WindowState;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    .line 3224
    invoke-virtual {v1}, Lcom/android/server/wm/RootWindowContainer;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    .line 3225
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/WindowState;->getMergedOverrideConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/util/MergedConfiguration;-><init>(Landroid/content/res/Configuration;Landroid/content/res/Configuration;)V

    .line 3227
    invoke-virtual {v14, v0}, Lcom/android/server/wm/WindowState;->setLastReportedMergedConfiguration(Landroid/util/MergedConfiguration;)V

    .line 3232
    iget-object v1, v14, Lcom/android/server/wm/WindowState;->mWindowFrames:Lcom/android/server/wm/WindowFrames;

    iget-object v3, v1, Lcom/android/server/wm/WindowFrames;->mCompatFrame:Landroid/graphics/Rect;

    .line 3233
    iget-object v1, v14, Lcom/android/server/wm/WindowState;->mWindowFrames:Lcom/android/server/wm/WindowFrames;

    iget-object v4, v1, Lcom/android/server/wm/WindowFrames;->mLastOverscanInsets:Landroid/graphics/Rect;

    .line 3234
    iget-object v1, v14, Lcom/android/server/wm/WindowState;->mWindowFrames:Lcom/android/server/wm/WindowFrames;

    iget-object v5, v1, Lcom/android/server/wm/WindowFrames;->mLastContentInsets:Landroid/graphics/Rect;

    .line 3235
    iget-object v1, v14, Lcom/android/server/wm/WindowState;->mWindowFrames:Lcom/android/server/wm/WindowFrames;

    iget-object v6, v1, Lcom/android/server/wm/WindowFrames;->mLastVisibleInsets:Landroid/graphics/Rect;

    .line 3236
    iget-object v1, v14, Lcom/android/server/wm/WindowState;->mWindowFrames:Lcom/android/server/wm/WindowFrames;

    iget-object v7, v1, Lcom/android/server/wm/WindowFrames;->mLastStableInsets:Landroid/graphics/Rect;

    .line 3237
    iget-object v1, v14, Lcom/android/server/wm/WindowState;->mWindowFrames:Lcom/android/server/wm/WindowFrames;

    iget-object v8, v1, Lcom/android/server/wm/WindowFrames;->mLastOutsets:Landroid/graphics/Rect;

    .line 3238
    iget-object v1, v14, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    iget v1, v1, Lcom/android/server/wm/WindowStateAnimator;->mDrawState:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_51

    move v9, v2

    goto :goto_52

    :cond_51
    const/4 v9, 0x0

    .line 3239
    :goto_52
    iget-boolean v11, v14, Lcom/android/server/wm/WindowState;->mReportOrientationChanged:Z

    .line 3240
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/WindowState;->getDisplayId()I

    move-result v16

    .line 3241
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/WindowState;->getWmDisplayCutout()Lcom/android/server/wm/utils/WmDisplayCutout;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/wm/utils/WmDisplayCutout;->getDisplayCutout()Landroid/view/DisplayCutout;

    move-result-object v17

    .line 3242
    iget-object v1, v14, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v1, v1, Landroid/view/WindowManager$LayoutParams;->type:I
    :try_end_64
    .catch Landroid/os/RemoteException; {:try_start_1c .. :try_end_64} :catch_d3

    const/4 v2, 0x3

    if-eq v1, v2, :cond_8a

    :try_start_67
    iget-object v1, v14, Lcom/android/server/wm/WindowState;->mClient:Landroid/view/IWindow;

    instance-of v1, v1, Landroid/view/IWindow$Stub;

    if-eqz v1, :cond_8a

    .line 3245
    iget-object v1, v14, Lcom/android/server/wm/WindowState;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v10, v1, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    new-instance v2, Lcom/android/server/wm/WindowState$3;
    :try_end_73
    .catch Landroid/os/RemoteException; {:try_start_67 .. :try_end_73} :catch_86

    move-object v1, v2

    move-object v15, v2

    move-object/from16 v2, p0

    move-object v14, v10

    move-object v10, v0

    move-wide/from16 v18, v12

    move/from16 v12, v16

    move-object/from16 v13, v17

    :try_start_7f
    invoke-direct/range {v1 .. v13}, Lcom/android/server/wm/WindowState$3;-><init>(Lcom/android/server/wm/WindowState;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;ZLandroid/util/MergedConfiguration;ZILandroid/view/DisplayCutout;)V

    invoke-virtual {v14, v15}, Lcom/android/server/wm/WindowManagerService$H;->post(Ljava/lang/Runnable;)Z

    goto :goto_9e

    .line 3274
    :catch_86
    move-exception v0

    move-wide/from16 v18, v12

    goto :goto_d0

    .line 3242
    :cond_8a
    move-wide/from16 v18, v12

    .line 3258
    move-object/from16 v1, p0

    move-object v2, v3

    move-object v3, v4

    move-object v4, v5

    move-object v5, v6

    move-object v6, v7

    move-object v7, v8

    move v8, v9

    move-object v9, v0

    move v10, v11

    move/from16 v11, v16

    move-object/from16 v12, v17

    invoke-direct/range {v1 .. v12}, Lcom/android/server/wm/WindowState;->dispatchResized(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;ZLandroid/util/MergedConfiguration;ZILandroid/view/DisplayCutout;)V
    :try_end_9e
    .catch Landroid/os/RemoteException; {:try_start_7f .. :try_end_9e} :catch_cf

    .line 3265
    :goto_9e
    move-object/from16 v1, p0

    :try_start_a0
    iget-object v0, v1, Lcom/android/server/wm/WindowState;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mAccessibilityController:Lcom/android/server/wm/AccessibilityController;

    if-eqz v0, :cond_bd

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/WindowState;->getDisplayId()I

    move-result v0

    if-eqz v0, :cond_b6

    .line 3266
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/WindowState;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->getParentWindow()Lcom/android/server/wm/WindowState;

    move-result-object v0

    if-eqz v0, :cond_bd

    .line 3267
    :cond_b6
    iget-object v0, v1, Lcom/android/server/wm/WindowState;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mAccessibilityController:Lcom/android/server/wm/AccessibilityController;

    invoke-virtual {v0}, Lcom/android/server/wm/AccessibilityController;->onSomeWindowResizedOrMovedLocked()V

    .line 3269
    :cond_bd
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/WindowState;->updateLocationInParentDisplayIfNeeded()V

    .line 3271
    iget-object v0, v1, Lcom/android/server/wm/WindowState;->mWindowFrames:Lcom/android/server/wm/WindowFrames;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowFrames;->resetInsetsChanged()V

    .line 3272
    iget-object v0, v1, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    const/4 v2, 0x0

    iput-boolean v2, v0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceResized:Z

    .line 3273
    iput-boolean v2, v1, Lcom/android/server/wm/WindowState;->mReportOrientationChanged:Z
    :try_end_cc
    .catch Landroid/os/RemoteException; {:try_start_a0 .. :try_end_cc} :catch_cd

    .line 3283
    goto :goto_110

    .line 3274
    :catch_cd
    move-exception v0

    goto :goto_d7

    :catch_cf
    move-exception v0

    :goto_d0
    move-object/from16 v1, p0

    goto :goto_d7

    :catch_d3
    move-exception v0

    move-wide/from16 v18, v12

    move-object v1, v14

    .line 3275
    :goto_d7
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/server/wm/WindowState;->setOrientationChanging(Z)V

    .line 3276
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iget-object v0, v1, Lcom/android/server/wm/WindowState;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-wide v4, v0, Lcom/android/server/wm/WindowManagerService;->mDisplayFreezeTime:J

    sub-long/2addr v2, v4

    long-to-int v0, v2

    iput v0, v1, Lcom/android/server/wm/WindowState;->mLastFreezeDuration:I

    .line 3279
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to report \'resized\' to the client of "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", removing this window."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "WindowManager"

    invoke-static {v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3281
    iget-object v0, v1, Lcom/android/server/wm/WindowState;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mPendingRemove:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3282
    iget-object v0, v1, Lcom/android/server/wm/WindowState;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mWindowPlacerLocked:Lcom/android/server/wm/WindowSurfacePlacer;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowSurfacePlacer;->requestTraversal()V

    .line 3284
    :goto_110
    invoke-static/range {v18 .. v19}, Landroid/os/Trace;->traceEnd(J)V

    .line 3285
    return-void
.end method

.method requestUpdateWallpaperIfNeeded()V
    .registers 4

    .line 3963
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    .line 3964
    if-eqz v0, :cond_1f

    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v1, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v2, 0x100000

    and-int/2addr v1, v2

    if-eqz v1, :cond_1f

    .line 3965
    iget v1, v0, Lcom/android/server/wm/DisplayContent;->pendingLayoutChanges:I

    or-int/lit8 v1, v1, 0x4

    iput v1, v0, Lcom/android/server/wm/DisplayContent;->pendingLayoutChanges:I

    .line 3966
    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->setLayoutNeeded()V

    .line 3967
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mWindowPlacerLocked:Lcom/android/server/wm/WindowSurfacePlacer;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowSurfacePlacer;->requestTraversal()V

    .line 3970
    :cond_1f
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_27
    if-ltz v0, :cond_37

    .line 3971
    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v1, v0}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/WindowState;

    .line 3972
    invoke-virtual {v1}, Lcom/android/server/wm/WindowState;->requestUpdateWallpaperIfNeeded()V

    .line 3970
    add-int/lit8 v0, v0, -0x1

    goto :goto_27

    .line 3974
    :cond_37
    return-void
.end method

.method resetAppOpsState()V
    .registers 5

    .line 2795
    iget v0, p0, Lcom/android/server/wm/WindowState;->mAppOp:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1a

    iget-boolean v0, p0, Lcom/android/server/wm/WindowState;->mAppOpVisibility:Z

    if-eqz v0, :cond_1a

    .line 2796
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mAppOps:Landroid/app/AppOpsManager;

    iget v1, p0, Lcom/android/server/wm/WindowState;->mAppOp:I

    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getOwningUid()I

    move-result v2

    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getOwningPackage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/AppOpsManager;->finishOp(IILjava/lang/String;)V

    .line 2798
    :cond_1a
    return-void
.end method

.method resetContentChanged()V
    .registers 3

    .line 5264
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mWindowFrames:Lcom/android/server/wm/WindowFrames;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/server/wm/WindowFrames;->setContentChanged(Z)V

    .line 5265
    return-void
.end method

.method resetDragResizingChangeReported()V
    .registers 2

    .line 3479
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/wm/WindowState;->mDragResizingChangeReported:Z

    .line 3480
    invoke-super {p0}, Lcom/android/server/wm/WindowContainer;->resetDragResizingChangeReported()V

    .line 3481
    return-void
.end method

.method resetLastContentInsets()V
    .registers 2

    .line 5251
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mWindowFrames:Lcom/android/server/wm/WindowFrames;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowFrames;->resetLastContentInsets()V

    .line 5252
    return-void
.end method

.method seamlesslyRotateIfAllowed(Landroid/view/SurfaceControl$Transaction;IIZ)V
    .registers 6

    .line 645
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->isVisibleNow()Z

    move-result v0

    if-eqz v0, :cond_30

    iget-boolean v0, p0, Lcom/android/server/wm/WindowState;->mIsWallpaper:Z

    if-eqz v0, :cond_b

    goto :goto_30

    .line 649
    :cond_b
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mPendingSeamlessRotate:Lcom/android/server/wm/SeamlessRotator;

    if-eqz v0, :cond_13

    .line 650
    invoke-virtual {v0}, Lcom/android/server/wm/SeamlessRotator;->getOldRotation()I

    move-result p2

    .line 653
    :cond_13
    iget-boolean v0, p0, Lcom/android/server/wm/WindowState;->mForceSeamlesslyRotate:Z

    if-nez v0, :cond_19

    if-eqz p4, :cond_2f

    .line 654
    :cond_19
    new-instance p4, Lcom/android/server/wm/SeamlessRotator;

    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getDisplayInfo()Landroid/view/DisplayInfo;

    move-result-object v0

    invoke-direct {p4, p2, p3, v0}, Lcom/android/server/wm/SeamlessRotator;-><init>(IILandroid/view/DisplayInfo;)V

    iput-object p4, p0, Lcom/android/server/wm/WindowState;->mPendingSeamlessRotate:Lcom/android/server/wm/SeamlessRotator;

    .line 655
    iget-object p2, p0, Lcom/android/server/wm/WindowState;->mPendingSeamlessRotate:Lcom/android/server/wm/SeamlessRotator;

    invoke-virtual {p2, p1, p0}, Lcom/android/server/wm/SeamlessRotator;->unrotate(Landroid/view/SurfaceControl$Transaction;Lcom/android/server/wm/WindowState;)V

    .line 656
    iget-object p1, p0, Lcom/android/server/wm/WindowState;->mWmService:Lcom/android/server/wm/WindowManagerService;

    const/4 p2, 0x1

    invoke-virtual {p1, p0, p2}, Lcom/android/server/wm/WindowManagerService;->markForSeamlessRotation(Lcom/android/server/wm/WindowState;Z)V

    .line 658
    :cond_2f
    return-void

    .line 646
    :cond_30
    :goto_30
    return-void
.end method

.method sendAppVisibilityToClients()V
    .registers 5

    .line 2871
    invoke-super {p0}, Lcom/android/server/wm/WindowContainer;->sendAppVisibilityToClients()V

    .line 2873
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    invoke-virtual {v0}, Lcom/android/server/wm/AppWindowToken;->isClientHidden()Z

    move-result v0

    .line 2874
    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v1, v1, Landroid/view/WindowManager$LayoutParams;->type:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_13

    if-eqz v0, :cond_13

    .line 2876
    return-void

    .line 2879
    :cond_13
    const/4 v1, 0x1

    if-eqz v0, :cond_34

    .line 2883
    iget-object v2, p0, Lcom/android/server/wm/WindowState;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowList;->size()I

    move-result v2

    sub-int/2addr v2, v1

    :goto_1d
    if-ltz v2, :cond_2f

    .line 2884
    iget-object v3, p0, Lcom/android/server/wm/WindowState;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v3, v2}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/WindowState;

    .line 2885
    iget-object v3, v3, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    invoke-virtual {v3}, Lcom/android/server/wm/WindowStateAnimator;->detachChildren()V

    .line 2883
    add-int/lit8 v2, v2, -0x1

    goto :goto_1d

    .line 2888
    :cond_2f
    iget-object v2, p0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowStateAnimator;->detachChildren()V

    .line 2894
    :cond_34
    :try_start_34
    iget-object v2, p0, Lcom/android/server/wm/WindowState;->mClient:Landroid/view/IWindow;

    if-nez v0, :cond_39

    goto :goto_3a

    :cond_39
    const/4 v1, 0x0

    :goto_3a
    invoke-interface {v2, v1}, Landroid/view/IWindow;->dispatchAppVisibility(Z)V
    :try_end_3d
    .catch Landroid/os/RemoteException; {:try_start_34 .. :try_end_3d} :catch_3e

    .line 2896
    goto :goto_3f

    .line 2895
    :catch_3e
    move-exception v0

    .line 2897
    :goto_3f
    return-void
.end method

.method setDisplayLayoutNeeded()V
    .registers 2

    .line 2268
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    .line 2269
    if-eqz v0, :cond_9

    .line 2270
    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->setLayoutNeeded()V

    .line 2272
    :cond_9
    return-void
.end method

.method setDragResizing()V
    .registers 3

    .line 3514
    invoke-direct {p0}, Lcom/android/server/wm/WindowState;->computeDragResizing()Z

    move-result v0

    .line 3515
    iget-boolean v1, p0, Lcom/android/server/wm/WindowState;->mDragResizing:Z

    if-ne v0, v1, :cond_9

    .line 3516
    return-void

    .line 3518
    :cond_9
    iput-boolean v0, p0, Lcom/android/server/wm/WindowState;->mDragResizing:Z

    .line 3519
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getTask()Lcom/android/server/wm/Task;

    move-result-object v0

    .line 3520
    if-eqz v0, :cond_1e

    invoke-virtual {v0}, Lcom/android/server/wm/Task;->isDragResizing()Z

    move-result v1

    if-eqz v1, :cond_1e

    .line 3521
    invoke-virtual {v0}, Lcom/android/server/wm/Task;->getDragResizeMode()I

    move-result v0

    iput v0, p0, Lcom/android/server/wm/WindowState;->mResizeMode:I

    goto :goto_33

    .line 3523
    :cond_1e
    iget-boolean v0, p0, Lcom/android/server/wm/WindowState;->mDragResizing:Z

    if-eqz v0, :cond_30

    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    iget-object v0, v0, Lcom/android/server/wm/DisplayContent;->mDividerControllerLocked:Lcom/android/server/wm/DockedStackDividerController;

    invoke-virtual {v0}, Lcom/android/server/wm/DockedStackDividerController;->isResizing()Z

    move-result v0

    if-eqz v0, :cond_30

    .line 3524
    const/4 v0, 0x1

    goto :goto_31

    .line 3525
    :cond_30
    const/4 v0, 0x0

    :goto_31
    iput v0, p0, Lcom/android/server/wm/WindowState;->mResizeMode:I

    .line 3527
    :goto_33
    return-void
.end method

.method setDrawnStateEvaluated(Z)V
    .registers 2

    .line 854
    iput-boolean p1, p0, Lcom/android/server/wm/WindowState;->mDrawnStateEvaluated:Z

    .line 855
    return-void
.end method

.method setForceHideNonSystemOverlayWindowIfNeeded(Z)V
    .registers 4

    .line 2731
    iget-boolean v0, p0, Lcom/android/server/wm/WindowState;->mOwnerCanAddInternalSystemWindow:Z

    if-nez v0, :cond_29

    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 2732
    invoke-static {v0}, Landroid/view/WindowManager$LayoutParams;->isSystemAlertWindowType(I)Z

    move-result v0

    if-nez v0, :cond_17

    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v1, 0x7d5

    if-eq v0, v1, :cond_17

    goto :goto_29

    .line 2735
    :cond_17
    iget-boolean v0, p0, Lcom/android/server/wm/WindowState;->mForceHideNonSystemOverlayWindow:Z

    if-ne v0, p1, :cond_1c

    .line 2736
    return-void

    .line 2738
    :cond_1c
    iput-boolean p1, p0, Lcom/android/server/wm/WindowState;->mForceHideNonSystemOverlayWindow:Z

    .line 2739
    const/4 v0, 0x1

    if-eqz p1, :cond_25

    .line 2740
    invoke-virtual {p0, v0, v0}, Lcom/android/server/wm/WindowState;->hideLw(ZZ)Z

    goto :goto_28

    .line 2742
    :cond_25
    invoke-virtual {p0, v0, v0}, Lcom/android/server/wm/WindowState;->showLw(ZZ)Z

    .line 2744
    :goto_28
    return-void

    .line 2733
    :cond_29
    :goto_29
    return-void
.end method

.method setFrameNumber(J)V
    .registers 3

    .line 5197
    iput-wide p1, p0, Lcom/android/server/wm/WindowState;->mFrameNumber:J

    .line 5198
    return-void
.end method

.method setHasSurface(Z)V
    .registers 2

    .line 2120
    iput-boolean p1, p0, Lcom/android/server/wm/WindowState;->mHasSurface:Z

    .line 2121
    return-void
.end method

.method setHiddenWhileSuspended(Z)V
    .registers 4

    .line 2747
    iget-boolean v0, p0, Lcom/android/server/wm/WindowState;->mOwnerCanAddInternalSystemWindow:Z

    if-nez v0, :cond_29

    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 2748
    invoke-static {v0}, Landroid/view/WindowManager$LayoutParams;->isSystemAlertWindowType(I)Z

    move-result v0

    if-nez v0, :cond_17

    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v1, 0x7d5

    if-eq v0, v1, :cond_17

    goto :goto_29

    .line 2751
    :cond_17
    iget-boolean v0, p0, Lcom/android/server/wm/WindowState;->mHiddenWhileSuspended:Z

    if-ne v0, p1, :cond_1c

    .line 2752
    return-void

    .line 2754
    :cond_1c
    iput-boolean p1, p0, Lcom/android/server/wm/WindowState;->mHiddenWhileSuspended:Z

    .line 2755
    const/4 v0, 0x1

    if-eqz p1, :cond_25

    .line 2756
    invoke-virtual {p0, v0, v0}, Lcom/android/server/wm/WindowState;->hideLw(ZZ)Z

    goto :goto_28

    .line 2758
    :cond_25
    invoke-virtual {p0, v0, v0}, Lcom/android/server/wm/WindowState;->showLw(ZZ)Z

    .line 2760
    :goto_28
    return-void

    .line 2749
    :cond_29
    :goto_29
    return-void
.end method

.method setInsetProvider(Lcom/android/server/wm/InsetsSourceProvider;)V
    .registers 2

    .line 5268
    iput-object p1, p0, Lcom/android/server/wm/WindowState;->mInsetProvider:Lcom/android/server/wm/InsetsSourceProvider;

    .line 5269
    return-void
.end method

.method setLastExclusionHeights(III)V
    .registers 5

    .line 697
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mLastGrantedExclusionHeight:[I

    aget v0, v0, p1

    if-ne v0, p3, :cond_f

    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mLastRequestedExclusionHeight:[I

    aget v0, v0, p1

    if-eq v0, p2, :cond_d

    goto :goto_f

    :cond_d
    const/4 v0, 0x0

    goto :goto_10

    :cond_f
    :goto_f
    const/4 v0, 0x1

    .line 700
    :goto_10
    if-eqz v0, :cond_21

    .line 701
    iget-boolean v0, p0, Lcom/android/server/wm/WindowState;->mLastShownChangedReported:Z

    if-eqz v0, :cond_19

    .line 702
    invoke-direct {p0, p1}, Lcom/android/server/wm/WindowState;->logExclusionRestrictions(I)V

    .line 705
    :cond_19
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mLastGrantedExclusionHeight:[I

    aput p3, v0, p1

    .line 706
    iget-object p3, p0, Lcom/android/server/wm/WindowState;->mLastRequestedExclusionHeight:[I

    aput p2, p3, p1

    .line 708
    :cond_21
    return-void
.end method

.method setLastReportedMergedConfiguration(Landroid/util/MergedConfiguration;)V
    .registers 3

    .line 2483
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mLastReportedConfiguration:Landroid/util/MergedConfiguration;

    invoke-virtual {v0, p1}, Landroid/util/MergedConfiguration;->setTo(Landroid/util/MergedConfiguration;)V

    .line 2484
    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/android/server/wm/WindowState;->mLastConfigReportedToClient:Z

    .line 2485
    return-void
.end method

.method setOrientationChanging(Z)V
    .registers 2

    .line 1358
    iput-boolean p1, p0, Lcom/android/server/wm/WindowState;->mOrientationChanging:Z

    .line 1359
    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/server/wm/WindowState;->mOrientationChangeTimedOut:Z

    .line 1360
    return-void
.end method

.method setPolicyVisibilityFlag(I)V
    .registers 3

    .line 1504
    iget v0, p0, Lcom/android/server/wm/WindowState;->mPolicyVisibility:I

    or-int/2addr p1, v0

    iput p1, p0, Lcom/android/server/wm/WindowState;->mPolicyVisibility:I

    .line 1505
    iget-object p1, p0, Lcom/android/server/wm/WindowState;->mWmService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {p1}, Lcom/android/server/wm/WindowManagerService;->scheduleAnimationLocked()V

    .line 1506
    return-void
.end method

.method setReplacementWindowIfNeeded(Lcom/android/server/wm/WindowState;)Z
    .registers 5

    .line 2249
    nop

    .line 2251
    iget-boolean v0, p0, Lcom/android/server/wm/WindowState;->mWillReplaceWindow:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_29

    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mReplacementWindow:Lcom/android/server/wm/WindowState;

    if-nez v0, :cond_29

    .line 2252
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getWindowTag()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->getWindowTag()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_29

    .line 2254
    iput-object p1, p0, Lcom/android/server/wm/WindowState;->mReplacementWindow:Lcom/android/server/wm/WindowState;

    .line 2255
    iget-boolean v0, p0, Lcom/android/server/wm/WindowState;->mAnimateReplacingWindow:Z

    xor-int/2addr v0, v1

    iput-boolean v0, p1, Lcom/android/server/wm/WindowState;->mSkipEnterAnimationForSeamlessReplacement:Z

    .line 2256
    move v0, v1

    goto :goto_2a

    .line 2259
    :cond_29
    const/4 v0, 0x0

    :goto_2a
    iget-object v2, p0, Lcom/android/server/wm/WindowState;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowList;->size()I

    move-result v2

    sub-int/2addr v2, v1

    :goto_31
    if-ltz v2, :cond_43

    .line 2260
    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v1, v2}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/WindowState;

    .line 2261
    invoke-virtual {v1, p1}, Lcom/android/server/wm/WindowState;->setReplacementWindowIfNeeded(Lcom/android/server/wm/WindowState;)Z

    move-result v1

    or-int/2addr v0, v1

    .line 2259
    add-int/lit8 v2, v2, -0x1

    goto :goto_31

    .line 2264
    :cond_43
    return v0
.end method

.method setReportResizeHints()Z
    .registers 2

    .line 1249
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mWindowFrames:Lcom/android/server/wm/WindowFrames;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowFrames;->setReportResizeHints()Z

    move-result v0

    return v0
.end method

.method setRequestedSize(II)V
    .registers 4

    .line 2408
    iget v0, p0, Lcom/android/server/wm/WindowState;->mRequestedWidth:I

    if-ne v0, p1, :cond_8

    iget v0, p0, Lcom/android/server/wm/WindowState;->mRequestedHeight:I

    if-eq v0, p2, :cond_f

    .line 2409
    :cond_8
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/wm/WindowState;->mLayoutNeeded:Z

    .line 2410
    iput p1, p0, Lcom/android/server/wm/WindowState;->mRequestedWidth:I

    .line 2411
    iput p2, p0, Lcom/android/server/wm/WindowState;->mRequestedHeight:I

    .line 2413
    :cond_f
    return-void
.end method

.method setShowToOwnerOnlyLocked(Z)V
    .registers 2

    .line 3042
    iput-boolean p1, p0, Lcom/android/server/wm/WindowState;->mShowToOwnerOnly:Z

    .line 3043
    return-void
.end method

.method setSystemGestureExclusion(Ljava/util/List;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/graphics/Rect;",
            ">;)Z"
        }
    .end annotation

    .line 679
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mExclusionRects:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 680
    const/4 p1, 0x0

    return p1

    .line 682
    :cond_a
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mExclusionRects:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 683
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mExclusionRects:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 684
    const/4 p1, 0x1

    return p1
.end method

.method setWaitingForDrawnIfResizingChanged()V
    .registers 2

    .line 3461
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->isDragResizeChanged()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 3462
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mWaitingForDrawn:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3464
    :cond_d
    invoke-super {p0}, Lcom/android/server/wm/WindowContainer;->setWaitingForDrawnIfResizingChanged()V

    .line 3465
    return-void
.end method

.method setWillReplaceChildWindows()V
    .registers 3

    .line 4006
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->shouldBeReplacedWithChildren()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 4007
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/server/wm/WindowState;->setWillReplaceWindow(Z)V

    .line 4009
    :cond_a
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_12
    if-ltz v0, :cond_22

    .line 4010
    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v1, v0}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/WindowState;

    .line 4011
    invoke-virtual {v1}, Lcom/android/server/wm/WindowState;->setWillReplaceChildWindows()V

    .line 4009
    add-int/lit8 v0, v0, -0x1

    goto :goto_12

    .line 4013
    :cond_22
    return-void
.end method

.method setWillReplaceWindow(Z)V
    .registers 5

    .line 3920
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowList;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    :goto_8
    if-ltz v0, :cond_18

    .line 3921
    iget-object v2, p0, Lcom/android/server/wm/WindowState;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v2, v0}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/WindowState;

    .line 3922
    invoke-virtual {v2, p1}, Lcom/android/server/wm/WindowState;->setWillReplaceWindow(Z)V

    .line 3920
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    .line 3925
    :cond_18
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    const v2, 0x8000

    and-int/2addr v0, v2

    if-nez v0, :cond_32

    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/4 v2, 0x3

    if-ne v0, v2, :cond_2a

    goto :goto_32

    .line 3932
    :cond_2a
    iput-boolean v1, p0, Lcom/android/server/wm/WindowState;->mWillReplaceWindow:Z

    .line 3933
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/wm/WindowState;->mReplacementWindow:Lcom/android/server/wm/WindowState;

    .line 3934
    iput-boolean p1, p0, Lcom/android/server/wm/WindowState;->mAnimateReplacingWindow:Z

    .line 3935
    return-void

    .line 3929
    :cond_32
    :goto_32
    return-void
.end method

.method setWindowScale(II)V
    .registers 5

    .line 2509
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit16 v0, v0, 0x4000

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    .line 2511
    :goto_b
    const/high16 v1, 0x3f800000  # 1.0f

    if-eqz v0, :cond_34

    .line 2515
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    if-eq v0, p1, :cond_1e

    .line 2516
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    int-to-float v0, v0

    int-to-float p1, p1

    div-float p1, v0, p1

    goto :goto_1f

    :cond_1e
    move p1, v1

    :goto_1f
    iput p1, p0, Lcom/android/server/wm/WindowState;->mHScale:F

    .line 2517
    iget-object p1, p0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget p1, p1, Landroid/view/WindowManager$LayoutParams;->height:I

    if-eq p1, p2, :cond_30

    .line 2518
    iget-object p1, p0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget p1, p1, Landroid/view/WindowManager$LayoutParams;->height:I

    int-to-float p1, p1

    int-to-float p2, p2

    div-float v1, p1, p2

    goto :goto_31

    :cond_30
    nop

    :goto_31
    iput v1, p0, Lcom/android/server/wm/WindowState;->mVScale:F

    goto :goto_38

    .line 2520
    :cond_34
    iput v1, p0, Lcom/android/server/wm/WindowState;->mVScale:F

    iput v1, p0, Lcom/android/server/wm/WindowState;->mHScale:F

    .line 2522
    :goto_38
    return-void
.end method

.method shouldBeReplacedWithChildren()Z
    .registers 3

    .line 4001
    iget-boolean v0, p0, Lcom/android/server/wm/WindowState;->mIsChildWindow:Z

    if-nez v0, :cond_15

    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_15

    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_13

    goto :goto_15

    :cond_13
    const/4 v0, 0x0

    goto :goto_16

    :cond_15
    :goto_15
    const/4 v0, 0x1

    :goto_16
    return v0
.end method

.method shouldMagnify()Z
    .registers 3

    .line 4921
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v1, 0x7db

    if-eq v0, v1, :cond_2b

    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v1, 0x7dc

    if-eq v0, v1, :cond_2b

    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v1, 0x7eb

    if-eq v0, v1, :cond_2b

    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v1, 0x7e3

    if-eq v0, v1, :cond_2b

    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v1, 0x7e8

    if-ne v0, v1, :cond_29

    goto :goto_2b

    .line 4930
    :cond_29
    const/4 v0, 0x1

    return v0

    .line 4928
    :cond_2b
    :goto_2b
    const/4 v0, 0x0

    return v0
.end method

.method public showLw(Z)Z
    .registers 3

    .line 2628
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/android/server/wm/WindowState;->showLw(ZZ)Z

    move-result p1

    return p1
.end method

.method showLw(ZZ)Z
    .registers 5

    .line 2632
    invoke-direct {p0}, Lcom/android/server/wm/WindowState;->isLegacyPolicyVisibility()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_c

    iget-boolean v0, p0, Lcom/android/server/wm/WindowState;->mLegacyPolicyVisibilityAfterAnim:Z

    if-eqz v0, :cond_c

    .line 2634
    return v1

    .line 2636
    :cond_c
    invoke-direct {p0}, Lcom/android/server/wm/WindowState;->isHiddenFromUserLocked()Z

    move-result v0

    if-eqz v0, :cond_13

    .line 2637
    return v1

    .line 2639
    :cond_13
    iget-boolean v0, p0, Lcom/android/server/wm/WindowState;->mAppOpVisibility:Z

    if-nez v0, :cond_18

    .line 2641
    return v1

    .line 2643
    :cond_18
    iget-boolean v0, p0, Lcom/android/server/wm/WindowState;->mPermanentlyHidden:Z

    if-eqz v0, :cond_1d

    .line 2646
    return v1

    .line 2648
    :cond_1d
    iget-boolean v0, p0, Lcom/android/server/wm/WindowState;->mHiddenWhileSuspended:Z

    if-eqz v0, :cond_22

    .line 2650
    return v1

    .line 2652
    :cond_22
    iget-boolean v0, p0, Lcom/android/server/wm/WindowState;->mForceHideNonSystemOverlayWindow:Z

    if-eqz v0, :cond_27

    .line 2654
    return v1

    .line 2657
    :cond_27
    if-eqz p1, :cond_40

    .line 2660
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mToken:Lcom/android/server/wm/WindowToken;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowToken;->okToAnimate()Z

    move-result v0

    if-nez v0, :cond_33

    .line 2661
    move p1, v1

    goto :goto_40

    .line 2662
    :cond_33
    invoke-direct {p0}, Lcom/android/server/wm/WindowState;->isLegacyPolicyVisibility()Z

    move-result v0

    if-eqz v0, :cond_40

    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->isAnimating()Z

    move-result v0

    if-nez v0, :cond_40

    .line 2666
    move p1, v1

    .line 2669
    :cond_40
    :goto_40
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/server/wm/WindowState;->setPolicyVisibilityFlag(I)V

    .line 2670
    iput-boolean v0, p0, Lcom/android/server/wm/WindowState;->mLegacyPolicyVisibilityAfterAnim:Z

    .line 2671
    if-eqz p1, :cond_4d

    .line 2672
    iget-object p1, p0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    invoke-virtual {p1, v0, v0}, Lcom/android/server/wm/WindowStateAnimator;->applyAnimationLocked(IZ)Z

    .line 2674
    :cond_4d
    if-eqz p2, :cond_54

    .line 2675
    iget-object p1, p0, Lcom/android/server/wm/WindowState;->mWmService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {p1}, Lcom/android/server/wm/WindowManagerService;->scheduleAnimationLocked()V

    .line 2677
    :cond_54
    iget-object p1, p0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget p1, p1, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit8 p1, p1, 0x8

    if-nez p1, :cond_61

    .line 2678
    iget-object p1, p0, Lcom/android/server/wm/WindowState;->mWmService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {p1, v1, v1}, Lcom/android/server/wm/WindowManagerService;->updateFocusedWindowLocked(IZ)Z

    .line 2680
    :cond_61
    return v0
.end method

.method startAnimation(Landroid/view/animation/Animation;)V
    .registers 7

    .line 4771
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mInsetProvider:Lcom/android/server/wm/InsetsSourceProvider;

    if-eqz v0, :cond_b

    invoke-virtual {v0}, Lcom/android/server/wm/InsetsSourceProvider;->isControllable()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 4772
    return-void

    .line 4775
    :cond_b
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->getDisplayInfo()Landroid/view/DisplayInfo;

    move-result-object v0

    .line 4776
    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mWindowFrames:Lcom/android/server/wm/WindowFrames;

    iget-object v1, v1, Lcom/android/server/wm/WindowFrames;->mFrame:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    iget-object v2, p0, Lcom/android/server/wm/WindowState;->mWindowFrames:Lcom/android/server/wm/WindowFrames;

    iget-object v2, v2, Lcom/android/server/wm/WindowFrames;->mFrame:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    iget v3, v0, Landroid/view/DisplayInfo;->appWidth:I

    iget v0, v0, Landroid/view/DisplayInfo;->appHeight:I

    invoke-virtual {p1, v1, v2, v3, v0}, Landroid/view/animation/Animation;->initialize(IIII)V

    .line 4778
    const-wide/16 v0, 0x2710

    invoke-virtual {p1, v0, v1}, Landroid/view/animation/Animation;->restrictDuration(J)V

    .line 4779
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mWmService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerService;->getWindowAnimationScaleLocked()F

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/animation/Animation;->scaleCurrentDuration(F)V

    .line 4780
    new-instance v0, Lcom/android/server/wm/LocalAnimationAdapter;

    new-instance v1, Lcom/android/server/wm/WindowAnimationSpec;

    iget-object v2, p0, Lcom/android/server/wm/WindowState;->mSurfacePosition:Landroid/graphics/Point;

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-direct {v1, p1, v2, v3, v4}, Lcom/android/server/wm/WindowAnimationSpec;-><init>(Landroid/view/animation/Animation;Landroid/graphics/Point;ZF)V

    iget-object p1, p0, Lcom/android/server/wm/WindowState;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object p1, p1, Lcom/android/server/wm/WindowManagerService;->mSurfaceAnimationRunner:Lcom/android/server/wm/SurfaceAnimationRunner;

    invoke-direct {v0, v1, p1}, Lcom/android/server/wm/LocalAnimationAdapter;-><init>(Lcom/android/server/wm/LocalAnimationAdapter$AnimationSpec;Lcom/android/server/wm/SurfaceAnimationRunner;)V

    .line 4784
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getPendingTransaction()Landroid/view/SurfaceControl$Transaction;

    move-result-object p1

    invoke-direct {p0, p1, v0}, Lcom/android/server/wm/WindowState;->startAnimation(Landroid/view/SurfaceControl$Transaction;Lcom/android/server/wm/AnimationAdapter;)V

    .line 4785
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->commitPendingTransaction()V

    .line 4786
    return-void
.end method

.method surfaceInsetsChanging()Z
    .registers 3

    .line 4657
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mLastSurfaceInsets:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget-object v1, v1, Landroid/view/WindowManager$LayoutParams;->surfaceInsets:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method switchUser()V
    .registers 3

    .line 2283
    invoke-super {p0}, Lcom/android/server/wm/WindowContainer;->switchUser()V

    .line 2284
    invoke-direct {p0}, Lcom/android/server/wm/WindowState;->isHiddenFromUserLocked()Z

    move-result v0

    const/4 v1, 0x2

    if-eqz v0, :cond_e

    .line 2287
    invoke-virtual {p0, v1}, Lcom/android/server/wm/WindowState;->clearPolicyVisibilityFlag(I)V

    goto :goto_11

    .line 2289
    :cond_e
    invoke-virtual {p0, v1}, Lcom/android/server/wm/WindowState;->setPolicyVisibilityFlag(I)V

    .line 2291
    :goto_11
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .line 3755
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getWindowTag()Ljava/lang/CharSequence;

    move-result-object v0

    .line 3756
    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mStringNameCache:Ljava/lang/String;

    if-eqz v1, :cond_12

    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mLastTitle:Ljava/lang/CharSequence;

    if-ne v1, v0, :cond_12

    iget-boolean v1, p0, Lcom/android/server/wm/WindowState;->mWasExiting:Z

    iget-boolean v2, p0, Lcom/android/server/wm/WindowState;->mAnimatingExit:Z

    if-eq v1, v2, :cond_57

    .line 3757
    :cond_12
    iput-object v0, p0, Lcom/android/server/wm/WindowState;->mLastTitle:Ljava/lang/CharSequence;

    .line 3758
    iget-boolean v0, p0, Lcom/android/server/wm/WindowState;->mAnimatingExit:Z

    iput-boolean v0, p0, Lcom/android/server/wm/WindowState;->mWasExiting:Z

    .line 3759
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Window{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " u"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/wm/WindowState;->mOwnerUid:I

    .line 3760
    invoke-static {v1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mLastTitle:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 3761
    iget-boolean v1, p0, Lcom/android/server/wm/WindowState;->mAnimatingExit:Z

    if-eqz v1, :cond_4c

    const-string v1, " EXITING}"

    goto :goto_4e

    :cond_4c
    const-string v1, "}"

    :goto_4e
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wm/WindowState;->mStringNameCache:Ljava/lang/String;

    .line 3763
    :cond_57
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mStringNameCache:Ljava/lang/String;

    return-object v0
.end method

.method transformClipRectFromScreenToSurfaceSpace(Landroid/graphics/Rect;)V
    .registers 6

    .line 3767
    iget v0, p0, Lcom/android/server/wm/WindowState;->mHScale:F

    const/high16 v1, 0x3f800000  # 1.0f

    cmpl-float v0, v0, v1

    if-nez v0, :cond_f

    iget v0, p0, Lcom/android/server/wm/WindowState;->mVScale:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_f

    .line 3768
    return-void

    .line 3770
    :cond_f
    iget v0, p0, Lcom/android/server/wm/WindowState;->mHScale:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_2d

    .line 3771
    iget v0, p1, Landroid/graphics/Rect;->left:I

    int-to-float v0, v0

    iget v2, p0, Lcom/android/server/wm/WindowState;->mHScale:F

    div-float/2addr v0, v2

    float-to-int v0, v0

    iput v0, p1, Landroid/graphics/Rect;->left:I

    .line 3772
    iget v0, p1, Landroid/graphics/Rect;->right:I

    int-to-float v0, v0

    iget v2, p0, Lcom/android/server/wm/WindowState;->mHScale:F

    div-float/2addr v0, v2

    float-to-double v2, v0

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int v0, v2

    iput v0, p1, Landroid/graphics/Rect;->right:I

    .line 3774
    :cond_2d
    iget v0, p0, Lcom/android/server/wm/WindowState;->mVScale:F

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_4a

    .line 3775
    iget v0, p1, Landroid/graphics/Rect;->top:I

    int-to-float v0, v0

    iget v1, p0, Lcom/android/server/wm/WindowState;->mVScale:F

    div-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p1, Landroid/graphics/Rect;->top:I

    .line 3776
    iget v0, p1, Landroid/graphics/Rect;->bottom:I

    int-to-float v0, v0

    iget v1, p0, Lcom/android/server/wm/WindowState;->mVScale:F

    div-float/2addr v0, v1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int v0, v0

    iput v0, p1, Landroid/graphics/Rect;->bottom:I

    .line 3778
    :cond_4a
    return-void
.end method

.method translateToWindowX(F)F
    .registers 3

    .line 3977
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mWindowFrames:Lcom/android/server/wm/WindowFrames;

    iget-object v0, v0, Lcom/android/server/wm/WindowFrames;->mFrame:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    int-to-float v0, v0

    sub-float/2addr p1, v0

    .line 3978
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->inSizeCompatMode()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 3979
    iget v0, p0, Lcom/android/server/wm/WindowState;->mGlobalScale:F

    mul-float/2addr p1, v0

    .line 3981
    :cond_11
    return p1
.end method

.method translateToWindowY(F)F
    .registers 3

    .line 3985
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mWindowFrames:Lcom/android/server/wm/WindowFrames;

    iget-object v0, v0, Lcom/android/server/wm/WindowFrames;->mFrame:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    int-to-float v0, v0

    sub-float/2addr p1, v0

    .line 3986
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->inSizeCompatMode()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 3987
    iget v0, p0, Lcom/android/server/wm/WindowState;->mGlobalScale:F

    mul-float/2addr p1, v0

    .line 3989
    :cond_11
    return p1
.end method

.method public unregisterFocusObserver(Landroid/view/IWindowFocusObserver;)V
    .registers 4

    .line 3393
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_5
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 3394
    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mFocusCallbacks:Landroid/os/RemoteCallbackList;

    if-eqz v1, :cond_11

    .line 3395
    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mFocusCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v1, p1}, Landroid/os/RemoteCallbackList;->unregister(Landroid/os/IInterface;)Z

    .line 3397
    :cond_11
    monitor-exit v0
    :try_end_12
    .catchall {:try_start_5 .. :try_end_12} :catchall_16

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 3398
    return-void

    .line 3397
    :catchall_16
    move-exception p1

    :try_start_17
    monitor-exit v0
    :try_end_18
    .catchall {:try_start_17 .. :try_end_18} :catchall_16

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p1
.end method

.method updateAppOpsState()V
    .registers 7

    .line 2801
    iget v0, p0, Lcom/android/server/wm/WindowState;->mAppOp:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_6

    .line 2802
    return-void

    .line 2804
    :cond_6
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getOwningUid()I

    move-result v0

    .line 2805
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getOwningPackage()Ljava/lang/String;

    move-result-object v1

    .line 2806
    iget-boolean v2, p0, Lcom/android/server/wm/WindowState;->mAppOpVisibility:Z

    const/4 v3, 0x3

    if-eqz v2, :cond_2f

    .line 2809
    iget-object v2, p0, Lcom/android/server/wm/WindowState;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mAppOps:Landroid/app/AppOpsManager;

    iget v4, p0, Lcom/android/server/wm/WindowState;->mAppOp:I

    invoke-virtual {v2, v4, v0, v1}, Landroid/app/AppOpsManager;->checkOpNoThrow(IILjava/lang/String;)I

    move-result v2

    .line 2810
    if-eqz v2, :cond_2e

    if-eq v2, v3, :cond_2e

    .line 2811
    iget-object v2, p0, Lcom/android/server/wm/WindowState;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mAppOps:Landroid/app/AppOpsManager;

    iget v3, p0, Lcom/android/server/wm/WindowState;->mAppOp:I

    invoke-virtual {v2, v3, v0, v1}, Landroid/app/AppOpsManager;->finishOp(IILjava/lang/String;)V

    .line 2812
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/server/wm/WindowState;->setAppOpVisibilityLw(Z)V

    .line 2814
    :cond_2e
    goto :goto_41

    .line 2815
    :cond_2f
    iget-object v2, p0, Lcom/android/server/wm/WindowState;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mAppOps:Landroid/app/AppOpsManager;

    iget v4, p0, Lcom/android/server/wm/WindowState;->mAppOp:I

    const/4 v5, 0x1

    invoke-virtual {v2, v4, v0, v1, v5}, Landroid/app/AppOpsManager;->startOpNoThrow(IILjava/lang/String;Z)I

    move-result v0

    .line 2816
    if-eqz v0, :cond_3e

    if-ne v0, v3, :cond_41

    .line 2817
    :cond_3e
    invoke-direct {p0, v5}, Lcom/android/server/wm/WindowState;->setAppOpVisibilityLw(Z)V

    .line 2820
    :cond_41
    :goto_41
    return-void
.end method

.method updateLastInsetValues()V
    .registers 2

    .line 4765
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mWindowFrames:Lcom/android/server/wm/WindowFrames;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowFrames;->updateLastInsetValues()V

    .line 4766
    return-void
.end method

.method updateLocationInParentDisplayIfNeeded()V
    .registers 4

    .line 3288
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mEmbeddedDisplayContents:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->size()I

    move-result v0

    .line 3291
    if-eqz v0, :cond_1a

    .line 3292
    add-int/lit8 v0, v0, -0x1

    :goto_a
    if-ltz v0, :cond_1a

    .line 3293
    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mEmbeddedDisplayContents:Landroid/util/ArraySet;

    invoke-virtual {v1, v0}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/DisplayContent;

    .line 3294
    invoke-virtual {v1}, Lcom/android/server/wm/DisplayContent;->notifyLocationInParentDisplayChanged()V

    .line 3292
    add-int/lit8 v0, v0, -0x1

    goto :goto_a

    .line 3299
    :cond_1a
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    .line 3300
    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->getParentWindow()Lcom/android/server/wm/WindowState;

    move-result-object v1

    if-nez v1, :cond_25

    .line 3301
    return-void

    .line 3304
    :cond_25
    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->getLocationInParentDisplay()Landroid/graphics/Point;

    move-result-object v0

    .line 3305
    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mLastReportedDisplayOffset:Landroid/graphics/Point;

    invoke-virtual {v1, v0}, Landroid/graphics/Point;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_32

    .line 3306
    return-void

    .line 3309
    :cond_32
    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mLastReportedDisplayOffset:Landroid/graphics/Point;

    iget v2, v0, Landroid/graphics/Point;->x:I

    iget v0, v0, Landroid/graphics/Point;->y:I

    invoke-virtual {v1, v2, v0}, Landroid/graphics/Point;->set(II)V

    .line 3311
    :try_start_3b
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mClient:Landroid/view/IWindow;

    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mLastReportedDisplayOffset:Landroid/graphics/Point;

    invoke-interface {v0, v1}, Landroid/view/IWindow;->locationInParentDisplayChanged(Landroid/graphics/Point;)V
    :try_end_42
    .catch Landroid/os/RemoteException; {:try_start_3b .. :try_end_42} :catch_43

    .line 3314
    goto :goto_4b

    .line 3312
    :catch_43
    move-exception v0

    .line 3313
    const-string v1, "WindowManager"

    const-string v2, "Failed to update offset from DisplayContent"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3315
    :goto_4b
    return-void
.end method

.method updateReportedVisibility(Lcom/android/server/wm/WindowState$UpdateReportedVisibilityResults;)V
    .registers 4

    .line 4503
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_8
    if-ltz v0, :cond_18

    .line 4504
    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v1, v0}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/WindowState;

    .line 4505
    invoke-virtual {v1, p1}, Lcom/android/server/wm/WindowState;->updateReportedVisibility(Lcom/android/server/wm/WindowState$UpdateReportedVisibilityResults;)V

    .line 4503
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    .line 4508
    :cond_18
    iget-boolean v0, p0, Lcom/android/server/wm/WindowState;->mAppFreezing:Z

    if-nez v0, :cond_57

    iget v0, p0, Lcom/android/server/wm/WindowState;->mViewVisibility:I

    if-nez v0, :cond_57

    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_57

    iget-boolean v0, p0, Lcom/android/server/wm/WindowState;->mDestroying:Z

    if-eqz v0, :cond_2c

    goto :goto_57

    .line 4526
    :cond_2c
    iget v0, p1, Lcom/android/server/wm/WindowState$UpdateReportedVisibilityResults;->numInteresting:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p1, Lcom/android/server/wm/WindowState$UpdateReportedVisibilityResults;->numInteresting:I

    .line 4527
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->isDrawnLw()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_4e

    .line 4528
    iget v0, p1, Lcom/android/server/wm/WindowState$UpdateReportedVisibilityResults;->numDrawn:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p1, Lcom/android/server/wm/WindowState$UpdateReportedVisibilityResults;->numDrawn:I

    .line 4529
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->isAnimating()Z

    move-result v0

    if-nez v0, :cond_4b

    .line 4530
    iget v0, p1, Lcom/android/server/wm/WindowState$UpdateReportedVisibilityResults;->numVisible:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p1, Lcom/android/server/wm/WindowState$UpdateReportedVisibilityResults;->numVisible:I

    .line 4532
    :cond_4b
    iput-boolean v1, p1, Lcom/android/server/wm/WindowState$UpdateReportedVisibilityResults;->nowGone:Z

    goto :goto_56

    .line 4533
    :cond_4e
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->isAnimating()Z

    move-result v0

    if-eqz v0, :cond_56

    .line 4534
    iput-boolean v1, p1, Lcom/android/server/wm/WindowState$UpdateReportedVisibilityResults;->nowGone:Z

    .line 4536
    :cond_56
    :goto_56
    return-void

    .line 4511
    :cond_57
    :goto_57
    return-void
.end method

.method updateResizingWindowIfNeeded()V
    .registers 9

    .line 1257
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    .line 1258
    iget-boolean v1, p0, Lcom/android/server/wm/WindowState;->mHasSurface:Z

    if-eqz v1, :cond_ae

    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v1

    iget v1, v1, Lcom/android/server/wm/DisplayContent;->mLayoutSeq:I

    iget v2, p0, Lcom/android/server/wm/WindowState;->mLayoutSeq:I

    if-ne v1, v2, :cond_ae

    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->isGoneForLayoutLw()Z

    move-result v1

    if-eqz v1, :cond_18

    goto/16 :goto_ae

    .line 1262
    :cond_18
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getTask()Lcom/android/server/wm/Task;

    move-result-object v1

    .line 1268
    if-eqz v1, :cond_27

    iget-object v1, v1, Lcom/android/server/wm/Task;->mStack:Lcom/android/server/wm/TaskStack;

    invoke-virtual {v1}, Lcom/android/server/wm/TaskStack;->isAnimatingBounds()Z

    move-result v1

    if-eqz v1, :cond_27

    .line 1269
    return-void

    .line 1272
    :cond_27
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->setReportResizeHints()Z

    move-result v1

    .line 1273
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->isLastConfigReportedToClient()Z

    move-result v2

    .line 1278
    const/4 v3, 0x1

    xor-int/2addr v2, v3

    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->isDragResizeChanged()Z

    move-result v4

    const/4 v5, 0x0

    if-eqz v4, :cond_40

    .line 1279
    invoke-direct {p0}, Lcom/android/server/wm/WindowState;->isDragResizingChangeReported()Z

    move-result v4

    if-nez v4, :cond_40

    move v4, v3

    goto :goto_41

    :cond_40
    move v4, v5

    .line 1287
    :goto_41
    iget-object v6, p0, Lcom/android/server/wm/WindowState;->mWindowFrames:Lcom/android/server/wm/WindowFrames;

    iget-object v6, v6, Lcom/android/server/wm/WindowFrames;->mLastFrame:Landroid/graphics/Rect;

    iget-object v7, p0, Lcom/android/server/wm/WindowState;->mWindowFrames:Lcom/android/server/wm/WindowFrames;

    iget-object v7, v7, Lcom/android/server/wm/WindowFrames;->mFrame:Landroid/graphics/Rect;

    invoke-virtual {v6, v7}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 1289
    if-nez v1, :cond_77

    iget-boolean v1, v0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceResized:Z

    if-nez v1, :cond_77

    if-nez v2, :cond_77

    if-nez v4, :cond_77

    iget-boolean v1, p0, Lcom/android/server/wm/WindowState;->mReportOrientationChanged:Z

    if-eqz v1, :cond_5b

    goto :goto_77

    .line 1332
    :cond_5b
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getOrientationChanging()Z

    move-result v0

    if-eqz v0, :cond_ad

    .line 1333
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->isDrawnLw()Z

    move-result v0

    if-eqz v0, :cond_ad

    .line 1336
    invoke-virtual {p0, v5}, Lcom/android/server/wm/WindowState;->setOrientationChanging(Z)V

    .line 1337
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-object v2, p0, Lcom/android/server/wm/WindowState;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-wide v2, v2, Lcom/android/server/wm/WindowManagerService;->mDisplayFreezeTime:J

    sub-long/2addr v0, v2

    long-to-int v0, v0

    iput v0, p0, Lcom/android/server/wm/WindowState;->mLastFreezeDuration:I

    goto :goto_ad

    .line 1305
    :cond_77
    :goto_77
    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    if-eqz v1, :cond_83

    iget-boolean v2, p0, Lcom/android/server/wm/WindowState;->mAppDied:Z

    if-eqz v2, :cond_83

    .line 1306
    invoke-virtual {v1}, Lcom/android/server/wm/AppWindowToken;->removeDeadWindows()V

    .line 1307
    return-void

    .line 1310
    :cond_83
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->updateLastInsetValues()V

    .line 1311
    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mWmService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v1, p0}, Lcom/android/server/wm/WindowManagerService;->makeWindowFreezingScreenIfNeededLocked(Lcom/android/server/wm/WindowState;)V

    .line 1317
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getOrientationChanging()Z

    move-result v1

    if-nez v1, :cond_93

    if-eqz v4, :cond_9c

    .line 1323
    :cond_93
    iput v3, v0, Lcom/android/server/wm/WindowStateAnimator;->mDrawState:I

    .line 1324
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    if-eqz v0, :cond_9c

    .line 1325
    invoke-virtual {v0}, Lcom/android/server/wm/AppWindowToken;->clearAllDrawn()V

    .line 1328
    :cond_9c
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mResizingWindows:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_ad

    .line 1330
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mResizingWindows:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1341
    :cond_ad
    :goto_ad
    return-void

    .line 1259
    :cond_ae
    :goto_ae
    return-void
.end method

.method updateSurfacePosition()V
    .registers 2

    .line 4999
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getPendingTransaction()Landroid/view/SurfaceControl$Transaction;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/wm/WindowState;->updateSurfacePosition(Landroid/view/SurfaceControl$Transaction;)V

    .line 5000
    return-void
.end method

.method updateSurfacePosition(Landroid/view/SurfaceControl$Transaction;)V
    .registers 6
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 5004
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mSurfaceControl:Landroid/view/SurfaceControl;

    if-nez v0, :cond_5

    .line 5005
    return-void

    .line 5008
    :cond_5
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mWindowFrames:Lcom/android/server/wm/WindowFrames;

    iget-object v0, v0, Lcom/android/server/wm/WindowFrames;->mFrame:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mWindowFrames:Lcom/android/server/wm/WindowFrames;

    iget-object v1, v1, Lcom/android/server/wm/WindowFrames;->mFrame:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    iget-object v2, p0, Lcom/android/server/wm/WindowState;->mSurfacePosition:Landroid/graphics/Point;

    invoke-direct {p0, v0, v1, v2}, Lcom/android/server/wm/WindowState;->transformFrameToSurfacePosition(IILandroid/graphics/Point;)V

    .line 5013
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mSurfaceAnimator:Lcom/android/server/wm/SurfaceAnimator;

    invoke-virtual {v0}, Lcom/android/server/wm/SurfaceAnimator;->hasLeash()Z

    move-result v0

    if-nez v0, :cond_72

    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mPendingSeamlessRotate:Lcom/android/server/wm/SeamlessRotator;

    if-nez v0, :cond_72

    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mLastSurfacePosition:Landroid/graphics/Point;

    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mSurfacePosition:Landroid/graphics/Point;

    .line 5014
    invoke-virtual {v0, v1}, Landroid/graphics/Point;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_72

    .line 5015
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mSurfaceControl:Landroid/view/SurfaceControl;

    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mSurfacePosition:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->x:I

    int-to-float v1, v1

    iget-object v2, p0, Lcom/android/server/wm/WindowState;->mSurfacePosition:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->y:I

    int-to-float v2, v2

    invoke-virtual {p1, v0, v1, v2}, Landroid/view/SurfaceControl$Transaction;->setPosition(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    .line 5016
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mLastSurfacePosition:Landroid/graphics/Point;

    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mSurfacePosition:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->x:I

    iget-object v2, p0, Lcom/android/server/wm/WindowState;->mSurfacePosition:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->y:I

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Point;->set(II)V

    .line 5017
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->surfaceInsetsChanging()Z

    move-result v0

    if-eqz v0, :cond_72

    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowStateAnimator;->hasSurface()Z

    move-result v0

    if-eqz v0, :cond_72

    .line 5018
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mLastSurfaceInsets:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget-object v1, v1, Landroid/view/WindowManager$LayoutParams;->surfaceInsets:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 5019
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mSurfaceControl:Landroid/view/SurfaceControl;

    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    iget-object v1, v1, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceController:Lcom/android/server/wm/WindowSurfaceController;

    iget-object v1, v1, Lcom/android/server/wm/WindowSurfaceController;->mSurfaceControl:Landroid/view/SurfaceControl;

    .line 5020
    invoke-virtual {v1}, Landroid/view/SurfaceControl;->getHandle()Landroid/os/IBinder;

    move-result-object v1

    .line 5021
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getFrameNumber()J

    move-result-wide v2

    .line 5019
    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/view/SurfaceControl$Transaction;->deferTransactionUntil(Landroid/view/SurfaceControl;Landroid/os/IBinder;J)Landroid/view/SurfaceControl$Transaction;

    .line 5024
    :cond_72
    return-void
.end method

.method updateTapExcludeRegion(ILandroid/graphics/Region;)V
    .registers 5

    .line 5146
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    .line 5147
    if-eqz v0, :cond_27

    .line 5151
    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mTapExcludeRegionHolder:Lcom/android/server/wm/TapExcludeRegionHolder;

    if-nez v1, :cond_16

    .line 5152
    new-instance v1, Lcom/android/server/wm/TapExcludeRegionHolder;

    invoke-direct {v1}, Lcom/android/server/wm/TapExcludeRegionHolder;-><init>()V

    iput-object v1, p0, Lcom/android/server/wm/WindowState;->mTapExcludeRegionHolder:Lcom/android/server/wm/TapExcludeRegionHolder;

    .line 5156
    iget-object v1, v0, Lcom/android/server/wm/DisplayContent;->mTapExcludeProvidingWindows:Landroid/util/ArraySet;

    invoke-virtual {v1, p0}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 5159
    :cond_16
    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mTapExcludeRegionHolder:Lcom/android/server/wm/TapExcludeRegionHolder;

    invoke-virtual {v1, p1, p2}, Lcom/android/server/wm/TapExcludeRegionHolder;->updateRegion(ILandroid/graphics/Region;)V

    .line 5161
    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->updateTouchExcludeRegion()V

    .line 5163
    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->getInputMonitor()Lcom/android/server/wm/InputMonitor;

    move-result-object p1

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lcom/android/server/wm/InputMonitor;->updateInputWindowsLw(Z)V

    .line 5164
    return-void

    .line 5148
    :cond_27
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Trying to update window not attached to any display."

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method waitingForReplacement()Z
    .registers 4

    .line 3949
    iget-boolean v0, p0, Lcom/android/server/wm/WindowState;->mWillReplaceWindow:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_6

    .line 3950
    return v1

    .line 3953
    :cond_6
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowList;->size()I

    move-result v0

    sub-int/2addr v0, v1

    :goto_d
    if-ltz v0, :cond_21

    .line 3954
    iget-object v2, p0, Lcom/android/server/wm/WindowState;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v2, v0}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/WindowState;

    .line 3955
    invoke-virtual {v2}, Lcom/android/server/wm/WindowState;->waitingForReplacement()Z

    move-result v2

    if-eqz v2, :cond_1e

    .line 3956
    return v1

    .line 3953
    :cond_1e
    add-int/lit8 v0, v0, -0x1

    goto :goto_d

    .line 3959
    :cond_21
    const/4 v0, 0x0

    return v0
.end method

.method wouldBeVisibleIfPolicyIgnored()Z
    .registers 2

    .line 1517
    iget-boolean v0, p0, Lcom/android/server/wm/WindowState;->mHasSurface:Z

    if-eqz v0, :cond_1c

    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->isParentWindowHidden()Z

    move-result v0

    if-nez v0, :cond_1c

    iget-boolean v0, p0, Lcom/android/server/wm/WindowState;->mAnimatingExit:Z

    if-nez v0, :cond_1c

    iget-boolean v0, p0, Lcom/android/server/wm/WindowState;->mDestroying:Z

    if-nez v0, :cond_1c

    iget-boolean v0, p0, Lcom/android/server/wm/WindowState;->mIsWallpaper:Z

    if-eqz v0, :cond_1a

    iget-boolean v0, p0, Lcom/android/server/wm/WindowState;->mWallpaperVisible:Z

    if-eqz v0, :cond_1c

    :cond_1a
    const/4 v0, 0x1

    goto :goto_1d

    :cond_1c
    const/4 v0, 0x0

    :goto_1d
    return v0
.end method

.method public writeIdentifierToProto(Landroid/util/proto/ProtoOutputStream;J)V
    .registers 7

    .line 3581
    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide p2

    .line 3582
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v0

    const-wide v1, 0x10500000001L

    invoke-virtual {p1, v1, v2, v0}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 3583
    iget v0, p0, Lcom/android/server/wm/WindowState;->mOwnerUid:I

    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    const-wide v1, 0x10500000002L

    invoke-virtual {p1, v1, v2, v0}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 3584
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getWindowTag()Ljava/lang/CharSequence;

    move-result-object v0

    .line 3585
    if-eqz v0, :cond_30

    .line 3586
    const-wide v1, 0x10900000003L

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v1, v2, v0}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 3588
    :cond_30
    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 3589
    return-void
.end method

.method public writeToProto(Landroid/util/proto/ProtoOutputStream;JI)V
    .registers 11

    .line 3542
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->isVisible()Z

    move-result v0

    .line 3543
    const/4 v1, 0x2

    if-ne p4, v1, :cond_a

    if-nez v0, :cond_a

    .line 3544
    return-void

    .line 3547
    :cond_a
    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide p2

    .line 3548
    const-wide v1, 0x10b00000001L

    invoke-super {p0, p1, v1, v2, p4}, Lcom/android/server/wm/WindowContainer;->writeToProto(Landroid/util/proto/ProtoOutputStream;JI)V

    .line 3549
    const-wide v1, 0x10b00000002L

    invoke-virtual {p0, p1, v1, v2}, Lcom/android/server/wm/WindowState;->writeIdentifierToProto(Landroid/util/proto/ProtoOutputStream;J)V

    .line 3550
    const-wide v1, 0x10500000003L

    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getDisplayId()I

    move-result v3

    invoke-virtual {p1, v1, v2, v3}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 3551
    const-wide v1, 0x10500000004L

    invoke-direct {p0}, Lcom/android/server/wm/WindowState;->getStackId()I

    move-result v3

    invoke-virtual {p1, v1, v2, v3}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 3552
    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    const-wide v2, 0x10b00000005L

    invoke-virtual {v1, p1, v2, v3}, Landroid/view/WindowManager$LayoutParams;->writeToProto(Landroid/util/proto/ProtoOutputStream;J)V

    .line 3553
    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mGivenContentInsets:Landroid/graphics/Rect;

    const-wide v2, 0x10b00000006L

    invoke-virtual {v1, p1, v2, v3}, Landroid/graphics/Rect;->writeToProto(Landroid/util/proto/ProtoOutputStream;J)V

    .line 3554
    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mWindowFrames:Lcom/android/server/wm/WindowFrames;

    const-wide v2, 0x10b00000029L

    invoke-virtual {v1, p1, v2, v3}, Lcom/android/server/wm/WindowFrames;->writeToProto(Landroid/util/proto/ProtoOutputStream;J)V

    .line 3555
    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget-object v1, v1, Landroid/view/WindowManager$LayoutParams;->surfaceInsets:Landroid/graphics/Rect;

    const-wide v2, 0x10b0000000cL

    invoke-virtual {v1, p1, v2, v3}, Landroid/graphics/Rect;->writeToProto(Landroid/util/proto/ProtoOutputStream;J)V

    .line 3556
    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mSurfacePosition:Landroid/graphics/Point;

    const-wide v2, 0x10b00000010L

    invoke-virtual {v1, p1, v2, v3}, Landroid/graphics/Point;->writeToProto(Landroid/util/proto/ProtoOutputStream;J)V

    .line 3557
    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    const-wide v2, 0x10b0000000dL

    invoke-virtual {v1, p1, v2, v3}, Lcom/android/server/wm/WindowStateAnimator;->writeToProto(Landroid/util/proto/ProtoOutputStream;J)V

    .line 3558
    const-wide v1, 0x1080000000eL

    iget-boolean v3, p0, Lcom/android/server/wm/WindowState;->mAnimatingExit:Z

    invoke-virtual {p1, v1, v2, v3}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 3559
    const/4 v1, 0x0

    move v2, v1

    :goto_80
    iget-object v3, p0, Lcom/android/server/wm/WindowState;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v3}, Lcom/android/server/wm/WindowList;->size()I

    move-result v3

    if-ge v2, v3, :cond_9b

    .line 3560
    iget-object v3, p0, Lcom/android/server/wm/WindowState;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v3, v2}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/WindowState;

    const-wide v4, 0x20b0000000fL

    invoke-virtual {v3, p1, v4, v5, p4}, Lcom/android/server/wm/WindowState;->writeToProto(Landroid/util/proto/ProtoOutputStream;JI)V

    .line 3559
    add-int/lit8 v2, v2, 0x1

    goto :goto_80

    .line 3562
    :cond_9b
    const-wide v2, 0x10500000012L

    iget p4, p0, Lcom/android/server/wm/WindowState;->mRequestedWidth:I

    invoke-virtual {p1, v2, v3, p4}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 3563
    const-wide v2, 0x10500000013L

    iget p4, p0, Lcom/android/server/wm/WindowState;->mRequestedHeight:I

    invoke-virtual {p1, v2, v3, p4}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 3564
    const-wide v2, 0x10500000014L

    iget p4, p0, Lcom/android/server/wm/WindowState;->mViewVisibility:I

    invoke-virtual {p1, v2, v3, p4}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 3565
    const-wide v2, 0x10500000015L

    iget p4, p0, Lcom/android/server/wm/WindowState;->mSystemUiVisibility:I

    invoke-virtual {p1, v2, v3, p4}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 3566
    const-wide v2, 0x10800000016L

    iget-boolean p4, p0, Lcom/android/server/wm/WindowState;->mHasSurface:Z

    invoke-virtual {p1, v2, v3, p4}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 3567
    const-wide v2, 0x10800000017L

    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->isReadyForDisplay()Z

    move-result p4

    invoke-virtual {p1, v2, v3, p4}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 3568
    const-wide v2, 0x10800000022L

    iget-boolean p4, p0, Lcom/android/server/wm/WindowState;->mRemoveOnExit:Z

    invoke-virtual {p1, v2, v3, p4}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 3569
    const-wide v2, 0x10800000023L

    iget-boolean p4, p0, Lcom/android/server/wm/WindowState;->mDestroying:Z

    invoke-virtual {p1, v2, v3, p4}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 3570
    const-wide v2, 0x10800000024L

    iget-boolean p4, p0, Lcom/android/server/wm/WindowState;->mRemoved:Z

    invoke-virtual {p1, v2, v3, p4}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 3571
    const-wide v2, 0x10800000025L

    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->isOnScreen()Z

    move-result p4

    invoke-virtual {p1, v2, v3, p4}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 3572
    const-wide v2, 0x10800000026L

    invoke-virtual {p1, v2, v3, v0}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 3573
    const-wide v2, 0x10800000027L

    iget-object p4, p0, Lcom/android/server/wm/WindowState;->mPendingSeamlessRotate:Lcom/android/server/wm/SeamlessRotator;

    if-eqz p4, :cond_115

    const/4 v1, 0x1

    :cond_115
    invoke-virtual {p1, v2, v3, v1}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 3574
    const-wide v0, 0x10300000028L

    iget-wide v2, p0, Lcom/android/server/wm/WindowState;->mFinishSeamlessRotateFrameNumber:J

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 3575
    const-wide v0, 0x1080000002aL

    iget-boolean p4, p0, Lcom/android/server/wm/WindowState;->mForceSeamlesslyRotate:Z

    invoke-virtual {p1, v0, v1, p4}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 3576
    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 3577
    return-void
.end method
