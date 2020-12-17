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

.field mLastFreezeDuration:I

.field mLastHScale:F

.field final mLastRelayoutContentInsets:Landroid/graphics/Rect;

.field private final mLastReportedConfiguration:Landroid/util/MergedConfiguration;

.field private mLastRequestedHeight:I

.field private mLastRequestedWidth:I

.field private mLastRotation:I

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

.field private final mSnapshotInitialMatrix:Landroid/graphics/Matrix;

.field private mStringNameCache:Ljava/lang/String;

.field final mSubLayer:I

.field private final mSurfacePosition:Landroid/graphics/Point;

.field mSystemUiVisibility:I

.field private mTapExcludeRegionHolder:Lcom/android/server/wm/TapExcludeRegionHolder;

.field private final mTempConfiguration:Landroid/content/res/Configuration;

.field private final mTmpFloats:[F

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

    .line 589
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sput-object v0, Lcom/android/server/wm/WindowState;->sTmpSB:Ljava/lang/StringBuilder;

    .line 595
    new-instance v0, Lcom/android/server/wm/WindowState$1;

    invoke-direct {v0}, Lcom/android/server/wm/WindowState$1;-><init>()V

    sput-object v0, Lcom/android/server/wm/WindowState;->sWindowSubLayerComparator:Ljava/util/Comparator;

    return-void
.end method

.method constructor <init>(Lcom/android/server/wm/WindowManagerService;Lcom/android/server/wm/Session;Landroid/view/IWindow;Lcom/android/server/wm/WindowToken;Lcom/android/server/wm/WindowState;IILandroid/view/WindowManager$LayoutParams;IIZ)V
    .registers 26
    .param p1, "service"  # Lcom/android/server/wm/WindowManagerService;
    .param p2, "s"  # Lcom/android/server/wm/Session;
    .param p3, "c"  # Landroid/view/IWindow;
    .param p4, "token"  # Lcom/android/server/wm/WindowToken;
    .param p5, "parentWindow"  # Lcom/android/server/wm/WindowState;
    .param p6, "appOp"  # I
    .param p7, "seq"  # I
    .param p8, "a"  # Landroid/view/WindowManager$LayoutParams;
    .param p9, "viewVisibility"  # I
    .param p10, "ownerId"  # I
    .param p11, "ownerCanAddInternalSystemWindow"  # Z

    .line 686
    new-instance v12, Lcom/android/server/wm/WindowState$2;

    move-object v13, p1

    invoke-direct {v12, p1}, Lcom/android/server/wm/WindowState$2;-><init>(Lcom/android/server/wm/WindowManagerService;)V

    move-object v0, p0

    move-object v1, p1

    move-object/from16 v2, p2

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

    .line 698
    return-void
.end method

.method constructor <init>(Lcom/android/server/wm/WindowManagerService;Lcom/android/server/wm/Session;Landroid/view/IWindow;Lcom/android/server/wm/WindowToken;Lcom/android/server/wm/WindowState;IILandroid/view/WindowManager$LayoutParams;IIZLcom/android/server/wm/WindowState$PowerManagerWrapper;)V
    .registers 29
    .param p1, "service"  # Lcom/android/server/wm/WindowManagerService;
    .param p2, "s"  # Lcom/android/server/wm/Session;
    .param p3, "c"  # Landroid/view/IWindow;
    .param p4, "token"  # Lcom/android/server/wm/WindowToken;
    .param p5, "parentWindow"  # Lcom/android/server/wm/WindowState;
    .param p6, "appOp"  # I
    .param p7, "seq"  # I
    .param p8, "a"  # Landroid/view/WindowManager$LayoutParams;
    .param p9, "viewVisibility"  # I
    .param p10, "ownerId"  # I
    .param p11, "ownerCanAddInternalSystemWindow"  # Z
    .param p12, "powerManagerWrapper"  # Lcom/android/server/wm/WindowState$PowerManagerWrapper;

    .line 704
    move-object/from16 v1, p0

    move-object/from16 v2, p3

    move-object/from16 v3, p4

    move-object/from16 v4, p5

    move-object/from16 v5, p8

    invoke-direct/range {p0 .. p1}, Lcom/android/server/wm/WindowContainer;-><init>(Lcom/android/server/wm/WindowManagerService;)V

    .line 249
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v0}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    iput-object v0, v1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    .line 277
    const/4 v0, 0x3

    iput v0, v1, Lcom/android/server/wm/WindowState;->mPolicyVisibility:I

    .line 287
    const/4 v0, 0x1

    iput-boolean v0, v1, Lcom/android/server/wm/WindowState;->mLegacyPolicyVisibilityAfterAnim:Z

    .line 290
    iput-boolean v0, v1, Lcom/android/server/wm/WindowState;->mAppOpVisibility:Z

    .line 295
    iput-boolean v0, v1, Lcom/android/server/wm/WindowState;->mHidden:Z

    .line 298
    iput-boolean v0, v1, Lcom/android/server/wm/WindowState;->mDragResizingChangeReported:Z

    .line 324
    const/4 v6, -0x1

    iput v6, v1, Lcom/android/server/wm/WindowState;->mLayoutSeq:I

    .line 331
    new-instance v7, Landroid/util/MergedConfiguration;

    invoke-direct {v7}, Landroid/util/MergedConfiguration;-><init>()V

    iput-object v7, v1, Lcom/android/server/wm/WindowState;->mLastReportedConfiguration:Landroid/util/MergedConfiguration;

    .line 336
    new-instance v7, Landroid/content/res/Configuration;

    invoke-direct {v7}, Landroid/content/res/Configuration;-><init>()V

    iput-object v7, v1, Lcom/android/server/wm/WindowState;->mTempConfiguration:Landroid/content/res/Configuration;

    .line 345
    new-instance v7, Landroid/graphics/Rect;

    invoke-direct {v7}, Landroid/graphics/Rect;-><init>()V

    iput-object v7, v1, Lcom/android/server/wm/WindowState;->mLastRelayoutContentInsets:Landroid/graphics/Rect;

    .line 357
    new-instance v7, Landroid/graphics/Rect;

    invoke-direct {v7}, Landroid/graphics/Rect;-><init>()V

    iput-object v7, v1, Lcom/android/server/wm/WindowState;->mGivenContentInsets:Landroid/graphics/Rect;

    .line 363
    new-instance v7, Landroid/graphics/Rect;

    invoke-direct {v7}, Landroid/graphics/Rect;-><init>()V

    iput-object v7, v1, Lcom/android/server/wm/WindowState;->mGivenVisibleInsets:Landroid/graphics/Rect;

    .line 368
    new-instance v7, Landroid/graphics/Region;

    invoke-direct {v7}, Landroid/graphics/Region;-><init>()V

    iput-object v7, v1, Lcom/android/server/wm/WindowState;->mGivenTouchableRegion:Landroid/graphics/Region;

    .line 376
    const/4 v7, 0x0

    iput v7, v1, Lcom/android/server/wm/WindowState;->mTouchableInsets:I

    .line 379
    const/high16 v8, 0x3f800000  # 1.0f

    iput v8, v1, Lcom/android/server/wm/WindowState;->mGlobalScale:F

    .line 380
    iput v8, v1, Lcom/android/server/wm/WindowState;->mInvGlobalScale:F

    .line 381
    iput v8, v1, Lcom/android/server/wm/WindowState;->mHScale:F

    iput v8, v1, Lcom/android/server/wm/WindowState;->mVScale:F

    .line 382
    iput v8, v1, Lcom/android/server/wm/WindowState;->mLastHScale:F

    iput v8, v1, Lcom/android/server/wm/WindowState;->mLastVScale:F

    .line 383
    new-instance v8, Landroid/graphics/Matrix;

    invoke-direct {v8}, Landroid/graphics/Matrix;-><init>()V

    iput-object v8, v1, Lcom/android/server/wm/WindowState;->mTmpMatrix:Landroid/graphics/Matrix;

    .line 385
    new-instance v8, Lcom/android/server/wm/WindowFrames;

    invoke-direct {v8}, Lcom/android/server/wm/WindowFrames;-><init>()V

    iput-object v8, v1, Lcom/android/server/wm/WindowState;->mWindowFrames:Lcom/android/server/wm/WindowFrames;

    .line 391
    new-instance v8, Landroid/graphics/Rect;

    invoke-direct {v8}, Landroid/graphics/Rect;-><init>()V

    iput-object v8, v1, Lcom/android/server/wm/WindowState;->mInsetFrame:Landroid/graphics/Rect;

    .line 398
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    iput-object v8, v1, Lcom/android/server/wm/WindowState;->mExclusionRects:Ljava/util/List;

    .line 402
    const/high16 v8, -0x40800000  # -1.0f

    iput v8, v1, Lcom/android/server/wm/WindowState;->mWallpaperX:F

    .line 403
    iput v8, v1, Lcom/android/server/wm/WindowState;->mWallpaperY:F

    .line 407
    iput v8, v1, Lcom/android/server/wm/WindowState;->mWallpaperXStep:F

    .line 408
    iput v8, v1, Lcom/android/server/wm/WindowState;->mWallpaperYStep:F

    .line 412
    const/high16 v8, -0x80000000

    iput v8, v1, Lcom/android/server/wm/WindowState;->mWallpaperDisplayOffsetX:I

    .line 413
    iput v8, v1, Lcom/android/server/wm/WindowState;->mWallpaperDisplayOffsetY:I

    .line 470
    iput v6, v1, Lcom/android/server/wm/WindowState;->mLastVisibleLayoutRotation:I

    .line 504
    iput-boolean v7, v1, Lcom/android/server/wm/WindowState;->mHasSurface:Z

    .line 517
    iput-boolean v7, v1, Lcom/android/server/wm/WindowState;->mWillReplaceWindow:Z

    .line 519
    iput-boolean v7, v1, Lcom/android/server/wm/WindowState;->mReplacingRemoveRequested:Z

    .line 521
    iput-boolean v7, v1, Lcom/android/server/wm/WindowState;->mAnimateReplacingWindow:Z

    .line 524
    const/4 v6, 0x0

    iput-object v6, v1, Lcom/android/server/wm/WindowState;->mReplacementWindow:Lcom/android/server/wm/WindowState;

    .line 529
    iput-boolean v7, v1, Lcom/android/server/wm/WindowState;->mSkipEnterAnimationForSeamlessReplacement:Z

    .line 542
    new-instance v8, Landroid/graphics/Rect;

    invoke-direct {v8}, Landroid/graphics/Rect;-><init>()V

    iput-object v8, v1, Lcom/android/server/wm/WindowState;->mTmpRect:Landroid/graphics/Rect;

    .line 543
    new-instance v8, Landroid/graphics/Point;

    invoke-direct {v8}, Landroid/graphics/Point;-><init>()V

    iput-object v8, v1, Lcom/android/server/wm/WindowState;->mTmpPoint:Landroid/graphics/Point;

    .line 548
    iput-boolean v7, v1, Lcom/android/server/wm/WindowState;->mResizedWhileGone:Z

    .line 557
    iput-boolean v7, v1, Lcom/android/server/wm/WindowState;->mSeamlesslyRotated:Z

    .line 563
    new-instance v8, Landroid/graphics/Rect;

    invoke-direct {v8}, Landroid/graphics/Rect;-><init>()V

    iput-object v8, v1, Lcom/android/server/wm/WindowState;->mLastSurfaceInsets:Landroid/graphics/Rect;

    .line 572
    new-instance v8, Landroid/graphics/Point;

    invoke-direct {v8}, Landroid/graphics/Point;-><init>()V

    iput-object v8, v1, Lcom/android/server/wm/WindowState;->mSurfacePosition:Landroid/graphics/Point;

    .line 587
    const-wide/16 v8, -0x1

    iput-wide v8, v1, Lcom/android/server/wm/WindowState;->mFrameNumber:J

    .line 616
    iput-boolean v7, v1, Lcom/android/server/wm/WindowState;->mIsDimming:Z

    .line 5228
    iput v7, v1, Lcom/android/server/wm/WindowState;->mLastRotation:I

    .line 5229
    new-instance v8, Landroid/graphics/Matrix;

    invoke-direct {v8}, Landroid/graphics/Matrix;-><init>()V

    iput-object v8, v1, Lcom/android/server/wm/WindowState;->mSnapshotInitialMatrix:Landroid/graphics/Matrix;

    .line 5230
    const/16 v8, 0x9

    new-array v8, v8, [F

    iput-object v8, v1, Lcom/android/server/wm/WindowState;->mTmpFloats:[F

    .line 705
    move-object/from16 v8, p2

    iput-object v8, v1, Lcom/android/server/wm/WindowState;->mSession:Lcom/android/server/wm/Session;

    .line 706
    iput-object v2, v1, Lcom/android/server/wm/WindowState;->mClient:Landroid/view/IWindow;

    .line 707
    move/from16 v9, p6

    iput v9, v1, Lcom/android/server/wm/WindowState;->mAppOp:I

    .line 708
    iput-object v3, v1, Lcom/android/server/wm/WindowState;->mToken:Lcom/android/server/wm/WindowToken;

    .line 709
    iget-object v10, v1, Lcom/android/server/wm/WindowState;->mToken:Lcom/android/server/wm/WindowToken;

    invoke-virtual {v10}, Lcom/android/server/wm/WindowToken;->asAppWindowToken()Lcom/android/server/wm/AppWindowToken;

    move-result-object v10

    iput-object v10, v1, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    .line 710
    move/from16 v10, p10

    iput v10, v1, Lcom/android/server/wm/WindowState;->mOwnerUid:I

    .line 711
    move/from16 v11, p11

    iput-boolean v11, v1, Lcom/android/server/wm/WindowState;->mOwnerCanAddInternalSystemWindow:Z

    .line 712
    new-instance v12, Lcom/android/server/wm/WindowState$WindowId;

    invoke-direct {v12, v1, v6}, Lcom/android/server/wm/WindowState$WindowId;-><init>(Lcom/android/server/wm/WindowState;Lcom/android/server/wm/WindowState$1;)V

    iput-object v12, v1, Lcom/android/server/wm/WindowState;->mWindowId:Lcom/android/server/wm/WindowState$WindowId;

    .line 713
    iget-object v12, v1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {v12, v5}, Landroid/view/WindowManager$LayoutParams;->copyFrom(Landroid/view/WindowManager$LayoutParams;)I

    .line 714
    iget-object v12, v1, Lcom/android/server/wm/WindowState;->mLastSurfaceInsets:Landroid/graphics/Rect;

    iget-object v13, v1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget-object v13, v13, Landroid/view/WindowManager$LayoutParams;->surfaceInsets:Landroid/graphics/Rect;

    invoke-virtual {v12, v13}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 715
    move/from16 v12, p9

    iput v12, v1, Lcom/android/server/wm/WindowState;->mViewVisibility:I

    .line 716
    iget-object v13, v1, Lcom/android/server/wm/WindowState;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v13, v13, Lcom/android/server/wm/WindowManagerService;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    iput-object v13, v1, Lcom/android/server/wm/WindowState;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    .line 717
    iget-object v13, v1, Lcom/android/server/wm/WindowState;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v13, v13, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    iput-object v13, v1, Lcom/android/server/wm/WindowState;->mContext:Landroid/content/Context;

    .line 718
    new-instance v13, Lcom/android/server/wm/WindowState$DeathRecipient;

    invoke-direct {v13, v1, v6}, Lcom/android/server/wm/WindowState$DeathRecipient;-><init>(Lcom/android/server/wm/WindowState;Lcom/android/server/wm/WindowState$1;)V

    .line 719
    .local v13, "deathRecipient":Lcom/android/server/wm/WindowState$DeathRecipient;
    move/from16 v14, p7

    iput v14, v1, Lcom/android/server/wm/WindowState;->mSeq:I

    .line 720
    move-object/from16 v15, p12

    iput-object v15, v1, Lcom/android/server/wm/WindowState;->mPowerManagerWrapper:Lcom/android/server/wm/WindowState$PowerManagerWrapper;

    .line 721
    iget-boolean v6, v3, Lcom/android/server/wm/WindowToken;->mRoundedCornerOverlay:Z

    iput-boolean v6, v1, Lcom/android/server/wm/WindowState;->mForceSeamlesslyRotate:Z

    .line 722
    sget-boolean v6, Lcom/android/server/wm/WindowManagerService;->localLOGV:Z

    const-string v0, "WindowManager"

    if-eqz v6, :cond_162

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Window "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v7, " client="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 723
    invoke-interface/range {p3 .. p3}, Landroid/view/IWindow;->asBinder()Landroid/os/IBinder;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v7, " token="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v7, " ("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget-object v7, v7, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v7, ") params="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 722
    invoke-static {v0, v6}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 726
    :cond_162
    :try_start_162
    invoke-interface/range {p3 .. p3}, Landroid/view/IWindow;->asBinder()Landroid/os/IBinder;

    move-result-object v6

    const/4 v7, 0x0

    invoke-interface {v6, v13, v7}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_16a
    .catch Landroid/os/RemoteException; {:try_start_162 .. :try_end_16a} :catch_26f

    .line 739
    nop

    .line 740
    iput-object v13, v1, Lcom/android/server/wm/WindowState;->mDeathRecipient:Lcom/android/server/wm/WindowState$DeathRecipient;

    .line 742
    iget-object v6, v1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v6, v6, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v7, 0x3e8

    if-lt v6, v7, :cond_1ed

    iget-object v6, v1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v6, v6, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v7, 0x7cf

    if-gt v6, v7, :cond_1ed

    .line 745
    iget-object v6, v1, Lcom/android/server/wm/WindowState;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    invoke-interface {v6, v4}, Lcom/android/server/policy/WindowManagerPolicy;->getWindowLayerLw(Lcom/android/server/policy/WindowManagerPolicy$WindowState;)I

    move-result v6

    mul-int/lit16 v6, v6, 0x2710

    const/16 v7, 0x3e8

    add-int/2addr v6, v7

    iput v6, v1, Lcom/android/server/wm/WindowState;->mBaseLayer:I

    .line 747
    iget-object v6, v1, Lcom/android/server/wm/WindowState;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    iget v7, v5, Landroid/view/WindowManager$LayoutParams;->type:I

    invoke-interface {v6, v7}, Lcom/android/server/policy/WindowManagerPolicy;->getSubWindowLayerFromTypeLw(I)I

    move-result v6

    iput v6, v1, Lcom/android/server/wm/WindowState;->mSubLayer:I

    .line 748
    const/4 v6, 0x1

    iput-boolean v6, v1, Lcom/android/server/wm/WindowState;->mIsChildWindow:Z

    .line 750
    sget-boolean v7, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_ADD_REMOVE:Z

    if-eqz v7, :cond_1b7

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Adding "

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, " to "

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v6}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 751
    :cond_1b7
    sget-object v0, Lcom/android/server/wm/WindowState;->sWindowSubLayerComparator:Ljava/util/Comparator;

    invoke-virtual {v4, v1, v0}, Lcom/android/server/wm/WindowState;->addChild(Lcom/android/server/wm/WindowContainer;Ljava/util/Comparator;)V

    .line 753
    iget-object v0, v1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v6, 0x3eb

    if-eq v0, v6, :cond_1c6

    const/4 v0, 0x1

    goto :goto_1c7

    :cond_1c6
    const/4 v0, 0x0

    :goto_1c7
    iput-boolean v0, v1, Lcom/android/server/wm/WindowState;->mLayoutAttached:Z

    .line 755
    iget-object v0, v4, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v6, 0x7db

    if-eq v0, v6, :cond_1dc

    iget-object v0, v4, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v6, 0x7dc

    if-ne v0, v6, :cond_1da

    goto :goto_1dc

    :cond_1da
    const/4 v0, 0x0

    goto :goto_1dd

    :cond_1dc
    :goto_1dc
    const/4 v0, 0x1

    :goto_1dd
    iput-boolean v0, v1, Lcom/android/server/wm/WindowState;->mIsImWindow:Z

    .line 757
    iget-object v0, v4, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v6, 0x7dd

    if-ne v0, v6, :cond_1e9

    const/4 v0, 0x1

    goto :goto_1ea

    :cond_1e9
    const/4 v0, 0x0

    :goto_1ea
    iput-boolean v0, v1, Lcom/android/server/wm/WindowState;->mIsWallpaper:Z

    goto :goto_224

    .line 761
    :cond_1ed
    iget-object v0, v1, Lcom/android/server/wm/WindowState;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    invoke-interface {v0, v1}, Lcom/android/server/policy/WindowManagerPolicy;->getWindowLayerLw(Lcom/android/server/policy/WindowManagerPolicy$WindowState;)I

    move-result v0

    mul-int/lit16 v0, v0, 0x2710

    const/16 v6, 0x3e8

    add-int/2addr v0, v6

    iput v0, v1, Lcom/android/server/wm/WindowState;->mBaseLayer:I

    .line 763
    const/4 v6, 0x0

    iput v6, v1, Lcom/android/server/wm/WindowState;->mSubLayer:I

    .line 764
    iput-boolean v6, v1, Lcom/android/server/wm/WindowState;->mIsChildWindow:Z

    .line 765
    iput-boolean v6, v1, Lcom/android/server/wm/WindowState;->mLayoutAttached:Z

    .line 766
    iget-object v0, v1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v6, 0x7db

    if-eq v0, v6, :cond_214

    iget-object v0, v1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v6, 0x7dc

    if-ne v0, v6, :cond_212

    goto :goto_214

    :cond_212
    const/4 v0, 0x0

    goto :goto_215

    :cond_214
    :goto_214
    const/4 v0, 0x1

    :goto_215
    iput-boolean v0, v1, Lcom/android/server/wm/WindowState;->mIsImWindow:Z

    .line 768
    iget-object v0, v1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v6, 0x7dd

    if-ne v0, v6, :cond_221

    const/4 v0, 0x1

    goto :goto_222

    :cond_221
    const/4 v0, 0x0

    :goto_222
    iput-boolean v0, v1, Lcom/android/server/wm/WindowState;->mIsWallpaper:Z

    .line 770
    :goto_224
    iget-boolean v0, v1, Lcom/android/server/wm/WindowState;->mIsImWindow:Z

    if-nez v0, :cond_22f

    iget-boolean v0, v1, Lcom/android/server/wm/WindowState;->mIsWallpaper:Z

    if-eqz v0, :cond_22d

    goto :goto_22f

    :cond_22d
    const/4 v0, 0x0

    goto :goto_230

    :cond_22f
    :goto_22f
    const/4 v0, 0x1

    :goto_230
    iput-boolean v0, v1, Lcom/android/server/wm/WindowState;->mIsFloatingLayer:Z

    .line 772
    iget-object v0, v1, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    if-eqz v0, :cond_243

    iget-boolean v0, v0, Lcom/android/server/wm/AppWindowToken;->mShowForAllUsers:Z

    if-eqz v0, :cond_243

    .line 775
    iget-object v0, v1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v6, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v7, 0x80000

    or-int/2addr v6, v7

    iput v6, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 778
    :cond_243
    new-instance v0, Lcom/android/server/wm/WindowStateAnimator;

    invoke-direct {v0, v1}, Lcom/android/server/wm/WindowStateAnimator;-><init>(Lcom/android/server/wm/WindowState;)V

    iput-object v0, v1, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    .line 779
    iget-object v0, v1, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    iget v6, v5, Landroid/view/WindowManager$LayoutParams;->alpha:F

    iput v6, v0, Lcom/android/server/wm/WindowStateAnimator;->mAlpha:F

    .line 781
    const/4 v6, 0x0

    iput v6, v1, Lcom/android/server/wm/WindowState;->mRequestedWidth:I

    .line 782
    iput v6, v1, Lcom/android/server/wm/WindowState;->mRequestedHeight:I

    .line 783
    iput v6, v1, Lcom/android/server/wm/WindowState;->mLastRequestedWidth:I

    .line 784
    iput v6, v1, Lcom/android/server/wm/WindowState;->mLastRequestedHeight:I

    .line 785
    iput v6, v1, Lcom/android/server/wm/WindowState;->mLayer:I

    .line 786
    new-instance v0, Landroid/view/InputWindowHandle;

    .line 787
    iget-object v6, v1, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    if-eqz v6, :cond_264

    iget-object v6, v6, Lcom/android/server/wm/AppWindowToken;->mInputApplicationHandle:Landroid/view/InputApplicationHandle;

    goto :goto_265

    :cond_264
    const/4 v6, 0x0

    .line 788
    :goto_265
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/WindowState;->getDisplayId()I

    move-result v7

    invoke-direct {v0, v6, v2, v7}, Landroid/view/InputWindowHandle;-><init>(Landroid/view/InputApplicationHandle;Landroid/view/IWindow;I)V

    iput-object v0, v1, Lcom/android/server/wm/WindowState;->mInputWindowHandle:Landroid/view/InputWindowHandle;

    .line 789
    return-void

    .line 727
    :catch_26f
    move-exception v0

    .line 728
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v6, 0x0

    iput-object v6, v1, Lcom/android/server/wm/WindowState;->mDeathRecipient:Lcom/android/server/wm/WindowState$DeathRecipient;

    .line 729
    const/4 v6, 0x0

    iput-boolean v6, v1, Lcom/android/server/wm/WindowState;->mIsChildWindow:Z

    .line 730
    iput-boolean v6, v1, Lcom/android/server/wm/WindowState;->mLayoutAttached:Z

    .line 731
    iput-boolean v6, v1, Lcom/android/server/wm/WindowState;->mIsImWindow:Z

    .line 732
    iput-boolean v6, v1, Lcom/android/server/wm/WindowState;->mIsWallpaper:Z

    .line 733
    iput-boolean v6, v1, Lcom/android/server/wm/WindowState;->mIsFloatingLayer:Z

    .line 734
    iput v6, v1, Lcom/android/server/wm/WindowState;->mBaseLayer:I

    .line 735
    iput v6, v1, Lcom/android/server/wm/WindowState;->mSubLayer:I

    .line 736
    const/4 v6, 0x0

    iput-object v6, v1, Lcom/android/server/wm/WindowState;->mInputWindowHandle:Landroid/view/InputWindowHandle;

    .line 737
    iput-object v6, v1, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    .line 738
    return-void
.end method

.method static synthetic access$200(Lcom/android/server/wm/WindowState;)Z
    .registers 2
    .param p0, "x0"  # Lcom/android/server/wm/WindowState;

    .line 220
    invoke-direct {p0}, Lcom/android/server/wm/WindowState;->shouldKeepVisibleDeadAppWindow()Z

    move-result v0

    return v0
.end method

.method static synthetic access$300(Lcom/android/server/wm/WindowState;Z)V
    .registers 2
    .param p0, "x0"  # Lcom/android/server/wm/WindowState;
    .param p1, "x1"  # Z

    .line 220
    invoke-direct {p0, p1}, Lcom/android/server/wm/WindowState;->removeIfPossible(Z)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/server/wm/WindowState;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;ZLandroid/util/MergedConfiguration;ZILandroid/view/DisplayCutout;)V
    .registers 12
    .param p0, "x0"  # Lcom/android/server/wm/WindowState;
    .param p1, "x1"  # Landroid/graphics/Rect;
    .param p2, "x2"  # Landroid/graphics/Rect;
    .param p3, "x3"  # Landroid/graphics/Rect;
    .param p4, "x4"  # Landroid/graphics/Rect;
    .param p5, "x5"  # Landroid/graphics/Rect;
    .param p6, "x6"  # Landroid/graphics/Rect;
    .param p7, "x7"  # Z
    .param p8, "x8"  # Landroid/util/MergedConfiguration;
    .param p9, "x9"  # Z
    .param p10, "x10"  # I
    .param p11, "x11"  # Landroid/view/DisplayCutout;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 220
    invoke-direct/range {p0 .. p11}, Lcom/android/server/wm/WindowState;->dispatchResized(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;ZLandroid/util/MergedConfiguration;ZILandroid/view/DisplayCutout;)V

    return-void
.end method

.method private applyDims(Lcom/android/server/wm/Dimmer;)V
    .registers 4
    .param p1, "dimmer"  # Lcom/android/server/wm/Dimmer;

    .line 4858
    iget-boolean v0, p0, Lcom/android/server/wm/WindowState;->mAnimatingExit:Z

    const/4 v1, 0x1

    if-nez v0, :cond_15

    iget-boolean v0, p0, Lcom/android/server/wm/WindowState;->mAppDied:Z

    if-eqz v0, :cond_15

    .line 4859
    iput-boolean v1, p0, Lcom/android/server/wm/WindowState;->mIsDimming:Z

    .line 4860
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getPendingTransaction()Landroid/view/SurfaceControl$Transaction;

    move-result-object v0

    const/high16 v1, 0x3f000000  # 0.5f

    invoke-virtual {p1, v0, p0, v1}, Lcom/android/server/wm/Dimmer;->dimAbove(Landroid/view/SurfaceControl$Transaction;Lcom/android/server/wm/WindowContainer;F)V

    goto :goto_34

    .line 4861
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

    .line 4867
    iput-boolean v1, p0, Lcom/android/server/wm/WindowState;->mIsDimming:Z

    .line 4868
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getPendingTransaction()Landroid/view/SurfaceControl$Transaction;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v1, v1, Landroid/view/WindowManager$LayoutParams;->dimAmount:F

    invoke-virtual {p1, v0, p0, v1}, Lcom/android/server/wm/Dimmer;->dimBelow(Landroid/view/SurfaceControl$Transaction;Lcom/android/server/wm/WindowContainer;F)V

    .line 4870
    :cond_34
    :goto_34
    return-void
.end method

.method private applyGravityAndUpdateFrame(Landroid/graphics/Rect;Landroid/graphics/Rect;)V
    .registers 22
    .param p1, "containingFrame"  # Landroid/graphics/Rect;
    .param p2, "displayFrame"  # Landroid/graphics/Rect;

    .line 3707
    move-object/from16 v0, p0

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Rect;->width()I

    move-result v1

    .line 3708
    .local v1, "pw":I
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Rect;->height()I

    move-result v2

    .line 3709
    .local v2, "ph":I
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/WindowState;->getTask()Lcom/android/server/wm/Task;

    move-result-object v3

    .line 3710
    .local v3, "task":Lcom/android/server/wm/Task;
    invoke-direct/range {p0 .. p0}, Lcom/android/server/wm/WindowState;->inAppWindowThatMatchesParentBounds()Z

    move-result v4

    const/4 v5, 0x1

    xor-int/2addr v4, v5

    .line 3711
    .local v4, "inNonFullscreenContainer":Z
    iget-object v6, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v6, v6, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit16 v6, v6, 0x200

    const/4 v7, 0x0

    if-eqz v6, :cond_1f

    move v6, v5

    goto :goto_20

    :cond_1f
    move v6, v7

    .line 3720
    .local v6, "noLimits":Z
    :goto_20
    if-eqz v3, :cond_2e

    if-eqz v4, :cond_2e

    iget-object v8, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v8, v8, Landroid/view/WindowManager$LayoutParams;->type:I

    if-eq v8, v5, :cond_2d

    if-nez v6, :cond_2d

    goto :goto_2e

    :cond_2d
    move v5, v7

    .line 3725
    .local v5, "fitToDisplay":Z
    :cond_2e
    :goto_2e
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/WindowState;->inSizeCompatMode()Z

    move-result v7

    .line 3726
    .local v7, "inSizeCompatMode":Z
    iget-object v8, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v8, v8, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit16 v8, v8, 0x4000

    const/high16 v9, 0x3f000000  # 0.5f

    if-eqz v8, :cond_6f

    .line 3727
    iget-object v8, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v8, v8, Landroid/view/WindowManager$LayoutParams;->width:I

    if-gez v8, :cond_44

    .line 3728
    move v8, v1

    .local v8, "w":I
    goto :goto_55

    .line 3729
    .end local v8  # "w":I
    :cond_44
    if-eqz v7, :cond_51

    .line 3730
    iget-object v8, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v8, v8, Landroid/view/WindowManager$LayoutParams;->width:I

    int-to-float v8, v8

    iget v10, v0, Lcom/android/server/wm/WindowState;->mGlobalScale:F

    mul-float/2addr v8, v10

    add-float/2addr v8, v9

    float-to-int v8, v8

    .restart local v8  # "w":I
    goto :goto_55

    .line 3732
    .end local v8  # "w":I
    :cond_51
    iget-object v8, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v8, v8, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 3734
    .restart local v8  # "w":I
    :goto_55
    iget-object v10, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v10, v10, Landroid/view/WindowManager$LayoutParams;->height:I

    if-gez v10, :cond_5d

    .line 3735
    move v9, v2

    .local v9, "h":I
    goto :goto_9a

    .line 3736
    .end local v9  # "h":I
    :cond_5d
    if-eqz v7, :cond_6a

    .line 3737
    iget-object v10, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v10, v10, Landroid/view/WindowManager$LayoutParams;->height:I

    int-to-float v10, v10

    iget v11, v0, Lcom/android/server/wm/WindowState;->mGlobalScale:F

    mul-float/2addr v10, v11

    add-float/2addr v10, v9

    float-to-int v9, v10

    .restart local v9  # "h":I
    goto :goto_9a

    .line 3739
    .end local v9  # "h":I
    :cond_6a
    iget-object v9, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v9, v9, Landroid/view/WindowManager$LayoutParams;->height:I

    .restart local v9  # "h":I
    goto :goto_9a

    .line 3742
    .end local v8  # "w":I
    .end local v9  # "h":I
    :cond_6f
    iget-object v8, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v8, v8, Landroid/view/WindowManager$LayoutParams;->width:I

    const/4 v10, -0x1

    if-ne v8, v10, :cond_78

    .line 3743
    move v8, v1

    .restart local v8  # "w":I
    goto :goto_85

    .line 3744
    .end local v8  # "w":I
    :cond_78
    if-eqz v7, :cond_83

    .line 3745
    iget v8, v0, Lcom/android/server/wm/WindowState;->mRequestedWidth:I

    int-to-float v8, v8

    iget v11, v0, Lcom/android/server/wm/WindowState;->mGlobalScale:F

    mul-float/2addr v8, v11

    add-float/2addr v8, v9

    float-to-int v8, v8

    .restart local v8  # "w":I
    goto :goto_85

    .line 3747
    .end local v8  # "w":I
    :cond_83
    iget v8, v0, Lcom/android/server/wm/WindowState;->mRequestedWidth:I

    .line 3749
    .restart local v8  # "w":I
    :goto_85
    iget-object v11, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v11, v11, Landroid/view/WindowManager$LayoutParams;->height:I

    if-ne v11, v10, :cond_8d

    .line 3750
    move v9, v2

    .restart local v9  # "h":I
    goto :goto_9a

    .line 3751
    .end local v9  # "h":I
    :cond_8d
    if-eqz v7, :cond_98

    .line 3752
    iget v10, v0, Lcom/android/server/wm/WindowState;->mRequestedHeight:I

    int-to-float v10, v10

    iget v11, v0, Lcom/android/server/wm/WindowState;->mGlobalScale:F

    mul-float/2addr v10, v11

    add-float/2addr v10, v9

    float-to-int v9, v10

    .restart local v9  # "h":I
    goto :goto_9a

    .line 3754
    .end local v9  # "h":I
    :cond_98
    iget v9, v0, Lcom/android/server/wm/WindowState;->mRequestedHeight:I

    .line 3758
    .restart local v9  # "h":I
    :goto_9a
    if-eqz v7, :cond_ad

    .line 3759
    iget-object v10, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v10, v10, Landroid/view/WindowManager$LayoutParams;->x:I

    int-to-float v10, v10

    iget v11, v0, Lcom/android/server/wm/WindowState;->mGlobalScale:F

    mul-float/2addr v10, v11

    .line 3760
    .local v10, "x":F
    iget-object v11, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v11, v11, Landroid/view/WindowManager$LayoutParams;->y:I

    int-to-float v11, v11

    iget v12, v0, Lcom/android/server/wm/WindowState;->mGlobalScale:F

    mul-float/2addr v11, v12

    .local v11, "y":F
    goto :goto_b7

    .line 3762
    .end local v10  # "x":F
    .end local v11  # "y":F
    :cond_ad
    iget-object v10, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v10, v10, Landroid/view/WindowManager$LayoutParams;->x:I

    int-to-float v10, v10

    .line 3763
    .restart local v10  # "x":F
    iget-object v11, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v11, v11, Landroid/view/WindowManager$LayoutParams;->y:I

    int-to-float v11, v11

    .line 3766
    .restart local v11  # "y":F
    :goto_b7
    if-eqz v4, :cond_c7

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/WindowState;->layoutInParentFrame()Z

    move-result v12

    if-nez v12, :cond_c7

    .line 3769
    invoke-static {v8, v1}, Ljava/lang/Math;->min(II)I

    move-result v8

    .line 3770
    invoke-static {v9, v2}, Ljava/lang/Math;->min(II)I

    move-result v9

    .line 3774
    :cond_c7
    iget-object v12, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v12, v12, Landroid/view/WindowManager$LayoutParams;->gravity:I

    iget-object v13, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v13, v13, Landroid/view/WindowManager$LayoutParams;->horizontalMargin:F

    int-to-float v14, v1

    mul-float/2addr v13, v14

    add-float/2addr v13, v10

    float-to-int v15, v13

    iget-object v13, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v13, v13, Landroid/view/WindowManager$LayoutParams;->verticalMargin:F

    int-to-float v14, v2

    mul-float/2addr v13, v14

    add-float/2addr v13, v11

    float-to-int v14, v13

    iget-object v13, v0, Lcom/android/server/wm/WindowState;->mWindowFrames:Lcom/android/server/wm/WindowFrames;

    iget-object v13, v13, Lcom/android/server/wm/WindowFrames;->mFrame:Landroid/graphics/Rect;

    move-object/from16 v18, v13

    move v13, v8

    move/from16 v17, v14

    move v14, v9

    move/from16 v16, v15

    move-object/from16 v15, p1

    invoke-static/range {v12 .. v18}, Landroid/view/Gravity;->apply(IIILandroid/graphics/Rect;IILandroid/graphics/Rect;)V

    .line 3779
    if-eqz v5, :cond_fc

    .line 3780
    iget-object v12, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v12, v12, Landroid/view/WindowManager$LayoutParams;->gravity:I

    iget-object v13, v0, Lcom/android/server/wm/WindowState;->mWindowFrames:Lcom/android/server/wm/WindowFrames;

    iget-object v13, v13, Lcom/android/server/wm/WindowFrames;->mFrame:Landroid/graphics/Rect;

    move-object/from16 v14, p2

    invoke-static {v12, v14, v13}, Landroid/view/Gravity;->applyDisplay(ILandroid/graphics/Rect;Landroid/graphics/Rect;)V

    goto :goto_fe

    .line 3779
    :cond_fc
    move-object/from16 v14, p2

    .line 3785
    :goto_fe
    iget-object v12, v0, Lcom/android/server/wm/WindowState;->mWindowFrames:Lcom/android/server/wm/WindowFrames;

    iget-object v12, v12, Lcom/android/server/wm/WindowFrames;->mCompatFrame:Landroid/graphics/Rect;

    iget-object v13, v0, Lcom/android/server/wm/WindowState;->mWindowFrames:Lcom/android/server/wm/WindowFrames;

    iget-object v13, v13, Lcom/android/server/wm/WindowFrames;->mFrame:Landroid/graphics/Rect;

    invoke-virtual {v12, v13}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 3786
    if-eqz v7, :cond_114

    .line 3788
    iget-object v12, v0, Lcom/android/server/wm/WindowState;->mWindowFrames:Lcom/android/server/wm/WindowFrames;

    iget-object v12, v12, Lcom/android/server/wm/WindowFrames;->mCompatFrame:Landroid/graphics/Rect;

    iget v13, v0, Lcom/android/server/wm/WindowState;->mInvGlobalScale:F

    invoke-virtual {v12, v13}, Landroid/graphics/Rect;->scale(F)V

    .line 3790
    :cond_114
    return-void
.end method

.method private applyImeWindowsIfNeeded(Lcom/android/internal/util/ToBooleanFunction;Z)Z
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

    .line 4183
    .local p1, "callback":Lcom/android/internal/util/ToBooleanFunction;, "Lcom/android/internal/util/ToBooleanFunction<Lcom/android/server/wm/WindowState;>;"
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->isInputMethodTarget()Z

    move-result v0

    if-eqz v0, :cond_18

    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->inSplitScreenWindowingMode()Z

    move-result v0

    if-nez v0, :cond_18

    .line 4184
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/android/server/wm/DisplayContent;->forAllImeWindows(Lcom/android/internal/util/ToBooleanFunction;Z)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 4185
    const/4 v0, 0x1

    return v0

    .line 4188
    :cond_18
    const/4 v0, 0x0

    return v0
.end method

.method private applyInOrderWithImeWindows(Lcom/android/internal/util/ToBooleanFunction;Z)Z
    .registers 5
    .param p2, "traverseTopToBottom"  # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/util/ToBooleanFunction<",
            "Lcom/android/server/wm/WindowState;",
            ">;Z)Z"
        }
    .end annotation

    .line 4193
    .local p1, "callback":Lcom/android/internal/util/ToBooleanFunction;, "Lcom/android/internal/util/ToBooleanFunction<Lcom/android/server/wm/WindowState;>;"
    const/4 v0, 0x1

    if-eqz p2, :cond_10

    .line 4194
    invoke-direct {p0, p1, p2}, Lcom/android/server/wm/WindowState;->applyImeWindowsIfNeeded(Lcom/android/internal/util/ToBooleanFunction;Z)Z

    move-result v1

    if-nez v1, :cond_f

    .line 4195
    invoke-interface {p1, p0}, Lcom/android/internal/util/ToBooleanFunction;->apply(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1d

    .line 4196
    :cond_f
    return v0

    .line 4199
    :cond_10
    invoke-interface {p1, p0}, Lcom/android/internal/util/ToBooleanFunction;->apply(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1f

    .line 4200
    invoke-direct {p0, p1, p2}, Lcom/android/server/wm/WindowState;->applyImeWindowsIfNeeded(Lcom/android/internal/util/ToBooleanFunction;Z)Z

    move-result v1

    if-eqz v1, :cond_1d

    goto :goto_1f

    .line 4204
    :cond_1d
    const/4 v0, 0x0

    return v0

    .line 4201
    :cond_1f
    :goto_1f
    return v0
.end method

.method private static applyInsets(Landroid/graphics/Region;Landroid/graphics/Rect;Landroid/graphics/Rect;)V
    .registers 8
    .param p0, "outRegion"  # Landroid/graphics/Region;
    .param p1, "frame"  # Landroid/graphics/Rect;
    .param p2, "inset"  # Landroid/graphics/Rect;

    .line 3027
    iget v0, p1, Landroid/graphics/Rect;->left:I

    iget v1, p2, Landroid/graphics/Rect;->left:I

    add-int/2addr v0, v1

    iget v1, p1, Landroid/graphics/Rect;->top:I

    iget v2, p2, Landroid/graphics/Rect;->top:I

    add-int/2addr v1, v2

    iget v2, p1, Landroid/graphics/Rect;->right:I

    iget v3, p2, Landroid/graphics/Rect;->right:I

    sub-int/2addr v2, v3

    iget v3, p1, Landroid/graphics/Rect;->bottom:I

    iget v4, p2, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v3, v4

    invoke-virtual {p0, v0, v1, v2, v3}, Landroid/graphics/Region;->set(IIII)Z

    .line 3030
    return-void
.end method

.method private calculateSystemDecorRect(Landroid/graphics/Rect;)V
    .registers 13
    .param p1, "systemDecorRect"  # Landroid/graphics/Rect;

    .line 4513
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mWindowFrames:Lcom/android/server/wm/WindowFrames;

    iget-object v0, v0, Lcom/android/server/wm/WindowFrames;->mDecorFrame:Landroid/graphics/Rect;

    .line 4514
    .local v0, "decorRect":Landroid/graphics/Rect;
    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mWindowFrames:Lcom/android/server/wm/WindowFrames;

    iget-object v1, v1, Lcom/android/server/wm/WindowFrames;->mFrame:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    .line 4515
    .local v1, "width":I
    iget-object v2, p0, Lcom/android/server/wm/WindowState;->mWindowFrames:Lcom/android/server/wm/WindowFrames;

    iget-object v2, v2, Lcom/android/server/wm/WindowFrames;->mFrame:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    .line 4517
    .local v2, "height":I
    iget-object v3, p0, Lcom/android/server/wm/WindowState;->mWindowFrames:Lcom/android/server/wm/WindowFrames;

    iget-object v3, v3, Lcom/android/server/wm/WindowFrames;->mFrame:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    .line 4518
    .local v3, "left":I
    iget-object v4, p0, Lcom/android/server/wm/WindowState;->mWindowFrames:Lcom/android/server/wm/WindowFrames;

    iget-object v4, v4, Lcom/android/server/wm/WindowFrames;->mFrame:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    .line 4521
    .local v4, "top":I
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->isDockedResizing()Z

    move-result v5

    const/4 v6, 0x0

    if-eqz v5, :cond_3f

    .line 4530
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/server/wm/DisplayContent;->getDisplayInfo()Landroid/view/DisplayInfo;

    move-result-object v5

    .line 4531
    .local v5, "displayInfo":Landroid/view/DisplayInfo;
    iget v7, v5, Landroid/view/DisplayInfo;->logicalWidth:I

    .line 4532
    invoke-static {v1, v7}, Ljava/lang/Math;->max(II)I

    move-result v7

    iget v8, v5, Landroid/view/DisplayInfo;->logicalHeight:I

    .line 4533
    invoke-static {v2, v8}, Ljava/lang/Math;->max(II)I

    move-result v8

    .line 4531
    invoke-virtual {p1, v6, v6, v7, v8}, Landroid/graphics/Rect;->set(IIII)V

    .line 4534
    .end local v5  # "displayInfo":Landroid/view/DisplayInfo;
    goto :goto_42

    .line 4535
    :cond_3f
    invoke-virtual {p1, v6, v6, v1, v2}, Landroid/graphics/Rect;->set(IIII)V

    .line 4544
    :goto_42
    nop

    .line 4545
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->inFreeformWindowingMode()Z

    move-result v5

    const/4 v7, 0x1

    if-eqz v5, :cond_50

    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->isAnimatingLw()Z

    move-result v5

    if-nez v5, :cond_57

    :cond_50
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->isDockedResizing()Z

    move-result v5

    if-nez v5, :cond_57

    move v6, v7

    :cond_57
    move v5, v6

    .line 4546
    .local v5, "cropToDecor":Z
    if-eqz v5, :cond_69

    .line 4548
    iget v6, v0, Landroid/graphics/Rect;->left:I

    sub-int/2addr v6, v3

    iget v8, v0, Landroid/graphics/Rect;->top:I

    sub-int/2addr v8, v4

    iget v9, v0, Landroid/graphics/Rect;->right:I

    sub-int/2addr v9, v3

    iget v10, v0, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v10, v4

    invoke-virtual {p1, v6, v8, v9, v10}, Landroid/graphics/Rect;->intersect(IIII)Z

    .line 4558
    :cond_69
    iget v6, p0, Lcom/android/server/wm/WindowState;->mInvGlobalScale:F

    const/high16 v8, 0x3f800000  # 1.0f

    cmpl-float v6, v6, v8

    if-eqz v6, :cond_9d

    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->inSizeCompatMode()Z

    move-result v6

    if-eqz v6, :cond_9d

    .line 4559
    iget v6, p0, Lcom/android/server/wm/WindowState;->mInvGlobalScale:F

    .line 4560
    .local v6, "scale":F
    iget v8, p1, Landroid/graphics/Rect;->left:I

    int-to-float v8, v8

    mul-float/2addr v8, v6

    const/high16 v9, 0x3f000000  # 0.5f

    sub-float/2addr v8, v9

    float-to-int v8, v8

    iput v8, p1, Landroid/graphics/Rect;->left:I

    .line 4561
    iget v8, p1, Landroid/graphics/Rect;->top:I

    int-to-float v8, v8

    mul-float/2addr v8, v6

    sub-float/2addr v8, v9

    float-to-int v8, v8

    iput v8, p1, Landroid/graphics/Rect;->top:I

    .line 4562
    iget v8, p1, Landroid/graphics/Rect;->right:I

    add-int/2addr v8, v7

    int-to-float v8, v8

    mul-float/2addr v8, v6

    sub-float/2addr v8, v9

    float-to-int v8, v8

    iput v8, p1, Landroid/graphics/Rect;->right:I

    .line 4563
    iget v8, p1, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v8, v7

    int-to-float v7, v8

    mul-float/2addr v7, v6

    sub-float/2addr v7, v9

    float-to-int v7, v7

    iput v7, p1, Landroid/graphics/Rect;->bottom:I

    .line 4566
    .end local v6  # "scale":F
    :cond_9d
    return-void
.end method

.method private computeDragResizing()Z
    .registers 5

    .line 3415
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getTask()Lcom/android/server/wm/Task;

    move-result-object v0

    .line 3416
    .local v0, "task":Lcom/android/server/wm/Task;
    const/4 v1, 0x0

    if-nez v0, :cond_8

    .line 3417
    return v1

    .line 3419
    :cond_8
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->inSplitScreenWindowingMode()Z

    move-result v2

    if-nez v2, :cond_15

    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->inFreeformWindowingMode()Z

    move-result v2

    if-nez v2, :cond_15

    .line 3420
    return v1

    .line 3422
    :cond_15
    iget-object v2, p0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v2, v2, Landroid/view/WindowManager$LayoutParams;->width:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_53

    iget-object v2, p0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v2, v2, Landroid/view/WindowManager$LayoutParams;->height:I

    if-eq v2, v3, :cond_23

    goto :goto_53

    .line 3426
    :cond_23
    invoke-virtual {v0}, Lcom/android/server/wm/Task;->isDragResizing()Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_2b

    .line 3427
    return v3

    .line 3434
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

    .line 3435
    invoke-virtual {v2}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_51

    .line 3436
    :cond_43
    invoke-virtual {v0}, Lcom/android/server/wm/Task;->inFreeformWindowingMode()Z

    move-result v2

    if-nez v2, :cond_51

    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->isGoneForLayoutLw()Z

    move-result v2

    if-nez v2, :cond_51

    move v1, v3

    goto :goto_52

    :cond_51
    nop

    .line 3434
    :goto_52
    return v1

    .line 3424
    :cond_53
    :goto_53
    return v1
.end method

.method private cropRegionToStackBoundsIfNeeded(Landroid/graphics/Region;)V
    .registers 6
    .param p1, "region"  # Landroid/graphics/Region;

    .line 3090
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getTask()Lcom/android/server/wm/Task;

    move-result-object v0

    .line 3091
    .local v0, "task":Lcom/android/server/wm/Task;
    if-eqz v0, :cond_1f

    invoke-virtual {v0}, Lcom/android/server/wm/Task;->cropWindowsToStackBounds()Z

    move-result v1

    if-nez v1, :cond_d

    goto :goto_1f

    .line 3095
    :cond_d
    iget-object v1, v0, Lcom/android/server/wm/Task;->mStack:Lcom/android/server/wm/TaskStack;

    .line 3096
    .local v1, "stack":Lcom/android/server/wm/TaskStack;
    if-nez v1, :cond_12

    .line 3097
    return-void

    .line 3100
    :cond_12
    iget-object v2, p0, Lcom/android/server/wm/WindowState;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Lcom/android/server/wm/TaskStack;->getDimBounds(Landroid/graphics/Rect;)V

    .line 3101
    iget-object v2, p0, Lcom/android/server/wm/WindowState;->mTmpRect:Landroid/graphics/Rect;

    sget-object v3, Landroid/graphics/Region$Op;->INTERSECT:Landroid/graphics/Region$Op;

    invoke-virtual {p1, v2, v3}, Landroid/graphics/Region;->op(Landroid/graphics/Rect;Landroid/graphics/Region$Op;)Z

    .line 3102
    return-void

    .line 3092
    .end local v1  # "stack":Lcom/android/server/wm/TaskStack;
    :cond_1f
    :goto_1f
    return-void
.end method

.method private dispatchResized(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;ZLandroid/util/MergedConfiguration;ZILandroid/view/DisplayCutout;)V
    .registers 29
    .param p1, "frame"  # Landroid/graphics/Rect;
    .param p2, "overscanInsets"  # Landroid/graphics/Rect;
    .param p3, "contentInsets"  # Landroid/graphics/Rect;
    .param p4, "visibleInsets"  # Landroid/graphics/Rect;
    .param p5, "stableInsets"  # Landroid/graphics/Rect;
    .param p6, "outsets"  # Landroid/graphics/Rect;
    .param p7, "reportDraw"  # Z
    .param p8, "mergedConfiguration"  # Landroid/util/MergedConfiguration;
    .param p9, "reportOrientation"  # Z
    .param p10, "displayId"  # I
    .param p11, "displayCutout"  # Landroid/view/DisplayCutout;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3301
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

    .line 3303
    .local v13, "forceRelayout":Z
    :goto_10
    iget-object v3, v0, Lcom/android/server/wm/WindowState;->mClient:Landroid/view/IWindow;

    .line 3304
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/wm/WindowState;->getBackdropFrame(Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v12

    .line 3305
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/WindowState;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/wm/DisplayContent;->getDisplayPolicy()Lcom/android/server/wm/DisplayPolicy;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/server/wm/DisplayPolicy;->areSystemBarsForcedShownLw(Lcom/android/server/wm/WindowState;)Z

    move-result v14

    new-instance v1, Landroid/view/DisplayCutout$ParcelableWrapper;

    move-object/from16 v15, p11

    invoke-direct {v1, v15}, Landroid/view/DisplayCutout$ParcelableWrapper;-><init>(Landroid/view/DisplayCutout;)V

    .line 3303
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

    .line 3307
    iput-boolean v2, v0, Lcom/android/server/wm/WindowState;->mDragResizingChangeReported:Z

    .line 3308
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

    .line 4108
    .local p1, "callback":Lcom/android/internal/util/ToBooleanFunction;, "Lcom/android/internal/util/ToBooleanFunction<Lcom/android/server/wm/WindowState;>;"
    const/4 v0, 0x0

    .line 4109
    .local v0, "i":I
    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowList;->size()I

    move-result v1

    .line 4110
    .local v1, "count":I
    iget-object v2, p0, Lcom/android/server/wm/WindowState;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v2, v0}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/WindowState;

    .line 4112
    .local v2, "child":Lcom/android/server/wm/WindowState;
    :goto_f
    const/4 v3, 0x0

    const/4 v4, 0x1

    if-ge v0, v1, :cond_2d

    iget v5, v2, Lcom/android/server/wm/WindowState;->mSubLayer:I

    if-gez v5, :cond_2d

    .line 4113
    invoke-direct {v2, p1, v3}, Lcom/android/server/wm/WindowState;->applyInOrderWithImeWindows(Lcom/android/internal/util/ToBooleanFunction;Z)Z

    move-result v5

    if-eqz v5, :cond_1e

    .line 4114
    return v4

    .line 4116
    :cond_1e
    add-int/lit8 v0, v0, 0x1

    .line 4117
    if-lt v0, v1, :cond_23

    .line 4118
    goto :goto_2d

    .line 4120
    :cond_23
    iget-object v3, p0, Lcom/android/server/wm/WindowState;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v3, v0}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v3

    move-object v2, v3

    check-cast v2, Lcom/android/server/wm/WindowState;

    goto :goto_f

    .line 4123
    :cond_2d
    :goto_2d
    invoke-direct {p0, p1, v3}, Lcom/android/server/wm/WindowState;->applyInOrderWithImeWindows(Lcom/android/internal/util/ToBooleanFunction;Z)Z

    move-result v5

    if-eqz v5, :cond_34

    .line 4124
    return v4

    .line 4127
    :cond_34
    :goto_34
    if-ge v0, v1, :cond_4c

    .line 4128
    invoke-direct {v2, p1, v3}, Lcom/android/server/wm/WindowState;->applyInOrderWithImeWindows(Lcom/android/internal/util/ToBooleanFunction;Z)Z

    move-result v5

    if-eqz v5, :cond_3d

    .line 4129
    return v4

    .line 4131
    :cond_3d
    add-int/lit8 v0, v0, 0x1

    .line 4132
    if-lt v0, v1, :cond_42

    .line 4133
    goto :goto_4c

    .line 4135
    :cond_42
    iget-object v5, p0, Lcom/android/server/wm/WindowState;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v5, v0}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v5

    move-object v2, v5

    check-cast v2, Lcom/android/server/wm/WindowState;

    goto :goto_34

    .line 4138
    :cond_4c
    :goto_4c
    return v3
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

    .line 4145
    .local p1, "callback":Lcom/android/internal/util/ToBooleanFunction;, "Lcom/android/internal/util/ToBooleanFunction<Lcom/android/server/wm/WindowState;>;"
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowList;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    .line 4146
    .local v0, "i":I
    iget-object v2, p0, Lcom/android/server/wm/WindowState;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v2, v0}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/WindowState;

    .line 4148
    .local v2, "child":Lcom/android/server/wm/WindowState;
    :goto_10
    if-ltz v0, :cond_2c

    iget v3, v2, Lcom/android/server/wm/WindowState;->mSubLayer:I

    if-ltz v3, :cond_2c

    .line 4149
    invoke-direct {v2, p1, v1}, Lcom/android/server/wm/WindowState;->applyInOrderWithImeWindows(Lcom/android/internal/util/ToBooleanFunction;Z)Z

    move-result v3

    if-eqz v3, :cond_1d

    .line 4150
    return v1

    .line 4152
    :cond_1d
    add-int/lit8 v0, v0, -0x1

    .line 4153
    if-gez v0, :cond_22

    .line 4154
    goto :goto_2c

    .line 4156
    :cond_22
    iget-object v3, p0, Lcom/android/server/wm/WindowState;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v3, v0}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v3

    move-object v2, v3

    check-cast v2, Lcom/android/server/wm/WindowState;

    goto :goto_10

    .line 4159
    :cond_2c
    :goto_2c
    invoke-direct {p0, p1, v1}, Lcom/android/server/wm/WindowState;->applyInOrderWithImeWindows(Lcom/android/internal/util/ToBooleanFunction;Z)Z

    move-result v3

    if-eqz v3, :cond_33

    .line 4160
    return v1

    .line 4163
    :cond_33
    :goto_33
    if-ltz v0, :cond_4b

    .line 4164
    invoke-direct {v2, p1, v1}, Lcom/android/server/wm/WindowState;->applyInOrderWithImeWindows(Lcom/android/internal/util/ToBooleanFunction;Z)Z

    move-result v3

    if-eqz v3, :cond_3c

    .line 4165
    return v1

    .line 4167
    :cond_3c
    add-int/lit8 v0, v0, -0x1

    .line 4168
    if-gez v0, :cond_41

    .line 4169
    goto :goto_4b

    .line 4171
    :cond_41
    iget-object v3, p0, Lcom/android/server/wm/WindowState;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v3, v0}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v3

    move-object v2, v3

    check-cast v2, Lcom/android/server/wm/WindowState;

    goto :goto_33

    .line 4174
    :cond_4b
    :goto_4b
    const/4 v1, 0x0

    return v1
.end method

.method private frameCoversEntireAppTokenBounds()Z
    .registers 3

    .line 3372
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mTmpRect:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    invoke-virtual {v1}, Lcom/android/server/wm/AppWindowToken;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 3373
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mTmpRect:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mWindowFrames:Lcom/android/server/wm/WindowFrames;

    iget-object v1, v1, Lcom/android/server/wm/WindowFrames;->mFrame:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->intersectUnchecked(Landroid/graphics/Rect;)V

    .line 3374
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

    .line 2494
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mLastReportedConfiguration:Landroid/util/MergedConfiguration;

    invoke-virtual {v0}, Landroid/util/MergedConfiguration;->getMergedConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    return-object v0
.end method

.method private getProcessGlobalConfiguration()Landroid/content/res/Configuration;
    .registers 4

    .line 2471
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getParentWindow()Lcom/android/server/wm/WindowState;

    move-result-object v0

    .line 2472
    .local v0, "parentWindow":Lcom/android/server/wm/WindowState;
    if-eqz v0, :cond_9

    iget-object v1, v0, Lcom/android/server/wm/WindowState;->mSession:Lcom/android/server/wm/Session;

    goto :goto_b

    :cond_9
    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mSession:Lcom/android/server/wm/Session;

    :goto_b
    iget v1, v1, Lcom/android/server/wm/Session;->mPid:I

    .line 2473
    .local v1, "pid":I
    iget-object v2, p0, Lcom/android/server/wm/WindowState;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 2474
    invoke-virtual {v2, v1}, Lcom/android/server/wm/ActivityTaskManagerService;->getGlobalConfigurationForPid(I)Landroid/content/res/Configuration;

    move-result-object v2

    .line 2475
    .local v2, "processConfig":Landroid/content/res/Configuration;
    return-object v2
.end method

.method private getStackId()I
    .registers 3

    .line 3289
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getStack()Lcom/android/server/wm/TaskStack;

    move-result-object v0

    .line 3290
    .local v0, "stack":Lcom/android/server/wm/TaskStack;
    if-nez v0, :cond_8

    .line 3291
    const/4 v1, -0x1

    return v1

    .line 3293
    :cond_8
    iget v1, v0, Lcom/android/server/wm/TaskStack;->mStackId:I

    return v1
.end method

.method private hasMoved()Z
    .registers 3

    .line 1855
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

    .line 1859
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

    .line 1855
    :goto_41
    return v0
.end method

.method private inAppWindowThatMatchesParentBounds()Z
    .registers 2

    .line 3334
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

.method private isDragResizingChangeReported()Z
    .registers 2

    .line 3398
    iget-boolean v0, p0, Lcom/android/server/wm/WindowState;->mDragResizingChangeReported:Z

    return v0
.end method

.method private isHiddenFromUserLocked()Z
    .registers 5

    .line 3006
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getTopParentWindow()Lcom/android/server/wm/WindowState;

    move-result-object v0

    .line 3007
    .local v0, "win":Lcom/android/server/wm/WindowState;
    iget-object v1, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v1, v1, Landroid/view/WindowManager$LayoutParams;->type:I

    const/4 v2, 0x0

    const/16 v3, 0x7d0

    if-ge v1, v3, :cond_4e

    iget-object v1, v0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    if-eqz v1, :cond_4e

    iget-boolean v1, v1, Lcom/android/server/wm/AppWindowToken;->mShowForAllUsers:Z

    if-eqz v1, :cond_4e

    .line 3013
    invoke-virtual {v0}, Lcom/android/server/wm/WindowState;->getFrameLw()Landroid/graphics/Rect;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Rect;->left:I

    invoke-virtual {v0}, Lcom/android/server/wm/WindowState;->getDisplayFrameLw()Landroid/graphics/Rect;

    move-result-object v3

    iget v3, v3, Landroid/graphics/Rect;->left:I

    if-gt v1, v3, :cond_4e

    .line 3014
    invoke-virtual {v0}, Lcom/android/server/wm/WindowState;->getFrameLw()Landroid/graphics/Rect;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Rect;->top:I

    invoke-virtual {v0}, Lcom/android/server/wm/WindowState;->getDisplayFrameLw()Landroid/graphics/Rect;

    move-result-object v3

    iget v3, v3, Landroid/graphics/Rect;->top:I

    if-gt v1, v3, :cond_4e

    .line 3015
    invoke-virtual {v0}, Lcom/android/server/wm/WindowState;->getFrameLw()Landroid/graphics/Rect;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Rect;->right:I

    invoke-virtual {v0}, Lcom/android/server/wm/WindowState;->getStableFrameLw()Landroid/graphics/Rect;

    move-result-object v3

    iget v3, v3, Landroid/graphics/Rect;->right:I

    if-lt v1, v3, :cond_4e

    .line 3016
    invoke-virtual {v0}, Lcom/android/server/wm/WindowState;->getFrameLw()Landroid/graphics/Rect;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v0}, Lcom/android/server/wm/WindowState;->getStableFrameLw()Landroid/graphics/Rect;

    move-result-object v3

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    if-lt v1, v3, :cond_4e

    .line 3018
    return v2

    .line 3022
    :cond_4e
    iget-boolean v1, v0, Lcom/android/server/wm/WindowState;->mShowToOwnerOnly:Z

    if-eqz v1, :cond_62

    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget v3, v0, Lcom/android/server/wm/WindowState;->mOwnerUid:I

    .line 3023
    invoke-static {v3}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v3

    invoke-virtual {v1, v3}, Lcom/android/server/wm/WindowManagerService;->isCurrentProfileLocked(I)Z

    move-result v1

    if-nez v1, :cond_62

    const/4 v2, 0x1

    goto :goto_63

    :cond_62
    nop

    .line 3022
    :goto_63
    return v2
.end method

.method private isLegacyPolicyVisibility()Z
    .registers 3

    .line 1503
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

    .line 1697
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

    .line 1699
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

    .line 1697
    :goto_22
    return v0
.end method

.method private isParentWindowGoneForLayout()Z
    .registers 3

    .line 3841
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getParentWindow()Lcom/android/server/wm/WindowState;

    move-result-object v0

    .line 3842
    .local v0, "parent":Lcom/android/server/wm/WindowState;
    if-eqz v0, :cond_e

    invoke-virtual {v0}, Lcom/android/server/wm/WindowState;->isGoneForLayoutLw()Z

    move-result v1

    if-eqz v1, :cond_e

    const/4 v1, 0x1

    goto :goto_f

    :cond_e
    const/4 v1, 0x0

    :goto_f
    return v1
.end method

.method private logPerformShow(Ljava/lang/String;)V
    .registers 7
    .param p1, "prefix"  # Ljava/lang/String;

    .line 4027
    sget-boolean v0, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_VISIBILITY:Z

    const/4 v1, 0x3

    if-nez v0, :cond_f

    sget-boolean v0, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_STARTING_WINDOW_VERBOSE:Z

    if-eqz v0, :cond_bd

    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    if-ne v0, v1, :cond_bd

    .line 4029
    :cond_f
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ": mDrawState="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    .line 4030
    invoke-virtual {v2}, Lcom/android/server/wm/WindowStateAnimator;->drawStateToString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " readyForDisplay="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4031
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->isReadyForDisplay()Z

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " starting="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v2, v2, Landroid/view/WindowManager$LayoutParams;->type:I

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-ne v2, v1, :cond_43

    move v1, v3

    goto :goto_44

    :cond_43
    move v1, v4

    :goto_44
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " during animation: policyVis="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4033
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->isVisibleByPolicy()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " parentHidden="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4034
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->isParentWindowHidden()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " tok.hiddenRequested="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    if-eqz v1, :cond_6e

    iget-boolean v1, v1, Lcom/android/server/wm/AppWindowToken;->hiddenRequested:Z

    if-eqz v1, :cond_6e

    move v1, v3

    goto :goto_6f

    :cond_6e
    move v1, v4

    :goto_6f
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " tok.hidden="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    if-eqz v1, :cond_83

    .line 4037
    invoke-virtual {v1}, Lcom/android/server/wm/AppWindowToken;->isHidden()Z

    move-result v1

    if-eqz v1, :cond_83

    move v1, v3

    goto :goto_84

    :cond_83
    move v1, v4

    :goto_84
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " animating="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4038
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->isAnimating()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " tok animating="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    if-eqz v1, :cond_a3

    .line 4040
    invoke-virtual {v1}, Lcom/android/server/wm/AppWindowToken;->isSelfAnimating()Z

    move-result v1

    if-eqz v1, :cond_a3

    goto :goto_a4

    :cond_a3
    move v3, v4

    :goto_a4
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " Callers="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x4

    .line 4041
    invoke-static {v1}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 4029
    const-string v1, "WindowManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4043
    :cond_bd
    return-void
.end method

.method private matchesDisplayBounds()Z
    .registers 3

    .line 1878
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
    .registers 7

    .line 3167
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getParentWindow()Lcom/android/server/wm/WindowState;

    move-result-object v0

    .line 3168
    .local v0, "parentWindow":Lcom/android/server/wm/WindowState;
    if-eqz v0, :cond_9

    iget-object v1, v0, Lcom/android/server/wm/WindowState;->mSession:Lcom/android/server/wm/Session;

    goto :goto_b

    :cond_9
    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mSession:Lcom/android/server/wm/Session;

    .line 3170
    .local v1, "session":Lcom/android/server/wm/Session;
    :goto_b
    iget v2, v1, Lcom/android/server/wm/Session;->mPid:I

    sget v3, Lcom/android/server/am/ActivityManagerService;->MY_PID:I

    const/4 v4, 0x0

    if-eq v2, v3, :cond_2f

    iget v2, v1, Lcom/android/server/wm/Session;->mPid:I

    if-gez v2, :cond_17

    goto :goto_2f

    .line 3171
    :cond_17
    iget-object v2, p0, Lcom/android/server/wm/WindowState;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget v3, v1, Lcom/android/server/wm/Session;->mPid:I

    iget v5, v1, Lcom/android/server/wm/Session;->mUid:I

    .line 3172
    invoke-virtual {v2, v3, v5}, Lcom/android/server/wm/ActivityTaskManagerService;->getProcessController(II)Lcom/android/server/wm/WindowProcessController;

    move-result-object v2

    .line 3173
    .local v2, "app":Lcom/android/server/wm/WindowProcessController;
    if-eqz v2, :cond_2e

    invoke-virtual {v2}, Lcom/android/server/wm/WindowProcessController;->registeredForDisplayConfigChanges()Z

    move-result v3

    if-nez v3, :cond_2c

    goto :goto_2e

    .line 3174
    :cond_2c
    const/4 v3, 0x1

    return v3

    .line 3173
    :cond_2e
    :goto_2e
    return v4

    .line 3170
    .end local v2  # "app":Lcom/android/server/wm/WindowProcessController;
    :cond_2f
    :goto_2f
    return v4
.end method

.method private removeIfPossible(Z)V
    .registers 14
    .param p1, "keepVisibleDeadWindow"  # Z

    .line 1977
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/wm/WindowState;->mWindowRemovalAllowed:Z

    .line 1978
    sget-boolean v1, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_ADD_REMOVE:Z

    const-string v2, " callers="

    const/4 v3, 0x5

    const-string v4, "WindowManager"

    if-eqz v1, :cond_2a

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "removeIfPossible: "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1979
    invoke-static {v3}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1978
    invoke-static {v4, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1981
    :cond_2a
    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v1, v1, Landroid/view/WindowManager$LayoutParams;->type:I

    const/4 v5, 0x3

    const/4 v6, 0x0

    if-ne v1, v5, :cond_34

    move v1, v0

    goto :goto_35

    :cond_34
    move v1, v6

    .line 1982
    .local v1, "startingWindow":Z
    :goto_35
    if-eqz v1, :cond_4f

    sget-boolean v5, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_STARTING_WINDOW:Z

    if-eqz v5, :cond_4f

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Starting window removed "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1985
    :cond_4f
    sget-boolean v5, Lcom/android/server/wm/WindowManagerService;->localLOGV:Z

    const-string v7, "Remove "

    if-nez v5, :cond_63

    sget-boolean v5, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_FOCUS:Z

    if-nez v5, :cond_63

    sget-boolean v5, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_FOCUS_LIGHT:Z

    if-eqz v5, :cond_a3

    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->isFocused()Z

    move-result v5

    if-eqz v5, :cond_a3

    .line 1986
    :cond_63
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v8, " client="

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, p0, Lcom/android/server/wm/WindowState;->mClient:Landroid/view/IWindow;

    .line 1987
    invoke-interface {v8}, Landroid/view/IWindow;->asBinder()Landroid/os/IBinder;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, ", surfaceController="

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, p0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    iget-object v8, v8, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceController:Lcom/android/server/wm/WindowSurfaceController;

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v8, " Callers="

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1989
    invoke-static {v3}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 1986
    invoke-static {v4, v5}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1991
    :cond_a3
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v8

    .line 1994
    .local v8, "origId":J
    :try_start_a7
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->disposeInputChannel()V

    .line 1996
    sget-boolean v5, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_APP_TRANSITIONS:Z

    if-eqz v5, :cond_150

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v7, ": mSurfaceController="

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    iget-object v7, v7, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceController:Lcom/android/server/wm/WindowSurfaceController;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v7, " mAnimatingExit="

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v7, p0, Lcom/android/server/wm/WindowState;->mAnimatingExit:Z

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v7, " mRemoveOnExit="

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v7, p0, Lcom/android/server/wm/WindowState;->mRemoveOnExit:Z

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v7, " mHasSurface="

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v7, p0, Lcom/android/server/wm/WindowState;->mHasSurface:Z

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v7, " surfaceShowing="

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    .line 2001
    invoke-virtual {v7}, Lcom/android/server/wm/WindowStateAnimator;->getShown()Z

    move-result v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v7, " animating="

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2002
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->isAnimating()Z

    move-result v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v7, " app-animation="

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2004
    iget-object v7, p0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    if-eqz v7, :cond_111

    iget-object v7, p0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    invoke-virtual {v7}, Lcom/android/server/wm/AppWindowToken;->isSelfAnimating()Z

    move-result v7

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    goto :goto_113

    :cond_111
    const-string v7, "false"

    :goto_113
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v7, " mWillReplaceWindow="

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v7, p0, Lcom/android/server/wm/WindowState;->mWillReplaceWindow:Z

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v7, " inPendingTransaction="

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2007
    iget-object v7, p0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    if-eqz v7, :cond_12e

    iget-object v7, p0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    iget-boolean v7, v7, Lcom/android/server/wm/AppWindowToken;->inPendingTransaction:Z

    goto :goto_12f

    :cond_12e
    move v7, v6

    :goto_12f
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v7, " mDisplayFrozen="

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p0, Lcom/android/server/wm/WindowState;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-boolean v7, v7, Lcom/android/server/wm/WindowManagerService;->mDisplayFrozen:Z

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x6

    .line 2009
    invoke-static {v2}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1996
    invoke-static {v4, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2012
    :cond_150
    const/4 v2, 0x0

    .line 2014
    .local v2, "wasVisible":Z
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getDisplayId()I

    move-result v5

    .line 2019
    .local v5, "displayId":I
    iget-boolean v7, p0, Lcom/android/server/wm/WindowState;->mHasSurface:Z

    if-eqz v7, :cond_252

    iget-object v7, p0, Lcom/android/server/wm/WindowState;->mToken:Lcom/android/server/wm/WindowToken;

    invoke-virtual {v7}, Lcom/android/server/wm/WindowToken;->okToAnimate()Z

    move-result v7

    if-eqz v7, :cond_252

    .line 2020
    iget-boolean v7, p0, Lcom/android/server/wm/WindowState;->mWillReplaceWindow:Z

    if-eqz v7, :cond_18a

    .line 2023
    sget-boolean v3, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_ADD_REMOVE:Z

    if-eqz v3, :cond_182

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Preserving "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, " until the new one is added"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2029
    :cond_182
    iput-boolean v0, p0, Lcom/android/server/wm/WindowState;->mAnimatingExit:Z

    .line 2030
    iput-boolean v0, p0, Lcom/android/server/wm/WindowState;->mReplacingRemoveRequested:Z
    :try_end_186
    .catchall {:try_start_a7 .. :try_end_186} :catchall_279

    .line 2104
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2031
    return-void

    .line 2035
    :cond_18a
    :try_start_18a
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->isWinVisibleLw()Z

    move-result v7
    :try_end_18e
    .catchall {:try_start_18a .. :try_end_18e} :catchall_279

    move v2, v7

    .line 2037
    const-string v7, "Not removing "

    if-eqz p1, :cond_1cd

    .line 2038
    :try_start_193
    sget-boolean v3, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_ADD_REMOVE:Z

    if-eqz v3, :cond_1ae

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, " because app died while it\'s visible"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2041
    :cond_1ae
    iput-boolean v0, p0, Lcom/android/server/wm/WindowState;->mAppDied:Z

    .line 2042
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->setDisplayLayoutNeeded()V

    .line 2043
    iget-object v3, p0, Lcom/android/server/wm/WindowState;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v3, Lcom/android/server/wm/WindowManagerService;->mWindowPlacerLocked:Lcom/android/server/wm/WindowSurfacePlacer;

    invoke-virtual {v3}, Lcom/android/server/wm/WindowSurfacePlacer;->performSurfacePlacement()V

    .line 2047
    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Lcom/android/server/wm/WindowState;->openInputChannel(Landroid/view/InputChannel;)V

    .line 2048
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/wm/DisplayContent;->getInputMonitor()Lcom/android/server/wm/InputMonitor;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/android/server/wm/InputMonitor;->updateInputWindowsLw(Z)V
    :try_end_1c9
    .catchall {:try_start_193 .. :try_end_1c9} :catchall_279

    .line 2104
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2049
    return-void

    .line 2052
    :cond_1cd
    if-eqz v2, :cond_1f1

    .line 2053
    if-nez v1, :cond_1d2

    const/4 v3, 0x2

    .line 2056
    .local v3, "transit":I
    :cond_1d2
    :try_start_1d2
    iget-object v10, p0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    invoke-virtual {v10, v3, v6}, Lcom/android/server/wm/WindowStateAnimator;->applyAnimationLocked(IZ)Z

    move-result v10

    if-eqz v10, :cond_1e4

    .line 2057
    iput-boolean v0, p0, Lcom/android/server/wm/WindowState;->mAnimatingExit:Z

    .line 2061
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->setDisplayLayoutNeeded()V

    .line 2062
    iget-object v10, p0, Lcom/android/server/wm/WindowState;->mWmService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v10}, Lcom/android/server/wm/WindowManagerService;->requestTraversal()V

    .line 2064
    :cond_1e4
    iget-object v10, p0, Lcom/android/server/wm/WindowState;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v10, v10, Lcom/android/server/wm/WindowManagerService;->mAccessibilityController:Lcom/android/server/wm/AccessibilityController;

    if-eqz v10, :cond_1f1

    .line 2065
    iget-object v10, p0, Lcom/android/server/wm/WindowState;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v10, v10, Lcom/android/server/wm/WindowManagerService;->mAccessibilityController:Lcom/android/server/wm/AccessibilityController;

    invoke-virtual {v10, p0, v3}, Lcom/android/server/wm/AccessibilityController;->onWindowTransitionLocked(Lcom/android/server/wm/WindowState;I)V

    .line 2068
    .end local v3  # "transit":I
    :cond_1f1
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->isAnimating()Z

    move-result v3

    if-eqz v3, :cond_205

    iget-object v3, p0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    if-eqz v3, :cond_203

    iget-object v3, p0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    .line 2069
    invoke-virtual {v3}, Lcom/android/server/wm/AppWindowToken;->isWaitingForTransitionStart()Z

    move-result v3

    if-nez v3, :cond_205

    :cond_203
    move v3, v0

    goto :goto_206

    :cond_205
    move v3, v6

    .line 2070
    .local v3, "isAnimating":Z
    :goto_206
    if-eqz v1, :cond_216

    iget-object v10, p0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    if-eqz v10, :cond_216

    iget-object v10, p0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    .line 2071
    invoke-virtual {v10, p0}, Lcom/android/server/wm/AppWindowToken;->isLastWindow(Lcom/android/server/wm/WindowState;)Z

    move-result v10

    if-eqz v10, :cond_216

    move v10, v0

    goto :goto_217

    :cond_216
    move v10, v6

    .line 2077
    .local v10, "lastWindowIsStartingWindow":Z
    :goto_217
    iget-object v11, p0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    invoke-virtual {v11}, Lcom/android/server/wm/WindowStateAnimator;->getShown()Z

    move-result v11

    if-eqz v11, :cond_252

    iget-boolean v11, p0, Lcom/android/server/wm/WindowState;->mAnimatingExit:Z

    if-eqz v11, :cond_252

    if-eqz v10, :cond_227

    if-eqz v3, :cond_252

    .line 2080
    :cond_227
    sget-boolean v0, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_ADD_REMOVE:Z

    if-eqz v0, :cond_242

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, " due to exit animation "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2082
    :cond_242
    invoke-direct {p0}, Lcom/android/server/wm/WindowState;->setupWindowForRemoveOnExit()V

    .line 2083
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    if-eqz v0, :cond_24e

    .line 2084
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    invoke-virtual {v0}, Lcom/android/server/wm/AppWindowToken;->updateReportedVisibilityLocked()V
    :try_end_24e
    .catchall {:try_start_1d2 .. :try_end_24e} :catchall_279

    .line 2104
    :cond_24e
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2086
    return-void

    .line 2090
    .end local v3  # "isAnimating":Z
    .end local v10  # "lastWindowIsStartingWindow":Z
    :cond_252
    :try_start_252
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->removeImmediately()V

    .line 2093
    if-eqz v2, :cond_264

    .line 2094
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v3

    .line 2095
    .local v3, "displayContent":Lcom/android/server/wm/DisplayContent;
    invoke-virtual {v3}, Lcom/android/server/wm/DisplayContent;->updateOrientationFromAppTokens()Z

    move-result v4

    if-eqz v4, :cond_264

    .line 2096
    invoke-virtual {v3}, Lcom/android/server/wm/DisplayContent;->sendNewConfiguration()V

    .line 2099
    .end local v3  # "displayContent":Lcom/android/server/wm/DisplayContent;
    :cond_264
    iget-object v3, p0, Lcom/android/server/wm/WindowState;->mWmService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->isFocused()Z

    move-result v4

    if-eqz v4, :cond_26e

    .line 2100
    const/4 v6, 0x4

    goto :goto_26f

    .line 2101
    :cond_26e
    nop

    :goto_26f
    nop

    .line 2099
    invoke-virtual {v3, v6, v0}, Lcom/android/server/wm/WindowManagerService;->updateFocusedWindowLocked(IZ)Z
    :try_end_273
    .catchall {:try_start_252 .. :try_end_273} :catchall_279

    .line 2104
    nop

    .end local v2  # "wasVisible":Z
    .end local v5  # "displayId":I
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2105
    nop

    .line 2106
    return-void

    .line 2104
    :catchall_279
    move-exception v0

    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0
.end method

.method private removeReplacedWindow()V
    .registers 3

    .line 2240
    sget-boolean v0, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_ADD_REMOVE:Z

    if-eqz v0, :cond_1a

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Removing replaced window: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WindowManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2241
    :cond_1a
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/wm/WindowState;->mWillReplaceWindow:Z

    .line 2242
    iput-boolean v0, p0, Lcom/android/server/wm/WindowState;->mAnimateReplacingWindow:Z

    .line 2243
    iput-boolean v0, p0, Lcom/android/server/wm/WindowState;->mReplacingRemoveRequested:Z

    .line 2244
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/wm/WindowState;->mReplacementWindow:Lcom/android/server/wm/WindowState;

    .line 2245
    iget-boolean v0, p0, Lcom/android/server/wm/WindowState;->mAnimatingExit:Z

    if-nez v0, :cond_2c

    iget-boolean v0, p0, Lcom/android/server/wm/WindowState;->mAnimateReplacingWindow:Z

    if-nez v0, :cond_2f

    .line 2246
    :cond_2c
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->removeImmediately()V

    .line 2248
    :cond_2f
    return-void
.end method

.method private setAppOpVisibilityLw(Z)V
    .registers 3
    .param p1, "state"  # Z

    .line 2765
    iget-boolean v0, p0, Lcom/android/server/wm/WindowState;->mAppOpVisibility:Z

    if-eq v0, p1, :cond_10

    .line 2766
    iput-boolean p1, p0, Lcom/android/server/wm/WindowState;->mAppOpVisibility:Z

    .line 2767
    const/4 v0, 0x1

    if-eqz p1, :cond_d

    .line 2774
    invoke-virtual {p0, v0, v0}, Lcom/android/server/wm/WindowState;->showLw(ZZ)Z

    goto :goto_10

    .line 2776
    :cond_d
    invoke-virtual {p0, v0, v0}, Lcom/android/server/wm/WindowState;->hideLw(ZZ)Z

    .line 2779
    :cond_10
    :goto_10
    return-void
.end method

.method private setTouchableRegionCropIfNeeded(Landroid/view/InputWindowHandle;)V
    .registers 5
    .param p1, "handle"  # Landroid/view/InputWindowHandle;

    .line 3076
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getTask()Lcom/android/server/wm/Task;

    move-result-object v0

    .line 3077
    .local v0, "task":Lcom/android/server/wm/Task;
    if-eqz v0, :cond_1a

    invoke-virtual {v0}, Lcom/android/server/wm/Task;->cropWindowsToStackBounds()Z

    move-result v1

    if-nez v1, :cond_d

    goto :goto_1a

    .line 3081
    :cond_d
    iget-object v1, v0, Lcom/android/server/wm/Task;->mStack:Lcom/android/server/wm/TaskStack;

    .line 3082
    .local v1, "stack":Lcom/android/server/wm/TaskStack;
    if-nez v1, :cond_12

    .line 3083
    return-void

    .line 3086
    :cond_12
    invoke-virtual {v1}, Lcom/android/server/wm/TaskStack;->getSurfaceControl()Landroid/view/SurfaceControl;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/view/InputWindowHandle;->setTouchableRegionCrop(Landroid/view/SurfaceControl;)V

    .line 3087
    return-void

    .line 3078
    .end local v1  # "stack":Lcom/android/server/wm/TaskStack;
    :cond_1a
    :goto_1a
    return-void
.end method

.method private setupWindowForRemoveOnExit()V
    .registers 4

    .line 2109
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/wm/WindowState;->mRemoveOnExit:Z

    .line 2110
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->setDisplayLayoutNeeded()V

    .line 2113
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mWmService:Lcom/android/server/wm/WindowManagerService;

    const/4 v1, 0x0

    const/4 v2, 0x3

    invoke-virtual {v0, v2, v1}, Lcom/android/server/wm/WindowManagerService;->updateFocusedWindowLocked(IZ)Z

    move-result v0

    .line 2115
    .local v0, "focusChanged":Z
    iget-object v2, p0, Lcom/android/server/wm/WindowState;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mWindowPlacerLocked:Lcom/android/server/wm/WindowSurfacePlacer;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowSurfacePlacer;->performSurfacePlacement()V

    .line 2116
    if-eqz v0, :cond_22

    .line 2117
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/wm/DisplayContent;->getInputMonitor()Lcom/android/server/wm/InputMonitor;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/android/server/wm/InputMonitor;->updateInputWindowsLw(Z)V

    .line 2119
    :cond_22
    return-void
.end method

.method private shouldKeepVisibleDeadAppWindow()Z
    .registers 4

    .line 2580
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

    .line 2585
    :cond_12
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget-object v0, v0, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    iget-object v2, p0, Lcom/android/server/wm/WindowState;->mClient:Landroid/view/IWindow;

    invoke-interface {v2}, Landroid/view/IWindow;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    if-eq v0, v2, :cond_1f

    .line 2588
    return v1

    .line 2591
    :cond_1f
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/4 v2, 0x3

    if-ne v0, v2, :cond_27

    .line 2594
    return v1

    .line 2597
    :cond_27
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getWindowConfiguration()Landroid/app/WindowConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/WindowConfiguration;->keepVisibleDeadAppWindowOnScreen()Z

    move-result v0

    return v0

    .line 2582
    :cond_30
    :goto_30
    return v1
.end method

.method private skipDecorCrop()Z
    .registers 2

    .line 4467
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mWindowFrames:Lcom/android/server/wm/WindowFrames;

    iget-object v0, v0, Lcom/android/server/wm/WindowFrames;->mDecorFrame:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 4468
    const/4 v0, 0x1

    return v0

    .line 4472
    :cond_c
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    if-eqz v0, :cond_12

    .line 4473
    const/4 v0, 0x0

    return v0

    .line 4478
    :cond_12
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mToken:Lcom/android/server/wm/WindowToken;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowToken;->canLayerAboveSystemBars()Z

    move-result v0

    return v0
.end method

.method private startAnimation(Landroid/view/SurfaceControl$Transaction;Lcom/android/server/wm/AnimationAdapter;)V
    .registers 4
    .param p1, "t"  # Landroid/view/SurfaceControl$Transaction;
    .param p2, "adapter"  # Lcom/android/server/wm/AnimationAdapter;

    .line 4711
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    iget-boolean v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mLastHidden:Z

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/server/wm/WindowState;->startAnimation(Landroid/view/SurfaceControl$Transaction;Lcom/android/server/wm/AnimationAdapter;Z)V

    .line 4712
    return-void
.end method

.method private startMoveAnimation(II)V
    .registers 14
    .param p1, "left"  # I
    .param p2, "top"  # I

    .line 4694
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mInsetProvider:Lcom/android/server/wm/InsetsSourceProvider;

    if-eqz v0, :cond_b

    invoke-virtual {v0}, Lcom/android/server/wm/InsetsSourceProvider;->isControllable()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 4695
    return-void

    .line 4698
    :cond_b
    sget-boolean v0, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_ANIM:Z

    if-eqz v0, :cond_25

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Setting move animation on "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WindowManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4699
    :cond_25
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    .line 4700
    .local v0, "oldPosition":Landroid/graphics/Point;
    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    .line 4701
    .local v1, "newPosition":Landroid/graphics/Point;
    iget-object v2, p0, Lcom/android/server/wm/WindowState;->mWindowFrames:Lcom/android/server/wm/WindowFrames;

    iget-object v2, v2, Lcom/android/server/wm/WindowFrames;->mLastFrame:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    iget-object v3, p0, Lcom/android/server/wm/WindowState;->mWindowFrames:Lcom/android/server/wm/WindowFrames;

    iget-object v3, v3, Lcom/android/server/wm/WindowFrames;->mLastFrame:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    invoke-direct {p0, v2, v3, v0}, Lcom/android/server/wm/WindowState;->transformFrameToSurfacePosition(IILandroid/graphics/Point;)V

    .line 4703
    invoke-direct {p0, p1, p2, v1}, Lcom/android/server/wm/WindowState;->transformFrameToSurfacePosition(IILandroid/graphics/Point;)V

    .line 4704
    new-instance v2, Lcom/android/server/wm/LocalAnimationAdapter;

    new-instance v10, Lcom/android/server/wm/WindowState$MoveAnimationSpec;

    iget v5, v0, Landroid/graphics/Point;->x:I

    iget v6, v0, Landroid/graphics/Point;->y:I

    iget v7, v1, Landroid/graphics/Point;->x:I

    iget v8, v1, Landroid/graphics/Point;->y:I

    const/4 v9, 0x0

    move-object v3, v10

    move-object v4, p0

    invoke-direct/range {v3 .. v9}, Lcom/android/server/wm/WindowState$MoveAnimationSpec;-><init>(Lcom/android/server/wm/WindowState;IIIILcom/android/server/wm/WindowState$1;)V

    iget-object v3, p0, Lcom/android/server/wm/WindowState;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v3, Lcom/android/server/wm/WindowManagerService;->mSurfaceAnimationRunner:Lcom/android/server/wm/SurfaceAnimationRunner;

    invoke-direct {v2, v10, v3}, Lcom/android/server/wm/LocalAnimationAdapter;-><init>(Lcom/android/server/wm/LocalAnimationAdapter$AnimationSpec;Lcom/android/server/wm/SurfaceAnimationRunner;)V

    .line 4707
    .local v2, "adapter":Lcom/android/server/wm/AnimationAdapter;
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getPendingTransaction()Landroid/view/SurfaceControl$Transaction;

    move-result-object v3

    invoke-direct {p0, v3, v2}, Lcom/android/server/wm/WindowState;->startAnimation(Landroid/view/SurfaceControl$Transaction;Lcom/android/server/wm/AnimationAdapter;)V

    .line 4708
    return-void
.end method

.method private subtractInsets(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)V
    .registers 11
    .param p1, "frame"  # Landroid/graphics/Rect;
    .param p2, "layoutFrame"  # Landroid/graphics/Rect;
    .param p3, "insetFrame"  # Landroid/graphics/Rect;
    .param p4, "displayFrame"  # Landroid/graphics/Rect;

    .line 859
    iget v0, p3, Landroid/graphics/Rect;->left:I

    iget v1, p2, Landroid/graphics/Rect;->left:I

    iget v2, p4, Landroid/graphics/Rect;->left:I

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    sub-int/2addr v0, v1

    const/4 v1, 0x0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 860
    .local v0, "left":I
    iget v2, p3, Landroid/graphics/Rect;->top:I

    iget v3, p2, Landroid/graphics/Rect;->top:I

    iget v4, p4, Landroid/graphics/Rect;->top:I

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    sub-int/2addr v2, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 861
    .local v2, "top":I
    iget v3, p2, Landroid/graphics/Rect;->right:I

    iget v4, p4, Landroid/graphics/Rect;->right:I

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    iget v4, p3, Landroid/graphics/Rect;->right:I

    sub-int/2addr v3, v4

    invoke-static {v1, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 862
    .local v3, "right":I
    iget v4, p2, Landroid/graphics/Rect;->bottom:I

    iget v5, p4, Landroid/graphics/Rect;->bottom:I

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    iget v5, p3, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v4, v5

    invoke-static {v1, v4}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 863
    .local v1, "bottom":I
    invoke-virtual {p1, v0, v2, v3, v1}, Landroid/graphics/Rect;->inset(IIII)V

    .line 864
    return-void
.end method

.method private subtractTouchExcludeRegionIfNeeded(Landroid/graphics/Region;)V
    .registers 4
    .param p1, "touchableRegion"  # Landroid/graphics/Region;

    .line 3109
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mTapExcludeRegionHolder:Lcom/android/server/wm/TapExcludeRegionHolder;

    if-nez v0, :cond_5

    .line 3110
    return-void

    .line 3112
    :cond_5
    invoke-static {}, Landroid/graphics/Region;->obtain()Landroid/graphics/Region;

    move-result-object v0

    .line 3113
    .local v0, "touchExcludeRegion":Landroid/graphics/Region;
    invoke-virtual {p0, v0}, Lcom/android/server/wm/WindowState;->amendTapExcludeRegion(Landroid/graphics/Region;)V

    .line 3114
    invoke-virtual {v0}, Landroid/graphics/Region;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_17

    .line 3115
    sget-object v1, Landroid/graphics/Region$Op;->DIFFERENCE:Landroid/graphics/Region$Op;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Region;->op(Landroid/graphics/Region;Landroid/graphics/Region$Op;)Z

    .line 3117
    :cond_17
    invoke-virtual {v0}, Landroid/graphics/Region;->recycle()V

    .line 3118
    return-void
.end method

.method private transformFrameToSurfacePosition(IILandroid/graphics/Point;)V
    .registers 9
    .param p1, "left"  # I
    .param p2, "top"  # I
    .param p3, "outPoint"  # Landroid/graphics/Point;

    .line 4932
    invoke-virtual {p3, p1, p2}, Landroid/graphics/Point;->set(II)V

    .line 4935
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object v0

    .line 4936
    .local v0, "parentWindowContainer":Lcom/android/server/wm/WindowContainer;
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->isChildWindow()Z

    move-result v1

    if-eqz v1, :cond_36

    .line 4942
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getParentWindow()Lcom/android/server/wm/WindowState;

    move-result-object v1

    .line 4943
    .local v1, "parent":Lcom/android/server/wm/WindowState;
    iget-object v2, p0, Lcom/android/server/wm/WindowState;->mTmpPoint:Landroid/graphics/Point;

    iget-object v3, v1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget-object v3, v3, Landroid/view/WindowManager$LayoutParams;->surfaceInsets:Landroid/graphics/Rect;

    invoke-direct {p0, v2, v3}, Lcom/android/server/wm/WindowState;->transformSurfaceInsetsPosition(Landroid/graphics/Point;Landroid/graphics/Rect;)V

    .line 4944
    iget-object v2, v1, Lcom/android/server/wm/WindowState;->mWindowFrames:Lcom/android/server/wm/WindowFrames;

    iget-object v2, v2, Lcom/android/server/wm/WindowFrames;->mFrame:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    neg-int v2, v2

    iget-object v3, p0, Lcom/android/server/wm/WindowState;->mTmpPoint:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->x:I

    add-int/2addr v2, v3

    iget-object v3, v1, Lcom/android/server/wm/WindowState;->mWindowFrames:Lcom/android/server/wm/WindowFrames;

    iget-object v3, v3, Lcom/android/server/wm/WindowFrames;->mFrame:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    neg-int v3, v3

    iget-object v4, p0, Lcom/android/server/wm/WindowState;->mTmpPoint:Landroid/graphics/Point;

    iget v4, v4, Landroid/graphics/Point;->y:I

    add-int/2addr v3, v4

    invoke-virtual {p3, v2, v3}, Landroid/graphics/Point;->offset(II)V

    .end local v1  # "parent":Lcom/android/server/wm/WindowState;
    goto :goto_46

    .line 4946
    :cond_36
    if-eqz v0, :cond_46

    .line 4947
    invoke-virtual {v0}, Lcom/android/server/wm/WindowContainer;->getDisplayedBounds()Landroid/graphics/Rect;

    move-result-object v1

    .line 4948
    .local v1, "parentBounds":Landroid/graphics/Rect;
    iget v2, v1, Landroid/graphics/Rect;->left:I

    neg-int v2, v2

    iget v3, v1, Landroid/graphics/Rect;->top:I

    neg-int v3, v3

    invoke-virtual {p3, v2, v3}, Landroid/graphics/Point;->offset(II)V

    goto :goto_47

    .line 4946
    .end local v1  # "parentBounds":Landroid/graphics/Rect;
    :cond_46
    :goto_46
    nop

    .line 4951
    :goto_47
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getStack()Lcom/android/server/wm/TaskStack;

    move-result-object v1

    .line 4957
    .local v1, "stack":Lcom/android/server/wm/TaskStack;
    if-eqz v1, :cond_54

    .line 4958
    invoke-virtual {v1}, Lcom/android/server/wm/TaskStack;->getStackOutset()I

    move-result v2

    .line 4959
    .local v2, "outset":I
    invoke-virtual {p3, v2, v2}, Landroid/graphics/Point;->offset(II)V

    .line 4963
    .end local v2  # "outset":I
    :cond_54
    iget-object v2, p0, Lcom/android/server/wm/WindowState;->mTmpPoint:Landroid/graphics/Point;

    iget-object v3, p0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget-object v3, v3, Landroid/view/WindowManager$LayoutParams;->surfaceInsets:Landroid/graphics/Rect;

    invoke-direct {p0, v2, v3}, Lcom/android/server/wm/WindowState;->transformSurfaceInsetsPosition(Landroid/graphics/Point;Landroid/graphics/Rect;)V

    .line 4964
    iget-object v2, p0, Lcom/android/server/wm/WindowState;->mTmpPoint:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->x:I

    neg-int v2, v2

    iget-object v3, p0, Lcom/android/server/wm/WindowState;->mTmpPoint:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->y:I

    neg-int v3, v3

    invoke-virtual {p3, v2, v3}, Landroid/graphics/Point;->offset(II)V

    .line 4965
    return-void
.end method

.method private transformSurfaceInsetsPosition(Landroid/graphics/Point;Landroid/graphics/Rect;)V
    .registers 6
    .param p1, "outPos"  # Landroid/graphics/Point;
    .param p2, "surfaceInsets"  # Landroid/graphics/Rect;

    .line 4972
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->inSizeCompatMode()Z

    move-result v0

    if-nez v0, :cond_f

    .line 4973
    iget v0, p2, Landroid/graphics/Rect;->left:I

    iput v0, p1, Landroid/graphics/Point;->x:I

    .line 4974
    iget v0, p2, Landroid/graphics/Rect;->top:I

    iput v0, p1, Landroid/graphics/Point;->y:I

    .line 4975
    return-void

    .line 4977
    :cond_f
    iget v0, p2, Landroid/graphics/Rect;->left:I

    int-to-float v0, v0

    iget v1, p0, Lcom/android/server/wm/WindowState;->mGlobalScale:F

    mul-float/2addr v0, v1

    const/high16 v1, 0x3f000000  # 0.5f

    add-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p1, Landroid/graphics/Point;->x:I

    .line 4978
    iget v0, p2, Landroid/graphics/Rect;->top:I

    int-to-float v0, v0

    iget v2, p0, Lcom/android/server/wm/WindowState;->mGlobalScale:F

    mul-float/2addr v0, v2

    add-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p1, Landroid/graphics/Point;->y:I

    .line 4979
    return-void
.end method

.method private updateSurfacePositionForWallpaper(Landroid/view/SurfaceControl$Transaction;)V
    .registers 12
    .param p1, "t"  # Landroid/view/SurfaceControl$Transaction;

    .line 5233
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mSurfaceControl:Landroid/view/SurfaceControl;

    if-nez v0, :cond_5

    return-void

    .line 5234
    :cond_5
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v1, 0x7dd

    if-ne v0, v1, :cond_86

    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getDisplayId()I

    move-result v0

    if-nez v0, :cond_86

    .line 5235
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getDisplayInfo()Landroid/view/DisplayInfo;

    move-result-object v0

    .line 5236
    .local v0, "displayInfo":Landroid/view/DisplayInfo;
    if-eqz v0, :cond_86

    .line 5237
    iget v1, v0, Landroid/view/DisplayInfo;->rotation:I

    .line 5238
    .local v1, "rotation":I
    iget v2, p0, Lcom/android/server/wm/WindowState;->mLastRotation:I

    const/4 v3, 0x5

    const/4 v4, 0x2

    if-ne v1, v2, :cond_36

    new-instance v2, Landroid/graphics/Point;

    iget-object v5, p0, Lcom/android/server/wm/WindowState;->mTmpFloats:[F

    aget v6, v5, v4

    float-to-int v6, v6

    aget v5, v5, v3

    float-to-int v5, v5

    invoke-direct {v2, v6, v5}, Landroid/graphics/Point;-><init>(II)V

    iget-object v5, p0, Lcom/android/server/wm/WindowState;->mSurfacePosition:Landroid/graphics/Point;

    invoke-virtual {v2, v5}, Landroid/graphics/Point;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_86

    .line 5239
    :cond_36
    iput v1, p0, Lcom/android/server/wm/WindowState;->mLastRotation:I

    .line 5240
    iget v2, p0, Lcom/android/server/wm/WindowState;->mLastRotation:I

    const/4 v5, 0x0

    invoke-static {v2, v5}, Lcom/android/server/wm/DisplayContent;->deltaRotation(II)I

    move-result v2

    .line 5241
    .local v2, "delta":I
    iget v5, v0, Landroid/view/DisplayInfo;->logicalWidth:I

    iget v6, v0, Landroid/view/DisplayInfo;->logicalHeight:I

    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    move-result v5

    .line 5242
    .local v5, "width":I
    iget v6, v0, Landroid/view/DisplayInfo;->logicalWidth:I

    iget v7, v0, Landroid/view/DisplayInfo;->logicalHeight:I

    invoke-static {v6, v7}, Ljava/lang/Math;->max(II)I

    move-result v6

    .line 5243
    .local v6, "height":I
    iget-object v7, p0, Lcom/android/server/wm/WindowState;->mSnapshotInitialMatrix:Landroid/graphics/Matrix;

    invoke-static {v2, v5, v6, v7}, Lcom/android/server/wm/ScreenRotationAnimation;->createRotationMatrix(IIILandroid/graphics/Matrix;)V

    .line 5244
    iget-object v7, p0, Lcom/android/server/wm/WindowState;->mSurfaceControl:Landroid/view/SurfaceControl;

    iget-object v8, p0, Lcom/android/server/wm/WindowState;->mSnapshotInitialMatrix:Landroid/graphics/Matrix;

    iget-object v9, p0, Lcom/android/server/wm/WindowState;->mTmpFloats:[F

    invoke-virtual {p1, v7, v8, v9}, Landroid/view/SurfaceControl$Transaction;->setMatrix(Landroid/view/SurfaceControl;Landroid/graphics/Matrix;[F)Landroid/view/SurfaceControl$Transaction;

    .line 5245
    iget-object v7, p0, Lcom/android/server/wm/WindowState;->mSurfacePosition:Landroid/graphics/Point;

    iget-object v8, p0, Lcom/android/server/wm/WindowState;->mTmpFloats:[F

    aget v4, v8, v4

    float-to-int v4, v4

    aget v3, v8, v3

    float-to-int v3, v3

    invoke-virtual {v7, v4, v3}, Landroid/graphics/Point;->set(II)V

    .line 5246
    sget-boolean v3, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_WALLPAPER:Z

    if-eqz v3, :cond_86

    .line 5247
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "update TYPE_WALLPAPER mLastRotation　mSnapshotInitialMatrix="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/wm/WindowState;->mSnapshotInitialMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "WindowManager"

    invoke-static {v4, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5252
    .end local v0  # "displayInfo":Landroid/view/DisplayInfo;
    .end local v1  # "rotation":I
    .end local v2  # "delta":I
    .end local v5  # "width":I
    .end local v6  # "height":I
    :cond_86
    return-void
.end method


# virtual methods
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

    .line 2864
    .local p1, "animators":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wm/WindowStateAnimator;>;"
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2866
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_d
    if-ltz v0, :cond_1d

    .line 2867
    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v1, v0}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/WindowState;

    .line 2868
    .local v1, "c":Lcom/android/server/wm/WindowState;
    invoke-virtual {v1, p1}, Lcom/android/server/wm/WindowState;->addWinAnimatorToList(Ljava/util/ArrayList;)V

    .line 2866
    .end local v1  # "c":Lcom/android/server/wm/WindowState;
    add-int/lit8 v0, v0, -0x1

    goto :goto_d

    .line 2870
    .end local v0  # "i":I
    :cond_1d
    return-void
.end method

.method adjustStartingWindowFlags()V
    .registers 6

    .line 2498
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_29

    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    if-eqz v0, :cond_29

    iget-object v0, v0, Lcom/android/server/wm/AppWindowToken;->startingWindow:Lcom/android/server/wm/WindowState;

    if-eqz v0, :cond_29

    .line 2503
    const v0, 0x480001

    .line 2505
    .local v0, "mask":I
    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    iget-object v1, v1, Lcom/android/server/wm/AppWindowToken;->startingWindow:Lcom/android/server/wm/WindowState;

    iget-object v1, v1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    .line 2506
    .local v1, "sa":Landroid/view/WindowManager$LayoutParams;
    iget v2, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    const v3, -0x480002

    and-int/2addr v2, v3

    iget-object v3, p0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v3, v3, Landroid/view/WindowManager$LayoutParams;->flags:I

    const v4, 0x480001

    and-int/2addr v3, v4

    or-int/2addr v2, v3

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 2508
    .end local v0  # "mask":I
    .end local v1  # "sa":Landroid/view/WindowManager$LayoutParams;
    :cond_29
    return-void
.end method

.method amendTapExcludeRegion(Landroid/graphics/Region;)V
    .registers 5
    .param p1, "region"  # Landroid/graphics/Region;

    .line 5077
    invoke-static {}, Landroid/graphics/Region;->obtain()Landroid/graphics/Region;

    move-result-object v0

    .line 5078
    .local v0, "tempRegion":Landroid/graphics/Region;
    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mTmpRect:Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/android/server/wm/WindowState;->mWindowFrames:Lcom/android/server/wm/WindowFrames;

    iget-object v2, v2, Lcom/android/server/wm/WindowFrames;->mFrame:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 5079
    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mTmpRect:Landroid/graphics/Rect;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v2}, Landroid/graphics/Rect;->offsetTo(II)V

    .line 5080
    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mTapExcludeRegionHolder:Lcom/android/server/wm/TapExcludeRegionHolder;

    iget-object v2, p0, Lcom/android/server/wm/WindowState;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v1, v0, v2}, Lcom/android/server/wm/TapExcludeRegionHolder;->amendRegion(Landroid/graphics/Region;Landroid/graphics/Rect;)V

    .line 5083
    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mWindowFrames:Lcom/android/server/wm/WindowFrames;

    iget-object v1, v1, Lcom/android/server/wm/WindowFrames;->mFrame:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    iget-object v2, p0, Lcom/android/server/wm/WindowState;->mWindowFrames:Lcom/android/server/wm/WindowFrames;

    iget-object v2, v2, Lcom/android/server/wm/WindowFrames;->mFrame:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Region;->translate(II)V

    .line 5084
    sget-object v1, Landroid/graphics/Region$Op;->UNION:Landroid/graphics/Region$Op;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Region;->op(Landroid/graphics/Region;Landroid/graphics/Region$Op;)Z

    .line 5085
    invoke-virtual {v0}, Landroid/graphics/Region;->recycle()V

    .line 5086
    return-void
.end method

.method applyAdjustForImeIfNeeded()V
    .registers 3

    .line 2277
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getTask()Lcom/android/server/wm/Task;

    move-result-object v0

    .line 2278
    .local v0, "task":Lcom/android/server/wm/Task;
    if-eqz v0, :cond_17

    iget-object v1, v0, Lcom/android/server/wm/Task;->mStack:Lcom/android/server/wm/TaskStack;

    if-eqz v1, :cond_17

    iget-object v1, v0, Lcom/android/server/wm/Task;->mStack:Lcom/android/server/wm/TaskStack;

    invoke-virtual {v1}, Lcom/android/server/wm/TaskStack;->isAdjustedForIme()Z

    move-result v1

    if-eqz v1, :cond_17

    .line 2279
    iget-object v1, v0, Lcom/android/server/wm/Task;->mStack:Lcom/android/server/wm/TaskStack;

    invoke-virtual {v1, v0}, Lcom/android/server/wm/TaskStack;->applyAdjustForImeIfNeeded(Lcom/android/server/wm/Task;)V

    .line 2281
    :cond_17
    return-void
.end method

.method public assignChildLayers(Landroid/view/SurfaceControl$Transaction;)V
    .registers 7
    .param p1, "t"  # Landroid/view/SurfaceControl$Transaction;

    .line 5026
    const/4 v0, 0x2

    .line 5027
    .local v0, "layer":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_2
    iget-object v2, p0, Lcom/android/server/wm/WindowState;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowList;->size()I

    move-result v2

    if-ge v1, v2, :cond_38

    .line 5028
    iget-object v2, p0, Lcom/android/server/wm/WindowState;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v2, v1}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/WindowState;

    .line 5034
    .local v2, "w":Lcom/android/server/wm/WindowState;
    iget-object v3, v2, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v3, v3, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v4, 0x3e9

    if-ne v3, v4, :cond_1f

    .line 5035
    const/4 v3, -0x2

    invoke-virtual {v2, p1, v3}, Lcom/android/server/wm/WindowState;->assignLayer(Landroid/view/SurfaceControl$Transaction;I)V

    goto :goto_2f

    .line 5036
    :cond_1f
    iget-object v3, v2, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v3, v3, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v4, 0x3ec

    if-ne v3, v4, :cond_2c

    .line 5037
    const/4 v3, -0x1

    invoke-virtual {v2, p1, v3}, Lcom/android/server/wm/WindowState;->assignLayer(Landroid/view/SurfaceControl$Transaction;I)V

    goto :goto_2f

    .line 5039
    :cond_2c
    invoke-virtual {v2, p1, v0}, Lcom/android/server/wm/WindowState;->assignLayer(Landroid/view/SurfaceControl$Transaction;I)V

    .line 5041
    :goto_2f
    invoke-virtual {v2, p1}, Lcom/android/server/wm/WindowState;->assignChildLayers(Landroid/view/SurfaceControl$Transaction;)V

    .line 5042
    nop

    .end local v2  # "w":Lcom/android/server/wm/WindowState;
    add-int/lit8 v0, v0, 0x1

    .line 5027
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 5044
    .end local v1  # "i":I
    :cond_38
    return-void
.end method

.method assignLayer(Landroid/view/SurfaceControl$Transaction;I)V
    .registers 4
    .param p1, "t"  # Landroid/view/SurfaceControl$Transaction;
    .param p2, "layer"  # I

    .line 5008
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->needsRelativeLayeringToIme()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 5009
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    invoke-virtual {v0, p1, p0}, Lcom/android/server/wm/DisplayContent;->assignRelativeLayerForImeTargetChild(Landroid/view/SurfaceControl$Transaction;Lcom/android/server/wm/WindowContainer;)V

    .line 5010
    return-void

    .line 5012
    :cond_e
    invoke-super {p0, p1, p2}, Lcom/android/server/wm/WindowContainer;->assignLayer(Landroid/view/SurfaceControl$Transaction;I)V

    .line 5013
    return-void
.end method

.method attach()V
    .registers 3

    .line 792
    sget-boolean v0, Lcom/android/server/wm/WindowManagerService;->localLOGV:Z

    if-eqz v0, :cond_24

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Attaching "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " token="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mToken:Lcom/android/server/wm/WindowToken;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WindowManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 793
    :cond_24
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mSession:Lcom/android/server/wm/Session;

    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget-object v1, v1, Landroid/view/WindowManager$LayoutParams;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/server/wm/Session;->windowAddedLocked(Ljava/lang/String;)V

    .line 794
    return-void
.end method

.method calculatePolicyCrop(Landroid/graphics/Rect;)V
    .registers 9
    .param p1, "policyCrop"  # Landroid/graphics/Rect;

    .line 4487
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    .line 4489
    .local v0, "displayContent":Lcom/android/server/wm/DisplayContent;
    iget-boolean v1, v0, Lcom/android/server/wm/DisplayContent;->isDefaultDisplay:Z

    const/4 v2, 0x0

    if-nez v1, :cond_4a

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->supportsSystemDecorations()Z

    move-result v1

    if-nez v1, :cond_4a

    .line 4492
    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->getDisplayInfo()Landroid/view/DisplayInfo;

    move-result-object v1

    .line 4493
    .local v1, "displayInfo":Landroid/view/DisplayInfo;
    iget-object v3, p0, Lcom/android/server/wm/WindowState;->mWindowFrames:Lcom/android/server/wm/WindowFrames;

    iget-object v3, v3, Lcom/android/server/wm/WindowFrames;->mCompatFrame:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v3

    iget-object v4, p0, Lcom/android/server/wm/WindowState;->mWindowFrames:Lcom/android/server/wm/WindowFrames;

    iget-object v4, v4, Lcom/android/server/wm/WindowFrames;->mCompatFrame:Landroid/graphics/Rect;

    .line 4494
    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v4

    .line 4493
    invoke-virtual {p1, v2, v2, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    .line 4495
    iget-object v2, p0, Lcom/android/server/wm/WindowState;->mWindowFrames:Lcom/android/server/wm/WindowFrames;

    iget-object v2, v2, Lcom/android/server/wm/WindowFrames;->mCompatFrame:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    neg-int v2, v2

    iget-object v3, p0, Lcom/android/server/wm/WindowState;->mWindowFrames:Lcom/android/server/wm/WindowFrames;

    iget-object v3, v3, Lcom/android/server/wm/WindowFrames;->mCompatFrame:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    neg-int v3, v3

    iget v4, v1, Landroid/view/DisplayInfo;->logicalWidth:I

    iget-object v5, p0, Lcom/android/server/wm/WindowState;->mWindowFrames:Lcom/android/server/wm/WindowFrames;

    iget-object v5, v5, Lcom/android/server/wm/WindowFrames;->mCompatFrame:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->left:I

    sub-int/2addr v4, v5

    iget v5, v1, Landroid/view/DisplayInfo;->logicalHeight:I

    iget-object v6, p0, Lcom/android/server/wm/WindowState;->mWindowFrames:Lcom/android/server/wm/WindowFrames;

    iget-object v6, v6, Lcom/android/server/wm/WindowFrames;->mCompatFrame:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->top:I

    sub-int/2addr v5, v6

    invoke-virtual {p1, v2, v3, v4, v5}, Landroid/graphics/Rect;->intersect(IIII)Z

    .line 4498
    .end local v1  # "displayInfo":Landroid/view/DisplayInfo;
    goto :goto_67

    :cond_4a
    invoke-direct {p0}, Lcom/android/server/wm/WindowState;->skipDecorCrop()Z

    move-result v1

    if-eqz v1, :cond_64

    .line 4500
    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mWindowFrames:Lcom/android/server/wm/WindowFrames;

    iget-object v1, v1, Lcom/android/server/wm/WindowFrames;->mCompatFrame:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    iget-object v3, p0, Lcom/android/server/wm/WindowState;->mWindowFrames:Lcom/android/server/wm/WindowFrames;

    iget-object v3, v3, Lcom/android/server/wm/WindowFrames;->mCompatFrame:Landroid/graphics/Rect;

    .line 4501
    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v3

    .line 4500
    invoke-virtual {p1, v2, v2, v1, v3}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_67

    .line 4504
    :cond_64
    invoke-direct {p0, p1}, Lcom/android/server/wm/WindowState;->calculateSystemDecorRect(Landroid/graphics/Rect;)V

    .line 4506
    :goto_67
    return-void
.end method

.method public canAcquireSleepToken()Z
    .registers 2

    .line 848
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mSession:Lcom/android/server/wm/Session;

    iget-boolean v0, v0, Lcom/android/server/wm/Session;->mCanAcquireSleepToken:Z

    return v0
.end method

.method public canAddInternalSystemWindow()Z
    .registers 2

    .line 843
    iget-boolean v0, p0, Lcom/android/server/wm/WindowState;->mOwnerCanAddInternalSystemWindow:Z

    return v0
.end method

.method public canAffectSystemUiFlags()Z
    .registers 7

    .line 1617
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->isMzWindowModeOrDefer()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    .line 1618
    return v1

    .line 1621
    :cond_8
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->alpha:F

    const/4 v2, 0x0

    cmpl-float v0, v0, v2

    const/4 v2, 0x1

    if-nez v0, :cond_14

    move v0, v2

    goto :goto_15

    :cond_14
    move v0, v1

    .line 1622
    .local v0, "translucent":Z
    :goto_15
    if-eqz v0, :cond_18

    .line 1623
    return v1

    .line 1625
    :cond_18
    iget-object v3, p0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    if-nez v3, :cond_34

    .line 1626
    iget-object v3, p0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    invoke-virtual {v3}, Lcom/android/server/wm/WindowStateAnimator;->getShown()Z

    move-result v3

    .line 1627
    .local v3, "shown":Z
    iget-boolean v4, p0, Lcom/android/server/wm/WindowState;->mAnimatingExit:Z

    if-nez v4, :cond_2d

    iget-boolean v4, p0, Lcom/android/server/wm/WindowState;->mDestroying:Z

    if-eqz v4, :cond_2b

    goto :goto_2d

    :cond_2b
    move v4, v1

    goto :goto_2e

    :cond_2d
    :goto_2d
    move v4, v2

    .line 1628
    .local v4, "exiting":Z
    :goto_2e
    if-eqz v3, :cond_33

    if-nez v4, :cond_33

    move v1, v2

    :cond_33
    return v1

    .line 1630
    .end local v3  # "shown":Z
    .end local v4  # "exiting":Z
    :cond_34
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getTask()Lcom/android/server/wm/Task;

    move-result-object v3

    .line 1631
    .local v3, "task":Lcom/android/server/wm/Task;
    if-eqz v3, :cond_42

    invoke-virtual {v3}, Lcom/android/server/wm/Task;->canAffectSystemUiFlags()Z

    move-result v4

    if-eqz v4, :cond_42

    move v4, v2

    goto :goto_43

    :cond_42
    move v4, v1

    .line 1632
    .local v4, "canFromTask":Z
    :goto_43
    if-eqz v4, :cond_4e

    iget-object v5, p0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    invoke-virtual {v5}, Lcom/android/server/wm/AppWindowToken;->isHidden()Z

    move-result v5

    if-nez v5, :cond_4e

    move v1, v2

    :cond_4e
    return v1
.end method

.method canBeImeTarget()Z
    .registers 7

    .line 2126
    iget-boolean v0, p0, Lcom/android/server/wm/WindowState;->mIsImWindow:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_6

    .line 2129
    return v1

    .line 2132
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

    .line 2133
    .local v0, "windowsAreFocusable":Z
    :goto_14
    if-nez v0, :cond_17

    .line 2135
    return v1

    .line 2138
    :cond_17
    iget-object v2, p0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v2, v2, Landroid/view/WindowManager$LayoutParams;->flags:I

    const v3, 0x20008

    and-int/2addr v2, v3

    .line 2139
    .local v2, "fl":I
    iget-object v4, p0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v4, v4, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 2143
    .local v4, "type":I
    if-eqz v2, :cond_2b

    if-eq v2, v3, :cond_2b

    const/4 v3, 0x3

    if-eq v4, v3, :cond_2b

    .line 2145
    return v1

    .line 2148
    :cond_2b
    sget-boolean v1, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_INPUT_METHOD:Z

    if-eqz v1, :cond_d5

    .line 2149
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isVisibleOrAdding "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ": "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->isVisibleOrAdding()Z

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "WindowManager"

    invoke-static {v3, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2150
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->isVisibleOrAdding()Z

    move-result v1

    if-nez v1, :cond_d5

    .line 2151
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "  mSurfaceController="

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    iget-object v5, v5, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceController:Lcom/android/server/wm/WindowSurfaceController;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, " relayoutCalled="

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v5, p0, Lcom/android/server/wm/WindowState;->mRelayoutCalled:Z

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, " viewVis="

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p0, Lcom/android/server/wm/WindowState;->mViewVisibility:I

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " policyVis="

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2154
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->isVisibleByPolicy()Z

    move-result v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, " policyVisAfterAnim="

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v5, p0, Lcom/android/server/wm/WindowState;->mLegacyPolicyVisibilityAfterAnim:Z

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, " parentHidden="

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2156
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->isParentWindowHidden()Z

    move-result v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, " exiting="

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v5, p0, Lcom/android/server/wm/WindowState;->mAnimatingExit:Z

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, " destroying="

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v5, p0, Lcom/android/server/wm/WindowState;->mDestroying:Z

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2151
    invoke-static {v3, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2158
    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    if-eqz v1, :cond_d5

    .line 2159
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "  mAppToken.hiddenRequested="

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    iget-boolean v5, v5, Lcom/android/server/wm/AppWindowToken;->hiddenRequested:Z

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2163
    :cond_d5
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->isVisibleOrAdding()Z

    move-result v1

    return v1
.end method

.method public canReceiveKeys()Z
    .registers 2

    .line 2602
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

    .line 2605
    invoke-virtual {v0}, Lcom/android/server/wm/AppWindowToken;->windowsAreFocusable()Z

    move-result v0

    if-eqz v0, :cond_28

    .line 2606
    :cond_20
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->cantReceiveTouchInput()Z

    move-result v0

    if-nez v0, :cond_28

    const/4 v0, 0x1

    goto :goto_29

    :cond_28
    const/4 v0, 0x0

    .line 2602
    :goto_29
    return v0
.end method

.method public canShowWhenLocked()Z
    .registers 6

    .line 2611
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_10

    iget-object v0, v0, Lcom/android/server/wm/AppWindowToken;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    .line 2612
    invoke-virtual {v0}, Lcom/android/server/wm/ActivityRecord;->canShowWhenLocked()Z

    move-result v0

    if-eqz v0, :cond_10

    move v0, v1

    goto :goto_11

    :cond_10
    move v0, v2

    .line 2613
    .local v0, "showBecauseOfActivity":Z
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

    .line 2614
    .local v3, "showBecauseOfWindow":Z
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

    .line 2619
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    if-eqz v0, :cond_20

    invoke-virtual {v0}, Lcom/android/server/wm/AppWindowToken;->getTask()Lcom/android/server/wm/Task;

    move-result-object v0

    if-eqz v0, :cond_20

    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    .line 2620
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

    .line 2619
    :goto_21
    return v0
.end method

.method checkPolicyVisibilityChange()V
    .registers 5

    .line 2383
    invoke-direct {p0}, Lcom/android/server/wm/WindowState;->isLegacyPolicyVisibility()Z

    move-result v0

    iget-boolean v1, p0, Lcom/android/server/wm/WindowState;->mLegacyPolicyVisibilityAfterAnim:Z

    if-eq v0, v1, :cond_62

    .line 2384
    sget-boolean v0, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_VISIBILITY:Z

    const-string v1, "WindowManager"

    if-eqz v0, :cond_2e

    .line 2385
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Policy visibility changing after anim in "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ": "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/server/wm/WindowState;->mLegacyPolicyVisibilityAfterAnim:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2388
    :cond_2e
    iget-boolean v0, p0, Lcom/android/server/wm/WindowState;->mLegacyPolicyVisibilityAfterAnim:Z

    const/4 v2, 0x1

    if-eqz v0, :cond_37

    .line 2389
    invoke-virtual {p0, v2}, Lcom/android/server/wm/WindowState;->setPolicyVisibilityFlag(I)V

    goto :goto_3a

    .line 2391
    :cond_37
    invoke-virtual {p0, v2}, Lcom/android/server/wm/WindowState;->clearPolicyVisibilityFlag(I)V

    .line 2393
    :goto_3a
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->isVisibleByPolicy()Z

    move-result v0

    if-nez v0, :cond_62

    .line 2394
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    const-string v3, "checkPolicyVisibilityChange"

    invoke-virtual {v0, v3}, Lcom/android/server/wm/WindowStateAnimator;->hide(Ljava/lang/String;)V

    .line 2395
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->isFocused()Z

    move-result v0

    if-eqz v0, :cond_5a

    .line 2396
    sget-boolean v0, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_FOCUS_LIGHT:Z

    if-eqz v0, :cond_56

    const-string v0, "setAnimationLocked: setting mFocusMayChange true"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2398
    :cond_56
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iput-boolean v2, v0, Lcom/android/server/wm/WindowManagerService;->mFocusMayChange:Z

    .line 2400
    :cond_5a
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->setDisplayLayoutNeeded()V

    .line 2404
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mWmService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerService;->enableScreenIfNeededLocked()V

    .line 2407
    :cond_62
    return-void
.end method

.method clearAnimatingFlags()Z
    .registers 4

    .line 4334
    const/4 v0, 0x0

    .line 4342
    .local v0, "didSomething":Z
    iget-boolean v1, p0, Lcom/android/server/wm/WindowState;->mWillReplaceWindow:Z

    if-nez v1, :cond_1f

    iget-boolean v1, p0, Lcom/android/server/wm/WindowState;->mRemoveOnExit:Z

    if-nez v1, :cond_1f

    .line 4350
    iget-boolean v1, p0, Lcom/android/server/wm/WindowState;->mAnimatingExit:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_11

    .line 4351
    iput-boolean v2, p0, Lcom/android/server/wm/WindowState;->mAnimatingExit:Z

    .line 4352
    const/4 v0, 0x1

    .line 4354
    :cond_11
    iget-boolean v1, p0, Lcom/android/server/wm/WindowState;->mDestroying:Z

    if-eqz v1, :cond_1f

    .line 4355
    iput-boolean v2, p0, Lcom/android/server/wm/WindowState;->mDestroying:Z

    .line 4356
    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mDestroySurface:Ljava/util/ArrayList;

    invoke-virtual {v1, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 4357
    const/4 v0, 0x1

    .line 4361
    :cond_1f
    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .local v1, "i":I
    :goto_27
    if-ltz v1, :cond_39

    .line 4362
    iget-object v2, p0, Lcom/android/server/wm/WindowState;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v2, v1}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/WindowState;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowState;->clearAnimatingFlags()Z

    move-result v2

    or-int/2addr v0, v2

    .line 4361
    add-int/lit8 v1, v1, -0x1

    goto :goto_27

    .line 4365
    .end local v1  # "i":I
    :cond_39
    return v0
.end method

.method clearPolicyVisibilityFlag(I)V
    .registers 4
    .param p1, "policyVisibilityFlag"  # I

    .line 1493
    iget v0, p0, Lcom/android/server/wm/WindowState;->mPolicyVisibility:I

    not-int v1, p1

    and-int/2addr v0, v1

    iput v0, p0, Lcom/android/server/wm/WindowState;->mPolicyVisibility:I

    .line 1494
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mWmService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerService;->scheduleAnimationLocked()V

    .line 1495
    return-void
.end method

.method clearWillReplaceWindow()V
    .registers 3

    .line 3864
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/wm/WindowState;->mWillReplaceWindow:Z

    .line 3865
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/wm/WindowState;->mReplacementWindow:Lcom/android/server/wm/WindowState;

    .line 3866
    iput-boolean v0, p0, Lcom/android/server/wm/WindowState;->mAnimateReplacingWindow:Z

    .line 3868
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_10
    if-ltz v0, :cond_20

    .line 3869
    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v1, v0}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/WindowState;

    .line 3870
    .local v1, "c":Lcom/android/server/wm/WindowState;
    invoke-virtual {v1}, Lcom/android/server/wm/WindowState;->clearWillReplaceWindow()V

    .line 3868
    .end local v1  # "c":Lcom/android/server/wm/WindowState;
    add-int/lit8 v0, v0, -0x1

    goto :goto_10

    .line 3872
    .end local v0  # "i":I
    :cond_20
    return-void
.end method

.method public computeFrameLw()V
    .registers 23

    .line 880
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/android/server/wm/WindowState;->mWillReplaceWindow:Z

    if-eqz v1, :cond_f

    iget-boolean v1, v0, Lcom/android/server/wm/WindowState;->mAnimatingExit:Z

    if-nez v1, :cond_e

    iget-boolean v1, v0, Lcom/android/server/wm/WindowState;->mReplacingRemoveRequested:Z

    if-nez v1, :cond_f

    .line 885
    :cond_e
    return-void

    .line 887
    :cond_f
    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/android/server/wm/WindowState;->mHaveFrame:Z

    .line 889
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/WindowState;->getTask()Lcom/android/server/wm/Task;

    move-result-object v2

    .line 891
    .local v2, "task":Lcom/android/server/wm/Task;
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/WindowState;->inMultiWindowMode()Z

    move-result v3

    const/4 v4, 0x0

    if-nez v3, :cond_25

    invoke-direct/range {p0 .. p0}, Lcom/android/server/wm/WindowState;->matchesDisplayBounds()Z

    move-result v3

    if-eqz v3, :cond_25

    move v3, v1

    goto :goto_26

    :cond_25
    move v3, v4

    .line 892
    .local v3, "fillsDisplay":Z
    :goto_26
    if-nez v3, :cond_4d

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/WindowState;->isMzWindowMode()Z

    move-result v5

    if-eqz v5, :cond_4b

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/WindowState;->getStack()Lcom/android/server/wm/TaskStack;

    move-result-object v5

    if-eqz v5, :cond_4b

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/WindowState;->getBounds()Landroid/graphics/Rect;

    move-result-object v5

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/WindowState;->getStack()Lcom/android/server/wm/TaskStack;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/server/wm/TaskStack;->getWindowModeFrame()Lcom/android/server/wm/FlymeWindowModeFrame;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/server/wm/FlymeWindowModeFrame;->getDisplayFrame()Landroid/graphics/Rect;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4b

    goto :goto_4d

    :cond_4b
    move v5, v4

    goto :goto_4e

    :cond_4d
    :goto_4d
    move v5, v1

    :goto_4e
    move v3, v5

    .line 893
    nop

    .line 894
    .local v5, "isFullscreenAndFillsDisplay":Z
    if-eqz v2, :cond_60

    invoke-virtual {v2}, Lcom/android/server/wm/Task;->isFloating()Z

    move-result v6

    if-eqz v6, :cond_60

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/WindowState;->isMzWindowMode()Z

    move-result v6

    if-nez v6, :cond_60

    move v6, v1

    goto :goto_61

    :cond_60
    move v6, v4

    .line 896
    .local v6, "windowsAreFloating":Z
    :goto_61
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/WindowState;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v7

    .line 898
    .local v7, "dc":Lcom/android/server/wm/DisplayContent;
    iget-object v8, v0, Lcom/android/server/wm/WindowState;->mInsetFrame:Landroid/graphics/Rect;

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/WindowState;->getBounds()Landroid/graphics/Rect;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 910
    iget-object v8, v0, Lcom/android/server/wm/WindowState;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v8, v8, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v8}, Lcom/android/server/wm/RootWindowContainer;->getCurrentInputMethodWindow()Lcom/android/server/wm/WindowState;

    move-result-object v8

    .line 911
    .local v8, "imeWin":Lcom/android/server/wm/WindowState;
    if-eqz v8, :cond_86

    .line 912
    invoke-virtual {v8}, Lcom/android/server/wm/WindowState;->isVisibleNow()Z

    move-result v9

    if-eqz v9, :cond_86

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/WindowState;->isInputMethodTarget()Z

    move-result v9

    if-eqz v9, :cond_86

    move v9, v1

    goto :goto_87

    :cond_86
    move v9, v4

    .line 913
    .local v9, "isImeTarget":Z
    :goto_87
    if-nez v5, :cond_1d4

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/WindowState;->layoutInParentFrame()Z

    move-result v10

    if-eqz v10, :cond_93

    move-object/from16 v17, v2

    goto/16 :goto_1d6

    .line 921
    :cond_93
    iget-object v10, v0, Lcom/android/server/wm/WindowState;->mWindowFrames:Lcom/android/server/wm/WindowFrames;

    iget-object v10, v10, Lcom/android/server/wm/WindowFrames;->mContainingFrame:Landroid/graphics/Rect;

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/WindowState;->getDisplayedBounds()Landroid/graphics/Rect;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 922
    iget-object v10, v0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    if-eqz v10, :cond_d6

    iget-object v10, v10, Lcom/android/server/wm/AppWindowToken;->mFrozenBounds:Ljava/util/ArrayDeque;

    invoke-virtual {v10}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v10

    if-nez v10, :cond_d6

    .line 926
    iget-object v10, v0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    iget-object v10, v10, Lcom/android/server/wm/AppWindowToken;->mFrozenBounds:Ljava/util/ArrayDeque;

    invoke-virtual {v10}, Ljava/util/ArrayDeque;->peek()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/graphics/Rect;

    .line 927
    .local v10, "frozen":Landroid/graphics/Rect;
    iget-object v11, v0, Lcom/android/server/wm/WindowState;->mWindowFrames:Lcom/android/server/wm/WindowFrames;

    iget-object v11, v11, Lcom/android/server/wm/WindowFrames;->mContainingFrame:Landroid/graphics/Rect;

    iget-object v12, v0, Lcom/android/server/wm/WindowState;->mWindowFrames:Lcom/android/server/wm/WindowFrames;

    iget-object v12, v12, Lcom/android/server/wm/WindowFrames;->mContainingFrame:Landroid/graphics/Rect;

    iget v12, v12, Landroid/graphics/Rect;->left:I

    .line 928
    invoke-virtual {v10}, Landroid/graphics/Rect;->width()I

    move-result v13

    add-int/2addr v12, v13

    iput v12, v11, Landroid/graphics/Rect;->right:I

    .line 929
    iget-object v11, v0, Lcom/android/server/wm/WindowState;->mWindowFrames:Lcom/android/server/wm/WindowFrames;

    iget-object v11, v11, Lcom/android/server/wm/WindowFrames;->mContainingFrame:Landroid/graphics/Rect;

    iget-object v12, v0, Lcom/android/server/wm/WindowState;->mWindowFrames:Lcom/android/server/wm/WindowFrames;

    iget-object v12, v12, Lcom/android/server/wm/WindowFrames;->mContainingFrame:Landroid/graphics/Rect;

    iget v12, v12, Landroid/graphics/Rect;->top:I

    .line 930
    invoke-virtual {v10}, Landroid/graphics/Rect;->height()I

    move-result v13

    add-int/2addr v12, v13

    iput v12, v11, Landroid/graphics/Rect;->bottom:I

    .line 933
    .end local v10  # "frozen":Landroid/graphics/Rect;
    :cond_d6
    if-eqz v9, :cond_12d

    .line 934
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/WindowState;->inFreeformWindowingMode()Z

    move-result v10

    if-eqz v10, :cond_10c

    .line 937
    iget-object v10, v0, Lcom/android/server/wm/WindowState;->mWindowFrames:Lcom/android/server/wm/WindowFrames;

    iget-object v10, v10, Lcom/android/server/wm/WindowFrames;->mContainingFrame:Landroid/graphics/Rect;

    iget v10, v10, Landroid/graphics/Rect;->bottom:I

    iget-object v11, v0, Lcom/android/server/wm/WindowState;->mWindowFrames:Lcom/android/server/wm/WindowFrames;

    iget-object v11, v11, Lcom/android/server/wm/WindowFrames;->mVisibleFrame:Landroid/graphics/Rect;

    iget v11, v11, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v10, v11

    .line 939
    .local v10, "bottomOverlap":I
    if-lez v10, :cond_12d

    .line 940
    iget-object v11, v0, Lcom/android/server/wm/WindowState;->mWindowFrames:Lcom/android/server/wm/WindowFrames;

    iget-object v11, v11, Lcom/android/server/wm/WindowFrames;->mContainingFrame:Landroid/graphics/Rect;

    iget v11, v11, Landroid/graphics/Rect;->top:I

    iget-object v12, v0, Lcom/android/server/wm/WindowState;->mWindowFrames:Lcom/android/server/wm/WindowFrames;

    iget-object v12, v12, Lcom/android/server/wm/WindowFrames;->mDisplayFrame:Landroid/graphics/Rect;

    iget v12, v12, Landroid/graphics/Rect;->top:I

    sub-int/2addr v11, v12

    invoke-static {v11, v4}, Ljava/lang/Math;->max(II)I

    move-result v11

    .line 942
    .local v11, "distanceToTop":I
    invoke-static {v10, v11}, Ljava/lang/Math;->min(II)I

    move-result v12

    .line 943
    .local v12, "offs":I
    iget-object v13, v0, Lcom/android/server/wm/WindowState;->mWindowFrames:Lcom/android/server/wm/WindowFrames;

    iget-object v13, v13, Lcom/android/server/wm/WindowFrames;->mContainingFrame:Landroid/graphics/Rect;

    iget v14, v13, Landroid/graphics/Rect;->top:I

    sub-int/2addr v14, v12

    iput v14, v13, Landroid/graphics/Rect;->top:I

    goto :goto_12d

    .line 945
    .end local v10  # "bottomOverlap":I
    .end local v11  # "distanceToTop":I
    .end local v12  # "offs":I
    :cond_10c
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/WindowState;->inPinnedWindowingMode()Z

    move-result v10

    if-nez v10, :cond_12d

    iget-object v10, v0, Lcom/android/server/wm/WindowState;->mWindowFrames:Lcom/android/server/wm/WindowFrames;

    iget-object v10, v10, Lcom/android/server/wm/WindowFrames;->mContainingFrame:Landroid/graphics/Rect;

    iget v10, v10, Landroid/graphics/Rect;->bottom:I

    iget-object v11, v0, Lcom/android/server/wm/WindowState;->mWindowFrames:Lcom/android/server/wm/WindowFrames;

    iget-object v11, v11, Lcom/android/server/wm/WindowFrames;->mParentFrame:Landroid/graphics/Rect;

    iget v11, v11, Landroid/graphics/Rect;->bottom:I

    if-le v10, v11, :cond_12d

    .line 950
    iget-object v10, v0, Lcom/android/server/wm/WindowState;->mWindowFrames:Lcom/android/server/wm/WindowFrames;

    iget-object v10, v10, Lcom/android/server/wm/WindowFrames;->mContainingFrame:Landroid/graphics/Rect;

    iget-object v11, v0, Lcom/android/server/wm/WindowState;->mWindowFrames:Lcom/android/server/wm/WindowFrames;

    iget-object v11, v11, Lcom/android/server/wm/WindowFrames;->mParentFrame:Landroid/graphics/Rect;

    iget v11, v11, Landroid/graphics/Rect;->bottom:I

    iput v11, v10, Landroid/graphics/Rect;->bottom:I

    nop

    .line 954
    :cond_12d
    :goto_12d
    if-eqz v6, :cond_144

    .line 958
    iget-object v10, v0, Lcom/android/server/wm/WindowState;->mWindowFrames:Lcom/android/server/wm/WindowFrames;

    iget-object v10, v10, Lcom/android/server/wm/WindowFrames;->mContainingFrame:Landroid/graphics/Rect;

    invoke-virtual {v10}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v10

    if-eqz v10, :cond_144

    .line 959
    iget-object v10, v0, Lcom/android/server/wm/WindowState;->mWindowFrames:Lcom/android/server/wm/WindowFrames;

    iget-object v10, v10, Lcom/android/server/wm/WindowFrames;->mContainingFrame:Landroid/graphics/Rect;

    iget-object v11, v0, Lcom/android/server/wm/WindowState;->mWindowFrames:Lcom/android/server/wm/WindowFrames;

    iget-object v11, v11, Lcom/android/server/wm/WindowFrames;->mContentFrame:Landroid/graphics/Rect;

    invoke-virtual {v10, v11}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 963
    :cond_144
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/WindowState;->getStack()Lcom/android/server/wm/TaskStack;

    move-result-object v10

    .line 964
    .local v10, "stack":Lcom/android/server/wm/TaskStack;
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/WindowState;->inPinnedWindowingMode()Z

    move-result v11

    if-eqz v11, :cond_16a

    if-eqz v10, :cond_16a

    .line 965
    invoke-virtual {v10}, Lcom/android/server/wm/TaskStack;->lastAnimatingBoundsWasToFullscreen()Z

    move-result v11

    if-eqz v11, :cond_16a

    .line 969
    iget-object v11, v0, Lcom/android/server/wm/WindowState;->mInsetFrame:Landroid/graphics/Rect;

    iget-object v12, v0, Lcom/android/server/wm/WindowState;->mWindowFrames:Lcom/android/server/wm/WindowFrames;

    iget-object v12, v12, Lcom/android/server/wm/WindowFrames;->mParentFrame:Landroid/graphics/Rect;

    invoke-virtual {v11, v12}, Landroid/graphics/Rect;->intersectUnchecked(Landroid/graphics/Rect;)V

    .line 970
    iget-object v11, v0, Lcom/android/server/wm/WindowState;->mWindowFrames:Lcom/android/server/wm/WindowFrames;

    iget-object v11, v11, Lcom/android/server/wm/WindowFrames;->mContainingFrame:Landroid/graphics/Rect;

    iget-object v12, v0, Lcom/android/server/wm/WindowState;->mWindowFrames:Lcom/android/server/wm/WindowFrames;

    iget-object v12, v12, Lcom/android/server/wm/WindowFrames;->mParentFrame:Landroid/graphics/Rect;

    invoke-virtual {v11, v12}, Landroid/graphics/Rect;->intersectUnchecked(Landroid/graphics/Rect;)V

    .line 973
    :cond_16a
    new-instance v11, Landroid/graphics/Rect;

    iget-object v12, v0, Lcom/android/server/wm/WindowState;->mWindowFrames:Lcom/android/server/wm/WindowFrames;

    iget-object v12, v12, Lcom/android/server/wm/WindowFrames;->mDisplayFrame:Landroid/graphics/Rect;

    invoke-direct {v11, v12}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 974
    .local v11, "layoutDisplayFrame":Landroid/graphics/Rect;
    iget-object v12, v0, Lcom/android/server/wm/WindowState;->mWindowFrames:Lcom/android/server/wm/WindowFrames;

    iget-object v12, v12, Lcom/android/server/wm/WindowFrames;->mDisplayFrame:Landroid/graphics/Rect;

    iget-object v13, v0, Lcom/android/server/wm/WindowState;->mWindowFrames:Lcom/android/server/wm/WindowFrames;

    iget-object v13, v13, Lcom/android/server/wm/WindowFrames;->mContainingFrame:Landroid/graphics/Rect;

    invoke-virtual {v12, v13}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 975
    iget-object v12, v0, Lcom/android/server/wm/WindowState;->mInsetFrame:Landroid/graphics/Rect;

    iget v12, v12, Landroid/graphics/Rect;->left:I

    iget-object v13, v0, Lcom/android/server/wm/WindowState;->mWindowFrames:Lcom/android/server/wm/WindowFrames;

    iget-object v13, v13, Lcom/android/server/wm/WindowFrames;->mContainingFrame:Landroid/graphics/Rect;

    iget v13, v13, Landroid/graphics/Rect;->left:I

    sub-int/2addr v12, v13

    .line 976
    .local v12, "layoutXDiff":I
    iget-object v13, v0, Lcom/android/server/wm/WindowState;->mInsetFrame:Landroid/graphics/Rect;

    iget v13, v13, Landroid/graphics/Rect;->top:I

    iget-object v14, v0, Lcom/android/server/wm/WindowState;->mWindowFrames:Lcom/android/server/wm/WindowFrames;

    iget-object v14, v14, Lcom/android/server/wm/WindowFrames;->mContainingFrame:Landroid/graphics/Rect;

    iget v14, v14, Landroid/graphics/Rect;->top:I

    sub-int/2addr v13, v14

    .line 977
    .local v13, "layoutYDiff":I
    iget-object v14, v0, Lcom/android/server/wm/WindowState;->mInsetFrame:Landroid/graphics/Rect;

    .line 978
    .local v14, "layoutContainingFrame":Landroid/graphics/Rect;
    iget-object v15, v0, Lcom/android/server/wm/WindowState;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v7}, Lcom/android/server/wm/DisplayContent;->getDisplayInfo()Landroid/view/DisplayInfo;

    move-result-object v1

    iget v1, v1, Landroid/view/DisplayInfo;->logicalWidth:I

    move-object/from16 v17, v2

    .end local v2  # "task":Lcom/android/server/wm/Task;
    .local v17, "task":Lcom/android/server/wm/Task;
    invoke-virtual {v7}, Lcom/android/server/wm/DisplayContent;->getDisplayInfo()Landroid/view/DisplayInfo;

    move-result-object v2

    iget v2, v2, Landroid/view/DisplayInfo;->logicalHeight:I

    invoke-virtual {v15, v4, v4, v1, v2}, Landroid/graphics/Rect;->set(IIII)V

    .line 979
    iget-object v1, v0, Lcom/android/server/wm/WindowState;->mWindowFrames:Lcom/android/server/wm/WindowFrames;

    iget-object v1, v1, Lcom/android/server/wm/WindowFrames;->mDisplayFrame:Landroid/graphics/Rect;

    iget-object v2, v0, Lcom/android/server/wm/WindowState;->mTmpRect:Landroid/graphics/Rect;

    invoke-direct {v0, v1, v14, v11, v2}, Lcom/android/server/wm/WindowState;->subtractInsets(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 981
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/WindowState;->layoutInParentFrame()Z

    move-result v1

    if-nez v1, :cond_1d0

    .line 982
    iget-object v1, v0, Lcom/android/server/wm/WindowState;->mWindowFrames:Lcom/android/server/wm/WindowFrames;

    iget-object v1, v1, Lcom/android/server/wm/WindowFrames;->mContainingFrame:Landroid/graphics/Rect;

    iget-object v2, v0, Lcom/android/server/wm/WindowState;->mWindowFrames:Lcom/android/server/wm/WindowFrames;

    iget-object v2, v2, Lcom/android/server/wm/WindowFrames;->mParentFrame:Landroid/graphics/Rect;

    iget-object v15, v0, Lcom/android/server/wm/WindowState;->mTmpRect:Landroid/graphics/Rect;

    invoke-direct {v0, v1, v14, v2, v15}, Lcom/android/server/wm/WindowState;->subtractInsets(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 984
    iget-object v1, v0, Lcom/android/server/wm/WindowState;->mInsetFrame:Landroid/graphics/Rect;

    iget-object v2, v0, Lcom/android/server/wm/WindowState;->mWindowFrames:Lcom/android/server/wm/WindowFrames;

    iget-object v2, v2, Lcom/android/server/wm/WindowFrames;->mParentFrame:Landroid/graphics/Rect;

    iget-object v15, v0, Lcom/android/server/wm/WindowState;->mTmpRect:Landroid/graphics/Rect;

    invoke-direct {v0, v1, v14, v2, v15}, Lcom/android/server/wm/WindowState;->subtractInsets(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 987
    :cond_1d0
    invoke-virtual {v11, v14}, Landroid/graphics/Rect;->intersect(Landroid/graphics/Rect;)Z

    goto :goto_1eb

    .line 913
    .end local v10  # "stack":Lcom/android/server/wm/TaskStack;
    .end local v11  # "layoutDisplayFrame":Landroid/graphics/Rect;
    .end local v12  # "layoutXDiff":I
    .end local v13  # "layoutYDiff":I
    .end local v14  # "layoutContainingFrame":Landroid/graphics/Rect;
    .end local v17  # "task":Lcom/android/server/wm/Task;
    .restart local v2  # "task":Lcom/android/server/wm/Task;
    :cond_1d4
    move-object/from16 v17, v2

    .line 915
    .end local v2  # "task":Lcom/android/server/wm/Task;
    .restart local v17  # "task":Lcom/android/server/wm/Task;
    :goto_1d6
    iget-object v1, v0, Lcom/android/server/wm/WindowState;->mWindowFrames:Lcom/android/server/wm/WindowFrames;

    iget-object v1, v1, Lcom/android/server/wm/WindowFrames;->mContainingFrame:Landroid/graphics/Rect;

    iget-object v2, v0, Lcom/android/server/wm/WindowState;->mWindowFrames:Lcom/android/server/wm/WindowFrames;

    iget-object v2, v2, Lcom/android/server/wm/WindowFrames;->mParentFrame:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 916
    iget-object v1, v0, Lcom/android/server/wm/WindowState;->mWindowFrames:Lcom/android/server/wm/WindowFrames;

    iget-object v11, v1, Lcom/android/server/wm/WindowFrames;->mDisplayFrame:Landroid/graphics/Rect;

    .line 917
    .restart local v11  # "layoutDisplayFrame":Landroid/graphics/Rect;
    iget-object v1, v0, Lcom/android/server/wm/WindowState;->mWindowFrames:Lcom/android/server/wm/WindowFrames;

    iget-object v14, v1, Lcom/android/server/wm/WindowFrames;->mParentFrame:Landroid/graphics/Rect;

    .line 918
    .restart local v14  # "layoutContainingFrame":Landroid/graphics/Rect;
    const/4 v12, 0x0

    .line 919
    .restart local v12  # "layoutXDiff":I
    const/4 v13, 0x0

    .line 990
    .restart local v13  # "layoutYDiff":I
    :goto_1eb
    iget-object v1, v0, Lcom/android/server/wm/WindowState;->mWindowFrames:Lcom/android/server/wm/WindowFrames;

    iget-object v1, v1, Lcom/android/server/wm/WindowFrames;->mContainingFrame:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    .line 991
    .local v1, "pw":I
    iget-object v2, v0, Lcom/android/server/wm/WindowState;->mWindowFrames:Lcom/android/server/wm/WindowFrames;

    iget-object v2, v2, Lcom/android/server/wm/WindowFrames;->mContainingFrame:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    .line 993
    .local v2, "ph":I
    iget v10, v0, Lcom/android/server/wm/WindowState;->mRequestedWidth:I

    iget v15, v0, Lcom/android/server/wm/WindowState;->mLastRequestedWidth:I

    if-ne v10, v15, :cond_207

    iget v10, v0, Lcom/android/server/wm/WindowState;->mRequestedHeight:I

    iget v15, v0, Lcom/android/server/wm/WindowState;->mLastRequestedHeight:I

    if-eq v10, v15, :cond_215

    .line 994
    :cond_207
    iget v10, v0, Lcom/android/server/wm/WindowState;->mRequestedWidth:I

    iput v10, v0, Lcom/android/server/wm/WindowState;->mLastRequestedWidth:I

    .line 995
    iget v10, v0, Lcom/android/server/wm/WindowState;->mRequestedHeight:I

    iput v10, v0, Lcom/android/server/wm/WindowState;->mLastRequestedHeight:I

    .line 996
    iget-object v10, v0, Lcom/android/server/wm/WindowState;->mWindowFrames:Lcom/android/server/wm/WindowFrames;

    const/4 v15, 0x1

    invoke-virtual {v10, v15}, Lcom/android/server/wm/WindowFrames;->setContentChanged(Z)V

    .line 999
    :cond_215
    iget-object v10, v0, Lcom/android/server/wm/WindowState;->mWindowFrames:Lcom/android/server/wm/WindowFrames;

    iget-object v10, v10, Lcom/android/server/wm/WindowFrames;->mFrame:Landroid/graphics/Rect;

    invoke-virtual {v10}, Landroid/graphics/Rect;->width()I

    move-result v10

    .line 1000
    .local v10, "fw":I
    iget-object v15, v0, Lcom/android/server/wm/WindowState;->mWindowFrames:Lcom/android/server/wm/WindowFrames;

    iget-object v15, v15, Lcom/android/server/wm/WindowFrames;->mFrame:Landroid/graphics/Rect;

    invoke-virtual {v15}, Landroid/graphics/Rect;->height()I

    move-result v15

    .line 1002
    .local v15, "fh":I
    invoke-direct {v0, v14, v11}, Lcom/android/server/wm/WindowState;->applyGravityAndUpdateFrame(Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 1005
    iget-object v4, v0, Lcom/android/server/wm/WindowState;->mWindowFrames:Lcom/android/server/wm/WindowFrames;

    invoke-virtual {v4}, Lcom/android/server/wm/WindowFrames;->calculateOutsets()V

    .line 1009
    if-eqz v6, :cond_29e

    iget-object v4, v0, Lcom/android/server/wm/WindowState;->mWindowFrames:Lcom/android/server/wm/WindowFrames;

    iget-object v4, v4, Lcom/android/server/wm/WindowFrames;->mFrame:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_29e

    .line 1010
    iget-object v4, v0, Lcom/android/server/wm/WindowState;->mWindowFrames:Lcom/android/server/wm/WindowFrames;

    iget-object v4, v4, Lcom/android/server/wm/WindowFrames;->mVisibleFrame:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    .line 1011
    .local v4, "visBottom":I
    move/from16 v18, v3

    .end local v3  # "fillsDisplay":Z
    .local v18, "fillsDisplay":Z
    iget-object v3, v0, Lcom/android/server/wm/WindowState;->mWindowFrames:Lcom/android/server/wm/WindowFrames;

    iget-object v3, v3, Lcom/android/server/wm/WindowFrames;->mContentFrame:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    .line 1012
    .local v3, "contentBottom":I
    move-object/from16 v19, v8

    .end local v8  # "imeWin":Lcom/android/server/wm/WindowState;
    .local v19, "imeWin":Lcom/android/server/wm/WindowState;
    iget-object v8, v0, Lcom/android/server/wm/WindowState;->mWindowFrames:Lcom/android/server/wm/WindowFrames;

    iget-object v8, v8, Lcom/android/server/wm/WindowFrames;->mContentFrame:Landroid/graphics/Rect;

    move-object/from16 v20, v11

    .end local v11  # "layoutDisplayFrame":Landroid/graphics/Rect;
    .local v20, "layoutDisplayFrame":Landroid/graphics/Rect;
    iget-object v11, v0, Lcom/android/server/wm/WindowState;->mWindowFrames:Lcom/android/server/wm/WindowFrames;

    iget-object v11, v11, Lcom/android/server/wm/WindowFrames;->mFrame:Landroid/graphics/Rect;

    invoke-virtual {v8, v11}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 1013
    iget-object v8, v0, Lcom/android/server/wm/WindowState;->mWindowFrames:Lcom/android/server/wm/WindowFrames;

    iget-object v8, v8, Lcom/android/server/wm/WindowFrames;->mVisibleFrame:Landroid/graphics/Rect;

    iget-object v11, v0, Lcom/android/server/wm/WindowState;->mWindowFrames:Lcom/android/server/wm/WindowFrames;

    iget-object v11, v11, Lcom/android/server/wm/WindowFrames;->mContentFrame:Landroid/graphics/Rect;

    invoke-virtual {v8, v11}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 1014
    iget-object v8, v0, Lcom/android/server/wm/WindowState;->mWindowFrames:Lcom/android/server/wm/WindowFrames;

    iget-object v8, v8, Lcom/android/server/wm/WindowFrames;->mStableFrame:Landroid/graphics/Rect;

    iget-object v11, v0, Lcom/android/server/wm/WindowState;->mWindowFrames:Lcom/android/server/wm/WindowFrames;

    iget-object v11, v11, Lcom/android/server/wm/WindowFrames;->mContentFrame:Landroid/graphics/Rect;

    invoke-virtual {v8, v11}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 1015
    if-eqz v9, :cond_298

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/WindowState;->inFreeformWindowingMode()Z

    move-result v8

    if-eqz v8, :cond_298

    .line 1018
    add-int v8, v3, v13

    iget-object v11, v0, Lcom/android/server/wm/WindowState;->mWindowFrames:Lcom/android/server/wm/WindowFrames;

    iget-object v11, v11, Lcom/android/server/wm/WindowFrames;->mContentFrame:Landroid/graphics/Rect;

    iget v11, v11, Landroid/graphics/Rect;->bottom:I

    if-ge v8, v11, :cond_286

    .line 1019
    iget-object v8, v0, Lcom/android/server/wm/WindowState;->mWindowFrames:Lcom/android/server/wm/WindowFrames;

    iget-object v8, v8, Lcom/android/server/wm/WindowFrames;->mContentFrame:Landroid/graphics/Rect;

    add-int v11, v3, v13

    iput v11, v8, Landroid/graphics/Rect;->bottom:I

    .line 1021
    :cond_286
    add-int v8, v4, v13

    iget-object v11, v0, Lcom/android/server/wm/WindowState;->mWindowFrames:Lcom/android/server/wm/WindowFrames;

    iget-object v11, v11, Lcom/android/server/wm/WindowFrames;->mVisibleFrame:Landroid/graphics/Rect;

    iget v11, v11, Landroid/graphics/Rect;->bottom:I

    if-ge v8, v11, :cond_298

    .line 1022
    iget-object v8, v0, Lcom/android/server/wm/WindowState;->mWindowFrames:Lcom/android/server/wm/WindowFrames;

    iget-object v8, v8, Lcom/android/server/wm/WindowFrames;->mVisibleFrame:Landroid/graphics/Rect;

    add-int v11, v4, v13

    iput v11, v8, Landroid/graphics/Rect;->bottom:I

    .line 1025
    .end local v3  # "contentBottom":I
    .end local v4  # "visBottom":I
    :cond_298
    move/from16 v21, v2

    move-object/from16 v16, v7

    goto/16 :goto_3b8

    .line 1009
    .end local v18  # "fillsDisplay":Z
    .end local v19  # "imeWin":Lcom/android/server/wm/WindowState;
    .end local v20  # "layoutDisplayFrame":Landroid/graphics/Rect;
    .local v3, "fillsDisplay":Z
    .restart local v8  # "imeWin":Lcom/android/server/wm/WindowState;
    .restart local v11  # "layoutDisplayFrame":Landroid/graphics/Rect;
    :cond_29e
    move/from16 v18, v3

    move-object/from16 v19, v8

    move-object/from16 v20, v11

    .line 1025
    .end local v3  # "fillsDisplay":Z
    .end local v8  # "imeWin":Lcom/android/server/wm/WindowState;
    .end local v11  # "layoutDisplayFrame":Landroid/graphics/Rect;
    .restart local v18  # "fillsDisplay":Z
    .restart local v19  # "imeWin":Lcom/android/server/wm/WindowState;
    .restart local v20  # "layoutDisplayFrame":Landroid/graphics/Rect;
    iget-object v3, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v3, v3, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v4, 0x7f2

    if-ne v3, v4, :cond_2df

    .line 1026
    invoke-virtual {v7}, Lcom/android/server/wm/DisplayContent;->getDockedDividerController()Lcom/android/server/wm/DockedStackDividerController;

    move-result-object v3

    iget-object v4, v0, Lcom/android/server/wm/WindowState;->mWindowFrames:Lcom/android/server/wm/WindowFrames;

    iget-object v4, v4, Lcom/android/server/wm/WindowFrames;->mFrame:Landroid/graphics/Rect;

    invoke-virtual {v3, v4}, Lcom/android/server/wm/DockedStackDividerController;->positionDockedStackedDivider(Landroid/graphics/Rect;)V

    .line 1027
    iget-object v3, v0, Lcom/android/server/wm/WindowState;->mWindowFrames:Lcom/android/server/wm/WindowFrames;

    iget-object v3, v3, Lcom/android/server/wm/WindowFrames;->mContentFrame:Landroid/graphics/Rect;

    iget-object v4, v0, Lcom/android/server/wm/WindowState;->mWindowFrames:Lcom/android/server/wm/WindowFrames;

    iget-object v4, v4, Lcom/android/server/wm/WindowFrames;->mFrame:Landroid/graphics/Rect;

    invoke-virtual {v3, v4}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 1028
    iget-object v3, v0, Lcom/android/server/wm/WindowState;->mWindowFrames:Lcom/android/server/wm/WindowFrames;

    iget-object v3, v3, Lcom/android/server/wm/WindowFrames;->mFrame:Landroid/graphics/Rect;

    iget-object v4, v0, Lcom/android/server/wm/WindowState;->mWindowFrames:Lcom/android/server/wm/WindowFrames;

    iget-object v4, v4, Lcom/android/server/wm/WindowFrames;->mLastFrame:Landroid/graphics/Rect;

    invoke-virtual {v3, v4}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2d9

    .line 1029
    const/4 v3, 0x1

    iput-boolean v3, v0, Lcom/android/server/wm/WindowState;->mMovedByResize:Z

    move/from16 v21, v2

    move-object/from16 v16, v7

    goto/16 :goto_3b8

    .line 1028
    :cond_2d9
    move/from16 v21, v2

    move-object/from16 v16, v7

    goto/16 :goto_3b8

    .line 1032
    :cond_2df
    iget-object v3, v0, Lcom/android/server/wm/WindowState;->mWindowFrames:Lcom/android/server/wm/WindowFrames;

    iget-object v3, v3, Lcom/android/server/wm/WindowFrames;->mContentFrame:Landroid/graphics/Rect;

    iget-object v4, v0, Lcom/android/server/wm/WindowState;->mWindowFrames:Lcom/android/server/wm/WindowFrames;

    iget-object v4, v4, Lcom/android/server/wm/WindowFrames;->mContentFrame:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->left:I

    iget-object v8, v0, Lcom/android/server/wm/WindowState;->mWindowFrames:Lcom/android/server/wm/WindowFrames;

    iget-object v8, v8, Lcom/android/server/wm/WindowFrames;->mFrame:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->left:I

    .line 1033
    invoke-static {v4, v8}, Ljava/lang/Math;->max(II)I

    move-result v4

    iget-object v8, v0, Lcom/android/server/wm/WindowState;->mWindowFrames:Lcom/android/server/wm/WindowFrames;

    iget-object v8, v8, Lcom/android/server/wm/WindowFrames;->mContentFrame:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->top:I

    iget-object v11, v0, Lcom/android/server/wm/WindowState;->mWindowFrames:Lcom/android/server/wm/WindowFrames;

    iget-object v11, v11, Lcom/android/server/wm/WindowFrames;->mFrame:Landroid/graphics/Rect;

    iget v11, v11, Landroid/graphics/Rect;->top:I

    .line 1034
    invoke-static {v8, v11}, Ljava/lang/Math;->max(II)I

    move-result v8

    iget-object v11, v0, Lcom/android/server/wm/WindowState;->mWindowFrames:Lcom/android/server/wm/WindowFrames;

    iget-object v11, v11, Lcom/android/server/wm/WindowFrames;->mContentFrame:Landroid/graphics/Rect;

    iget v11, v11, Landroid/graphics/Rect;->right:I

    move-object/from16 v16, v7

    .end local v7  # "dc":Lcom/android/server/wm/DisplayContent;
    .local v16, "dc":Lcom/android/server/wm/DisplayContent;
    iget-object v7, v0, Lcom/android/server/wm/WindowState;->mWindowFrames:Lcom/android/server/wm/WindowFrames;

    iget-object v7, v7, Lcom/android/server/wm/WindowFrames;->mFrame:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->right:I

    .line 1035
    invoke-static {v11, v7}, Ljava/lang/Math;->min(II)I

    move-result v7

    iget-object v11, v0, Lcom/android/server/wm/WindowState;->mWindowFrames:Lcom/android/server/wm/WindowFrames;

    iget-object v11, v11, Lcom/android/server/wm/WindowFrames;->mContentFrame:Landroid/graphics/Rect;

    iget v11, v11, Landroid/graphics/Rect;->bottom:I

    move/from16 v21, v2

    .end local v2  # "ph":I
    .local v21, "ph":I
    iget-object v2, v0, Lcom/android/server/wm/WindowState;->mWindowFrames:Lcom/android/server/wm/WindowFrames;

    iget-object v2, v2, Lcom/android/server/wm/WindowFrames;->mFrame:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    .line 1036
    invoke-static {v11, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 1032
    invoke-virtual {v3, v4, v8, v7, v2}, Landroid/graphics/Rect;->set(IIII)V

    .line 1038
    iget-object v2, v0, Lcom/android/server/wm/WindowState;->mWindowFrames:Lcom/android/server/wm/WindowFrames;

    iget-object v2, v2, Lcom/android/server/wm/WindowFrames;->mVisibleFrame:Landroid/graphics/Rect;

    iget-object v3, v0, Lcom/android/server/wm/WindowState;->mWindowFrames:Lcom/android/server/wm/WindowFrames;

    iget-object v3, v3, Lcom/android/server/wm/WindowFrames;->mVisibleFrame:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    iget-object v4, v0, Lcom/android/server/wm/WindowState;->mWindowFrames:Lcom/android/server/wm/WindowFrames;

    iget-object v4, v4, Lcom/android/server/wm/WindowFrames;->mFrame:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->left:I

    .line 1039
    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    iget-object v4, v0, Lcom/android/server/wm/WindowState;->mWindowFrames:Lcom/android/server/wm/WindowFrames;

    iget-object v4, v4, Lcom/android/server/wm/WindowFrames;->mVisibleFrame:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    iget-object v7, v0, Lcom/android/server/wm/WindowState;->mWindowFrames:Lcom/android/server/wm/WindowFrames;

    iget-object v7, v7, Lcom/android/server/wm/WindowFrames;->mFrame:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->top:I

    .line 1040
    invoke-static {v4, v7}, Ljava/lang/Math;->max(II)I

    move-result v4

    iget-object v7, v0, Lcom/android/server/wm/WindowState;->mWindowFrames:Lcom/android/server/wm/WindowFrames;

    iget-object v7, v7, Lcom/android/server/wm/WindowFrames;->mVisibleFrame:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->right:I

    iget-object v8, v0, Lcom/android/server/wm/WindowState;->mWindowFrames:Lcom/android/server/wm/WindowFrames;

    iget-object v8, v8, Lcom/android/server/wm/WindowFrames;->mFrame:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->right:I

    .line 1041
    invoke-static {v7, v8}, Ljava/lang/Math;->min(II)I

    move-result v7

    iget-object v8, v0, Lcom/android/server/wm/WindowState;->mWindowFrames:Lcom/android/server/wm/WindowFrames;

    iget-object v8, v8, Lcom/android/server/wm/WindowFrames;->mVisibleFrame:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->bottom:I

    iget-object v11, v0, Lcom/android/server/wm/WindowState;->mWindowFrames:Lcom/android/server/wm/WindowFrames;

    iget-object v11, v11, Lcom/android/server/wm/WindowFrames;->mFrame:Landroid/graphics/Rect;

    iget v11, v11, Landroid/graphics/Rect;->bottom:I

    .line 1042
    invoke-static {v8, v11}, Ljava/lang/Math;->min(II)I

    move-result v8

    .line 1038
    invoke-virtual {v2, v3, v4, v7, v8}, Landroid/graphics/Rect;->set(IIII)V

    .line 1044
    iget-object v2, v0, Lcom/android/server/wm/WindowState;->mWindowFrames:Lcom/android/server/wm/WindowFrames;

    iget-object v2, v2, Lcom/android/server/wm/WindowFrames;->mStableFrame:Landroid/graphics/Rect;

    iget-object v3, v0, Lcom/android/server/wm/WindowState;->mWindowFrames:Lcom/android/server/wm/WindowFrames;

    iget-object v3, v3, Lcom/android/server/wm/WindowFrames;->mStableFrame:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    iget-object v4, v0, Lcom/android/server/wm/WindowState;->mWindowFrames:Lcom/android/server/wm/WindowFrames;

    iget-object v4, v4, Lcom/android/server/wm/WindowFrames;->mFrame:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->left:I

    .line 1045
    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    iget-object v4, v0, Lcom/android/server/wm/WindowState;->mWindowFrames:Lcom/android/server/wm/WindowFrames;

    iget-object v4, v4, Lcom/android/server/wm/WindowFrames;->mStableFrame:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    iget-object v7, v0, Lcom/android/server/wm/WindowState;->mWindowFrames:Lcom/android/server/wm/WindowFrames;

    iget-object v7, v7, Lcom/android/server/wm/WindowFrames;->mFrame:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->top:I

    .line 1046
    invoke-static {v4, v7}, Ljava/lang/Math;->max(II)I

    move-result v4

    iget-object v7, v0, Lcom/android/server/wm/WindowState;->mWindowFrames:Lcom/android/server/wm/WindowFrames;

    iget-object v7, v7, Lcom/android/server/wm/WindowFrames;->mStableFrame:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->right:I

    iget-object v8, v0, Lcom/android/server/wm/WindowState;->mWindowFrames:Lcom/android/server/wm/WindowFrames;

    iget-object v8, v8, Lcom/android/server/wm/WindowFrames;->mFrame:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->right:I

    .line 1047
    invoke-static {v7, v8}, Ljava/lang/Math;->min(II)I

    move-result v7

    iget-object v8, v0, Lcom/android/server/wm/WindowState;->mWindowFrames:Lcom/android/server/wm/WindowFrames;

    iget-object v8, v8, Lcom/android/server/wm/WindowFrames;->mStableFrame:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->bottom:I

    iget-object v11, v0, Lcom/android/server/wm/WindowState;->mWindowFrames:Lcom/android/server/wm/WindowFrames;

    iget-object v11, v11, Lcom/android/server/wm/WindowFrames;->mFrame:Landroid/graphics/Rect;

    iget v11, v11, Landroid/graphics/Rect;->bottom:I

    .line 1048
    invoke-static {v8, v11}, Ljava/lang/Math;->min(II)I

    move-result v8

    .line 1044
    invoke-virtual {v2, v3, v4, v7, v8}, Landroid/graphics/Rect;->set(IIII)V

    .line 1051
    :goto_3b8
    iget-object v2, v0, Lcom/android/server/wm/WindowState;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mWmsExtInternal:Lcom/android/server/wm/FlymeWindowManagerInternal;

    invoke-virtual {v2, v0, v9}, Lcom/android/server/wm/FlymeWindowManagerInternal;->computeWindowStatePosition(Lcom/android/server/wm/WindowState;Z)I

    .line 1053
    if-eqz v5, :cond_3ce

    if-nez v6, :cond_3ce

    .line 1056
    iget-object v2, v0, Lcom/android/server/wm/WindowState;->mWindowFrames:Lcom/android/server/wm/WindowFrames;

    iget-object v2, v2, Lcom/android/server/wm/WindowFrames;->mOverscanFrame:Landroid/graphics/Rect;

    iget-object v3, v0, Lcom/android/server/wm/WindowState;->mWindowFrames:Lcom/android/server/wm/WindowFrames;

    iget-object v3, v3, Lcom/android/server/wm/WindowFrames;->mOverscanInsets:Landroid/graphics/Rect;

    invoke-static {v14, v2, v3}, Lcom/android/server/wm/utils/InsetUtils;->insetsBetweenFrames(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 1060
    :cond_3ce
    iget-object v2, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v2, v2, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v3, 0x7f2

    if-ne v2, v3, :cond_3f0

    .line 1061
    iget-object v2, v0, Lcom/android/server/wm/WindowState;->mWindowFrames:Lcom/android/server/wm/WindowFrames;

    iget-object v2, v2, Lcom/android/server/wm/WindowFrames;->mDisplayCutout:Lcom/android/server/wm/utils/WmDisplayCutout;

    iget-object v3, v0, Lcom/android/server/wm/WindowState;->mWindowFrames:Lcom/android/server/wm/WindowFrames;

    iget-object v3, v3, Lcom/android/server/wm/WindowFrames;->mDisplayFrame:Landroid/graphics/Rect;

    invoke-virtual {v2, v3}, Lcom/android/server/wm/utils/WmDisplayCutout;->calculateRelativeTo(Landroid/graphics/Rect;)Lcom/android/server/wm/utils/WmDisplayCutout;

    move-result-object v2

    .line 1063
    .local v2, "c":Lcom/android/server/wm/utils/WmDisplayCutout;
    iget-object v3, v0, Lcom/android/server/wm/WindowState;->mWindowFrames:Lcom/android/server/wm/WindowFrames;

    invoke-virtual {v2}, Lcom/android/server/wm/utils/WmDisplayCutout;->getDisplayCutout()Landroid/view/DisplayCutout;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/DisplayCutout;->getSafeInsets()Landroid/graphics/Rect;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/server/wm/WindowFrames;->calculateDockedDividerInsets(Landroid/graphics/Rect;)V

    .line 1064
    .end local v2  # "c":Lcom/android/server/wm/utils/WmDisplayCutout;
    goto :goto_400

    .line 1065
    :cond_3f0
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/WindowState;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v2

    iget-object v3, v0, Lcom/android/server/wm/WindowState;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v2, v3}, Lcom/android/server/wm/DisplayContent;->getBounds(Landroid/graphics/Rect;)V

    .line 1066
    iget-object v2, v0, Lcom/android/server/wm/WindowState;->mWindowFrames:Lcom/android/server/wm/WindowFrames;

    iget-object v3, v0, Lcom/android/server/wm/WindowState;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v2, v6, v5, v3}, Lcom/android/server/wm/WindowFrames;->calculateInsets(ZZLandroid/graphics/Rect;)V

    .line 1070
    :goto_400
    iget-object v2, v0, Lcom/android/server/wm/WindowState;->mWindowFrames:Lcom/android/server/wm/WindowFrames;

    iget-object v3, v2, Lcom/android/server/wm/WindowFrames;->mDisplayCutout:Lcom/android/server/wm/utils/WmDisplayCutout;

    iget-object v4, v0, Lcom/android/server/wm/WindowState;->mWindowFrames:Lcom/android/server/wm/WindowFrames;

    iget-object v4, v4, Lcom/android/server/wm/WindowFrames;->mFrame:Landroid/graphics/Rect;

    .line 1071
    invoke-virtual {v3, v4}, Lcom/android/server/wm/utils/WmDisplayCutout;->calculateRelativeTo(Landroid/graphics/Rect;)Lcom/android/server/wm/utils/WmDisplayCutout;

    move-result-object v3

    .line 1070
    invoke-virtual {v2, v3}, Lcom/android/server/wm/WindowFrames;->setDisplayCutout(Lcom/android/server/wm/utils/WmDisplayCutout;)V

    .line 1074
    iget-object v2, v0, Lcom/android/server/wm/WindowState;->mWindowFrames:Lcom/android/server/wm/WindowFrames;

    neg-int v3, v12

    neg-int v4, v13

    invoke-virtual {v2, v3, v4}, Lcom/android/server/wm/WindowFrames;->offsetFrames(II)V

    .line 1075
    iget-object v2, v0, Lcom/android/server/wm/WindowState;->mWindowFrames:Lcom/android/server/wm/WindowFrames;

    iget-object v2, v2, Lcom/android/server/wm/WindowFrames;->mCompatFrame:Landroid/graphics/Rect;

    iget-object v3, v0, Lcom/android/server/wm/WindowState;->mWindowFrames:Lcom/android/server/wm/WindowFrames;

    iget-object v3, v3, Lcom/android/server/wm/WindowFrames;->mFrame:Landroid/graphics/Rect;

    invoke-virtual {v2, v3}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 1076
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/WindowState;->inSizeCompatMode()Z

    move-result v2

    if-eqz v2, :cond_437

    .line 1080
    iget-object v2, v0, Lcom/android/server/wm/WindowState;->mWindowFrames:Lcom/android/server/wm/WindowFrames;

    iget v3, v0, Lcom/android/server/wm/WindowState;->mInvGlobalScale:F

    invoke-virtual {v2, v3}, Lcom/android/server/wm/WindowFrames;->scaleInsets(F)V

    .line 1084
    iget-object v2, v0, Lcom/android/server/wm/WindowState;->mWindowFrames:Lcom/android/server/wm/WindowFrames;

    iget-object v2, v2, Lcom/android/server/wm/WindowFrames;->mCompatFrame:Landroid/graphics/Rect;

    iget v3, v0, Lcom/android/server/wm/WindowState;->mInvGlobalScale:F

    invoke-virtual {v2, v3}, Landroid/graphics/Rect;->scale(F)V

    .line 1087
    :cond_437
    iget-boolean v2, v0, Lcom/android/server/wm/WindowState;->mIsWallpaper:Z

    if-eqz v2, :cond_467

    iget-object v2, v0, Lcom/android/server/wm/WindowState;->mWindowFrames:Lcom/android/server/wm/WindowFrames;

    iget-object v2, v2, Lcom/android/server/wm/WindowFrames;->mFrame:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    if-ne v10, v2, :cond_44f

    iget-object v2, v0, Lcom/android/server/wm/WindowState;->mWindowFrames:Lcom/android/server/wm/WindowFrames;

    iget-object v2, v2, Lcom/android/server/wm/WindowFrames;->mFrame:Landroid/graphics/Rect;

    .line 1088
    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    if-eq v15, v2, :cond_467

    .line 1089
    :cond_44f
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/WindowState;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v2

    .line 1090
    .local v2, "displayContent":Lcom/android/server/wm/DisplayContent;
    if-eqz v2, :cond_467

    .line 1091
    invoke-virtual {v2}, Lcom/android/server/wm/DisplayContent;->getDisplayInfo()Landroid/view/DisplayInfo;

    move-result-object v3

    .line 1092
    .local v3, "displayInfo":Landroid/view/DisplayInfo;
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/WindowState;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v4

    iget-object v4, v4, Lcom/android/server/wm/DisplayContent;->mWallpaperController:Lcom/android/server/wm/WallpaperController;

    iget v7, v3, Landroid/view/DisplayInfo;->logicalWidth:I

    iget v8, v3, Landroid/view/DisplayInfo;->logicalHeight:I

    const/4 v11, 0x0

    invoke-virtual {v4, v0, v7, v8, v11}, Lcom/android/server/wm/WallpaperController;->updateWallpaperOffset(Lcom/android/server/wm/WindowState;IIZ)Z

    .line 1097
    .end local v2  # "displayContent":Lcom/android/server/wm/DisplayContent;
    .end local v3  # "displayInfo":Landroid/view/DisplayInfo;
    :cond_467
    sget-boolean v2, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_LAYOUT:Z

    if-nez v2, :cond_473

    sget-boolean v2, Lcom/android/server/wm/WindowManagerService;->localLOGV:Z

    if-eqz v2, :cond_470

    goto :goto_473

    :cond_470
    move/from16 v3, v21

    goto :goto_4d1

    :cond_473
    :goto_473
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Resolving (mRequestedWidth="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v0, Lcom/android/server/wm/WindowState;->mRequestedWidth:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", mRequestedheight="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v0, Lcom/android/server/wm/WindowState;->mRequestedHeight:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ") to (pw="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", ph="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v3, v21

    .end local v21  # "ph":I
    .local v3, "ph":I
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "): frame="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v0, Lcom/android/server/wm/WindowState;->mWindowFrames:Lcom/android/server/wm/WindowFrames;

    iget-object v4, v4, Lcom/android/server/wm/WindowFrames;->mFrame:Landroid/graphics/Rect;

    .line 1101
    invoke-virtual {v4}, Landroid/graphics/Rect;->toShortString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v0, Lcom/android/server/wm/WindowState;->mWindowFrames:Lcom/android/server/wm/WindowFrames;

    .line 1102
    invoke-virtual {v7}, Lcom/android/server/wm/WindowFrames;->getInsetsInfo()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    .line 1103
    invoke-virtual {v4}, Landroid/view/WindowManager$LayoutParams;->getTitle()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1097
    const-string v4, "WindowManager"

    invoke-static {v4, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1104
    :goto_4d1
    return-void
.end method

.method destroySurface(ZZ)Z
    .registers 8
    .param p1, "cleanupOnResume"  # Z
    .param p2, "appStopped"  # Z

    .line 2934
    const/4 v0, 0x0

    .line 2937
    .local v0, "destroyedSomething":Z
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/android/server/wm/WindowState;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 2938
    .local v1, "childWindows":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wm/WindowState;>;"
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    .local v2, "i":I
    :goto_e
    if-ltz v2, :cond_1e

    .line 2939
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/WindowState;

    .line 2940
    .local v3, "c":Lcom/android/server/wm/WindowState;
    invoke-virtual {v3, p1, p2}, Lcom/android/server/wm/WindowState;->destroySurface(ZZ)Z

    move-result v4

    or-int/2addr v0, v4

    .line 2938
    .end local v3  # "c":Lcom/android/server/wm/WindowState;
    add-int/lit8 v2, v2, -0x1

    goto :goto_e

    .line 2943
    .end local v2  # "i":I
    :cond_1e
    if-nez p2, :cond_27

    iget-boolean v2, p0, Lcom/android/server/wm/WindowState;->mWindowRemovalAllowed:Z

    if-nez v2, :cond_27

    if-nez p1, :cond_27

    .line 2944
    return v0

    .line 2947
    :cond_27
    if-nez p2, :cond_2d

    iget-boolean v2, p0, Lcom/android/server/wm/WindowState;->mWindowRemovalAllowed:Z

    if-eqz v2, :cond_32

    .line 2948
    :cond_2d
    iget-object v2, p0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowStateAnimator;->destroyPreservedSurfaceLocked()V

    .line 2951
    :cond_32
    iget-boolean v2, p0, Lcom/android/server/wm/WindowState;->mDestroying:Z

    if-eqz v2, :cond_a6

    .line 2952
    sget-boolean v2, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_ADD_REMOVE:Z

    if-eqz v2, :cond_6c

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "win="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " destroySurfaces: appStopped="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, " win.mWindowRemovalAllowed="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/android/server/wm/WindowState;->mWindowRemovalAllowed:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, " win.mRemoveOnExit="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/android/server/wm/WindowState;->mRemoveOnExit:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "WindowManager"

    invoke-static {v3, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2956
    :cond_6c
    if-eqz p1, :cond_72

    iget-boolean v2, p0, Lcom/android/server/wm/WindowState;->mRemoveOnExit:Z

    if-eqz v2, :cond_75

    .line 2957
    :cond_72
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->destroySurfaceUnchecked()V

    .line 2959
    :cond_75
    iget-boolean v2, p0, Lcom/android/server/wm/WindowState;->mRemoveOnExit:Z

    if-eqz v2, :cond_7c

    .line 2960
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->removeImmediately()V

    .line 2962
    :cond_7c
    if-eqz p1, :cond_81

    .line 2963
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->requestUpdateWallpaperIfNeeded()V

    .line 2965
    :cond_81
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/server/wm/WindowState;->mDestroying:Z

    .line 2966
    const/4 v0, 0x1

    .line 2970
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v2

    iget-object v2, v2, Lcom/android/server/wm/DisplayContent;->mAppTransition:Lcom/android/server/wm/AppTransition;

    invoke-virtual {v2}, Lcom/android/server/wm/AppTransition;->isTransitionSet()Z

    move-result v2

    if-eqz v2, :cond_a6

    .line 2971
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v2

    iget-object v2, v2, Lcom/android/server/wm/DisplayContent;->mOpeningApps:Landroid/util/ArraySet;

    iget-object v3, p0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    invoke-virtual {v2, v3}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a6

    .line 2972
    iget-object v2, p0, Lcom/android/server/wm/WindowState;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mWindowPlacerLocked:Lcom/android/server/wm/WindowSurfacePlacer;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowSurfacePlacer;->requestTraversal()V

    .line 2976
    :cond_a6
    return v0
.end method

.method destroySurfaceUnchecked()V
    .registers 2

    .line 2983
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowStateAnimator;->destroySurfaceLocked()V

    .line 2987
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/wm/WindowState;->mAnimatingExit:Z

    .line 2988
    return-void
.end method

.method dispatchWallpaperVisibility(Z)V
    .registers 7
    .param p1, "visible"  # Z

    .line 4397
    nop

    .line 4398
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    iget-object v0, v0, Lcom/android/server/wm/DisplayContent;->mWallpaperController:Lcom/android/server/wm/WallpaperController;

    iget-object v0, v0, Lcom/android/server/wm/WallpaperController;->mDeferredHideWallpaper:Lcom/android/server/wm/WindowState;

    if-nez v0, :cond_d

    const/4 v0, 0x1

    goto :goto_e

    :cond_d
    const/4 v0, 0x0

    .line 4402
    .local v0, "hideAllowed":Z
    :goto_e
    iget-boolean v1, p0, Lcom/android/server/wm/WindowState;->mWallpaperVisible:Z

    if-eq v1, p1, :cond_54

    if-nez v0, :cond_16

    if-eqz p1, :cond_54

    .line 4403
    :cond_16
    iput-boolean p1, p0, Lcom/android/server/wm/WindowState;->mWallpaperVisible:Z

    .line 4405
    :try_start_18
    sget-boolean v1, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_VISIBILITY:Z

    if-nez v1, :cond_20

    sget-boolean v1, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_WALLPAPER_LIGHT:Z

    if-eqz v1, :cond_4d

    :cond_20
    const-string v1, "WindowManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Updating vis of wallpaper "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, " from:\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v3, 0x4

    const-string v4, "  "

    .line 4407
    invoke-static {v3, v4}, Landroid/os/Debug;->getCallers(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 4405
    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4408
    :cond_4d
    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mClient:Landroid/view/IWindow;

    invoke-interface {v1, p1}, Landroid/view/IWindow;->dispatchAppVisibility(Z)V
    :try_end_52
    .catch Landroid/os/RemoteException; {:try_start_18 .. :try_end_52} :catch_53

    .line 4410
    goto :goto_54

    .line 4409
    :catch_53
    move-exception v1

    .line 4412
    :cond_54
    :goto_54
    return-void
.end method

.method disposeInputChannel()V
    .registers 4

    .line 2203
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mDeadWindowEventReceiver:Lcom/android/server/wm/WindowState$DeadWindowEventReceiver;

    const/4 v1, 0x0

    if-eqz v0, :cond_a

    .line 2204
    invoke-virtual {v0}, Lcom/android/server/wm/WindowState$DeadWindowEventReceiver;->dispose()V

    .line 2205
    iput-object v1, p0, Lcom/android/server/wm/WindowState;->mDeadWindowEventReceiver:Lcom/android/server/wm/WindowState$DeadWindowEventReceiver;

    .line 2209
    :cond_a
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mInputChannel:Landroid/view/InputChannel;

    if-eqz v0, :cond_1e

    .line 2210
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mInputManager:Lcom/android/server/input/InputManagerService;

    iget-object v2, p0, Lcom/android/server/wm/WindowState;->mInputChannel:Landroid/view/InputChannel;

    invoke-virtual {v0, v2}, Lcom/android/server/input/InputManagerService;->unregisterInputChannel(Landroid/view/InputChannel;)V

    .line 2212
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mInputChannel:Landroid/view/InputChannel;

    invoke-virtual {v0}, Landroid/view/InputChannel;->dispose()V

    .line 2213
    iput-object v1, p0, Lcom/android/server/wm/WindowState;->mInputChannel:Landroid/view/InputChannel;

    .line 2215
    :cond_1e
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mClientChannel:Landroid/view/InputChannel;

    if-eqz v0, :cond_27

    .line 2216
    invoke-virtual {v0}, Landroid/view/InputChannel;->dispose()V

    .line 2217
    iput-object v1, p0, Lcom/android/server/wm/WindowState;->mClientChannel:Landroid/view/InputChannel;

    .line 2219
    :cond_27
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mInputWindowHandle:Landroid/view/InputWindowHandle;

    iput-object v1, v0, Landroid/view/InputWindowHandle;->token:Landroid/os/IBinder;

    .line 2220
    return-void
.end method

.method dump(Ljava/io/PrintWriter;Ljava/lang/String;Z)V
    .registers 8
    .param p1, "pw"  # Ljava/io/PrintWriter;
    .param p2, "prefix"  # Ljava/lang/String;
    .param p3, "dumpAll"  # Z

    .line 3520
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getStack()Lcom/android/server/wm/TaskStack;

    move-result-object v0

    .line 3521
    .local v0, "stack":Lcom/android/server/wm/TaskStack;
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

    .line 3522
    if-eqz v0, :cond_37

    .line 3523
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " stackId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v0, Lcom/android/server/wm/TaskStack;->mStackId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3525
    :cond_37
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " mSession="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/wm/WindowState;->mSession:Lcom/android/server/wm/Session;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " mClient="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/wm/WindowState;->mClient:Landroid/view/IWindow;

    .line 3526
    invoke-interface {v2}, Landroid/view/IWindow;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 3525
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3527
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "mOwnerUid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/wm/WindowState;->mOwnerUid:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " mShowToOwnerOnly="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/server/wm/WindowState;->mShowToOwnerOnly:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " package="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget-object v2, v2, Landroid/view/WindowManager$LayoutParams;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " appop="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/wm/WindowState;->mAppOp:I

    .line 3530
    invoke-static {v2}, Landroid/app/AppOpsManager;->opToName(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 3527
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3531
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "mAttrs="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {v2, p2}, Landroid/view/WindowManager$LayoutParams;->toString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3532
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "Requested w="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/wm/WindowState;->mRequestedWidth:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " h="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/server/wm/WindowState;->mRequestedHeight:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " mLayoutSeq="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/server/wm/WindowState;->mLayoutSeq:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3535
    iget v1, p0, Lcom/android/server/wm/WindowState;->mRequestedWidth:I

    iget v3, p0, Lcom/android/server/wm/WindowState;->mLastRequestedWidth:I

    if-ne v1, v3, :cond_ee

    iget v1, p0, Lcom/android/server/wm/WindowState;->mRequestedHeight:I

    iget v3, p0, Lcom/android/server/wm/WindowState;->mLastRequestedHeight:I

    if-eq v1, v3, :cond_10f

    .line 3536
    :cond_ee
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "LastRequested w="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/server/wm/WindowState;->mLastRequestedWidth:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/wm/WindowState;->mLastRequestedHeight:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3539
    :cond_10f
    iget-boolean v1, p0, Lcom/android/server/wm/WindowState;->mIsChildWindow:Z

    if-nez v1, :cond_117

    iget-boolean v1, p0, Lcom/android/server/wm/WindowState;->mLayoutAttached:Z

    if-eqz v1, :cond_13c

    .line 3540
    :cond_117
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "mParentWindow="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getParentWindow()Lcom/android/server/wm/WindowState;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " mLayoutAttached="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/server/wm/WindowState;->mLayoutAttached:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3543
    :cond_13c
    iget-boolean v1, p0, Lcom/android/server/wm/WindowState;->mIsImWindow:Z

    if-nez v1, :cond_148

    iget-boolean v1, p0, Lcom/android/server/wm/WindowState;->mIsWallpaper:Z

    if-nez v1, :cond_148

    iget-boolean v1, p0, Lcom/android/server/wm/WindowState;->mIsFloatingLayer:Z

    if-eqz v1, :cond_17f

    .line 3544
    :cond_148
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "mIsImWindow="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/server/wm/WindowState;->mIsImWindow:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " mIsWallpaper="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/server/wm/WindowState;->mIsWallpaper:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " mIsFloatingLayer="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/server/wm/WindowState;->mIsFloatingLayer:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " mWallpaperVisible="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/server/wm/WindowState;->mWallpaperVisible:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3549
    :cond_17f
    if-eqz p3, :cond_198

    .line 3550
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "mBaseLayer="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v1, p0, Lcom/android/server/wm/WindowState;->mBaseLayer:I

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(I)V

    .line 3551
    const-string v1, " mSubLayer="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v1, p0, Lcom/android/server/wm/WindowState;->mSubLayer:I

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(I)V

    .line 3553
    :cond_198
    if-eqz p3, :cond_277

    .line 3554
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "mToken="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/wm/WindowState;->mToken:Lcom/android/server/wm/WindowToken;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3555
    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    if-eqz v1, :cond_21f

    .line 3556
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "mAppToken="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3557
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "mAppDied="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/server/wm/WindowState;->mAppDied:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3558
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "drawnStateEvaluated="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getDrawnStateEvaluated()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3559
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "mightAffectAllDrawn="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->mightAffectAllDrawn()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3561
    :cond_21f
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "mViewVisibility=0x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/wm/WindowState;->mViewVisibility:I

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " mHaveFrame="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/server/wm/WindowState;->mHaveFrame:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " mObscured="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/server/wm/WindowState;->mObscured:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3564
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "mSeq="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/wm/WindowState;->mSeq:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " mSystemUiVisibility=0x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/wm/WindowState;->mSystemUiVisibility:I

    .line 3565
    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 3564
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3567
    :cond_277
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->isVisibleByPolicy()Z

    move-result v1

    if-eqz v1, :cond_297

    iget-boolean v1, p0, Lcom/android/server/wm/WindowState;->mLegacyPolicyVisibilityAfterAnim:Z

    if-eqz v1, :cond_297

    iget-boolean v1, p0, Lcom/android/server/wm/WindowState;->mAppOpVisibility:Z

    if-eqz v1, :cond_297

    .line 3568
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->isParentWindowHidden()Z

    move-result v1

    if-nez v1, :cond_297

    iget-boolean v1, p0, Lcom/android/server/wm/WindowState;->mPermanentlyHidden:Z

    if-nez v1, :cond_297

    iget-boolean v1, p0, Lcom/android/server/wm/WindowState;->mForceHideNonSystemOverlayWindow:Z

    if-nez v1, :cond_297

    iget-boolean v1, p0, Lcom/android/server/wm/WindowState;->mHiddenWhileSuspended:Z

    if-eqz v1, :cond_2f0

    .line 3570
    :cond_297
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "mPolicyVisibility="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->isVisibleByPolicy()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " mLegacyPolicyVisibilityAfterAnim="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/server/wm/WindowState;->mLegacyPolicyVisibilityAfterAnim:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " mAppOpVisibility="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/server/wm/WindowState;->mAppOpVisibility:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " parentHidden="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3573
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->isParentWindowHidden()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " mPermanentlyHidden="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/server/wm/WindowState;->mPermanentlyHidden:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " mHiddenWhileSuspended="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/server/wm/WindowState;->mHiddenWhileSuspended:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " mForceHideNonSystemOverlayWindow="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/server/wm/WindowState;->mForceHideNonSystemOverlayWindow:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 3570
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3578
    :cond_2f0
    iget-boolean v1, p0, Lcom/android/server/wm/WindowState;->mRelayoutCalled:Z

    if-eqz v1, :cond_2f8

    iget-boolean v1, p0, Lcom/android/server/wm/WindowState;->mLayoutNeeded:Z

    if-eqz v1, :cond_31b

    .line 3579
    :cond_2f8
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "mRelayoutCalled="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/server/wm/WindowState;->mRelayoutCalled:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " mLayoutNeeded="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/server/wm/WindowState;->mLayoutNeeded:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3582
    :cond_31b
    if-eqz p3, :cond_3cc

    .line 3583
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "mGivenContentInsets="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/wm/WindowState;->mGivenContentInsets:Landroid/graphics/Rect;

    sget-object v3, Lcom/android/server/wm/WindowState;->sTmpSB:Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Landroid/graphics/Rect;->toShortString(Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " mGivenVisibleInsets="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/wm/WindowState;->mGivenVisibleInsets:Landroid/graphics/Rect;

    sget-object v3, Lcom/android/server/wm/WindowState;->sTmpSB:Ljava/lang/StringBuilder;

    .line 3584
    invoke-virtual {v2, v3}, Landroid/graphics/Rect;->toShortString(Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 3583
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3585
    iget v1, p0, Lcom/android/server/wm/WindowState;->mTouchableInsets:I

    if-nez v1, :cond_354

    iget-boolean v1, p0, Lcom/android/server/wm/WindowState;->mGivenInsetsPending:Z

    if-eqz v1, :cond_396

    .line 3586
    :cond_354
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "mTouchableInsets="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/wm/WindowState;->mTouchableInsets:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " mGivenInsetsPending="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/server/wm/WindowState;->mGivenInsetsPending:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3588
    new-instance v1, Landroid/graphics/Region;

    invoke-direct {v1}, Landroid/graphics/Region;-><init>()V

    .line 3589
    .local v1, "region":Landroid/graphics/Region;
    invoke-virtual {p0, v1}, Lcom/android/server/wm/WindowState;->getTouchableRegion(Landroid/graphics/Region;)V

    .line 3590
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "touchable region="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3592
    .end local v1  # "region":Landroid/graphics/Region;
    :cond_396
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "mFullConfiguration="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3593
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "mLastReportedConfiguration="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/android/server/wm/WindowState;->getLastReportedConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3595
    :cond_3cc
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "mHasSurface="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/server/wm/WindowState;->mHasSurface:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " isReadyForDisplay()="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3596
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->isReadyForDisplay()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " mWindowRemovalAllowed="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/server/wm/WindowState;->mWindowRemovalAllowed:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 3595
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3598
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->inSizeCompatMode()Z

    move-result v1

    if-eqz v1, :cond_422

    .line 3599
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "mCompatFrame="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/wm/WindowState;->mWindowFrames:Lcom/android/server/wm/WindowFrames;

    iget-object v2, v2, Lcom/android/server/wm/WindowFrames;->mCompatFrame:Landroid/graphics/Rect;

    sget-object v3, Lcom/android/server/wm/WindowState;->sTmpSB:Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Landroid/graphics/Rect;->toShortString(Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3601
    :cond_422
    if-eqz p3, :cond_44a

    .line 3602
    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mWindowFrames:Lcom/android/server/wm/WindowFrames;

    invoke-virtual {v1, p1, p2}, Lcom/android/server/wm/WindowFrames;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 3603
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " surface="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget-object v2, v2, Landroid/view/WindowManager$LayoutParams;->surfaceInsets:Landroid/graphics/Rect;

    sget-object v3, Lcom/android/server/wm/WindowState;->sTmpSB:Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Landroid/graphics/Rect;->toShortString(Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3605
    :cond_44a
    invoke-super {p0, p1, p2, p3}, Lcom/android/server/wm/WindowContainer;->dump(Ljava/io/PrintWriter;Ljava/lang/String;Z)V

    .line 3606
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3607
    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, p1, v2, p3}, Lcom/android/server/wm/WindowStateAnimator;->dump(Ljava/io/PrintWriter;Ljava/lang/String;Z)V

    .line 3608
    iget-boolean v1, p0, Lcom/android/server/wm/WindowState;->mAnimatingExit:Z

    if-nez v1, :cond_48c

    iget-boolean v1, p0, Lcom/android/server/wm/WindowState;->mRemoveOnExit:Z

    if-nez v1, :cond_48c

    iget-boolean v1, p0, Lcom/android/server/wm/WindowState;->mDestroying:Z

    if-nez v1, :cond_48c

    iget-boolean v1, p0, Lcom/android/server/wm/WindowState;->mRemoved:Z

    if-eqz v1, :cond_4c3

    .line 3609
    :cond_48c
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "mAnimatingExit="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/server/wm/WindowState;->mAnimatingExit:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " mRemoveOnExit="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/server/wm/WindowState;->mRemoveOnExit:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " mDestroying="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/server/wm/WindowState;->mDestroying:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " mRemoved="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/server/wm/WindowState;->mRemoved:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3614
    :cond_4c3
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getOrientationChanging()Z

    move-result v1

    if-nez v1, :cond_4d1

    iget-boolean v1, p0, Lcom/android/server/wm/WindowState;->mAppFreezing:Z

    if-nez v1, :cond_4d1

    iget-boolean v1, p0, Lcom/android/server/wm/WindowState;->mReportOrientationChanged:Z

    if-eqz v1, :cond_517

    .line 3615
    :cond_4d1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "mOrientationChanging="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/server/wm/WindowState;->mOrientationChanging:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " configOrientationChanging="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3617
    invoke-direct {p0}, Lcom/android/server/wm/WindowState;->getLastReportedConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v2, v2, Landroid/content/res/Configuration;->orientation:I

    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    iget v3, v3, Landroid/content/res/Configuration;->orientation:I

    if-eq v2, v3, :cond_4f8

    const/4 v2, 0x1

    goto :goto_4f9

    :cond_4f8
    const/4 v2, 0x0

    :goto_4f9
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " mAppFreezing="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/server/wm/WindowState;->mAppFreezing:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " mReportOrientationChanged="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/server/wm/WindowState;->mReportOrientationChanged:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 3615
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3621
    :cond_517
    iget v1, p0, Lcom/android/server/wm/WindowState;->mLastFreezeDuration:I

    if-eqz v1, :cond_538

    .line 3622
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "mLastFreezeDuration="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3623
    iget v1, p0, Lcom/android/server/wm/WindowState;->mLastFreezeDuration:I

    int-to-long v1, v1

    invoke-static {v1, v2, p1}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 3624
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 3626
    :cond_538
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "mForceSeamlesslyRotate="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/server/wm/WindowState;->mForceSeamlesslyRotate:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " seamlesslyRotate: pending="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3628
    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mPendingSeamlessRotate:Lcom/android/server/wm/SeamlessRotator;

    if-eqz v1, :cond_55e

    .line 3629
    invoke-virtual {v1, p1}, Lcom/android/server/wm/SeamlessRotator;->dump(Ljava/io/PrintWriter;)V

    goto :goto_563

    .line 3631
    :cond_55e
    const-string v1, "null"

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3633
    :goto_563
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " finishedFrameNumber="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/android/server/wm/WindowState;->mFinishSeamlessRotateFrameNumber:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3635
    iget v1, p0, Lcom/android/server/wm/WindowState;->mHScale:F

    const/high16 v2, 0x3f800000  # 1.0f

    cmpl-float v1, v1, v2

    if-nez v1, :cond_587

    iget v1, p0, Lcom/android/server/wm/WindowState;->mVScale:F

    cmpl-float v1, v1, v2

    if-eqz v1, :cond_5aa

    .line 3636
    :cond_587
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "mHScale="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/wm/WindowState;->mHScale:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, " mVScale="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/wm/WindowState;->mVScale:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3639
    :cond_5aa
    iget v1, p0, Lcom/android/server/wm/WindowState;->mWallpaperX:F

    const/high16 v2, -0x40800000  # -1.0f

    cmpl-float v1, v1, v2

    if-nez v1, :cond_5b8

    iget v1, p0, Lcom/android/server/wm/WindowState;->mWallpaperY:F

    cmpl-float v1, v1, v2

    if-eqz v1, :cond_5db

    .line 3640
    :cond_5b8
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "mWallpaperX="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/server/wm/WindowState;->mWallpaperX:F

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v3, " mWallpaperY="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/server/wm/WindowState;->mWallpaperY:F

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3643
    :cond_5db
    iget v1, p0, Lcom/android/server/wm/WindowState;->mWallpaperXStep:F

    cmpl-float v1, v1, v2

    if-nez v1, :cond_5e7

    iget v1, p0, Lcom/android/server/wm/WindowState;->mWallpaperYStep:F

    cmpl-float v1, v1, v2

    if-eqz v1, :cond_60a

    .line 3644
    :cond_5e7
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "mWallpaperXStep="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/wm/WindowState;->mWallpaperXStep:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, " mWallpaperYStep="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/wm/WindowState;->mWallpaperYStep:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3647
    :cond_60a
    iget v1, p0, Lcom/android/server/wm/WindowState;->mWallpaperDisplayOffsetX:I

    const/high16 v2, -0x80000000

    if-ne v1, v2, :cond_614

    iget v1, p0, Lcom/android/server/wm/WindowState;->mWallpaperDisplayOffsetY:I

    if-eq v1, v2, :cond_637

    .line 3649
    :cond_614
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "mWallpaperDisplayOffsetX="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/wm/WindowState;->mWallpaperDisplayOffsetX:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " mWallpaperDisplayOffsetY="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/wm/WindowState;->mWallpaperDisplayOffsetY:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3652
    :cond_637
    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mDrawLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v1, :cond_654

    .line 3653
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "mDrawLock="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/wm/WindowState;->mDrawLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3655
    :cond_654
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->isDragResizing()Z

    move-result v1

    if-eqz v1, :cond_675

    .line 3656
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "isDragResizing="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->isDragResizing()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3658
    :cond_675
    invoke-direct {p0}, Lcom/android/server/wm/WindowState;->computeDragResizing()Z

    move-result v1

    if-eqz v1, :cond_696

    .line 3659
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "computeDragResizing="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/android/server/wm/WindowState;->computeDragResizing()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3661
    :cond_696
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "isOnScreen="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->isOnScreen()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3662
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "isVisible="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->isVisible()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3663
    return-void
.end method

.method expandForSurfaceInsets(Landroid/graphics/Rect;)V
    .registers 6
    .param p1, "r"  # Landroid/graphics/Rect;

    .line 4575
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

    .line 4579
    return-void
.end method

.method fillsDisplay()Z
    .registers 4

    .line 1871
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getDisplayInfo()Landroid/view/DisplayInfo;

    move-result-object v0

    .line 1872
    .local v0, "displayInfo":Landroid/view/DisplayInfo;
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

    iget v2, v0, Landroid/view/DisplayInfo;->appHeight:I

    if-lt v1, v2, :cond_2a

    const/4 v1, 0x1

    goto :goto_2b

    :cond_2a
    const/4 v1, 0x0

    :goto_2b
    return v1
.end method

.method finishSeamlessRotation(Z)V
    .registers 4
    .param p1, "timeout"  # Z

    .line 641
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mPendingSeamlessRotate:Lcom/android/server/wm/SeamlessRotator;

    if-eqz v0, :cond_16

    .line 642
    invoke-virtual {v0, p0, p1}, Lcom/android/server/wm/SeamlessRotator;->finish(Lcom/android/server/wm/WindowState;Z)V

    .line 643
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getFrameNumber()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/wm/WindowState;->mFinishSeamlessRotateFrameNumber:J

    .line 644
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/wm/WindowState;->mPendingSeamlessRotate:Lcom/android/server/wm/SeamlessRotator;

    .line 645
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mWmService:Lcom/android/server/wm/WindowManagerService;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/android/server/wm/WindowManagerService;->markForSeamlessRotation(Lcom/android/server/wm/WindowState;Z)V

    .line 647
    :cond_16
    return-void
.end method

.method forAllWindows(Lcom/android/internal/util/ToBooleanFunction;Z)Z
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

    .line 4092
    .local p1, "callback":Lcom/android/internal/util/ToBooleanFunction;, "Lcom/android/internal/util/ToBooleanFunction<Lcom/android/server/wm/WindowState;>;"
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 4094
    invoke-direct {p0, p1, p2}, Lcom/android/server/wm/WindowState;->applyInOrderWithImeWindows(Lcom/android/internal/util/ToBooleanFunction;Z)Z

    move-result v0

    return v0

    .line 4097
    :cond_d
    if-eqz p2, :cond_14

    .line 4098
    invoke-direct {p0, p1}, Lcom/android/server/wm/WindowState;->forAllWindowTopToBottom(Lcom/android/internal/util/ToBooleanFunction;)Z

    move-result v0

    return v0

    .line 4100
    :cond_14
    invoke-direct {p0, p1}, Lcom/android/server/wm/WindowState;->forAllWindowBottomToTop(Lcom/android/internal/util/ToBooleanFunction;)Z

    move-result v0

    return v0
.end method

.method forceWindowsScaleableInTransaction(Z)V
    .registers 3
    .param p1, "force"  # Z

    .line 1914
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    if-eqz v0, :cond_11

    invoke-virtual {v0}, Lcom/android/server/wm/WindowStateAnimator;->hasSurface()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 1915
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    iget-object v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceController:Lcom/android/server/wm/WindowSurfaceController;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/WindowSurfaceController;->forceScaleableInTransaction(Z)V

    .line 1918
    :cond_11
    invoke-super {p0, p1}, Lcom/android/server/wm/WindowContainer;->forceWindowsScaleableInTransaction(Z)V

    .line 1919
    return-void
.end method

.method public getAppToken()Landroid/view/IApplicationToken;
    .registers 2

    .line 1211
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

    .line 1186
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    return-object v0
.end method

.method getBackdropFrame(Landroid/graphics/Rect;)Landroid/graphics/Rect;
    .registers 8
    .param p1, "frame"  # Landroid/graphics/Rect;

    .line 3274
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

    .line 3275
    .local v0, "resizing":Z
    :goto_11
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getWindowConfiguration()Landroid/app/WindowConfiguration;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/WindowConfiguration;->useWindowFrameForBackdrop()Z

    move-result v2

    if-nez v2, :cond_2e

    if-nez v0, :cond_1e

    goto :goto_2e

    .line 3283
    :cond_1e
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getDisplayInfo()Landroid/view/DisplayInfo;

    move-result-object v2

    .line 3284
    .local v2, "displayInfo":Landroid/view/DisplayInfo;
    iget-object v3, p0, Lcom/android/server/wm/WindowState;->mTmpRect:Landroid/graphics/Rect;

    iget v4, v2, Landroid/view/DisplayInfo;->logicalWidth:I

    iget v5, v2, Landroid/view/DisplayInfo;->logicalHeight:I

    invoke-virtual {v3, v1, v1, v4, v5}, Landroid/graphics/Rect;->set(IIII)V

    .line 3285
    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mTmpRect:Landroid/graphics/Rect;

    return-object v1

    .line 3279
    .end local v2  # "displayInfo":Landroid/view/DisplayInfo;
    :cond_2e
    :goto_2e
    iget-object v2, p0, Lcom/android/server/wm/WindowState;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v2, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 3280
    iget-object v2, p0, Lcom/android/server/wm/WindowState;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v2, v1, v1}, Landroid/graphics/Rect;->offsetTo(II)V

    .line 3281
    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mTmpRect:Landroid/graphics/Rect;

    return-object v1
.end method

.method public getBaseType()I
    .registers 2

    .line 1206
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getTopParentWindow()Lcom/android/server/wm/WindowState;

    move-result-object v0

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    return v0
.end method

.method public getBounds()Landroid/graphics/Rect;
    .registers 2

    .line 1109
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    if-eqz v0, :cond_9

    .line 1110
    invoke-virtual {v0}, Lcom/android/server/wm/AppWindowToken;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    return-object v0

    .line 1112
    :cond_9
    invoke-super {p0}, Lcom/android/server/wm/WindowContainer;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    return-object v0
.end method

.method getCompatFrame(Landroid/graphics/Rect;)V
    .registers 3
    .param p1, "outFrame"  # Landroid/graphics/Rect;

    .line 1162
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mWindowFrames:Lcom/android/server/wm/WindowFrames;

    iget-object v0, v0, Lcom/android/server/wm/WindowFrames;->mCompatFrame:Landroid/graphics/Rect;

    invoke-virtual {p1, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 1163
    return-void
.end method

.method getCompatFrameSize(Landroid/graphics/Rect;)V
    .registers 5
    .param p1, "outFrame"  # Landroid/graphics/Rect;

    .line 1166
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

    .line 1167
    return-void
.end method

.method public getConfiguration()Landroid/content/res/Configuration;
    .registers 3

    .line 3148
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    if-eqz v0, :cond_17

    iget-object v0, v0, Lcom/android/server/wm/AppWindowToken;->mFrozenMergedConfig:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->size()I

    move-result v0

    if-lez v0, :cond_17

    .line 3149
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    iget-object v0, v0, Lcom/android/server/wm/AppWindowToken;->mFrozenMergedConfig:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/res/Configuration;

    return-object v0

    .line 3154
    :cond_17
    invoke-direct {p0}, Lcom/android/server/wm/WindowState;->registeredForDisplayConfigChanges()Z

    move-result v0

    if-nez v0, :cond_22

    .line 3155
    invoke-super {p0}, Lcom/android/server/wm/WindowContainer;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    return-object v0

    .line 3160
    :cond_22
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mTempConfiguration:Landroid/content/res/Configuration;

    invoke-direct {p0}, Lcom/android/server/wm/WindowState;->getProcessGlobalConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/res/Configuration;->setTo(Landroid/content/res/Configuration;)V

    .line 3161
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mTempConfiguration:Landroid/content/res/Configuration;

    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getMergedOverrideConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/res/Configuration;->updateFrom(Landroid/content/res/Configuration;)I

    .line 3162
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mTempConfiguration:Landroid/content/res/Configuration;

    return-object v0
.end method

.method getContainingFrame()Landroid/graphics/Rect;
    .registers 2

    .line 1154
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mWindowFrames:Lcom/android/server/wm/WindowFrames;

    iget-object v0, v0, Lcom/android/server/wm/WindowFrames;->mContainingFrame:Landroid/graphics/Rect;

    return-object v0
.end method

.method public getContentFrameLw()Landroid/graphics/Rect;
    .registers 2

    .line 1133
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mWindowFrames:Lcom/android/server/wm/WindowFrames;

    iget-object v0, v0, Lcom/android/server/wm/WindowFrames;->mContentFrame:Landroid/graphics/Rect;

    return-object v0
.end method

.method getContentInsets()Landroid/graphics/Rect;
    .registers 2

    .line 5140
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mWindowFrames:Lcom/android/server/wm/WindowFrames;

    iget-object v0, v0, Lcom/android/server/wm/WindowFrames;->mContentInsets:Landroid/graphics/Rect;

    return-object v0
.end method

.method getContentInsets(Landroid/graphics/Rect;)V
    .registers 3
    .param p1, "outContentInsets"  # Landroid/graphics/Rect;

    .line 5136
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mWindowFrames:Lcom/android/server/wm/WindowFrames;

    iget-object v0, v0, Lcom/android/server/wm/WindowFrames;->mContentInsets:Landroid/graphics/Rect;

    invoke-virtual {p1, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 5137
    return-void
.end method

.method getDecorFrame()Landroid/graphics/Rect;
    .registers 2

    .line 1146
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mWindowFrames:Lcom/android/server/wm/WindowFrames;

    iget-object v0, v0, Lcom/android/server/wm/WindowFrames;->mDecorFrame:Landroid/graphics/Rect;

    return-object v0
.end method

.method getDisplayContent()Lcom/android/server/wm/DisplayContent;
    .registers 2

    .line 1362
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mToken:Lcom/android/server/wm/WindowToken;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowToken;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    return-object v0
.end method

.method public getDisplayFrameLw()Landroid/graphics/Rect;
    .registers 2

    .line 1123
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mWindowFrames:Lcom/android/server/wm/WindowFrames;

    iget-object v0, v0, Lcom/android/server/wm/WindowFrames;->mDisplayFrame:Landroid/graphics/Rect;

    return-object v0
.end method

.method public getDisplayId()I
    .registers 3

    .line 1382
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    .line 1383
    .local v0, "displayContent":Lcom/android/server/wm/DisplayContent;
    if-nez v0, :cond_8

    .line 1384
    const/4 v1, -0x1

    return v1

    .line 1386
    :cond_8
    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->getDisplayId()I

    move-result v1

    return v1
.end method

.method getDisplayInfo()Landroid/view/DisplayInfo;
    .registers 3

    .line 1376
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    .line 1377
    .local v0, "displayContent":Lcom/android/server/wm/DisplayContent;
    if-eqz v0, :cond_b

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->getDisplayInfo()Landroid/view/DisplayInfo;

    move-result-object v1

    goto :goto_c

    :cond_b
    const/4 v1, 0x0

    :goto_c
    return-object v1
.end method

.method public getDisplayedBounds()Landroid/graphics/Rect;
    .registers 4

    .line 868
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getTask()Lcom/android/server/wm/Task;

    move-result-object v0

    .line 869
    .local v0, "task":Lcom/android/server/wm/Task;
    if-eqz v0, :cond_11

    .line 870
    invoke-virtual {v0}, Lcom/android/server/wm/Task;->getOverrideDisplayedBounds()Landroid/graphics/Rect;

    move-result-object v1

    .line 871
    .local v1, "bounds":Landroid/graphics/Rect;
    invoke-virtual {v1}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_11

    .line 872
    return-object v1

    .line 875
    .end local v1  # "bounds":Landroid/graphics/Rect;
    :cond_11
    invoke-super {p0}, Lcom/android/server/wm/WindowContainer;->getDisplayedBounds()Landroid/graphics/Rect;

    move-result-object v1

    return-object v1
.end method

.method getDrawnStateEvaluated()Z
    .registers 2

    .line 812
    iget-boolean v0, p0, Lcom/android/server/wm/WindowState;->mDrawnStateEvaluated:Z

    return v0
.end method

.method getEffectiveTouchableRegion(Landroid/graphics/Region;)V
    .registers 5
    .param p1, "outRegion"  # Landroid/graphics/Region;

    .line 3063
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit8 v0, v0, 0x28

    if-nez v0, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    .line 3064
    .local v0, "modal":Z
    :goto_b
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v1

    .line 3066
    .local v1, "dc":Lcom/android/server/wm/DisplayContent;
    if-eqz v0, :cond_21

    if-eqz v1, :cond_21

    .line 3067
    invoke-virtual {v1}, Lcom/android/server/wm/DisplayContent;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/graphics/Region;->set(Landroid/graphics/Rect;)Z

    .line 3068
    invoke-direct {p0, p1}, Lcom/android/server/wm/WindowState;->cropRegionToStackBoundsIfNeeded(Landroid/graphics/Region;)V

    .line 3069
    invoke-direct {p0, p1}, Lcom/android/server/wm/WindowState;->subtractTouchExcludeRegionIfNeeded(Landroid/graphics/Region;)V

    goto :goto_24

    .line 3071
    :cond_21
    invoke-virtual {p0, p1}, Lcom/android/server/wm/WindowState;->getTouchableRegion(Landroid/graphics/Region;)V

    .line 3073
    :goto_24
    return-void
.end method

.method public getFrameLw()Landroid/graphics/Rect;
    .registers 2

    .line 1118
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mWindowFrames:Lcom/android/server/wm/WindowFrames;

    iget-object v0, v0, Lcom/android/server/wm/WindowFrames;->mFrame:Landroid/graphics/Rect;

    return-object v0
.end method

.method getFrameNumber()J
    .registers 3

    .line 5094
    iget-wide v0, p0, Lcom/android/server/wm/WindowState;->mFrameNumber:J

    return-wide v0
.end method

.method public getGivenContentInsetsLw()Landroid/graphics/Rect;
    .registers 2

    .line 1176
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mGivenContentInsets:Landroid/graphics/Rect;

    return-object v0
.end method

.method public getGivenInsetsPendingLw()Z
    .registers 2

    .line 1171
    iget-boolean v0, p0, Lcom/android/server/wm/WindowState;->mGivenInsetsPending:Z

    return v0
.end method

.method public getGivenVisibleInsetsLw()Landroid/graphics/Rect;
    .registers 2

    .line 1181
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mGivenVisibleInsets:Landroid/graphics/Rect;

    return-object v0
.end method

.method public getInputDispatchingTimeoutNanos()J
    .registers 3

    .line 1439
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    if-eqz v0, :cond_7

    .line 1440
    iget-wide v0, v0, Lcom/android/server/wm/AppWindowToken;->mInputDispatchingTimeoutNanos:J

    goto :goto_c

    .line 1441
    :cond_7
    const-wide v0, 0x12a05f200L

    .line 1439
    :goto_c
    return-wide v0
.end method

.method getInsetProvider()Lcom/android/server/wm/InsetsSourceProvider;
    .registers 2

    .line 5173
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mInsetProvider:Lcom/android/server/wm/InsetsSourceProvider;

    return-object v0
.end method

.method getInsetsForRelayout(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)V
    .registers 8
    .param p1, "outOverscanInsets"  # Landroid/graphics/Rect;
    .param p2, "outContentInsets"  # Landroid/graphics/Rect;
    .param p3, "outVisibleInsets"  # Landroid/graphics/Rect;
    .param p4, "outStableInsets"  # Landroid/graphics/Rect;
    .param p5, "outOutsets"  # Landroid/graphics/Rect;

    .line 5126
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mWindowFrames:Lcom/android/server/wm/WindowFrames;

    iget-object v0, v0, Lcom/android/server/wm/WindowFrames;->mOverscanInsets:Landroid/graphics/Rect;

    invoke-virtual {p1, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 5127
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mWindowFrames:Lcom/android/server/wm/WindowFrames;

    iget-object v0, v0, Lcom/android/server/wm/WindowFrames;->mContentInsets:Landroid/graphics/Rect;

    invoke-virtual {p2, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 5128
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mWindowFrames:Lcom/android/server/wm/WindowFrames;

    iget-object v0, v0, Lcom/android/server/wm/WindowFrames;->mVisibleInsets:Landroid/graphics/Rect;

    invoke-virtual {p3, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 5129
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mWindowFrames:Lcom/android/server/wm/WindowFrames;

    iget-object v0, v0, Lcom/android/server/wm/WindowFrames;->mStableInsets:Landroid/graphics/Rect;

    invoke-virtual {p4, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 5130
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mWindowFrames:Lcom/android/server/wm/WindowFrames;

    iget-object v0, v0, Lcom/android/server/wm/WindowFrames;->mOutsets:Landroid/graphics/Rect;

    invoke-virtual {p5, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 5132
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mLastRelayoutContentInsets:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mWindowFrames:Lcom/android/server/wm/WindowFrames;

    iget-object v1, v1, Lcom/android/server/wm/WindowFrames;->mContentInsets:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 5133
    return-void
.end method

.method getLastReportedMergedConfiguration(Landroid/util/MergedConfiguration;)V
    .registers 3
    .param p1, "config"  # Landroid/util/MergedConfiguration;

    .line 2490
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mLastReportedConfiguration:Landroid/util/MergedConfiguration;

    invoke-virtual {p1, v0}, Landroid/util/MergedConfiguration;->setTo(Landroid/util/MergedConfiguration;)V

    .line 2491
    return-void
.end method

.method public getMaxVisibleBounds(Landroid/graphics/Rect;)V
    .registers 4
    .param p1, "out"  # Landroid/graphics/Rect;

    .line 5102
    invoke-virtual {p1}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 5103
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mWindowFrames:Lcom/android/server/wm/WindowFrames;

    iget-object v0, v0, Lcom/android/server/wm/WindowFrames;->mVisibleFrame:Landroid/graphics/Rect;

    invoke-virtual {p1, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 5104
    return-void

    .line 5107
    :cond_e
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mWindowFrames:Lcom/android/server/wm/WindowFrames;

    iget-object v0, v0, Lcom/android/server/wm/WindowFrames;->mVisibleFrame:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    iget v1, p1, Landroid/graphics/Rect;->left:I

    if-ge v0, v1, :cond_20

    .line 5108
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mWindowFrames:Lcom/android/server/wm/WindowFrames;

    iget-object v0, v0, Lcom/android/server/wm/WindowFrames;->mVisibleFrame:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    iput v0, p1, Landroid/graphics/Rect;->left:I

    .line 5110
    :cond_20
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mWindowFrames:Lcom/android/server/wm/WindowFrames;

    iget-object v0, v0, Lcom/android/server/wm/WindowFrames;->mVisibleFrame:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    iget v1, p1, Landroid/graphics/Rect;->top:I

    if-ge v0, v1, :cond_32

    .line 5111
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mWindowFrames:Lcom/android/server/wm/WindowFrames;

    iget-object v0, v0, Lcom/android/server/wm/WindowFrames;->mVisibleFrame:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    iput v0, p1, Landroid/graphics/Rect;->top:I

    .line 5113
    :cond_32
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mWindowFrames:Lcom/android/server/wm/WindowFrames;

    iget-object v0, v0, Lcom/android/server/wm/WindowFrames;->mVisibleFrame:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->right:I

    iget v1, p1, Landroid/graphics/Rect;->right:I

    if-le v0, v1, :cond_44

    .line 5114
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mWindowFrames:Lcom/android/server/wm/WindowFrames;

    iget-object v0, v0, Lcom/android/server/wm/WindowFrames;->mVisibleFrame:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->right:I

    iput v0, p1, Landroid/graphics/Rect;->right:I

    .line 5116
    :cond_44
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mWindowFrames:Lcom/android/server/wm/WindowFrames;

    iget-object v0, v0, Lcom/android/server/wm/WindowFrames;->mVisibleFrame:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    iget v1, p1, Landroid/graphics/Rect;->bottom:I

    if-le v0, v1, :cond_56

    .line 5117
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mWindowFrames:Lcom/android/server/wm/WindowFrames;

    iget-object v0, v0, Lcom/android/server/wm/WindowFrames;->mVisibleFrame:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    iput v0, p1, Landroid/graphics/Rect;->bottom:I

    .line 5119
    :cond_56
    return-void
.end method

.method getMergedConfiguration(Landroid/util/MergedConfiguration;)V
    .registers 4
    .param p1, "outConfiguration"  # Landroid/util/MergedConfiguration;

    .line 2479
    invoke-direct {p0}, Lcom/android/server/wm/WindowState;->getProcessGlobalConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 2480
    .local v0, "globalConfig":Landroid/content/res/Configuration;
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getMergedOverrideConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    .line 2481
    .local v1, "overrideConfig":Landroid/content/res/Configuration;
    invoke-virtual {p1, v0, v1}, Landroid/util/MergedConfiguration;->setConfiguration(Landroid/content/res/Configuration;Landroid/content/res/Configuration;)V

    .line 2482
    return-void
.end method

.method getName()Ljava/lang/String;
    .registers 3

    .line 3667
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3668
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getWindowTag()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3667
    return-object v0
.end method

.method public getNeedsMenuLw(Lcom/android/server/policy/WindowManagerPolicy$WindowState;)Z
    .registers 3
    .param p1, "bottom"  # Lcom/android/server/policy/WindowManagerPolicy$WindowState;

    .line 1191
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/android/server/wm/DisplayContent;->getNeedsMenu(Lcom/android/server/wm/WindowState;Lcom/android/server/policy/WindowManagerPolicy$WindowState;)Z

    move-result v0

    return v0
.end method

.method getOrientationChanging()Z
    .registers 3

    .line 1333
    iget-boolean v0, p0, Lcom/android/server/wm/WindowState;->mOrientationChanging:Z

    if-nez v0, :cond_18

    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_22

    .line 1334
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

    .line 1333
    :goto_23
    return v0
.end method

.method public getOverscanFrameLw()Landroid/graphics/Rect;
    .registers 2

    .line 1128
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mWindowFrames:Lcom/android/server/wm/WindowFrames;

    iget-object v0, v0, Lcom/android/server/wm/WindowFrames;->mOverscanFrame:Landroid/graphics/Rect;

    return-object v0
.end method

.method public getOwningPackage()Ljava/lang/String;
    .registers 2

    .line 838
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget-object v0, v0, Landroid/view/WindowManager$LayoutParams;->packageName:Ljava/lang/String;

    return-object v0
.end method

.method public getOwningUid()I
    .registers 2

    .line 833
    iget v0, p0, Lcom/android/server/wm/WindowState;->mOwnerUid:I

    return v0
.end method

.method getParentFrame()Landroid/graphics/Rect;
    .registers 2

    .line 1150
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mWindowFrames:Lcom/android/server/wm/WindowFrames;

    iget-object v0, v0, Lcom/android/server/wm/WindowFrames;->mParentFrame:Landroid/graphics/Rect;

    return-object v0
.end method

.method getParentWindow()Lcom/android/server/wm/WindowState;
    .registers 2

    .line 3816
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
    .registers 4

    .line 3942
    iget-boolean v0, p0, Lcom/android/server/wm/WindowState;->mAnimatingExit:Z

    if-eqz v0, :cond_d

    iget-boolean v0, p0, Lcom/android/server/wm/WindowState;->mWillReplaceWindow:Z

    if-eqz v0, :cond_d

    iget-boolean v0, p0, Lcom/android/server/wm/WindowState;->mAnimateReplacingWindow:Z

    if-eqz v0, :cond_d

    .line 3943
    return-object p0

    .line 3945
    :cond_d
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_15
    if-ltz v0, :cond_29

    .line 3946
    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v1, v0}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/WindowState;

    .line 3947
    .local v1, "c":Lcom/android/server/wm/WindowState;
    invoke-virtual {v1}, Lcom/android/server/wm/WindowState;->getReplacingWindow()Lcom/android/server/wm/WindowState;

    move-result-object v2

    .line 3948
    .local v2, "replacing":Lcom/android/server/wm/WindowState;
    if-eqz v2, :cond_26

    .line 3949
    return-object v2

    .line 3945
    .end local v1  # "c":Lcom/android/server/wm/WindowState;
    .end local v2  # "replacing":Lcom/android/server/wm/WindowState;
    :cond_26
    add-int/lit8 v0, v0, -0x1

    goto :goto_15

    .line 3952
    .end local v0  # "i":I
    :cond_29
    const/4 v0, 0x0

    return-object v0
.end method

.method getResizeMode()I
    .registers 2

    .line 3411
    iget v0, p0, Lcom/android/server/wm/WindowState;->mResizeMode:I

    return v0
.end method

.method public getRotationAnimationHint()I
    .registers 2

    .line 3957
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    if-eqz v0, :cond_7

    .line 3958
    iget v0, v0, Lcom/android/server/wm/AppWindowToken;->mRotationAnimationHint:I

    return v0

    .line 3960
    :cond_7
    const/4 v0, -0x1

    return v0
.end method

.method getSession()Landroid/view/SurfaceSession;
    .registers 2

    .line 4838
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mSession:Lcom/android/server/wm/Session;

    iget-object v0, v0, Lcom/android/server/wm/Session;->mSurfaceSession:Landroid/view/SurfaceSession;

    if-eqz v0, :cond_b

    .line 4839
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mSession:Lcom/android/server/wm/Session;

    iget-object v0, v0, Lcom/android/server/wm/Session;->mSurfaceSession:Landroid/view/SurfaceSession;

    return-object v0

    .line 4841
    :cond_b
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/WindowContainer;->getSession()Landroid/view/SurfaceSession;

    move-result-object v0

    return-object v0
.end method

.method getStableFrameLw()Landroid/graphics/Rect;
    .registers 2

    .line 1142
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mWindowFrames:Lcom/android/server/wm/WindowFrames;

    iget-object v0, v0, Lcom/android/server/wm/WindowFrames;->mStableFrame:Landroid/graphics/Rect;

    return-object v0
.end method

.method getStableInsets()Landroid/graphics/Rect;
    .registers 2

    .line 5148
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mWindowFrames:Lcom/android/server/wm/WindowFrames;

    iget-object v0, v0, Lcom/android/server/wm/WindowFrames;->mStableInsets:Landroid/graphics/Rect;

    return-object v0
.end method

.method getStableInsets(Landroid/graphics/Rect;)V
    .registers 3
    .param p1, "outStableInsets"  # Landroid/graphics/Rect;

    .line 5144
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mWindowFrames:Lcom/android/server/wm/WindowFrames;

    iget-object v0, v0, Lcom/android/server/wm/WindowFrames;->mStableInsets:Landroid/graphics/Rect;

    invoke-virtual {p1, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 5145
    return-void
.end method

.method getStack()Lcom/android/server/wm/TaskStack;
    .registers 5

    .line 1394
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getTask()Lcom/android/server/wm/Task;

    move-result-object v0

    .line 1395
    .local v0, "task":Lcom/android/server/wm/Task;
    if-eqz v0, :cond_d

    .line 1396
    iget-object v1, v0, Lcom/android/server/wm/Task;->mStack:Lcom/android/server/wm/TaskStack;

    if-eqz v1, :cond_d

    .line 1397
    iget-object v1, v0, Lcom/android/server/wm/Task;->mStack:Lcom/android/server/wm/TaskStack;

    return-object v1

    .line 1402
    :cond_d
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v1

    .line 1403
    .local v1, "dc":Lcom/android/server/wm/DisplayContent;
    iget-object v2, p0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v2, v2, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v3, 0x7d0

    if-lt v2, v3, :cond_20

    if-eqz v1, :cond_20

    invoke-virtual {v1}, Lcom/android/server/wm/DisplayContent;->getHomeStack()Lcom/android/server/wm/TaskStack;

    move-result-object v2

    goto :goto_21

    :cond_20
    const/4 v2, 0x0

    :goto_21
    return-object v2
.end method

.method public getSurfaceLayer()I
    .registers 2

    .line 1201
    iget v0, p0, Lcom/android/server/wm/WindowState;->mLayer:I

    return v0
.end method

.method getSurfaceTouchableRegion(Landroid/view/InputWindowHandle;I)I
    .registers 14
    .param p1, "inputWindowHandle"  # Landroid/view/InputWindowHandle;
    .param p2, "flags"  # I

    .line 2296
    and-int/lit8 v0, p2, 0x28

    const/4 v1, 0x0

    if-nez v0, :cond_7

    const/4 v0, 0x1

    goto :goto_8

    :cond_7
    move v0, v1

    .line 2297
    .local v0, "modal":Z
    :goto_8
    iget-object v2, p1, Landroid/view/InputWindowHandle;->touchableRegion:Landroid/graphics/Region;

    .line 2298
    .local v2, "region":Landroid/graphics/Region;
    invoke-direct {p0, p1}, Lcom/android/server/wm/WindowState;->setTouchableRegionCropIfNeeded(Landroid/view/InputWindowHandle;)V

    .line 2300
    iget-object v3, p0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    const/4 v4, 0x0

    if-eqz v3, :cond_17

    .line 2301
    invoke-virtual {v3}, Lcom/android/server/wm/AppWindowToken;->getResolvedOverrideBounds()Landroid/graphics/Rect;

    move-result-object v3

    goto :goto_18

    :cond_17
    move-object v3, v4

    .line 2302
    .local v3, "appOverrideBounds":Landroid/graphics/Rect;
    :goto_18
    if-eqz v3, :cond_67

    invoke-virtual {v3}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_67

    .line 2306
    if-eqz v0, :cond_32

    .line 2308
    or-int/lit8 p2, p2, 0x20

    .line 2309
    iget-object v4, p0, Lcom/android/server/wm/WindowState;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v5

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v6

    invoke-virtual {v4, v1, v1, v5, v6}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_3b

    .line 2312
    :cond_32
    iget-object v4, p0, Lcom/android/server/wm/WindowState;->mTmpRect:Landroid/graphics/Rect;

    iget-object v5, p0, Lcom/android/server/wm/WindowState;->mWindowFrames:Lcom/android/server/wm/WindowFrames;

    iget-object v5, v5, Lcom/android/server/wm/WindowFrames;->mCompatFrame:Landroid/graphics/Rect;

    invoke-virtual {v4, v5}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 2316
    :goto_3b
    iget-object v4, p0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    invoke-virtual {v4}, Lcom/android/server/wm/AppWindowToken;->inSizeCompatMode()Z

    move-result v4

    if-eqz v4, :cond_4c

    .line 2317
    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    invoke-virtual {v1}, Lcom/android/server/wm/AppWindowToken;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Rect;->left:I

    goto :goto_4d

    :cond_4c
    nop

    .line 2318
    .local v1, "surfaceOffsetX":I
    :goto_4d
    iget-object v4, p0, Lcom/android/server/wm/WindowState;->mTmpRect:Landroid/graphics/Rect;

    iget-object v5, p0, Lcom/android/server/wm/WindowState;->mWindowFrames:Lcom/android/server/wm/WindowFrames;

    iget-object v5, v5, Lcom/android/server/wm/WindowFrames;->mFrame:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->left:I

    sub-int v5, v1, v5

    iget-object v6, p0, Lcom/android/server/wm/WindowState;->mWindowFrames:Lcom/android/server/wm/WindowFrames;

    iget-object v6, v6, Lcom/android/server/wm/WindowFrames;->mFrame:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->top:I

    neg-int v6, v6

    invoke-virtual {v4, v5, v6}, Landroid/graphics/Rect;->offset(II)V

    .line 2319
    iget-object v4, p0, Lcom/android/server/wm/WindowState;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v2, v4}, Landroid/graphics/Region;->set(Landroid/graphics/Rect;)Z

    .line 2320
    return p2

    .line 2323
    .end local v1  # "surfaceOffsetX":I
    :cond_67
    if-eqz v0, :cond_b8

    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    if-eqz v1, :cond_b8

    .line 2325
    or-int/lit8 p2, p2, 0x20

    .line 2329
    iget-object v4, p0, Lcom/android/server/wm/WindowState;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v1, v4}, Lcom/android/server/wm/AppWindowToken;->getLetterboxInnerBounds(Landroid/graphics/Rect;)V

    .line 2330
    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_91

    .line 2336
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getTask()Lcom/android/server/wm/Task;

    move-result-object v1

    .line 2337
    .local v1, "task":Lcom/android/server/wm/Task;
    if-eqz v1, :cond_88

    .line 2338
    iget-object v4, p0, Lcom/android/server/wm/WindowState;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v1, v4}, Lcom/android/server/wm/Task;->getDimBounds(Landroid/graphics/Rect;)V

    goto :goto_91

    .line 2340
    :cond_88
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getStack()Lcom/android/server/wm/TaskStack;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/wm/WindowState;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v4, v5}, Lcom/android/server/wm/TaskStack;->getDimBounds(Landroid/graphics/Rect;)V

    .line 2343
    .end local v1  # "task":Lcom/android/server/wm/Task;
    :cond_91
    :goto_91
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->inFreeformWindowingMode()Z

    move-result v1

    if-eqz v1, :cond_ac

    .line 2346
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/wm/DisplayContent;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    .line 2347
    .local v1, "displayMetrics":Landroid/util/DisplayMetrics;
    const/16 v4, 0x1e

    invoke-static {v4, v1}, Lcom/android/server/wm/WindowManagerService;->dipToPixel(ILandroid/util/DisplayMetrics;)I

    move-result v4

    .line 2349
    .local v4, "delta":I
    iget-object v5, p0, Lcom/android/server/wm/WindowState;->mTmpRect:Landroid/graphics/Rect;

    neg-int v6, v4

    neg-int v7, v4

    invoke-virtual {v5, v6, v7}, Landroid/graphics/Rect;->inset(II)V

    .line 2351
    .end local v1  # "displayMetrics":Landroid/util/DisplayMetrics;
    .end local v4  # "delta":I
    :cond_ac
    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v2, v1}, Landroid/graphics/Region;->set(Landroid/graphics/Rect;)Z

    .line 2352
    invoke-direct {p0, v2}, Lcom/android/server/wm/WindowState;->cropRegionToStackBoundsIfNeeded(Landroid/graphics/Region;)V

    .line 2353
    invoke-direct {p0, v2}, Lcom/android/server/wm/WindowState;->subtractTouchExcludeRegionIfNeeded(Landroid/graphics/Region;)V

    goto :goto_fa

    .line 2354
    :cond_b8
    if-eqz v0, :cond_f7

    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mTapExcludeRegionHolder:Lcom/android/server/wm/TapExcludeRegionHolder;

    if-eqz v1, :cond_f7

    .line 2355
    invoke-static {}, Landroid/graphics/Region;->obtain()Landroid/graphics/Region;

    move-result-object v1

    .line 2356
    .local v1, "touchExcludeRegion":Landroid/graphics/Region;
    invoke-virtual {p0, v1}, Lcom/android/server/wm/WindowState;->amendTapExcludeRegion(Landroid/graphics/Region;)V

    .line 2357
    invoke-virtual {v1}, Landroid/graphics/Region;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_f3

    .line 2359
    or-int/lit8 p2, p2, 0x20

    .line 2363
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v5

    iget-object v6, p0, Lcom/android/server/wm/WindowState;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v5, v6}, Lcom/android/server/wm/DisplayContent;->getBounds(Landroid/graphics/Rect;)V

    .line 2364
    iget-object v5, p0, Lcom/android/server/wm/WindowState;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v5}, Landroid/graphics/Rect;->width()I

    move-result v5

    .line 2365
    .local v5, "dw":I
    iget-object v6, p0, Lcom/android/server/wm/WindowState;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v6}, Landroid/graphics/Rect;->height()I

    move-result v6

    .line 2366
    .local v6, "dh":I
    neg-int v7, v5

    neg-int v8, v6

    add-int v9, v5, v5

    add-int v10, v6, v6

    invoke-virtual {v2, v7, v8, v9, v10}, Landroid/graphics/Region;->set(IIII)Z

    .line 2368
    sget-object v7, Landroid/graphics/Region$Op;->DIFFERENCE:Landroid/graphics/Region$Op;

    invoke-virtual {v2, v1, v7}, Landroid/graphics/Region;->op(Landroid/graphics/Region;Landroid/graphics/Region$Op;)Z

    .line 2369
    invoke-virtual {p1, v4}, Landroid/view/InputWindowHandle;->setTouchableRegionCrop(Landroid/view/SurfaceControl;)V

    .line 2371
    .end local v5  # "dw":I
    .end local v6  # "dh":I
    :cond_f3
    invoke-virtual {v1}, Landroid/graphics/Region;->recycle()V

    .line 2372
    .end local v1  # "touchExcludeRegion":Landroid/graphics/Region;
    goto :goto_fa

    .line 2374
    :cond_f7
    invoke-virtual {p0, v2}, Lcom/android/server/wm/WindowState;->getTouchableRegion(Landroid/graphics/Region;)V

    .line 2377
    :goto_fa
    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mWindowFrames:Lcom/android/server/wm/WindowFrames;

    iget-object v1, v1, Lcom/android/server/wm/WindowFrames;->mFrame:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    neg-int v1, v1

    iget-object v4, p0, Lcom/android/server/wm/WindowState;->mWindowFrames:Lcom/android/server/wm/WindowFrames;

    iget-object v4, v4, Lcom/android/server/wm/WindowFrames;->mFrame:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    neg-int v4, v4

    invoke-virtual {v2, v1, v4}, Landroid/graphics/Region;->translate(II)V

    .line 2379
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

    .line 650
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mExclusionRects:Ljava/util/List;

    return-object v0
.end method

.method public getSystemUiVisibility()I
    .registers 2

    .line 1196
    iget v0, p0, Lcom/android/server/wm/WindowState;->mSystemUiVisibility:I

    return v0
.end method

.method getTask()Lcom/android/server/wm/Task;
    .registers 2

    .line 1390
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

    .line 3821
    move-object v0, p0

    .line 3822
    .local v0, "current":Lcom/android/server/wm/WindowState;
    move-object v1, v0

    .line 3823
    .local v1, "topParent":Lcom/android/server/wm/WindowState;
    :cond_2
    :goto_2
    if-eqz v0, :cond_10

    iget-boolean v2, v0, Lcom/android/server/wm/WindowState;->mIsChildWindow:Z

    if-eqz v2, :cond_10

    .line 3824
    invoke-virtual {v0}, Lcom/android/server/wm/WindowState;->getParentWindow()Lcom/android/server/wm/WindowState;

    move-result-object v0

    .line 3828
    if-eqz v0, :cond_2

    .line 3829
    move-object v1, v0

    goto :goto_2

    .line 3832
    :cond_10
    return-object v1
.end method

.method getTouchableRegion(Landroid/graphics/Region;)V
    .registers 5
    .param p1, "outRegion"  # Landroid/graphics/Region;

    .line 3034
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mWindowFrames:Lcom/android/server/wm/WindowFrames;

    iget-object v0, v0, Lcom/android/server/wm/WindowFrames;->mFrame:Landroid/graphics/Rect;

    .line 3035
    .local v0, "frame":Landroid/graphics/Rect;
    iget v1, p0, Lcom/android/server/wm/WindowState;->mTouchableInsets:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_26

    const/4 v2, 0x2

    if-eq v1, v2, :cond_20

    const/4 v2, 0x3

    if-eq v1, v2, :cond_13

    .line 3038
    invoke-virtual {p1, v0}, Landroid/graphics/Region;->set(Landroid/graphics/Rect;)Z

    .line 3039
    goto :goto_2c

    .line 3047
    :cond_13
    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mGivenTouchableRegion:Landroid/graphics/Region;

    invoke-virtual {p1, v1}, Landroid/graphics/Region;->set(Landroid/graphics/Region;)Z

    .line 3048
    iget v1, v0, Landroid/graphics/Rect;->left:I

    iget v2, v0, Landroid/graphics/Rect;->top:I

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Region;->translate(II)V

    goto :goto_2c

    .line 3044
    :cond_20
    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mGivenVisibleInsets:Landroid/graphics/Rect;

    invoke-static {p1, v0, v1}, Lcom/android/server/wm/WindowState;->applyInsets(Landroid/graphics/Region;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 3045
    goto :goto_2c

    .line 3041
    :cond_26
    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mGivenContentInsets:Landroid/graphics/Rect;

    invoke-static {p1, v0, v1}, Lcom/android/server/wm/WindowState;->applyInsets(Landroid/graphics/Region;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 3042
    nop

    .line 3052
    :goto_2c
    invoke-direct {p0, p1}, Lcom/android/server/wm/WindowState;->cropRegionToStackBoundsIfNeeded(Landroid/graphics/Region;)V

    .line 3053
    invoke-direct {p0, p1}, Lcom/android/server/wm/WindowState;->subtractTouchExcludeRegionIfNeeded(Landroid/graphics/Region;)V

    .line 3054
    return-void
.end method

.method getTransformationMatrix([FLandroid/graphics/Matrix;)V
    .registers 12
    .param p1, "float9"  # [F
    .param p2, "outMatrix"  # Landroid/graphics/Matrix;

    .line 4727
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    iget v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mDsDx:F

    const/4 v1, 0x0

    aput v0, p1, v1

    .line 4728
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    iget v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mDtDx:F

    const/4 v1, 0x3

    aput v0, p1, v1

    .line 4729
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    iget v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mDtDy:F

    const/4 v1, 0x1

    aput v0, p1, v1

    .line 4730
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    iget v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mDsDy:F

    const/4 v1, 0x4

    aput v0, p1, v1

    .line 4731
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mSurfacePosition:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->x:I

    .line 4732
    .local v0, "x":I
    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mSurfacePosition:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->y:I

    .line 4736
    .local v1, "y":I
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v2

    .line 4737
    .local v2, "dc":Lcom/android/server/wm/DisplayContent;
    :goto_28
    if-eqz v2, :cond_75

    invoke-virtual {v2}, Lcom/android/server/wm/DisplayContent;->getParentWindow()Lcom/android/server/wm/WindowState;

    move-result-object v3

    if-eqz v3, :cond_75

    .line 4738
    invoke-virtual {v2}, Lcom/android/server/wm/DisplayContent;->getParentWindow()Lcom/android/server/wm/WindowState;

    move-result-object v3

    .line 4739
    .local v3, "displayParent":Lcom/android/server/wm/WindowState;
    int-to-float v4, v0

    iget-object v5, v3, Lcom/android/server/wm/WindowState;->mWindowFrames:Lcom/android/server/wm/WindowFrames;

    iget-object v5, v5, Lcom/android/server/wm/WindowFrames;->mFrame:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->left:I

    iget-object v6, v3, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget-object v6, v6, Landroid/view/WindowManager$LayoutParams;->surfaceInsets:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->left:I

    sub-int/2addr v5, v6

    int-to-float v5, v5

    .line 4740
    invoke-virtual {v2}, Lcom/android/server/wm/DisplayContent;->getLocationInParentWindow()Landroid/graphics/Point;

    move-result-object v6

    iget v6, v6, Landroid/graphics/Point;->x:I

    int-to-float v6, v6

    iget v7, v3, Lcom/android/server/wm/WindowState;->mGlobalScale:F

    mul-float/2addr v6, v7

    const/high16 v7, 0x3f000000  # 0.5f

    add-float/2addr v6, v7

    add-float/2addr v5, v6

    add-float/2addr v4, v5

    float-to-int v0, v4

    .line 4741
    int-to-float v4, v1

    iget-object v5, v3, Lcom/android/server/wm/WindowState;->mWindowFrames:Lcom/android/server/wm/WindowFrames;

    iget-object v5, v5, Lcom/android/server/wm/WindowFrames;->mFrame:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->top:I

    iget-object v6, v3, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget-object v6, v6, Landroid/view/WindowManager$LayoutParams;->surfaceInsets:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->top:I

    sub-int/2addr v5, v6

    int-to-float v5, v5

    .line 4742
    invoke-virtual {v2}, Lcom/android/server/wm/DisplayContent;->getLocationInParentWindow()Landroid/graphics/Point;

    move-result-object v6

    iget v6, v6, Landroid/graphics/Point;->y:I

    int-to-float v6, v6

    iget v8, v3, Lcom/android/server/wm/WindowState;->mGlobalScale:F

    mul-float/2addr v6, v8

    add-float/2addr v6, v7

    add-float/2addr v5, v6

    add-float/2addr v4, v5

    float-to-int v1, v4

    .line 4743
    invoke-virtual {v3}, Lcom/android/server/wm/WindowState;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v2

    .line 4744
    .end local v3  # "displayParent":Lcom/android/server/wm/WindowState;
    goto :goto_28

    .line 4747
    :cond_75
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object v3

    .line 4748
    .local v3, "parent":Lcom/android/server/wm/WindowContainer;
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->isChildWindow()Z

    move-result v4

    if-eqz v4, :cond_a0

    .line 4749
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getParentWindow()Lcom/android/server/wm/WindowState;

    move-result-object v4

    .line 4750
    .local v4, "parentWindow":Lcom/android/server/wm/WindowState;
    iget-object v5, v4, Lcom/android/server/wm/WindowState;->mWindowFrames:Lcom/android/server/wm/WindowFrames;

    iget-object v5, v5, Lcom/android/server/wm/WindowFrames;->mFrame:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->left:I

    iget-object v6, v4, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget-object v6, v6, Landroid/view/WindowManager$LayoutParams;->surfaceInsets:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->left:I

    sub-int/2addr v5, v6

    add-int/2addr v0, v5

    .line 4751
    iget-object v5, v4, Lcom/android/server/wm/WindowState;->mWindowFrames:Lcom/android/server/wm/WindowFrames;

    iget-object v5, v5, Lcom/android/server/wm/WindowFrames;->mFrame:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->top:I

    iget-object v6, v4, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget-object v6, v6, Landroid/view/WindowManager$LayoutParams;->surfaceInsets:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->top:I

    sub-int/2addr v5, v6

    add-int/2addr v1, v5

    .end local v4  # "parentWindow":Lcom/android/server/wm/WindowState;
    goto :goto_ad

    .line 4752
    :cond_a0
    if-eqz v3, :cond_ad

    .line 4753
    invoke-virtual {v3}, Lcom/android/server/wm/WindowContainer;->getBounds()Landroid/graphics/Rect;

    move-result-object v4

    .line 4754
    .local v4, "parentBounds":Landroid/graphics/Rect;
    iget v5, v4, Landroid/graphics/Rect;->left:I

    add-int/2addr v0, v5

    .line 4755
    iget v5, v4, Landroid/graphics/Rect;->top:I

    add-int/2addr v1, v5

    goto :goto_ae

    .line 4752
    .end local v4  # "parentBounds":Landroid/graphics/Rect;
    :cond_ad
    :goto_ad
    nop

    .line 4757
    :goto_ae
    const/4 v4, 0x2

    int-to-float v5, v0

    aput v5, p1, v4

    .line 4758
    const/4 v4, 0x5

    int-to-float v5, v1

    aput v5, p1, v4

    .line 4759
    const/4 v4, 0x6

    const/4 v5, 0x0

    aput v5, p1, v4

    .line 4760
    const/4 v4, 0x7

    aput v5, p1, v4

    .line 4761
    const/16 v4, 0x8

    const/high16 v5, 0x3f800000  # 1.0f

    aput v5, p1, v4

    .line 4762
    invoke-virtual {p2, p1}, Landroid/graphics/Matrix;->setValues([F)V

    .line 4763
    return-void
.end method

.method getVisibleBounds(Landroid/graphics/Rect;)V
    .registers 6
    .param p1, "bounds"  # Landroid/graphics/Rect;

    .line 1411
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getTask()Lcom/android/server/wm/Task;

    move-result-object v0

    .line 1412
    .local v0, "task":Lcom/android/server/wm/Task;
    if-eqz v0, :cond_e

    invoke-virtual {v0}, Lcom/android/server/wm/Task;->cropWindowsToStackBounds()Z

    move-result v1

    if-eqz v1, :cond_e

    const/4 v1, 0x1

    goto :goto_f

    :cond_e
    const/4 v1, 0x0

    .line 1413
    .local v1, "intersectWithStackBounds":Z
    :goto_f
    invoke-virtual {p1}, Landroid/graphics/Rect;->setEmpty()V

    .line 1414
    iget-object v2, p0, Lcom/android/server/wm/WindowState;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->setEmpty()V

    .line 1415
    if-eqz v1, :cond_24

    .line 1416
    iget-object v2, v0, Lcom/android/server/wm/Task;->mStack:Lcom/android/server/wm/TaskStack;

    .line 1417
    .local v2, "stack":Lcom/android/server/wm/TaskStack;
    if-eqz v2, :cond_23

    .line 1418
    iget-object v3, p0, Lcom/android/server/wm/WindowState;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v2, v3}, Lcom/android/server/wm/TaskStack;->getDimBounds(Landroid/graphics/Rect;)V

    goto :goto_24

    .line 1420
    :cond_23
    const/4 v1, 0x0

    .line 1424
    .end local v2  # "stack":Lcom/android/server/wm/TaskStack;
    :cond_24
    :goto_24
    iget-object v2, p0, Lcom/android/server/wm/WindowState;->mWindowFrames:Lcom/android/server/wm/WindowFrames;

    iget-object v2, v2, Lcom/android/server/wm/WindowFrames;->mVisibleFrame:Landroid/graphics/Rect;

    invoke-virtual {p1, v2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 1425
    if-eqz v1, :cond_32

    .line 1426
    iget-object v2, p0, Lcom/android/server/wm/WindowState;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {p1, v2}, Landroid/graphics/Rect;->intersect(Landroid/graphics/Rect;)Z

    .line 1429
    :cond_32
    invoke-virtual {p1}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_47

    .line 1430
    iget-object v2, p0, Lcom/android/server/wm/WindowState;->mWindowFrames:Lcom/android/server/wm/WindowFrames;

    iget-object v2, v2, Lcom/android/server/wm/WindowFrames;->mFrame:Landroid/graphics/Rect;

    invoke-virtual {p1, v2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 1431
    if-eqz v1, :cond_46

    .line 1432
    iget-object v2, p0, Lcom/android/server/wm/WindowState;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {p1, v2}, Landroid/graphics/Rect;->intersect(Landroid/graphics/Rect;)Z

    .line 1434
    :cond_46
    return-void

    .line 1436
    :cond_47
    return-void
.end method

.method public getVisibleFrameLw()Landroid/graphics/Rect;
    .registers 2

    .line 1138
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mWindowFrames:Lcom/android/server/wm/WindowFrames;

    iget-object v0, v0, Lcom/android/server/wm/WindowFrames;->mVisibleFrame:Landroid/graphics/Rect;

    return-object v0
.end method

.method getVisibleInsets()Landroid/graphics/Rect;
    .registers 2

    .line 5156
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

    .line 4208
    .local p1, "callback":Ljava/util/function/Predicate;, "Ljava/util/function/Predicate<Lcom/android/server/wm/WindowState;>;"
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowList;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_11

    .line 4209
    invoke-interface {p1, p0}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    move-object v1, p0

    :cond_10
    return-object v1

    .line 4215
    :cond_11
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .line 4216
    .local v0, "i":I
    iget-object v2, p0, Lcom/android/server/wm/WindowState;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v2, v0}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/WindowState;

    .line 4218
    .local v2, "child":Lcom/android/server/wm/WindowState;
    :goto_21
    if-ltz v0, :cond_3d

    iget v3, v2, Lcom/android/server/wm/WindowState;->mSubLayer:I

    if-ltz v3, :cond_3d

    .line 4219
    invoke-interface {p1, v2}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2e

    .line 4220
    return-object v2

    .line 4222
    :cond_2e
    add-int/lit8 v0, v0, -0x1

    .line 4223
    if-gez v0, :cond_33

    .line 4224
    goto :goto_3d

    .line 4226
    :cond_33
    iget-object v3, p0, Lcom/android/server/wm/WindowState;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v3, v0}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v3

    move-object v2, v3

    check-cast v2, Lcom/android/server/wm/WindowState;

    goto :goto_21

    .line 4229
    :cond_3d
    :goto_3d
    invoke-interface {p1, p0}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_44

    .line 4230
    return-object p0

    .line 4233
    :cond_44
    :goto_44
    if-ltz v0, :cond_5c

    .line 4234
    invoke-interface {p1, v2}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4d

    .line 4235
    return-object v2

    .line 4237
    :cond_4d
    add-int/lit8 v0, v0, -0x1

    .line 4238
    if-gez v0, :cond_52

    .line 4239
    goto :goto_5c

    .line 4241
    :cond_52
    iget-object v3, p0, Lcom/android/server/wm/WindowState;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v3, v0}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v3

    move-object v2, v3

    check-cast v2, Lcom/android/server/wm/WindowState;

    goto :goto_44

    .line 4244
    :cond_5c
    :goto_5c
    return-object v1
.end method

.method public getWindowFrames()Lcom/android/server/wm/WindowFrames;
    .registers 2

    .line 5161
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mWindowFrames:Lcom/android/server/wm/WindowFrames;

    return-object v0
.end method

.method getWindowInfo()Landroid/view/WindowInfo;
    .registers 10

    .line 4046
    invoke-static {}, Landroid/view/WindowInfo;->obtain()Landroid/view/WindowInfo;

    move-result-object v0

    .line 4047
    .local v0, "windowInfo":Landroid/view/WindowInfo;
    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v1, v1, Landroid/view/WindowManager$LayoutParams;->type:I

    iput v1, v0, Landroid/view/WindowInfo;->type:I

    .line 4048
    iget v1, p0, Lcom/android/server/wm/WindowState;->mLayer:I

    iput v1, v0, Landroid/view/WindowInfo;->layer:I

    .line 4049
    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mClient:Landroid/view/IWindow;

    invoke-interface {v1}, Landroid/view/IWindow;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    iput-object v1, v0, Landroid/view/WindowInfo;->token:Landroid/os/IBinder;

    .line 4050
    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    if-eqz v1, :cond_22

    .line 4051
    iget-object v1, v1, Lcom/android/server/wm/AppWindowToken;->appToken:Landroid/view/IApplicationToken;

    invoke-interface {v1}, Landroid/view/IApplicationToken;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    iput-object v1, v0, Landroid/view/WindowInfo;->activityToken:Landroid/os/IBinder;

    .line 4053
    :cond_22
    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget-object v1, v1, Landroid/view/WindowManager$LayoutParams;->accessibilityTitle:Ljava/lang/CharSequence;

    iput-object v1, v0, Landroid/view/WindowInfo;->title:Ljava/lang/CharSequence;

    .line 4056
    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v1, v1, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v2, 0x3e8

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-lt v1, v2, :cond_3c

    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v1, v1, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v2, 0x7cf

    if-gt v1, v2, :cond_3c

    move v1, v4

    goto :goto_3d

    :cond_3c
    move v1, v3

    .line 4060
    .local v1, "isPanelWindow":Z
    :goto_3d
    iget v2, v0, Landroid/view/WindowInfo;->type:I

    const/16 v5, 0x7f0

    if-ne v2, v5, :cond_45

    move v2, v4

    goto :goto_46

    :cond_45
    move v2, v3

    .line 4062
    .local v2, "isAccessibilityOverlay":Z
    :goto_46
    iget-object v5, v0, Landroid/view/WindowInfo;->title:Ljava/lang/CharSequence;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_63

    if-nez v1, :cond_52

    if-eqz v2, :cond_63

    .line 4063
    :cond_52
    iget-object v5, p0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {v5}, Landroid/view/WindowManager$LayoutParams;->getTitle()Ljava/lang/CharSequence;

    move-result-object v5

    .line 4064
    .local v5, "title":Ljava/lang/CharSequence;
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_60

    const/4 v6, 0x0

    goto :goto_61

    :cond_60
    move-object v6, v5

    :goto_61
    iput-object v6, v0, Landroid/view/WindowInfo;->title:Ljava/lang/CharSequence;

    .line 4066
    .end local v5  # "title":Ljava/lang/CharSequence;
    :cond_63
    iget-object v5, p0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget-wide v5, v5, Landroid/view/WindowManager$LayoutParams;->accessibilityIdOfAnchor:J

    iput-wide v5, v0, Landroid/view/WindowInfo;->accessibilityIdOfAnchor:J

    .line 4067
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->isFocused()Z

    move-result v5

    iput-boolean v5, v0, Landroid/view/WindowInfo;->focused:Z

    .line 4068
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getTask()Lcom/android/server/wm/Task;

    move-result-object v5

    .line 4069
    .local v5, "task":Lcom/android/server/wm/Task;
    if-eqz v5, :cond_7d

    invoke-virtual {v5}, Lcom/android/server/wm/Task;->inPinnedWindowingMode()Z

    move-result v6

    if-eqz v6, :cond_7d

    move v6, v4

    goto :goto_7e

    :cond_7d
    move v6, v3

    :goto_7e
    iput-boolean v6, v0, Landroid/view/WindowInfo;->inPictureInPicture:Z

    .line 4070
    iget-object v6, p0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v6, v6, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v7, 0x40000

    and-int/2addr v6, v7

    if-eqz v6, :cond_8a

    move v3, v4

    :cond_8a
    iput-boolean v3, v0, Landroid/view/WindowInfo;->hasFlagWatchOutsideTouch:Z

    .line 4073
    iget-boolean v3, p0, Lcom/android/server/wm/WindowState;->mIsChildWindow:Z

    if-eqz v3, :cond_9c

    .line 4074
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getParentWindow()Lcom/android/server/wm/WindowState;

    move-result-object v3

    iget-object v3, v3, Lcom/android/server/wm/WindowState;->mClient:Landroid/view/IWindow;

    invoke-interface {v3}, Landroid/view/IWindow;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    iput-object v3, v0, Landroid/view/WindowInfo;->parentToken:Landroid/os/IBinder;

    .line 4077
    :cond_9c
    iget-object v3, p0, Lcom/android/server/wm/WindowState;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v3}, Lcom/android/server/wm/WindowList;->size()I

    move-result v3

    .line 4078
    .local v3, "childCount":I
    if-lez v3, :cond_c8

    .line 4079
    iget-object v4, v0, Landroid/view/WindowInfo;->childTokens:Ljava/util/List;

    if-nez v4, :cond_af

    .line 4080
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4, v3}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v4, v0, Landroid/view/WindowInfo;->childTokens:Ljava/util/List;

    .line 4082
    :cond_af
    const/4 v4, 0x0

    .local v4, "j":I
    :goto_b0
    if-ge v4, v3, :cond_c8

    .line 4083
    iget-object v6, p0, Lcom/android/server/wm/WindowState;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v6, v4}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/wm/WindowState;

    .line 4084
    .local v6, "child":Lcom/android/server/wm/WindowState;
    iget-object v7, v0, Landroid/view/WindowInfo;->childTokens:Ljava/util/List;

    iget-object v8, v6, Lcom/android/server/wm/WindowState;->mClient:Landroid/view/IWindow;

    invoke-interface {v8}, Landroid/view/IWindow;->asBinder()Landroid/os/IBinder;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4082
    .end local v6  # "child":Lcom/android/server/wm/WindowState;
    add-int/lit8 v4, v4, 0x1

    goto :goto_b0

    .line 4087
    .end local v4  # "j":I
    :cond_c8
    return-object v0
.end method

.method getWindowTag()Ljava/lang/CharSequence;
    .registers 3

    .line 3672
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {v0}, Landroid/view/WindowManager$LayoutParams;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    .line 3673
    .local v0, "tag":Ljava/lang/CharSequence;
    if-eqz v0, :cond_e

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-gtz v1, :cond_12

    .line 3674
    :cond_e
    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget-object v0, v1, Landroid/view/WindowManager$LayoutParams;->packageName:Ljava/lang/String;

    .line 3676
    :cond_12
    return-object v0
.end method

.method getWmDisplayCutout()Lcom/android/server/wm/utils/WmDisplayCutout;
    .registers 2

    .line 1158
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mWindowFrames:Lcom/android/server/wm/WindowFrames;

    iget-object v0, v0, Lcom/android/server/wm/WindowFrames;->mDisplayCutout:Lcom/android/server/wm/utils/WmDisplayCutout;

    return-object v0
.end method

.method handleWindowMovedIfNeeded()V
    .registers 9

    .line 1811
    invoke-direct {p0}, Lcom/android/server/wm/WindowState;->hasMoved()Z

    move-result v0

    if-nez v0, :cond_7

    .line 1812
    return-void

    .line 1817
    :cond_7
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mWindowFrames:Lcom/android/server/wm/WindowFrames;

    iget-object v0, v0, Lcom/android/server/wm/WindowFrames;->mFrame:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    .line 1818
    .local v0, "left":I
    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mWindowFrames:Lcom/android/server/wm/WindowFrames;

    iget-object v1, v1, Lcom/android/server/wm/WindowFrames;->mFrame:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    .line 1819
    .local v1, "top":I
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getTask()Lcom/android/server/wm/Task;

    move-result-object v2

    .line 1820
    .local v2, "task":Lcom/android/server/wm/Task;
    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_2d

    iget-object v5, v2, Lcom/android/server/wm/Task;->mStack:Lcom/android/server/wm/TaskStack;

    .line 1821
    invoke-virtual {v5}, Lcom/android/server/wm/TaskStack;->isAdjustedForMinimizedDockedStack()Z

    move-result v5

    if-nez v5, :cond_2b

    iget-object v5, v2, Lcom/android/server/wm/Task;->mStack:Lcom/android/server/wm/TaskStack;

    .line 1822
    invoke-virtual {v5}, Lcom/android/server/wm/TaskStack;->isAdjustedForIme()Z

    move-result v5

    if-eqz v5, :cond_2d

    :cond_2b
    move v5, v3

    goto :goto_2e

    :cond_2d
    move v5, v4

    .line 1823
    .local v5, "adjustedForMinimizedDockOrIme":Z
    :goto_2e
    iget-object v6, p0, Lcom/android/server/wm/WindowState;->mToken:Lcom/android/server/wm/WindowToken;

    invoke-virtual {v6}, Lcom/android/server/wm/WindowToken;->okToAnimate()Z

    move-result v6

    if-eqz v6, :cond_73

    iget-object v6, p0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v6, v6, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    and-int/lit8 v6, v6, 0x40

    if-nez v6, :cond_73

    .line 1825
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->isDragResizing()Z

    move-result v6

    if-nez v6, :cond_73

    if-nez v5, :cond_73

    .line 1826
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getWindowConfiguration()Landroid/app/WindowConfiguration;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/WindowConfiguration;->hasMovementAnimations()Z

    move-result v6

    if-eqz v6, :cond_73

    iget-object v6, p0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    iget-boolean v6, v6, Lcom/android/server/wm/WindowStateAnimator;->mLastHidden:Z

    if-nez v6, :cond_73

    iget-boolean v6, p0, Lcom/android/server/wm/WindowState;->mSeamlesslyRotated:Z

    if-nez v6, :cond_73

    .line 1830
    iget-object v6, p0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    if-eqz v6, :cond_6d

    invoke-virtual {v6}, Lcom/android/server/wm/AppWindowToken;->getStack()Lcom/android/server/wm/TaskStack;

    move-result-object v6

    iget-object v6, v6, Lcom/android/server/wm/TaskStack;->mDeferHideDimTokens:Ljava/util/List;

    iget-object v7, p0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    invoke-interface {v6, v7}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6d

    goto :goto_6e

    :cond_6d
    move v3, v4

    .line 1831
    .local v3, "deferWindowMode":Z
    :goto_6e
    if-nez v3, :cond_73

    .line 1832
    invoke-direct {p0, v0, v1}, Lcom/android/server/wm/WindowState;->startMoveAnimation(II)V

    .line 1838
    .end local v3  # "deferWindowMode":Z
    :cond_73
    iget-object v3, p0, Lcom/android/server/wm/WindowState;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v3, Lcom/android/server/wm/WindowManagerService;->mAccessibilityController:Lcom/android/server/wm/AccessibilityController;

    if-eqz v3, :cond_8a

    .line 1839
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/wm/DisplayContent;->getDisplayId()I

    move-result v3

    if-nez v3, :cond_8a

    .line 1840
    iget-object v3, p0, Lcom/android/server/wm/WindowState;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v3, Lcom/android/server/wm/WindowManagerService;->mAccessibilityController:Lcom/android/server/wm/AccessibilityController;

    invoke-virtual {v3}, Lcom/android/server/wm/AccessibilityController;->onSomeWindowResizedOrMovedLocked()V

    .line 1844
    :cond_8a
    :try_start_8a
    iget-object v3, p0, Lcom/android/server/wm/WindowState;->mClient:Landroid/view/IWindow;

    invoke-interface {v3, v0, v1}, Landroid/view/IWindow;->moved(II)V
    :try_end_8f
    .catch Landroid/os/RemoteException; {:try_start_8a .. :try_end_8f} :catch_90

    .line 1846
    goto :goto_91

    .line 1845
    :catch_90
    move-exception v3

    .line 1847
    :goto_91
    iput-boolean v4, p0, Lcom/android/server/wm/WindowState;->mMovedByResize:Z

    .line 1848
    return-void
.end method

.method public hasAppShownWindows()Z
    .registers 2

    .line 1446
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

    .line 1468
    iget-boolean v0, p0, Lcom/android/server/wm/WindowState;->mAppFreezing:Z

    if-nez v0, :cond_22

    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->isDrawnLw()Z

    move-result v0

    if-eqz v0, :cond_22

    iget v0, p0, Lcom/android/server/wm/WindowState;->mViewVisibility:I

    if-eqz v0, :cond_20

    .line 1469
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->isAnimating()Z

    move-result v0

    if-eqz v0, :cond_22

    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    iget-object v0, v0, Lcom/android/server/wm/DisplayContent;->mAppTransition:Lcom/android/server/wm/AppTransition;

    invoke-virtual {v0}, Lcom/android/server/wm/AppTransition;->isTransitionSet()Z

    move-result v0

    if-nez v0, :cond_22

    .line 1470
    :cond_20
    const/4 v0, 0x1

    return v0

    .line 1473
    :cond_22
    invoke-super {p0}, Lcom/android/server/wm/WindowContainer;->hasContentToDisplay()Z

    move-result v0

    return v0
.end method

.method public hasDrawnLw()Z
    .registers 3

    .line 2625
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

.method hasVisibleNotDrawnWallpaper()Z
    .registers 5

    .line 4415
    iget-boolean v0, p0, Lcom/android/server/wm/WindowState;->mWallpaperVisible:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_c

    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->isDrawnLw()Z

    move-result v0

    if-nez v0, :cond_c

    .line 4416
    return v1

    .line 4418
    :cond_c
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowList;->size()I

    move-result v0

    sub-int/2addr v0, v1

    .local v0, "j":I
    :goto_13
    if-ltz v0, :cond_27

    .line 4419
    iget-object v2, p0, Lcom/android/server/wm/WindowState;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v2, v0}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/WindowState;

    .line 4420
    .local v2, "c":Lcom/android/server/wm/WindowState;
    invoke-virtual {v2}, Lcom/android/server/wm/WindowState;->hasVisibleNotDrawnWallpaper()Z

    move-result v3

    if-eqz v3, :cond_24

    .line 4421
    return v1

    .line 4418
    .end local v2  # "c":Lcom/android/server/wm/WindowState;
    :cond_24
    add-int/lit8 v0, v0, -0x1

    goto :goto_13

    .line 4424
    .end local v0  # "j":I
    :cond_27
    const/4 v0, 0x0

    return v0
.end method

.method public hideLw(Z)Z
    .registers 3
    .param p1, "doAnimation"  # Z

    .line 2687
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/android/server/wm/WindowState;->hideLw(ZZ)Z

    move-result v0

    return v0
.end method

.method hideLw(ZZ)Z
    .registers 10
    .param p1, "doAnimation"  # Z
    .param p2, "requestAnim"  # Z

    .line 2691
    if-eqz p1, :cond_b

    .line 2692
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mToken:Lcom/android/server/wm/WindowToken;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowToken;->okToAnimate()Z

    move-result v0

    if-nez v0, :cond_b

    .line 2693
    const/4 p1, 0x0

    .line 2697
    :cond_b
    if-eqz p1, :cond_10

    iget-boolean v0, p0, Lcom/android/server/wm/WindowState;->mLegacyPolicyVisibilityAfterAnim:Z

    goto :goto_14

    :cond_10
    invoke-direct {p0}, Lcom/android/server/wm/WindowState;->isLegacyPolicyVisibility()Z

    move-result v0

    .line 2698
    .local v0, "current":Z
    :goto_14
    const/4 v1, 0x0

    if-nez v0, :cond_18

    .line 2700
    return v1

    .line 2702
    :cond_18
    if-eqz p1, :cond_27

    .line 2703
    iget-object v2, p0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    const/4 v3, 0x2

    invoke-virtual {v2, v3, v1}, Lcom/android/server/wm/WindowStateAnimator;->applyAnimationLocked(IZ)Z

    .line 2704
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->isAnimating()Z

    move-result v2

    if-nez v2, :cond_27

    .line 2705
    const/4 p1, 0x0

    .line 2708
    :cond_27
    iput-boolean v1, p0, Lcom/android/server/wm/WindowState;->mLegacyPolicyVisibilityAfterAnim:Z

    .line 2709
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->isFocused()Z

    move-result v2

    .line 2710
    .local v2, "isFocused":Z
    const/4 v3, 0x1

    if-nez p1, :cond_61

    .line 2711
    sget-boolean v4, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_VISIBILITY:Z

    const-string v5, "WindowManager"

    if-eqz v4, :cond_4a

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Policy visibility false: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2712
    :cond_4a
    invoke-virtual {p0, v3}, Lcom/android/server/wm/WindowState;->clearPolicyVisibilityFlag(I)V

    .line 2716
    iget-object v4, p0, Lcom/android/server/wm/WindowState;->mWmService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v4}, Lcom/android/server/wm/WindowManagerService;->enableScreenIfNeededLocked()V

    .line 2717
    if-eqz v2, :cond_61

    .line 2718
    sget-boolean v4, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_FOCUS_LIGHT:Z

    if-eqz v4, :cond_5d

    const-string v4, "WindowState.hideLw: setting mFocusMayChange true"

    invoke-static {v5, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2720
    :cond_5d
    iget-object v4, p0, Lcom/android/server/wm/WindowState;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iput-boolean v3, v4, Lcom/android/server/wm/WindowManagerService;->mFocusMayChange:Z

    .line 2723
    :cond_61
    if-eqz p2, :cond_68

    .line 2724
    iget-object v4, p0, Lcom/android/server/wm/WindowState;->mWmService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v4}, Lcom/android/server/wm/WindowManagerService;->scheduleAnimationLocked()V

    .line 2726
    :cond_68
    if-eqz v2, :cond_6f

    .line 2727
    iget-object v4, p0, Lcom/android/server/wm/WindowState;->mWmService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v4, v1, v1}, Lcom/android/server/wm/WindowManagerService;->updateFocusedWindowLocked(IZ)Z

    .line 2729
    :cond_6f
    return v3
.end method

.method hideNonSystemOverlayWindowsWhenVisible()Z
    .registers 3

    .line 3808
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

    .line 2825
    iget-boolean v0, p0, Lcom/android/server/wm/WindowState;->mPermanentlyHidden:Z

    if-nez v0, :cond_a

    .line 2826
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/wm/WindowState;->mPermanentlyHidden:Z

    .line 2827
    invoke-virtual {p0, v0, v0}, Lcom/android/server/wm/WindowState;->hideLw(ZZ)Z

    .line 2829
    :cond_a
    return-void
.end method

.method hideWallpaperWindow(ZLjava/lang/String;)V
    .registers 7
    .param p1, "wasDeferred"  # Z
    .param p2, "reason"  # Ljava/lang/String;

    .line 4373
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "j":I
    :goto_8
    if-ltz v0, :cond_18

    .line 4374
    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v1, v0}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/WindowState;

    .line 4375
    .local v1, "c":Lcom/android/server/wm/WindowState;
    invoke-virtual {v1, p1, p2}, Lcom/android/server/wm/WindowState;->hideWallpaperWindow(ZLjava/lang/String;)V

    .line 4373
    .end local v1  # "c":Lcom/android/server/wm/WindowState;
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    .line 4377
    .end local v0  # "j":I
    :cond_18
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    iget-boolean v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mLastHidden:Z

    if-eqz v0, :cond_20

    if-eqz p1, :cond_5c

    .line 4378
    :cond_20
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    invoke-virtual {v0, p2}, Lcom/android/server/wm/WindowStateAnimator;->hide(Ljava/lang/String;)V

    .line 4379
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    iget-object v0, v0, Lcom/android/server/wm/DisplayContent;->mWallpaperController:Lcom/android/server/wm/WallpaperController;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/android/server/wm/WallpaperController;->mDeferredHideWallpaper:Lcom/android/server/wm/WindowState;

    .line 4380
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/server/wm/WindowState;->dispatchWallpaperVisibility(Z)V

    .line 4381
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    .line 4382
    .local v0, "displayContent":Lcom/android/server/wm/DisplayContent;
    if-eqz v0, :cond_5c

    .line 4383
    iget v1, v0, Lcom/android/server/wm/DisplayContent;->pendingLayoutChanges:I

    or-int/lit8 v1, v1, 0x4

    iput v1, v0, Lcom/android/server/wm/DisplayContent;->pendingLayoutChanges:I

    .line 4384
    sget-boolean v1, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_LAYOUT_REPEATS:Z

    if-eqz v1, :cond_5c

    .line 4385
    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mWindowPlacerLocked:Lcom/android/server/wm/WindowSurfacePlacer;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "hideWallpaperWindow "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget v3, v0, Lcom/android/server/wm/DisplayContent;->pendingLayoutChanges:I

    invoke-virtual {v1, v2, v3}, Lcom/android/server/wm/WindowSurfacePlacer;->debugLayoutRepeats(Ljava/lang/String;I)V

    .line 4390
    .end local v0  # "displayContent":Lcom/android/server/wm/DisplayContent;
    :cond_5c
    return-void
.end method

.method inSizeCompatMode()Z
    .registers 3

    .line 802
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    and-int/lit16 v0, v0, 0x80

    if-nez v0, :cond_1c

    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    if-eqz v0, :cond_1a

    .line 803
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

    .line 802
    :goto_1d
    return v0
.end method

.method initAppOpsState()V
    .registers 6

    .line 2782
    iget v0, p0, Lcom/android/server/wm/WindowState;->mAppOp:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_27

    iget-boolean v0, p0, Lcom/android/server/wm/WindowState;->mAppOpVisibility:Z

    if-nez v0, :cond_a

    goto :goto_27

    .line 2789
    :cond_a
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mAppOps:Landroid/app/AppOpsManager;

    iget v1, p0, Lcom/android/server/wm/WindowState;->mAppOp:I

    .line 2790
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getOwningUid()I

    move-result v2

    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getOwningPackage()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    .line 2789
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/app/AppOpsManager;->startOpNoThrow(IILjava/lang/String;Z)I

    move-result v0

    .line 2791
    .local v0, "mode":I
    if-eqz v0, :cond_26

    const/4 v1, 0x3

    if-eq v0, v1, :cond_26

    .line 2792
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/android/server/wm/WindowState;->setAppOpVisibilityLw(Z)V

    .line 2794
    :cond_26
    return-void

    .line 2783
    .end local v0  # "mode":I
    :cond_27
    :goto_27
    return-void
.end method

.method public isAlive()Z
    .registers 2

    .line 2856
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mClient:Landroid/view/IWindow;

    invoke-interface {v0}, Landroid/view/IWindow;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-interface {v0}, Landroid/os/IBinder;->isBinderAlive()Z

    move-result v0

    return v0
.end method

.method public isAnimatingLw()Z
    .registers 2

    .line 1653
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->isAnimating()Z

    move-result v0

    return v0
.end method

.method isChildWindow()Z
    .registers 2

    .line 3793
    iget-boolean v0, p0, Lcom/android/server/wm/WindowState;->mIsChildWindow:Z

    return v0
.end method

.method isClosing()Z
    .registers 2

    .line 2860
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
    .registers 3

    .line 2992
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    .line 2993
    .local v0, "displayContent":Lcom/android/server/wm/DisplayContent;
    if-nez v0, :cond_8

    .line 2995
    const/4 v1, 0x0

    return v1

    .line 2997
    :cond_8
    iget-boolean v1, v0, Lcom/android/server/wm/DisplayContent;->isDefaultDisplay:Z

    return v1
.end method

.method public isDimming()Z
    .registers 2

    .line 5017
    iget-boolean v0, p0, Lcom/android/server/wm/WindowState;->mIsDimming:Z

    return v0
.end method

.method public isDisplayedLw()Z
    .registers 3

    .line 1642
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    .line 1643
    .local v0, "atoken":Lcom/android/server/wm/AppWindowToken;
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->isDrawnLw()Z

    move-result v1

    if-eqz v1, :cond_22

    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->isVisibleByPolicy()Z

    move-result v1

    if-eqz v1, :cond_22

    .line 1644
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->isParentWindowHidden()Z

    move-result v1

    if-nez v1, :cond_1a

    if-eqz v0, :cond_20

    iget-boolean v1, v0, Lcom/android/server/wm/AppWindowToken;->hiddenRequested:Z

    if-eqz v1, :cond_20

    .line 1645
    :cond_1a
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->isAnimating()Z

    move-result v1

    if-eqz v1, :cond_22

    :cond_20
    const/4 v1, 0x1

    goto :goto_23

    :cond_22
    const/4 v1, 0x0

    .line 1643
    :goto_23
    return v1
.end method

.method isDockedResizing()Z
    .registers 3

    .line 3461
    iget-boolean v0, p0, Lcom/android/server/wm/WindowState;->mDragResizing:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_b

    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getResizeMode()I

    move-result v0

    if-eq v0, v1, :cond_1b

    .line 3462
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

    .line 3461
    :goto_1d
    return v1
.end method

.method isDragResizeChanged()Z
    .registers 3

    .line 3383
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

    .line 3457
    iget-boolean v0, p0, Lcom/android/server/wm/WindowState;->mDragResizing:Z

    return v0
.end method

.method public isDrawFinishedLw()Z
    .registers 3

    .line 1673
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

    .line 1685
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

    .line 3328
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

    .line 1658
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    .line 1659
    .local v0, "atoken":Lcom/android/server/wm/AppWindowToken;
    iget v1, p0, Lcom/android/server/wm/WindowState;->mViewVisibility:I

    const/16 v2, 0x8

    if-eq v1, v2, :cond_33

    iget-boolean v1, p0, Lcom/android/server/wm/WindowState;->mRelayoutCalled:Z

    if-eqz v1, :cond_33

    if-nez v0, :cond_16

    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mToken:Lcom/android/server/wm/WindowToken;

    .line 1661
    invoke-virtual {v1}, Lcom/android/server/wm/WindowToken;->isHidden()Z

    move-result v1

    if-nez v1, :cond_33

    :cond_16
    if-eqz v0, :cond_1c

    iget-boolean v1, v0, Lcom/android/server/wm/AppWindowToken;->hiddenRequested:Z

    if-nez v1, :cond_33

    .line 1663
    :cond_1c
    invoke-direct {p0}, Lcom/android/server/wm/WindowState;->isParentWindowGoneForLayout()Z

    move-result v1

    if-nez v1, :cond_33

    iget-boolean v1, p0, Lcom/android/server/wm/WindowState;->mAnimatingExit:Z

    if-eqz v1, :cond_2c

    .line 1664
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->isAnimatingLw()Z

    move-result v1

    if-eqz v1, :cond_30

    :cond_2c
    iget-boolean v1, p0, Lcom/android/server/wm/WindowState;->mDestroying:Z

    if-eqz v1, :cond_31

    :cond_30
    goto :goto_33

    :cond_31
    const/4 v1, 0x0

    goto :goto_34

    :cond_33
    :goto_33
    const/4 v1, 0x1

    .line 1659
    :goto_34
    return v1
.end method

.method isIdentityMatrix(FFFF)Z
    .registers 9
    .param p1, "dsdx"  # F
    .param p2, "dtdx"  # F
    .param p3, "dsdy"  # F
    .param p4, "dtdy"  # F

    .line 1450
    const v0, 0x3f7fff58  # 0.99999f

    cmpg-float v1, p1, v0

    const/4 v2, 0x0

    if-ltz v1, :cond_36

    const v1, 0x3f800054  # 1.00001f

    cmpl-float v3, p1, v1

    if-lez v3, :cond_10

    goto :goto_36

    .line 1451
    :cond_10
    cmpg-float v0, p4, v0

    if-ltz v0, :cond_35

    cmpl-float v0, p4, v1

    if-lez v0, :cond_19

    goto :goto_35

    .line 1452
    :cond_19
    const v0, -0x4a79c843  # -1.0E-6f

    cmpg-float v1, p2, v0

    if-ltz v1, :cond_34

    const v1, 0x358637bd  # 1.0E-6f

    cmpl-float v3, p2, v1

    if-lez v3, :cond_28

    goto :goto_34

    .line 1453
    :cond_28
    cmpg-float v0, p3, v0

    if-ltz v0, :cond_33

    cmpl-float v0, p3, v1

    if-lez v0, :cond_31

    goto :goto_33

    .line 1454
    :cond_31
    const/4 v0, 0x1

    return v0

    .line 1453
    :cond_33
    :goto_33
    return v2

    .line 1452
    :cond_34
    :goto_34
    return v2

    .line 1451
    :cond_35
    :goto_35
    return v2

    .line 1450
    :cond_36
    :goto_36
    return v2
.end method

.method isImplicitlyExcludingAllSystemGestures()Z
    .registers 7

    .line 668
    const/16 v0, 0x1002

    .line 670
    .local v0, "immersiveStickyFlags":I
    iget v1, p0, Lcom/android/server/wm/WindowState;->mSystemUiVisibility:I

    const/16 v2, 0x1002

    and-int/2addr v1, v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-ne v1, v2, :cond_d

    move v1, v3

    goto :goto_e

    :cond_d
    move v1, v4

    .line 672
    .local v1, "immersiveSticky":Z
    :goto_e
    if-eqz v1, :cond_21

    iget-object v2, p0, Lcom/android/server/wm/WindowState;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-boolean v2, v2, Lcom/android/server/wm/WindowManagerService;->mSystemGestureExcludedByPreQStickyImmersive:Z

    if-eqz v2, :cond_21

    iget-object v2, p0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    if-eqz v2, :cond_21

    iget v2, v2, Lcom/android/server/wm/AppWindowToken;->mTargetSdk:I

    const/16 v5, 0x1d

    if-ge v2, v5, :cond_21

    goto :goto_22

    :cond_21
    move v3, v4

    :goto_22
    return v3
.end method

.method public isInputMethodTarget()Z
    .registers 2

    .line 5090
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

    .line 3966
    iget-boolean v0, p0, Lcom/android/server/wm/WindowState;->mIsImWindow:Z

    return v0
.end method

.method isInteresting()Z
    .registers 3

    .line 1594
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    if-eqz v0, :cond_18

    iget-boolean v1, p0, Lcom/android/server/wm/WindowState;->mAppDied:Z

    if-nez v1, :cond_18

    .line 1595
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

    .line 1594
    :goto_19
    return v0
.end method

.method isLaidOut()Z
    .registers 3

    .line 4661
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

    .line 1886
    iget-boolean v0, p0, Lcom/android/server/wm/WindowState;->mLastConfigReportedToClient:Z

    return v0
.end method

.method isLetterboxedAppWindow()Z
    .registers 2

    .line 3340
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->inMultiWindowMode()Z

    move-result v0

    if-nez v0, :cond_c

    invoke-direct {p0}, Lcom/android/server/wm/WindowState;->matchesDisplayBounds()Z

    move-result v0

    if-eqz v0, :cond_12

    .line 3341
    :cond_c
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->isLetterboxedForDisplayCutoutLw()Z

    move-result v0

    if-eqz v0, :cond_14

    :cond_12
    const/4 v0, 0x1

    goto :goto_15

    :cond_14
    const/4 v0, 0x0

    .line 3340
    :goto_15
    return v0
.end method

.method public isLetterboxedForDisplayCutoutLw()Z
    .registers 4

    .line 3346
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    .line 3348
    return v1

    .line 3350
    :cond_6
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mWindowFrames:Lcom/android/server/wm/WindowFrames;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowFrames;->parentFrameWasClippedByDisplayCutout()Z

    move-result v0

    if-nez v0, :cond_f

    .line 3352
    return v1

    .line 3354
    :cond_f
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->layoutInDisplayCutoutMode:I

    const/4 v2, 0x1

    if-ne v0, v2, :cond_17

    .line 3356
    return v1

    .line 3358
    :cond_17
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {v0}, Landroid/view/WindowManager$LayoutParams;->isFullscreen()Z

    move-result v0

    if-nez v0, :cond_20

    .line 3360
    return v1

    .line 3364
    :cond_20
    invoke-direct {p0}, Lcom/android/server/wm/WindowState;->frameCoversEntireAppTokenBounds()Z

    move-result v0

    xor-int/2addr v0, v2

    return v0
.end method

.method public isLetterboxedOverlappingWith(Landroid/graphics/Rect;)Z
    .registers 3
    .param p1, "rect"  # Landroid/graphics/Rect;

    .line 3379
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    if-eqz v0, :cond_c

    invoke-virtual {v0, p1}, Lcom/android/server/wm/AppWindowToken;->isLetterboxOverlappingWith(Landroid/graphics/Rect;)Z

    move-result v0

    if-eqz v0, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    return v0
.end method

.method isMzWindowModeOrDefer()Z
    .registers 3

    .line 5224
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->isMzWindowMode()Z

    move-result v0

    if-nez v0, :cond_1b

    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    if-eqz v0, :cond_19

    invoke-virtual {v0}, Lcom/android/server/wm/AppWindowToken;->getStack()Lcom/android/server/wm/TaskStack;

    move-result-object v0

    iget-object v0, v0, Lcom/android/server/wm/TaskStack;->mDeferHideDimTokens:Ljava/util/List;

    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_19

    goto :goto_1b

    :cond_19
    const/4 v0, 0x0

    goto :goto_1c

    :cond_1b
    :goto_1b
    const/4 v0, 0x1

    :goto_1c
    return v0
.end method

.method isObscuringDisplay()Z
    .registers 4

    .line 1863
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getTask()Lcom/android/server/wm/Task;

    move-result-object v0

    .line 1864
    .local v0, "task":Lcom/android/server/wm/Task;
    const/4 v1, 0x0

    if-eqz v0, :cond_14

    iget-object v2, v0, Lcom/android/server/wm/Task;->mStack:Lcom/android/server/wm/TaskStack;

    if-eqz v2, :cond_14

    iget-object v2, v0, Lcom/android/server/wm/Task;->mStack:Lcom/android/server/wm/TaskStack;

    invoke-virtual {v2}, Lcom/android/server/wm/TaskStack;->fillsParent()Z

    move-result v2

    if-nez v2, :cond_14

    .line 1865
    return v1

    .line 1867
    :cond_14
    invoke-direct {p0}, Lcom/android/server/wm/WindowState;->isOpaqueDrawn()Z

    move-result v2

    if-eqz v2, :cond_21

    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->fillsDisplay()Z

    move-result v2

    if-eqz v2, :cond_21

    const/4 v1, 0x1

    :cond_21
    return v1
.end method

.method isOnScreen()Z
    .registers 5

    .line 1567
    iget-boolean v0, p0, Lcom/android/server/wm/WindowState;->mHasSurface:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_35

    iget-boolean v0, p0, Lcom/android/server/wm/WindowState;->mDestroying:Z

    if-nez v0, :cond_35

    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->isVisibleByPolicy()Z

    move-result v0

    if-nez v0, :cond_10

    goto :goto_35

    .line 1570
    :cond_10
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    .line 1571
    .local v0, "atoken":Lcom/android/server/wm/AppWindowToken;
    const/4 v2, 0x1

    if-eqz v0, :cond_27

    .line 1572
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->isParentWindowHidden()Z

    move-result v3

    if-nez v3, :cond_1f

    iget-boolean v3, v0, Lcom/android/server/wm/AppWindowToken;->hiddenRequested:Z

    if-eqz v3, :cond_25

    .line 1573
    :cond_1f
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->isAnimating()Z

    move-result v3

    if-eqz v3, :cond_26

    :cond_25
    move v1, v2

    .line 1572
    :cond_26
    return v1

    .line 1575
    :cond_27
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->isParentWindowHidden()Z

    move-result v3

    if-eqz v3, :cond_33

    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->isAnimating()Z

    move-result v3

    if-eqz v3, :cond_34

    :cond_33
    move v1, v2

    :cond_34
    return v1

    .line 1568
    .end local v0  # "atoken":Lcom/android/server/wm/AppWindowToken;
    :cond_35
    :goto_35
    return v1
.end method

.method isParentWindowHidden()Z
    .registers 3

    .line 3836
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getParentWindow()Lcom/android/server/wm/WindowState;

    move-result-object v0

    .line 3837
    .local v0, "parent":Lcom/android/server/wm/WindowState;
    if-eqz v0, :cond_c

    iget-boolean v1, v0, Lcom/android/server/wm/WindowState;->mHidden:Z

    if-eqz v1, :cond_c

    const/4 v1, 0x1

    goto :goto_d

    :cond_c
    const/4 v1, 0x0

    :goto_d
    return v1
.end method

.method isPotentialDragTarget()Z
    .registers 2

    .line 1545
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

    .line 1604
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

    .line 1605
    return v1

    .line 1607
    :cond_14
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->isParentWindowHidden()Z

    move-result v0

    const/4 v2, 0x1

    if-nez v0, :cond_29

    iget v0, p0, Lcom/android/server/wm/WindowState;->mViewVisibility:I

    if-nez v0, :cond_29

    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mToken:Lcom/android/server/wm/WindowToken;

    .line 1608
    invoke-virtual {v0}, Lcom/android/server/wm/WindowToken;->isHidden()Z

    move-result v0

    if-nez v0, :cond_29

    move v0, v2

    goto :goto_2a

    :cond_29
    move v0, v1

    .line 1609
    .local v0, "parentAndClientVisible":Z
    :goto_2a
    iget-boolean v3, p0, Lcom/android/server/wm/WindowState;->mHasSurface:Z

    if-eqz v3, :cond_42

    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->isVisibleByPolicy()Z

    move-result v3

    if-eqz v3, :cond_42

    iget-boolean v3, p0, Lcom/android/server/wm/WindowState;->mDestroying:Z

    if-nez v3, :cond_42

    if-nez v0, :cond_40

    .line 1610
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->isAnimating()Z

    move-result v3

    if-eqz v3, :cond_42

    :cond_40
    move v1, v2

    goto :goto_43

    :cond_42
    nop

    .line 1609
    :goto_43
    return v1
.end method

.method public isRtl()Z
    .registers 3

    .line 4369
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

    .line 4253
    move-object v0, p0

    .line 4255
    .local v0, "window":Lcom/android/server/wm/WindowState;
    :goto_1
    iget-boolean v1, v0, Lcom/android/server/wm/WindowState;->mAnimatingExit:Z

    if-eqz v1, :cond_7

    .line 4256
    const/4 v1, 0x1

    return v1

    .line 4258
    :cond_7
    invoke-virtual {v0}, Lcom/android/server/wm/WindowState;->getParentWindow()Lcom/android/server/wm/WindowState;

    move-result-object v0

    .line 4259
    if-nez v0, :cond_f

    .line 4260
    const/4 v1, 0x0

    return v1

    .line 4259
    :cond_f
    goto :goto_1
.end method

.method isVisible()Z
    .registers 2

    .line 1478
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->wouldBeVisibleIfPolicyIgnored()Z

    move-result v0

    if-eqz v0, :cond_18

    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->isVisibleByPolicy()Z

    move-result v0

    if-eqz v0, :cond_18

    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mInsetProvider:Lcom/android/server/wm/InsetsSourceProvider;

    if-eqz v0, :cond_16

    .line 1481
    invoke-virtual {v0}, Lcom/android/server/wm/InsetsSourceProvider;->isClientVisible()Z

    move-result v0

    if-eqz v0, :cond_18

    :cond_16
    const/4 v0, 0x1

    goto :goto_19

    :cond_18
    const/4 v0, 0x0

    .line 1478
    :goto_19
    return v0
.end method

.method isVisibleByPolicy()Z
    .registers 3

    .line 1489
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

    .line 1517
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->isVisible()Z

    move-result v0

    return v0
.end method

.method isVisibleNow()Z
    .registers 3

    .line 1535
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mToken:Lcom/android/server/wm/WindowToken;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowToken;->isHidden()Z

    move-result v0

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_17

    .line 1536
    :cond_f
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_17

    const/4 v0, 0x1

    goto :goto_18

    :cond_17
    const/4 v0, 0x0

    .line 1535
    :goto_18
    return v0
.end method

.method isVisibleOrAdding()Z
    .registers 3

    .line 1554
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    .line 1555
    .local v0, "atoken":Lcom/android/server/wm/AppWindowToken;
    iget-boolean v1, p0, Lcom/android/server/wm/WindowState;->mHasSurface:Z

    if-nez v1, :cond_e

    iget-boolean v1, p0, Lcom/android/server/wm/WindowState;->mRelayoutCalled:Z

    if-nez v1, :cond_2a

    iget v1, p0, Lcom/android/server/wm/WindowState;->mViewVisibility:I

    if-nez v1, :cond_2a

    .line 1556
    :cond_e
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->isVisibleByPolicy()Z

    move-result v1

    if-eqz v1, :cond_2a

    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->isParentWindowHidden()Z

    move-result v1

    if-nez v1, :cond_2a

    if-eqz v0, :cond_20

    iget-boolean v1, v0, Lcom/android/server/wm/AppWindowToken;->hiddenRequested:Z

    if-nez v1, :cond_2a

    :cond_20
    iget-boolean v1, p0, Lcom/android/server/wm/WindowState;->mAnimatingExit:Z

    if-nez v1, :cond_2a

    iget-boolean v1, p0, Lcom/android/server/wm/WindowState;->mDestroying:Z

    if-nez v1, :cond_2a

    const/4 v1, 0x1

    goto :goto_2b

    :cond_2a
    const/4 v1, 0x0

    .line 1555
    :goto_2b
    return v1
.end method

.method public isVoiceInteraction()Z
    .registers 2

    .line 1216
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

    .line 1526
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    if-eqz v0, :cond_10

    iget-boolean v0, v0, Lcom/android/server/wm/AppWindowToken;->hiddenRequested:Z

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    invoke-virtual {v0}, Lcom/android/server/wm/AppWindowToken;->isSelfAnimating()Z

    move-result v0

    if-eqz v0, :cond_18

    .line 1527
    :cond_10
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_18

    const/4 v0, 0x1

    goto :goto_19

    :cond_18
    const/4 v0, 0x0

    .line 1526
    :goto_19
    return v0
.end method

.method layoutInParentFrame()Z
    .registers 3

    .line 3797
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

    .line 1584
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

    .line 1586
    .local v0, "isAppType":Z
    :goto_13
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->isOnScreen()Z

    move-result v3

    if-nez v3, :cond_1b

    if-eqz v0, :cond_24

    :cond_1b
    iget-boolean v3, p0, Lcom/android/server/wm/WindowState;->mAnimatingExit:Z

    if-nez v3, :cond_24

    iget-boolean v3, p0, Lcom/android/server/wm/WindowState;->mDestroying:Z

    if-nez v3, :cond_24

    move v1, v2

    :cond_24
    return v1
.end method

.method needsRelativeLayeringToIme()Z
    .registers 6

    .line 4984
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->inSplitScreenWindowingMode()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    .line 4985
    return v1

    .line 4988
    :cond_8
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->isChildWindow()Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_1a

    .line 4990
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getParentWindow()Lcom/android/server/wm/WindowState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/WindowState;->isInputMethodTarget()Z

    move-result v0

    if-eqz v0, :cond_38

    .line 4991
    return v2

    .line 4993
    :cond_1a
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    if-eqz v0, :cond_38

    .line 4997
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    iget-object v0, v0, Lcom/android/server/wm/DisplayContent;->mInputMethodTarget:Lcom/android/server/wm/WindowState;

    .line 4998
    .local v0, "imeTarget":Lcom/android/server/wm/WindowState;
    if-eqz v0, :cond_36

    if-eq v0, p0, :cond_36

    iget-object v3, v0, Lcom/android/server/wm/WindowState;->mToken:Lcom/android/server/wm/WindowToken;

    iget-object v4, p0, Lcom/android/server/wm/WindowState;->mToken:Lcom/android/server/wm/WindowToken;

    if-ne v3, v4, :cond_36

    .line 4999
    invoke-virtual {v0, p0}, Lcom/android/server/wm/WindowState;->compareTo(Lcom/android/server/wm/WindowContainer;)I

    move-result v3

    if-gtz v3, :cond_36

    move v1, v2

    goto :goto_37

    :cond_36
    nop

    .line 5000
    .local v1, "inTokenWithAndAboveImeTarget":Z
    :goto_37
    return v1

    .line 5002
    .end local v0  # "imeTarget":Lcom/android/server/wm/WindowState;
    .end local v1  # "inTokenWithAndAboveImeTarget":Z
    :cond_38
    return v1
.end method

.method needsZBoost()Z
    .registers 4

    .line 4847
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    iget-object v0, v0, Lcom/android/server/wm/DisplayContent;->mInputMethodTarget:Lcom/android/server/wm/WindowState;

    .line 4848
    .local v0, "inputMethodTarget":Lcom/android/server/wm/WindowState;
    iget-boolean v1, p0, Lcom/android/server/wm/WindowState;->mIsImWindow:Z

    if-eqz v1, :cond_15

    if-eqz v0, :cond_15

    .line 4849
    iget-object v1, v0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    .line 4850
    .local v1, "appToken":Lcom/android/server/wm/AppWindowToken;
    if-eqz v1, :cond_15

    .line 4851
    invoke-virtual {v1}, Lcom/android/server/wm/AppWindowToken;->needsZBoost()Z

    move-result v2

    return v2

    .line 4854
    .end local v1  # "appToken":Lcom/android/server/wm/AppWindowToken;
    :cond_15
    iget-boolean v1, p0, Lcom/android/server/wm/WindowState;->mWillReplaceWindow:Z

    return v1
.end method

.method notifyInsetsChanged()V
    .registers 4

    .line 3249
    :try_start_0
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mClient:Landroid/view/IWindow;

    .line 3250
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/wm/DisplayContent;->getInsetsStateController()Lcom/android/server/wm/InsetsStateController;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/android/server/wm/InsetsStateController;->getInsetsForDispatch(Lcom/android/server/wm/WindowState;)Landroid/view/InsetsState;

    move-result-object v1

    .line 3249
    invoke-interface {v0, v1}, Landroid/view/IWindow;->insetsChanged(Landroid/view/InsetsState;)V
    :try_end_11
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_11} :catch_12

    .line 3253
    goto :goto_1a

    .line 3251
    :catch_12
    move-exception v0

    .line 3252
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "WindowManager"

    const-string v2, "Failed to deliver inset state change"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3254
    .end local v0  # "e":Landroid/os/RemoteException;
    :goto_1a
    return-void
.end method

.method notifyInsetsControlChanged()V
    .registers 5

    .line 3257
    nop

    .line 3258
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->getInsetsStateController()Lcom/android/server/wm/InsetsStateController;

    move-result-object v0

    .line 3260
    .local v0, "stateController":Lcom/android/server/wm/InsetsStateController;
    :try_start_9
    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mClient:Landroid/view/IWindow;

    invoke-virtual {v0, p0}, Lcom/android/server/wm/InsetsStateController;->getInsetsForDispatch(Lcom/android/server/wm/WindowState;)Landroid/view/InsetsState;

    move-result-object v2

    .line 3261
    invoke-virtual {v0, p0}, Lcom/android/server/wm/InsetsStateController;->getControlsForDispatch(Lcom/android/server/wm/WindowState;)[Landroid/view/InsetsSourceControl;

    move-result-object v3

    .line 3260
    invoke-interface {v1, v2, v3}, Landroid/view/IWindow;->insetsControlChanged(Landroid/view/InsetsState;[Landroid/view/InsetsSourceControl;)V
    :try_end_16
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_16} :catch_17

    .line 3264
    goto :goto_1f

    .line 3262
    :catch_17
    move-exception v1

    .line 3263
    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "WindowManager"

    const-string v3, "Failed to deliver inset state change"

    invoke-static {v2, v3, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3265
    .end local v1  # "e":Landroid/os/RemoteException;
    :goto_1f
    return-void
.end method

.method protected onAnimationFinished()V
    .registers 2

    .line 4716
    invoke-super {p0}, Lcom/android/server/wm/WindowContainer;->onAnimationFinished()V

    .line 4717
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowStateAnimator;->onAnimationFinished()V

    .line 4718
    return-void
.end method

.method public onAnimationLeashCreated(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;)V
    .registers 5
    .param p1, "t"  # Landroid/view/SurfaceControl$Transaction;
    .param p2, "leash"  # Landroid/view/SurfaceControl;

    .line 4887
    invoke-super {p0, p1, p2}, Lcom/android/server/wm/WindowContainer;->onAnimationLeashCreated(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;)V

    .line 4890
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mSurfaceControl:Landroid/view/SurfaceControl;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1, v1}, Landroid/view/SurfaceControl$Transaction;->setPosition(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    .line 4891
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mLastSurfacePosition:Landroid/graphics/Point;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1}, Landroid/graphics/Point;->set(II)V

    .line 4892
    return-void
.end method

.method public onAnimationLeashLost(Landroid/view/SurfaceControl$Transaction;)V
    .registers 2
    .param p1, "t"  # Landroid/view/SurfaceControl$Transaction;

    .line 4896
    invoke-super {p0, p1}, Lcom/android/server/wm/WindowContainer;->onAnimationLeashLost(Landroid/view/SurfaceControl$Transaction;)V

    .line 4897
    invoke-virtual {p0, p1}, Lcom/android/server/wm/WindowState;->updateSurfacePosition(Landroid/view/SurfaceControl$Transaction;)V

    .line 4898
    return-void
.end method

.method onAppVisibilityChanged(ZZ)Z
    .registers 10
    .param p1, "visible"  # Z
    .param p2, "runningAppAnimation"  # Z

    .line 1710
    const/4 v0, 0x0

    .line 1712
    .local v0, "changed":Z
    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowList;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    .local v1, "i":I
    :goto_9
    if-ltz v1, :cond_1b

    .line 1713
    iget-object v3, p0, Lcom/android/server/wm/WindowState;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v3, v1}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/WindowState;

    .line 1714
    .local v3, "c":Lcom/android/server/wm/WindowState;
    invoke-virtual {v3, p1, p2}, Lcom/android/server/wm/WindowState;->onAppVisibilityChanged(ZZ)Z

    move-result v4

    or-int/2addr v0, v4

    .line 1712
    .end local v3  # "c":Lcom/android/server/wm/WindowState;
    add-int/lit8 v1, v1, -0x1

    goto :goto_9

    .line 1717
    .end local v1  # "i":I
    :cond_1b
    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v1, v1, Landroid/view/WindowManager$LayoutParams;->type:I

    const/4 v3, 0x3

    if-ne v1, v3, :cond_39

    .line 1721
    if-nez p1, :cond_38

    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->isVisibleNow()Z

    move-result v1

    if-eqz v1, :cond_38

    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    invoke-virtual {v1}, Lcom/android/server/wm/AppWindowToken;->isSelfAnimating()Z

    move-result v1

    if-eqz v1, :cond_38

    .line 1722
    iput-boolean v2, p0, Lcom/android/server/wm/WindowState;->mAnimatingExit:Z

    .line 1723
    iput-boolean v2, p0, Lcom/android/server/wm/WindowState;->mRemoveOnExit:Z

    .line 1724
    iput-boolean v2, p0, Lcom/android/server/wm/WindowState;->mWindowRemovalAllowed:Z

    .line 1726
    :cond_38
    return v0

    .line 1729
    :cond_39
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->isVisibleNow()Z

    move-result v1

    .line 1730
    .local v1, "isVisibleNow":Z
    if-eq p1, v1, :cond_58

    .line 1735
    if-nez p2, :cond_54

    if-eqz v1, :cond_54

    .line 1736
    iget-object v2, p0, Lcom/android/server/wm/WindowState;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mAccessibilityController:Lcom/android/server/wm/AccessibilityController;

    .line 1738
    .local v2, "accessibilityController":Lcom/android/server/wm/AccessibilityController;
    const/4 v3, 0x2

    .line 1739
    .local v3, "winTransit":I
    iget-object v4, p0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    const/4 v5, 0x0

    const/4 v6, 0x2

    invoke-virtual {v4, v6, v5}, Lcom/android/server/wm/WindowStateAnimator;->applyAnimationLocked(IZ)Z

    .line 1740
    if-eqz v2, :cond_54

    .line 1741
    invoke-virtual {v2, p0, v6}, Lcom/android/server/wm/AccessibilityController;->onWindowTransitionLocked(Lcom/android/server/wm/WindowState;I)V

    .line 1744
    .end local v2  # "accessibilityController":Lcom/android/server/wm/AccessibilityController;
    .end local v3  # "winTransit":I
    :cond_54
    const/4 v0, 0x1

    .line 1745
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->setDisplayLayoutNeeded()V

    .line 1748
    :cond_58
    return v0
.end method

.method onDisplayChanged(Lcom/android/server/wm/DisplayContent;)V
    .registers 4
    .param p1, "dc"  # Lcom/android/server/wm/DisplayContent;

    .line 1367
    invoke-super {p0, p1}, Lcom/android/server/wm/WindowContainer;->onDisplayChanged(Lcom/android/server/wm/DisplayContent;)V

    .line 1369
    if-eqz p1, :cond_1d

    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mInputWindowHandle:Landroid/view/InputWindowHandle;

    iget v0, v0, Landroid/view/InputWindowHandle;->displayId:I

    invoke-virtual {p1}, Lcom/android/server/wm/DisplayContent;->getDisplayId()I

    move-result v1

    if-eq v0, v1, :cond_1d

    .line 1370
    iget v0, p1, Lcom/android/server/wm/DisplayContent;->mLayoutSeq:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/android/server/wm/WindowState;->mLayoutSeq:I

    .line 1371
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mInputWindowHandle:Landroid/view/InputWindowHandle;

    invoke-virtual {p1}, Lcom/android/server/wm/DisplayContent;->getDisplayId()I

    move-result v1

    iput v1, v0, Landroid/view/InputWindowHandle;->displayId:I

    .line 1373
    :cond_1d
    return-void
.end method

.method onExitAnimationDone()V
    .registers 6

    .line 4264
    sget-boolean v0, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_ANIM:Z

    const-string v1, "WindowManager"

    if-eqz v0, :cond_3a

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onExitAnimationDone in "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ": exiting="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/server/wm/WindowState;->mAnimatingExit:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " remove="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/server/wm/WindowState;->mRemoveOnExit:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " selfAnimating="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4266
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->isSelfAnimating()Z

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 4264
    invoke-static {v1, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4268
    :cond_3a
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowList;->isEmpty()Z

    move-result v0

    const/4 v2, 0x1

    if-nez v0, :cond_5d

    .line 4270
    new-instance v0, Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/android/server/wm/WindowState;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-direct {v0, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 4271
    .local v0, "childWindows":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wm/WindowState;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    sub-int/2addr v3, v2

    .local v3, "i":I
    :goto_4f
    if-ltz v3, :cond_5d

    .line 4272
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/wm/WindowState;

    invoke-virtual {v4}, Lcom/android/server/wm/WindowState;->onExitAnimationDone()V

    .line 4271
    add-int/lit8 v3, v3, -0x1

    goto :goto_4f

    .line 4276
    .end local v0  # "childWindows":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wm/WindowState;>;"
    .end local v3  # "i":I
    :cond_5d
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    iget-boolean v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mEnteringAnimation:Z

    const/4 v3, 0x0

    if-eqz v0, :cond_78

    .line 4277
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    iput-boolean v3, v0, Lcom/android/server/wm/WindowStateAnimator;->mEnteringAnimation:Z

    .line 4278
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mWmService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerService;->requestTraversal()V

    .line 4281
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    if-nez v0, :cond_78

    .line 4283
    :try_start_71
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mClient:Landroid/view/IWindow;

    invoke-interface {v0}, Landroid/view/IWindow;->dispatchWindowShown()V
    :try_end_76
    .catch Landroid/os/RemoteException; {:try_start_71 .. :try_end_76} :catch_77

    .line 4285
    goto :goto_78

    .line 4284
    :catch_77
    move-exception v0

    .line 4289
    :cond_78
    :goto_78
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->isSelfAnimating()Z

    move-result v0

    if-eqz v0, :cond_7f

    .line 4290
    return-void

    .line 4294
    :cond_7f
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mAccessibilityController:Lcom/android/server/wm/AccessibilityController;

    if-eqz v0, :cond_9c

    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getDisplayId()I

    move-result v0

    if-eqz v0, :cond_95

    .line 4295
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->getParentWindow()Lcom/android/server/wm/WindowState;

    move-result-object v0

    if-eqz v0, :cond_9c

    .line 4296
    :cond_95
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mAccessibilityController:Lcom/android/server/wm/AccessibilityController;

    invoke-virtual {v0}, Lcom/android/server/wm/AccessibilityController;->onSomeWindowResizedOrMovedLocked()V

    .line 4299
    :cond_9c
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->isSelfOrAncestorWindowAnimatingExit()Z

    move-result v0

    if-nez v0, :cond_a3

    .line 4300
    return-void

    .line 4303
    :cond_a3
    sget-boolean v0, Lcom/android/server/wm/WindowManagerService;->localLOGV:Z

    if-nez v0, :cond_ab

    sget-boolean v0, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_ADD_REMOVE:Z

    if-eqz v0, :cond_c9

    :cond_ab
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exit animation finished in "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ": remove="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v4, p0, Lcom/android/server/wm/WindowState;->mRemoveOnExit:Z

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4306
    :cond_c9
    iput-boolean v2, p0, Lcom/android/server/wm/WindowState;->mDestroying:Z

    .line 4308
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowStateAnimator;->hasSurface()Z

    move-result v0

    .line 4312
    .local v0, "hasSurface":Z
    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getPendingTransaction()Landroid/view/SurfaceControl$Transaction;

    move-result-object v2

    const-string v4, "onExitAnimationDone"

    invoke-virtual {v1, v2, v4}, Lcom/android/server/wm/WindowStateAnimator;->hide(Landroid/view/SurfaceControl$Transaction;Ljava/lang/String;)V

    .line 4318
    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    if-eqz v1, :cond_e4

    .line 4319
    invoke-virtual {v1}, Lcom/android/server/wm/AppWindowToken;->destroySurfaces()V

    goto :goto_fa

    .line 4321
    :cond_e4
    if-eqz v0, :cond_ed

    .line 4322
    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mDestroySurface:Ljava/util/ArrayList;

    invoke-virtual {v1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4324
    :cond_ed
    iget-boolean v1, p0, Lcom/android/server/wm/WindowState;->mRemoveOnExit:Z

    if-eqz v1, :cond_fa

    .line 4325
    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mPendingRemove:Ljava/util/ArrayList;

    invoke-virtual {v1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4326
    iput-boolean v3, p0, Lcom/android/server/wm/WindowState;->mRemoveOnExit:Z

    .line 4329
    :cond_fa
    :goto_fa
    iput-boolean v3, p0, Lcom/android/server/wm/WindowState;->mAnimatingExit:Z

    .line 4330
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v1

    iget-object v1, v1, Lcom/android/server/wm/DisplayContent;->mWallpaperController:Lcom/android/server/wm/WallpaperController;

    invoke-virtual {v1, p0}, Lcom/android/server/wm/WallpaperController;->hideWallpapers(Lcom/android/server/wm/WindowState;)V

    .line 4331
    return-void
.end method

.method onMergedOverrideConfigurationChanged()V
    .registers 2

    .line 1891
    invoke-super {p0}, Lcom/android/server/wm/WindowContainer;->onMergedOverrideConfigurationChanged()V

    .line 1892
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/wm/WindowState;->mLastConfigReportedToClient:Z

    .line 1893
    return-void
.end method

.method onMovedByResize()V
    .registers 3

    .line 1704
    sget-boolean v0, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_RESIZE:Z

    if-eqz v0, :cond_1a

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onMovedByResize: Moving "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WindowManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1705
    :cond_1a
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/wm/WindowState;->mMovedByResize:Z

    .line 1706
    invoke-super {p0}, Lcom/android/server/wm/WindowContainer;->onMovedByResize()V

    .line 1707
    return-void
.end method

.method onParentChanged()V
    .registers 2

    .line 825
    invoke-super {p0}, Lcom/android/server/wm/WindowContainer;->onParentChanged()V

    .line 826
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/server/wm/WindowState;->setDrawnStateEvaluated(Z)V

    .line 828
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->reapplyMagnificationSpec()V

    .line 829
    return-void
.end method

.method onResize()V
    .registers 4

    .line 1776
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mResizingWindows:Ljava/util/ArrayList;

    .line 1777
    .local v0, "resizingWindows":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wm/WindowState;>;"
    iget-boolean v1, p0, Lcom/android/server/wm/WindowState;->mHasSurface:Z

    if-eqz v1, :cond_31

    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->isGoneForLayoutLw()Z

    move-result v1

    if-nez v1, :cond_31

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_31

    .line 1778
    sget-boolean v1, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_RESIZE:Z

    if-eqz v1, :cond_2e

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onResize: Resizing "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "WindowManager"

    invoke-static {v2, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1779
    :cond_2e
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1781
    :cond_31
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->isGoneForLayoutLw()Z

    move-result v1

    if-eqz v1, :cond_3a

    .line 1782
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/wm/WindowState;->mResizedWhileGone:Z

    .line 1785
    :cond_3a
    invoke-super {p0}, Lcom/android/server/wm/WindowContainer;->onResize()V

    .line 1786
    return-void
.end method

.method onSetAppExiting()Z
    .registers 6

    .line 1752
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    .line 1753
    .local v0, "displayContent":Lcom/android/server/wm/DisplayContent;
    const/4 v1, 0x0

    .line 1755
    .local v1, "changed":Z
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->isVisibleNow()Z

    move-result v2

    if-eqz v2, :cond_25

    .line 1756
    iget-object v2, p0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    const/4 v3, 0x0

    const/4 v4, 0x2

    invoke-virtual {v2, v4, v3}, Lcom/android/server/wm/WindowStateAnimator;->applyAnimationLocked(IZ)Z

    .line 1757
    iget-object v2, p0, Lcom/android/server/wm/WindowState;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mAccessibilityController:Lcom/android/server/wm/AccessibilityController;

    if-eqz v2, :cond_1f

    .line 1758
    iget-object v2, p0, Lcom/android/server/wm/WindowState;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mAccessibilityController:Lcom/android/server/wm/AccessibilityController;

    invoke-virtual {v2, p0, v4}, Lcom/android/server/wm/AccessibilityController;->onWindowTransitionLocked(Lcom/android/server/wm/WindowState;I)V

    .line 1760
    :cond_1f
    const/4 v1, 0x1

    .line 1761
    if-eqz v0, :cond_25

    .line 1762
    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->setLayoutNeeded()V

    .line 1766
    :cond_25
    iget-object v2, p0, Lcom/android/server/wm/WindowState;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    .local v2, "i":I
    :goto_2d
    if-ltz v2, :cond_3f

    .line 1767
    iget-object v3, p0, Lcom/android/server/wm/WindowState;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v3, v2}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/WindowState;

    .line 1768
    .local v3, "c":Lcom/android/server/wm/WindowState;
    invoke-virtual {v3}, Lcom/android/server/wm/WindowState;->onSetAppExiting()Z

    move-result v4

    or-int/2addr v1, v4

    .line 1766
    .end local v3  # "c":Lcom/android/server/wm/WindowState;
    add-int/lit8 v2, v2, -0x1

    goto :goto_2d

    .line 1771
    .end local v2  # "i":I
    :cond_3f
    return v1
.end method

.method onStartFreezingScreen()V
    .registers 3

    .line 2902
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/wm/WindowState;->mAppFreezing:Z

    .line 2903
    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowList;->size()I

    move-result v1

    sub-int/2addr v1, v0

    .local v1, "i":I
    :goto_a
    if-ltz v1, :cond_1a

    .line 2904
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v0, v1}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/WindowState;

    .line 2905
    .local v0, "c":Lcom/android/server/wm/WindowState;
    invoke-virtual {v0}, Lcom/android/server/wm/WindowState;->onStartFreezingScreen()V

    .line 2903
    .end local v0  # "c":Lcom/android/server/wm/WindowState;
    add-int/lit8 v1, v1, -0x1

    goto :goto_a

    .line 2907
    .end local v1  # "i":I
    :cond_1a
    return-void
.end method

.method onStopFreezingScreen()Z
    .registers 6

    .line 2910
    const/4 v0, 0x0

    .line 2911
    .local v0, "unfrozeWindows":Z
    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowList;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    .local v1, "i":I
    :goto_9
    if-ltz v1, :cond_1b

    .line 2912
    iget-object v3, p0, Lcom/android/server/wm/WindowState;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v3, v1}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/WindowState;

    .line 2913
    .local v3, "c":Lcom/android/server/wm/WindowState;
    invoke-virtual {v3}, Lcom/android/server/wm/WindowState;->onStopFreezingScreen()Z

    move-result v4

    or-int/2addr v0, v4

    .line 2911
    .end local v3  # "c":Lcom/android/server/wm/WindowState;
    add-int/lit8 v1, v1, -0x1

    goto :goto_9

    .line 2916
    .end local v1  # "i":I
    :cond_1b
    iget-boolean v1, p0, Lcom/android/server/wm/WindowState;->mAppFreezing:Z

    if-nez v1, :cond_20

    .line 2917
    return v0

    .line 2920
    :cond_20
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/wm/WindowState;->mAppFreezing:Z

    .line 2922
    iget-boolean v3, p0, Lcom/android/server/wm/WindowState;->mHasSurface:Z

    if-eqz v3, :cond_57

    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getOrientationChanging()Z

    move-result v3

    if-nez v3, :cond_57

    iget-object v3, p0, Lcom/android/server/wm/WindowState;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget v3, v3, Lcom/android/server/wm/WindowManagerService;->mWindowsFreezingScreen:I

    const/4 v4, 0x2

    if-eq v3, v4, :cond_57

    .line 2924
    sget-boolean v3, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_ORIENTATION:Z

    if-eqz v3, :cond_4e

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "set mOrientationChanging of "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "WindowManager"

    invoke-static {v4, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2925
    :cond_4e
    invoke-virtual {p0, v2}, Lcom/android/server/wm/WindowState;->setOrientationChanging(Z)V

    .line 2926
    iget-object v3, p0, Lcom/android/server/wm/WindowState;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v3, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    iput-boolean v1, v3, Lcom/android/server/wm/RootWindowContainer;->mOrientationChangeComplete:Z

    .line 2928
    :cond_57
    iput v1, p0, Lcom/android/server/wm/WindowState;->mLastFreezeDuration:I

    .line 2929
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->setDisplayLayoutNeeded()V

    .line 2930
    return v2
.end method

.method onUnfreezeBounds()V
    .registers 4

    .line 1789
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowList;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    .local v0, "i":I
    :goto_8
    if-ltz v0, :cond_18

    .line 1790
    iget-object v2, p0, Lcom/android/server/wm/WindowState;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v2, v0}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/WindowState;

    .line 1791
    .local v2, "c":Lcom/android/server/wm/WindowState;
    invoke-virtual {v2}, Lcom/android/server/wm/WindowState;->onUnfreezeBounds()V

    .line 1789
    .end local v2  # "c":Lcom/android/server/wm/WindowState;
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    .line 1794
    .end local v0  # "i":I
    :cond_18
    iget-boolean v0, p0, Lcom/android/server/wm/WindowState;->mHasSurface:Z

    if-nez v0, :cond_1d

    .line 1795
    return-void

    .line 1798
    :cond_1d
    iput-boolean v1, p0, Lcom/android/server/wm/WindowState;->mLayoutNeeded:Z

    .line 1799
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->setDisplayLayoutNeeded()V

    .line 1800
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mResizingWindows:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_33

    .line 1801
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mResizingWindows:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1803
    :cond_33
    return-void
.end method

.method onWindowReplacementTimeout()V
    .registers 3

    .line 1896
    iget-boolean v0, p0, Lcom/android/server/wm/WindowState;->mWillReplaceWindow:Z

    if-eqz v0, :cond_8

    .line 1903
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->removeImmediately()V

    goto :goto_20

    .line 1905
    :cond_8
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_10
    if-ltz v0, :cond_20

    .line 1906
    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v1, v0}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/WindowState;

    .line 1907
    .local v1, "c":Lcom/android/server/wm/WindowState;
    invoke-virtual {v1}, Lcom/android/server/wm/WindowState;->onWindowReplacementTimeout()V

    .line 1905
    .end local v1  # "c":Lcom/android/server/wm/WindowState;
    add-int/lit8 v0, v0, -0x1

    goto :goto_10

    .line 1910
    .end local v0  # "i":I
    :cond_20
    :goto_20
    return-void
.end method

.method openInputChannel(Landroid/view/InputChannel;)V
    .registers 7
    .param p1, "outInputChannel"  # Landroid/view/InputChannel;

    .line 2181
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mInputChannel:Landroid/view/InputChannel;

    if-nez v0, :cond_49

    .line 2184
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getName()Ljava/lang/String;

    move-result-object v0

    .line 2185
    .local v0, "name":Ljava/lang/String;
    invoke-static {v0}, Landroid/view/InputChannel;->openInputChannelPair(Ljava/lang/String;)[Landroid/view/InputChannel;

    move-result-object v1

    .line 2186
    .local v1, "inputChannels":[Landroid/view/InputChannel;
    const/4 v2, 0x0

    aget-object v2, v1, v2

    iput-object v2, p0, Lcom/android/server/wm/WindowState;->mInputChannel:Landroid/view/InputChannel;

    .line 2187
    const/4 v2, 0x1

    aget-object v2, v1, v2

    iput-object v2, p0, Lcom/android/server/wm/WindowState;->mClientChannel:Landroid/view/InputChannel;

    .line 2188
    iget-object v2, p0, Lcom/android/server/wm/WindowState;->mInputWindowHandle:Landroid/view/InputWindowHandle;

    iget-object v3, p0, Lcom/android/server/wm/WindowState;->mClient:Landroid/view/IWindow;

    invoke-interface {v3}, Landroid/view/IWindow;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    iput-object v3, v2, Landroid/view/InputWindowHandle;->token:Landroid/os/IBinder;

    .line 2189
    if-eqz p1, :cond_30

    .line 2190
    iget-object v2, p0, Lcom/android/server/wm/WindowState;->mClientChannel:Landroid/view/InputChannel;

    invoke-virtual {v2, p1}, Landroid/view/InputChannel;->transferTo(Landroid/view/InputChannel;)V

    .line 2191
    iget-object v2, p0, Lcom/android/server/wm/WindowState;->mClientChannel:Landroid/view/InputChannel;

    invoke-virtual {v2}, Landroid/view/InputChannel;->dispose()V

    .line 2192
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/server/wm/WindowState;->mClientChannel:Landroid/view/InputChannel;

    goto :goto_39

    .line 2197
    :cond_30
    new-instance v2, Lcom/android/server/wm/WindowState$DeadWindowEventReceiver;

    iget-object v3, p0, Lcom/android/server/wm/WindowState;->mClientChannel:Landroid/view/InputChannel;

    invoke-direct {v2, p0, v3}, Lcom/android/server/wm/WindowState$DeadWindowEventReceiver;-><init>(Lcom/android/server/wm/WindowState;Landroid/view/InputChannel;)V

    iput-object v2, p0, Lcom/android/server/wm/WindowState;->mDeadWindowEventReceiver:Lcom/android/server/wm/WindowState$DeadWindowEventReceiver;

    .line 2199
    :goto_39
    iget-object v2, p0, Lcom/android/server/wm/WindowState;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mInputManager:Lcom/android/server/input/InputManagerService;

    iget-object v3, p0, Lcom/android/server/wm/WindowState;->mInputChannel:Landroid/view/InputChannel;

    iget-object v4, p0, Lcom/android/server/wm/WindowState;->mClient:Landroid/view/IWindow;

    invoke-interface {v4}, Landroid/view/IWindow;->asBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/android/server/input/InputManagerService;->registerInputChannel(Landroid/view/InputChannel;Landroid/os/IBinder;)V

    .line 2200
    return-void

    .line 2182
    .end local v0  # "name":Ljava/lang/String;
    .end local v1  # "inputChannels":[Landroid/view/InputChannel;
    :cond_49
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Window already has an input channel."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method orientationChangeTimedOut()V
    .registers 2

    .line 1357
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/wm/WindowState;->mOrientationChangeTimedOut:Z

    .line 1358
    return-void
.end method

.method performShowLocked()Z
    .registers 8

    .line 3971
    invoke-direct {p0}, Lcom/android/server/wm/WindowState;->isHiddenFromUserLocked()Z

    move-result v0

    const-string v1, "WindowManager"

    const/4 v2, 0x0

    if-eqz v0, :cond_30

    .line 3972
    sget-boolean v0, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_VISIBILITY:Z

    if-eqz v0, :cond_2b

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "hiding "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ", belonging to "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/server/wm/WindowState;->mOwnerUid:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3973
    :cond_2b
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/android/server/wm/WindowState;->clearPolicyVisibilityFlag(I)V

    .line 3974
    return v2

    .line 3977
    :cond_30
    const-string v0, "performShow on "

    invoke-direct {p0, v0}, Lcom/android/server/wm/WindowState;->logPerformShow(Ljava/lang/String;)V

    .line 3979
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    iget v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mDrawState:I

    .line 3980
    .local v0, "drawState":I
    const/4 v3, 0x4

    const/4 v4, 0x3

    if-eq v0, v3, :cond_3f

    if-ne v0, v4, :cond_4e

    :cond_3f
    iget-object v5, p0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v5, v5, Landroid/view/WindowManager$LayoutParams;->type:I

    if-eq v5, v4, :cond_4e

    iget-object v5, p0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    if-eqz v5, :cond_4e

    .line 3982
    iget-object v6, p0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    invoke-virtual {v5, p0, v6}, Lcom/android/server/wm/AppWindowToken;->onFirstWindowDrawn(Lcom/android/server/wm/WindowState;Lcom/android/server/wm/WindowStateAnimator;)V

    .line 3985
    :cond_4e
    iget-object v5, p0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    iget v5, v5, Lcom/android/server/wm/WindowStateAnimator;->mDrawState:I

    if-ne v5, v4, :cond_d1

    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->isReadyForDisplay()Z

    move-result v4

    if-nez v4, :cond_5c

    goto/16 :goto_d1

    .line 3989
    :cond_5c
    const-string v4, "Showing "

    invoke-direct {p0, v4}, Lcom/android/server/wm/WindowState;->logPerformShow(Ljava/lang/String;)V

    .line 3991
    iget-object v4, p0, Lcom/android/server/wm/WindowState;->mWmService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v4}, Lcom/android/server/wm/WindowManagerService;->enableScreenIfNeededLocked()V

    .line 3992
    iget-object v4, p0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    invoke-virtual {v4}, Lcom/android/server/wm/WindowStateAnimator;->applyEnterAnimationLocked()V

    .line 3995
    iget-object v4, p0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    const/high16 v5, -0x40800000  # -1.0f

    iput v5, v4, Lcom/android/server/wm/WindowStateAnimator;->mLastAlpha:F

    .line 3996
    sget-boolean v4, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_ANIM:Z

    if-eqz v4, :cond_89

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "performShowLocked: mDrawState=HAS_DRAWN in "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3998
    :cond_89
    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    iput v3, v1, Lcom/android/server/wm/WindowStateAnimator;->mDrawState:I

    .line 3999
    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mWmService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowManagerService;->scheduleAnimationLocked()V

    .line 4001
    iget-boolean v1, p0, Lcom/android/server/wm/WindowState;->mHidden:Z

    const/4 v3, 0x1

    if-eqz v1, :cond_bf

    .line 4002
    iput-boolean v2, p0, Lcom/android/server/wm/WindowState;->mHidden:Z

    .line 4003
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v1

    .line 4005
    .local v1, "displayContent":Lcom/android/server/wm/DisplayContent;
    iget-object v2, p0, Lcom/android/server/wm/WindowState;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowList;->size()I

    move-result v2

    sub-int/2addr v2, v3

    .local v2, "i":I
    :goto_a4
    if-ltz v2, :cond_bf

    .line 4006
    iget-object v4, p0, Lcom/android/server/wm/WindowState;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v4, v2}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/wm/WindowState;

    .line 4007
    .local v4, "c":Lcom/android/server/wm/WindowState;
    iget-object v5, v4, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    iget-object v5, v5, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceController:Lcom/android/server/wm/WindowSurfaceController;

    if-eqz v5, :cond_bc

    .line 4008
    invoke-virtual {v4}, Lcom/android/server/wm/WindowState;->performShowLocked()Z

    .line 4012
    if-eqz v1, :cond_bc

    .line 4013
    invoke-virtual {v1}, Lcom/android/server/wm/DisplayContent;->setLayoutNeeded()V

    .line 4005
    .end local v4  # "c":Lcom/android/server/wm/WindowState;
    :cond_bc
    add-int/lit8 v2, v2, -0x1

    goto :goto_a4

    .line 4019
    .end local v1  # "displayContent":Lcom/android/server/wm/DisplayContent;
    .end local v2  # "i":I
    :cond_bf
    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v1, v1, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v2, 0x7db

    if-ne v1, v2, :cond_d0

    .line 4020
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v1

    iget-object v1, v1, Lcom/android/server/wm/DisplayContent;->mDividerControllerLocked:Lcom/android/server/wm/DockedStackDividerController;

    invoke-virtual {v1}, Lcom/android/server/wm/DockedStackDividerController;->resetImeHideRequested()V

    .line 4023
    :cond_d0
    return v3

    .line 3986
    :cond_d1
    :goto_d1
    return v2
.end method

.method public pokeDrawLockLw(J)V
    .registers 9
    .param p1, "timeout"  # J

    .line 2832
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->isVisibleOrAdding()Z

    move-result v0

    const-string v1, "WindowManager"

    if-eqz v0, :cond_65

    .line 2833
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mDrawLock:Landroid/os/PowerManager$WakeLock;

    if-nez v0, :cond_43

    .line 2837
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getWindowTag()Ljava/lang/CharSequence;

    move-result-object v0

    .line 2838
    .local v0, "tag":Ljava/lang/CharSequence;
    iget-object v2, p0, Lcom/android/server/wm/WindowState;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mPowerManager:Landroid/os/PowerManager;

    const/16 v3, 0x80

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Window:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/wm/WindowState;->mDrawLock:Landroid/os/PowerManager$WakeLock;

    .line 2839
    iget-object v2, p0, Lcom/android/server/wm/WindowState;->mDrawLock:Landroid/os/PowerManager$WakeLock;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 2840
    iget-object v2, p0, Lcom/android/server/wm/WindowState;->mDrawLock:Landroid/os/PowerManager$WakeLock;

    new-instance v3, Landroid/os/WorkSource;

    iget v4, p0, Lcom/android/server/wm/WindowState;->mOwnerUid:I

    iget-object v5, p0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget-object v5, v5, Landroid/view/WindowManager$LayoutParams;->packageName:Ljava/lang/String;

    invoke-direct {v3, v4, v5}, Landroid/os/WorkSource;-><init>(ILjava/lang/String;)V

    invoke-virtual {v2, v3}, Landroid/os/PowerManager$WakeLock;->setWorkSource(Landroid/os/WorkSource;)V

    .line 2843
    .end local v0  # "tag":Ljava/lang/CharSequence;
    :cond_43
    sget-boolean v0, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_POWER:Z

    if-eqz v0, :cond_5f

    .line 2844
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "pokeDrawLock: poking draw lock on behalf of visible window owned by "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget-object v2, v2, Landroid/view/WindowManager$LayoutParams;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2847
    :cond_5f
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mDrawLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0, p1, p2}, Landroid/os/PowerManager$WakeLock;->acquire(J)V

    goto :goto_81

    .line 2848
    :cond_65
    sget-boolean v0, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_POWER:Z

    if-eqz v0, :cond_81

    .line 2849
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "pokeDrawLock: suppressed draw lock request for invisible window owned by "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget-object v2, v2, Landroid/view/WindowManager$LayoutParams;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2852
    :cond_81
    :goto_81
    return-void
.end method

.method prelayout()V
    .registers 3

    .line 1458
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->inSizeCompatMode()Z

    move-result v0

    const/high16 v1, 0x3f800000  # 1.0f

    if-eqz v0, :cond_16

    .line 1459
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mToken:Lcom/android/server/wm/WindowToken;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowToken;->getSizeCompatScale()F

    move-result v0

    iput v0, p0, Lcom/android/server/wm/WindowState;->mGlobalScale:F

    .line 1460
    iget v0, p0, Lcom/android/server/wm/WindowState;->mGlobalScale:F

    div-float/2addr v1, v0

    iput v1, p0, Lcom/android/server/wm/WindowState;->mInvGlobalScale:F

    goto :goto_1a

    .line 1462
    :cond_16
    iput v1, p0, Lcom/android/server/wm/WindowState;->mInvGlobalScale:F

    iput v1, p0, Lcom/android/server/wm/WindowState;->mGlobalScale:F

    .line 1464
    :goto_1a
    return-void
.end method

.method prepareSurfaces()V
    .registers 4

    .line 4874
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getDimmer()Lcom/android/server/wm/Dimmer;

    move-result-object v0

    .line 4875
    .local v0, "dimmer":Lcom/android/server/wm/Dimmer;
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/wm/WindowState;->mIsDimming:Z

    .line 4876
    if-eqz v0, :cond_c

    .line 4877
    invoke-direct {p0, v0}, Lcom/android/server/wm/WindowState;->applyDims(Lcom/android/server/wm/Dimmer;)V

    .line 4879
    :cond_c
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->updateSurfacePosition()V

    .line 4881
    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/server/wm/WindowStateAnimator;->prepareSurfaceLocked(Z)V

    .line 4882
    invoke-super {p0}, Lcom/android/server/wm/WindowContainer;->prepareSurfaces()V

    .line 4883
    return-void
.end method

.method prepareWindowToDisplayDuringRelayout(Z)V
    .registers 13
    .param p1, "wasVisible"  # Z

    .line 2419
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

    .line 2432
    .local v0, "hasTurnScreenOnFlag":Z
    :goto_e
    const-string v3, "WindowManager"

    if-eqz v0, :cond_75

    .line 2433
    iget-object v4, p0, Lcom/android/server/wm/WindowState;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-boolean v4, v4, Lcom/android/server/wm/WindowManagerService;->mAllowTheaterModeWakeFromLayout:Z

    if-nez v4, :cond_2b

    iget-object v4, p0, Lcom/android/server/wm/WindowState;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v4, v4, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    .line 2434
    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "theater_mode_on"

    invoke-static {v4, v5, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-nez v4, :cond_29

    goto :goto_2b

    :cond_29
    move v4, v2

    goto :goto_2c

    :cond_2b
    :goto_2b
    move v4, v1

    .line 2436
    .local v4, "allowTheaterMode":Z
    :goto_2c
    iget-object v5, p0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    if-eqz v5, :cond_39

    invoke-virtual {v5}, Lcom/android/server/wm/AppWindowToken;->canTurnScreenOn()Z

    move-result v5

    if-eqz v5, :cond_37

    goto :goto_39

    :cond_37
    move v5, v2

    goto :goto_3a

    :cond_39
    :goto_39
    move v5, v1

    .line 2438
    .local v5, "canTurnScreenOn":Z
    :goto_3a
    if-eqz v4, :cond_6e

    if-eqz v5, :cond_6e

    iget-object v6, p0, Lcom/android/server/wm/WindowState;->mPowerManagerWrapper:Lcom/android/server/wm/WindowState$PowerManagerWrapper;

    invoke-interface {v6}, Lcom/android/server/wm/WindowState$PowerManagerWrapper;->isInteractive()Z

    move-result v6

    if-nez v6, :cond_6e

    .line 2439
    sget-boolean v6, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_VISIBILITY:Z

    if-nez v6, :cond_4e

    sget-boolean v6, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_POWER:Z

    if-eqz v6, :cond_62

    .line 2440
    :cond_4e
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Relayout window turning screen on: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2442
    :cond_62
    iget-object v6, p0, Lcom/android/server/wm/WindowState;->mPowerManagerWrapper:Lcom/android/server/wm/WindowState$PowerManagerWrapper;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v7

    const/4 v9, 0x2

    const-string v10, "android.server.wm:SCREEN_ON_FLAG"

    invoke-interface {v6, v7, v8, v9, v10}, Lcom/android/server/wm/WindowState$PowerManagerWrapper;->wakeUp(JILjava/lang/String;)V

    .line 2446
    :cond_6e
    iget-object v6, p0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    if-eqz v6, :cond_75

    .line 2447
    invoke-virtual {v6, v2}, Lcom/android/server/wm/AppWindowToken;->setCanTurnScreenOn(Z)V

    .line 2452
    .end local v4  # "allowTheaterMode":Z
    .end local v5  # "canTurnScreenOn":Z
    :cond_75
    if-eqz p1, :cond_90

    .line 2453
    sget-boolean v1, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_VISIBILITY:Z

    if-eqz v1, :cond_8f

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Already visible and does not turn on screen, skip preparing: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2455
    :cond_8f
    return-void

    .line 2458
    :cond_90
    iget-object v2, p0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v2, v2, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    and-int/lit16 v2, v2, 0xf0

    const/16 v3, 0x10

    if-ne v2, v3, :cond_9c

    .line 2460
    iput-boolean v1, p0, Lcom/android/server/wm/WindowState;->mLayoutNeeded:Z

    .line 2463
    :cond_9c
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->isDrawnLw()Z

    move-result v1

    if-eqz v1, :cond_af

    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mToken:Lcom/android/server/wm/WindowToken;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowToken;->okToAnimate()Z

    move-result v1

    if-eqz v1, :cond_af

    .line 2464
    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowStateAnimator;->applyEnterAnimationLocked()V

    .line 2466
    :cond_af
    return-void
.end method

.method public registerFocusObserver(Landroid/view/IWindowFocusObserver;)V
    .registers 4
    .param p1, "observer"  # Landroid/view/IWindowFocusObserver;

    .line 3311
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_5
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 3312
    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mFocusCallbacks:Landroid/os/RemoteCallbackList;

    if-nez v1, :cond_13

    .line 3313
    new-instance v1, Landroid/os/RemoteCallbackList;

    invoke-direct {v1}, Landroid/os/RemoteCallbackList;-><init>()V

    iput-object v1, p0, Lcom/android/server/wm/WindowState;->mFocusCallbacks:Landroid/os/RemoteCallbackList;

    .line 3315
    :cond_13
    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mFocusCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v1, p1}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;)Z

    .line 3316
    monitor-exit v0
    :try_end_19
    .catchall {:try_start_5 .. :try_end_19} :catchall_1d

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 3317
    return-void

    .line 3316
    :catchall_1d
    move-exception v1

    :try_start_1e
    monitor-exit v0
    :try_end_1f
    .catchall {:try_start_1e .. :try_end_1f} :catchall_1d

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method relayoutVisibleWindow(II)I
    .registers 9
    .param p1, "result"  # I
    .param p2, "attrChanges"  # I

    .line 4586
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->isVisibleLw()Z

    move-result v0

    .line 4588
    .local v0, "wasVisible":Z
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

    .line 4590
    iget-boolean v2, p0, Lcom/android/server/wm/WindowState;->mAnimatingExit:Z

    if-eqz v2, :cond_4e

    .line 4591
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

    .line 4595
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->isSelfAnimating()Z

    move-result v2

    if-eqz v2, :cond_4c

    .line 4596
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->cancelAnimation()V

    .line 4597
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->destroySurfaceUnchecked()V

    .line 4599
    :cond_4c
    iput-boolean v1, p0, Lcom/android/server/wm/WindowState;->mAnimatingExit:Z

    .line 4601
    :cond_4e
    iget-boolean v2, p0, Lcom/android/server/wm/WindowState;->mDestroying:Z

    if-eqz v2, :cond_5b

    .line 4602
    iput-boolean v1, p0, Lcom/android/server/wm/WindowState;->mDestroying:Z

    .line 4603
    iget-object v2, p0, Lcom/android/server/wm/WindowState;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mDestroySurface:Ljava/util/ArrayList;

    invoke-virtual {v2, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 4605
    :cond_5b
    const/4 v2, 0x1

    if-nez v0, :cond_62

    .line 4606
    iget-object v3, p0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    iput-boolean v2, v3, Lcom/android/server/wm/WindowStateAnimator;->mEnterAnimationPending:Z

    .line 4609
    :cond_62
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/wm/DisplayContent;->getRotation()I

    move-result v3

    iput v3, p0, Lcom/android/server/wm/WindowState;->mLastVisibleLayoutRotation:I

    .line 4611
    iget-object v3, p0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    iput-boolean v2, v3, Lcom/android/server/wm/WindowStateAnimator;->mEnteringAnimation:Z

    .line 4613
    const-wide/16 v3, 0x20

    const-string v5, "prepareToDisplay"

    invoke-static {v3, v4, v5}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 4615
    :try_start_77
    invoke-virtual {p0, v0}, Lcom/android/server/wm/WindowState;->prepareWindowToDisplayDuringRelayout(Z)V
    :try_end_7a
    .catchall {:try_start_77 .. :try_end_7a} :catchall_d5

    .line 4617
    invoke-static {v3, v4}, Landroid/os/Trace;->traceEnd(J)V

    .line 4618
    nop

    .line 4620
    and-int/lit8 v3, p2, 0x8

    if-eqz v3, :cond_91

    .line 4624
    iget-object v3, p0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    invoke-virtual {v3}, Lcom/android/server/wm/WindowStateAnimator;->tryChangeFormatInPlaceLocked()Z

    move-result v3

    if-nez v3, :cond_91

    .line 4625
    iget-object v3, p0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    invoke-virtual {v3}, Lcom/android/server/wm/WindowStateAnimator;->preserveSurfaceLocked()V

    .line 4626
    or-int/lit8 p1, p1, 0x6

    .line 4636
    :cond_91
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->isDragResizeChanged()Z

    move-result v3

    if-eqz v3, :cond_ab

    .line 4637
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->setDragResizing()V

    .line 4642
    iget-boolean v3, p0, Lcom/android/server/wm/WindowState;->mHasSurface:Z

    if-eqz v3, :cond_ab

    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->isChildWindow()Z

    move-result v3

    if-nez v3, :cond_ab

    .line 4643
    iget-object v3, p0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    invoke-virtual {v3}, Lcom/android/server/wm/WindowStateAnimator;->preserveSurfaceLocked()V

    .line 4644
    or-int/lit8 p1, p1, 0x6

    .line 4648
    :cond_ab
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->isDragResizing()Z

    move-result v3

    if-eqz v3, :cond_b9

    .line 4649
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getResizeMode()I

    move-result v3

    if-nez v3, :cond_b9

    move v3, v2

    goto :goto_ba

    :cond_b9
    move v3, v1

    .line 4650
    .local v3, "freeformResizing":Z
    :goto_ba
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->isDragResizing()Z

    move-result v4

    if-eqz v4, :cond_c7

    .line 4651
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getResizeMode()I

    move-result v4

    if-ne v4, v2, :cond_c7

    goto :goto_c8

    :cond_c7
    move v2, v1

    .line 4652
    .local v2, "dockedResizing":Z
    :goto_c8
    if-eqz v3, :cond_cd

    const/16 v4, 0x10

    goto :goto_ce

    :cond_cd
    move v4, v1

    :goto_ce
    or-int/2addr p1, v4

    .line 4653
    if-eqz v2, :cond_d3

    const/16 v1, 0x8

    :cond_d3
    or-int/2addr p1, v1

    .line 4654
    return p1

    .line 4617
    .end local v2  # "dockedResizing":Z
    .end local v3  # "freeformResizing":Z
    :catchall_d5
    move-exception v1

    invoke-static {v3, v4}, Landroid/os/Trace;->traceEnd(J)V

    throw v1
.end method

.method removeIfPossible()V
    .registers 2

    .line 1972
    invoke-super {p0}, Lcom/android/server/wm/WindowContainer;->removeIfPossible()V

    .line 1973
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/server/wm/WindowState;->removeIfPossible(Z)V

    .line 1974
    return-void
.end method

.method removeImmediately()V
    .registers 6

    .line 1923
    invoke-super {p0}, Lcom/android/server/wm/WindowContainer;->removeImmediately()V

    .line 1925
    iget-boolean v0, p0, Lcom/android/server/wm/WindowState;->mRemoved:Z

    if-eqz v0, :cond_27

    .line 1927
    sget-boolean v0, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_ADD_REMOVE:Z

    if-eqz v0, :cond_26

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "WS.removeImmediately: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " Already removed..."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WindowManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1929
    :cond_26
    return-void

    .line 1932
    :cond_27
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/wm/WindowState;->mRemoved:Z

    .line 1934
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/wm/WindowState;->mWillReplaceWindow:Z

    .line 1935
    iget-object v2, p0, Lcom/android/server/wm/WindowState;->mReplacementWindow:Lcom/android/server/wm/WindowState;

    if-eqz v2, :cond_33

    .line 1936
    iput-boolean v1, v2, Lcom/android/server/wm/WindowState;->mSkipEnterAnimationForSeamlessReplacement:Z

    .line 1939
    :cond_33
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v2

    .line 1940
    .local v2, "dc":Lcom/android/server/wm/DisplayContent;
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->isInputMethodTarget()Z

    move-result v3

    if-eqz v3, :cond_40

    .line 1941
    invoke-virtual {v2, v0}, Lcom/android/server/wm/DisplayContent;->computeImeTarget(Z)Lcom/android/server/wm/WindowState;

    .line 1944
    :cond_40
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 1945
    .local v0, "type":I
    invoke-static {v0}, Lcom/android/server/wm/WindowManagerService;->excludeWindowTypeFromTapOutTask(I)Z

    move-result v3

    if-eqz v3, :cond_4f

    .line 1946
    iget-object v3, v2, Lcom/android/server/wm/DisplayContent;->mTapExcludedWindows:Ljava/util/ArrayList;

    invoke-virtual {v3, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1948
    :cond_4f
    iget-object v3, p0, Lcom/android/server/wm/WindowState;->mTapExcludeRegionHolder:Lcom/android/server/wm/TapExcludeRegionHolder;

    if-eqz v3, :cond_58

    .line 1951
    iget-object v3, v2, Lcom/android/server/wm/DisplayContent;->mTapExcludeProvidingWindows:Landroid/util/ArraySet;

    invoke-virtual {v3, p0}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    .line 1953
    :cond_58
    invoke-virtual {v2}, Lcom/android/server/wm/DisplayContent;->getDisplayPolicy()Lcom/android/server/wm/DisplayPolicy;

    move-result-object v3

    invoke-virtual {v3, p0}, Lcom/android/server/wm/DisplayPolicy;->removeWindowLw(Lcom/android/server/wm/WindowState;)V

    .line 1955
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->disposeInputChannel()V

    .line 1957
    iget-object v3, p0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    invoke-virtual {v3}, Lcom/android/server/wm/WindowStateAnimator;->destroyDeferredSurfaceLocked()V

    .line 1958
    iget-object v3, p0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    invoke-virtual {v3}, Lcom/android/server/wm/WindowStateAnimator;->destroySurfaceLocked()V

    .line 1959
    iget-object v3, p0, Lcom/android/server/wm/WindowState;->mSession:Lcom/android/server/wm/Session;

    invoke-virtual {v3}, Lcom/android/server/wm/Session;->windowRemovedLocked()V

    .line 1961
    :try_start_71
    iget-object v3, p0, Lcom/android/server/wm/WindowState;->mClient:Landroid/view/IWindow;

    invoke-interface {v3}, Landroid/view/IWindow;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/wm/WindowState;->mDeathRecipient:Lcom/android/server/wm/WindowState$DeathRecipient;

    invoke-interface {v3, v4, v1}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z
    :try_end_7c
    .catch Ljava/lang/RuntimeException; {:try_start_71 .. :try_end_7c} :catch_7d

    .line 1965
    goto :goto_7e

    .line 1962
    :catch_7d
    move-exception v1

    .line 1967
    :goto_7e
    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mWmService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v1, p0}, Lcom/android/server/wm/WindowManagerService;->postWindowRemoveCleanupLocked(Lcom/android/server/wm/WindowState;)V

    .line 1968
    return-void
.end method

.method removeReplacedWindowIfNeeded(Lcom/android/server/wm/WindowState;)Z
    .registers 7
    .param p1, "replacement"  # Lcom/android/server/wm/WindowState;

    .line 2224
    iget-boolean v0, p0, Lcom/android/server/wm/WindowState;->mWillReplaceWindow:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_16

    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mReplacementWindow:Lcom/android/server/wm/WindowState;

    if-ne v0, p1, :cond_16

    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->hasDrawnLw()Z

    move-result v0

    if-eqz v0, :cond_16

    .line 2225
    iput-boolean v1, p1, Lcom/android/server/wm/WindowState;->mSkipEnterAnimationForSeamlessReplacement:Z

    .line 2226
    invoke-direct {p0}, Lcom/android/server/wm/WindowState;->removeReplacedWindow()V

    .line 2227
    return v2

    .line 2230
    :cond_16
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowList;->size()I

    move-result v0

    sub-int/2addr v0, v2

    .local v0, "i":I
    :goto_1d
    if-ltz v0, :cond_31

    .line 2231
    iget-object v3, p0, Lcom/android/server/wm/WindowState;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v3, v0}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/WindowState;

    .line 2232
    .local v3, "c":Lcom/android/server/wm/WindowState;
    invoke-virtual {v3, p1}, Lcom/android/server/wm/WindowState;->removeReplacedWindowIfNeeded(Lcom/android/server/wm/WindowState;)Z

    move-result v4

    if-eqz v4, :cond_2e

    .line 2233
    return v2

    .line 2230
    .end local v3  # "c":Lcom/android/server/wm/WindowState;
    :cond_2e
    add-int/lit8 v0, v0, -0x1

    goto :goto_1d

    .line 2236
    .end local v0  # "i":I
    :cond_31
    return v1
.end method

.method reportFocusChangedSerialized(ZZ)V
    .registers 7
    .param p1, "focused"  # Z
    .param p2, "inTouchMode"  # Z

    .line 3126
    :try_start_0
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mClient:Landroid/view/IWindow;

    invoke-interface {v0, p1, p2}, Landroid/view/IWindow;->windowFocusChanged(ZZ)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 3128
    goto :goto_7

    .line 3127
    :catch_6
    move-exception v0

    .line 3129
    :goto_7
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mFocusCallbacks:Landroid/os/RemoteCallbackList;

    if-eqz v0, :cond_39

    .line 3130
    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v0

    .line 3131
    .local v0, "N":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_10
    if-ge v1, v0, :cond_34

    .line 3132
    iget-object v2, p0, Lcom/android/server/wm/WindowState;->mFocusCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v2, v1}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v2

    check-cast v2, Landroid/view/IWindowFocusObserver;

    .line 3134
    .local v2, "obs":Landroid/view/IWindowFocusObserver;
    if-eqz p1, :cond_26

    .line 3135
    :try_start_1c
    iget-object v3, p0, Lcom/android/server/wm/WindowState;->mWindowId:Lcom/android/server/wm/WindowState$WindowId;

    invoke-virtual {v3}, Lcom/android/server/wm/WindowState$WindowId;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-interface {v2, v3}, Landroid/view/IWindowFocusObserver;->focusGained(Landroid/os/IBinder;)V

    goto :goto_2f

    .line 3137
    :cond_26
    iget-object v3, p0, Lcom/android/server/wm/WindowState;->mWindowId:Lcom/android/server/wm/WindowState$WindowId;

    invoke-virtual {v3}, Lcom/android/server/wm/WindowState$WindowId;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-interface {v2, v3}, Landroid/view/IWindowFocusObserver;->focusLost(Landroid/os/IBinder;)V
    :try_end_2f
    .catch Landroid/os/RemoteException; {:try_start_1c .. :try_end_2f} :catch_30

    .line 3140
    :goto_2f
    goto :goto_31

    .line 3139
    :catch_30
    move-exception v3

    .line 3131
    .end local v2  # "obs":Landroid/view/IWindowFocusObserver;
    :goto_31
    add-int/lit8 v1, v1, 0x1

    goto :goto_10

    .line 3142
    .end local v1  # "i":I
    :cond_34
    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mFocusCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v1}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 3144
    .end local v0  # "N":I
    :cond_39
    return-void
.end method

.method reportResized()V
    .registers 29

    .line 3178
    move-object/from16 v15, p0

    const-string v14, "WindowManager"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "wm.reportResized_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/WindowState;->getWindowTag()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-wide/16 v1, 0x20

    invoke-static {v1, v2, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 3180
    const/4 v10, 0x0

    :try_start_1f
    sget-boolean v0, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_RESIZE:Z

    if-nez v0, :cond_27

    sget-boolean v0, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_ORIENTATION:Z

    if-eqz v0, :cond_47

    :cond_27
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Reporting new frame to "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ": "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v15, Lcom/android/server/wm/WindowState;->mWindowFrames:Lcom/android/server/wm/WindowFrames;

    iget-object v3, v3, Lcom/android/server/wm/WindowFrames;->mCompatFrame:Landroid/graphics/Rect;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v14, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3182
    :cond_47
    new-instance v0, Landroid/util/MergedConfiguration;

    iget-object v3, v15, Lcom/android/server/wm/WindowState;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v3, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    .line 3183
    invoke-virtual {v3}, Lcom/android/server/wm/RootWindowContainer;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    .line 3184
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/WindowState;->getMergedOverrideConfiguration()Landroid/content/res/Configuration;

    move-result-object v4

    invoke-direct {v0, v3, v4}, Landroid/util/MergedConfiguration;-><init>(Landroid/content/res/Configuration;Landroid/content/res/Configuration;)V

    .line 3186
    .local v0, "mergedConfiguration":Landroid/util/MergedConfiguration;
    invoke-virtual {v15, v0}, Lcom/android/server/wm/WindowState;->setLastReportedMergedConfiguration(Landroid/util/MergedConfiguration;)V

    .line 3188
    sget-boolean v3, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_ORIENTATION:Z

    const/4 v9, 0x1

    if-eqz v3, :cond_7f

    iget-object v3, v15, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    iget v3, v3, Lcom/android/server/wm/WindowStateAnimator;->mDrawState:I

    if-ne v3, v9, :cond_7f

    .line 3189
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Resizing "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " WITH DRAW PENDING"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v14, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3191
    :cond_7f
    iget-object v3, v15, Lcom/android/server/wm/WindowState;->mWindowFrames:Lcom/android/server/wm/WindowFrames;

    iget-object v3, v3, Lcom/android/server/wm/WindowFrames;->mCompatFrame:Landroid/graphics/Rect;

    .line 3192
    .local v3, "frame":Landroid/graphics/Rect;
    iget-object v4, v15, Lcom/android/server/wm/WindowState;->mWindowFrames:Lcom/android/server/wm/WindowFrames;

    iget-object v4, v4, Lcom/android/server/wm/WindowFrames;->mLastOverscanInsets:Landroid/graphics/Rect;

    .line 3193
    .local v4, "overscanInsets":Landroid/graphics/Rect;
    iget-object v5, v15, Lcom/android/server/wm/WindowState;->mWindowFrames:Lcom/android/server/wm/WindowFrames;

    iget-object v5, v5, Lcom/android/server/wm/WindowFrames;->mLastContentInsets:Landroid/graphics/Rect;

    .line 3194
    .local v5, "contentInsets":Landroid/graphics/Rect;
    iget-object v6, v15, Lcom/android/server/wm/WindowState;->mWindowFrames:Lcom/android/server/wm/WindowFrames;

    iget-object v6, v6, Lcom/android/server/wm/WindowFrames;->mLastVisibleInsets:Landroid/graphics/Rect;

    .line 3195
    .local v6, "visibleInsets":Landroid/graphics/Rect;
    iget-object v7, v15, Lcom/android/server/wm/WindowState;->mWindowFrames:Lcom/android/server/wm/WindowFrames;

    iget-object v7, v7, Lcom/android/server/wm/WindowFrames;->mLastStableInsets:Landroid/graphics/Rect;

    .line 3196
    .local v7, "stableInsets":Landroid/graphics/Rect;
    iget-object v8, v15, Lcom/android/server/wm/WindowState;->mWindowFrames:Lcom/android/server/wm/WindowFrames;

    iget-object v8, v8, Lcom/android/server/wm/WindowFrames;->mLastOutsets:Landroid/graphics/Rect;

    .line 3197
    .local v8, "outsets":Landroid/graphics/Rect;
    iget-object v11, v15, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    iget v11, v11, Lcom/android/server/wm/WindowStateAnimator;->mDrawState:I

    if-ne v11, v9, :cond_9e

    goto :goto_9f

    :cond_9e
    move v9, v10

    .line 3198
    .local v9, "reportDraw":Z
    :goto_9f
    iget-boolean v11, v15, Lcom/android/server/wm/WindowState;->mReportOrientationChanged:Z

    .line 3199
    .local v11, "reportOrientation":Z
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/WindowState;->getDisplayId()I

    move-result v12

    .line 3200
    .local v12, "displayId":I
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/WindowState;->getWmDisplayCutout()Lcom/android/server/wm/utils/WmDisplayCutout;

    move-result-object v13

    invoke-virtual {v13}, Lcom/android/server/wm/utils/WmDisplayCutout;->getDisplayCutout()Landroid/view/DisplayCutout;

    move-result-object v13
    :try_end_ad
    .catch Landroid/os/RemoteException; {:try_start_1f .. :try_end_ad} :catch_135

    .line 3201
    .local v13, "displayCutout":Landroid/view/DisplayCutout;
    :try_start_ad
    iget-object v1, v15, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v1, v1, Landroid/view/WindowManager$LayoutParams;->type:I
    :try_end_b1
    .catch Landroid/os/RemoteException; {:try_start_ad .. :try_end_b1} :catch_12f

    const/4 v2, 0x3

    if-eq v1, v2, :cond_df

    :try_start_b4
    iget-object v1, v15, Lcom/android/server/wm/WindowState;->mClient:Landroid/view/IWindow;

    instance-of v1, v1, Landroid/view/IWindow$Stub;

    if-eqz v1, :cond_df

    .line 3204
    iget-object v1, v15, Lcom/android/server/wm/WindowState;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v1, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    new-instance v1, Lcom/android/server/wm/WindowState$3;
    :try_end_c0
    .catch Landroid/os/RemoteException; {:try_start_b4 .. :try_end_c0} :catch_db

    move-object/from16 v18, v1

    const-wide/16 v26, 0x20

    move-object/from16 v16, v14

    move-object v14, v2

    move-object/from16 v2, p0

    move-object v10, v0

    :try_start_ca
    invoke-direct/range {v1 .. v13}, Lcom/android/server/wm/WindowState$3;-><init>(Lcom/android/server/wm/WindowState;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;ZLandroid/util/MergedConfiguration;ZILandroid/view/DisplayCutout;)V

    move-object/from16 v1, v18

    invoke-virtual {v14, v1}, Lcom/android/server/wm/WindowManagerService$H;->post(Ljava/lang/Runnable;)Z
    :try_end_d2
    .catch Landroid/os/RemoteException; {:try_start_ca .. :try_end_d2} :catch_d6

    move-object v2, v15

    move-object/from16 v1, v16

    goto :goto_100

    .line 3231
    .end local v0  # "mergedConfiguration":Landroid/util/MergedConfiguration;
    .end local v3  # "frame":Landroid/graphics/Rect;
    .end local v4  # "overscanInsets":Landroid/graphics/Rect;
    .end local v5  # "contentInsets":Landroid/graphics/Rect;
    .end local v6  # "visibleInsets":Landroid/graphics/Rect;
    .end local v7  # "stableInsets":Landroid/graphics/Rect;
    .end local v8  # "outsets":Landroid/graphics/Rect;
    .end local v9  # "reportDraw":Z
    .end local v11  # "reportOrientation":Z
    .end local v12  # "displayId":I
    .end local v13  # "displayCutout":Landroid/view/DisplayCutout;
    :catch_d6
    move-exception v0

    move-object v2, v15

    move-object/from16 v1, v16

    goto :goto_12d

    :catch_db
    move-exception v0

    const-wide/16 v26, 0x20

    goto :goto_138

    .line 3201
    .restart local v0  # "mergedConfiguration":Landroid/util/MergedConfiguration;
    .restart local v3  # "frame":Landroid/graphics/Rect;
    .restart local v4  # "overscanInsets":Landroid/graphics/Rect;
    .restart local v5  # "contentInsets":Landroid/graphics/Rect;
    .restart local v6  # "visibleInsets":Landroid/graphics/Rect;
    .restart local v7  # "stableInsets":Landroid/graphics/Rect;
    .restart local v8  # "outsets":Landroid/graphics/Rect;
    .restart local v9  # "reportDraw":Z
    .restart local v11  # "reportOrientation":Z
    .restart local v12  # "displayId":I
    .restart local v13  # "displayCutout":Landroid/view/DisplayCutout;
    :cond_df
    move-object/from16 v16, v14

    const-wide/16 v26, 0x20

    .line 3217
    move-object/from16 v1, v16

    move-object/from16 v14, p0

    move-object v2, v15

    move-object v15, v3

    move-object/from16 v16, v4

    move-object/from16 v17, v5

    move-object/from16 v18, v6

    move-object/from16 v19, v7

    move-object/from16 v20, v8

    move/from16 v21, v9

    move-object/from16 v22, v0

    move/from16 v23, v11

    move/from16 v24, v12

    move-object/from16 v25, v13

    :try_start_fd
    invoke-direct/range {v14 .. v25}, Lcom/android/server/wm/WindowState;->dispatchResized(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;ZLandroid/util/MergedConfiguration;ZILandroid/view/DisplayCutout;)V

    .line 3223
    :goto_100
    iget-object v10, v2, Lcom/android/server/wm/WindowState;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v10, v10, Lcom/android/server/wm/WindowManagerService;->mAccessibilityController:Lcom/android/server/wm/AccessibilityController;

    if-eqz v10, :cond_11d

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/WindowState;->getDisplayId()I

    move-result v10

    if-eqz v10, :cond_116

    .line 3224
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/WindowState;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v10

    invoke-virtual {v10}, Lcom/android/server/wm/DisplayContent;->getParentWindow()Lcom/android/server/wm/WindowState;

    move-result-object v10

    if-eqz v10, :cond_11d

    .line 3225
    :cond_116
    iget-object v10, v2, Lcom/android/server/wm/WindowState;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v10, v10, Lcom/android/server/wm/WindowManagerService;->mAccessibilityController:Lcom/android/server/wm/AccessibilityController;

    invoke-virtual {v10}, Lcom/android/server/wm/AccessibilityController;->onSomeWindowResizedOrMovedLocked()V

    .line 3228
    :cond_11d
    iget-object v10, v2, Lcom/android/server/wm/WindowState;->mWindowFrames:Lcom/android/server/wm/WindowFrames;

    invoke-virtual {v10}, Lcom/android/server/wm/WindowFrames;->resetInsetsChanged()V

    .line 3229
    iget-object v10, v2, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;
    :try_end_124
    .catch Landroid/os/RemoteException; {:try_start_fd .. :try_end_124} :catch_12c

    const/4 v14, 0x0

    :try_start_125
    iput-boolean v14, v10, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceResized:Z

    .line 3230
    iput-boolean v14, v2, Lcom/android/server/wm/WindowState;->mReportOrientationChanged:Z
    :try_end_129
    .catch Landroid/os/RemoteException; {:try_start_125 .. :try_end_129} :catch_12a

    .line 3240
    .end local v0  # "mergedConfiguration":Landroid/util/MergedConfiguration;
    .end local v3  # "frame":Landroid/graphics/Rect;
    .end local v4  # "overscanInsets":Landroid/graphics/Rect;
    .end local v5  # "contentInsets":Landroid/graphics/Rect;
    .end local v6  # "visibleInsets":Landroid/graphics/Rect;
    .end local v7  # "stableInsets":Landroid/graphics/Rect;
    .end local v8  # "outsets":Landroid/graphics/Rect;
    .end local v9  # "reportDraw":Z
    .end local v11  # "reportOrientation":Z
    .end local v12  # "displayId":I
    .end local v13  # "displayCutout":Landroid/view/DisplayCutout;
    goto :goto_171

    .line 3231
    :catch_12a
    move-exception v0

    goto :goto_13b

    :catch_12c
    move-exception v0

    :goto_12d
    const/4 v14, 0x0

    goto :goto_13b

    :catch_12f
    move-exception v0

    move-object v1, v14

    move-object v2, v15

    const-wide/16 v26, 0x20

    goto :goto_13a

    :catch_135
    move-exception v0

    move-wide/from16 v26, v1

    :goto_138
    move-object v1, v14

    move-object v2, v15

    :goto_13a
    move v14, v10

    .line 3232
    .local v0, "e":Landroid/os/RemoteException;
    :goto_13b
    invoke-virtual {v2, v14}, Lcom/android/server/wm/WindowState;->setOrientationChanging(Z)V

    .line 3233
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    iget-object v5, v2, Lcom/android/server/wm/WindowState;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-wide v5, v5, Lcom/android/server/wm/WindowManagerService;->mDisplayFreezeTime:J

    sub-long/2addr v3, v5

    long-to-int v3, v3

    iput v3, v2, Lcom/android/server/wm/WindowState;->mLastFreezeDuration:I

    .line 3236
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to report \'resized\' to the client of "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ", removing this window."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3238
    iget-object v1, v2, Lcom/android/server/wm/WindowState;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mPendingRemove:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3239
    iget-object v1, v2, Lcom/android/server/wm/WindowState;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mWindowPlacerLocked:Lcom/android/server/wm/WindowSurfacePlacer;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowSurfacePlacer;->requestTraversal()V

    .line 3241
    .end local v0  # "e":Landroid/os/RemoteException;
    :goto_171
    invoke-static/range {v26 .. v27}, Landroid/os/Trace;->traceEnd(J)V

    .line 3242
    return-void
.end method

.method requestUpdateWallpaperIfNeeded()V
    .registers 4

    .line 3889
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    .line 3890
    .local v0, "dc":Lcom/android/server/wm/DisplayContent;
    if-eqz v0, :cond_1f

    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v1, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v2, 0x100000

    and-int/2addr v1, v2

    if-eqz v1, :cond_1f

    .line 3891
    iget v1, v0, Lcom/android/server/wm/DisplayContent;->pendingLayoutChanges:I

    or-int/lit8 v1, v1, 0x4

    iput v1, v0, Lcom/android/server/wm/DisplayContent;->pendingLayoutChanges:I

    .line 3892
    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->setLayoutNeeded()V

    .line 3893
    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mWindowPlacerLocked:Lcom/android/server/wm/WindowSurfacePlacer;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowSurfacePlacer;->requestTraversal()V

    .line 3896
    :cond_1f
    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .local v1, "i":I
    :goto_27
    if-ltz v1, :cond_37

    .line 3897
    iget-object v2, p0, Lcom/android/server/wm/WindowState;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v2, v1}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/WindowState;

    .line 3898
    .local v2, "c":Lcom/android/server/wm/WindowState;
    invoke-virtual {v2}, Lcom/android/server/wm/WindowState;->requestUpdateWallpaperIfNeeded()V

    .line 3896
    .end local v2  # "c":Lcom/android/server/wm/WindowState;
    add-int/lit8 v1, v1, -0x1

    goto :goto_27

    .line 3900
    .end local v1  # "i":I
    :cond_37
    return-void
.end method

.method resetAppOpsState()V
    .registers 5

    .line 2797
    iget v0, p0, Lcom/android/server/wm/WindowState;->mAppOp:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1a

    iget-boolean v0, p0, Lcom/android/server/wm/WindowState;->mAppOpVisibility:Z

    if-eqz v0, :cond_1a

    .line 2798
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mAppOps:Landroid/app/AppOpsManager;

    iget v1, p0, Lcom/android/server/wm/WindowState;->mAppOp:I

    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getOwningUid()I

    move-result v2

    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getOwningPackage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/AppOpsManager;->finishOp(IILjava/lang/String;)V

    .line 2800
    :cond_1a
    return-void
.end method

.method resetContentChanged()V
    .registers 3

    .line 5165
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mWindowFrames:Lcom/android/server/wm/WindowFrames;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/server/wm/WindowFrames;->setContentChanged(Z)V

    .line 5166
    return-void
.end method

.method resetDragResizingChangeReported()V
    .registers 2

    .line 3406
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/wm/WindowState;->mDragResizingChangeReported:Z

    .line 3407
    invoke-super {p0}, Lcom/android/server/wm/WindowContainer;->resetDragResizingChangeReported()V

    .line 3408
    return-void
.end method

.method resetLastContentInsets()V
    .registers 2

    .line 5152
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mWindowFrames:Lcom/android/server/wm/WindowFrames;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowFrames;->resetLastContentInsets()V

    .line 5153
    return-void
.end method

.method seamlesslyRotateIfAllowed(Landroid/view/SurfaceControl$Transaction;IIZ)V
    .registers 7
    .param p1, "transaction"  # Landroid/view/SurfaceControl$Transaction;
    .param p2, "oldRotation"  # I
    .param p3, "rotation"  # I
    .param p4, "requested"  # Z

    .line 625
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->isVisibleNow()Z

    move-result v0

    if-eqz v0, :cond_30

    iget-boolean v0, p0, Lcom/android/server/wm/WindowState;->mIsWallpaper:Z

    if-eqz v0, :cond_b

    goto :goto_30

    .line 629
    :cond_b
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mPendingSeamlessRotate:Lcom/android/server/wm/SeamlessRotator;

    if-eqz v0, :cond_13

    .line 630
    invoke-virtual {v0}, Lcom/android/server/wm/SeamlessRotator;->getOldRotation()I

    move-result p2

    .line 633
    :cond_13
    iget-boolean v0, p0, Lcom/android/server/wm/WindowState;->mForceSeamlesslyRotate:Z

    if-nez v0, :cond_19

    if-eqz p4, :cond_2f

    .line 634
    :cond_19
    new-instance v0, Lcom/android/server/wm/SeamlessRotator;

    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getDisplayInfo()Landroid/view/DisplayInfo;

    move-result-object v1

    invoke-direct {v0, p2, p3, v1}, Lcom/android/server/wm/SeamlessRotator;-><init>(IILandroid/view/DisplayInfo;)V

    iput-object v0, p0, Lcom/android/server/wm/WindowState;->mPendingSeamlessRotate:Lcom/android/server/wm/SeamlessRotator;

    .line 635
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mPendingSeamlessRotate:Lcom/android/server/wm/SeamlessRotator;

    invoke-virtual {v0, p1, p0}, Lcom/android/server/wm/SeamlessRotator;->unrotate(Landroid/view/SurfaceControl$Transaction;Lcom/android/server/wm/WindowState;)V

    .line 636
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mWmService:Lcom/android/server/wm/WindowManagerService;

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Lcom/android/server/wm/WindowManagerService;->markForSeamlessRotation(Lcom/android/server/wm/WindowState;Z)V

    .line 638
    :cond_2f
    return-void

    .line 626
    :cond_30
    :goto_30
    return-void
.end method

.method sendAppVisibilityToClients()V
    .registers 7

    .line 2873
    invoke-super {p0}, Lcom/android/server/wm/WindowContainer;->sendAppVisibilityToClients()V

    .line 2875
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    invoke-virtual {v0}, Lcom/android/server/wm/AppWindowToken;->isClientHidden()Z

    move-result v0

    .line 2876
    .local v0, "clientHidden":Z
    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v1, v1, Landroid/view/WindowManager$LayoutParams;->type:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_13

    if-eqz v0, :cond_13

    .line 2878
    return-void

    .line 2881
    :cond_13
    const/4 v1, 0x1

    if-eqz v0, :cond_34

    .line 2885
    iget-object v2, p0, Lcom/android/server/wm/WindowState;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowList;->size()I

    move-result v2

    sub-int/2addr v2, v1

    .local v2, "i":I
    :goto_1d
    if-ltz v2, :cond_2f

    .line 2886
    iget-object v3, p0, Lcom/android/server/wm/WindowState;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v3, v2}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/WindowState;

    .line 2887
    .local v3, "c":Lcom/android/server/wm/WindowState;
    iget-object v4, v3, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    invoke-virtual {v4}, Lcom/android/server/wm/WindowStateAnimator;->detachChildren()V

    .line 2885
    .end local v3  # "c":Lcom/android/server/wm/WindowState;
    add-int/lit8 v2, v2, -0x1

    goto :goto_1d

    .line 2890
    .end local v2  # "i":I
    :cond_2f
    iget-object v2, p0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowStateAnimator;->detachChildren()V

    .line 2894
    :cond_34
    :try_start_34
    sget-boolean v2, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_VISIBILITY:Z

    const/4 v3, 0x0

    if-eqz v2, :cond_5c

    const-string v2, "WindowManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Setting visibility of "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, ": "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez v0, :cond_51

    move v5, v1

    goto :goto_52

    :cond_51
    move v5, v3

    :goto_52
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2896
    :cond_5c
    iget-object v2, p0, Lcom/android/server/wm/WindowState;->mClient:Landroid/view/IWindow;

    if-nez v0, :cond_61

    goto :goto_62

    :cond_61
    move v1, v3

    :goto_62
    invoke-interface {v2, v1}, Landroid/view/IWindow;->dispatchAppVisibility(Z)V
    :try_end_65
    .catch Landroid/os/RemoteException; {:try_start_34 .. :try_end_65} :catch_66

    .line 2898
    goto :goto_67

    .line 2897
    :catch_66
    move-exception v1

    .line 2899
    :goto_67
    return-void
.end method

.method setDisplayLayoutNeeded()V
    .registers 2

    .line 2270
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    .line 2271
    .local v0, "dc":Lcom/android/server/wm/DisplayContent;
    if-eqz v0, :cond_9

    .line 2272
    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->setLayoutNeeded()V

    .line 2274
    :cond_9
    return-void
.end method

.method setDragResizing()V
    .registers 4

    .line 3441
    invoke-direct {p0}, Lcom/android/server/wm/WindowState;->computeDragResizing()Z

    move-result v0

    .line 3442
    .local v0, "resizing":Z
    iget-boolean v1, p0, Lcom/android/server/wm/WindowState;->mDragResizing:Z

    if-ne v0, v1, :cond_9

    .line 3443
    return-void

    .line 3445
    :cond_9
    iput-boolean v0, p0, Lcom/android/server/wm/WindowState;->mDragResizing:Z

    .line 3446
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getTask()Lcom/android/server/wm/Task;

    move-result-object v1

    .line 3447
    .local v1, "task":Lcom/android/server/wm/Task;
    if-eqz v1, :cond_1e

    invoke-virtual {v1}, Lcom/android/server/wm/Task;->isDragResizing()Z

    move-result v2

    if-eqz v2, :cond_1e

    .line 3448
    invoke-virtual {v1}, Lcom/android/server/wm/Task;->getDragResizeMode()I

    move-result v2

    iput v2, p0, Lcom/android/server/wm/WindowState;->mResizeMode:I

    goto :goto_33

    .line 3450
    :cond_1e
    iget-boolean v2, p0, Lcom/android/server/wm/WindowState;->mDragResizing:Z

    if-eqz v2, :cond_30

    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v2

    iget-object v2, v2, Lcom/android/server/wm/DisplayContent;->mDividerControllerLocked:Lcom/android/server/wm/DockedStackDividerController;

    invoke-virtual {v2}, Lcom/android/server/wm/DockedStackDividerController;->isResizing()Z

    move-result v2

    if-eqz v2, :cond_30

    .line 3451
    const/4 v2, 0x1

    goto :goto_31

    .line 3452
    :cond_30
    const/4 v2, 0x0

    :goto_31
    iput v2, p0, Lcom/android/server/wm/WindowState;->mResizeMode:I

    .line 3454
    :goto_33
    return-void
.end method

.method setDrawnStateEvaluated(Z)V
    .registers 2
    .param p1, "evaluated"  # Z

    .line 820
    iput-boolean p1, p0, Lcom/android/server/wm/WindowState;->mDrawnStateEvaluated:Z

    .line 821
    return-void
.end method

.method setForceHideNonSystemOverlayWindowIfNeeded(Z)V
    .registers 4
    .param p1, "forceHide"  # Z

    .line 2733
    iget-boolean v0, p0, Lcom/android/server/wm/WindowState;->mOwnerCanAddInternalSystemWindow:Z

    if-nez v0, :cond_29

    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 2734
    invoke-static {v0}, Landroid/view/WindowManager$LayoutParams;->isSystemAlertWindowType(I)Z

    move-result v0

    if-nez v0, :cond_17

    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v1, 0x7d5

    if-eq v0, v1, :cond_17

    goto :goto_29

    .line 2737
    :cond_17
    iget-boolean v0, p0, Lcom/android/server/wm/WindowState;->mForceHideNonSystemOverlayWindow:Z

    if-ne v0, p1, :cond_1c

    .line 2738
    return-void

    .line 2740
    :cond_1c
    iput-boolean p1, p0, Lcom/android/server/wm/WindowState;->mForceHideNonSystemOverlayWindow:Z

    .line 2741
    const/4 v0, 0x1

    if-eqz p1, :cond_25

    .line 2742
    invoke-virtual {p0, v0, v0}, Lcom/android/server/wm/WindowState;->hideLw(ZZ)Z

    goto :goto_28

    .line 2744
    :cond_25
    invoke-virtual {p0, v0, v0}, Lcom/android/server/wm/WindowState;->showLw(ZZ)Z

    .line 2746
    :goto_28
    return-void

    .line 2735
    :cond_29
    :goto_29
    return-void
.end method

.method setFrameNumber(J)V
    .registers 3
    .param p1, "frameNumber"  # J

    .line 5098
    iput-wide p1, p0, Lcom/android/server/wm/WindowState;->mFrameNumber:J

    .line 5099
    return-void
.end method

.method setHasSurface(Z)V
    .registers 2
    .param p1, "hasSurface"  # Z

    .line 2122
    iput-boolean p1, p0, Lcom/android/server/wm/WindowState;->mHasSurface:Z

    .line 2123
    return-void
.end method

.method setHiddenWhileSuspended(Z)V
    .registers 4
    .param p1, "hide"  # Z

    .line 2749
    iget-boolean v0, p0, Lcom/android/server/wm/WindowState;->mOwnerCanAddInternalSystemWindow:Z

    if-nez v0, :cond_29

    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 2750
    invoke-static {v0}, Landroid/view/WindowManager$LayoutParams;->isSystemAlertWindowType(I)Z

    move-result v0

    if-nez v0, :cond_17

    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v1, 0x7d5

    if-eq v0, v1, :cond_17

    goto :goto_29

    .line 2753
    :cond_17
    iget-boolean v0, p0, Lcom/android/server/wm/WindowState;->mHiddenWhileSuspended:Z

    if-ne v0, p1, :cond_1c

    .line 2754
    return-void

    .line 2756
    :cond_1c
    iput-boolean p1, p0, Lcom/android/server/wm/WindowState;->mHiddenWhileSuspended:Z

    .line 2757
    const/4 v0, 0x1

    if-eqz p1, :cond_25

    .line 2758
    invoke-virtual {p0, v0, v0}, Lcom/android/server/wm/WindowState;->hideLw(ZZ)Z

    goto :goto_28

    .line 2760
    :cond_25
    invoke-virtual {p0, v0, v0}, Lcom/android/server/wm/WindowState;->showLw(ZZ)Z

    .line 2762
    :goto_28
    return-void

    .line 2751
    :cond_29
    :goto_29
    return-void
.end method

.method setInsetProvider(Lcom/android/server/wm/InsetsSourceProvider;)V
    .registers 2
    .param p1, "insetProvider"  # Lcom/android/server/wm/InsetsSourceProvider;

    .line 5169
    iput-object p1, p0, Lcom/android/server/wm/WindowState;->mInsetProvider:Lcom/android/server/wm/InsetsSourceProvider;

    .line 5170
    return-void
.end method

.method setLastReportedMergedConfiguration(Landroid/util/MergedConfiguration;)V
    .registers 3
    .param p1, "config"  # Landroid/util/MergedConfiguration;

    .line 2485
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mLastReportedConfiguration:Landroid/util/MergedConfiguration;

    invoke-virtual {v0, p1}, Landroid/util/MergedConfiguration;->setTo(Landroid/util/MergedConfiguration;)V

    .line 2486
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/wm/WindowState;->mLastConfigReportedToClient:Z

    .line 2487
    return-void
.end method

.method setOrientationChanging(Z)V
    .registers 8
    .param p1, "changing"  # Z

    .line 1340
    iput-boolean p1, p0, Lcom/android/server/wm/WindowState;->mOrientationChanging:Z

    .line 1341
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/wm/WindowState;->mOrientationChangeTimedOut:Z

    .line 1343
    iget-boolean v1, p0, Lcom/android/server/wm/WindowState;->mOrientationChanging:Z

    if-eqz v1, :cond_3e

    .line 1344
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getParentWindow()Lcom/android/server/wm/WindowState;

    move-result-object v1

    .line 1345
    .local v1, "parentWindow":Lcom/android/server/wm/WindowState;
    if-eqz v1, :cond_12

    iget-object v2, v1, Lcom/android/server/wm/WindowState;->mSession:Lcom/android/server/wm/Session;

    goto :goto_14

    :cond_12
    iget-object v2, p0, Lcom/android/server/wm/WindowState;->mSession:Lcom/android/server/wm/Session;

    .line 1346
    .local v2, "session":Lcom/android/server/wm/Session;
    :goto_14
    iget v3, v2, Lcom/android/server/wm/Session;->mPid:I

    sget v4, Lcom/android/server/am/ActivityManagerService;->MY_PID:I

    if-eq v3, v4, :cond_3d

    iget v3, v2, Lcom/android/server/wm/Session;->mPid:I

    if-gez v3, :cond_1f

    goto :goto_3d

    .line 1347
    :cond_1f
    iget-object v3, p0, Lcom/android/server/wm/WindowState;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v3, Lcom/android/server/wm/WindowManagerService;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget v4, v2, Lcom/android/server/wm/Session;->mPid:I

    iget v5, v2, Lcom/android/server/wm/Session;->mUid:I

    invoke-virtual {v3, v4, v5}, Lcom/android/server/wm/ActivityTaskManagerService;->getProcessController(II)Lcom/android/server/wm/WindowProcessController;

    move-result-object v3

    .line 1348
    .local v3, "app":Lcom/android/server/wm/WindowProcessController;
    if-eqz v3, :cond_3e

    invoke-virtual {v3}, Lcom/android/server/wm/WindowProcessController;->isFrozen()Z

    move-result v4

    if-eqz v4, :cond_3e

    .line 1349
    const-string v4, "WindowManager"

    const-string v5, "dot not setOrientationChanging because app process is frozen"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1350
    iput-boolean v0, p0, Lcom/android/server/wm/WindowState;->mOrientationChanging:Z

    goto :goto_3e

    .line 1346
    .end local v3  # "app":Lcom/android/server/wm/WindowProcessController;
    :cond_3d
    :goto_3d
    return-void

    .line 1354
    .end local v1  # "parentWindow":Lcom/android/server/wm/WindowState;
    .end local v2  # "session":Lcom/android/server/wm/Session;
    :cond_3e
    :goto_3e
    return-void
.end method

.method setPolicyVisibilityFlag(I)V
    .registers 3
    .param p1, "policyVisibilityFlag"  # I

    .line 1498
    iget v0, p0, Lcom/android/server/wm/WindowState;->mPolicyVisibility:I

    or-int/2addr v0, p1

    iput v0, p0, Lcom/android/server/wm/WindowState;->mPolicyVisibility:I

    .line 1499
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mWmService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerService;->scheduleAnimationLocked()V

    .line 1500
    return-void
.end method

.method setReplacementWindowIfNeeded(Lcom/android/server/wm/WindowState;)Z
    .registers 6
    .param p1, "replacementCandidate"  # Lcom/android/server/wm/WindowState;

    .line 2251
    const/4 v0, 0x0

    .line 2253
    .local v0, "replacementSet":Z
    iget-boolean v1, p0, Lcom/android/server/wm/WindowState;->mWillReplaceWindow:Z

    if-eqz v1, :cond_28

    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mReplacementWindow:Lcom/android/server/wm/WindowState;

    if-nez v1, :cond_28

    .line 2254
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getWindowTag()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->getWindowTag()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_28

    .line 2256
    iput-object p1, p0, Lcom/android/server/wm/WindowState;->mReplacementWindow:Lcom/android/server/wm/WindowState;

    .line 2257
    iget-boolean v1, p0, Lcom/android/server/wm/WindowState;->mAnimateReplacingWindow:Z

    xor-int/lit8 v1, v1, 0x1

    iput-boolean v1, p1, Lcom/android/server/wm/WindowState;->mSkipEnterAnimationForSeamlessReplacement:Z

    .line 2258
    const/4 v0, 0x1

    .line 2261
    :cond_28
    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .local v1, "i":I
    :goto_30
    if-ltz v1, :cond_42

    .line 2262
    iget-object v2, p0, Lcom/android/server/wm/WindowState;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v2, v1}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/WindowState;

    .line 2263
    .local v2, "c":Lcom/android/server/wm/WindowState;
    invoke-virtual {v2, p1}, Lcom/android/server/wm/WindowState;->setReplacementWindowIfNeeded(Lcom/android/server/wm/WindowState;)Z

    move-result v3

    or-int/2addr v0, v3

    .line 2261
    .end local v2  # "c":Lcom/android/server/wm/WindowState;
    add-int/lit8 v1, v1, -0x1

    goto :goto_30

    .line 2266
    .end local v1  # "i":I
    :cond_42
    return v0
.end method

.method setReportResizeHints()Z
    .registers 2

    .line 1220
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mWindowFrames:Lcom/android/server/wm/WindowFrames;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowFrames;->setReportResizeHints()Z

    move-result v0

    return v0
.end method

.method setRequestedSize(II)V
    .registers 4
    .param p1, "requestedWidth"  # I
    .param p2, "requestedHeight"  # I

    .line 2410
    iget v0, p0, Lcom/android/server/wm/WindowState;->mRequestedWidth:I

    if-ne v0, p1, :cond_8

    iget v0, p0, Lcom/android/server/wm/WindowState;->mRequestedHeight:I

    if-eq v0, p2, :cond_f

    .line 2411
    :cond_8
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/wm/WindowState;->mLayoutNeeded:Z

    .line 2412
    iput p1, p0, Lcom/android/server/wm/WindowState;->mRequestedWidth:I

    .line 2413
    iput p2, p0, Lcom/android/server/wm/WindowState;->mRequestedHeight:I

    .line 2415
    :cond_f
    return-void
.end method

.method setShowToOwnerOnlyLocked(Z)V
    .registers 2
    .param p1, "showToOwnerOnly"  # Z

    .line 3001
    iput-boolean p1, p0, Lcom/android/server/wm/WindowState;->mShowToOwnerOnly:Z

    .line 3002
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

    .line 659
    .local p1, "exclusionRects":Ljava/util/List;, "Ljava/util/List<Landroid/graphics/Rect;>;"
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mExclusionRects:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 660
    const/4 v0, 0x0

    return v0

    .line 662
    :cond_a
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mExclusionRects:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 663
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mExclusionRects:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 664
    const/4 v0, 0x1

    return v0
.end method

.method setWaitingForDrawnIfResizingChanged()V
    .registers 2

    .line 3388
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->isDragResizeChanged()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 3389
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mWaitingForDrawn:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3391
    :cond_d
    invoke-super {p0}, Lcom/android/server/wm/WindowContainer;->setWaitingForDrawnIfResizingChanged()V

    .line 3392
    return-void
.end method

.method setWillReplaceChildWindows()V
    .registers 3

    .line 3932
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->shouldBeReplacedWithChildren()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 3933
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/server/wm/WindowState;->setWillReplaceWindow(Z)V

    .line 3935
    :cond_a
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_12
    if-ltz v0, :cond_22

    .line 3936
    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v1, v0}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/WindowState;

    .line 3937
    .local v1, "c":Lcom/android/server/wm/WindowState;
    invoke-virtual {v1}, Lcom/android/server/wm/WindowState;->setWillReplaceChildWindows()V

    .line 3935
    .end local v1  # "c":Lcom/android/server/wm/WindowState;
    add-int/lit8 v0, v0, -0x1

    goto :goto_12

    .line 3939
    .end local v0  # "i":I
    :cond_22
    return-void
.end method

.method setWillReplaceWindow(Z)V
    .registers 5
    .param p1, "animate"  # Z

    .line 3846
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowList;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    .local v0, "i":I
    :goto_8
    if-ltz v0, :cond_18

    .line 3847
    iget-object v2, p0, Lcom/android/server/wm/WindowState;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v2, v0}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/WindowState;

    .line 3848
    .local v2, "c":Lcom/android/server/wm/WindowState;
    invoke-virtual {v2, p1}, Lcom/android/server/wm/WindowState;->setWillReplaceWindow(Z)V

    .line 3846
    .end local v2  # "c":Lcom/android/server/wm/WindowState;
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    .line 3851
    .end local v0  # "i":I
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

    .line 3858
    :cond_2a
    iput-boolean v1, p0, Lcom/android/server/wm/WindowState;->mWillReplaceWindow:Z

    .line 3859
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/wm/WindowState;->mReplacementWindow:Lcom/android/server/wm/WindowState;

    .line 3860
    iput-boolean p1, p0, Lcom/android/server/wm/WindowState;->mAnimateReplacingWindow:Z

    .line 3861
    return-void

    .line 3855
    :cond_32
    :goto_32
    return-void
.end method

.method setWindowScale(II)V
    .registers 7
    .param p1, "requestedWidth"  # I
    .param p2, "requestedHeight"  # I

    .line 2511
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit16 v0, v0, 0x4000

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    .line 2513
    .local v0, "scaledWindow":Z
    :goto_b
    const/high16 v1, 0x3f800000  # 1.0f

    if-eqz v0, :cond_32

    .line 2517
    iget-object v2, p0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v2, v2, Landroid/view/WindowManager$LayoutParams;->width:I

    if-eq v2, p1, :cond_1d

    .line 2518
    iget-object v2, p0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v2, v2, Landroid/view/WindowManager$LayoutParams;->width:I

    int-to-float v2, v2

    int-to-float v3, p1

    div-float/2addr v2, v3

    goto :goto_1e

    :cond_1d
    move v2, v1

    :goto_1e
    iput v2, p0, Lcom/android/server/wm/WindowState;->mHScale:F

    .line 2519
    iget-object v2, p0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v2, v2, Landroid/view/WindowManager$LayoutParams;->height:I

    if-eq v2, p2, :cond_2e

    .line 2520
    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v1, v1, Landroid/view/WindowManager$LayoutParams;->height:I

    int-to-float v1, v1

    int-to-float v2, p2

    div-float/2addr v1, v2

    goto :goto_2f

    :cond_2e
    nop

    :goto_2f
    iput v1, p0, Lcom/android/server/wm/WindowState;->mVScale:F

    goto :goto_36

    .line 2522
    :cond_32
    iput v1, p0, Lcom/android/server/wm/WindowState;->mVScale:F

    iput v1, p0, Lcom/android/server/wm/WindowState;->mHScale:F

    .line 2524
    :goto_36
    return-void
.end method

.method shouldBeReplacedWithChildren()Z
    .registers 3

    .line 3927
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

    .line 4824
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

    .line 4833
    :cond_29
    const/4 v0, 0x1

    return v0

    .line 4831
    :cond_2b
    :goto_2b
    const/4 v0, 0x0

    return v0
.end method

.method public showLw(Z)Z
    .registers 3
    .param p1, "doAnimation"  # Z

    .line 2630
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/android/server/wm/WindowState;->showLw(ZZ)Z

    move-result v0

    return v0
.end method

.method showLw(ZZ)Z
    .registers 7
    .param p1, "doAnimation"  # Z
    .param p2, "requestAnim"  # Z

    .line 2634
    invoke-direct {p0}, Lcom/android/server/wm/WindowState;->isLegacyPolicyVisibility()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_c

    iget-boolean v0, p0, Lcom/android/server/wm/WindowState;->mLegacyPolicyVisibilityAfterAnim:Z

    if-eqz v0, :cond_c

    .line 2636
    return v1

    .line 2638
    :cond_c
    invoke-direct {p0}, Lcom/android/server/wm/WindowState;->isHiddenFromUserLocked()Z

    move-result v0

    if-eqz v0, :cond_13

    .line 2639
    return v1

    .line 2641
    :cond_13
    iget-boolean v0, p0, Lcom/android/server/wm/WindowState;->mAppOpVisibility:Z

    if-nez v0, :cond_18

    .line 2643
    return v1

    .line 2645
    :cond_18
    iget-boolean v0, p0, Lcom/android/server/wm/WindowState;->mPermanentlyHidden:Z

    if-eqz v0, :cond_1d

    .line 2648
    return v1

    .line 2650
    :cond_1d
    iget-boolean v0, p0, Lcom/android/server/wm/WindowState;->mHiddenWhileSuspended:Z

    if-eqz v0, :cond_22

    .line 2652
    return v1

    .line 2654
    :cond_22
    iget-boolean v0, p0, Lcom/android/server/wm/WindowState;->mForceHideNonSystemOverlayWindow:Z

    if-eqz v0, :cond_27

    .line 2656
    return v1

    .line 2658
    :cond_27
    sget-boolean v0, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_VISIBILITY:Z

    const-string v2, "WindowManager"

    if-eqz v0, :cond_41

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Policy visibility true: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2659
    :cond_41
    if-eqz p1, :cond_82

    .line 2660
    sget-boolean v0, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_VISIBILITY:Z

    if-eqz v0, :cond_6b

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "doAnimation: mPolicyVisibility="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2661
    invoke-direct {p0}, Lcom/android/server/wm/WindowState;->isLegacyPolicyVisibility()Z

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, " animating="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->isAnimating()Z

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2660
    invoke-static {v2, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2662
    :cond_6b
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mToken:Lcom/android/server/wm/WindowToken;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowToken;->okToAnimate()Z

    move-result v0

    if-nez v0, :cond_75

    .line 2663
    const/4 p1, 0x0

    goto :goto_82

    .line 2664
    :cond_75
    invoke-direct {p0}, Lcom/android/server/wm/WindowState;->isLegacyPolicyVisibility()Z

    move-result v0

    if-eqz v0, :cond_82

    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->isAnimating()Z

    move-result v0

    if-nez v0, :cond_82

    .line 2668
    const/4 p1, 0x0

    .line 2671
    :cond_82
    :goto_82
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/server/wm/WindowState;->setPolicyVisibilityFlag(I)V

    .line 2672
    iput-boolean v0, p0, Lcom/android/server/wm/WindowState;->mLegacyPolicyVisibilityAfterAnim:Z

    .line 2673
    if-eqz p1, :cond_8f

    .line 2674
    iget-object v2, p0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    invoke-virtual {v2, v0, v0}, Lcom/android/server/wm/WindowStateAnimator;->applyAnimationLocked(IZ)Z

    .line 2676
    :cond_8f
    if-eqz p2, :cond_96

    .line 2677
    iget-object v2, p0, Lcom/android/server/wm/WindowState;->mWmService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowManagerService;->scheduleAnimationLocked()V

    .line 2679
    :cond_96
    iget-object v2, p0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v2, v2, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit8 v2, v2, 0x8

    if-nez v2, :cond_a3

    .line 2680
    iget-object v2, p0, Lcom/android/server/wm/WindowState;->mWmService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v2, v1, v1}, Lcom/android/server/wm/WindowManagerService;->updateFocusedWindowLocked(IZ)Z

    .line 2682
    :cond_a3
    return v0
.end method

.method startAnimation(Landroid/view/animation/Animation;)V
    .registers 8
    .param p1, "anim"  # Landroid/view/animation/Animation;

    .line 4674
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mInsetProvider:Lcom/android/server/wm/InsetsSourceProvider;

    if-eqz v0, :cond_b

    invoke-virtual {v0}, Lcom/android/server/wm/InsetsSourceProvider;->isControllable()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 4675
    return-void

    .line 4678
    :cond_b
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->getDisplayInfo()Landroid/view/DisplayInfo;

    move-result-object v0

    .line 4679
    .local v0, "displayInfo":Landroid/view/DisplayInfo;
    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mWindowFrames:Lcom/android/server/wm/WindowFrames;

    iget-object v1, v1, Lcom/android/server/wm/WindowFrames;->mFrame:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    iget-object v2, p0, Lcom/android/server/wm/WindowState;->mWindowFrames:Lcom/android/server/wm/WindowFrames;

    iget-object v2, v2, Lcom/android/server/wm/WindowFrames;->mFrame:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    iget v3, v0, Landroid/view/DisplayInfo;->appWidth:I

    iget v4, v0, Landroid/view/DisplayInfo;->appHeight:I

    invoke-virtual {p1, v1, v2, v3, v4}, Landroid/view/animation/Animation;->initialize(IIII)V

    .line 4681
    const-wide/16 v1, 0x2710

    invoke-virtual {p1, v1, v2}, Landroid/view/animation/Animation;->restrictDuration(J)V

    .line 4682
    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mWmService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowManagerService;->getWindowAnimationScaleLocked()F

    move-result v1

    invoke-virtual {p1, v1}, Landroid/view/animation/Animation;->scaleCurrentDuration(F)V

    .line 4683
    new-instance v1, Lcom/android/server/wm/LocalAnimationAdapter;

    new-instance v2, Lcom/android/server/wm/WindowAnimationSpec;

    iget-object v3, p0, Lcom/android/server/wm/WindowState;->mSurfacePosition:Landroid/graphics/Point;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-direct {v2, p1, v3, v4, v5}, Lcom/android/server/wm/WindowAnimationSpec;-><init>(Landroid/view/animation/Animation;Landroid/graphics/Point;ZF)V

    iget-object v3, p0, Lcom/android/server/wm/WindowState;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v3, Lcom/android/server/wm/WindowManagerService;->mSurfaceAnimationRunner:Lcom/android/server/wm/SurfaceAnimationRunner;

    invoke-direct {v1, v2, v3}, Lcom/android/server/wm/LocalAnimationAdapter;-><init>(Lcom/android/server/wm/LocalAnimationAdapter$AnimationSpec;Lcom/android/server/wm/SurfaceAnimationRunner;)V

    .line 4687
    .local v1, "adapter":Lcom/android/server/wm/AnimationAdapter;
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getPendingTransaction()Landroid/view/SurfaceControl$Transaction;

    move-result-object v2

    invoke-direct {p0, v2, v1}, Lcom/android/server/wm/WindowState;->startAnimation(Landroid/view/SurfaceControl$Transaction;Lcom/android/server/wm/AnimationAdapter;)V

    .line 4688
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->commitPendingTransaction()V

    .line 4689
    return-void
.end method

.method surfaceInsetsChanging()Z
    .registers 3

    .line 4582
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mLastSurfaceInsets:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget-object v1, v1, Landroid/view/WindowManager$LayoutParams;->surfaceInsets:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method switchUser()V
    .registers 4

    .line 2285
    invoke-super {p0}, Lcom/android/server/wm/WindowContainer;->switchUser()V

    .line 2286
    invoke-direct {p0}, Lcom/android/server/wm/WindowState;->isHiddenFromUserLocked()Z

    move-result v0

    const/4 v1, 0x2

    if-eqz v0, :cond_3e

    .line 2287
    sget-boolean v0, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_VISIBILITY:Z

    if-eqz v0, :cond_3a

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "user changing, hiding "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", attrs="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v2, v2, Landroid/view/WindowManager$LayoutParams;->type:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", belonging to "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/wm/WindowState;->mOwnerUid:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "WindowManager"

    invoke-static {v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2289
    :cond_3a
    invoke-virtual {p0, v1}, Lcom/android/server/wm/WindowState;->clearPolicyVisibilityFlag(I)V

    goto :goto_41

    .line 2291
    :cond_3e
    invoke-virtual {p0, v1}, Lcom/android/server/wm/WindowState;->setPolicyVisibilityFlag(I)V

    .line 2293
    :goto_41
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .line 3681
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getWindowTag()Ljava/lang/CharSequence;

    move-result-object v0

    .line 3682
    .local v0, "title":Ljava/lang/CharSequence;
    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mStringNameCache:Ljava/lang/String;

    if-eqz v1, :cond_12

    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mLastTitle:Ljava/lang/CharSequence;

    if-ne v1, v0, :cond_12

    iget-boolean v1, p0, Lcom/android/server/wm/WindowState;->mWasExiting:Z

    iget-boolean v2, p0, Lcom/android/server/wm/WindowState;->mAnimatingExit:Z

    if-eq v1, v2, :cond_57

    .line 3683
    :cond_12
    iput-object v0, p0, Lcom/android/server/wm/WindowState;->mLastTitle:Ljava/lang/CharSequence;

    .line 3684
    iget-boolean v1, p0, Lcom/android/server/wm/WindowState;->mAnimatingExit:Z

    iput-boolean v1, p0, Lcom/android/server/wm/WindowState;->mWasExiting:Z

    .line 3685
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Window{"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " u"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/wm/WindowState;->mOwnerUid:I

    .line 3686
    invoke-static {v2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/wm/WindowState;->mLastTitle:Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 3687
    iget-boolean v2, p0, Lcom/android/server/wm/WindowState;->mAnimatingExit:Z

    if-eqz v2, :cond_4c

    const-string v2, " EXITING}"

    goto :goto_4e

    :cond_4c
    const-string v2, "}"

    :goto_4e
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/wm/WindowState;->mStringNameCache:Ljava/lang/String;

    .line 3689
    :cond_57
    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mStringNameCache:Ljava/lang/String;

    return-object v1
.end method

.method transformClipRectFromScreenToSurfaceSpace(Landroid/graphics/Rect;)V
    .registers 6
    .param p1, "clipRect"  # Landroid/graphics/Rect;

    .line 3693
    iget v0, p0, Lcom/android/server/wm/WindowState;->mHScale:F

    const/high16 v1, 0x3f800000  # 1.0f

    cmpl-float v0, v0, v1

    if-nez v0, :cond_f

    iget v0, p0, Lcom/android/server/wm/WindowState;->mVScale:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_f

    .line 3694
    return-void

    .line 3696
    :cond_f
    iget v0, p0, Lcom/android/server/wm/WindowState;->mHScale:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_2d

    .line 3697
    iget v0, p1, Landroid/graphics/Rect;->left:I

    int-to-float v0, v0

    iget v2, p0, Lcom/android/server/wm/WindowState;->mHScale:F

    div-float/2addr v0, v2

    float-to-int v0, v0

    iput v0, p1, Landroid/graphics/Rect;->left:I

    .line 3698
    iget v0, p1, Landroid/graphics/Rect;->right:I

    int-to-float v0, v0

    iget v2, p0, Lcom/android/server/wm/WindowState;->mHScale:F

    div-float/2addr v0, v2

    float-to-double v2, v0

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int v0, v2

    iput v0, p1, Landroid/graphics/Rect;->right:I

    .line 3700
    :cond_2d
    iget v0, p0, Lcom/android/server/wm/WindowState;->mVScale:F

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_4a

    .line 3701
    iget v0, p1, Landroid/graphics/Rect;->top:I

    int-to-float v0, v0

    iget v1, p0, Lcom/android/server/wm/WindowState;->mVScale:F

    div-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p1, Landroid/graphics/Rect;->top:I

    .line 3702
    iget v0, p1, Landroid/graphics/Rect;->bottom:I

    int-to-float v0, v0

    iget v1, p0, Lcom/android/server/wm/WindowState;->mVScale:F

    div-float/2addr v0, v1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int v0, v0

    iput v0, p1, Landroid/graphics/Rect;->bottom:I

    .line 3704
    :cond_4a
    return-void
.end method

.method translateToWindowX(F)F
    .registers 4
    .param p1, "x"  # F

    .line 3903
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mWindowFrames:Lcom/android/server/wm/WindowFrames;

    iget-object v0, v0, Lcom/android/server/wm/WindowFrames;->mFrame:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    int-to-float v0, v0

    sub-float v0, p1, v0

    .line 3904
    .local v0, "winX":F
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->inSizeCompatMode()Z

    move-result v1

    if-eqz v1, :cond_12

    .line 3905
    iget v1, p0, Lcom/android/server/wm/WindowState;->mGlobalScale:F

    mul-float/2addr v0, v1

    .line 3907
    :cond_12
    return v0
.end method

.method translateToWindowY(F)F
    .registers 4
    .param p1, "y"  # F

    .line 3911
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mWindowFrames:Lcom/android/server/wm/WindowFrames;

    iget-object v0, v0, Lcom/android/server/wm/WindowFrames;->mFrame:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    int-to-float v0, v0

    sub-float v0, p1, v0

    .line 3912
    .local v0, "winY":F
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->inSizeCompatMode()Z

    move-result v1

    if-eqz v1, :cond_12

    .line 3913
    iget v1, p0, Lcom/android/server/wm/WindowState;->mGlobalScale:F

    mul-float/2addr v0, v1

    .line 3915
    :cond_12
    return v0
.end method

.method public unregisterFocusObserver(Landroid/view/IWindowFocusObserver;)V
    .registers 4
    .param p1, "observer"  # Landroid/view/IWindowFocusObserver;

    .line 3320
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_5
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 3321
    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mFocusCallbacks:Landroid/os/RemoteCallbackList;

    if-eqz v1, :cond_11

    .line 3322
    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mFocusCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v1, p1}, Landroid/os/RemoteCallbackList;->unregister(Landroid/os/IInterface;)Z

    .line 3324
    :cond_11
    monitor-exit v0
    :try_end_12
    .catchall {:try_start_5 .. :try_end_12} :catchall_16

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 3325
    return-void

    .line 3324
    :catchall_16
    move-exception v1

    :try_start_17
    monitor-exit v0
    :try_end_18
    .catchall {:try_start_17 .. :try_end_18} :catchall_16

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method updateAppOpsState()V
    .registers 7

    .line 2803
    iget v0, p0, Lcom/android/server/wm/WindowState;->mAppOp:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_6

    .line 2804
    return-void

    .line 2806
    :cond_6
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getOwningUid()I

    move-result v0

    .line 2807
    .local v0, "uid":I
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getOwningPackage()Ljava/lang/String;

    move-result-object v1

    .line 2808
    .local v1, "packageName":Ljava/lang/String;
    iget-boolean v2, p0, Lcom/android/server/wm/WindowState;->mAppOpVisibility:Z

    const/4 v3, 0x3

    if-eqz v2, :cond_2f

    .line 2811
    iget-object v2, p0, Lcom/android/server/wm/WindowState;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mAppOps:Landroid/app/AppOpsManager;

    iget v4, p0, Lcom/android/server/wm/WindowState;->mAppOp:I

    invoke-virtual {v2, v4, v0, v1}, Landroid/app/AppOpsManager;->checkOpNoThrow(IILjava/lang/String;)I

    move-result v2

    .line 2812
    .local v2, "mode":I
    if-eqz v2, :cond_2e

    if-eq v2, v3, :cond_2e

    .line 2813
    iget-object v3, p0, Lcom/android/server/wm/WindowState;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v3, Lcom/android/server/wm/WindowManagerService;->mAppOps:Landroid/app/AppOpsManager;

    iget v4, p0, Lcom/android/server/wm/WindowState;->mAppOp:I

    invoke-virtual {v3, v4, v0, v1}, Landroid/app/AppOpsManager;->finishOp(IILjava/lang/String;)V

    .line 2814
    const/4 v3, 0x0

    invoke-direct {p0, v3}, Lcom/android/server/wm/WindowState;->setAppOpVisibilityLw(Z)V

    .line 2816
    .end local v2  # "mode":I
    :cond_2e
    goto :goto_41

    .line 2817
    :cond_2f
    iget-object v2, p0, Lcom/android/server/wm/WindowState;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mAppOps:Landroid/app/AppOpsManager;

    iget v4, p0, Lcom/android/server/wm/WindowState;->mAppOp:I

    const/4 v5, 0x1

    invoke-virtual {v2, v4, v0, v1, v5}, Landroid/app/AppOpsManager;->startOpNoThrow(IILjava/lang/String;Z)I

    move-result v2

    .line 2818
    .restart local v2  # "mode":I
    if-eqz v2, :cond_3e

    if-ne v2, v3, :cond_41

    .line 2819
    :cond_3e
    invoke-direct {p0, v5}, Lcom/android/server/wm/WindowState;->setAppOpVisibilityLw(Z)V

    .line 2822
    .end local v2  # "mode":I
    :cond_41
    :goto_41
    return-void
.end method

.method updateLastInsetValues()V
    .registers 2

    .line 4668
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mWindowFrames:Lcom/android/server/wm/WindowFrames;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowFrames;->updateLastInsetValues()V

    .line 4669
    return-void
.end method

.method updateReportedVisibility(Lcom/android/server/wm/WindowState$UpdateReportedVisibilityResults;)V
    .registers 6
    .param p1, "results"  # Lcom/android/server/wm/WindowState$UpdateReportedVisibilityResults;

    .line 4428
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_8
    if-ltz v0, :cond_18

    .line 4429
    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v1, v0}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/WindowState;

    .line 4430
    .local v1, "c":Lcom/android/server/wm/WindowState;
    invoke-virtual {v1, p1}, Lcom/android/server/wm/WindowState;->updateReportedVisibility(Lcom/android/server/wm/WindowState$UpdateReportedVisibilityResults;)V

    .line 4428
    .end local v1  # "c":Lcom/android/server/wm/WindowState;
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    .line 4433
    .end local v0  # "i":I
    :cond_18
    iget-boolean v0, p0, Lcom/android/server/wm/WindowState;->mAppFreezing:Z

    if-nez v0, :cond_e8

    iget v0, p0, Lcom/android/server/wm/WindowState;->mViewVisibility:I

    if-nez v0, :cond_e8

    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_e8

    iget-boolean v0, p0, Lcom/android/server/wm/WindowState;->mDestroying:Z

    if-eqz v0, :cond_2d

    goto/16 :goto_e8

    .line 4438
    :cond_2d
    sget-boolean v0, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_VISIBILITY:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_be

    .line 4439
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Win "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ": isDrawn="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->isDrawnLw()Z

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", animating="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4440
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->isAnimating()Z

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 4439
    const-string v2, "WindowManager"

    invoke-static {v2, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4441
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->isDrawnLw()Z

    move-result v0

    if-nez v0, :cond_be

    .line 4442
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Not displayed: s="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    iget-object v3, v3, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceController:Lcom/android/server/wm/WindowSurfaceController;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " pv="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4443
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->isVisibleByPolicy()Z

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, " mDrawState="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    iget v3, v3, Lcom/android/server/wm/WindowStateAnimator;->mDrawState:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " ph="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4445
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->isParentWindowHidden()Z

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, " th="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4446
    iget-object v3, p0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    if-eqz v3, :cond_a7

    iget-boolean v3, v3, Lcom/android/server/wm/AppWindowToken;->hiddenRequested:Z

    goto :goto_a8

    :cond_a7
    move v3, v1

    :goto_a8
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, " a="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4447
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->isAnimating()Z

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 4442
    invoke-static {v2, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4451
    :cond_be
    iget v0, p1, Lcom/android/server/wm/WindowState$UpdateReportedVisibilityResults;->numInteresting:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p1, Lcom/android/server/wm/WindowState$UpdateReportedVisibilityResults;->numInteresting:I

    .line 4452
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->isDrawnLw()Z

    move-result v0

    if-eqz v0, :cond_df

    .line 4453
    iget v0, p1, Lcom/android/server/wm/WindowState$UpdateReportedVisibilityResults;->numDrawn:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p1, Lcom/android/server/wm/WindowState$UpdateReportedVisibilityResults;->numDrawn:I

    .line 4454
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->isAnimating()Z

    move-result v0

    if-nez v0, :cond_dc

    .line 4455
    iget v0, p1, Lcom/android/server/wm/WindowState$UpdateReportedVisibilityResults;->numVisible:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p1, Lcom/android/server/wm/WindowState$UpdateReportedVisibilityResults;->numVisible:I

    .line 4457
    :cond_dc
    iput-boolean v1, p1, Lcom/android/server/wm/WindowState$UpdateReportedVisibilityResults;->nowGone:Z

    goto :goto_e7

    .line 4458
    :cond_df
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->isAnimating()Z

    move-result v0

    if-eqz v0, :cond_e7

    .line 4459
    iput-boolean v1, p1, Lcom/android/server/wm/WindowState$UpdateReportedVisibilityResults;->nowGone:Z

    .line 4461
    :cond_e7
    :goto_e7
    return-void

    .line 4436
    :cond_e8
    :goto_e8
    return-void
.end method

.method updateResizingWindowIfNeeded()V
    .registers 12

    .line 1228
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    .line 1229
    .local v0, "winAnimator":Lcom/android/server/wm/WindowStateAnimator;
    iget-boolean v1, p0, Lcom/android/server/wm/WindowState;->mHasSurface:Z

    if-eqz v1, :cond_202

    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v1

    iget v1, v1, Lcom/android/server/wm/DisplayContent;->mLayoutSeq:I

    iget v2, p0, Lcom/android/server/wm/WindowState;->mLayoutSeq:I

    if-ne v1, v2, :cond_202

    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->isGoneForLayoutLw()Z

    move-result v1

    if-eqz v1, :cond_18

    goto/16 :goto_202

    .line 1233
    :cond_18
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getTask()Lcom/android/server/wm/Task;

    move-result-object v1

    .line 1239
    .local v1, "task":Lcom/android/server/wm/Task;
    if-eqz v1, :cond_27

    iget-object v2, v1, Lcom/android/server/wm/Task;->mStack:Lcom/android/server/wm/TaskStack;

    invoke-virtual {v2}, Lcom/android/server/wm/TaskStack;->isAnimatingBounds()Z

    move-result v2

    if-eqz v2, :cond_27

    .line 1240
    return-void

    .line 1243
    :cond_27
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->setReportResizeHints()Z

    move-result v2

    .line 1244
    .local v2, "didFrameInsetsChange":Z
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->isLastConfigReportedToClient()Z

    move-result v3

    const/4 v4, 0x1

    xor-int/2addr v3, v4

    .line 1245
    .local v3, "configChanged":Z
    sget-boolean v5, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_CONFIGURATION:Z

    const-string v6, "WindowManager"

    if-eqz v5, :cond_59

    if-eqz v3, :cond_59

    .line 1246
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Win "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v7, " config changed: "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v6, v5}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1249
    :cond_59
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->isDragResizeChanged()Z

    move-result v5

    const/4 v7, 0x0

    if-eqz v5, :cond_68

    .line 1250
    invoke-direct {p0}, Lcom/android/server/wm/WindowState;->isDragResizingChangeReported()Z

    move-result v5

    if-nez v5, :cond_68

    move v5, v4

    goto :goto_69

    :cond_68
    move v5, v7

    .line 1252
    .local v5, "dragResizingChanged":Z
    :goto_69
    sget-boolean v8, Lcom/android/server/wm/WindowManagerService;->localLOGV:Z

    const-string v9, " dragResizingChanged="

    if-eqz v8, :cond_a9

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Resizing "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v10, ": configChanged="

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v10, " last="

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, p0, Lcom/android/server/wm/WindowState;->mWindowFrames:Lcom/android/server/wm/WindowFrames;

    iget-object v10, v10, Lcom/android/server/wm/WindowFrames;->mLastFrame:Landroid/graphics/Rect;

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v10, " frame="

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, p0, Lcom/android/server/wm/WindowState;->mWindowFrames:Lcom/android/server/wm/WindowFrames;

    iget-object v10, v10, Lcom/android/server/wm/WindowFrames;->mFrame:Landroid/graphics/Rect;

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1258
    :cond_a9
    iget-object v8, p0, Lcom/android/server/wm/WindowState;->mWindowFrames:Lcom/android/server/wm/WindowFrames;

    iget-object v8, v8, Lcom/android/server/wm/WindowFrames;->mLastFrame:Landroid/graphics/Rect;

    iget-object v10, p0, Lcom/android/server/wm/WindowState;->mWindowFrames:Lcom/android/server/wm/WindowFrames;

    iget-object v10, v10, Lcom/android/server/wm/WindowFrames;->mFrame:Landroid/graphics/Rect;

    invoke-virtual {v8, v10}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 1260
    const-string v8, ", surfaceController "

    if-nez v2, :cond_102

    iget-boolean v10, v0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceResized:Z

    if-nez v10, :cond_102

    if-nez v3, :cond_102

    if-nez v5, :cond_102

    iget-boolean v10, p0, Lcom/android/server/wm/WindowState;->mReportOrientationChanged:Z

    if-eqz v10, :cond_c5

    goto :goto_102

    .line 1314
    :cond_c5
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getOrientationChanging()Z

    move-result v4

    if-eqz v4, :cond_201

    .line 1315
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->isDrawnLw()Z

    move-result v4

    if-eqz v4, :cond_201

    .line 1316
    sget-boolean v4, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_ORIENTATION:Z

    if-eqz v4, :cond_f1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Orientation not waiting for draw in "

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceController:Lcom/android/server/wm/WindowSurfaceController;

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v6, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1318
    :cond_f1
    invoke-virtual {p0, v7}, Lcom/android/server/wm/WindowState;->setOrientationChanging(Z)V

    .line 1319
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    iget-object v4, p0, Lcom/android/server/wm/WindowState;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-wide v8, v4, Lcom/android/server/wm/WindowManagerService;->mDisplayFreezeTime:J

    sub-long/2addr v6, v8

    long-to-int v4, v6

    iput v4, p0, Lcom/android/server/wm/WindowState;->mLastFreezeDuration:I

    goto/16 :goto_201

    .line 1265
    :cond_102
    :goto_102
    sget-boolean v7, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_RESIZE:Z

    if-nez v7, :cond_10a

    sget-boolean v7, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_ORIENTATION:Z

    if-eqz v7, :cond_14e

    .line 1266
    :cond_10a
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Resize reasons for w="

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v10, ":  "

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, p0, Lcom/android/server/wm/WindowState;->mWindowFrames:Lcom/android/server/wm/WindowFrames;

    .line 1267
    invoke-virtual {v10}, Lcom/android/server/wm/WindowFrames;->getInsetsChangedInfo()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, " surfaceResized="

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v10, v0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceResized:Z

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v10, " configChanged="

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v9, " reportOrientationChanged="

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v9, p0, Lcom/android/server/wm/WindowState;->mReportOrientationChanged:Z

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 1266
    invoke-static {v6, v7}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1276
    :cond_14e
    iget-object v7, p0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    if-eqz v7, :cond_15a

    iget-boolean v9, p0, Lcom/android/server/wm/WindowState;->mAppDied:Z

    if-eqz v9, :cond_15a

    .line 1277
    invoke-virtual {v7}, Lcom/android/server/wm/AppWindowToken;->removeDeadWindows()V

    .line 1278
    return-void

    .line 1281
    :cond_15a
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->updateLastInsetValues()V

    .line 1282
    iget-object v7, p0, Lcom/android/server/wm/WindowState;->mWmService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v7, p0}, Lcom/android/server/wm/WindowManagerService;->makeWindowFreezingScreenIfNeededLocked(Lcom/android/server/wm/WindowState;)V

    .line 1288
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getOrientationChanging()Z

    move-result v7

    if-nez v7, :cond_16a

    if-eqz v5, :cond_1d4

    .line 1289
    :cond_16a
    sget-boolean v7, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_ANIM:Z

    if-nez v7, :cond_176

    sget-boolean v7, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_ORIENTATION:Z

    if-nez v7, :cond_176

    sget-boolean v7, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_RESIZE:Z

    if-eqz v7, :cond_192

    .line 1290
    :cond_176
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Orientation or resize start waiting for draw, mDrawState=DRAW_PENDING in "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceController:Lcom/android/server/wm/WindowSurfaceController;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1295
    :cond_192
    iget-object v7, p0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    if-eqz v7, :cond_1cb

    .line 1296
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v7

    iget-object v7, v7, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v7}, Landroid/app/WindowConfiguration;->getRotation()I

    move-result v7

    invoke-direct {p0}, Lcom/android/server/wm/WindowState;->getLastReportedConfiguration()Landroid/content/res/Configuration;

    move-result-object v8

    iget-object v8, v8, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v8}, Landroid/app/WindowConfiguration;->getRotation()I

    move-result v8

    if-eq v7, v8, :cond_1cb

    .line 1297
    iget-object v7, p0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    invoke-virtual {v7}, Lcom/android/server/wm/AppWindowToken;->getStack()Lcom/android/server/wm/TaskStack;

    move-result-object v7

    iget-object v7, v7, Lcom/android/server/wm/TaskStack;->mDeferHideDimTokens:Ljava/util/List;

    iget-object v8, p0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    invoke-interface {v7, v8}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1cb

    .line 1298
    const-string v7, "clearChangeTransition for Orientation Changing"

    invoke-static {v6, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1299
    iget-object v7, p0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    invoke-virtual {v7}, Lcom/android/server/wm/AppWindowToken;->cancelAnimation()V

    .line 1300
    iget-object v7, p0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    invoke-virtual {v7}, Lcom/android/server/wm/AppWindowToken;->clearChangeTransition()V

    .line 1305
    :cond_1cb
    iput v4, v0, Lcom/android/server/wm/WindowStateAnimator;->mDrawState:I

    .line 1306
    iget-object v4, p0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    if-eqz v4, :cond_1d4

    .line 1307
    invoke-virtual {v4}, Lcom/android/server/wm/AppWindowToken;->clearAllDrawn()V

    .line 1310
    :cond_1d4
    iget-object v4, p0, Lcom/android/server/wm/WindowState;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v4, v4, Lcom/android/server/wm/WindowManagerService;->mResizingWindows:Ljava/util/ArrayList;

    invoke-virtual {v4, p0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_201

    .line 1311
    sget-boolean v4, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_RESIZE:Z

    if-nez v4, :cond_1e6

    sget-boolean v4, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_ORIENTATION:Z

    if-eqz v4, :cond_1fa

    :cond_1e6
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Resizing window "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v6, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1312
    :cond_1fa
    iget-object v4, p0, Lcom/android/server/wm/WindowState;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v4, v4, Lcom/android/server/wm/WindowManagerService;->mResizingWindows:Ljava/util/ArrayList;

    invoke-virtual {v4, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1323
    :cond_201
    :goto_201
    return-void

    .line 1230
    .end local v1  # "task":Lcom/android/server/wm/Task;
    .end local v2  # "didFrameInsetsChange":Z
    .end local v3  # "configChanged":Z
    .end local v5  # "dragResizingChanged":Z
    :cond_202
    :goto_202
    return-void
.end method

.method updateSurfacePosition()V
    .registers 2

    .line 4902
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getPendingTransaction()Landroid/view/SurfaceControl$Transaction;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/wm/WindowState;->updateSurfacePosition(Landroid/view/SurfaceControl$Transaction;)V

    .line 4903
    return-void
.end method

.method updateSurfacePosition(Landroid/view/SurfaceControl$Transaction;)V
    .registers 6
    .param p1, "t"  # Landroid/view/SurfaceControl$Transaction;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 4907
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mSurfaceControl:Landroid/view/SurfaceControl;

    if-nez v0, :cond_5

    .line 4908
    return-void

    .line 4910
    :cond_5
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mWindowFrames:Lcom/android/server/wm/WindowFrames;

    iget-object v0, v0, Lcom/android/server/wm/WindowFrames;->mFrame:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mWindowFrames:Lcom/android/server/wm/WindowFrames;

    iget-object v1, v1, Lcom/android/server/wm/WindowFrames;->mFrame:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    iget-object v2, p0, Lcom/android/server/wm/WindowState;->mSurfacePosition:Landroid/graphics/Point;

    invoke-direct {p0, v0, v1, v2}, Lcom/android/server/wm/WindowState;->transformFrameToSurfacePosition(IILandroid/graphics/Point;)V

    .line 4915
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mSurfaceAnimator:Lcom/android/server/wm/SurfaceAnimator;

    invoke-virtual {v0}, Lcom/android/server/wm/SurfaceAnimator;->hasLeash()Z

    move-result v0

    if-nez v0, :cond_72

    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mPendingSeamlessRotate:Lcom/android/server/wm/SeamlessRotator;

    if-nez v0, :cond_72

    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mLastSurfacePosition:Landroid/graphics/Point;

    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mSurfacePosition:Landroid/graphics/Point;

    .line 4916
    invoke-virtual {v0, v1}, Landroid/graphics/Point;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_72

    .line 4917
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mSurfaceControl:Landroid/view/SurfaceControl;

    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mSurfacePosition:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->x:I

    int-to-float v1, v1

    iget-object v2, p0, Lcom/android/server/wm/WindowState;->mSurfacePosition:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->y:I

    int-to-float v2, v2

    invoke-virtual {p1, v0, v1, v2}, Landroid/view/SurfaceControl$Transaction;->setPosition(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    .line 4918
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mLastSurfacePosition:Landroid/graphics/Point;

    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mSurfacePosition:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->x:I

    iget-object v2, p0, Lcom/android/server/wm/WindowState;->mSurfacePosition:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->y:I

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Point;->set(II)V

    .line 4919
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->surfaceInsetsChanging()Z

    move-result v0

    if-eqz v0, :cond_72

    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowStateAnimator;->hasSurface()Z

    move-result v0

    if-eqz v0, :cond_72

    .line 4920
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mLastSurfaceInsets:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget-object v1, v1, Landroid/view/WindowManager$LayoutParams;->surfaceInsets:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 4921
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mSurfaceControl:Landroid/view/SurfaceControl;

    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    iget-object v1, v1, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceController:Lcom/android/server/wm/WindowSurfaceController;

    iget-object v1, v1, Lcom/android/server/wm/WindowSurfaceController;->mSurfaceControl:Landroid/view/SurfaceControl;

    .line 4922
    invoke-virtual {v1}, Landroid/view/SurfaceControl;->getHandle()Landroid/os/IBinder;

    move-result-object v1

    .line 4923
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getFrameNumber()J

    move-result-wide v2

    .line 4921
    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/view/SurfaceControl$Transaction;->deferTransactionUntil(Landroid/view/SurfaceControl;Landroid/os/IBinder;J)Landroid/view/SurfaceControl$Transaction;

    .line 4927
    :cond_72
    invoke-direct {p0, p1}, Lcom/android/server/wm/WindowState;->updateSurfacePositionForWallpaper(Landroid/view/SurfaceControl$Transaction;)V

    .line 4929
    return-void
.end method

.method updateTapExcludeRegion(ILandroid/graphics/Region;)V
    .registers 6
    .param p1, "regionId"  # I
    .param p2, "region"  # Landroid/graphics/Region;

    .line 5051
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    .line 5052
    .local v0, "currentDisplay":Lcom/android/server/wm/DisplayContent;
    if-eqz v0, :cond_27

    .line 5056
    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mTapExcludeRegionHolder:Lcom/android/server/wm/TapExcludeRegionHolder;

    if-nez v1, :cond_16

    .line 5057
    new-instance v1, Lcom/android/server/wm/TapExcludeRegionHolder;

    invoke-direct {v1}, Lcom/android/server/wm/TapExcludeRegionHolder;-><init>()V

    iput-object v1, p0, Lcom/android/server/wm/WindowState;->mTapExcludeRegionHolder:Lcom/android/server/wm/TapExcludeRegionHolder;

    .line 5061
    iget-object v1, v0, Lcom/android/server/wm/DisplayContent;->mTapExcludeProvidingWindows:Landroid/util/ArraySet;

    invoke-virtual {v1, p0}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 5064
    :cond_16
    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mTapExcludeRegionHolder:Lcom/android/server/wm/TapExcludeRegionHolder;

    invoke-virtual {v1, p1, p2}, Lcom/android/server/wm/TapExcludeRegionHolder;->updateRegion(ILandroid/graphics/Region;)V

    .line 5066
    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->updateTouchExcludeRegion()V

    .line 5068
    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->getInputMonitor()Lcom/android/server/wm/InputMonitor;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/server/wm/InputMonitor;->updateInputWindowsLw(Z)V

    .line 5069
    return-void

    .line 5053
    :cond_27
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Trying to update window not attached to any display."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method waitingForReplacement()Z
    .registers 5

    .line 3875
    iget-boolean v0, p0, Lcom/android/server/wm/WindowState;->mWillReplaceWindow:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_6

    .line 3876
    return v1

    .line 3879
    :cond_6
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowList;->size()I

    move-result v0

    sub-int/2addr v0, v1

    .local v0, "i":I
    :goto_d
    if-ltz v0, :cond_21

    .line 3880
    iget-object v2, p0, Lcom/android/server/wm/WindowState;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v2, v0}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/WindowState;

    .line 3881
    .local v2, "c":Lcom/android/server/wm/WindowState;
    invoke-virtual {v2}, Lcom/android/server/wm/WindowState;->waitingForReplacement()Z

    move-result v3

    if-eqz v3, :cond_1e

    .line 3882
    return v1

    .line 3879
    .end local v2  # "c":Lcom/android/server/wm/WindowState;
    :cond_1e
    add-int/lit8 v0, v0, -0x1

    goto :goto_d

    .line 3885
    .end local v0  # "i":I
    :cond_21
    const/4 v0, 0x0

    return v0
.end method

.method wouldBeVisibleIfPolicyIgnored()Z
    .registers 2

    .line 1511
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
    .registers 10
    .param p1, "proto"  # Landroid/util/proto/ProtoOutputStream;
    .param p2, "fieldId"  # J

    .line 3508
    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v0

    .line 3509
    .local v0, "token":J
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v2

    const-wide v3, 0x10500000001L

    invoke-virtual {p1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 3510
    iget v2, p0, Lcom/android/server/wm/WindowState;->mOwnerUid:I

    invoke-static {v2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v2

    const-wide v3, 0x10500000002L

    invoke-virtual {p1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 3511
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getWindowTag()Ljava/lang/CharSequence;

    move-result-object v2

    .line 3512
    .local v2, "title":Ljava/lang/CharSequence;
    if-eqz v2, :cond_30

    .line 3513
    const-wide v3, 0x10900000003L

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v3, v4, v5}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 3515
    :cond_30
    invoke-virtual {p1, v0, v1}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 3516
    return-void
.end method

.method public writeToProto(Landroid/util/proto/ProtoOutputStream;JI)V
    .registers 12
    .param p1, "proto"  # Landroid/util/proto/ProtoOutputStream;
    .param p2, "fieldId"  # J
    .param p4, "logLevel"  # I

    .line 3469
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->isVisible()Z

    move-result v0

    .line 3470
    .local v0, "isVisible":Z
    const/4 v1, 0x2

    if-ne p4, v1, :cond_a

    if-nez v0, :cond_a

    .line 3471
    return-void

    .line 3474
    :cond_a
    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v1

    .line 3475
    .local v1, "token":J
    const-wide v3, 0x10b00000001L

    invoke-super {p0, p1, v3, v4, p4}, Lcom/android/server/wm/WindowContainer;->writeToProto(Landroid/util/proto/ProtoOutputStream;JI)V

    .line 3476
    const-wide v3, 0x10b00000002L

    invoke-virtual {p0, p1, v3, v4}, Lcom/android/server/wm/WindowState;->writeIdentifierToProto(Landroid/util/proto/ProtoOutputStream;J)V

    .line 3477
    const-wide v3, 0x10500000003L

    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getDisplayId()I

    move-result v5

    invoke-virtual {p1, v3, v4, v5}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 3478
    const-wide v3, 0x10500000004L

    invoke-direct {p0}, Lcom/android/server/wm/WindowState;->getStackId()I

    move-result v5

    invoke-virtual {p1, v3, v4, v5}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 3479
    iget-object v3, p0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    const-wide v4, 0x10b00000005L

    invoke-virtual {v3, p1, v4, v5}, Landroid/view/WindowManager$LayoutParams;->writeToProto(Landroid/util/proto/ProtoOutputStream;J)V

    .line 3480
    iget-object v3, p0, Lcom/android/server/wm/WindowState;->mGivenContentInsets:Landroid/graphics/Rect;

    const-wide v4, 0x10b00000006L

    invoke-virtual {v3, p1, v4, v5}, Landroid/graphics/Rect;->writeToProto(Landroid/util/proto/ProtoOutputStream;J)V

    .line 3481
    iget-object v3, p0, Lcom/android/server/wm/WindowState;->mWindowFrames:Lcom/android/server/wm/WindowFrames;

    const-wide v4, 0x10b00000029L

    invoke-virtual {v3, p1, v4, v5}, Lcom/android/server/wm/WindowFrames;->writeToProto(Landroid/util/proto/ProtoOutputStream;J)V

    .line 3482
    iget-object v3, p0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget-object v3, v3, Landroid/view/WindowManager$LayoutParams;->surfaceInsets:Landroid/graphics/Rect;

    const-wide v4, 0x10b0000000cL

    invoke-virtual {v3, p1, v4, v5}, Landroid/graphics/Rect;->writeToProto(Landroid/util/proto/ProtoOutputStream;J)V

    .line 3483
    iget-object v3, p0, Lcom/android/server/wm/WindowState;->mSurfacePosition:Landroid/graphics/Point;

    const-wide v4, 0x10b00000010L

    invoke-virtual {v3, p1, v4, v5}, Landroid/graphics/Point;->writeToProto(Landroid/util/proto/ProtoOutputStream;J)V

    .line 3484
    iget-object v3, p0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    const-wide v4, 0x10b0000000dL

    invoke-virtual {v3, p1, v4, v5}, Lcom/android/server/wm/WindowStateAnimator;->writeToProto(Landroid/util/proto/ProtoOutputStream;J)V

    .line 3485
    const-wide v3, 0x1080000000eL

    iget-boolean v5, p0, Lcom/android/server/wm/WindowState;->mAnimatingExit:Z

    invoke-virtual {p1, v3, v4, v5}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 3486
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_7f
    iget-object v4, p0, Lcom/android/server/wm/WindowState;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v4}, Lcom/android/server/wm/WindowList;->size()I

    move-result v4

    if-ge v3, v4, :cond_9a

    .line 3487
    iget-object v4, p0, Lcom/android/server/wm/WindowState;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v4, v3}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/wm/WindowState;

    const-wide v5, 0x20b0000000fL

    invoke-virtual {v4, p1, v5, v6, p4}, Lcom/android/server/wm/WindowState;->writeToProto(Landroid/util/proto/ProtoOutputStream;JI)V

    .line 3486
    add-int/lit8 v3, v3, 0x1

    goto :goto_7f

    .line 3489
    .end local v3  # "i":I
    :cond_9a
    const-wide v3, 0x10500000012L

    iget v5, p0, Lcom/android/server/wm/WindowState;->mRequestedWidth:I

    invoke-virtual {p1, v3, v4, v5}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 3490
    const-wide v3, 0x10500000013L

    iget v5, p0, Lcom/android/server/wm/WindowState;->mRequestedHeight:I

    invoke-virtual {p1, v3, v4, v5}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 3491
    const-wide v3, 0x10500000014L

    iget v5, p0, Lcom/android/server/wm/WindowState;->mViewVisibility:I

    invoke-virtual {p1, v3, v4, v5}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 3492
    const-wide v3, 0x10500000015L

    iget v5, p0, Lcom/android/server/wm/WindowState;->mSystemUiVisibility:I

    invoke-virtual {p1, v3, v4, v5}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 3493
    const-wide v3, 0x10800000016L

    iget-boolean v5, p0, Lcom/android/server/wm/WindowState;->mHasSurface:Z

    invoke-virtual {p1, v3, v4, v5}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 3494
    const-wide v3, 0x10800000017L

    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->isReadyForDisplay()Z

    move-result v5

    invoke-virtual {p1, v3, v4, v5}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 3495
    const-wide v3, 0x10800000022L

    iget-boolean v5, p0, Lcom/android/server/wm/WindowState;->mRemoveOnExit:Z

    invoke-virtual {p1, v3, v4, v5}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 3496
    const-wide v3, 0x10800000023L

    iget-boolean v5, p0, Lcom/android/server/wm/WindowState;->mDestroying:Z

    invoke-virtual {p1, v3, v4, v5}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 3497
    const-wide v3, 0x10800000024L

    iget-boolean v5, p0, Lcom/android/server/wm/WindowState;->mRemoved:Z

    invoke-virtual {p1, v3, v4, v5}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 3498
    const-wide v3, 0x10800000025L

    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->isOnScreen()Z

    move-result v5

    invoke-virtual {p1, v3, v4, v5}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 3499
    const-wide v3, 0x10800000026L

    invoke-virtual {p1, v3, v4, v0}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 3500
    const-wide v3, 0x10800000027L

    iget-object v5, p0, Lcom/android/server/wm/WindowState;->mPendingSeamlessRotate:Lcom/android/server/wm/SeamlessRotator;

    if-eqz v5, :cond_115

    const/4 v5, 0x1

    goto :goto_116

    :cond_115
    const/4 v5, 0x0

    :goto_116
    invoke-virtual {p1, v3, v4, v5}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 3501
    const-wide v3, 0x10300000028L

    iget-wide v5, p0, Lcom/android/server/wm/WindowState;->mFinishSeamlessRotateFrameNumber:J

    invoke-virtual {p1, v3, v4, v5, v6}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 3502
    const-wide v3, 0x1080000002aL

    iget-boolean v5, p0, Lcom/android/server/wm/WindowState;->mForceSeamlesslyRotate:Z

    invoke-virtual {p1, v3, v4, v5}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 3503
    invoke-virtual {p1, v1, v2}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 3504
    return-void
.end method
