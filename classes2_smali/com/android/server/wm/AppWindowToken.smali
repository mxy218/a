.class Lcom/android/server/wm/AppWindowToken;
.super Lcom/android/server/wm/WindowToken;
.source "AppWindowToken.java"

# interfaces
.implements Lcom/android/server/wm/WindowManagerService$AppFreezeListener;
.implements Lcom/android/server/wm/ConfigurationContainerListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wm/AppWindowToken$AppSaturationInfo;
    }
.end annotation


# static fields
.field private static final STARTING_WINDOW_TYPE_NONE:I = 0x0

.field private static final STARTING_WINDOW_TYPE_SNAPSHOT:I = 0x1

.field private static final STARTING_WINDOW_TYPE_SPLASH_SCREEN:I = 0x2

.field private static final TAG:Ljava/lang/String; = "WindowManager"

.field static final Z_BOOST_BASE:I = 0x2fb7ba90
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field


# instance fields
.field allDrawn:Z

.field final appToken:Landroid/view/IApplicationToken;

.field deferClearAllDrawn:Z

.field firstWindowDrawn:Z

.field hiddenRequested:Z

.field inPendingTransaction:Z

.field final mActivityComponent:Landroid/content/ComponentName;

.field mActivityRecord:Lcom/android/server/wm/ActivityRecord;

.field private final mAddStartingWindow:Ljava/lang/Runnable;

.field private mAlwaysFocusable:Z

.field private mAnimatingAppWindowTokenRegistry:Lcom/android/server/wm/AnimatingAppWindowTokenRegistry;

.field mAnimationBoundsLayer:Landroid/view/SurfaceControl;

.field mAppStopped:Z

.field private mCanTurnScreenOn:Z

.field private mClientHidden:Z

.field private final mColorTransformController:Lcom/android/server/display/color/ColorDisplayService$ColorTransformController;

.field mDeferHidingClient:Z

.field private mDisablePreviewScreenshots:Z

.field mEnteringAnimation:Z

.field private mFillsParent:Z

.field private mFreezingScreen:Z

.field mFrozenBounds:Ljava/util/ArrayDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayDeque<",
            "Landroid/graphics/Rect;",
            ">;"
        }
    .end annotation
.end field

.field mFrozenMergedConfig:Ljava/util/ArrayDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayDeque<",
            "Landroid/content/res/Configuration;",
            ">;"
        }
    .end annotation
.end field

.field private mHiddenSetFromTransferredStartingWindow:Z

.field final mInputApplicationHandle:Landroid/view/InputApplicationHandle;

.field mInputDispatchingTimeoutNanos:J

.field mIsExiting:Z

.field private mLastAllDrawn:Z

.field private mLastAppSaturationInfo:Lcom/android/server/wm/AppWindowToken$AppSaturationInfo;

.field private mLastContainsDismissKeyguardWindow:Z

.field private mLastContainsShowWhenLockedWindow:Z

.field private mLastParent:Lcom/android/server/wm/Task;

.field private mLastSurfaceShowing:Z

.field private mLastTransactionSequence:J

.field mLaunchTaskBehind:Z

.field private mLetterbox:Lcom/android/server/wm/Letterbox;

.field mNeedsAnimationBoundsLayer:Z

.field mNeedsZBoost:Z
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field private mNumDrawnWindows:I

.field private mNumInterestingWindows:I

.field private mPendingRelaunchCount:I

.field private mRemoteAnimationDefinition:Landroid/view/RemoteAnimationDefinition;

.field private mRemovingFromDisplay:Z

.field private mReparenting:Z

.field private final mReportedVisibilityResults:Lcom/android/server/wm/WindowState$UpdateReportedVisibilityResults;

.field mRotationAnimationHint:I

.field mShowForAllUsers:Z

.field private mSizeCompatBounds:Landroid/graphics/Rect;

.field private mSizeCompatScale:F

.field mStartingData:Lcom/android/server/wm/StartingData;

.field mTargetSdk:I

.field private mThumbnail:Lcom/android/server/wm/AppWindowThumbnail;

.field private final mTmpPoint:Landroid/graphics/Point;

.field private final mTmpPrevBounds:Landroid/graphics/Rect;

.field private final mTmpRect:Landroid/graphics/Rect;

.field private mTransit:I

.field private mTransitChangeLeash:Landroid/view/SurfaceControl;

.field private mTransitFlags:I

.field private final mTransitStartRect:Landroid/graphics/Rect;

.field private mUseTransferredAnimation:Z

.field final mVoiceInteraction:Z

.field private mWillCloseOrEnterPip:Z

.field removed:Z

.field private reportedDrawn:Z

.field reportedVisible:Z

.field startingDisplayed:Z

.field startingMoved:Z

.field startingSurface:Lcom/android/server/policy/WindowManagerPolicy$StartingSurface;

.field startingWindow:Lcom/android/server/wm/WindowState;


# direct methods
.method constructor <init>(Lcom/android/server/wm/WindowManagerService;Landroid/view/IApplicationToken;Landroid/content/ComponentName;ZLcom/android/server/wm/DisplayContent;JZZIIIZZLcom/android/server/wm/ActivityRecord;)V
    .registers 25

    .line 345
    move-object v7, p0

    move-object/from16 v8, p15

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move-object v5, p5

    move/from16 v6, p8

    invoke-direct/range {v0 .. v6}, Lcom/android/server/wm/AppWindowToken;-><init>(Lcom/android/server/wm/WindowManagerService;Landroid/view/IApplicationToken;Landroid/content/ComponentName;ZLcom/android/server/wm/DisplayContent;Z)V

    .line 347
    iput-object v8, v7, Lcom/android/server/wm/AppWindowToken;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    .line 348
    iget-object v0, v7, Lcom/android/server/wm/AppWindowToken;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v0, p0}, Lcom/android/server/wm/ActivityRecord;->registerConfigurationChangeListener(Lcom/android/server/wm/ConfigurationContainerListener;)V

    .line 349
    move-wide v0, p6

    iput-wide v0, v7, Lcom/android/server/wm/AppWindowToken;->mInputDispatchingTimeoutNanos:J

    .line 350
    move/from16 v0, p9

    iput-boolean v0, v7, Lcom/android/server/wm/AppWindowToken;->mShowForAllUsers:Z

    .line 351
    move/from16 v0, p10

    iput v0, v7, Lcom/android/server/wm/AppWindowToken;->mTargetSdk:I

    .line 352
    move/from16 v0, p11

    iput v0, v7, Lcom/android/server/wm/AppWindowToken;->mOrientation:I

    .line 353
    move/from16 v0, p13

    iput-boolean v0, v7, Lcom/android/server/wm/AppWindowToken;->mLaunchTaskBehind:Z

    .line 354
    move/from16 v0, p14

    iput-boolean v0, v7, Lcom/android/server/wm/AppWindowToken;->mAlwaysFocusable:Z

    .line 355
    move/from16 v0, p12

    iput v0, v7, Lcom/android/server/wm/AppWindowToken;->mRotationAnimationHint:I

    .line 358
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/server/wm/AppWindowToken;->setHidden(Z)V

    .line 359
    iput-boolean v0, v7, Lcom/android/server/wm/AppWindowToken;->hiddenRequested:Z

    .line 361
    const-class v0, Lcom/android/server/display/color/ColorDisplayService$ColorDisplayServiceInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/display/color/ColorDisplayService$ColorDisplayServiceInternal;

    .line 363
    iget-object v1, v8, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    iget v2, v8, Lcom/android/server/wm/ActivityRecord;->mUserId:I

    new-instance v3, Ljava/lang/ref/WeakReference;

    iget-object v4, v7, Lcom/android/server/wm/AppWindowToken;->mColorTransformController:Lcom/android/server/display/color/ColorDisplayService$ColorTransformController;

    invoke-direct {v3, v4}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/display/color/ColorDisplayService$ColorDisplayServiceInternal;->attachColorTransformController(Ljava/lang/String;ILjava/lang/ref/WeakReference;)Z

    .line 365
    return-void
.end method

.method constructor <init>(Lcom/android/server/wm/WindowManagerService;Landroid/view/IApplicationToken;Landroid/content/ComponentName;ZLcom/android/server/wm/DisplayContent;Z)V
    .registers 16

    .line 370
    const/4 v0, 0x0

    if-eqz p2, :cond_9

    invoke-interface {p2}, Landroid/view/IApplicationToken;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    move-object v4, v1

    goto :goto_a

    :cond_9
    move-object v4, v0

    :goto_a
    const/4 v5, 0x2

    const/4 v6, 0x1

    const/4 v8, 0x0

    move-object v2, p0

    move-object v3, p1

    move-object v7, p5

    invoke-direct/range {v2 .. v8}, Lcom/android/server/wm/WindowToken;-><init>(Lcom/android/server/wm/WindowManagerService;Landroid/os/IBinder;IZLcom/android/server/wm/DisplayContent;Z)V

    .line 165
    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/server/wm/AppWindowToken;->mRemovingFromDisplay:Z

    .line 174
    const-wide/high16 v1, -0x8000000000000000L

    iput-wide v1, p0, Lcom/android/server/wm/AppWindowToken;->mLastTransactionSequence:J

    .line 220
    new-instance p1, Lcom/android/server/wm/WindowState$UpdateReportedVisibilityResults;

    invoke-direct {p1}, Lcom/android/server/wm/WindowState$UpdateReportedVisibilityResults;-><init>()V

    iput-object p1, p0, Lcom/android/server/wm/AppWindowToken;->mReportedVisibilityResults:Lcom/android/server/wm/WindowState$UpdateReportedVisibilityResults;

    .line 241
    new-instance p1, Ljava/util/ArrayDeque;

    invoke-direct {p1}, Ljava/util/ArrayDeque;-><init>()V

    iput-object p1, p0, Lcom/android/server/wm/AppWindowToken;->mFrozenBounds:Ljava/util/ArrayDeque;

    .line 242
    new-instance p1, Ljava/util/ArrayDeque;

    invoke-direct {p1}, Ljava/util/ArrayDeque;-><init>()V

    iput-object p1, p0, Lcom/android/server/wm/AppWindowToken;->mFrozenMergedConfig:Ljava/util/ArrayDeque;

    .line 248
    const/high16 p1, 0x3f800000  # 1.0f

    iput p1, p0, Lcom/android/server/wm/AppWindowToken;->mSizeCompatScale:F

    .line 265
    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/android/server/wm/AppWindowToken;->mCanTurnScreenOn:Z

    .line 280
    iput-boolean p1, p0, Lcom/android/server/wm/AppWindowToken;->mLastSurfaceShowing:Z

    .line 287
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcom/android/server/wm/AppWindowToken;->mTransitStartRect:Landroid/graphics/Rect;

    .line 293
    iput-object v0, p0, Lcom/android/server/wm/AppWindowToken;->mTransitChangeLeash:Landroid/view/SurfaceControl;

    .line 302
    new-instance p1, Landroid/graphics/Point;

    invoke-direct {p1}, Landroid/graphics/Point;-><init>()V

    iput-object p1, p0, Lcom/android/server/wm/AppWindowToken;->mTmpPoint:Landroid/graphics/Point;

    .line 303
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcom/android/server/wm/AppWindowToken;->mTmpRect:Landroid/graphics/Rect;

    .line 304
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcom/android/server/wm/AppWindowToken;->mTmpPrevBounds:Landroid/graphics/Rect;

    .line 327
    new-instance p1, Lcom/android/server/wm/-$$Lambda$AppWindowToken$cwsF3cyeJjO4UiuaM07w8TBc698;

    invoke-direct {p1, p0}, Lcom/android/server/wm/-$$Lambda$AppWindowToken$cwsF3cyeJjO4UiuaM07w8TBc698;-><init>(Lcom/android/server/wm/AppWindowToken;)V

    iput-object p1, p0, Lcom/android/server/wm/AppWindowToken;->mColorTransformController:Lcom/android/server/display/color/ColorDisplayService$ColorTransformController;

    .line 2200
    new-instance p1, Lcom/android/server/wm/AppWindowToken$1;

    invoke-direct {p1, p0}, Lcom/android/server/wm/AppWindowToken$1;-><init>(Lcom/android/server/wm/AppWindowToken;)V

    iput-object p1, p0, Lcom/android/server/wm/AppWindowToken;->mAddStartingWindow:Ljava/lang/Runnable;

    .line 372
    iput-object p2, p0, Lcom/android/server/wm/AppWindowToken;->appToken:Landroid/view/IApplicationToken;

    .line 373
    iput-object p3, p0, Lcom/android/server/wm/AppWindowToken;->mActivityComponent:Landroid/content/ComponentName;

    .line 374
    iput-boolean p4, p0, Lcom/android/server/wm/AppWindowToken;->mVoiceInteraction:Z

    .line 375
    iput-boolean p6, p0, Lcom/android/server/wm/AppWindowToken;->mFillsParent:Z

    .line 376
    new-instance p1, Landroid/view/InputApplicationHandle;

    iget-object p2, p0, Lcom/android/server/wm/AppWindowToken;->appToken:Landroid/view/IApplicationToken;

    invoke-interface {p2}, Landroid/view/IApplicationToken;->asBinder()Landroid/os/IBinder;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/view/InputApplicationHandle;-><init>(Landroid/os/IBinder;)V

    iput-object p1, p0, Lcom/android/server/wm/AppWindowToken;->mInputApplicationHandle:Landroid/view/InputApplicationHandle;

    .line 377
    return-void
.end method

.method private allDrawnStatesConsidered()Z
    .registers 5

    .line 1895
    iget-object v0, p0, Lcom/android/server/wm/AppWindowToken;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowList;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    :goto_8
    if-ltz v0, :cond_23

    .line 1896
    iget-object v2, p0, Lcom/android/server/wm/AppWindowToken;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v2, v0}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/WindowState;

    .line 1897
    invoke-virtual {v2}, Lcom/android/server/wm/WindowState;->mightAffectAllDrawn()Z

    move-result v3

    if-eqz v3, :cond_20

    invoke-virtual {v2}, Lcom/android/server/wm/WindowState;->getDrawnStateEvaluated()Z

    move-result v2

    if-nez v2, :cond_20

    .line 1898
    const/4 v0, 0x0

    return v0

    .line 1895
    :cond_20
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    .line 1901
    :cond_23
    return v1
.end method

.method private calculateCompatBoundsTransformation(Landroid/content/res/Configuration;)V
    .registers 10

    .line 1806
    iget-object v0, p1, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v0}, Landroid/app/WindowConfiguration;->getAppBounds()Landroid/graphics/Rect;

    move-result-object v0

    .line 1807
    iget-object p1, p1, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {p1}, Landroid/app/WindowConfiguration;->getBounds()Landroid/graphics/Rect;

    move-result-object p1

    .line 1808
    if-eqz v0, :cond_f

    goto :goto_10

    :cond_f
    move-object v0, p1

    .line 1809
    :goto_10
    invoke-virtual {p0}, Lcom/android/server/wm/AppWindowToken;->getWindowConfiguration()Landroid/app/WindowConfiguration;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/WindowConfiguration;->getAppBounds()Landroid/graphics/Rect;

    move-result-object v1

    .line 1810
    if-eqz v1, :cond_1b

    goto :goto_1f

    :cond_1b
    invoke-virtual {p0}, Lcom/android/server/wm/AppWindowToken;->getResolvedOverrideBounds()Landroid/graphics/Rect;

    move-result-object v1

    .line 1811
    :goto_1f
    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v2

    int-to-float v2, v2

    .line 1812
    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v3

    int-to-float v3, v3

    .line 1813
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v4

    int-to-float v4, v4

    .line 1814
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v5

    int-to-float v5, v5

    .line 1816
    cmpg-float v6, v2, v4

    const/high16 v7, 0x3f800000  # 1.0f

    if-gtz v6, :cond_3f

    cmpg-float v6, v3, v5

    if-gtz v6, :cond_3f

    .line 1817
    move v3, v7

    goto :goto_46

    :cond_3f
    div-float v6, v4, v2

    div-float/2addr v5, v3

    invoke-static {v6, v5}, Ljava/lang/Math;->min(FF)F

    move-result v3

    :goto_46
    iput v3, p0, Lcom/android/server/wm/AppWindowToken;->mSizeCompatScale:F

    .line 1818
    iget v3, p0, Lcom/android/server/wm/AppWindowToken;->mSizeCompatScale:F

    mul-float/2addr v2, v3

    sub-float/2addr v4, v2

    add-float/2addr v4, v7

    const/high16 v2, 0x3f000000  # 0.5f

    mul-float/2addr v4, v2

    float-to-int v2, v4

    iget v3, v0, Landroid/graphics/Rect;->left:I

    add-int/2addr v2, v3

    .line 1821
    iget-object v3, p0, Lcom/android/server/wm/AppWindowToken;->mSizeCompatBounds:Landroid/graphics/Rect;

    if-nez v3, :cond_5f

    .line 1822
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    iput-object v3, p0, Lcom/android/server/wm/AppWindowToken;->mSizeCompatBounds:Landroid/graphics/Rect;

    .line 1824
    :cond_5f
    iget-object v3, p0, Lcom/android/server/wm/AppWindowToken;->mSizeCompatBounds:Landroid/graphics/Rect;

    invoke-virtual {v3, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 1825
    iget-object v1, p0, Lcom/android/server/wm/AppWindowToken;->mSizeCompatBounds:Landroid/graphics/Rect;

    const/4 v3, 0x0

    invoke-virtual {v1, v3, v3}, Landroid/graphics/Rect;->offsetTo(II)V

    .line 1826
    iget-object v1, p0, Lcom/android/server/wm/AppWindowToken;->mSizeCompatBounds:Landroid/graphics/Rect;

    iget v3, p0, Lcom/android/server/wm/AppWindowToken;->mSizeCompatScale:F

    invoke-virtual {v1, v3}, Landroid/graphics/Rect;->scale(F)V

    .line 1828
    iget-object v1, p0, Lcom/android/server/wm/AppWindowToken;->mSizeCompatBounds:Landroid/graphics/Rect;

    iget p1, p1, Landroid/graphics/Rect;->top:I

    iput p1, v1, Landroid/graphics/Rect;->top:I

    .line 1830
    iget-object p1, p0, Lcom/android/server/wm/AppWindowToken;->mSizeCompatBounds:Landroid/graphics/Rect;

    iget v1, p1, Landroid/graphics/Rect;->bottom:I

    iget v0, v0, Landroid/graphics/Rect;->top:I

    add-int/2addr v1, v0

    iput v1, p1, Landroid/graphics/Rect;->bottom:I

    .line 1831
    iget-object p1, p0, Lcom/android/server/wm/AppWindowToken;->mSizeCompatBounds:Landroid/graphics/Rect;

    iget v0, p1, Landroid/graphics/Rect;->left:I

    add-int/2addr v0, v2

    iput v0, p1, Landroid/graphics/Rect;->left:I

    .line 1832
    iget-object p1, p0, Lcom/android/server/wm/AppWindowToken;->mSizeCompatBounds:Landroid/graphics/Rect;

    iget v0, p1, Landroid/graphics/Rect;->right:I

    add-int/2addr v0, v2

    iput v0, p1, Landroid/graphics/Rect;->right:I

    .line 1833
    return-void
.end method

.method private clearChangeLeash(Landroid/view/SurfaceControl$Transaction;Z)V
    .registers 5

    .line 2888
    iget-object v0, p0, Lcom/android/server/wm/AppWindowToken;->mTransitChangeLeash:Landroid/view/SurfaceControl;

    if-nez v0, :cond_5

    .line 2889
    return-void

    .line 2891
    :cond_5
    if-eqz p2, :cond_1d

    .line 2892
    invoke-direct {p0}, Lcom/android/server/wm/AppWindowToken;->clearThumbnail()V

    .line 2893
    invoke-virtual {p0}, Lcom/android/server/wm/AppWindowToken;->getSurfaceControl()Landroid/view/SurfaceControl;

    move-result-object v0

    .line 2894
    invoke-virtual {p0}, Lcom/android/server/wm/AppWindowToken;->getParentSurfaceControl()Landroid/view/SurfaceControl;

    move-result-object v1

    .line 2896
    if-eqz v1, :cond_1d

    if-eqz v0, :cond_1d

    .line 2897
    invoke-virtual {p0}, Lcom/android/server/wm/AppWindowToken;->getParentSurfaceControl()Landroid/view/SurfaceControl;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/view/SurfaceControl$Transaction;->reparent(Landroid/view/SurfaceControl;Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    .line 2900
    :cond_1d
    iget-object v0, p0, Lcom/android/server/wm/AppWindowToken;->mTransitChangeLeash:Landroid/view/SurfaceControl;

    invoke-virtual {p1, v0}, Landroid/view/SurfaceControl$Transaction;->hide(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    .line 2901
    iget-object v0, p0, Lcom/android/server/wm/AppWindowToken;->mTransitChangeLeash:Landroid/view/SurfaceControl;

    invoke-virtual {p1, v0}, Landroid/view/SurfaceControl$Transaction;->remove(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    .line 2902
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/wm/AppWindowToken;->mTransitChangeLeash:Landroid/view/SurfaceControl;

    .line 2903
    if-eqz p2, :cond_2f

    .line 2904
    invoke-virtual {p0, p1}, Lcom/android/server/wm/AppWindowToken;->onAnimationLeashLost(Landroid/view/SurfaceControl$Transaction;)V

    .line 2906
    :cond_2f
    return-void
.end method

.method private clearThumbnail()V
    .registers 2

    .line 3005
    iget-object v0, p0, Lcom/android/server/wm/AppWindowToken;->mThumbnail:Lcom/android/server/wm/AppWindowThumbnail;

    if-nez v0, :cond_5

    .line 3006
    return-void

    .line 3008
    :cond_5
    invoke-virtual {v0}, Lcom/android/server/wm/AppWindowThumbnail;->destroy()V

    .line 3009
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/wm/AppWindowToken;->mThumbnail:Lcom/android/server/wm/AppWindowThumbnail;

    .line 3010
    return-void
.end method

.method private createAnimationBoundsLayer(Landroid/view/SurfaceControl$Transaction;)Landroid/view/SurfaceControl;
    .registers 5

    .line 2511
    invoke-virtual {p0}, Lcom/android/server/wm/AppWindowToken;->makeAnimationLeash()Landroid/view/SurfaceControl$Builder;

    move-result-object v0

    .line 2512
    invoke-virtual {p0}, Lcom/android/server/wm/AppWindowToken;->getAnimationLeashParent()Landroid/view/SurfaceControl;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/SurfaceControl$Builder;->setParent(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Builder;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 2513
    invoke-virtual {p0}, Lcom/android/server/wm/AppWindowToken;->getSurfaceControl()Landroid/view/SurfaceControl;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " - animation-bounds"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/SurfaceControl$Builder;->setName(Ljava/lang/String;)Landroid/view/SurfaceControl$Builder;

    move-result-object v0

    .line 2514
    invoke-virtual {v0}, Landroid/view/SurfaceControl$Builder;->build()Landroid/view/SurfaceControl;

    move-result-object v0

    .line 2515
    invoke-virtual {p1, v0}, Landroid/view/SurfaceControl$Transaction;->show(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    .line 2516
    return-object v0
.end method

.method private createSnapshot(Landroid/app/ActivityManager$TaskSnapshot;)Z
    .registers 4

    .line 2180
    if-nez p1, :cond_4

    .line 2181
    const/4 p1, 0x0

    return p1

    .line 2185
    :cond_4
    new-instance v0, Lcom/android/server/wm/SnapshotStartingData;

    iget-object v1, p0, Lcom/android/server/wm/AppWindowToken;->mWmService:Lcom/android/server/wm/WindowManagerService;

    invoke-direct {v0, v1, p1}, Lcom/android/server/wm/SnapshotStartingData;-><init>(Lcom/android/server/wm/WindowManagerService;Landroid/app/ActivityManager$TaskSnapshot;)V

    iput-object v0, p0, Lcom/android/server/wm/AppWindowToken;->mStartingData:Lcom/android/server/wm/StartingData;

    .line 2186
    invoke-virtual {p0}, Lcom/android/server/wm/AppWindowToken;->scheduleAddStartingWindow()V

    .line 2187
    const/4 p1, 0x1

    return p1
.end method

.method private destroySurfaces(Z)V
    .registers 8

    .line 978
    nop

    .line 981
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/server/wm/AppWindowToken;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 982
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    const/4 v3, 0x0

    :goto_f
    if-ltz v1, :cond_21

    .line 983
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/wm/WindowState;

    .line 984
    iget-boolean v5, p0, Lcom/android/server/wm/AppWindowToken;->mAppStopped:Z

    invoke-virtual {v4, p1, v5}, Lcom/android/server/wm/WindowState;->destroySurface(ZZ)Z

    move-result v4

    or-int/2addr v3, v4

    .line 982
    add-int/lit8 v1, v1, -0x1

    goto :goto_f

    .line 986
    :cond_21
    if-eqz v3, :cond_2e

    .line 987
    invoke-virtual {p0}, Lcom/android/server/wm/AppWindowToken;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object p1

    .line 988
    invoke-virtual {p1, v2}, Lcom/android/server/wm/DisplayContent;->assignWindowLayers(Z)V

    .line 989
    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/android/server/wm/AppWindowToken;->updateLetterboxSurface(Lcom/android/server/wm/WindowState;)V

    .line 991
    :cond_2e
    return-void
.end method

.method private freezeBounds()V
    .registers 5

    .line 1396
    invoke-virtual {p0}, Lcom/android/server/wm/AppWindowToken;->getTask()Lcom/android/server/wm/Task;

    move-result-object v0

    .line 1397
    iget-object v1, p0, Lcom/android/server/wm/AppWindowToken;->mFrozenBounds:Ljava/util/ArrayDeque;

    new-instance v2, Landroid/graphics/Rect;

    iget-object v3, v0, Lcom/android/server/wm/Task;->mPreparedFrozenBounds:Landroid/graphics/Rect;

    invoke-direct {v2, v3}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayDeque;->offer(Ljava/lang/Object;)Z

    .line 1399
    iget-object v1, v0, Lcom/android/server/wm/Task;->mPreparedFrozenMergedConfig:Landroid/content/res/Configuration;

    sget-object v2, Landroid/content/res/Configuration;->EMPTY:Landroid/content/res/Configuration;

    invoke-virtual {v1, v2}, Landroid/content/res/Configuration;->equals(Landroid/content/res/Configuration;)Z

    move-result v1

    if-eqz v1, :cond_29

    .line 1401
    iget-object v1, p0, Lcom/android/server/wm/AppWindowToken;->mFrozenMergedConfig:Ljava/util/ArrayDeque;

    new-instance v2, Landroid/content/res/Configuration;

    invoke-virtual {v0}, Lcom/android/server/wm/Task;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/content/res/Configuration;-><init>(Landroid/content/res/Configuration;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayDeque;->offer(Ljava/lang/Object;)Z

    goto :goto_35

    .line 1403
    :cond_29
    iget-object v1, p0, Lcom/android/server/wm/AppWindowToken;->mFrozenMergedConfig:Ljava/util/ArrayDeque;

    new-instance v2, Landroid/content/res/Configuration;

    iget-object v3, v0, Lcom/android/server/wm/Task;->mPreparedFrozenMergedConfig:Landroid/content/res/Configuration;

    invoke-direct {v2, v3}, Landroid/content/res/Configuration;-><init>(Landroid/content/res/Configuration;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayDeque;->offer(Ljava/lang/Object;)Z

    .line 1406
    :goto_35
    iget-object v0, v0, Lcom/android/server/wm/Task;->mPreparedFrozenMergedConfig:Landroid/content/res/Configuration;

    invoke-virtual {v0}, Landroid/content/res/Configuration;->unset()V

    .line 1407
    return-void
.end method

.method private getStartingWindowType(ZZZZZZLandroid/app/ActivityManager$TaskSnapshot;)I
    .registers 11

    .line 2265
    invoke-virtual {p0}, Lcom/android/server/wm/AppWindowToken;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    iget-object v0, v0, Lcom/android/server/wm/DisplayContent;->mAppTransition:Lcom/android/server/wm/AppTransition;

    invoke-virtual {v0}, Lcom/android/server/wm/AppTransition;->getAppTransition()I

    move-result v0

    const/4 v1, 0x0

    const/16 v2, 0x13

    if-ne v0, v2, :cond_10

    .line 2270
    return v1

    .line 2271
    :cond_10
    const/4 v0, 0x2

    if-nez p1, :cond_36

    if-eqz p3, :cond_36

    if-eqz p2, :cond_1a

    if-nez p5, :cond_1a

    goto :goto_36

    .line 2273
    :cond_1a
    if-eqz p2, :cond_35

    if-eqz p4, :cond_35

    .line 2274
    iget-object p1, p0, Lcom/android/server/wm/AppWindowToken;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-boolean p1, p1, Lcom/android/server/wm/WindowManagerService;->mLowRamTaskSnapshotsAndRecents:Z

    if-eqz p1, :cond_25

    .line 2277
    return v0

    .line 2279
    :cond_25
    if-nez p7, :cond_28

    goto :goto_34

    .line 2280
    :cond_28
    invoke-direct {p0, p7}, Lcom/android/server/wm/AppWindowToken;->snapshotOrientationSameAsTask(Landroid/app/ActivityManager$TaskSnapshot;)Z

    move-result p1

    if-nez p1, :cond_33

    if-eqz p6, :cond_31

    goto :goto_33

    .line 2281
    :cond_31
    move v1, v0

    goto :goto_34

    :cond_33
    :goto_33
    const/4 v1, 0x1

    .line 2279
    :goto_34
    return v1

    .line 2283
    :cond_35
    return v1

    .line 2272
    :cond_36
    :goto_36
    return v0
.end method

.method private hasNonDefaultColorWindow()Z
    .registers 3

    .line 3254
    sget-object v0, Lcom/android/server/wm/-$$Lambda$AppWindowToken$fPUApbLk_vYcjY_mIHRDEOCqbZU;->INSTANCE:Lcom/android/server/wm/-$$Lambda$AppWindowToken$fPUApbLk_vYcjY_mIHRDEOCqbZU;

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/android/server/wm/AppWindowToken;->forAllWindows(Lcom/android/internal/util/ToBooleanFunction;Z)Z

    move-result v0

    return v0
.end method

.method private initializeChangeTransition(Landroid/graphics/Rect;)V
    .registers 7

    .line 1753
    iget-object v0, p0, Lcom/android/server/wm/AppWindowToken;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    const/16 v1, 0x1b

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, v2, v2}, Lcom/android/server/wm/DisplayContent;->prepareAppTransition(IZIZ)V

    .line 1755
    iget-object v0, p0, Lcom/android/server/wm/AppWindowToken;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v0, v0, Lcom/android/server/wm/DisplayContent;->mChangingApps:Landroid/util/ArraySet;

    invoke-virtual {v0, p0}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 1756
    iget-object v0, p0, Lcom/android/server/wm/AppWindowToken;->mTransitStartRect:Landroid/graphics/Rect;

    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 1758
    invoke-virtual {p0}, Lcom/android/server/wm/AppWindowToken;->makeAnimationLeash()Landroid/view/SurfaceControl$Builder;

    move-result-object v0

    .line 1759
    invoke-virtual {p0}, Lcom/android/server/wm/AppWindowToken;->getAnimationLeashParent()Landroid/view/SurfaceControl;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/view/SurfaceControl$Builder;->setParent(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Builder;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 1760
    invoke-virtual {p0}, Lcom/android/server/wm/AppWindowToken;->getSurfaceControl()Landroid/view/SurfaceControl;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " - interim-change-leash"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/view/SurfaceControl$Builder;->setName(Ljava/lang/String;)Landroid/view/SurfaceControl$Builder;

    move-result-object v0

    .line 1761
    invoke-virtual {v0}, Landroid/view/SurfaceControl$Builder;->build()Landroid/view/SurfaceControl;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wm/AppWindowToken;->mTransitChangeLeash:Landroid/view/SurfaceControl;

    .line 1762
    invoke-virtual {p0}, Lcom/android/server/wm/AppWindowToken;->getPendingTransaction()Landroid/view/SurfaceControl$Transaction;

    move-result-object v0

    .line 1763
    iget-object v2, p0, Lcom/android/server/wm/AppWindowToken;->mTransitChangeLeash:Landroid/view/SurfaceControl;

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v3

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v4

    invoke-virtual {v0, v2, v3, v4}, Landroid/view/SurfaceControl$Transaction;->setWindowCrop(Landroid/view/SurfaceControl;II)Landroid/view/SurfaceControl$Transaction;

    .line 1764
    iget-object v2, p0, Lcom/android/server/wm/AppWindowToken;->mTransitChangeLeash:Landroid/view/SurfaceControl;

    iget v3, p1, Landroid/graphics/Rect;->left:I

    int-to-float v3, v3

    iget p1, p1, Landroid/graphics/Rect;->top:I

    int-to-float p1, p1

    invoke-virtual {v0, v2, v3, p1}, Landroid/view/SurfaceControl$Transaction;->setPosition(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    .line 1765
    iget-object p1, p0, Lcom/android/server/wm/AppWindowToken;->mTransitChangeLeash:Landroid/view/SurfaceControl;

    invoke-virtual {v0, p1}, Landroid/view/SurfaceControl$Transaction;->show(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    .line 1766
    invoke-virtual {p0}, Lcom/android/server/wm/AppWindowToken;->getSurfaceControl()Landroid/view/SurfaceControl;

    move-result-object p1

    iget-object v2, p0, Lcom/android/server/wm/AppWindowToken;->mTransitChangeLeash:Landroid/view/SurfaceControl;

    invoke-virtual {v0, p1, v2}, Landroid/view/SurfaceControl$Transaction;->reparent(Landroid/view/SurfaceControl;Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    .line 1767
    iget-object p1, p0, Lcom/android/server/wm/AppWindowToken;->mTransitChangeLeash:Landroid/view/SurfaceControl;

    invoke-virtual {p0, v0, p1}, Lcom/android/server/wm/AppWindowToken;->onAnimationLeashCreated(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;)V

    .line 1771
    new-instance p1, Landroid/util/ArraySet;

    invoke-direct {p1}, Landroid/util/ArraySet;-><init>()V

    .line 1772
    invoke-virtual {p0}, Lcom/android/server/wm/AppWindowToken;->getActivityType()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 1773
    iget-object v2, p0, Lcom/android/server/wm/AppWindowToken;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v2, v2, Lcom/android/server/wm/DisplayContent;->mAppTransitionController:Lcom/android/server/wm/AppTransitionController;

    .line 1774
    invoke-virtual {v2, p0, v1, p1}, Lcom/android/server/wm/AppTransitionController;->getRemoteAnimationOverride(Lcom/android/server/wm/AppWindowToken;ILandroid/util/ArraySet;)Landroid/view/RemoteAnimationAdapter;

    move-result-object p1

    .line 1776
    if-eqz p1, :cond_8f

    invoke-virtual {p1}, Landroid/view/RemoteAnimationAdapter;->getChangeNeedsSnapshot()Z

    move-result p1

    if-nez p1, :cond_8f

    .line 1777
    return-void

    .line 1780
    :cond_8f
    invoke-virtual {p0}, Lcom/android/server/wm/AppWindowToken;->getTask()Lcom/android/server/wm/Task;

    move-result-object p1

    .line 1781
    iget-object v1, p0, Lcom/android/server/wm/AppWindowToken;->mThumbnail:Lcom/android/server/wm/AppWindowThumbnail;

    if-nez v1, :cond_b7

    if-eqz p1, :cond_b7

    invoke-virtual {p0}, Lcom/android/server/wm/AppWindowToken;->hasCommittedReparentToAnimationLeash()Z

    move-result v1

    if-nez v1, :cond_b7

    .line 1782
    iget-object v1, p0, Lcom/android/server/wm/AppWindowToken;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mTaskSnapshotController:Lcom/android/server/wm/TaskSnapshotController;

    const/high16 v2, 0x3f800000  # 1.0f

    .line 1783
    invoke-virtual {v1, p1, v2}, Lcom/android/server/wm/TaskSnapshotController;->createTaskSnapshot(Lcom/android/server/wm/Task;F)Landroid/view/SurfaceControl$ScreenshotGraphicBuffer;

    move-result-object p1

    .line 1785
    if-eqz p1, :cond_b7

    .line 1786
    new-instance v1, Lcom/android/server/wm/AppWindowThumbnail;

    invoke-virtual {p1}, Landroid/view/SurfaceControl$ScreenshotGraphicBuffer;->getGraphicBuffer()Landroid/graphics/GraphicBuffer;

    move-result-object p1

    const/4 v2, 0x1

    invoke-direct {v1, v0, p0, p1, v2}, Lcom/android/server/wm/AppWindowThumbnail;-><init>(Landroid/view/SurfaceControl$Transaction;Lcom/android/server/wm/AppWindowToken;Landroid/graphics/GraphicBuffer;Z)V

    iput-object v1, p0, Lcom/android/server/wm/AppWindowToken;->mThumbnail:Lcom/android/server/wm/AppWindowThumbnail;

    .line 1790
    :cond_b7
    return-void
.end method

.method private isReallyAnimating()Z
    .registers 2

    .line 2880
    invoke-super {p0}, Lcom/android/server/wm/WindowToken;->isSelfAnimating()Z

    move-result v0

    return v0
.end method

.method static synthetic lambda$hasNonDefaultColorWindow$7(Lcom/android/server/wm/WindowState;)Z
    .registers 1

    .line 3254
    iget-object p0, p0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {p0}, Landroid/view/WindowManager$LayoutParams;->getColorMode()I

    move-result p0

    if-eqz p0, :cond_a

    const/4 p0, 0x1

    goto :goto_b

    :cond_a
    const/4 p0, 0x0

    :goto_b
    return p0
.end method

.method static synthetic lambda$removeStartingWindow$4(Lcom/android/server/policy/WindowManagerPolicy$StartingSurface;)V
    .registers 3

    .line 2342
    :try_start_0
    invoke-interface {p0}, Lcom/android/server/policy/WindowManagerPolicy$StartingSurface;->remove()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_3} :catch_4

    .line 2345
    goto :goto_c

    .line 2343
    :catch_4
    move-exception p0

    .line 2344
    const-string v0, "WindowManager"

    const-string v1, "Exception when removing starting window"

    invoke-static {v0, v1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2346
    :goto_c
    return-void
.end method

.method static synthetic lambda$setVisibility$2(Lcom/android/server/wm/WindowState;)V
    .registers 3

    .line 549
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    iget v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mDrawState:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_f

    .line 550
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowStateAnimator;->resetDrawState()V

    .line 554
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->resetLastContentInsets()V

    .line 556
    :cond_f
    return-void
.end method

.method static synthetic lambda$shouldUseAppThemeSnapshot$5(Lcom/android/server/wm/WindowState;)Z
    .registers 1

    .line 2461
    iget-object p0, p0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget p0, p0, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit16 p0, p0, 0x2000

    if-eqz p0, :cond_a

    const/4 p0, 0x1

    goto :goto_b

    :cond_a
    const/4 p0, 0x0

    :goto_b
    return p0
.end method

.method static synthetic lambda$showAllWindowsLocked$6(Lcom/android/server/wm/WindowState;)V
    .registers 1

    .line 2817
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->performShowLocked()Z

    .line 2818
    return-void
.end method

.method private loadAnimation(Landroid/view/WindowManager$LayoutParams;IZZ)Landroid/view/animation/Animation;
    .registers 26

    .line 2645
    move-object/from16 v0, p0

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/AppWindowToken;->getTask()Lcom/android/server/wm/Task;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/wm/Task;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v1

    .line 2646
    invoke-virtual {v1}, Lcom/android/server/wm/DisplayContent;->getDisplayInfo()Landroid/view/DisplayInfo;

    move-result-object v2

    .line 2647
    iget v3, v2, Landroid/view/DisplayInfo;->appWidth:I

    .line 2648
    iget v4, v2, Landroid/view/DisplayInfo;->appHeight:I

    .line 2653
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/AppWindowToken;->findMainWindow()Lcom/android/server/wm/WindowState;

    move-result-object v5

    .line 2654
    new-instance v15, Landroid/graphics/Rect;

    const/4 v6, 0x0

    invoke-direct {v15, v6, v6, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 2655
    new-instance v13, Landroid/graphics/Rect;

    iget v7, v2, Landroid/view/DisplayInfo;->logicalWidth:I

    iget v2, v2, Landroid/view/DisplayInfo;->logicalHeight:I

    invoke-direct {v13, v6, v6, v7, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 2657
    new-instance v14, Landroid/graphics/Rect;

    invoke-direct {v14}, Landroid/graphics/Rect;-><init>()V

    .line 2658
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    .line 2659
    nop

    .line 2660
    if-eqz v5, :cond_3c

    invoke-virtual {v5}, Lcom/android/server/wm/WindowState;->inFreeformWindowingMode()Z

    move-result v7

    if-eqz v7, :cond_3c

    const/4 v7, 0x1

    move/from16 v18, v7

    goto :goto_3e

    :cond_3c
    move/from16 v18, v6

    .line 2661
    :goto_3e
    if-eqz v5, :cond_87

    .line 2666
    if-eqz v18, :cond_4a

    .line 2667
    invoke-virtual {v5}, Lcom/android/server/wm/WindowState;->getFrameLw()Landroid/graphics/Rect;

    move-result-object v7

    invoke-virtual {v15, v7}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    goto :goto_79

    .line 2668
    :cond_4a
    invoke-virtual {v5}, Lcom/android/server/wm/WindowState;->isLetterboxedAppWindow()Z

    move-result v7

    if-eqz v7, :cond_5c

    .line 2669
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/AppWindowToken;->getTask()Lcom/android/server/wm/Task;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/server/wm/Task;->getBounds()Landroid/graphics/Rect;

    move-result-object v7

    invoke-virtual {v15, v7}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    goto :goto_79

    .line 2670
    :cond_5c
    invoke-virtual {v5}, Lcom/android/server/wm/WindowState;->isDockedResizing()Z

    move-result v7

    if-eqz v7, :cond_72

    .line 2673
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/AppWindowToken;->getTask()Lcom/android/server/wm/Task;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/server/wm/Task;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/server/wm/WindowContainer;->getBounds()Landroid/graphics/Rect;

    move-result-object v7

    invoke-virtual {v15, v7}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    goto :goto_79

    .line 2675
    :cond_72
    invoke-virtual {v5}, Lcom/android/server/wm/WindowState;->getContainingFrame()Landroid/graphics/Rect;

    move-result-object v7

    invoke-virtual {v15, v7}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 2677
    :goto_79
    invoke-virtual {v5}, Lcom/android/server/wm/WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v7

    iget-object v7, v7, Landroid/view/WindowManager$LayoutParams;->surfaceInsets:Landroid/graphics/Rect;

    .line 2680
    invoke-virtual {v5, v14}, Lcom/android/server/wm/WindowState;->getContentInsets(Landroid/graphics/Rect;)V

    .line 2681
    invoke-virtual {v5, v2}, Lcom/android/server/wm/WindowState;->getStableInsets(Landroid/graphics/Rect;)V

    move-object v5, v7

    goto :goto_88

    .line 2661
    :cond_87
    const/4 v5, 0x0

    .line 2684
    :goto_88
    iget-boolean v7, v0, Lcom/android/server/wm/AppWindowToken;->mLaunchTaskBehind:Z

    if-eqz v7, :cond_8e

    .line 2688
    move v9, v6

    goto :goto_90

    .line 2684
    :cond_8e
    move/from16 v9, p3

    .line 2693
    :goto_90
    invoke-virtual {v1}, Lcom/android/server/wm/DisplayContent;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    .line 2694
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/AppWindowToken;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v6

    iget-object v6, v6, Lcom/android/server/wm/DisplayContent;->mAppTransition:Lcom/android/server/wm/AppTransition;

    iget v10, v1, Landroid/content/res/Configuration;->uiMode:I

    iget v11, v1, Landroid/content/res/Configuration;->orientation:I

    .line 2696
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/AppWindowToken;->getTask()Lcom/android/server/wm/Task;

    move-result-object v1

    iget v1, v1, Lcom/android/server/wm/Task;->mTaskId:I

    .line 2694
    move-object/from16 v7, p1

    move/from16 v8, p2

    move-object v12, v15

    move-object/from16 v20, v15

    move-object v15, v5

    move-object/from16 v16, v2

    move/from16 v17, p4

    move/from16 v19, v1

    invoke-virtual/range {v6 .. v19}, Lcom/android/server/wm/AppTransition;->loadAnimation(Landroid/view/WindowManager$LayoutParams;IZIILandroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;ZZI)Landroid/view/animation/Animation;

    move-result-object v1

    .line 2697
    if-eqz v1, :cond_cc

    .line 2699
    invoke-virtual/range {v20 .. v20}, Landroid/graphics/Rect;->width()I

    move-result v2

    .line 2700
    invoke-virtual/range {v20 .. v20}, Landroid/graphics/Rect;->height()I

    move-result v5

    .line 2701
    invoke-virtual {v1, v2, v5, v3, v4}, Landroid/view/animation/Animation;->initialize(IIII)V

    .line 2702
    iget-object v0, v0, Lcom/android/server/wm/AppWindowToken;->mWmService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerService;->getTransitionAnimationScaleLocked()F

    move-result v0

    invoke-virtual {v1, v0}, Landroid/view/animation/Animation;->scaleCurrentDuration(F)V

    .line 2704
    :cond_cc
    return-object v1
.end method

.method private loadThumbnailAnimation(Landroid/graphics/GraphicBuffer;)Landroid/view/animation/Animation;
    .registers 14

    .line 2989
    iget-object v0, p0, Lcom/android/server/wm/AppWindowToken;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->getDisplayInfo()Landroid/view/DisplayInfo;

    move-result-object v0

    .line 2994
    invoke-virtual {p0}, Lcom/android/server/wm/AppWindowToken;->findMainWindow()Lcom/android/server/wm/WindowState;

    move-result-object v1

    .line 2995
    if-eqz v1, :cond_12

    invoke-virtual {v1}, Lcom/android/server/wm/WindowState;->getContentFrameLw()Landroid/graphics/Rect;

    move-result-object v0

    move-object v6, v0

    goto :goto_1d

    .line 2996
    :cond_12
    new-instance v2, Landroid/graphics/Rect;

    iget v3, v0, Landroid/view/DisplayInfo;->appWidth:I

    iget v0, v0, Landroid/view/DisplayInfo;->appHeight:I

    const/4 v4, 0x0

    invoke-direct {v2, v4, v4, v3, v0}, Landroid/graphics/Rect;-><init>(IIII)V

    move-object v6, v2

    .line 2997
    :goto_1d
    if-eqz v1, :cond_24

    invoke-virtual {v1}, Lcom/android/server/wm/WindowState;->getContentInsets()Landroid/graphics/Rect;

    move-result-object v0

    goto :goto_25

    :cond_24
    const/4 v0, 0x0

    :goto_25
    move-object v7, v0

    .line 2998
    iget-object v0, p0, Lcom/android/server/wm/AppWindowToken;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 2999
    invoke-virtual {p0}, Lcom/android/server/wm/AppWindowToken;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v1

    iget-object v5, v1, Lcom/android/server/wm/DisplayContent;->mAppTransition:Lcom/android/server/wm/AppTransition;

    .line 3000
    invoke-virtual {p0}, Lcom/android/server/wm/AppWindowToken;->getTask()Lcom/android/server/wm/Task;

    move-result-object v1

    iget v9, v1, Lcom/android/server/wm/Task;->mTaskId:I

    iget v10, v0, Landroid/content/res/Configuration;->uiMode:I

    iget v11, v0, Landroid/content/res/Configuration;->orientation:I

    .line 2999
    move-object v8, p1

    invoke-virtual/range {v5 .. v11}, Lcom/android/server/wm/AppTransition;->createThumbnailAspectScaleAnimationLocked(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/GraphicBuffer;III)Landroid/view/animation/Animation;

    move-result-object p1

    return-object p1
.end method

.method private onWindowsGone()V
    .registers 2

    .line 451
    iget-object v0, p0, Lcom/android/server/wm/AppWindowToken;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    if-nez v0, :cond_5

    .line 452
    return-void

    .line 457
    :cond_5
    invoke-virtual {v0}, Lcom/android/server/wm/ActivityRecord;->onWindowsGone()V

    .line 458
    return-void
.end method

.method private onWindowsVisible()V
    .registers 2

    .line 461
    iget-object v0, p0, Lcom/android/server/wm/AppWindowToken;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    if-nez v0, :cond_5

    .line 462
    return-void

    .line 467
    :cond_5
    invoke-virtual {v0}, Lcom/android/server/wm/ActivityRecord;->onWindowsVisible()V

    .line 468
    return-void
.end method

.method private reportDescendantOrientationChangeIfNeeded()V
    .registers 3

    .line 769
    iget-object v0, p0, Lcom/android/server/wm/AppWindowToken;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityRecord;->getRequestedConfigurationOrientation()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/server/wm/AppWindowToken;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    if-eq v0, v1, :cond_2c

    .line 770
    invoke-virtual {p0}, Lcom/android/server/wm/AppWindowToken;->getOrientationIgnoreVisibility()I

    move-result v0

    const/4 v1, -0x2

    if-ne v0, v1, :cond_16

    goto :goto_2c

    .line 775
    :cond_16
    iget-object v0, p0, Lcom/android/server/wm/AppWindowToken;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    iget-object v1, v0, Lcom/android/server/wm/ActivityRecord;->app:Lcom/android/server/wm/WindowProcessController;

    invoke-virtual {v0, v1}, Lcom/android/server/wm/ActivityRecord;->mayFreezeScreenLocked(Lcom/android/server/wm/WindowProcessController;)Z

    move-result v0

    if-eqz v0, :cond_25

    .line 776
    iget-object v0, p0, Lcom/android/server/wm/AppWindowToken;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    iget-object v0, v0, Lcom/android/server/wm/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    goto :goto_26

    :cond_25
    const/4 v0, 0x0

    .line 777
    :goto_26
    iget-object v1, p0, Lcom/android/server/wm/AppWindowToken;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {p0, v0, v1}, Lcom/android/server/wm/AppWindowToken;->onDescendantOrientationChanged(Landroid/os/IBinder;Lcom/android/server/wm/ConfigurationContainer;)Z

    .line 778
    return-void

    .line 771
    :cond_2c
    :goto_2c
    return-void
.end method

.method private shouldStartChangeTransition(II)Z
    .registers 6

    .line 1728
    iget-object v0, p0, Lcom/android/server/wm/AppWindowToken;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-boolean v0, v0, Lcom/android/server/wm/WindowManagerService;->mDisableTransitionAnimation:Z

    const/4 v1, 0x0

    if-nez v0, :cond_30

    .line 1729
    invoke-virtual {p0}, Lcom/android/server/wm/AppWindowToken;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_30

    .line 1730
    invoke-virtual {p0}, Lcom/android/server/wm/AppWindowToken;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    iget-object v0, v0, Lcom/android/server/wm/DisplayContent;->mAppTransition:Lcom/android/server/wm/AppTransition;

    invoke-virtual {v0}, Lcom/android/server/wm/AppTransition;->isTransitionSet()Z

    move-result v0

    if-nez v0, :cond_30

    .line 1731
    invoke-virtual {p0}, Lcom/android/server/wm/AppWindowToken;->getSurfaceControl()Landroid/view/SurfaceControl;

    move-result-object v0

    if-nez v0, :cond_20

    goto :goto_30

    .line 1736
    :cond_20
    const/4 v0, 0x5

    const/4 v2, 0x1

    if-ne p1, v0, :cond_26

    move p1, v2

    goto :goto_27

    :cond_26
    move p1, v1

    :goto_27
    if-ne p2, v0, :cond_2b

    move p2, v2

    goto :goto_2c

    :cond_2b
    move p2, v1

    :goto_2c
    if-eq p1, p2, :cond_2f

    move v1, v2

    :cond_2f
    return v1

    .line 1732
    :cond_30
    :goto_30
    return v1
.end method

.method private snapshotOrientationSameAsTask(Landroid/app/ActivityManager$TaskSnapshot;)Z
    .registers 4

    .line 2289
    const/4 v0, 0x0

    if-nez p1, :cond_4

    .line 2290
    return v0

    .line 2292
    :cond_4
    invoke-virtual {p0}, Lcom/android/server/wm/AppWindowToken;->getTask()Lcom/android/server/wm/Task;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/wm/Task;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    invoke-virtual {p1}, Landroid/app/ActivityManager$TaskSnapshot;->getOrientation()I

    move-result p1

    if-ne v1, p1, :cond_15

    const/4 v0, 0x1

    :cond_15
    return v0
.end method

.method private unfreezeBounds()V
    .registers 3

    .line 1413
    iget-object v0, p0, Lcom/android/server/wm/AppWindowToken;->mFrozenBounds:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 1414
    return-void

    .line 1416
    :cond_9
    iget-object v0, p0, Lcom/android/server/wm/AppWindowToken;->mFrozenBounds:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->remove()Ljava/lang/Object;

    .line 1417
    iget-object v0, p0, Lcom/android/server/wm/AppWindowToken;->mFrozenMergedConfig:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1b

    .line 1418
    iget-object v0, p0, Lcom/android/server/wm/AppWindowToken;->mFrozenMergedConfig:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->remove()Ljava/lang/Object;

    .line 1420
    :cond_1b
    iget-object v0, p0, Lcom/android/server/wm/AppWindowToken;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_23
    if-ltz v0, :cond_33

    .line 1421
    iget-object v1, p0, Lcom/android/server/wm/AppWindowToken;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v1, v0}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/WindowState;

    .line 1422
    invoke-virtual {v1}, Lcom/android/server/wm/WindowState;->onUnfreezeBounds()V

    .line 1420
    add-int/lit8 v0, v0, -0x1

    goto :goto_23

    .line 1424
    :cond_33
    iget-object v0, p0, Lcom/android/server/wm/AppWindowToken;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mWindowPlacerLocked:Lcom/android/server/wm/WindowSurfacePlacer;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowSurfacePlacer;->performSurfacePlacement()V

    .line 1425
    return-void
.end method

.method private updateColorTransform()V
    .registers 5

    .line 3259
    iget-object v0, p0, Lcom/android/server/wm/AppWindowToken;->mSurfaceControl:Landroid/view/SurfaceControl;

    if-eqz v0, :cond_1e

    iget-object v0, p0, Lcom/android/server/wm/AppWindowToken;->mLastAppSaturationInfo:Lcom/android/server/wm/AppWindowToken$AppSaturationInfo;

    if-eqz v0, :cond_1e

    .line 3260
    invoke-virtual {p0}, Lcom/android/server/wm/AppWindowToken;->getPendingTransaction()Landroid/view/SurfaceControl$Transaction;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wm/AppWindowToken;->mSurfaceControl:Landroid/view/SurfaceControl;

    iget-object v2, p0, Lcom/android/server/wm/AppWindowToken;->mLastAppSaturationInfo:Lcom/android/server/wm/AppWindowToken$AppSaturationInfo;

    iget-object v2, v2, Lcom/android/server/wm/AppWindowToken$AppSaturationInfo;->mMatrix:[F

    iget-object v3, p0, Lcom/android/server/wm/AppWindowToken;->mLastAppSaturationInfo:Lcom/android/server/wm/AppWindowToken$AppSaturationInfo;

    iget-object v3, v3, Lcom/android/server/wm/AppWindowToken$AppSaturationInfo;->mTranslation:[F

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/SurfaceControl$Transaction;->setColorTransform(Landroid/view/SurfaceControl;[F[F)Landroid/view/SurfaceControl$Transaction;

    .line 3262
    iget-object v0, p0, Lcom/android/server/wm/AppWindowToken;->mWmService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerService;->scheduleAnimationLocked()V

    .line 3264
    :cond_1e
    return-void
.end method

.method private waitingForReplacement()Z
    .registers 4

    .line 1291
    iget-object v0, p0, Lcom/android/server/wm/AppWindowToken;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowList;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    :goto_8
    if-ltz v0, :cond_1c

    .line 1292
    iget-object v2, p0, Lcom/android/server/wm/AppWindowToken;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v2, v0}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/WindowState;

    .line 1293
    invoke-virtual {v2}, Lcom/android/server/wm/WindowState;->waitingForReplacement()Z

    move-result v2

    if-eqz v2, :cond_19

    .line 1294
    return v1

    .line 1291
    :cond_19
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    .line 1297
    :cond_1c
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method addStartingWindow(Ljava/lang/String;ILandroid/content/res/CompatibilityInfo;Ljava/lang/CharSequence;IIIILandroid/os/IBinder;ZZZZZZ)Z
    .registers 36

    .line 2086
    move-object/from16 v8, p0

    move/from16 v12, p2

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/AppWindowToken;->okToDisplay()Z

    move-result v0

    const/4 v9, 0x0

    if-nez v0, :cond_c

    .line 2087
    return v9

    .line 2090
    :cond_c
    iget-object v0, v8, Lcom/android/server/wm/AppWindowToken;->mStartingData:Lcom/android/server/wm/StartingData;

    if-eqz v0, :cond_11

    .line 2091
    return v9

    .line 2094
    :cond_11
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/AppWindowToken;->findMainWindow()Lcom/android/server/wm/WindowState;

    move-result-object v0

    .line 2095
    if-eqz v0, :cond_20

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowStateAnimator;->getShown()Z

    move-result v0

    if-eqz v0, :cond_20

    .line 2097
    return v9

    .line 2100
    :cond_20
    iget-object v0, v8, Lcom/android/server/wm/AppWindowToken;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mTaskSnapshotController:Lcom/android/server/wm/TaskSnapshotController;

    .line 2102
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/AppWindowToken;->getTask()Lcom/android/server/wm/Task;

    move-result-object v1

    iget v1, v1, Lcom/android/server/wm/Task;->mTaskId:I

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/AppWindowToken;->getTask()Lcom/android/server/wm/Task;

    move-result-object v2

    iget v2, v2, Lcom/android/server/wm/Task;->mUserId:I

    .line 2101
    invoke-virtual {v0, v1, v2, v9, v9}, Lcom/android/server/wm/TaskSnapshotController;->getSnapshot(IIZZ)Landroid/app/ActivityManager$TaskSnapshot;

    move-result-object v10

    .line 2104
    move-object/from16 v0, p0

    move/from16 v1, p10

    move/from16 v2, p11

    move/from16 v3, p12

    move/from16 v4, p13

    move/from16 v5, p14

    move/from16 v6, p15

    move-object v7, v10

    invoke-direct/range {v0 .. v7}, Lcom/android/server/wm/AppWindowToken;->getStartingWindowType(ZZZZZZLandroid/app/ActivityManager$TaskSnapshot;)I

    move-result v0

    .line 2107
    const/4 v1, 0x1

    if-ne v0, v1, :cond_4f

    .line 2108
    invoke-direct {v8, v10}, Lcom/android/server/wm/AppWindowToken;->createSnapshot(Landroid/app/ActivityManager$TaskSnapshot;)Z

    move-result v0

    return v0

    .line 2117
    :cond_4f
    if-eqz v12, :cond_a1

    .line 2118
    invoke-static {}, Lcom/android/server/AttributeCache;->instance()Lcom/android/server/AttributeCache;

    move-result-object v2

    sget-object v3, Lcom/android/internal/R$styleable;->Window:[I

    iget-object v4, v8, Lcom/android/server/wm/AppWindowToken;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget v4, v4, Lcom/android/server/wm/WindowManagerService;->mCurrentUserId:I

    move-object/from16 v5, p1

    invoke-virtual {v2, v5, v12, v3, v4}, Lcom/android/server/AttributeCache;->get(Ljava/lang/String;I[II)Lcom/android/server/AttributeCache$Entry;

    move-result-object v2

    .line 2121
    if-nez v2, :cond_64

    .line 2124
    return v9

    .line 2126
    :cond_64
    iget-object v3, v2, Lcom/android/server/AttributeCache$Entry;->array:Landroid/content/res/TypedArray;

    const/4 v4, 0x5

    invoke-virtual {v3, v4, v9}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v3

    .line 2128
    iget-object v4, v2, Lcom/android/server/AttributeCache$Entry;->array:Landroid/content/res/TypedArray;

    const/4 v6, 0x4

    invoke-virtual {v4, v6, v9}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v4

    .line 2130
    iget-object v6, v2, Lcom/android/server/AttributeCache$Entry;->array:Landroid/content/res/TypedArray;

    const/16 v7, 0xe

    invoke-virtual {v6, v7, v9}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v6

    .line 2132
    iget-object v2, v2, Lcom/android/server/AttributeCache$Entry;->array:Landroid/content/res/TypedArray;

    const/16 v7, 0xc

    invoke-virtual {v2, v7, v9}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    .line 2139
    if-eqz v3, :cond_85

    .line 2140
    return v9

    .line 2142
    :cond_85
    if-nez v4, :cond_a0

    if-eqz v2, :cond_8a

    goto :goto_a0

    .line 2145
    :cond_8a
    if-eqz v6, :cond_a3

    .line 2146
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/AppWindowToken;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v2

    iget-object v2, v2, Lcom/android/server/wm/DisplayContent;->mWallpaperController:Lcom/android/server/wm/WallpaperController;

    .line 2147
    invoke-virtual {v2}, Lcom/android/server/wm/WallpaperController;->getWallpaperTarget()Lcom/android/server/wm/WindowState;

    move-result-object v2

    if-nez v2, :cond_9f

    .line 2153
    const/high16 v2, 0x100000

    or-int v2, p8, v2

    move/from16 v18, v2

    goto :goto_a5

    .line 2155
    :cond_9f
    return v9

    .line 2143
    :cond_a0
    :goto_a0
    return v9

    .line 2117
    :cond_a1
    move-object/from16 v5, p1

    .line 2160
    :cond_a3
    move/from16 v18, p8

    :goto_a5
    move-object/from16 v2, p9

    invoke-virtual {v8, v2}, Lcom/android/server/wm/AppWindowToken;->transferStartingWindow(Landroid/os/IBinder;)Z

    move-result v2

    if-eqz v2, :cond_ae

    .line 2161
    return v1

    .line 2166
    :cond_ae
    const/4 v2, 0x2

    if-eq v0, v2, :cond_b2

    .line 2167
    return v9

    .line 2171
    :cond_b2
    new-instance v0, Lcom/android/server/wm/SplashScreenStartingData;

    iget-object v10, v8, Lcom/android/server/wm/AppWindowToken;->mWmService:Lcom/android/server/wm/WindowManagerService;

    .line 2173
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/AppWindowToken;->getMergedOverrideConfiguration()Landroid/content/res/Configuration;

    move-result-object v19

    move-object v9, v0

    move-object/from16 v11, p1

    move/from16 v12, p2

    move-object/from16 v13, p3

    move-object/from16 v14, p4

    move/from16 v15, p5

    move/from16 v16, p6

    move/from16 v17, p7

    invoke-direct/range {v9 .. v19}, Lcom/android/server/wm/SplashScreenStartingData;-><init>(Lcom/android/server/wm/WindowManagerService;Ljava/lang/String;ILandroid/content/res/CompatibilityInfo;Ljava/lang/CharSequence;IIIILandroid/content/res/Configuration;)V

    iput-object v0, v8, Lcom/android/server/wm/AppWindowToken;->mStartingData:Lcom/android/server/wm/StartingData;

    .line 2174
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/AppWindowToken;->scheduleAddStartingWindow()V

    .line 2175
    return v1
.end method

.method addWindow(Lcom/android/server/wm/WindowState;)V
    .registers 5

    .line 1264
    invoke-super {p0, p1}, Lcom/android/server/wm/WindowToken;->addWindow(Lcom/android/server/wm/WindowState;)V

    .line 1266
    nop

    .line 1267
    iget-object v0, p0, Lcom/android/server/wm/AppWindowToken;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    const/4 v1, 0x0

    :goto_d
    if-ltz v0, :cond_1f

    .line 1268
    iget-object v2, p0, Lcom/android/server/wm/AppWindowToken;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v2, v0}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/WindowState;

    .line 1269
    invoke-virtual {v2, p1}, Lcom/android/server/wm/WindowState;->setReplacementWindowIfNeeded(Lcom/android/server/wm/WindowState;)Z

    move-result v2

    or-int/2addr v1, v2

    .line 1267
    add-int/lit8 v0, v0, -0x1

    goto :goto_d

    .line 1273
    :cond_1f
    if-eqz v1, :cond_26

    .line 1274
    iget-object p1, p0, Lcom/android/server/wm/AppWindowToken;->mWmService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {p1, p0}, Lcom/android/server/wm/WindowManagerService;->scheduleWindowReplacementTimeouts(Lcom/android/server/wm/AppWindowToken;)V

    .line 1276
    :cond_26
    invoke-virtual {p0}, Lcom/android/server/wm/AppWindowToken;->checkKeyguardFlagsChanged()V

    .line 1277
    return-void
.end method

.method applyAnimationLocked(Landroid/view/WindowManager$LayoutParams;IZZ)Z
    .registers 22

    .line 2545
    move-object/from16 v0, p0

    move/from16 v1, p2

    iget-object v2, v0, Lcom/android/server/wm/AppWindowToken;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-boolean v2, v2, Lcom/android/server/wm/WindowManagerService;->mDisableTransitionAnimation:Z

    const/4 v3, 0x0

    if-nez v2, :cond_18c

    invoke-virtual {v0, v1}, Lcom/android/server/wm/AppWindowToken;->shouldAnimate(I)Z

    move-result v2

    if-nez v2, :cond_13

    goto/16 :goto_18c

    .line 2557
    :cond_13
    const-wide/16 v4, 0x20

    const-string v2, "AWT#applyAnimationLocked"

    invoke-static {v4, v5, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 2558
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/AppWindowToken;->okToAnimate()Z

    move-result v2

    if-eqz v2, :cond_181

    .line 2560
    nop

    .line 2562
    nop

    .line 2563
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/AppWindowToken;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v2

    iget-object v2, v2, Lcom/android/server/wm/DisplayContent;->mAppTransition:Lcom/android/server/wm/AppTransition;

    invoke-virtual {v2}, Lcom/android/server/wm/AppTransition;->getAppStackClipMode()I

    move-result v11

    .line 2566
    iget-object v2, v0, Lcom/android/server/wm/AppWindowToken;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v11}, Lcom/android/server/wm/AppWindowToken;->getAnimationBounds(I)Landroid/graphics/Rect;

    move-result-object v6

    invoke-virtual {v2, v6}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 2567
    iget-object v2, v0, Lcom/android/server/wm/AppWindowToken;->mTmpPoint:Landroid/graphics/Point;

    iget-object v6, v0, Lcom/android/server/wm/AppWindowToken;->mTmpRect:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->left:I

    iget-object v7, v0, Lcom/android/server/wm/AppWindowToken;->mTmpRect:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->top:I

    invoke-virtual {v2, v6, v7}, Landroid/graphics/Point;->set(II)V

    .line 2568
    iget-object v2, v0, Lcom/android/server/wm/AppWindowToken;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v2, v3, v3}, Landroid/graphics/Rect;->offsetTo(II)V

    .line 2570
    invoke-static/range {p2 .. p2}, Lcom/android/server/wm/AppTransition;->isChangeTransit(I)Z

    move-result v2

    const/4 v14, 0x1

    if-eqz v2, :cond_5e

    if-eqz p3, :cond_5e

    .line 2571
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/AppWindowToken;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v2

    iget-object v2, v2, Lcom/android/server/wm/DisplayContent;->mChangingApps:Landroid/util/ArraySet;

    invoke-virtual {v2, v0}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5e

    move v2, v14

    goto :goto_5f

    :cond_5e
    move v2, v3

    .line 2574
    :goto_5f
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/AppWindowToken;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v6

    iget-object v6, v6, Lcom/android/server/wm/DisplayContent;->mAppTransition:Lcom/android/server/wm/AppTransition;

    invoke-virtual {v6}, Lcom/android/server/wm/AppTransition;->getRemoteAnimationController()Lcom/android/server/wm/RemoteAnimationController;

    move-result-object v6

    if-eqz v6, :cond_94

    iget-object v6, v0, Lcom/android/server/wm/AppWindowToken;->mSurfaceAnimator:Lcom/android/server/wm/SurfaceAnimator;

    .line 2575
    invoke-virtual {v6}, Lcom/android/server/wm/SurfaceAnimator;->isAnimationStartDelayed()Z

    move-result v6

    if-nez v6, :cond_94

    .line 2576
    nop

    .line 2577
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/AppWindowToken;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v1

    iget-object v1, v1, Lcom/android/server/wm/DisplayContent;->mAppTransition:Lcom/android/server/wm/AppTransition;

    invoke-virtual {v1}, Lcom/android/server/wm/AppTransition;->getRemoteAnimationController()Lcom/android/server/wm/RemoteAnimationController;

    move-result-object v1

    iget-object v3, v0, Lcom/android/server/wm/AppWindowToken;->mTmpPoint:Landroid/graphics/Point;

    iget-object v6, v0, Lcom/android/server/wm/AppWindowToken;->mTmpRect:Landroid/graphics/Rect;

    .line 2579
    if-eqz v2, :cond_87

    iget-object v15, v0, Lcom/android/server/wm/AppWindowToken;->mTransitStartRect:Landroid/graphics/Rect;

    goto :goto_88

    :cond_87
    const/4 v15, 0x0

    .line 2578
    :goto_88
    invoke-virtual {v1, v0, v3, v6, v15}, Lcom/android/server/wm/RemoteAnimationController;->createRemoteAnimationRecord(Lcom/android/server/wm/AppWindowToken;Landroid/graphics/Point;Landroid/graphics/Rect;Landroid/graphics/Rect;)Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationRecord;

    move-result-object v1

    .line 2580
    iget-object v15, v1, Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationRecord;->mAdapter:Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationAdapterWrapper;

    .line 2581
    iget-object v1, v1, Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationRecord;->mThumbnailAdapter:Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationAdapterWrapper;

    .line 2582
    move-object v3, v15

    move-object v15, v1

    goto/16 :goto_154

    :cond_94
    if-eqz v2, :cond_fa

    .line 2583
    iget-object v2, v0, Lcom/android/server/wm/AppWindowToken;->mWmService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowManagerService;->getTransitionAnimationScaleLocked()F

    move-result v2

    .line 2584
    iget-object v3, v0, Lcom/android/server/wm/AppWindowToken;->mTmpRect:Landroid/graphics/Rect;

    iget-object v6, v0, Lcom/android/server/wm/AppWindowToken;->mTmpPoint:Landroid/graphics/Point;

    iget v6, v6, Landroid/graphics/Point;->x:I

    iget-object v7, v0, Lcom/android/server/wm/AppWindowToken;->mTmpPoint:Landroid/graphics/Point;

    iget v7, v7, Landroid/graphics/Point;->y:I

    invoke-virtual {v3, v6, v7}, Landroid/graphics/Rect;->offsetTo(II)V

    .line 2585
    new-instance v3, Lcom/android/server/wm/LocalAnimationAdapter;

    new-instance v13, Lcom/android/server/wm/WindowChangeAnimationSpec;

    iget-object v7, v0, Lcom/android/server/wm/AppWindowToken;->mTransitStartRect:Landroid/graphics/Rect;

    iget-object v8, v0, Lcom/android/server/wm/AppWindowToken;->mTmpRect:Landroid/graphics/Rect;

    .line 2587
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/AppWindowToken;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/server/wm/DisplayContent;->getDisplayInfo()Landroid/view/DisplayInfo;

    move-result-object v9

    const/4 v11, 0x1

    const/4 v12, 0x0

    move-object v6, v13

    move v10, v2

    invoke-direct/range {v6 .. v12}, Lcom/android/server/wm/WindowChangeAnimationSpec;-><init>(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/view/DisplayInfo;FZZ)V

    iget-object v6, v0, Lcom/android/server/wm/AppWindowToken;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v6, v6, Lcom/android/server/wm/WindowManagerService;->mSurfaceAnimationRunner:Lcom/android/server/wm/SurfaceAnimationRunner;

    invoke-direct {v3, v13, v6}, Lcom/android/server/wm/LocalAnimationAdapter;-><init>(Lcom/android/server/wm/LocalAnimationAdapter$AnimationSpec;Lcom/android/server/wm/SurfaceAnimationRunner;)V

    .line 2590
    iget-object v6, v0, Lcom/android/server/wm/AppWindowToken;->mThumbnail:Lcom/android/server/wm/AppWindowThumbnail;

    if-eqz v6, :cond_ea

    .line 2591
    new-instance v15, Lcom/android/server/wm/LocalAnimationAdapter;

    new-instance v13, Lcom/android/server/wm/WindowChangeAnimationSpec;

    iget-object v7, v0, Lcom/android/server/wm/AppWindowToken;->mTransitStartRect:Landroid/graphics/Rect;

    iget-object v8, v0, Lcom/android/server/wm/AppWindowToken;->mTmpRect:Landroid/graphics/Rect;

    .line 2593
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/AppWindowToken;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/server/wm/DisplayContent;->getDisplayInfo()Landroid/view/DisplayInfo;

    move-result-object v9

    const/4 v11, 0x1

    const/4 v12, 0x1

    move-object v6, v13

    move v10, v2

    invoke-direct/range {v6 .. v12}, Lcom/android/server/wm/WindowChangeAnimationSpec;-><init>(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/view/DisplayInfo;FZZ)V

    iget-object v2, v0, Lcom/android/server/wm/AppWindowToken;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mSurfaceAnimationRunner:Lcom/android/server/wm/SurfaceAnimationRunner;

    invoke-direct {v15, v13, v2}, Lcom/android/server/wm/LocalAnimationAdapter;-><init>(Lcom/android/server/wm/LocalAnimationAdapter$AnimationSpec;Lcom/android/server/wm/SurfaceAnimationRunner;)V

    goto :goto_eb

    .line 2590
    :cond_ea
    const/4 v15, 0x0

    .line 2597
    :goto_eb
    iput v1, v0, Lcom/android/server/wm/AppWindowToken;->mTransit:I

    .line 2598
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/AppWindowToken;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v1

    iget-object v1, v1, Lcom/android/server/wm/DisplayContent;->mAppTransition:Lcom/android/server/wm/AppTransition;

    invoke-virtual {v1}, Lcom/android/server/wm/AppTransition;->getTransitFlags()I

    move-result v1

    iput v1, v0, Lcom/android/server/wm/AppWindowToken;->mTransitFlags:I

    .line 2599
    goto :goto_154

    .line 2600
    :cond_fa
    if-nez v11, :cond_fd

    move v3, v14

    :cond_fd
    iput-boolean v3, v0, Lcom/android/server/wm/AppWindowToken;->mNeedsAnimationBoundsLayer:Z

    .line 2602
    invoke-direct/range {p0 .. p4}, Lcom/android/server/wm/AppWindowToken;->loadAnimation(Landroid/view/WindowManager$LayoutParams;IZZ)Landroid/view/animation/Animation;

    move-result-object v2

    .line 2603
    if-eqz v2, :cond_152

    .line 2606
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/AppWindowToken;->inMultiWindowMode()Z

    move-result v3

    if-nez v3, :cond_115

    .line 2607
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/AppWindowToken;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/wm/DisplayContent;->getWindowCornerRadius()F

    move-result v3

    move v13, v3

    goto :goto_117

    .line 2608
    :cond_115
    const/4 v3, 0x0

    move v13, v3

    .line 2609
    :goto_117
    new-instance v3, Lcom/android/server/wm/LocalAnimationAdapter;

    new-instance v12, Lcom/android/server/wm/WindowAnimationSpec;

    iget-object v8, v0, Lcom/android/server/wm/AppWindowToken;->mTmpPoint:Landroid/graphics/Point;

    iget-object v9, v0, Lcom/android/server/wm/AppWindowToken;->mTmpRect:Landroid/graphics/Rect;

    .line 2611
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/AppWindowToken;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v6

    iget-object v6, v6, Lcom/android/server/wm/DisplayContent;->mAppTransition:Lcom/android/server/wm/AppTransition;

    invoke-virtual {v6}, Lcom/android/server/wm/AppTransition;->canSkipFirstFrame()Z

    move-result v10

    const/16 v16, 0x1

    move-object v6, v12

    move-object v7, v2

    move-object v15, v12

    move/from16 v12, v16

    invoke-direct/range {v6 .. v13}, Lcom/android/server/wm/WindowAnimationSpec;-><init>(Landroid/view/animation/Animation;Landroid/graphics/Point;Landroid/graphics/Rect;ZIZF)V

    iget-object v6, v0, Lcom/android/server/wm/AppWindowToken;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v6, v6, Lcom/android/server/wm/WindowManagerService;->mSurfaceAnimationRunner:Lcom/android/server/wm/SurfaceAnimationRunner;

    invoke-direct {v3, v15, v6}, Lcom/android/server/wm/LocalAnimationAdapter;-><init>(Lcom/android/server/wm/LocalAnimationAdapter$AnimationSpec;Lcom/android/server/wm/SurfaceAnimationRunner;)V

    .line 2616
    invoke-virtual {v2}, Landroid/view/animation/Animation;->getZAdjustment()I

    move-result v2

    if-ne v2, v14, :cond_142

    .line 2617
    iput-boolean v14, v0, Lcom/android/server/wm/AppWindowToken;->mNeedsZBoost:Z

    .line 2619
    :cond_142
    iput v1, v0, Lcom/android/server/wm/AppWindowToken;->mTransit:I

    .line 2620
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/AppWindowToken;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v1

    iget-object v1, v1, Lcom/android/server/wm/DisplayContent;->mAppTransition:Lcom/android/server/wm/AppTransition;

    invoke-virtual {v1}, Lcom/android/server/wm/AppTransition;->getTransitFlags()I

    move-result v1

    iput v1, v0, Lcom/android/server/wm/AppWindowToken;->mTransitFlags:I

    .line 2621
    const/4 v15, 0x0

    goto :goto_154

    .line 2622
    :cond_152
    const/4 v3, 0x0

    const/4 v15, 0x0

    .line 2625
    :goto_154
    if-eqz v3, :cond_180

    .line 2626
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/AppWindowToken;->getPendingTransaction()Landroid/view/SurfaceControl$Transaction;

    move-result-object v1

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/AppWindowToken;->isVisible()Z

    move-result v2

    xor-int/2addr v2, v14

    invoke-virtual {v0, v1, v3, v2}, Lcom/android/server/wm/AppWindowToken;->startAnimation(Landroid/view/SurfaceControl$Transaction;Lcom/android/server/wm/AnimationAdapter;Z)V

    .line 2627
    invoke-interface {v3}, Lcom/android/server/wm/AnimationAdapter;->getShowWallpaper()Z

    move-result v1

    if-eqz v1, :cond_170

    .line 2628
    iget-object v1, v0, Lcom/android/server/wm/AppWindowToken;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget v2, v1, Lcom/android/server/wm/DisplayContent;->pendingLayoutChanges:I

    or-int/lit8 v2, v2, 0x4

    iput v2, v1, Lcom/android/server/wm/DisplayContent;->pendingLayoutChanges:I

    .line 2630
    :cond_170
    if-eqz v15, :cond_180

    .line 2631
    iget-object v1, v0, Lcom/android/server/wm/AppWindowToken;->mThumbnail:Lcom/android/server/wm/AppWindowThumbnail;

    .line 2632
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/AppWindowToken;->getPendingTransaction()Landroid/view/SurfaceControl$Transaction;

    move-result-object v2

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/AppWindowToken;->isVisible()Z

    move-result v3

    .line 2631
    xor-int/2addr v3, v14

    invoke-virtual {v1, v2, v15, v3}, Lcom/android/server/wm/AppWindowThumbnail;->startAnimation(Landroid/view/SurfaceControl$Transaction;Lcom/android/server/wm/AnimationAdapter;Z)V

    .line 2635
    :cond_180
    goto :goto_184

    .line 2636
    :cond_181
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/AppWindowToken;->cancelAnimation()V

    .line 2638
    :goto_184
    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    .line 2640
    invoke-direct/range {p0 .. p0}, Lcom/android/server/wm/AppWindowToken;->isReallyAnimating()Z

    move-result v0

    return v0

    .line 2550
    :cond_18c
    :goto_18c
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/AppWindowToken;->cancelAnimation()V

    .line 2551
    return v3
.end method

.method asAppWindowToken()Lcom/android/server/wm/AppWindowToken;
    .registers 1

    .line 2077
    return-object p0
.end method

.method attachCrossProfileAppsThumbnailAnimation()V
    .registers 7

    .line 2961
    invoke-direct {p0}, Lcom/android/server/wm/AppWindowToken;->isReallyAnimating()Z

    move-result v0

    if-nez v0, :cond_7

    .line 2962
    return-void

    .line 2964
    :cond_7
    invoke-direct {p0}, Lcom/android/server/wm/AppWindowToken;->clearThumbnail()V

    .line 2966
    invoke-virtual {p0}, Lcom/android/server/wm/AppWindowToken;->findMainWindow()Lcom/android/server/wm/WindowState;

    move-result-object v0

    .line 2967
    if-nez v0, :cond_11

    .line 2968
    return-void

    .line 2970
    :cond_11
    invoke-virtual {v0}, Lcom/android/server/wm/WindowState;->getFrameLw()Landroid/graphics/Rect;

    move-result-object v1

    .line 2971
    invoke-virtual {p0}, Lcom/android/server/wm/AppWindowToken;->getTask()Lcom/android/server/wm/Task;

    move-result-object v2

    iget v2, v2, Lcom/android/server/wm/Task;->mUserId:I

    iget-object v3, p0, Lcom/android/server/wm/AppWindowToken;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget v3, v3, Lcom/android/server/wm/WindowManagerService;->mCurrentUserId:I

    if-ne v2, v3, :cond_25

    .line 2972
    const v2, 0x108030b

    goto :goto_28

    .line 2973
    :cond_25
    const v2, 0x108035b

    .line 2974
    :goto_28
    nop

    .line 2975
    invoke-virtual {p0}, Lcom/android/server/wm/AppWindowToken;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v3

    iget-object v3, v3, Lcom/android/server/wm/DisplayContent;->mAppTransition:Lcom/android/server/wm/AppTransition;

    .line 2976
    invoke-virtual {v3, v2, v1}, Lcom/android/server/wm/AppTransition;->createCrossProfileAppsThumbnail(ILandroid/graphics/Rect;)Landroid/graphics/GraphicBuffer;

    move-result-object v2

    .line 2977
    if-nez v2, :cond_36

    .line 2978
    return-void

    .line 2980
    :cond_36
    new-instance v3, Lcom/android/server/wm/AppWindowThumbnail;

    invoke-virtual {p0}, Lcom/android/server/wm/AppWindowToken;->getPendingTransaction()Landroid/view/SurfaceControl$Transaction;

    move-result-object v4

    invoke-direct {v3, v4, p0, v2}, Lcom/android/server/wm/AppWindowThumbnail;-><init>(Landroid/view/SurfaceControl$Transaction;Lcom/android/server/wm/AppWindowToken;Landroid/graphics/GraphicBuffer;)V

    iput-object v3, p0, Lcom/android/server/wm/AppWindowToken;->mThumbnail:Lcom/android/server/wm/AppWindowThumbnail;

    .line 2981
    nop

    .line 2982
    invoke-virtual {p0}, Lcom/android/server/wm/AppWindowToken;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v2

    iget-object v2, v2, Lcom/android/server/wm/DisplayContent;->mAppTransition:Lcom/android/server/wm/AppTransition;

    .line 2983
    invoke-virtual {v0}, Lcom/android/server/wm/WindowState;->getFrameLw()Landroid/graphics/Rect;

    move-result-object v0

    .line 2982
    invoke-virtual {v2, v0}, Lcom/android/server/wm/AppTransition;->createCrossProfileAppsThumbnailAnimationLocked(Landroid/graphics/Rect;)Landroid/view/animation/Animation;

    move-result-object v0

    .line 2984
    iget-object v2, p0, Lcom/android/server/wm/AppWindowToken;->mThumbnail:Lcom/android/server/wm/AppWindowThumbnail;

    invoke-virtual {p0}, Lcom/android/server/wm/AppWindowToken;->getPendingTransaction()Landroid/view/SurfaceControl$Transaction;

    move-result-object v3

    new-instance v4, Landroid/graphics/Point;

    iget v5, v1, Landroid/graphics/Rect;->left:I

    iget v1, v1, Landroid/graphics/Rect;->top:I

    invoke-direct {v4, v5, v1}, Landroid/graphics/Point;-><init>(II)V

    invoke-virtual {v2, v3, v0, v4}, Lcom/android/server/wm/AppWindowThumbnail;->startAnimation(Landroid/view/SurfaceControl$Transaction;Landroid/view/animation/Animation;Landroid/graphics/Point;)V

    .line 2986
    return-void
.end method

.method attachThumbnailAnimation()V
    .registers 4

    .line 2941
    invoke-direct {p0}, Lcom/android/server/wm/AppWindowToken;->isReallyAnimating()Z

    move-result v0

    if-nez v0, :cond_7

    .line 2942
    return-void

    .line 2944
    :cond_7
    invoke-virtual {p0}, Lcom/android/server/wm/AppWindowToken;->getTask()Lcom/android/server/wm/Task;

    move-result-object v0

    iget v0, v0, Lcom/android/server/wm/Task;->mTaskId:I

    .line 2945
    nop

    .line 2946
    invoke-virtual {p0}, Lcom/android/server/wm/AppWindowToken;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v1

    iget-object v1, v1, Lcom/android/server/wm/DisplayContent;->mAppTransition:Lcom/android/server/wm/AppTransition;

    invoke-virtual {v1, v0}, Lcom/android/server/wm/AppTransition;->getAppTransitionThumbnailHeader(I)Landroid/graphics/GraphicBuffer;

    move-result-object v0

    .line 2947
    if-nez v0, :cond_1b

    .line 2949
    return-void

    .line 2951
    :cond_1b
    invoke-direct {p0}, Lcom/android/server/wm/AppWindowToken;->clearThumbnail()V

    .line 2952
    new-instance v1, Lcom/android/server/wm/AppWindowThumbnail;

    invoke-virtual {p0}, Lcom/android/server/wm/AppWindowToken;->getPendingTransaction()Landroid/view/SurfaceControl$Transaction;

    move-result-object v2

    invoke-direct {v1, v2, p0, v0}, Lcom/android/server/wm/AppWindowThumbnail;-><init>(Landroid/view/SurfaceControl$Transaction;Lcom/android/server/wm/AppWindowToken;Landroid/graphics/GraphicBuffer;)V

    iput-object v1, p0, Lcom/android/server/wm/AppWindowToken;->mThumbnail:Lcom/android/server/wm/AppWindowThumbnail;

    .line 2953
    iget-object v1, p0, Lcom/android/server/wm/AppWindowToken;->mThumbnail:Lcom/android/server/wm/AppWindowThumbnail;

    invoke-virtual {p0}, Lcom/android/server/wm/AppWindowToken;->getPendingTransaction()Landroid/view/SurfaceControl$Transaction;

    move-result-object v2

    invoke-direct {p0, v0}, Lcom/android/server/wm/AppWindowToken;->loadThumbnailAnimation(Landroid/graphics/GraphicBuffer;)Landroid/view/animation/Animation;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lcom/android/server/wm/AppWindowThumbnail;->startAnimation(Landroid/view/SurfaceControl$Transaction;Landroid/view/animation/Animation;)V

    .line 2954
    return-void
.end method

.method canShowWindows()Z
    .registers 2

    .line 3247
    iget-boolean v0, p0, Lcom/android/server/wm/AppWindowToken;->allDrawn:Z

    if-eqz v0, :cond_12

    invoke-direct {p0}, Lcom/android/server/wm/AppWindowToken;->isReallyAnimating()Z

    move-result v0

    if-eqz v0, :cond_10

    invoke-direct {p0}, Lcom/android/server/wm/AppWindowToken;->hasNonDefaultColorWindow()Z

    move-result v0

    if-nez v0, :cond_12

    :cond_10
    const/4 v0, 0x1

    goto :goto_13

    :cond_12
    const/4 v0, 0x0

    :goto_13
    return v0
.end method

.method canTurnScreenOn()Z
    .registers 2

    .line 2449
    iget-boolean v0, p0, Lcom/android/server/wm/AppWindowToken;->mCanTurnScreenOn:Z

    return v0
.end method

.method cancelAnimation()V
    .registers 3

    .line 2910
    invoke-virtual {p0}, Lcom/android/server/wm/AppWindowToken;->cancelAnimationOnly()V

    .line 2911
    invoke-direct {p0}, Lcom/android/server/wm/AppWindowToken;->clearThumbnail()V

    .line 2912
    invoke-virtual {p0}, Lcom/android/server/wm/AppWindowToken;->getPendingTransaction()Landroid/view/SurfaceControl$Transaction;

    move-result-object v0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/android/server/wm/AppWindowToken;->clearChangeLeash(Landroid/view/SurfaceControl$Transaction;Z)V

    .line 2913
    return-void
.end method

.method cancelAnimationOnly()V
    .registers 1

    .line 2922
    invoke-super {p0}, Lcom/android/server/wm/WindowToken;->cancelAnimation()V

    .line 2923
    return-void
.end method

.method checkAppWindowsReadyToShow()V
    .registers 3

    .line 1856
    iget-boolean v0, p0, Lcom/android/server/wm/AppWindowToken;->allDrawn:Z

    iget-boolean v1, p0, Lcom/android/server/wm/AppWindowToken;->mLastAllDrawn:Z

    if-ne v0, v1, :cond_7

    .line 1857
    return-void

    .line 1860
    :cond_7
    iput-boolean v0, p0, Lcom/android/server/wm/AppWindowToken;->mLastAllDrawn:Z

    .line 1861
    if-nez v0, :cond_c

    .line 1862
    return-void

    .line 1866
    :cond_c
    iget-boolean v0, p0, Lcom/android/server/wm/AppWindowToken;->mFreezingScreen:Z

    if-eqz v0, :cond_1f

    .line 1867
    invoke-virtual {p0}, Lcom/android/server/wm/AppWindowToken;->showAllWindowsLocked()V

    .line 1868
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/android/server/wm/AppWindowToken;->stopFreezingScreen(ZZ)V

    .line 1873
    const/4 v0, 0x4

    const-string v1, "checkAppWindowsReadyToShow: freezingScreen"

    invoke-virtual {p0, v0, v1}, Lcom/android/server/wm/AppWindowToken;->setAppLayoutChanges(ILjava/lang/String;)V

    goto :goto_3b

    .line 1876
    :cond_1f
    const/16 v0, 0x8

    const-string v1, "checkAppWindowsReadyToShow"

    invoke-virtual {p0, v0, v1}, Lcom/android/server/wm/AppWindowToken;->setAppLayoutChanges(ILjava/lang/String;)V

    .line 1879
    invoke-virtual {p0}, Lcom/android/server/wm/AppWindowToken;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    iget-object v0, v0, Lcom/android/server/wm/DisplayContent;->mOpeningApps:Landroid/util/ArraySet;

    invoke-virtual {v0, p0}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3b

    invoke-virtual {p0}, Lcom/android/server/wm/AppWindowToken;->canShowWindows()Z

    move-result v0

    if-eqz v0, :cond_3b

    .line 1880
    invoke-virtual {p0}, Lcom/android/server/wm/AppWindowToken;->showAllWindowsLocked()V

    .line 1883
    :cond_3b
    :goto_3b
    return-void
.end method

.method checkCompleteDeferredRemoval()Z
    .registers 2

    .line 867
    iget-boolean v0, p0, Lcom/android/server/wm/AppWindowToken;->mIsExiting:Z

    if-eqz v0, :cond_7

    .line 868
    invoke-virtual {p0}, Lcom/android/server/wm/AppWindowToken;->removeIfPossible()V

    .line 870
    :cond_7
    invoke-super {p0}, Lcom/android/server/wm/WindowToken;->checkCompleteDeferredRemoval()Z

    move-result v0

    return v0
.end method

.method checkKeyguardFlagsChanged()V
    .registers 6

    .line 2391
    invoke-virtual {p0}, Lcom/android/server/wm/AppWindowToken;->containsDismissKeyguardWindow()Z

    move-result v0

    .line 2392
    invoke-virtual {p0}, Lcom/android/server/wm/AppWindowToken;->containsShowWhenLockedWindow()Z

    move-result v1

    .line 2393
    iget-boolean v2, p0, Lcom/android/server/wm/AppWindowToken;->mLastContainsDismissKeyguardWindow:Z

    if-ne v0, v2, :cond_10

    iget-boolean v2, p0, Lcom/android/server/wm/AppWindowToken;->mLastContainsShowWhenLockedWindow:Z

    if-eq v1, v2, :cond_1e

    .line 2395
    :cond_10
    iget-object v2, p0, Lcom/android/server/wm/AppWindowToken;->mWmService:Lcom/android/server/wm/WindowManagerService;

    const/4 v3, 0x0

    .line 2396
    invoke-virtual {p0}, Lcom/android/server/wm/AppWindowToken;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/server/wm/DisplayContent;->getDisplayId()I

    move-result v4

    .line 2395
    invoke-virtual {v2, v3, v4}, Lcom/android/server/wm/WindowManagerService;->notifyKeyguardFlagsChanged(Ljava/lang/Runnable;I)V

    .line 2398
    :cond_1e
    iput-boolean v0, p0, Lcom/android/server/wm/AppWindowToken;->mLastContainsDismissKeyguardWindow:Z

    .line 2399
    iput-boolean v1, p0, Lcom/android/server/wm/AppWindowToken;->mLastContainsShowWhenLockedWindow:Z

    .line 2400
    return-void
.end method

.method clearAllDrawn()V
    .registers 2

    .line 1021
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/wm/AppWindowToken;->allDrawn:Z

    .line 1022
    iput-boolean v0, p0, Lcom/android/server/wm/AppWindowToken;->deferClearAllDrawn:Z

    .line 1023
    return-void
.end method

.method clearAnimatingFlags()V
    .registers 4

    .line 954
    nop

    .line 955
    iget-object v0, p0, Lcom/android/server/wm/AppWindowToken;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    const/4 v1, 0x0

    :goto_a
    if-ltz v0, :cond_1c

    .line 956
    iget-object v2, p0, Lcom/android/server/wm/AppWindowToken;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v2, v0}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/WindowState;

    .line 957
    invoke-virtual {v2}, Lcom/android/server/wm/WindowState;->clearAnimatingFlags()Z

    move-result v2

    or-int/2addr v1, v2

    .line 955
    add-int/lit8 v0, v0, -0x1

    goto :goto_a

    .line 959
    :cond_1c
    if-eqz v1, :cond_21

    .line 960
    invoke-virtual {p0}, Lcom/android/server/wm/AppWindowToken;->requestUpdateWallpaperIfNeeded()V

    .line 962
    :cond_21
    return-void
.end method

.method clearRelaunching()V
    .registers 2

    .line 1212
    iget v0, p0, Lcom/android/server/wm/AppWindowToken;->mPendingRelaunchCount:I

    if-nez v0, :cond_5

    .line 1213
    return-void

    .line 1215
    :cond_5
    invoke-direct {p0}, Lcom/android/server/wm/AppWindowToken;->unfreezeBounds()V

    .line 1216
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/wm/AppWindowToken;->mPendingRelaunchCount:I

    .line 1217
    return-void
.end method

.method clearWillReplaceWindows()V
    .registers 3

    .line 1144
    iget-object v0, p0, Lcom/android/server/wm/AppWindowToken;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_8
    if-ltz v0, :cond_18

    .line 1145
    iget-object v1, p0, Lcom/android/server/wm/AppWindowToken;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v1, v0}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/WindowState;

    .line 1146
    invoke-virtual {v1}, Lcom/android/server/wm/WindowState;->clearWillReplaceWindow()V

    .line 1144
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    .line 1148
    :cond_18
    return-void
.end method

.method commitVisibility(Landroid/view/WindowManager$LayoutParams;ZIZZ)Z
    .registers 11

    .line 614
    nop

    .line 615
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/wm/AppWindowToken;->inPendingTransaction:Z

    .line 618
    iput-boolean v0, p0, Lcom/android/server/wm/AppWindowToken;->mHiddenSetFromTransferredStartingWindow:Z

    .line 625
    nop

    .line 626
    invoke-virtual {p0}, Lcom/android/server/wm/AppWindowToken;->isHidden()Z

    move-result v1

    const/4 v2, 0x1

    if-eq v1, p2, :cond_25

    invoke-virtual {p0}, Lcom/android/server/wm/AppWindowToken;->isHidden()Z

    move-result v1

    if-eqz v1, :cond_18

    iget-boolean v1, p0, Lcom/android/server/wm/AppWindowToken;->mIsExiting:Z

    if-nez v1, :cond_25

    :cond_18
    if-eqz p2, :cond_21

    invoke-direct {p0}, Lcom/android/server/wm/AppWindowToken;->waitingForReplacement()Z

    move-result v1

    if-eqz v1, :cond_21

    goto :goto_25

    .line 688
    :cond_21
    move p1, v0

    move p5, p1

    goto/16 :goto_c5

    .line 627
    :cond_25
    :goto_25
    iget-object v1, p0, Lcom/android/server/wm/AppWindowToken;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mAccessibilityController:Lcom/android/server/wm/AccessibilityController;

    .line 629
    nop

    .line 633
    nop

    .line 635
    const/4 v3, -0x1

    if-eq p3, v3, :cond_50

    .line 636
    iget-boolean v3, p0, Lcom/android/server/wm/AppWindowToken;->mUseTransferredAnimation:Z

    if-eqz v3, :cond_37

    .line 637
    invoke-direct {p0}, Lcom/android/server/wm/AppWindowToken;->isReallyAnimating()Z

    move-result p1

    goto :goto_40

    .line 638
    :cond_37
    invoke-virtual {p0, p1, p3, p2, p5}, Lcom/android/server/wm/AppWindowToken;->applyAnimationLocked(Landroid/view/WindowManager$LayoutParams;IZZ)Z

    move-result p1

    if-eqz p1, :cond_3f

    .line 639
    move p1, v2

    goto :goto_40

    .line 638
    :cond_3f
    move p1, v0

    .line 641
    :goto_40
    nop

    .line 642
    invoke-virtual {p0}, Lcom/android/server/wm/AppWindowToken;->findMainWindow()Lcom/android/server/wm/WindowState;

    move-result-object p5

    .line 643
    if-eqz p5, :cond_4c

    if-eqz v1, :cond_4c

    .line 644
    invoke-virtual {v1, p5, p3}, Lcom/android/server/wm/AccessibilityController;->onAppWindowTransitionLocked(Lcom/android/server/wm/WindowState;I)V

    .line 646
    :cond_4c
    move p3, p1

    move p5, p3

    move p1, v2

    goto :goto_53

    .line 635
    :cond_50
    move p1, v0

    move p3, p1

    move p5, p3

    .line 649
    :goto_53
    iget-object v1, p0, Lcom/android/server/wm/AppWindowToken;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowList;->size()I

    move-result v1

    .line 650
    move v3, p1

    move p1, v0

    :goto_5b
    if-ge p1, v1, :cond_6d

    .line 651
    iget-object v4, p0, Lcom/android/server/wm/AppWindowToken;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v4, p1}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/wm/WindowState;

    .line 652
    invoke-virtual {v4, p2, p3}, Lcom/android/server/wm/WindowState;->onAppVisibilityChanged(ZZ)Z

    move-result v4

    or-int/2addr v3, v4

    .line 650
    add-int/lit8 p1, p1, 0x1

    goto :goto_5b

    .line 655
    :cond_6d
    xor-int/lit8 p1, p2, 0x1

    invoke-virtual {p0, p1}, Lcom/android/server/wm/AppWindowToken;->setHidden(Z)V

    .line 656
    xor-int/lit8 p1, p2, 0x1

    iput-boolean p1, p0, Lcom/android/server/wm/AppWindowToken;->hiddenRequested:Z

    .line 657
    nop

    .line 658
    if-nez p2, :cond_7d

    .line 659
    invoke-virtual {p0, v2, v2}, Lcom/android/server/wm/AppWindowToken;->stopFreezingScreen(ZZ)V

    goto :goto_9d

    .line 663
    :cond_7d
    iget-object p1, p0, Lcom/android/server/wm/AppWindowToken;->startingWindow:Lcom/android/server/wm/WindowState;

    if-eqz p1, :cond_90

    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->isDrawnLw()Z

    move-result p1

    if-nez p1, :cond_90

    .line 664
    iget-object p1, p0, Lcom/android/server/wm/AppWindowToken;->startingWindow:Lcom/android/server/wm/WindowState;

    invoke-virtual {p1, v2}, Lcom/android/server/wm/WindowState;->clearPolicyVisibilityFlag(I)V

    .line 665
    iget-object p1, p0, Lcom/android/server/wm/AppWindowToken;->startingWindow:Lcom/android/server/wm/WindowState;

    iput-boolean v0, p1, Lcom/android/server/wm/WindowState;->mLegacyPolicyVisibilityAfterAnim:Z

    .line 670
    :cond_90
    iget-object p1, p0, Lcom/android/server/wm/AppWindowToken;->mWmService:Lcom/android/server/wm/WindowManagerService;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance p3, Lcom/android/server/wm/-$$Lambda$2KrtdmjrY7Nagc4IRqzCk9gDuQU;

    invoke-direct {p3, p1}, Lcom/android/server/wm/-$$Lambda$2KrtdmjrY7Nagc4IRqzCk9gDuQU;-><init>(Lcom/android/server/wm/WindowManagerService;)V

    invoke-virtual {p0, p3, v2}, Lcom/android/server/wm/AppWindowToken;->forAllWindows(Ljava/util/function/Consumer;Z)V

    .line 678
    :goto_9d
    if-eqz v3, :cond_c4

    .line 679
    invoke-virtual {p0}, Lcom/android/server/wm/AppWindowToken;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/server/wm/DisplayContent;->getInputMonitor()Lcom/android/server/wm/InputMonitor;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/server/wm/InputMonitor;->setUpdateInputWindowsNeededLw()V

    .line 680
    if-eqz p4, :cond_b9

    .line 681
    iget-object p1, p0, Lcom/android/server/wm/AppWindowToken;->mWmService:Lcom/android/server/wm/WindowManagerService;

    const/4 p3, 0x3

    invoke-virtual {p1, p3, v0}, Lcom/android/server/wm/WindowManagerService;->updateFocusedWindowLocked(IZ)Z

    .line 683
    iget-object p1, p0, Lcom/android/server/wm/AppWindowToken;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object p1, p1, Lcom/android/server/wm/WindowManagerService;->mWindowPlacerLocked:Lcom/android/server/wm/WindowSurfacePlacer;

    invoke-virtual {p1}, Lcom/android/server/wm/WindowSurfacePlacer;->performSurfacePlacement()V

    .line 685
    :cond_b9
    invoke-virtual {p0}, Lcom/android/server/wm/AppWindowToken;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/server/wm/DisplayContent;->getInputMonitor()Lcom/android/server/wm/InputMonitor;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/android/server/wm/InputMonitor;->updateInputWindowsLw(Z)V

    .line 688
    :cond_c4
    move p1, v2

    :goto_c5
    iput-boolean v0, p0, Lcom/android/server/wm/AppWindowToken;->mUseTransferredAnimation:Z

    .line 690
    invoke-direct {p0}, Lcom/android/server/wm/AppWindowToken;->isReallyAnimating()Z

    move-result p3

    if-eqz p3, :cond_cf

    .line 691
    move p5, v2

    goto :goto_d2

    .line 697
    :cond_cf
    invoke-virtual {p0}, Lcom/android/server/wm/AppWindowToken;->onAnimationFinished()V

    .line 700
    :goto_d2
    iget-object p3, p0, Lcom/android/server/wm/AppWindowToken;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {p3}, Lcom/android/server/wm/WindowList;->size()I

    move-result p3

    sub-int/2addr p3, v2

    :goto_d9
    if-ltz p3, :cond_ef

    if-nez p5, :cond_ef

    .line 701
    iget-object p4, p0, Lcom/android/server/wm/AppWindowToken;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {p4, p3}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lcom/android/server/wm/WindowState;

    invoke-virtual {p4}, Lcom/android/server/wm/WindowState;->isSelfOrChildAnimating()Z

    move-result p4

    if-eqz p4, :cond_ec

    .line 702
    move p5, v2

    .line 700
    :cond_ec
    add-int/lit8 p3, p3, -0x1

    goto :goto_d9

    .line 706
    :cond_ef
    if-eqz p1, :cond_16f

    .line 707
    if-eqz p2, :cond_100

    if-nez p5, :cond_100

    .line 710
    iput-boolean v2, p0, Lcom/android/server/wm/AppWindowToken;->mEnteringAnimation:Z

    .line 711
    iget-object p1, p0, Lcom/android/server/wm/AppWindowToken;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object p1, p1, Lcom/android/server/wm/WindowManagerService;->mActivityManagerAppTransitionNotifier:Lcom/android/server/wm/WindowManagerInternal$AppTransitionListener;

    iget-object p3, p0, Lcom/android/server/wm/AppWindowToken;->token:Landroid/os/IBinder;

    invoke-virtual {p1, p3}, Lcom/android/server/wm/WindowManagerInternal$AppTransitionListener;->onAppTransitionFinishedLocked(Landroid/os/IBinder;)V

    .line 720
    :cond_100
    if-nez p2, :cond_108

    invoke-direct {p0}, Lcom/android/server/wm/AppWindowToken;->isReallyAnimating()Z

    move-result p1

    if-nez p1, :cond_10d

    .line 721
    :cond_108
    xor-int/lit8 p1, p2, 0x1

    invoke-virtual {p0, p1}, Lcom/android/server/wm/AppWindowToken;->setClientHidden(Z)V

    .line 724
    :cond_10d
    invoke-virtual {p0}, Lcom/android/server/wm/AppWindowToken;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object p1

    iget-object p1, p1, Lcom/android/server/wm/DisplayContent;->mClosingApps:Landroid/util/ArraySet;

    invoke-virtual {p1, p0}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_137

    .line 725
    invoke-virtual {p0}, Lcom/android/server/wm/AppWindowToken;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object p1

    iget-object p1, p1, Lcom/android/server/wm/DisplayContent;->mOpeningApps:Landroid/util/ArraySet;

    invoke-virtual {p1, p0}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_137

    .line 731
    invoke-virtual {p0}, Lcom/android/server/wm/AppWindowToken;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/server/wm/DisplayContent;->getDockedDividerController()Lcom/android/server/wm/DockedStackDividerController;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/server/wm/DockedStackDividerController;->notifyAppVisibilityChanged()V

    .line 735
    iget-object p1, p0, Lcom/android/server/wm/AppWindowToken;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object p1, p1, Lcom/android/server/wm/WindowManagerService;->mTaskSnapshotController:Lcom/android/server/wm/TaskSnapshotController;

    invoke-virtual {p1, p0, p2}, Lcom/android/server/wm/TaskSnapshotController;->notifyAppVisibilityChanged(Lcom/android/server/wm/AppWindowToken;Z)V

    .line 748
    :cond_137
    invoke-virtual {p0}, Lcom/android/server/wm/AppWindowToken;->isHidden()Z

    move-result p1

    if-eqz p1, :cond_16c

    if-nez p5, :cond_16c

    invoke-virtual {p0}, Lcom/android/server/wm/AppWindowToken;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object p1

    iget-object p1, p1, Lcom/android/server/wm/DisplayContent;->mAppTransition:Lcom/android/server/wm/AppTransition;

    invoke-virtual {p1}, Lcom/android/server/wm/AppTransition;->isTransitionSet()Z

    move-result p1

    if-nez p1, :cond_16c

    .line 749
    invoke-static {}, Landroid/view/SurfaceControl;->openTransaction()V

    .line 750
    iget-object p1, p0, Lcom/android/server/wm/AppWindowToken;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {p1}, Lcom/android/server/wm/WindowList;->size()I

    move-result p1

    sub-int/2addr p1, v2

    :goto_155
    if-ltz p1, :cond_169

    .line 751
    iget-object p2, p0, Lcom/android/server/wm/AppWindowToken;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {p2, p1}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/server/wm/WindowState;

    iget-object p2, p2, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    const-string p3, "immediately hidden"

    invoke-virtual {p2, p3}, Lcom/android/server/wm/WindowStateAnimator;->hide(Ljava/lang/String;)V

    .line 750
    add-int/lit8 p1, p1, -0x1

    goto :goto_155

    .line 753
    :cond_169
    invoke-static {}, Landroid/view/SurfaceControl;->closeTransaction()V

    .line 757
    :cond_16c
    invoke-direct {p0}, Lcom/android/server/wm/AppWindowToken;->reportDescendantOrientationChangeIfNeeded()V

    .line 760
    :cond_16f
    return p5
.end method

.method containsDismissKeyguardWindow()Z
    .registers 5

    .line 2361
    invoke-virtual {p0}, Lcom/android/server/wm/AppWindowToken;->isRelaunching()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 2362
    iget-boolean v0, p0, Lcom/android/server/wm/AppWindowToken;->mLastContainsDismissKeyguardWindow:Z

    return v0

    .line 2365
    :cond_9
    iget-object v0, p0, Lcom/android/server/wm/AppWindowToken;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowList;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    :goto_11
    if-ltz v0, :cond_28

    .line 2366
    iget-object v2, p0, Lcom/android/server/wm/AppWindowToken;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v2, v0}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/WindowState;

    iget-object v2, v2, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v2, v2, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v3, 0x400000

    and-int/2addr v2, v3

    if-eqz v2, :cond_25

    .line 2367
    return v1

    .line 2365
    :cond_25
    add-int/lit8 v0, v0, -0x1

    goto :goto_11

    .line 2370
    :cond_28
    const/4 v0, 0x0

    return v0
.end method

.method containsShowWhenLockedWindow()Z
    .registers 5

    .line 2377
    invoke-virtual {p0}, Lcom/android/server/wm/AppWindowToken;->isRelaunching()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 2378
    iget-boolean v0, p0, Lcom/android/server/wm/AppWindowToken;->mLastContainsShowWhenLockedWindow:Z

    return v0

    .line 2381
    :cond_9
    iget-object v0, p0, Lcom/android/server/wm/AppWindowToken;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowList;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    :goto_11
    if-ltz v0, :cond_28

    .line 2382
    iget-object v2, p0, Lcom/android/server/wm/AppWindowToken;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v2, v0}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/WindowState;

    iget-object v2, v2, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v2, v2, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v3, 0x80000

    and-int/2addr v2, v3

    if-eqz v2, :cond_25

    .line 2383
    return v1

    .line 2381
    :cond_25
    add-int/lit8 v0, v0, -0x1

    goto :goto_11

    .line 2387
    :cond_28
    const/4 v0, 0x0

    return v0
.end method

.method destroySurfaces()V
    .registers 2

    .line 965
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/server/wm/AppWindowToken;->destroySurfaces(Z)V

    .line 966
    return-void
.end method

.method detachChildren()V
    .registers 3

    .line 1192
    invoke-static {}, Landroid/view/SurfaceControl;->openTransaction()V

    .line 1193
    iget-object v0, p0, Lcom/android/server/wm/AppWindowToken;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_b
    if-ltz v0, :cond_1d

    .line 1194
    iget-object v1, p0, Lcom/android/server/wm/AppWindowToken;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v1, v0}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/WindowState;

    .line 1195
    iget-object v1, v1, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowStateAnimator;->detachChildren()V

    .line 1193
    add-int/lit8 v0, v0, -0x1

    goto :goto_b

    .line 1197
    :cond_1d
    invoke-static {}, Landroid/view/SurfaceControl;->closeTransaction()V

    .line 1198
    return-void
.end method

.method dump(Ljava/io/PrintWriter;Ljava/lang/String;Z)V
    .registers 6

    .line 3022
    invoke-super {p0, p1, p2, p3}, Lcom/android/server/wm/WindowToken;->dump(Ljava/io/PrintWriter;Ljava/lang/String;Z)V

    .line 3023
    iget-object p3, p0, Lcom/android/server/wm/AppWindowToken;->appToken:Landroid/view/IApplicationToken;

    if-eqz p3, :cond_20

    .line 3024
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "app=true mVoiceInteraction="

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Lcom/android/server/wm/AppWindowToken;->mVoiceInteraction:Z

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3026
    :cond_20
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "component="

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/server/wm/AppWindowToken;->mActivityComponent:Landroid/content/ComponentName;

    invoke-virtual {v0}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3027
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string p3, "task="

    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/server/wm/AppWindowToken;->getTask()Lcom/android/server/wm/Task;

    move-result-object p3

    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 3028
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string p3, " mFillsParent="

    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean p3, p0, Lcom/android/server/wm/AppWindowToken;->mFillsParent:Z

    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->print(Z)V

    .line 3029
    const-string p3, " mOrientation="

    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget p3, p0, Lcom/android/server/wm/AppWindowToken;->mOrientation:I

    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->println(I)V

    .line 3030
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "hiddenRequested="

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Lcom/android/server/wm/AppWindowToken;->hiddenRequested:Z

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, " mClientHidden="

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Lcom/android/server/wm/AppWindowToken;->mClientHidden:Z

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 3031
    iget-boolean v0, p0, Lcom/android/server/wm/AppWindowToken;->mDeferHidingClient:Z

    if-eqz v0, :cond_97

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mDeferHidingClient="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/wm/AppWindowToken;->mDeferHidingClient:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_99

    :cond_97
    const-string v0, ""

    :goto_99
    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " reportedDrawn="

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Lcom/android/server/wm/AppWindowToken;->reportedDrawn:Z

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, " reportedVisible="

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Lcom/android/server/wm/AppWindowToken;->reportedVisible:Z

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    .line 3030
    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3033
    iget-boolean p3, p0, Lcom/android/server/wm/AppWindowToken;->paused:Z

    if-eqz p3, :cond_c8

    .line 3034
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string p3, "paused="

    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean p3, p0, Lcom/android/server/wm/AppWindowToken;->paused:Z

    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->println(Z)V

    .line 3036
    :cond_c8
    iget-boolean p3, p0, Lcom/android/server/wm/AppWindowToken;->mAppStopped:Z

    if-eqz p3, :cond_d9

    .line 3037
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string p3, "mAppStopped="

    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean p3, p0, Lcom/android/server/wm/AppWindowToken;->mAppStopped:Z

    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->println(Z)V

    .line 3039
    :cond_d9
    iget p3, p0, Lcom/android/server/wm/AppWindowToken;->mNumInterestingWindows:I

    if-nez p3, :cond_e9

    iget p3, p0, Lcom/android/server/wm/AppWindowToken;->mNumDrawnWindows:I

    if-nez p3, :cond_e9

    iget-boolean p3, p0, Lcom/android/server/wm/AppWindowToken;->allDrawn:Z

    if-nez p3, :cond_e9

    iget-boolean p3, p0, Lcom/android/server/wm/AppWindowToken;->mLastAllDrawn:Z

    if-eqz p3, :cond_123

    .line 3041
    :cond_e9
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string p3, "mNumInterestingWindows="

    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3042
    iget p3, p0, Lcom/android/server/wm/AppWindowToken;->mNumInterestingWindows:I

    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->print(I)V

    .line 3043
    const-string p3, " mNumDrawnWindows="

    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget p3, p0, Lcom/android/server/wm/AppWindowToken;->mNumDrawnWindows:I

    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->print(I)V

    .line 3044
    const-string p3, " inPendingTransaction="

    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean p3, p0, Lcom/android/server/wm/AppWindowToken;->inPendingTransaction:Z

    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->print(Z)V

    .line 3045
    const-string p3, " allDrawn="

    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean p3, p0, Lcom/android/server/wm/AppWindowToken;->allDrawn:Z

    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->print(Z)V

    .line 3046
    const-string p3, " lastAllDrawn="

    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean p3, p0, Lcom/android/server/wm/AppWindowToken;->mLastAllDrawn:Z

    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->print(Z)V

    .line 3047
    const-string p3, ")"

    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3049
    :cond_123
    iget-boolean p3, p0, Lcom/android/server/wm/AppWindowToken;->inPendingTransaction:Z

    if-eqz p3, :cond_134

    .line 3050
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string p3, "inPendingTransaction="

    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3051
    iget-boolean p3, p0, Lcom/android/server/wm/AppWindowToken;->inPendingTransaction:Z

    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->println(Z)V

    .line 3053
    :cond_134
    iget-object p3, p0, Lcom/android/server/wm/AppWindowToken;->mStartingData:Lcom/android/server/wm/StartingData;

    if-nez p3, :cond_144

    iget-boolean p3, p0, Lcom/android/server/wm/AppWindowToken;->removed:Z

    if-nez p3, :cond_144

    iget-boolean p3, p0, Lcom/android/server/wm/AppWindowToken;->firstWindowDrawn:Z

    if-nez p3, :cond_144

    iget-boolean p3, p0, Lcom/android/server/wm/AppWindowToken;->mIsExiting:Z

    if-eqz p3, :cond_16f

    .line 3054
    :cond_144
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string p3, "startingData="

    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object p3, p0, Lcom/android/server/wm/AppWindowToken;->mStartingData:Lcom/android/server/wm/StartingData;

    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    .line 3055
    const-string p3, " removed="

    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean p3, p0, Lcom/android/server/wm/AppWindowToken;->removed:Z

    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->print(Z)V

    .line 3056
    const-string p3, " firstWindowDrawn="

    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean p3, p0, Lcom/android/server/wm/AppWindowToken;->firstWindowDrawn:Z

    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->print(Z)V

    .line 3057
    const-string p3, " mIsExiting="

    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean p3, p0, Lcom/android/server/wm/AppWindowToken;->mIsExiting:Z

    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->println(Z)V

    .line 3059
    :cond_16f
    iget-object p3, p0, Lcom/android/server/wm/AppWindowToken;->startingWindow:Lcom/android/server/wm/WindowState;

    if-nez p3, :cond_183

    iget-object p3, p0, Lcom/android/server/wm/AppWindowToken;->startingSurface:Lcom/android/server/policy/WindowManagerPolicy$StartingSurface;

    if-nez p3, :cond_183

    iget-boolean p3, p0, Lcom/android/server/wm/AppWindowToken;->startingDisplayed:Z

    if-nez p3, :cond_183

    iget-boolean p3, p0, Lcom/android/server/wm/AppWindowToken;->startingMoved:Z

    if-nez p3, :cond_183

    iget-boolean p3, p0, Lcom/android/server/wm/AppWindowToken;->mHiddenSetFromTransferredStartingWindow:Z

    if-eqz p3, :cond_1c4

    .line 3061
    :cond_183
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string p3, "startingWindow="

    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object p3, p0, Lcom/android/server/wm/AppWindowToken;->startingWindow:Lcom/android/server/wm/WindowState;

    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    .line 3062
    const-string p3, " startingSurface="

    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object p3, p0, Lcom/android/server/wm/AppWindowToken;->startingSurface:Lcom/android/server/policy/WindowManagerPolicy$StartingSurface;

    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    .line 3063
    const-string p3, " startingDisplayed="

    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean p3, p0, Lcom/android/server/wm/AppWindowToken;->startingDisplayed:Z

    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->print(Z)V

    .line 3064
    const-string p3, " startingMoved="

    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean p3, p0, Lcom/android/server/wm/AppWindowToken;->startingMoved:Z

    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->print(Z)V

    .line 3065
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, " mHiddenSetFromTransferredStartingWindow="

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Lcom/android/server/wm/AppWindowToken;->mHiddenSetFromTransferredStartingWindow:Z

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3068
    :cond_1c4
    iget-object p3, p0, Lcom/android/server/wm/AppWindowToken;->mFrozenBounds:Ljava/util/ArrayDeque;

    invoke-virtual {p3}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result p3

    if-nez p3, :cond_1e6

    .line 3069
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string p3, "mFrozenBounds="

    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object p3, p0, Lcom/android/server/wm/AppWindowToken;->mFrozenBounds:Ljava/util/ArrayDeque;

    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 3070
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string p3, "mFrozenMergedConfig="

    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object p3, p0, Lcom/android/server/wm/AppWindowToken;->mFrozenMergedConfig:Ljava/util/ArrayDeque;

    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 3072
    :cond_1e6
    iget p3, p0, Lcom/android/server/wm/AppWindowToken;->mPendingRelaunchCount:I

    if-eqz p3, :cond_1f7

    .line 3073
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string p3, "mPendingRelaunchCount="

    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget p3, p0, Lcom/android/server/wm/AppWindowToken;->mPendingRelaunchCount:I

    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->println(I)V

    .line 3075
    :cond_1f7
    iget p3, p0, Lcom/android/server/wm/AppWindowToken;->mSizeCompatScale:F

    const/high16 v0, 0x3f800000  # 1.0f

    cmpl-float p3, p3, v0

    if-nez p3, :cond_203

    iget-object p3, p0, Lcom/android/server/wm/AppWindowToken;->mSizeCompatBounds:Landroid/graphics/Rect;

    if-eqz p3, :cond_226

    .line 3076
    :cond_203
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "mSizeCompatScale="

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/android/server/wm/AppWindowToken;->mSizeCompatScale:F

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v0, " mSizeCompatBounds="

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/server/wm/AppWindowToken;->mSizeCompatBounds:Landroid/graphics/Rect;

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3079
    :cond_226
    iget-boolean p3, p0, Lcom/android/server/wm/AppWindowToken;->mRemovingFromDisplay:Z

    if-eqz p3, :cond_243

    .line 3080
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "mRemovingFromDisplay="

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p2, p0, Lcom/android/server/wm/AppWindowToken;->mRemovingFromDisplay:Z

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3082
    :cond_243
    return-void
.end method

.method fillsParent()Z
    .registers 2

    .line 2351
    iget-boolean v0, p0, Lcom/android/server/wm/AppWindowToken;->mFillsParent:Z

    return v0
.end method

.method findMainWindow()Lcom/android/server/wm/WindowState;
    .registers 2

    .line 795
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/server/wm/AppWindowToken;->findMainWindow(Z)Lcom/android/server/wm/WindowState;

    move-result-object v0

    return-object v0
.end method

.method findMainWindow(Z)Lcom/android/server/wm/WindowState;
    .registers 8

    .line 806
    nop

    .line 807
    iget-object v0, p0, Lcom/android/server/wm/AppWindowToken;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowList;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    const/4 v2, 0x0

    :goto_a
    if-ltz v0, :cond_28

    .line 808
    iget-object v3, p0, Lcom/android/server/wm/AppWindowToken;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v3, v0}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/WindowState;

    .line 809
    iget-object v4, v3, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v4, v4, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 812
    if-eq v4, v1, :cond_1f

    if-eqz p1, :cond_24

    const/4 v5, 0x3

    if-ne v4, v5, :cond_24

    .line 817
    :cond_1f
    iget-boolean v2, v3, Lcom/android/server/wm/WindowState;->mAnimatingExit:Z

    if-eqz v2, :cond_27

    .line 818
    move-object v2, v3

    .line 807
    :cond_24
    add-int/lit8 v0, v0, -0x1

    goto :goto_a

    .line 820
    :cond_27
    return-object v3

    .line 824
    :cond_28
    return-object v2
.end method

.method finishRelaunching()V
    .registers 2

    .line 1201
    invoke-direct {p0}, Lcom/android/server/wm/AppWindowToken;->unfreezeBounds()V

    .line 1203
    iget v0, p0, Lcom/android/server/wm/AppWindowToken;->mPendingRelaunchCount:I

    if-lez v0, :cond_c

    .line 1204
    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/android/server/wm/AppWindowToken;->mPendingRelaunchCount:I

    goto :goto_f

    .line 1207
    :cond_c
    invoke-virtual {p0}, Lcom/android/server/wm/AppWindowToken;->checkKeyguardFlagsChanged()V

    .line 1209
    :goto_f
    return-void
.end method

.method forAllAppWindows(Ljava/util/function/Consumer;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "Lcom/android/server/wm/AppWindowToken;",
            ">;)V"
        }
    .end annotation

    .line 2066
    invoke-interface {p1, p0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 2067
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

    .line 2058
    iget-boolean v0, p0, Lcom/android/server/wm/AppWindowToken;->mIsExiting:Z

    if-eqz v0, :cond_c

    invoke-direct {p0}, Lcom/android/server/wm/AppWindowToken;->waitingForReplacement()Z

    move-result v0

    if-nez v0, :cond_c

    .line 2059
    const/4 p1, 0x0

    return p1

    .line 2061
    :cond_c
    invoke-virtual {p0, p1, p2}, Lcom/android/server/wm/AppWindowToken;->forAllWindowsUnchecked(Lcom/android/internal/util/ToBooleanFunction;Z)Z

    move-result p1

    return p1
.end method

.method forAllWindowsUnchecked(Lcom/android/internal/util/ToBooleanFunction;Z)Z
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/util/ToBooleanFunction<",
            "Lcom/android/server/wm/WindowState;",
            ">;Z)Z"
        }
    .end annotation

    .line 2071
    invoke-super {p0, p1, p2}, Lcom/android/server/wm/WindowToken;->forAllWindows(Lcom/android/internal/util/ToBooleanFunction;Z)Z

    move-result p1

    return p1
.end method

.method getAnimationBounds(I)Landroid/graphics/Rect;
    .registers 3
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 2533
    const/4 v0, 0x1

    if-ne p1, v0, :cond_12

    invoke-virtual {p0}, Lcom/android/server/wm/AppWindowToken;->getStack()Lcom/android/server/wm/TaskStack;

    move-result-object p1

    if-eqz p1, :cond_12

    .line 2535
    invoke-virtual {p0}, Lcom/android/server/wm/AppWindowToken;->getStack()Lcom/android/server/wm/TaskStack;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/server/wm/TaskStack;->getBounds()Landroid/graphics/Rect;

    move-result-object p1

    return-object p1

    .line 2539
    :cond_12
    invoke-virtual {p0}, Lcom/android/server/wm/AppWindowToken;->getTask()Lcom/android/server/wm/Task;

    move-result-object p1

    if-eqz p1, :cond_21

    invoke-virtual {p0}, Lcom/android/server/wm/AppWindowToken;->getTask()Lcom/android/server/wm/Task;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/server/wm/Task;->getBounds()Landroid/graphics/Rect;

    move-result-object p1

    goto :goto_25

    :cond_21
    invoke-virtual {p0}, Lcom/android/server/wm/AppWindowToken;->getBounds()Landroid/graphics/Rect;

    move-result-object p1

    :goto_25
    return-object p1
.end method

.method public getAnimationLeashParent()Landroid/view/SurfaceControl;
    .registers 2

    .line 2477
    invoke-virtual {p0}, Lcom/android/server/wm/AppWindowToken;->inPinnedWindowingMode()Z

    move-result v0

    if-nez v0, :cond_b

    .line 2478
    invoke-virtual {p0}, Lcom/android/server/wm/AppWindowToken;->getAppAnimationLayer()Landroid/view/SurfaceControl;

    move-result-object v0

    return-object v0

    .line 2480
    :cond_b
    invoke-virtual {p0}, Lcom/android/server/wm/AppWindowToken;->getStack()Lcom/android/server/wm/TaskStack;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/TaskStack;->getSurfaceControl()Landroid/view/SurfaceControl;

    move-result-object v0

    return-object v0
.end method

.method getAppAnimationLayer()Landroid/view/SurfaceControl;
    .registers 2

    .line 2466
    invoke-virtual {p0}, Lcom/android/server/wm/AppWindowToken;->isActivityTypeHome()Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 v0, 0x2

    goto :goto_11

    .line 2467
    :cond_8
    invoke-virtual {p0}, Lcom/android/server/wm/AppWindowToken;->needsZBoost()Z

    move-result v0

    if-eqz v0, :cond_10

    const/4 v0, 0x1

    goto :goto_11

    .line 2468
    :cond_10
    const/4 v0, 0x0

    .line 2466
    :goto_11
    invoke-virtual {p0, v0}, Lcom/android/server/wm/AppWindowToken;->getAppAnimationLayer(I)Landroid/view/SurfaceControl;

    move-result-object v0

    return-object v0
.end method

.method public getBounds()Landroid/graphics/Rect;
    .registers 2

    .line 1837
    iget-object v0, p0, Lcom/android/server/wm/AppWindowToken;->mSizeCompatBounds:Landroid/graphics/Rect;

    if-eqz v0, :cond_5

    .line 1838
    return-object v0

    .line 1840
    :cond_5
    invoke-super {p0}, Lcom/android/server/wm/WindowToken;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    return-object v0
.end method

.method getDisplayedBounds()Landroid/graphics/Rect;
    .registers 3

    .line 2521
    invoke-virtual {p0}, Lcom/android/server/wm/AppWindowToken;->getTask()Lcom/android/server/wm/Task;

    move-result-object v0

    .line 2522
    if-eqz v0, :cond_11

    .line 2523
    invoke-virtual {v0}, Lcom/android/server/wm/Task;->getOverrideDisplayedBounds()Landroid/graphics/Rect;

    move-result-object v0

    .line 2524
    invoke-virtual {v0}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_11

    .line 2525
    return-object v0

    .line 2528
    :cond_11
    invoke-virtual {p0}, Lcom/android/server/wm/AppWindowToken;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    return-object v0
.end method

.method getHighestAnimLayerWindow(Lcom/android/server/wm/WindowState;)Lcom/android/server/wm/WindowState;
    .registers 5

    .line 2414
    nop

    .line 2415
    iget-object v0, p0, Lcom/android/server/wm/AppWindowToken;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/WindowList;->indexOf(Ljava/lang/Object;)I

    move-result p1

    const/4 v0, 0x0

    :goto_8
    if-ltz p1, :cond_1d

    .line 2416
    iget-object v1, p0, Lcom/android/server/wm/AppWindowToken;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v1, p1}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/WindowState;

    .line 2417
    iget-boolean v2, v1, Lcom/android/server/wm/WindowState;->mRemoved:Z

    if-eqz v2, :cond_17

    .line 2418
    goto :goto_1a

    .line 2420
    :cond_17
    if-nez v0, :cond_1a

    .line 2421
    move-object v0, v1

    .line 2415
    :cond_1a
    :goto_1a
    add-int/lit8 p1, p1, -0x1

    goto :goto_8

    .line 2424
    :cond_1d
    return-object v0
.end method

.method getImeTargetBelowWindow(Lcom/android/server/wm/WindowState;)Lcom/android/server/wm/WindowState;
    .registers 3

    .line 2403
    iget-object v0, p0, Lcom/android/server/wm/AppWindowToken;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/WindowList;->indexOf(Ljava/lang/Object;)I

    move-result p1

    .line 2404
    if-lez p1, :cond_19

    .line 2405
    iget-object v0, p0, Lcom/android/server/wm/AppWindowToken;->mChildren:Lcom/android/server/wm/WindowList;

    add-int/lit8 p1, p1, -0x1

    invoke-virtual {v0, p1}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/wm/WindowState;

    .line 2406
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->canBeImeTarget()Z

    move-result v0

    if-eqz v0, :cond_19

    .line 2407
    return-object p1

    .line 2410
    :cond_19
    const/4 p1, 0x0

    return-object p1
.end method

.method getLetterboxInnerBounds(Landroid/graphics/Rect;)V
    .registers 3

    .line 3209
    iget-object v0, p0, Lcom/android/server/wm/AppWindowToken;->mLetterbox:Lcom/android/server/wm/Letterbox;

    if-eqz v0, :cond_c

    .line 3210
    invoke-virtual {v0}, Lcom/android/server/wm/Letterbox;->getInnerFrame()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    goto :goto_f

    .line 3212
    :cond_c
    invoke-virtual {p1}, Landroid/graphics/Rect;->setEmpty()V

    .line 3214
    :goto_f
    return-void
.end method

.method getLetterboxInsets()Landroid/graphics/Rect;
    .registers 2

    .line 3200
    iget-object v0, p0, Lcom/android/server/wm/AppWindowToken;->mLetterbox:Lcom/android/server/wm/Letterbox;

    if-eqz v0, :cond_9

    .line 3201
    invoke-virtual {v0}, Lcom/android/server/wm/Letterbox;->getInsets()Landroid/graphics/Rect;

    move-result-object v0

    return-object v0

    .line 3203
    :cond_9
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    return-object v0
.end method

.method getOrientation(I)I
    .registers 3

    .line 1622
    const/4 v0, 0x3

    if-ne p1, v0, :cond_6

    .line 1626
    iget p1, p0, Lcom/android/server/wm/AppWindowToken;->mOrientation:I

    return p1

    .line 1632
    :cond_6
    iget-boolean p1, p0, Lcom/android/server/wm/AppWindowToken;->sendingToBottom:Z

    if-nez p1, :cond_2b

    invoke-virtual {p0}, Lcom/android/server/wm/AppWindowToken;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object p1

    iget-object p1, p1, Lcom/android/server/wm/DisplayContent;->mClosingApps:Landroid/util/ArraySet;

    invoke-virtual {p1, p0}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2b

    .line 1633
    invoke-virtual {p0}, Lcom/android/server/wm/AppWindowToken;->isVisible()Z

    move-result p1

    if-nez p1, :cond_28

    invoke-virtual {p0}, Lcom/android/server/wm/AppWindowToken;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object p1

    iget-object p1, p1, Lcom/android/server/wm/DisplayContent;->mOpeningApps:Landroid/util/ArraySet;

    invoke-virtual {p1, p0}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2b

    .line 1634
    :cond_28
    iget p1, p0, Lcom/android/server/wm/AppWindowToken;->mOrientation:I

    return p1

    .line 1637
    :cond_2b
    const/4 p1, -0x2

    return p1
.end method

.method getOrientationIgnoreVisibility()I
    .registers 2

    .line 1642
    iget v0, p0, Lcom/android/server/wm/AppWindowToken;->mOrientation:I

    return v0
.end method

.method getRemoteAnimationDefinition()Landroid/view/RemoteAnimationDefinition;
    .registers 2

    .line 3017
    iget-object v0, p0, Lcom/android/server/wm/AppWindowToken;->mRemoteAnimationDefinition:Landroid/view/RemoteAnimationDefinition;

    return-object v0
.end method

.method getResolvedOverrideBounds()Landroid/graphics/Rect;
    .registers 2

    .line 1661
    invoke-virtual {p0}, Lcom/android/server/wm/AppWindowToken;->getResolvedOverrideConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget-object v0, v0, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v0}, Landroid/app/WindowConfiguration;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    return-object v0
.end method

.method getSizeCompatScale()F
    .registers 2

    .line 1652
    invoke-virtual {p0}, Lcom/android/server/wm/AppWindowToken;->inSizeCompatMode()Z

    move-result v0

    if-eqz v0, :cond_9

    iget v0, p0, Lcom/android/server/wm/AppWindowToken;->mSizeCompatScale:F

    goto :goto_d

    :cond_9
    invoke-super {p0}, Lcom/android/server/wm/WindowToken;->getSizeCompatScale()F

    move-result v0

    :goto_d
    return v0
.end method

.method getStack()Lcom/android/server/wm/TaskStack;
    .registers 2

    .line 1030
    invoke-virtual {p0}, Lcom/android/server/wm/AppWindowToken;->getTask()Lcom/android/server/wm/Task;

    move-result-object v0

    .line 1031
    if-eqz v0, :cond_9

    .line 1032
    iget-object v0, v0, Lcom/android/server/wm/Task;->mStack:Lcom/android/server/wm/TaskStack;

    return-object v0

    .line 1034
    :cond_9
    const/4 v0, 0x0

    return-object v0
.end method

.method getTask()Lcom/android/server/wm/Task;
    .registers 2

    .line 1026
    invoke-virtual {p0}, Lcom/android/server/wm/AppWindowToken;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/Task;

    return-object v0
.end method

.method getThumbnail()Lcom/android/server/wm/AppWindowThumbnail;
    .registers 2
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 1798
    iget-object v0, p0, Lcom/android/server/wm/AppWindowToken;->mThumbnail:Lcom/android/server/wm/AppWindowThumbnail;

    return-object v0
.end method

.method getTopFullscreenWindow()Lcom/android/server/wm/WindowState;
    .registers 4

    .line 785
    iget-object v0, p0, Lcom/android/server/wm/AppWindowToken;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_8
    if-ltz v0, :cond_20

    .line 786
    iget-object v1, p0, Lcom/android/server/wm/AppWindowToken;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v1, v0}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/WindowState;

    .line 787
    if-eqz v1, :cond_1d

    iget-object v2, v1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {v2}, Landroid/view/WindowManager$LayoutParams;->isFullscreen()Z

    move-result v2

    if-eqz v2, :cond_1d

    .line 788
    return-object v1

    .line 785
    :cond_1d
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    .line 791
    :cond_20
    const/4 v0, 0x0

    return-object v0
.end method

.method public getTransit()I
    .registers 2

    .line 2933
    iget v0, p0, Lcom/android/server/wm/AppWindowToken;->mTransit:I

    return v0
.end method

.method getTransitFlags()I
    .registers 2

    .line 2937
    iget v0, p0, Lcom/android/server/wm/AppWindowToken;->mTransitFlags:I

    return v0
.end method

.method hasStartingWindow()Z
    .registers 5

    .line 1251
    iget-boolean v0, p0, Lcom/android/server/wm/AppWindowToken;->startingDisplayed:Z

    const/4 v1, 0x1

    if-nez v0, :cond_26

    iget-object v0, p0, Lcom/android/server/wm/AppWindowToken;->mStartingData:Lcom/android/server/wm/StartingData;

    if-eqz v0, :cond_a

    goto :goto_26

    .line 1254
    :cond_a
    iget-object v0, p0, Lcom/android/server/wm/AppWindowToken;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowList;->size()I

    move-result v0

    sub-int/2addr v0, v1

    :goto_11
    if-ltz v0, :cond_24

    .line 1255
    invoke-virtual {p0, v0}, Lcom/android/server/wm/AppWindowToken;->getChildAt(I)Lcom/android/server/wm/WindowContainer;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/WindowState;

    iget-object v2, v2, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v2, v2, Landroid/view/WindowManager$LayoutParams;->type:I

    const/4 v3, 0x3

    if-ne v2, v3, :cond_21

    .line 1256
    return v1

    .line 1254
    :cond_21
    add-int/lit8 v0, v0, -0x1

    goto :goto_11

    .line 1259
    :cond_24
    const/4 v0, 0x0

    return v0

    .line 1252
    :cond_26
    :goto_26
    return v1
.end method

.method hasWindowsAlive()Z
    .registers 4

    .line 1111
    iget-object v0, p0, Lcom/android/server/wm/AppWindowToken;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowList;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    :goto_8
    if-ltz v0, :cond_1a

    .line 1114
    iget-object v2, p0, Lcom/android/server/wm/AppWindowToken;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v2, v0}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/WindowState;

    iget-boolean v2, v2, Lcom/android/server/wm/WindowState;->mAppDied:Z

    if-nez v2, :cond_17

    .line 1115
    return v1

    .line 1111
    :cond_17
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    .line 1118
    :cond_1a
    const/4 v0, 0x0

    return v0
.end method

.method inSizeCompatMode()Z
    .registers 2

    .line 1647
    iget-object v0, p0, Lcom/android/server/wm/AppWindowToken;->mSizeCompatBounds:Landroid/graphics/Rect;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method isAppAnimating()Z
    .registers 2

    .line 2865
    invoke-virtual {p0}, Lcom/android/server/wm/AppWindowToken;->isSelfAnimating()Z

    move-result v0

    return v0
.end method

.method isClientHidden()Z
    .registers 2

    .line 471
    iget-boolean v0, p0, Lcom/android/server/wm/AppWindowToken;->mClientHidden:Z

    return v0
.end method

.method isClosingOrEnteringPip()Z
    .registers 2

    .line 3238
    invoke-virtual {p0}, Lcom/android/server/wm/AppWindowToken;->isAnimating()Z

    move-result v0

    if-eqz v0, :cond_a

    iget-boolean v0, p0, Lcom/android/server/wm/AppWindowToken;->hiddenRequested:Z

    if-nez v0, :cond_e

    :cond_a
    iget-boolean v0, p0, Lcom/android/server/wm/AppWindowToken;->mWillCloseOrEnterPip:Z

    if-eqz v0, :cond_10

    :cond_e
    const/4 v0, 0x1

    goto :goto_11

    :cond_10
    const/4 v0, 0x0

    :goto_11
    return v0
.end method

.method protected isFirstChildWindowGreaterThanSecond(Lcom/android/server/wm/WindowState;Lcom/android/server/wm/WindowState;)Z
    .registers 6

    .line 1226
    iget-object p1, p1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget p1, p1, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 1227
    iget-object p2, p2, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget p2, p2, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 1230
    const/4 v0, 0x0

    const/4 v1, 0x1

    if-ne p1, v1, :cond_f

    if-eq p2, v1, :cond_f

    .line 1231
    return v0

    .line 1232
    :cond_f
    if-eq p1, v1, :cond_14

    if-ne p2, v1, :cond_14

    .line 1233
    return v1

    .line 1237
    :cond_14
    const/4 v2, 0x3

    if-ne p1, v2, :cond_1a

    if-eq p2, v2, :cond_1a

    .line 1238
    return v1

    .line 1239
    :cond_1a
    if-eq p1, v2, :cond_1f

    if-ne p2, v2, :cond_1f

    .line 1240
    return v0

    .line 1244
    :cond_1f
    return v1
.end method

.method isFreezingScreen()Z
    .registers 2

    .line 3124
    iget-boolean v0, p0, Lcom/android/server/wm/AppWindowToken;->mFreezingScreen:Z

    return v0
.end method

.method isInChangeTransition()Z
    .registers 2

    .line 1793
    iget-object v0, p0, Lcom/android/server/wm/AppWindowToken;->mTransitChangeLeash:Landroid/view/SurfaceControl;

    if-nez v0, :cond_f

    iget v0, p0, Lcom/android/server/wm/AppWindowToken;->mTransit:I

    invoke-static {v0}, Lcom/android/server/wm/AppTransition;->isChangeTransit(I)Z

    move-result v0

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

.method isLastWindow(Lcom/android/server/wm/WindowState;)Z
    .registers 5

    .line 1608
    iget-object v0, p0, Lcom/android/server/wm/AppWindowToken;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowList;->size()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_13

    iget-object v0, p0, Lcom/android/server/wm/AppWindowToken;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v0, v1}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, p1, :cond_13

    move v1, v2

    :cond_13
    return v1
.end method

.method isLetterboxOverlappingWith(Landroid/graphics/Rect;)Z
    .registers 3

    .line 3221
    iget-object v0, p0, Lcom/android/server/wm/AppWindowToken;->mLetterbox:Lcom/android/server/wm/Letterbox;

    if-eqz v0, :cond_c

    invoke-virtual {v0, p1}, Lcom/android/server/wm/Letterbox;->isOverlappingWith(Landroid/graphics/Rect;)Z

    move-result p1

    if-eqz p1, :cond_c

    const/4 p1, 0x1

    goto :goto_d

    :cond_c
    const/4 p1, 0x0

    :goto_d
    return p1
.end method

.method isRelaunching()Z
    .registers 2

    .line 1158
    iget v0, p0, Lcom/android/server/wm/AppWindowToken;->mPendingRelaunchCount:I

    if-lez v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method isSelfAnimating()Z
    .registers 2

    .line 2871
    invoke-virtual {p0}, Lcom/android/server/wm/AppWindowToken;->isWaitingForTransitionStart()Z

    move-result v0

    if-nez v0, :cond_f

    invoke-direct {p0}, Lcom/android/server/wm/AppWindowToken;->isReallyAnimating()Z

    move-result v0

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

.method isSurfaceShowing()Z
    .registers 2

    .line 3120
    iget-boolean v0, p0, Lcom/android/server/wm/AppWindowToken;->mLastSurfaceShowing:Z

    return v0
.end method

.method isVisible()Z
    .registers 2

    .line 846
    invoke-virtual {p0}, Lcom/android/server/wm/AppWindowToken;->isHidden()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method isWaitingForTransitionStart()Z
    .registers 2

    .line 2926
    invoke-virtual {p0}, Lcom/android/server/wm/AppWindowToken;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    iget-object v0, v0, Lcom/android/server/wm/DisplayContent;->mAppTransition:Lcom/android/server/wm/AppTransition;

    invoke-virtual {v0}, Lcom/android/server/wm/AppTransition;->isTransitionSet()Z

    move-result v0

    if-eqz v0, :cond_32

    .line 2927
    invoke-virtual {p0}, Lcom/android/server/wm/AppWindowToken;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    iget-object v0, v0, Lcom/android/server/wm/DisplayContent;->mOpeningApps:Landroid/util/ArraySet;

    invoke-virtual {v0, p0}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_30

    .line 2928
    invoke-virtual {p0}, Lcom/android/server/wm/AppWindowToken;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    iget-object v0, v0, Lcom/android/server/wm/DisplayContent;->mClosingApps:Landroid/util/ArraySet;

    invoke-virtual {v0, p0}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_30

    .line 2929
    invoke-virtual {p0}, Lcom/android/server/wm/AppWindowToken;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    iget-object v0, v0, Lcom/android/server/wm/DisplayContent;->mChangingApps:Landroid/util/ArraySet;

    invoke-virtual {v0, p0}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_32

    :cond_30
    const/4 v0, 0x1

    goto :goto_33

    :cond_32
    const/4 v0, 0x0

    .line 2926
    :goto_33
    return v0
.end method

.method keyDispatchingTimedOut(Ljava/lang/String;I)Z
    .registers 4

    .line 1940
    iget-object v0, p0, Lcom/android/server/wm/AppWindowToken;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    if-eqz v0, :cond_c

    invoke-virtual {v0, p1, p2}, Lcom/android/server/wm/ActivityRecord;->keyDispatchingTimedOut(Ljava/lang/String;I)Z

    move-result p1

    if-eqz p1, :cond_c

    const/4 p1, 0x1

    goto :goto_d

    :cond_c
    const/4 p1, 0x0

    :goto_d
    return p1
.end method

.method public synthetic lambda$layoutLetterbox$3$AppWindowToken()Landroid/view/SurfaceControl$Builder;
    .registers 2

    .line 2026
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/server/wm/AppWindowToken;->makeChildSurface(Lcom/android/server/wm/WindowContainer;)Landroid/view/SurfaceControl$Builder;

    move-result-object v0

    return-object v0
.end method

.method public synthetic lambda$new$0$AppWindowToken([F[F)V
    .registers 6

    .line 329
    iget-object v0, p0, Lcom/android/server/wm/AppWindowToken;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_5
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 330
    iget-object v1, p0, Lcom/android/server/wm/AppWindowToken;->mLastAppSaturationInfo:Lcom/android/server/wm/AppWindowToken$AppSaturationInfo;

    if-nez v1, :cond_14

    .line 331
    new-instance v1, Lcom/android/server/wm/AppWindowToken$AppSaturationInfo;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/android/server/wm/AppWindowToken$AppSaturationInfo;-><init>(Lcom/android/server/wm/AppWindowToken$1;)V

    iput-object v1, p0, Lcom/android/server/wm/AppWindowToken;->mLastAppSaturationInfo:Lcom/android/server/wm/AppWindowToken$AppSaturationInfo;

    .line 334
    :cond_14
    iget-object v1, p0, Lcom/android/server/wm/AppWindowToken;->mLastAppSaturationInfo:Lcom/android/server/wm/AppWindowToken$AppSaturationInfo;

    invoke-virtual {v1, p1, p2}, Lcom/android/server/wm/AppWindowToken$AppSaturationInfo;->setSaturation([F[F)V

    .line 335
    invoke-direct {p0}, Lcom/android/server/wm/AppWindowToken;->updateColorTransform()V

    .line 336
    monitor-exit v0
    :try_end_1d
    .catchall {:try_start_5 .. :try_end_1d} :catchall_21

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 337
    return-void

    .line 336
    :catchall_21
    move-exception p1

    :try_start_22
    monitor-exit v0
    :try_end_23
    .catchall {:try_start_22 .. :try_end_23} :catchall_21

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p1
.end method

.method public synthetic lambda$new$1$AppWindowToken([F[F)V
    .registers 5

    .line 328
    iget-object v0, p0, Lcom/android/server/wm/AppWindowToken;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    new-instance v1, Lcom/android/server/wm/-$$Lambda$AppWindowToken$-fbAn0RqOBB6FcyKBQMt-QpZ1Ec;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/server/wm/-$$Lambda$AppWindowToken$-fbAn0RqOBB6FcyKBQMt-QpZ1Ec;-><init>(Lcom/android/server/wm/AppWindowToken;[F[F)V

    invoke-virtual {v0, v1}, Lcom/android/server/wm/WindowManagerService$H;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method layoutLetterbox(Lcom/android/server/wm/WindowState;)V
    .registers 5

    .line 2016
    invoke-virtual {p0}, Lcom/android/server/wm/AppWindowToken;->findMainWindow()Lcom/android/server/wm/WindowState;

    move-result-object v0

    .line 2017
    if-eqz v0, :cond_83

    if-eqz p1, :cond_c

    if-eq v0, p1, :cond_c

    goto/16 :goto_83

    .line 2020
    :cond_c
    invoke-virtual {v0}, Lcom/android/server/wm/WindowState;->isDrawnLw()Z

    move-result p1

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez p1, :cond_23

    iget-object p1, v0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    iget-boolean p1, p1, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceDestroyDeferred:Z

    if-nez p1, :cond_23

    .line 2022
    invoke-virtual {v0}, Lcom/android/server/wm/WindowState;->isDragResizeChanged()Z

    move-result p1

    if-eqz p1, :cond_21

    goto :goto_23

    :cond_21
    move p1, v1

    goto :goto_24

    :cond_23
    :goto_23
    move p1, v2

    .line 2023
    :goto_24
    if-eqz p1, :cond_33

    invoke-virtual {v0}, Lcom/android/server/wm/WindowState;->isLetterboxedAppWindow()Z

    move-result p1

    if-eqz p1, :cond_33

    invoke-virtual {p0}, Lcom/android/server/wm/AppWindowToken;->fillsParent()Z

    move-result p1

    if-eqz p1, :cond_33

    move v1, v2

    .line 2024
    :cond_33
    if-eqz v1, :cond_79

    .line 2025
    iget-object p1, p0, Lcom/android/server/wm/AppWindowToken;->mLetterbox:Lcom/android/server/wm/Letterbox;

    if-nez p1, :cond_4a

    .line 2026
    new-instance p1, Lcom/android/server/wm/Letterbox;

    new-instance v1, Lcom/android/server/wm/-$$Lambda$AppWindowToken$kWpxOpxJiMwx92-ZTbqi9WL8d2s;

    invoke-direct {v1, p0}, Lcom/android/server/wm/-$$Lambda$AppWindowToken$kWpxOpxJiMwx92-ZTbqi9WL8d2s;-><init>(Lcom/android/server/wm/AppWindowToken;)V

    invoke-direct {p1, v1}, Lcom/android/server/wm/Letterbox;-><init>(Ljava/util/function/Supplier;)V

    iput-object p1, p0, Lcom/android/server/wm/AppWindowToken;->mLetterbox:Lcom/android/server/wm/Letterbox;

    .line 2027
    iget-object p1, p0, Lcom/android/server/wm/AppWindowToken;->mLetterbox:Lcom/android/server/wm/Letterbox;

    invoke-virtual {p1, v0}, Lcom/android/server/wm/Letterbox;->attachInput(Lcom/android/server/wm/WindowState;)V

    .line 2029
    :cond_4a
    iget-object p1, p0, Lcom/android/server/wm/AppWindowToken;->mTmpPoint:Landroid/graphics/Point;

    invoke-virtual {p0, p1}, Lcom/android/server/wm/AppWindowToken;->getPosition(Landroid/graphics/Point;)V

    .line 2033
    invoke-virtual {p0}, Lcom/android/server/wm/AppWindowToken;->inMultiWindowMode()Z

    move-result p1

    if-nez p1, :cond_65

    invoke-virtual {p0}, Lcom/android/server/wm/AppWindowToken;->getStack()Lcom/android/server/wm/TaskStack;

    move-result-object p1

    if-nez p1, :cond_5c

    goto :goto_65

    .line 2034
    :cond_5c
    invoke-virtual {p0}, Lcom/android/server/wm/AppWindowToken;->getStack()Lcom/android/server/wm/TaskStack;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/server/wm/TaskStack;->getDisplayedBounds()Landroid/graphics/Rect;

    move-result-object p1

    goto :goto_6d

    :cond_65
    :goto_65
    invoke-virtual {p0}, Lcom/android/server/wm/AppWindowToken;->getTask()Lcom/android/server/wm/Task;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/server/wm/Task;->getDisplayedBounds()Landroid/graphics/Rect;

    move-result-object p1

    .line 2035
    :goto_6d
    iget-object v1, p0, Lcom/android/server/wm/AppWindowToken;->mLetterbox:Lcom/android/server/wm/Letterbox;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowState;->getFrameLw()Landroid/graphics/Rect;

    move-result-object v0

    iget-object v2, p0, Lcom/android/server/wm/AppWindowToken;->mTmpPoint:Landroid/graphics/Point;

    invoke-virtual {v1, p1, v0, v2}, Lcom/android/server/wm/Letterbox;->layout(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Point;)V

    goto :goto_81

    .line 2036
    :cond_79
    iget-object p1, p0, Lcom/android/server/wm/AppWindowToken;->mLetterbox:Lcom/android/server/wm/Letterbox;

    if-eqz p1, :cond_81

    .line 2037
    invoke-virtual {p1}, Lcom/android/server/wm/Letterbox;->hide()V

    goto :goto_82

    .line 2036
    :cond_81
    :goto_81
    nop

    .line 2039
    :goto_82
    return-void

    .line 2018
    :cond_83
    :goto_83
    return-void
.end method

.method public matchParentBounds()Z
    .registers 4

    .line 1845
    invoke-super {p0}, Lcom/android/server/wm/WindowToken;->matchParentBounds()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_8

    .line 1846
    return v1

    .line 1850
    :cond_8
    invoke-virtual {p0}, Lcom/android/server/wm/AppWindowToken;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object v0

    .line 1851
    if-eqz v0, :cond_1e

    invoke-virtual {v0}, Lcom/android/server/wm/WindowContainer;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/server/wm/AppWindowToken;->getResolvedOverrideBounds()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1d

    goto :goto_1e

    :cond_1d
    const/4 v1, 0x0

    :cond_1e
    :goto_1e
    return v1
.end method

.method needsZBoost()Z
    .registers 2

    .line 3129
    iget-boolean v0, p0, Lcom/android/server/wm/AppWindowToken;->mNeedsZBoost:Z

    if-nez v0, :cond_d

    invoke-super {p0}, Lcom/android/server/wm/WindowToken;->needsZBoost()Z

    move-result v0

    if-eqz v0, :cond_b

    goto :goto_d

    :cond_b
    const/4 v0, 0x0

    goto :goto_e

    :cond_d
    :goto_d
    const/4 v0, 0x1

    :goto_e
    return v0
.end method

.method notifyAppResumed(Z)V
    .registers 3

    .line 1000
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/wm/AppWindowToken;->mAppStopped:Z

    .line 1002
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/server/wm/AppWindowToken;->setCanTurnScreenOn(Z)V

    .line 1003
    if-nez p1, :cond_c

    .line 1004
    invoke-direct {p0, v0}, Lcom/android/server/wm/AppWindowToken;->destroySurfaces(Z)V

    .line 1006
    :cond_c
    return-void
.end method

.method notifyAppStopped()V
    .registers 2

    .line 1014
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/wm/AppWindowToken;->mAppStopped:Z

    .line 1015
    invoke-virtual {p0}, Lcom/android/server/wm/AppWindowToken;->destroySurfaces()V

    .line 1017
    invoke-virtual {p0}, Lcom/android/server/wm/AppWindowToken;->removeStartingWindow()V

    .line 1018
    return-void
.end method

.method protected onAnimationFinished()V
    .registers 6

    .line 2823
    invoke-super {p0}, Lcom/android/server/wm/WindowToken;->onAnimationFinished()V

    .line 2825
    const-wide/16 v0, 0x20

    const-string v2, "AWT#onAnimationFinished"

    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 2826
    const/4 v2, -0x1

    iput v2, p0, Lcom/android/server/wm/AppWindowToken;->mTransit:I

    .line 2827
    const/4 v2, 0x0

    iput v2, p0, Lcom/android/server/wm/AppWindowToken;->mTransitFlags:I

    .line 2828
    iput-boolean v2, p0, Lcom/android/server/wm/AppWindowToken;->mNeedsZBoost:Z

    .line 2829
    iput-boolean v2, p0, Lcom/android/server/wm/AppWindowToken;->mNeedsAnimationBoundsLayer:Z

    .line 2831
    const/16 v3, 0xc

    const-string v4, "AppWindowToken"

    invoke-virtual {p0, v3, v4}, Lcom/android/server/wm/AppWindowToken;->setAppLayoutChanges(ILjava/lang/String;)V

    .line 2834
    invoke-direct {p0}, Lcom/android/server/wm/AppWindowToken;->clearThumbnail()V

    .line 2835
    invoke-virtual {p0}, Lcom/android/server/wm/AppWindowToken;->isHidden()Z

    move-result v3

    if-eqz v3, :cond_29

    iget-boolean v3, p0, Lcom/android/server/wm/AppWindowToken;->hiddenRequested:Z

    if-eqz v3, :cond_29

    const/4 v2, 0x1

    :cond_29
    invoke-virtual {p0, v2}, Lcom/android/server/wm/AppWindowToken;->setClientHidden(Z)V

    .line 2837
    invoke-virtual {p0}, Lcom/android/server/wm/AppWindowToken;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v2

    invoke-virtual {v2, p0}, Lcom/android/server/wm/DisplayContent;->computeImeTargetIfNeeded(Lcom/android/server/wm/AppWindowToken;)V

    .line 2846
    iget-object v2, p0, Lcom/android/server/wm/AppWindowToken;->mThumbnail:Lcom/android/server/wm/AppWindowThumbnail;

    if-eqz v2, :cond_3d

    .line 2847
    invoke-virtual {v2}, Lcom/android/server/wm/AppWindowThumbnail;->destroy()V

    .line 2848
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/server/wm/AppWindowToken;->mThumbnail:Lcom/android/server/wm/AppWindowThumbnail;

    .line 2853
    :cond_3d
    new-instance v2, Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/android/server/wm/AppWindowToken;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 2854
    sget-object v3, Lcom/android/server/wm/-$$Lambda$01bPtngJg5AqEoOWfW3rWfV7MH4;->INSTANCE:Lcom/android/server/wm/-$$Lambda$01bPtngJg5AqEoOWfW3rWfV7MH4;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->forEach(Ljava/util/function/Consumer;)V

    .line 2856
    invoke-virtual {p0}, Lcom/android/server/wm/AppWindowToken;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v2

    iget-object v2, v2, Lcom/android/server/wm/DisplayContent;->mAppTransition:Lcom/android/server/wm/AppTransition;

    iget-object v3, p0, Lcom/android/server/wm/AppWindowToken;->token:Landroid/os/IBinder;

    invoke-virtual {v2, v3}, Lcom/android/server/wm/AppTransition;->notifyAppTransitionFinishedLocked(Landroid/os/IBinder;)V

    .line 2857
    invoke-virtual {p0}, Lcom/android/server/wm/AppWindowToken;->scheduleAnimation()V

    .line 2859
    iget-object v2, p0, Lcom/android/server/wm/AppWindowToken;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v2}, Lcom/android/server/wm/ActivityRecord;->onAnimationFinished()V

    .line 2860
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 2861
    return-void
.end method

.method public onAnimationLeashCreated(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;)V
    .registers 7

    .line 2752
    nop

    .line 2753
    invoke-virtual {p0}, Lcom/android/server/wm/AppWindowToken;->inPinnedWindowingMode()Z

    move-result v0

    if-nez v0, :cond_c

    .line 2754
    invoke-virtual {p0}, Lcom/android/server/wm/AppWindowToken;->getPrefixOrderIndex()I

    move-result v0

    goto :goto_14

    .line 2759
    :cond_c
    invoke-virtual {p0}, Lcom/android/server/wm/AppWindowToken;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/WindowContainer;->getPrefixOrderIndex()I

    move-result v0

    .line 2762
    :goto_14
    iget-boolean v1, p0, Lcom/android/server/wm/AppWindowToken;->mNeedsZBoost:Z

    if-eqz v1, :cond_1c

    .line 2763
    const v1, 0x2fb7ba90

    add-int/2addr v0, v1

    .line 2765
    :cond_1c
    iget-boolean v1, p0, Lcom/android/server/wm/AppWindowToken;->mNeedsAnimationBoundsLayer:Z

    if-nez v1, :cond_23

    .line 2766
    invoke-virtual {p2, v0}, Landroid/view/SurfaceControl;->setLayer(I)V

    .line 2769
    :cond_23
    invoke-virtual {p0}, Lcom/android/server/wm/AppWindowToken;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v1

    .line 2770
    invoke-virtual {v1}, Lcom/android/server/wm/DisplayContent;->assignStackOrdering()V

    .line 2772
    iget-object v1, p0, Lcom/android/server/wm/AppWindowToken;->mTransitChangeLeash:Landroid/view/SurfaceControl;

    if-ne p2, v1, :cond_2f

    .line 2774
    return-void

    .line 2775
    :cond_2f
    if-eqz v1, :cond_35

    .line 2777
    const/4 v1, 0x0

    invoke-direct {p0, p1, v1}, Lcom/android/server/wm/AppWindowToken;->clearChangeLeash(Landroid/view/SurfaceControl$Transaction;Z)V

    .line 2780
    :cond_35
    iget-object v1, p0, Lcom/android/server/wm/AppWindowToken;->mAnimatingAppWindowTokenRegistry:Lcom/android/server/wm/AnimatingAppWindowTokenRegistry;

    if-eqz v1, :cond_3c

    .line 2781
    invoke-virtual {v1, p0}, Lcom/android/server/wm/AnimatingAppWindowTokenRegistry;->notifyStarting(Lcom/android/server/wm/AppWindowToken;)V

    .line 2786
    :cond_3c
    iget-boolean v1, p0, Lcom/android/server/wm/AppWindowToken;->mNeedsAnimationBoundsLayer:Z

    if-eqz v1, :cond_82

    .line 2787
    iget-object v1, p0, Lcom/android/server/wm/AppWindowToken;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->setEmpty()V

    .line 2788
    invoke-virtual {p0}, Lcom/android/server/wm/AppWindowToken;->getTask()Lcom/android/server/wm/Task;

    move-result-object v1

    .line 2789
    invoke-virtual {p0}, Lcom/android/server/wm/AppWindowToken;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v2

    iget-object v2, v2, Lcom/android/server/wm/DisplayContent;->mAppTransitionController:Lcom/android/server/wm/AppTransitionController;

    .line 2790
    invoke-virtual {p0}, Lcom/android/server/wm/AppWindowToken;->getTransit()I

    move-result v3

    .line 2789
    invoke-virtual {v2, v3, v1}, Lcom/android/server/wm/AppTransitionController;->isTransitWithinTask(ILcom/android/server/wm/Task;)Z

    move-result v2

    if-eqz v2, :cond_5f

    .line 2791
    iget-object v2, p0, Lcom/android/server/wm/AppWindowToken;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Lcom/android/server/wm/Task;->getBounds(Landroid/graphics/Rect;)V

    goto :goto_6b

    .line 2793
    :cond_5f
    invoke-virtual {p0}, Lcom/android/server/wm/AppWindowToken;->getStack()Lcom/android/server/wm/TaskStack;

    move-result-object v1

    .line 2794
    if-nez v1, :cond_66

    .line 2795
    return-void

    .line 2798
    :cond_66
    iget-object v2, p0, Lcom/android/server/wm/AppWindowToken;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Lcom/android/server/wm/TaskStack;->getBounds(Landroid/graphics/Rect;)V

    .line 2800
    :goto_6b
    invoke-direct {p0, p1}, Lcom/android/server/wm/AppWindowToken;->createAnimationBoundsLayer(Landroid/view/SurfaceControl$Transaction;)Landroid/view/SurfaceControl;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/wm/AppWindowToken;->mAnimationBoundsLayer:Landroid/view/SurfaceControl;

    .line 2803
    iget-object v1, p0, Lcom/android/server/wm/AppWindowToken;->mAnimationBoundsLayer:Landroid/view/SurfaceControl;

    iget-object v2, p0, Lcom/android/server/wm/AppWindowToken;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {p1, v1, v2}, Landroid/view/SurfaceControl$Transaction;->setWindowCrop(Landroid/view/SurfaceControl;Landroid/graphics/Rect;)Landroid/view/SurfaceControl$Transaction;

    .line 2804
    iget-object v1, p0, Lcom/android/server/wm/AppWindowToken;->mAnimationBoundsLayer:Landroid/view/SurfaceControl;

    invoke-virtual {p1, v1, v0}, Landroid/view/SurfaceControl$Transaction;->setLayer(Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;

    .line 2807
    iget-object v0, p0, Lcom/android/server/wm/AppWindowToken;->mAnimationBoundsLayer:Landroid/view/SurfaceControl;

    invoke-virtual {p1, p2, v0}, Landroid/view/SurfaceControl$Transaction;->reparent(Landroid/view/SurfaceControl;Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    .line 2809
    :cond_82
    return-void
.end method

.method public onAnimationLeashLost(Landroid/view/SurfaceControl$Transaction;)V
    .registers 3

    .line 2716
    invoke-super {p0, p1}, Lcom/android/server/wm/WindowToken;->onAnimationLeashLost(Landroid/view/SurfaceControl$Transaction;)V

    .line 2717
    iget-object v0, p0, Lcom/android/server/wm/AppWindowToken;->mAnimationBoundsLayer:Landroid/view/SurfaceControl;

    if-eqz v0, :cond_d

    .line 2718
    invoke-virtual {p1, v0}, Landroid/view/SurfaceControl$Transaction;->remove(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    .line 2719
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/server/wm/AppWindowToken;->mAnimationBoundsLayer:Landroid/view/SurfaceControl;

    .line 2722
    :cond_d
    iget-object p1, p0, Lcom/android/server/wm/AppWindowToken;->mAnimatingAppWindowTokenRegistry:Lcom/android/server/wm/AnimatingAppWindowTokenRegistry;

    if-eqz p1, :cond_14

    .line 2723
    invoke-virtual {p1, p0}, Lcom/android/server/wm/AnimatingAppWindowTokenRegistry;->notifyFinished(Lcom/android/server/wm/AppWindowToken;)V

    .line 2725
    :cond_14
    return-void
.end method

.method public onAppFreezeTimeout()V
    .registers 3

    .line 1497
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Force clearing freeze: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WindowManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1498
    const/4 v0, 0x1

    invoke-virtual {p0, v0, v0}, Lcom/android/server/wm/AppWindowToken;->stopFreezingScreen(ZZ)V

    .line 1499
    return-void
.end method

.method onAppTransitionDone()V
    .registers 2

    .line 1613
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/wm/AppWindowToken;->sendingToBottom:Z

    .line 1614
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 7

    .line 1666
    invoke-virtual {p0}, Lcom/android/server/wm/AppWindowToken;->getWindowingMode()I

    move-result v0

    .line 1667
    iget-object v1, p0, Lcom/android/server/wm/AppWindowToken;->mTmpPrevBounds:Landroid/graphics/Rect;

    invoke-virtual {p0}, Lcom/android/server/wm/AppWindowToken;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 1668
    invoke-super {p0, p1}, Lcom/android/server/wm/WindowToken;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 1670
    invoke-virtual {p0}, Lcom/android/server/wm/AppWindowToken;->getTask()Lcom/android/server/wm/Task;

    move-result-object v1

    .line 1671
    invoke-virtual {p0}, Lcom/android/server/wm/AppWindowToken;->getResolvedOverrideBounds()Landroid/graphics/Rect;

    move-result-object v2

    .line 1672
    if-eqz v1, :cond_5e

    invoke-virtual {v2}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_5e

    iget-object v3, v1, Lcom/android/server/wm/Task;->mTaskRecord:Lcom/android/server/wm/TaskRecord;

    if-eqz v3, :cond_30

    iget-object v3, v1, Lcom/android/server/wm/Task;->mTaskRecord:Lcom/android/server/wm/TaskRecord;

    .line 1677
    invoke-virtual {v3}, Lcom/android/server/wm/TaskRecord;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    iget v3, v3, Landroid/content/res/Configuration;->orientation:I

    iget v4, p1, Landroid/content/res/Configuration;->orientation:I

    if-ne v3, v4, :cond_5e

    .line 1678
    :cond_30
    invoke-virtual {v1}, Lcom/android/server/wm/Task;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    .line 1681
    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v3

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v4

    if-ne v3, v4, :cond_58

    .line 1682
    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    if-le v2, v1, :cond_49

    goto :goto_58

    .line 1685
    :cond_49
    iget-object p1, p0, Lcom/android/server/wm/AppWindowToken;->mSizeCompatBounds:Landroid/graphics/Rect;

    if-eqz p1, :cond_5e

    .line 1686
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/server/wm/AppWindowToken;->mSizeCompatBounds:Landroid/graphics/Rect;

    .line 1687
    const/high16 p1, 0x3f800000  # 1.0f

    iput p1, p0, Lcom/android/server/wm/AppWindowToken;->mSizeCompatScale:F

    .line 1688
    invoke-virtual {p0}, Lcom/android/server/wm/AppWindowToken;->updateSurfacePosition()V

    goto :goto_5e

    .line 1683
    :cond_58
    :goto_58
    invoke-direct {p0, p1}, Lcom/android/server/wm/AppWindowToken;->calculateCompatBoundsTransformation(Landroid/content/res/Configuration;)V

    .line 1684
    invoke-virtual {p0}, Lcom/android/server/wm/AppWindowToken;->updateSurfacePosition()V

    .line 1692
    :cond_5e
    :goto_5e
    invoke-virtual {p0}, Lcom/android/server/wm/AppWindowToken;->getWindowingMode()I

    move-result p1

    .line 1694
    if-ne v0, p1, :cond_65

    .line 1695
    return-void

    .line 1698
    :cond_65
    const/4 v1, 0x2

    if-eqz v0, :cond_72

    if-ne p1, v1, :cond_72

    .line 1700
    iget-object p1, p0, Lcom/android/server/wm/AppWindowToken;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object p1, p1, Lcom/android/server/wm/DisplayContent;->mPinnedStackControllerLocked:Lcom/android/server/wm/PinnedStackController;

    invoke-virtual {p1, p0}, Lcom/android/server/wm/PinnedStackController;->resetReentrySnapFraction(Lcom/android/server/wm/AppWindowToken;)V

    goto :goto_a8

    .line 1701
    :cond_72
    if-ne v0, v1, :cond_9b

    if-eqz p1, :cond_9b

    .line 1702
    invoke-virtual {p0}, Lcom/android/server/wm/AppWindowToken;->isHidden()Z

    move-result v1

    if-nez v1, :cond_9b

    .line 1705
    iget-object p1, p0, Lcom/android/server/wm/AppWindowToken;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {p1}, Lcom/android/server/wm/DisplayContent;->getPinnedStack()Lcom/android/server/wm/TaskStack;

    move-result-object p1

    .line 1706
    if-eqz p1, :cond_a7

    .line 1708
    invoke-virtual {p1}, Lcom/android/server/wm/TaskStack;->lastAnimatingBoundsWasToFullscreen()Z

    move-result v0

    if-eqz v0, :cond_8d

    .line 1711
    iget-object p1, p1, Lcom/android/server/wm/TaskStack;->mPreAnimationBounds:Landroid/graphics/Rect;

    goto :goto_93

    .line 1716
    :cond_8d
    iget-object v0, p0, Lcom/android/server/wm/AppWindowToken;->mTmpRect:Landroid/graphics/Rect;

    .line 1717
    invoke-virtual {p1, v0}, Lcom/android/server/wm/TaskStack;->getBounds(Landroid/graphics/Rect;)V

    move-object p1, v0

    .line 1719
    :goto_93
    iget-object v0, p0, Lcom/android/server/wm/AppWindowToken;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v0, v0, Lcom/android/server/wm/DisplayContent;->mPinnedStackControllerLocked:Lcom/android/server/wm/PinnedStackController;

    invoke-virtual {v0, p0, p1}, Lcom/android/server/wm/PinnedStackController;->saveReentrySnapFraction(Lcom/android/server/wm/AppWindowToken;Landroid/graphics/Rect;)V

    goto :goto_a7

    .line 1722
    :cond_9b
    invoke-direct {p0, v0, p1}, Lcom/android/server/wm/AppWindowToken;->shouldStartChangeTransition(II)Z

    move-result p1

    if-eqz p1, :cond_a7

    .line 1723
    iget-object p1, p0, Lcom/android/server/wm/AppWindowToken;->mTmpPrevBounds:Landroid/graphics/Rect;

    invoke-direct {p0, p1}, Lcom/android/server/wm/AppWindowToken;->initializeChangeTransition(Landroid/graphics/Rect;)V

    goto :goto_a8

    .line 1722
    :cond_a7
    :goto_a7
    nop

    .line 1725
    :goto_a8
    return-void
.end method

.method onDisplayChanged(Lcom/android/server/wm/DisplayContent;)V
    .registers 6

    .line 1349
    iget-object v0, p0, Lcom/android/server/wm/AppWindowToken;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 1350
    invoke-super {p0, p1}, Lcom/android/server/wm/WindowToken;->onDisplayChanged(Lcom/android/server/wm/DisplayContent;)V

    .line 1351
    if-eqz v0, :cond_6d

    iget-object v1, p0, Lcom/android/server/wm/AppWindowToken;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    if-ne v0, v1, :cond_c

    goto :goto_6d

    .line 1355
    :cond_c
    iget-object v1, v0, Lcom/android/server/wm/DisplayContent;->mOpeningApps:Landroid/util/ArraySet;

    invoke-virtual {v1, p0}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_2c

    .line 1357
    iget-object v1, p0, Lcom/android/server/wm/AppWindowToken;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v1, v1, Lcom/android/server/wm/DisplayContent;->mOpeningApps:Landroid/util/ArraySet;

    invoke-virtual {v1, p0}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 1358
    iget-object v1, p0, Lcom/android/server/wm/AppWindowToken;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v3, v0, Lcom/android/server/wm/DisplayContent;->mAppTransition:Lcom/android/server/wm/AppTransition;

    invoke-virtual {v3}, Lcom/android/server/wm/AppTransition;->getAppTransition()I

    move-result v3

    invoke-virtual {v1, v3, v2}, Lcom/android/server/wm/DisplayContent;->prepareAppTransition(IZ)V

    .line 1359
    iget-object v1, p0, Lcom/android/server/wm/AppWindowToken;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v1}, Lcom/android/server/wm/DisplayContent;->executeAppTransition()V

    .line 1362
    :cond_2c
    iget-object v1, v0, Lcom/android/server/wm/DisplayContent;->mChangingApps:Landroid/util/ArraySet;

    invoke-virtual {v1, p0}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3b

    .line 1369
    invoke-virtual {p0}, Lcom/android/server/wm/AppWindowToken;->getPendingTransaction()Landroid/view/SurfaceControl$Transaction;

    move-result-object v1

    invoke-direct {p0, v1, v2}, Lcom/android/server/wm/AppWindowToken;->clearChangeLeash(Landroid/view/SurfaceControl$Transaction;Z)V

    .line 1371
    :cond_3b
    iget-object v1, v0, Lcom/android/server/wm/DisplayContent;->mClosingApps:Landroid/util/ArraySet;

    invoke-virtual {v1, p0}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    .line 1373
    iget-object v1, v0, Lcom/android/server/wm/DisplayContent;->mFocusedApp:Lcom/android/server/wm/AppWindowToken;

    if-ne v1, p0, :cond_5f

    .line 1374
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/server/wm/DisplayContent;->setFocusedApp(Lcom/android/server/wm/AppWindowToken;)Z

    .line 1375
    invoke-virtual {p1}, Lcom/android/server/wm/DisplayContent;->getTopStack()Lcom/android/server/wm/TaskStack;

    move-result-object v0

    .line 1376
    if-eqz v0, :cond_5f

    .line 1377
    invoke-virtual {v0}, Lcom/android/server/wm/TaskStack;->getTopChild()Lcom/android/server/wm/WindowContainer;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/Task;

    .line 1378
    if-eqz v0, :cond_5f

    invoke-virtual {v0}, Lcom/android/server/wm/Task;->getTopChild()Lcom/android/server/wm/WindowContainer;

    move-result-object v0

    if-ne v0, p0, :cond_5f

    .line 1379
    invoke-virtual {p1, p0}, Lcom/android/server/wm/DisplayContent;->setFocusedApp(Lcom/android/server/wm/AppWindowToken;)Z

    .line 1384
    :cond_5f
    iget-object p1, p0, Lcom/android/server/wm/AppWindowToken;->mLetterbox:Lcom/android/server/wm/Letterbox;

    if-eqz p1, :cond_6c

    .line 1385
    iget-object v0, p0, Lcom/android/server/wm/AppWindowToken;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->getDisplayId()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/android/server/wm/Letterbox;->onMovedToDisplay(I)V

    .line 1387
    :cond_6c
    return-void

    .line 1352
    :cond_6d
    :goto_6d
    return-void
.end method

.method onFirstWindowDrawn(Lcom/android/server/wm/WindowState;Lcom/android/server/wm/WindowStateAnimator;)V
    .registers 3

    .line 380
    const/4 p2, 0x1

    iput-boolean p2, p0, Lcom/android/server/wm/AppWindowToken;->firstWindowDrawn:Z

    .line 383
    invoke-virtual {p0}, Lcom/android/server/wm/AppWindowToken;->removeDeadWindows()V

    .line 385
    iget-object p2, p0, Lcom/android/server/wm/AppWindowToken;->startingWindow:Lcom/android/server/wm/WindowState;

    if-eqz p2, :cond_d

    .line 391
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->cancelAnimation()V

    .line 393
    :cond_d
    invoke-virtual {p0}, Lcom/android/server/wm/AppWindowToken;->removeStartingWindow()V

    .line 394
    invoke-virtual {p0}, Lcom/android/server/wm/AppWindowToken;->updateReportedVisibilityLocked()V

    .line 395
    return-void
.end method

.method onParentChanged()V
    .registers 4

    .line 1040
    invoke-super {p0}, Lcom/android/server/wm/WindowToken;->onParentChanged()V

    .line 1042
    invoke-virtual {p0}, Lcom/android/server/wm/AppWindowToken;->getTask()Lcom/android/server/wm/Task;

    move-result-object v0

    .line 1047
    iget-boolean v1, p0, Lcom/android/server/wm/AppWindowToken;->mReparenting:Z

    if-nez v1, :cond_26

    .line 1048
    if-nez v0, :cond_17

    .line 1051
    invoke-virtual {p0}, Lcom/android/server/wm/AppWindowToken;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v1

    iget-object v1, v1, Lcom/android/server/wm/DisplayContent;->mClosingApps:Landroid/util/ArraySet;

    invoke-virtual {v1, p0}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    goto :goto_26

    .line 1052
    :cond_17
    iget-object v1, p0, Lcom/android/server/wm/AppWindowToken;->mLastParent:Lcom/android/server/wm/Task;

    if-eqz v1, :cond_26

    iget-object v1, v1, Lcom/android/server/wm/Task;->mStack:Lcom/android/server/wm/TaskStack;

    if-eqz v1, :cond_26

    .line 1053
    iget-object v1, v0, Lcom/android/server/wm/Task;->mStack:Lcom/android/server/wm/TaskStack;

    iget-object v1, v1, Lcom/android/server/wm/TaskStack;->mExitingAppTokens:Lcom/android/server/wm/AppTokenList;

    invoke-virtual {v1, p0}, Lcom/android/server/wm/AppTokenList;->remove(Ljava/lang/Object;)Z

    .line 1056
    :cond_26
    :goto_26
    invoke-virtual {p0}, Lcom/android/server/wm/AppWindowToken;->getStack()Lcom/android/server/wm/TaskStack;

    move-result-object v1

    .line 1059
    iget-object v2, p0, Lcom/android/server/wm/AppWindowToken;->mAnimatingAppWindowTokenRegistry:Lcom/android/server/wm/AnimatingAppWindowTokenRegistry;

    if-eqz v2, :cond_31

    .line 1060
    invoke-virtual {v2, p0}, Lcom/android/server/wm/AnimatingAppWindowTokenRegistry;->notifyFinished(Lcom/android/server/wm/AppWindowToken;)V

    .line 1062
    :cond_31
    if-eqz v1, :cond_38

    .line 1063
    invoke-virtual {v1}, Lcom/android/server/wm/TaskStack;->getAnimatingAppWindowTokenRegistry()Lcom/android/server/wm/AnimatingAppWindowTokenRegistry;

    move-result-object v1

    goto :goto_39

    .line 1064
    :cond_38
    const/4 v1, 0x0

    :goto_39
    iput-object v1, p0, Lcom/android/server/wm/AppWindowToken;->mAnimatingAppWindowTokenRegistry:Lcom/android/server/wm/AnimatingAppWindowTokenRegistry;

    .line 1066
    iput-object v0, p0, Lcom/android/server/wm/AppWindowToken;->mLastParent:Lcom/android/server/wm/Task;

    .line 1068
    invoke-direct {p0}, Lcom/android/server/wm/AppWindowToken;->updateColorTransform()V

    .line 1069
    return-void
.end method

.method onRemovedFromDisplay()V
    .registers 8

    .line 874
    iget-boolean v0, p0, Lcom/android/server/wm/AppWindowToken;->mRemovingFromDisplay:Z

    if-eqz v0, :cond_5

    .line 875
    return-void

    .line 877
    :cond_5
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/wm/AppWindowToken;->mRemovingFromDisplay:Z

    .line 881
    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, -0x1

    const/4 v5, 0x1

    iget-boolean v6, p0, Lcom/android/server/wm/AppWindowToken;->mVoiceInteraction:Z

    move-object v1, p0

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/wm/AppWindowToken;->commitVisibility(Landroid/view/WindowManager$LayoutParams;ZIZZ)Z

    move-result v1

    .line 883
    invoke-virtual {p0}, Lcom/android/server/wm/AppWindowToken;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v2

    iget-object v2, v2, Lcom/android/server/wm/DisplayContent;->mOpeningApps:Landroid/util/ArraySet;

    invoke-virtual {v2, p0}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    .line 884
    invoke-virtual {p0}, Lcom/android/server/wm/AppWindowToken;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v2

    iget-object v2, v2, Lcom/android/server/wm/DisplayContent;->mChangingApps:Landroid/util/ArraySet;

    invoke-virtual {v2, p0}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    .line 885
    invoke-virtual {p0}, Lcom/android/server/wm/AppWindowToken;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v2

    iget-object v2, v2, Lcom/android/server/wm/DisplayContent;->mUnknownAppVisibilityController:Lcom/android/server/wm/UnknownAppVisibilityController;

    invoke-virtual {v2, p0}, Lcom/android/server/wm/UnknownAppVisibilityController;->appRemovedOrHidden(Lcom/android/server/wm/AppWindowToken;)V

    .line 886
    iget-object v2, p0, Lcom/android/server/wm/AppWindowToken;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mTaskSnapshotController:Lcom/android/server/wm/TaskSnapshotController;

    invoke-virtual {v2, p0}, Lcom/android/server/wm/TaskSnapshotController;->onAppRemoved(Lcom/android/server/wm/AppWindowToken;)V

    .line 887
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/server/wm/AppWindowToken;->waitingToShow:Z

    .line 888
    invoke-virtual {p0}, Lcom/android/server/wm/AppWindowToken;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v3

    iget-object v3, v3, Lcom/android/server/wm/DisplayContent;->mClosingApps:Landroid/util/ArraySet;

    invoke-virtual {v3, p0}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_46

    .line 889
    move v1, v0

    goto :goto_5c

    .line 890
    :cond_46
    invoke-virtual {p0}, Lcom/android/server/wm/AppWindowToken;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v3

    iget-object v3, v3, Lcom/android/server/wm/DisplayContent;->mAppTransition:Lcom/android/server/wm/AppTransition;

    invoke-virtual {v3}, Lcom/android/server/wm/AppTransition;->isTransitionSet()Z

    move-result v3

    if-eqz v3, :cond_5c

    .line 891
    invoke-virtual {p0}, Lcom/android/server/wm/AppWindowToken;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v1

    iget-object v1, v1, Lcom/android/server/wm/DisplayContent;->mClosingApps:Landroid/util/ArraySet;

    invoke-virtual {v1, p0}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 892
    move v1, v0

    .line 901
    :cond_5c
    :goto_5c
    iget-object v3, p0, Lcom/android/server/wm/AppWindowToken;->mStartingData:Lcom/android/server/wm/StartingData;

    if-eqz v3, :cond_63

    .line 902
    invoke-virtual {p0}, Lcom/android/server/wm/AppWindowToken;->removeStartingWindow()V

    .line 908
    :cond_63
    invoke-virtual {p0}, Lcom/android/server/wm/AppWindowToken;->isSelfAnimating()Z

    move-result v3

    if-eqz v3, :cond_74

    .line 909
    invoke-virtual {p0}, Lcom/android/server/wm/AppWindowToken;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v3

    iget-object v3, v3, Lcom/android/server/wm/DisplayContent;->mNoAnimationNotifyOnTransitionFinished:Ljava/util/List;

    iget-object v4, p0, Lcom/android/server/wm/AppWindowToken;->token:Landroid/os/IBinder;

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 912
    :cond_74
    invoke-virtual {p0}, Lcom/android/server/wm/AppWindowToken;->getStack()Lcom/android/server/wm/TaskStack;

    move-result-object v3

    .line 913
    if-eqz v1, :cond_8a

    invoke-virtual {p0}, Lcom/android/server/wm/AppWindowToken;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_8a

    .line 917
    if-eqz v3, :cond_87

    .line 918
    iget-object v3, v3, Lcom/android/server/wm/TaskStack;->mExitingAppTokens:Lcom/android/server/wm/AppTokenList;

    invoke-virtual {v3, p0}, Lcom/android/server/wm/AppTokenList;->add(Ljava/lang/Object;)Z

    .line 920
    :cond_87
    iput-boolean v0, p0, Lcom/android/server/wm/AppWindowToken;->mIsExiting:Z

    goto :goto_97

    .line 924
    :cond_8a
    invoke-virtual {p0}, Lcom/android/server/wm/AppWindowToken;->cancelAnimation()V

    .line 925
    if-eqz v3, :cond_94

    .line 926
    iget-object v3, v3, Lcom/android/server/wm/TaskStack;->mExitingAppTokens:Lcom/android/server/wm/AppTokenList;

    invoke-virtual {v3, p0}, Lcom/android/server/wm/AppTokenList;->remove(Ljava/lang/Object;)Z

    .line 928
    :cond_94
    invoke-virtual {p0}, Lcom/android/server/wm/AppWindowToken;->removeIfPossible()V

    .line 931
    :goto_97
    iput-boolean v0, p0, Lcom/android/server/wm/AppWindowToken;->removed:Z

    .line 932
    invoke-virtual {p0, v0, v0}, Lcom/android/server/wm/AppWindowToken;->stopFreezingScreen(ZZ)V

    .line 934
    invoke-virtual {p0}, Lcom/android/server/wm/AppWindowToken;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v3

    .line 935
    iget-object v4, v3, Lcom/android/server/wm/DisplayContent;->mFocusedApp:Lcom/android/server/wm/AppWindowToken;

    const/4 v5, 0x0

    if-ne v4, p0, :cond_ad

    .line 938
    invoke-virtual {v3, v5}, Lcom/android/server/wm/DisplayContent;->setFocusedApp(Lcom/android/server/wm/AppWindowToken;)Z

    .line 939
    iget-object v3, p0, Lcom/android/server/wm/AppWindowToken;->mWmService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v3, v2, v0}, Lcom/android/server/wm/WindowManagerService;->updateFocusedWindowLocked(IZ)Z

    .line 941
    :cond_ad
    iget-object v0, p0, Lcom/android/server/wm/AppWindowToken;->mLetterbox:Lcom/android/server/wm/Letterbox;

    if-eqz v0, :cond_b6

    .line 942
    invoke-virtual {v0}, Lcom/android/server/wm/Letterbox;->destroy()V

    .line 943
    iput-object v5, p0, Lcom/android/server/wm/AppWindowToken;->mLetterbox:Lcom/android/server/wm/Letterbox;

    .line 946
    :cond_b6
    if-nez v1, :cond_bb

    .line 947
    invoke-virtual {p0}, Lcom/android/server/wm/AppWindowToken;->updateReportedVisibilityLocked()V

    .line 950
    :cond_bb
    iput-boolean v2, p0, Lcom/android/server/wm/AppWindowToken;->mRemovingFromDisplay:Z

    .line 951
    return-void
.end method

.method onWindowReplacementTimeout()V
    .registers 3

    .line 1301
    iget-object v0, p0, Lcom/android/server/wm/AppWindowToken;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_8
    if-ltz v0, :cond_18

    .line 1302
    iget-object v1, p0, Lcom/android/server/wm/AppWindowToken;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v1, v0}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/WindowState;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowState;->onWindowReplacementTimeout()V

    .line 1301
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    .line 1304
    :cond_18
    return-void
.end method

.method postWindowRemoveStartingWindowCleanup(Lcom/android/server/wm/WindowState;)V
    .registers 3

    .line 1073
    iget-object v0, p0, Lcom/android/server/wm/AppWindowToken;->startingWindow:Lcom/android/server/wm/WindowState;

    if-ne v0, p1, :cond_8

    .line 1075
    invoke-virtual {p0}, Lcom/android/server/wm/AppWindowToken;->removeStartingWindow()V

    goto :goto_31

    .line 1076
    :cond_8
    iget-object p1, p0, Lcom/android/server/wm/AppWindowToken;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {p1}, Lcom/android/server/wm/WindowList;->size()I

    move-result p1

    const/4 v0, 0x1

    if-nez p1, :cond_1c

    .line 1080
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/server/wm/AppWindowToken;->mStartingData:Lcom/android/server/wm/StartingData;

    .line 1081
    iget-boolean p1, p0, Lcom/android/server/wm/AppWindowToken;->mHiddenSetFromTransferredStartingWindow:Z

    if-eqz p1, :cond_31

    .line 1085
    invoke-virtual {p0, v0}, Lcom/android/server/wm/AppWindowToken;->setHidden(Z)V

    goto :goto_31

    .line 1087
    :cond_1c
    iget-object p1, p0, Lcom/android/server/wm/AppWindowToken;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {p1}, Lcom/android/server/wm/WindowList;->size()I

    move-result p1

    if-ne p1, v0, :cond_31

    iget-object p1, p0, Lcom/android/server/wm/AppWindowToken;->startingSurface:Lcom/android/server/policy/WindowManagerPolicy$StartingSurface;

    if-eqz p1, :cond_31

    invoke-virtual {p0}, Lcom/android/server/wm/AppWindowToken;->isRelaunching()Z

    move-result p1

    if-nez p1, :cond_31

    .line 1092
    invoke-virtual {p0}, Lcom/android/server/wm/AppWindowToken;->removeStartingWindow()V

    .line 1094
    :cond_31
    :goto_31
    return-void
.end method

.method prepareSurfaces()V
    .registers 4

    .line 3099
    invoke-super {p0}, Lcom/android/server/wm/WindowToken;->isSelfAnimating()Z

    move-result v0

    .line 3100
    invoke-virtual {p0}, Lcom/android/server/wm/AppWindowToken;->isHidden()Z

    move-result v1

    if-eqz v1, :cond_f

    if-eqz v0, :cond_d

    goto :goto_f

    :cond_d
    const/4 v0, 0x0

    goto :goto_10

    :cond_f
    :goto_f
    const/4 v0, 0x1

    .line 3102
    :goto_10
    iget-object v1, p0, Lcom/android/server/wm/AppWindowToken;->mSurfaceControl:Landroid/view/SurfaceControl;

    if-eqz v1, :cond_33

    .line 3103
    if-eqz v0, :cond_24

    iget-boolean v1, p0, Lcom/android/server/wm/AppWindowToken;->mLastSurfaceShowing:Z

    if-nez v1, :cond_24

    .line 3104
    invoke-virtual {p0}, Lcom/android/server/wm/AppWindowToken;->getPendingTransaction()Landroid/view/SurfaceControl$Transaction;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/wm/AppWindowToken;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {v1, v2}, Landroid/view/SurfaceControl$Transaction;->show(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    goto :goto_33

    .line 3105
    :cond_24
    if-nez v0, :cond_33

    iget-boolean v1, p0, Lcom/android/server/wm/AppWindowToken;->mLastSurfaceShowing:Z

    if-eqz v1, :cond_33

    .line 3106
    invoke-virtual {p0}, Lcom/android/server/wm/AppWindowToken;->getPendingTransaction()Landroid/view/SurfaceControl$Transaction;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/wm/AppWindowToken;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {v1, v2}, Landroid/view/SurfaceControl$Transaction;->hide(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    .line 3109
    :cond_33
    :goto_33
    iget-object v1, p0, Lcom/android/server/wm/AppWindowToken;->mThumbnail:Lcom/android/server/wm/AppWindowThumbnail;

    if-eqz v1, :cond_3e

    .line 3110
    invoke-virtual {p0}, Lcom/android/server/wm/AppWindowToken;->getPendingTransaction()Landroid/view/SurfaceControl$Transaction;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lcom/android/server/wm/AppWindowThumbnail;->setShowing(Landroid/view/SurfaceControl$Transaction;Z)V

    .line 3112
    :cond_3e
    iput-boolean v0, p0, Lcom/android/server/wm/AppWindowToken;->mLastSurfaceShowing:Z

    .line 3113
    invoke-super {p0}, Lcom/android/server/wm/WindowToken;->prepareSurfaces()V

    .line 3114
    return-void
.end method

.method registerRemoteAnimations(Landroid/view/RemoteAnimationDefinition;)V
    .registers 2

    .line 3013
    iput-object p1, p0, Lcom/android/server/wm/AppWindowToken;->mRemoteAnimationDefinition:Landroid/view/RemoteAnimationDefinition;

    .line 3014
    return-void
.end method

.method bridge synthetic removeChild(Lcom/android/server/wm/WindowContainer;)V
    .registers 2

    .line 141
    check-cast p1, Lcom/android/server/wm/WindowState;

    invoke-virtual {p0, p1}, Lcom/android/server/wm/AppWindowToken;->removeChild(Lcom/android/server/wm/WindowState;)V

    return-void
.end method

.method removeChild(Lcom/android/server/wm/WindowState;)V
    .registers 3

    .line 1281
    iget-object v0, p0, Lcom/android/server/wm/AppWindowToken;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/WindowList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9

    .line 1283
    return-void

    .line 1285
    :cond_9
    invoke-super {p0, p1}, Lcom/android/server/wm/WindowToken;->removeChild(Lcom/android/server/wm/WindowContainer;)V

    .line 1286
    invoke-virtual {p0}, Lcom/android/server/wm/AppWindowToken;->checkKeyguardFlagsChanged()V

    .line 1287
    invoke-virtual {p0, p1}, Lcom/android/server/wm/AppWindowToken;->updateLetterboxSurface(Lcom/android/server/wm/WindowState;)V

    .line 1288
    return-void
.end method

.method removeDeadWindows()V
    .registers 5

    .line 1097
    iget-object v0, p0, Lcom/android/server/wm/AppWindowToken;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowList;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    :goto_8
    if-ltz v0, :cond_1e

    .line 1098
    iget-object v2, p0, Lcom/android/server/wm/AppWindowToken;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v2, v0}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/WindowState;

    .line 1099
    iget-boolean v3, v2, Lcom/android/server/wm/WindowState;->mAppDied:Z

    if-eqz v3, :cond_1b

    .line 1103
    iput-boolean v1, v2, Lcom/android/server/wm/WindowState;->mDestroying:Z

    .line 1105
    invoke-virtual {v2}, Lcom/android/server/wm/WindowState;->removeIfPossible()V

    .line 1097
    :cond_1b
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    .line 1108
    :cond_1e
    return-void
.end method

.method removeIfPossible()V
    .registers 2

    .line 860
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/wm/AppWindowToken;->mIsExiting:Z

    .line 861
    invoke-virtual {p0}, Lcom/android/server/wm/AppWindowToken;->removeAllWindowsIfPossible()V

    .line 862
    invoke-virtual {p0}, Lcom/android/server/wm/AppWindowToken;->removeImmediately()V

    .line 863
    return-void
.end method

.method removeImmediately()V
    .registers 2

    .line 851
    invoke-virtual {p0}, Lcom/android/server/wm/AppWindowToken;->onRemovedFromDisplay()V

    .line 852
    iget-object v0, p0, Lcom/android/server/wm/AppWindowToken;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    if-eqz v0, :cond_a

    .line 853
    invoke-virtual {v0, p0}, Lcom/android/server/wm/ActivityRecord;->unregisterConfigurationChangeListener(Lcom/android/server/wm/ConfigurationContainerListener;)V

    .line 855
    :cond_a
    invoke-super {p0}, Lcom/android/server/wm/WindowToken;->removeImmediately()V

    .line 856
    return-void
.end method

.method removeReplacedWindowIfNeeded(Lcom/android/server/wm/WindowState;)V
    .registers 4

    .line 1438
    iget-object v0, p0, Lcom/android/server/wm/AppWindowToken;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_8
    if-ltz v0, :cond_1c

    .line 1439
    iget-object v1, p0, Lcom/android/server/wm/AppWindowToken;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v1, v0}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/WindowState;

    .line 1440
    invoke-virtual {v1, p1}, Lcom/android/server/wm/WindowState;->removeReplacedWindowIfNeeded(Lcom/android/server/wm/WindowState;)Z

    move-result v1

    if-eqz v1, :cond_19

    .line 1441
    return-void

    .line 1438
    :cond_19
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    .line 1444
    :cond_1c
    return-void
.end method

.method removeStartingWindow()V
    .registers 4

    .line 2296
    iget-object v0, p0, Lcom/android/server/wm/AppWindowToken;->startingWindow:Lcom/android/server/wm/WindowState;

    const/4 v1, 0x0

    if-nez v0, :cond_c

    .line 2297
    iget-object v0, p0, Lcom/android/server/wm/AppWindowToken;->mStartingData:Lcom/android/server/wm/StartingData;

    if-eqz v0, :cond_b

    .line 2303
    iput-object v1, p0, Lcom/android/server/wm/AppWindowToken;->mStartingData:Lcom/android/server/wm/StartingData;

    .line 2305
    :cond_b
    return-void

    .line 2309
    :cond_c
    iget-object v0, p0, Lcom/android/server/wm/AppWindowToken;->mStartingData:Lcom/android/server/wm/StartingData;

    if-eqz v0, :cond_2b

    .line 2310
    iget-object v0, p0, Lcom/android/server/wm/AppWindowToken;->startingSurface:Lcom/android/server/policy/WindowManagerPolicy$StartingSurface;

    .line 2311
    iput-object v1, p0, Lcom/android/server/wm/AppWindowToken;->mStartingData:Lcom/android/server/wm/StartingData;

    .line 2312
    iput-object v1, p0, Lcom/android/server/wm/AppWindowToken;->startingSurface:Lcom/android/server/policy/WindowManagerPolicy$StartingSurface;

    .line 2313
    iput-object v1, p0, Lcom/android/server/wm/AppWindowToken;->startingWindow:Lcom/android/server/wm/WindowState;

    .line 2314
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/wm/AppWindowToken;->startingDisplayed:Z

    .line 2315
    if-nez v0, :cond_1e

    .line 2320
    return-void

    .line 2339
    :cond_1e
    iget-object v1, p0, Lcom/android/server/wm/AppWindowToken;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mAnimationHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/server/wm/-$$Lambda$AppWindowToken$4wx593XO55AcDD3O9-1QAS0fIHY;

    invoke-direct {v2, v0}, Lcom/android/server/wm/-$$Lambda$AppWindowToken$4wx593XO55AcDD3O9-1QAS0fIHY;-><init>(Lcom/android/server/policy/WindowManagerPolicy$StartingSurface;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 2347
    return-void

    .line 2327
    :cond_2b
    return-void
.end method

.method reparent(Lcom/android/server/wm/Task;I)V
    .registers 7

    .line 1311
    if-eqz p1, :cond_7d

    .line 1314
    invoke-virtual {p0}, Lcom/android/server/wm/AppWindowToken;->getTask()Lcom/android/server/wm/Task;

    move-result-object v0

    .line 1315
    const-string v1, "window token="

    if-eq p1, v0, :cond_60

    .line 1320
    iget-object v2, v0, Lcom/android/server/wm/Task;->mStack:Lcom/android/server/wm/TaskStack;

    iget-object v3, p1, Lcom/android/server/wm/Task;->mStack:Lcom/android/server/wm/TaskStack;

    if-ne v2, v3, :cond_3b

    .line 1328
    invoke-virtual {p0}, Lcom/android/server/wm/AppWindowToken;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    .line 1330
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/wm/AppWindowToken;->mReparenting:Z

    .line 1332
    invoke-virtual {p0}, Lcom/android/server/wm/AppWindowToken;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/android/server/wm/WindowContainer;->removeChild(Lcom/android/server/wm/WindowContainer;)V

    .line 1333
    invoke-virtual {p1, p0, p2}, Lcom/android/server/wm/Task;->addChild(Lcom/android/server/wm/AppWindowToken;I)V

    .line 1335
    const/4 p2, 0x0

    iput-boolean p2, p0, Lcom/android/server/wm/AppWindowToken;->mReparenting:Z

    .line 1338
    invoke-virtual {p1}, Lcom/android/server/wm/Task;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object p1

    .line 1339
    invoke-virtual {p1}, Lcom/android/server/wm/DisplayContent;->setLayoutNeeded()V

    .line 1340
    if-eq v0, p1, :cond_33

    .line 1341
    invoke-virtual {p0, p1}, Lcom/android/server/wm/AppWindowToken;->onDisplayChanged(Lcom/android/server/wm/DisplayContent;)V

    .line 1342
    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->setLayoutNeeded()V

    .line 1344
    :cond_33
    invoke-virtual {p0}, Lcom/android/server/wm/AppWindowToken;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/server/wm/DisplayContent;->layoutAndAssignWindowLayersIfNeeded()V

    .line 1345
    return-void

    .line 1321
    :cond_3b
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " current task="

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " belongs to a different stack than "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 1316
    :cond_60
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " already child of task="

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1312
    :cond_7d
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "reparent: could not find task"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method protected reparentSurfaceControl(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;)V
    .registers 4

    .line 2743
    iget-object v0, p0, Lcom/android/server/wm/AppWindowToken;->mSurfaceAnimator:Lcom/android/server/wm/SurfaceAnimator;

    invoke-virtual {v0}, Lcom/android/server/wm/SurfaceAnimator;->hasLeash()Z

    move-result v0

    if-nez v0, :cond_d

    .line 2744
    iget-object v0, p0, Lcom/android/server/wm/AppWindowToken;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {p1, v0, p2}, Landroid/view/SurfaceControl$Transaction;->reparent(Landroid/view/SurfaceControl;Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    .line 2746
    :cond_d
    return-void
.end method

.method requestUpdateWallpaperIfNeeded()V
    .registers 3

    .line 1151
    iget-object v0, p0, Lcom/android/server/wm/AppWindowToken;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_8
    if-ltz v0, :cond_18

    .line 1152
    iget-object v1, p0, Lcom/android/server/wm/AppWindowToken;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v1, v0}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/WindowState;

    .line 1153
    invoke-virtual {v1}, Lcom/android/server/wm/WindowState;->requestUpdateWallpaperIfNeeded()V

    .line 1151
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    .line 1155
    :cond_18
    return-void
.end method

.method scheduleAddStartingWindow()V
    .registers 3

    .line 2194
    iget-object v0, p0, Lcom/android/server/wm/AppWindowToken;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mAnimationHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/wm/AppWindowToken;->mAddStartingWindow:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasCallbacks(Ljava/lang/Runnable;)Z

    move-result v0

    if-nez v0, :cond_15

    .line 2196
    iget-object v0, p0, Lcom/android/server/wm/AppWindowToken;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mAnimationHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/wm/AppWindowToken;->mAddStartingWindow:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->postAtFrontOfQueue(Ljava/lang/Runnable;)Z

    .line 2198
    :cond_15
    return-void
.end method

.method setAppLayoutChanges(ILjava/lang/String;)V
    .registers 4

    .line 1428
    iget-object p2, p0, Lcom/android/server/wm/AppWindowToken;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {p2}, Lcom/android/server/wm/WindowList;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_11

    .line 1429
    invoke-virtual {p0}, Lcom/android/server/wm/AppWindowToken;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object p2

    .line 1430
    iget v0, p2, Lcom/android/server/wm/DisplayContent;->pendingLayoutChanges:I

    or-int/2addr p1, v0

    iput p1, p2, Lcom/android/server/wm/DisplayContent;->pendingLayoutChanges:I

    .line 1435
    :cond_11
    return-void
.end method

.method setCanTurnScreenOn(Z)V
    .registers 2

    .line 2438
    iput-boolean p1, p0, Lcom/android/server/wm/AppWindowToken;->mCanTurnScreenOn:Z

    .line 2439
    return-void
.end method

.method setClientHidden(Z)V
    .registers 3

    .line 475
    iget-boolean v0, p0, Lcom/android/server/wm/AppWindowToken;->mClientHidden:Z

    if-eq v0, p1, :cond_11

    if-eqz p1, :cond_b

    iget-boolean v0, p0, Lcom/android/server/wm/AppWindowToken;->mDeferHidingClient:Z

    if-eqz v0, :cond_b

    goto :goto_11

    .line 480
    :cond_b
    iput-boolean p1, p0, Lcom/android/server/wm/AppWindowToken;->mClientHidden:Z

    .line 481
    invoke-virtual {p0}, Lcom/android/server/wm/AppWindowToken;->sendAppVisibilityToClients()V

    .line 482
    return-void

    .line 476
    :cond_11
    :goto_11
    return-void
.end method

.method setDisablePreviewScreenshots(Z)V
    .registers 2

    .line 2431
    iput-boolean p1, p0, Lcom/android/server/wm/AppWindowToken;->mDisablePreviewScreenshots:Z

    .line 2432
    return-void
.end method

.method setFillsParent(Z)V
    .registers 2

    .line 2355
    iput-boolean p1, p0, Lcom/android/server/wm/AppWindowToken;->mFillsParent:Z

    .line 2356
    return-void
.end method

.method setHidden(Z)V
    .registers 2

    .line 3086
    invoke-super {p0, p1}, Lcom/android/server/wm/WindowToken;->setHidden(Z)V

    .line 3088
    if-eqz p1, :cond_c

    .line 3090
    iget-object p1, p0, Lcom/android/server/wm/AppWindowToken;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object p1, p1, Lcom/android/server/wm/DisplayContent;->mPinnedStackControllerLocked:Lcom/android/server/wm/PinnedStackController;

    invoke-virtual {p1, p0}, Lcom/android/server/wm/PinnedStackController;->resetReentrySnapFraction(Lcom/android/server/wm/AppWindowToken;)V

    .line 3092
    :cond_c
    invoke-virtual {p0}, Lcom/android/server/wm/AppWindowToken;->scheduleAnimation()V

    .line 3093
    return-void
.end method

.method protected setLayer(Landroid/view/SurfaceControl$Transaction;I)V
    .registers 4

    .line 2729
    iget-object v0, p0, Lcom/android/server/wm/AppWindowToken;->mSurfaceAnimator:Lcom/android/server/wm/SurfaceAnimator;

    invoke-virtual {v0}, Lcom/android/server/wm/SurfaceAnimator;->hasLeash()Z

    move-result v0

    if-nez v0, :cond_d

    .line 2730
    iget-object v0, p0, Lcom/android/server/wm/AppWindowToken;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {p1, v0, p2}, Landroid/view/SurfaceControl$Transaction;->setLayer(Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;

    .line 2732
    :cond_d
    return-void
.end method

.method protected setRelativeLayer(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;I)V
    .registers 5

    .line 2736
    iget-object v0, p0, Lcom/android/server/wm/AppWindowToken;->mSurfaceAnimator:Lcom/android/server/wm/SurfaceAnimator;

    invoke-virtual {v0}, Lcom/android/server/wm/SurfaceAnimator;->hasLeash()Z

    move-result v0

    if-nez v0, :cond_d

    .line 2737
    iget-object v0, p0, Lcom/android/server/wm/AppWindowToken;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {p1, v0, p2, p3}, Landroid/view/SurfaceControl$Transaction;->setRelativeLayer(Landroid/view/SurfaceControl;Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;

    .line 2739
    :cond_d
    return-void
.end method

.method setVisibility(ZZ)V
    .registers 9

    .line 485
    invoke-virtual {p0}, Lcom/android/server/wm/AppWindowToken;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    iget-object v0, v0, Lcom/android/server/wm/DisplayContent;->mAppTransition:Lcom/android/server/wm/AppTransition;

    .line 494
    const/4 v1, 0x1

    if-nez p1, :cond_19

    iget-boolean v2, p0, Lcom/android/server/wm/AppWindowToken;->hiddenRequested:Z

    if-eqz v2, :cond_19

    .line 496
    if-nez p2, :cond_18

    iget-boolean p1, p0, Lcom/android/server/wm/AppWindowToken;->mDeferHidingClient:Z

    if-eqz p1, :cond_18

    .line 499
    iput-boolean p2, p0, Lcom/android/server/wm/AppWindowToken;->mDeferHidingClient:Z

    .line 500
    invoke-virtual {p0, v1}, Lcom/android/server/wm/AppWindowToken;->setClientHidden(Z)V

    .line 502
    :cond_18
    return-void

    .line 512
    :cond_19
    invoke-virtual {p0}, Lcom/android/server/wm/AppWindowToken;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v2

    .line 513
    iget-object v3, v2, Lcom/android/server/wm/DisplayContent;->mOpeningApps:Landroid/util/ArraySet;

    invoke-virtual {v3, p0}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    .line 514
    iget-object v3, v2, Lcom/android/server/wm/DisplayContent;->mClosingApps:Landroid/util/ArraySet;

    invoke-virtual {v3, p0}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    .line 515
    invoke-virtual {p0}, Lcom/android/server/wm/AppWindowToken;->isInChangeTransition()Z

    move-result v3

    if-eqz v3, :cond_34

    .line 516
    invoke-virtual {p0}, Lcom/android/server/wm/AppWindowToken;->getPendingTransaction()Landroid/view/SurfaceControl$Transaction;

    move-result-object v3

    invoke-direct {p0, v3, v1}, Lcom/android/server/wm/AppWindowToken;->clearChangeLeash(Landroid/view/SurfaceControl$Transaction;Z)V

    .line 518
    :cond_34
    iget-object v3, v2, Lcom/android/server/wm/DisplayContent;->mChangingApps:Landroid/util/ArraySet;

    invoke-virtual {v3, p0}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    .line 519
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/android/server/wm/AppWindowToken;->waitingToShow:Z

    .line 520
    xor-int/lit8 v4, p1, 0x1

    iput-boolean v4, p0, Lcom/android/server/wm/AppWindowToken;->hiddenRequested:Z

    .line 521
    iput-boolean p2, p0, Lcom/android/server/wm/AppWindowToken;->mDeferHidingClient:Z

    .line 523
    if-nez p1, :cond_48

    .line 527
    invoke-virtual {p0}, Lcom/android/server/wm/AppWindowToken;->removeDeadWindows()V

    goto :goto_80

    .line 529
    :cond_48
    invoke-virtual {v0}, Lcom/android/server/wm/AppTransition;->isTransitionSet()Z

    move-result p2

    if-nez p2, :cond_59

    .line 530
    invoke-virtual {v0}, Lcom/android/server/wm/AppTransition;->isReady()Z

    move-result p2

    if-eqz p2, :cond_59

    .line 534
    iget-object p2, v2, Lcom/android/server/wm/DisplayContent;->mOpeningApps:Landroid/util/ArraySet;

    invoke-virtual {p2, p0}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 536
    :cond_59
    iput-boolean v3, p0, Lcom/android/server/wm/AppWindowToken;->startingMoved:Z

    .line 539
    invoke-virtual {p0}, Lcom/android/server/wm/AppWindowToken;->isHidden()Z

    move-result p2

    if-nez p2, :cond_65

    iget-boolean p2, p0, Lcom/android/server/wm/AppWindowToken;->mAppStopped:Z

    if-eqz p2, :cond_75

    .line 540
    :cond_65
    invoke-virtual {p0}, Lcom/android/server/wm/AppWindowToken;->clearAllDrawn()V

    .line 543
    invoke-virtual {p0}, Lcom/android/server/wm/AppWindowToken;->isHidden()Z

    move-result p2

    if-eqz p2, :cond_75

    .line 544
    iput-boolean v1, p0, Lcom/android/server/wm/AppWindowToken;->waitingToShow:Z

    .line 548
    sget-object p2, Lcom/android/server/wm/-$$Lambda$AppWindowToken$ia5zMjvf931ks869isVbSY4rjGU;->INSTANCE:Lcom/android/server/wm/-$$Lambda$AppWindowToken$ia5zMjvf931ks869isVbSY4rjGU;

    invoke-virtual {p0, p2, v1}, Lcom/android/server/wm/AppWindowToken;->forAllWindows(Ljava/util/function/Consumer;Z)V

    .line 564
    :cond_75
    invoke-virtual {p0, v3}, Lcom/android/server/wm/AppWindowToken;->setClientHidden(Z)V

    .line 566
    invoke-virtual {p0}, Lcom/android/server/wm/AppWindowToken;->requestUpdateWallpaperIfNeeded()V

    .line 569
    iput-boolean v3, p0, Lcom/android/server/wm/AppWindowToken;->mAppStopped:Z

    .line 571
    invoke-virtual {p0}, Lcom/android/server/wm/AppWindowToken;->transferStartingWindowFromHiddenAboveTokenIfNeeded()V

    .line 576
    :goto_80
    invoke-virtual {p0}, Lcom/android/server/wm/AppWindowToken;->okToAnimate()Z

    move-result p2

    if-eqz p2, :cond_c1

    invoke-virtual {v0}, Lcom/android/server/wm/AppTransition;->isTransitionSet()Z

    move-result p2

    if-eqz p2, :cond_c1

    .line 577
    iput-boolean v1, p0, Lcom/android/server/wm/AppWindowToken;->inPendingTransaction:Z

    .line 578
    if-eqz p1, :cond_98

    .line 579
    iget-object p1, v2, Lcom/android/server/wm/DisplayContent;->mOpeningApps:Landroid/util/ArraySet;

    invoke-virtual {p1, p0}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 580
    iput-boolean v1, p0, Lcom/android/server/wm/AppWindowToken;->mEnteringAnimation:Z

    goto :goto_9f

    .line 582
    :cond_98
    iget-object p1, v2, Lcom/android/server/wm/DisplayContent;->mClosingApps:Landroid/util/ArraySet;

    invoke-virtual {p1, p0}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 583
    iput-boolean v3, p0, Lcom/android/server/wm/AppWindowToken;->mEnteringAnimation:Z

    .line 585
    :goto_9f
    invoke-virtual {v0}, Lcom/android/server/wm/AppTransition;->getAppTransition()I

    move-result p1

    const/16 p2, 0x10

    if-ne p1, p2, :cond_bd

    .line 588
    invoke-virtual {p0}, Lcom/android/server/wm/AppWindowToken;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/server/wm/DisplayContent;->findFocusedWindow()Lcom/android/server/wm/WindowState;

    move-result-object p1

    .line 589
    if-eqz p1, :cond_bd

    .line 590
    iget-object p1, p1, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    .line 591
    if-eqz p1, :cond_bd

    .line 597
    invoke-virtual {p1, v1}, Lcom/android/server/wm/AppWindowToken;->setHidden(Z)V

    .line 598
    iget-object p2, v2, Lcom/android/server/wm/DisplayContent;->mOpeningApps:Landroid/util/ArraySet;

    invoke-virtual {p2, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 603
    :cond_bd
    invoke-direct {p0}, Lcom/android/server/wm/AppWindowToken;->reportDescendantOrientationChangeIfNeeded()V

    .line 604
    return-void

    .line 607
    :cond_c1
    const/4 v1, 0x0

    const/4 v3, -0x1

    const/4 v4, 0x1

    iget-boolean v5, p0, Lcom/android/server/wm/AppWindowToken;->mVoiceInteraction:Z

    move-object v0, p0

    move v2, p1

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/wm/AppWindowToken;->commitVisibility(Landroid/view/WindowManager$LayoutParams;ZIZZ)Z

    .line 608
    invoke-virtual {p0}, Lcom/android/server/wm/AppWindowToken;->updateReportedVisibilityLocked()V

    .line 609
    return-void
.end method

.method setWillCloseOrEnterPip(Z)V
    .registers 2

    .line 3229
    iput-boolean p1, p0, Lcom/android/server/wm/AppWindowToken;->mWillCloseOrEnterPip:Z

    .line 3230
    return-void
.end method

.method setWillReplaceChildWindows()V
    .registers 3

    .line 1134
    iget-object v0, p0, Lcom/android/server/wm/AppWindowToken;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_8
    if-ltz v0, :cond_18

    .line 1135
    iget-object v1, p0, Lcom/android/server/wm/AppWindowToken;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v1, v0}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/WindowState;

    .line 1136
    invoke-virtual {v1}, Lcom/android/server/wm/WindowState;->setWillReplaceChildWindows()V

    .line 1134
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    .line 1138
    :cond_18
    return-void
.end method

.method setWillReplaceWindows(Z)V
    .registers 4

    .line 1125
    iget-object v0, p0, Lcom/android/server/wm/AppWindowToken;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_8
    if-ltz v0, :cond_18

    .line 1126
    iget-object v1, p0, Lcom/android/server/wm/AppWindowToken;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v1, v0}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/WindowState;

    .line 1127
    invoke-virtual {v1, p1}, Lcom/android/server/wm/WindowState;->setWillReplaceWindow(Z)V

    .line 1125
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    .line 1129
    :cond_18
    return-void
.end method

.method shouldAnimate(I)Z
    .registers 7
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 2487
    nop

    .line 2488
    invoke-virtual {p0}, Lcom/android/server/wm/AppWindowToken;->getWindowingMode()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x3

    if-ne v0, v3, :cond_c

    move v0, v1

    goto :goto_d

    :cond_c
    move v0, v2

    .line 2489
    :goto_d
    const/16 v3, 0xd

    if-eq p1, v3, :cond_13

    move p1, v1

    goto :goto_14

    :cond_13
    move p1, v2

    .line 2494
    :goto_14
    iget-object v3, p0, Lcom/android/server/wm/AppWindowToken;->mWmService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v3}, Lcom/android/server/wm/WindowManagerService;->getRecentsAnimationController()Lcom/android/server/wm/RecentsAnimationController;

    move-result-object v3

    .line 2495
    if-eqz v3, :cond_2d

    invoke-virtual {p0}, Lcom/android/server/wm/AppWindowToken;->getTask()Lcom/android/server/wm/Task;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/server/wm/RecentsAnimationController;->isAnimatingTask(Lcom/android/server/wm/Task;)Z

    move-result v4

    if-eqz v4, :cond_2d

    .line 2496
    invoke-virtual {v3}, Lcom/android/server/wm/RecentsAnimationController;->shouldDeferCancelUntilNextTransition()Z

    move-result v3

    if-eqz v3, :cond_2d

    .line 2497
    return v2

    .line 2503
    :cond_2d
    if-eqz v0, :cond_33

    if-eqz p1, :cond_32

    goto :goto_33

    :cond_32
    move v1, v2

    :cond_33
    :goto_33
    return v1
.end method

.method public shouldDeferAnimationFinish(Ljava/lang/Runnable;)Z
    .registers 3

    .line 2709
    iget-object v0, p0, Lcom/android/server/wm/AppWindowToken;->mAnimatingAppWindowTokenRegistry:Lcom/android/server/wm/AnimatingAppWindowTokenRegistry;

    if-eqz v0, :cond_c

    .line 2710
    invoke-virtual {v0, p0, p1}, Lcom/android/server/wm/AnimatingAppWindowTokenRegistry;->notifyAboutToFinish(Lcom/android/server/wm/AppWindowToken;Ljava/lang/Runnable;)Z

    move-result p1

    if-eqz p1, :cond_c

    const/4 p1, 0x1

    goto :goto_d

    :cond_c
    const/4 p1, 0x0

    .line 2709
    :goto_d
    return p1
.end method

.method shouldFreezeBounds()Z
    .registers 2

    .line 1162
    invoke-virtual {p0}, Lcom/android/server/wm/AppWindowToken;->getTask()Lcom/android/server/wm/Task;

    move-result-object v0

    .line 1166
    if-eqz v0, :cond_16

    invoke-virtual {v0}, Lcom/android/server/wm/Task;->inFreeformWindowingMode()Z

    move-result v0

    if-eqz v0, :cond_d

    goto :goto_16

    .line 1174
    :cond_d
    invoke-virtual {p0}, Lcom/android/server/wm/AppWindowToken;->getTask()Lcom/android/server/wm/Task;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/Task;->isDragResizing()Z

    move-result v0

    return v0

    .line 1167
    :cond_16
    :goto_16
    const/4 v0, 0x0

    return v0
.end method

.method shouldUseAppThemeSnapshot()Z
    .registers 3

    .line 2461
    iget-boolean v0, p0, Lcom/android/server/wm/AppWindowToken;->mDisablePreviewScreenshots:Z

    const/4 v1, 0x1

    if-nez v0, :cond_f

    sget-object v0, Lcom/android/server/wm/-$$Lambda$AppWindowToken$Zf9XP8X2P-GWYnn5VrENXlB2pEI;->INSTANCE:Lcom/android/server/wm/-$$Lambda$AppWindowToken$Zf9XP8X2P-GWYnn5VrENXlB2pEI;

    invoke-virtual {p0, v0, v1}, Lcom/android/server/wm/AppWindowToken;->forAllWindows(Lcom/android/internal/util/ToBooleanFunction;Z)Z

    move-result v0

    if-eqz v0, :cond_e

    goto :goto_f

    :cond_e
    const/4 v1, 0x0

    :cond_f
    :goto_f
    return v1
.end method

.method showAllWindowsLocked()V
    .registers 3

    .line 2815
    sget-object v0, Lcom/android/server/wm/-$$Lambda$AppWindowToken$GO_44j7HKFWrNpwWGQ4totlKXW8;->INSTANCE:Lcom/android/server/wm/-$$Lambda$AppWindowToken$GO_44j7HKFWrNpwWGQ4totlKXW8;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/server/wm/AppWindowToken;->forAllWindows(Ljava/util/function/Consumer;Z)V

    .line 2819
    return-void
.end method

.method startFreezingScreen()V
    .registers 6

    .line 1450
    iget-boolean v0, p0, Lcom/android/server/wm/AppWindowToken;->hiddenRequested:Z

    if-nez v0, :cond_50

    .line 1451
    iget-boolean v0, p0, Lcom/android/server/wm/AppWindowToken;->mFreezingScreen:Z

    const/4 v1, 0x0

    if-nez v0, :cond_39

    .line 1452
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/wm/AppWindowToken;->mFreezingScreen:Z

    .line 1453
    iget-object v2, p0, Lcom/android/server/wm/AppWindowToken;->mWmService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v2, p0}, Lcom/android/server/wm/WindowManagerService;->registerAppFreezeListener(Lcom/android/server/wm/WindowManagerService$AppFreezeListener;)V

    .line 1454
    iget-object v2, p0, Lcom/android/server/wm/AppWindowToken;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget v3, v2, Lcom/android/server/wm/WindowManagerService;->mAppsFreezingScreen:I

    add-int/2addr v3, v0

    iput v3, v2, Lcom/android/server/wm/WindowManagerService;->mAppsFreezingScreen:I

    .line 1455
    iget-object v2, p0, Lcom/android/server/wm/AppWindowToken;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget v2, v2, Lcom/android/server/wm/WindowManagerService;->mAppsFreezingScreen:I

    if-ne v2, v0, :cond_39

    .line 1456
    iget-object v0, p0, Lcom/android/server/wm/AppWindowToken;->mWmService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {p0}, Lcom/android/server/wm/AppWindowToken;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v2

    invoke-virtual {v0, v1, v1, v2}, Lcom/android/server/wm/WindowManagerService;->startFreezingDisplayLocked(IILcom/android/server/wm/DisplayContent;)V

    .line 1457
    iget-object v0, p0, Lcom/android/server/wm/AppWindowToken;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    const/16 v2, 0x11

    invoke-virtual {v0, v2}, Lcom/android/server/wm/WindowManagerService$H;->removeMessages(I)V

    .line 1458
    iget-object v0, p0, Lcom/android/server/wm/AppWindowToken;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    const-wide/16 v3, 0x7d0

    invoke-virtual {v0, v2, v3, v4}, Lcom/android/server/wm/WindowManagerService$H;->sendEmptyMessageDelayed(IJ)Z

    .line 1461
    :cond_39
    iget-object v0, p0, Lcom/android/server/wm/AppWindowToken;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowList;->size()I

    move-result v0

    .line 1462
    nop

    :goto_40
    if-ge v1, v0, :cond_50

    .line 1463
    iget-object v2, p0, Lcom/android/server/wm/AppWindowToken;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v2, v1}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/WindowState;

    .line 1464
    invoke-virtual {v2}, Lcom/android/server/wm/WindowState;->onStartFreezingScreen()V

    .line 1462
    add-int/lit8 v1, v1, 0x1

    goto :goto_40

    .line 1467
    :cond_50
    return-void
.end method

.method startRelaunching()V
    .registers 2

    .line 1178
    invoke-virtual {p0}, Lcom/android/server/wm/AppWindowToken;->shouldFreezeBounds()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 1179
    invoke-direct {p0}, Lcom/android/server/wm/AppWindowToken;->freezeBounds()V

    .line 1186
    :cond_9
    invoke-virtual {p0}, Lcom/android/server/wm/AppWindowToken;->detachChildren()V

    .line 1188
    iget v0, p0, Lcom/android/server/wm/AppWindowToken;->mPendingRelaunchCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/server/wm/AppWindowToken;->mPendingRelaunchCount:I

    .line 1189
    return-void
.end method

.method stopFreezingScreen(ZZ)V
    .registers 8

    .line 1470
    iget-boolean v0, p0, Lcom/android/server/wm/AppWindowToken;->mFreezingScreen:Z

    if-nez v0, :cond_5

    .line 1471
    return-void

    .line 1474
    :cond_5
    iget-object v0, p0, Lcom/android/server/wm/AppWindowToken;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowList;->size()I

    move-result v0

    .line 1475
    nop

    .line 1476
    const/4 v1, 0x0

    move v2, v1

    move v3, v2

    :goto_f
    if-ge v2, v0, :cond_21

    .line 1477
    iget-object v4, p0, Lcom/android/server/wm/AppWindowToken;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v4, v2}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/wm/WindowState;

    .line 1478
    invoke-virtual {v4}, Lcom/android/server/wm/WindowState;->onStopFreezingScreen()Z

    move-result v4

    or-int/2addr v3, v4

    .line 1476
    add-int/lit8 v2, v2, 0x1

    goto :goto_f

    .line 1480
    :cond_21
    if-nez p2, :cond_25

    if-eqz v3, :cond_38

    .line 1482
    :cond_25
    iput-boolean v1, p0, Lcom/android/server/wm/AppWindowToken;->mFreezingScreen:Z

    .line 1483
    iget-object p2, p0, Lcom/android/server/wm/AppWindowToken;->mWmService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {p2, p0}, Lcom/android/server/wm/WindowManagerService;->unregisterAppFreezeListener(Lcom/android/server/wm/WindowManagerService$AppFreezeListener;)V

    .line 1484
    iget-object p2, p0, Lcom/android/server/wm/AppWindowToken;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget v0, p2, Lcom/android/server/wm/WindowManagerService;->mAppsFreezingScreen:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p2, Lcom/android/server/wm/WindowManagerService;->mAppsFreezingScreen:I

    .line 1485
    iget-object p2, p0, Lcom/android/server/wm/AppWindowToken;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iput-object p0, p2, Lcom/android/server/wm/WindowManagerService;->mLastFinishedFreezeSource:Ljava/lang/Object;

    .line 1487
    :cond_38
    if-eqz p1, :cond_48

    .line 1488
    if-eqz v3, :cond_43

    .line 1489
    iget-object p1, p0, Lcom/android/server/wm/AppWindowToken;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object p1, p1, Lcom/android/server/wm/WindowManagerService;->mWindowPlacerLocked:Lcom/android/server/wm/WindowSurfacePlacer;

    invoke-virtual {p1}, Lcom/android/server/wm/WindowSurfacePlacer;->performSurfacePlacement()V

    .line 1491
    :cond_43
    iget-object p1, p0, Lcom/android/server/wm/AppWindowToken;->mWmService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {p1}, Lcom/android/server/wm/WindowManagerService;->stopFreezingDisplayLocked()V

    .line 1493
    :cond_48
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 3189
    iget-object v0, p0, Lcom/android/server/wm/AppWindowToken;->stringName:Ljava/lang/String;

    if-nez v0, :cond_2e

    .line 3190
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 3191
    const-string v1, "AppWindowToken{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3192
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3193
    const-string v1, " token="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/wm/AppWindowToken;->token:Landroid/os/IBinder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 3194
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wm/AppWindowToken;->stringName:Ljava/lang/String;

    .line 3196
    :cond_2e
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/android/server/wm/AppWindowToken;->stringName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/wm/AppWindowToken;->mIsExiting:Z

    if-eqz v1, :cond_3f

    const-string v1, " mIsExiting="

    goto :goto_41

    :cond_3f
    const-string v1, ""

    :goto_41
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method transferStartingWindow(Landroid/os/IBinder;)Z
    .registers 9

    .line 1521
    invoke-virtual {p0}, Lcom/android/server/wm/AppWindowToken;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/server/wm/DisplayContent;->getAppWindowToken(Landroid/os/IBinder;)Lcom/android/server/wm/AppWindowToken;

    move-result-object p1

    .line 1522
    const/4 v0, 0x0

    if-nez p1, :cond_c

    .line 1523
    return v0

    .line 1526
    :cond_c
    iget-object v1, p1, Lcom/android/server/wm/AppWindowToken;->startingWindow:Lcom/android/server/wm/WindowState;

    .line 1527
    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_90

    iget-object v4, p1, Lcom/android/server/wm/AppWindowToken;->startingSurface:Lcom/android/server/policy/WindowManagerPolicy$StartingSurface;

    if-eqz v4, :cond_90

    .line 1530
    invoke-virtual {p0}, Lcom/android/server/wm/AppWindowToken;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v4

    iput-boolean v3, v4, Lcom/android/server/wm/DisplayContent;->mSkipAppTransitionAnimation:Z

    .line 1535
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    .line 1538
    :try_start_20
    iget-object v6, p1, Lcom/android/server/wm/AppWindowToken;->mStartingData:Lcom/android/server/wm/StartingData;

    iput-object v6, p0, Lcom/android/server/wm/AppWindowToken;->mStartingData:Lcom/android/server/wm/StartingData;

    .line 1539
    iget-object v6, p1, Lcom/android/server/wm/AppWindowToken;->startingSurface:Lcom/android/server/policy/WindowManagerPolicy$StartingSurface;

    iput-object v6, p0, Lcom/android/server/wm/AppWindowToken;->startingSurface:Lcom/android/server/policy/WindowManagerPolicy$StartingSurface;

    .line 1540
    iget-boolean v6, p1, Lcom/android/server/wm/AppWindowToken;->startingDisplayed:Z

    iput-boolean v6, p0, Lcom/android/server/wm/AppWindowToken;->startingDisplayed:Z

    .line 1541
    iput-boolean v0, p1, Lcom/android/server/wm/AppWindowToken;->startingDisplayed:Z

    .line 1542
    iput-object v1, p0, Lcom/android/server/wm/AppWindowToken;->startingWindow:Lcom/android/server/wm/WindowState;

    .line 1543
    iget-boolean v6, p1, Lcom/android/server/wm/AppWindowToken;->reportedVisible:Z

    iput-boolean v6, p0, Lcom/android/server/wm/AppWindowToken;->reportedVisible:Z

    .line 1544
    iput-object v2, p1, Lcom/android/server/wm/AppWindowToken;->mStartingData:Lcom/android/server/wm/StartingData;

    .line 1545
    iput-object v2, p1, Lcom/android/server/wm/AppWindowToken;->startingSurface:Lcom/android/server/policy/WindowManagerPolicy$StartingSurface;

    .line 1546
    iput-object v2, p1, Lcom/android/server/wm/AppWindowToken;->startingWindow:Lcom/android/server/wm/WindowState;

    .line 1547
    iput-boolean v3, p1, Lcom/android/server/wm/AppWindowToken;->startingMoved:Z

    .line 1548
    iput-object p0, v1, Lcom/android/server/wm/WindowState;->mToken:Lcom/android/server/wm/WindowToken;

    .line 1549
    iput-object p0, v1, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    .line 1553
    invoke-virtual {p1, v1}, Lcom/android/server/wm/AppWindowToken;->removeChild(Lcom/android/server/wm/WindowState;)V

    .line 1554
    invoke-virtual {p1, v1}, Lcom/android/server/wm/AppWindowToken;->postWindowRemoveStartingWindowCleanup(Lcom/android/server/wm/WindowState;)V

    .line 1555
    iput-boolean v0, p1, Lcom/android/server/wm/AppWindowToken;->mHiddenSetFromTransferredStartingWindow:Z

    .line 1556
    invoke-virtual {p0, v1}, Lcom/android/server/wm/AppWindowToken;->addWindow(Lcom/android/server/wm/WindowState;)V

    .line 1561
    iget-boolean v1, p1, Lcom/android/server/wm/AppWindowToken;->allDrawn:Z

    if-eqz v1, :cond_55

    .line 1562
    iput-boolean v3, p0, Lcom/android/server/wm/AppWindowToken;->allDrawn:Z

    .line 1563
    iget-boolean v1, p1, Lcom/android/server/wm/AppWindowToken;->deferClearAllDrawn:Z

    iput-boolean v1, p0, Lcom/android/server/wm/AppWindowToken;->deferClearAllDrawn:Z

    .line 1565
    :cond_55
    iget-boolean v1, p1, Lcom/android/server/wm/AppWindowToken;->firstWindowDrawn:Z

    if-eqz v1, :cond_5b

    .line 1566
    iput-boolean v3, p0, Lcom/android/server/wm/AppWindowToken;->firstWindowDrawn:Z

    .line 1568
    :cond_5b
    invoke-virtual {p1}, Lcom/android/server/wm/AppWindowToken;->isHidden()Z

    move-result v1

    if-nez v1, :cond_68

    .line 1569
    invoke-virtual {p0, v0}, Lcom/android/server/wm/AppWindowToken;->setHidden(Z)V

    .line 1570
    iput-boolean v0, p0, Lcom/android/server/wm/AppWindowToken;->hiddenRequested:Z

    .line 1571
    iput-boolean v3, p0, Lcom/android/server/wm/AppWindowToken;->mHiddenSetFromTransferredStartingWindow:Z

    .line 1573
    :cond_68
    iget-boolean v0, p1, Lcom/android/server/wm/AppWindowToken;->mClientHidden:Z

    invoke-virtual {p0, v0}, Lcom/android/server/wm/AppWindowToken;->setClientHidden(Z)V

    .line 1575
    invoke-virtual {p0, p1}, Lcom/android/server/wm/AppWindowToken;->transferAnimation(Lcom/android/server/wm/WindowContainer;)V

    .line 1580
    iput-boolean v3, p0, Lcom/android/server/wm/AppWindowToken;->mUseTransferredAnimation:Z

    .line 1582
    iget-object p1, p0, Lcom/android/server/wm/AppWindowToken;->mWmService:Lcom/android/server/wm/WindowManagerService;

    const/4 v0, 0x3

    invoke-virtual {p1, v0, v3}, Lcom/android/server/wm/WindowManagerService;->updateFocusedWindowLocked(IZ)Z

    .line 1584
    invoke-virtual {p0}, Lcom/android/server/wm/AppWindowToken;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/server/wm/DisplayContent;->setLayoutNeeded()V

    .line 1585
    iget-object p1, p0, Lcom/android/server/wm/AppWindowToken;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object p1, p1, Lcom/android/server/wm/WindowManagerService;->mWindowPlacerLocked:Lcom/android/server/wm/WindowSurfacePlacer;

    invoke-virtual {p1}, Lcom/android/server/wm/WindowSurfacePlacer;->performSurfacePlacement()V
    :try_end_86
    .catchall {:try_start_20 .. :try_end_86} :catchall_8b

    .line 1587
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1588
    nop

    .line 1589
    return v3

    .line 1587
    :catchall_8b
    move-exception p1

    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p1

    .line 1590
    :cond_90
    iget-object v1, p1, Lcom/android/server/wm/AppWindowToken;->mStartingData:Lcom/android/server/wm/StartingData;

    if-eqz v1, :cond_9e

    .line 1595
    iput-object v1, p0, Lcom/android/server/wm/AppWindowToken;->mStartingData:Lcom/android/server/wm/StartingData;

    .line 1596
    iput-object v2, p1, Lcom/android/server/wm/AppWindowToken;->mStartingData:Lcom/android/server/wm/StartingData;

    .line 1597
    iput-boolean v3, p1, Lcom/android/server/wm/AppWindowToken;->startingMoved:Z

    .line 1598
    invoke-virtual {p0}, Lcom/android/server/wm/AppWindowToken;->scheduleAddStartingWindow()V

    .line 1599
    return v3

    .line 1604
    :cond_9e
    return v0
.end method

.method transferStartingWindowFromHiddenAboveTokenIfNeeded()V
    .registers 5

    .line 1508
    invoke-virtual {p0}, Lcom/android/server/wm/AppWindowToken;->getTask()Lcom/android/server/wm/Task;

    move-result-object v0

    .line 1509
    iget-object v1, v0, Lcom/android/server/wm/Task;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_c
    if-ltz v1, :cond_29

    .line 1510
    iget-object v2, v0, Lcom/android/server/wm/Task;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v2, v1}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/AppWindowToken;

    .line 1511
    if-ne v2, p0, :cond_19

    .line 1512
    return-void

    .line 1514
    :cond_19
    iget-boolean v3, v2, Lcom/android/server/wm/AppWindowToken;->hiddenRequested:Z

    if-eqz v3, :cond_26

    iget-object v2, v2, Lcom/android/server/wm/AppWindowToken;->token:Landroid/os/IBinder;

    invoke-virtual {p0, v2}, Lcom/android/server/wm/AppWindowToken;->transferStartingWindow(Landroid/os/IBinder;)Z

    move-result v2

    if-eqz v2, :cond_26

    .line 1515
    return-void

    .line 1509
    :cond_26
    add-int/lit8 v1, v1, -0x1

    goto :goto_c

    .line 1518
    :cond_29
    return-void
.end method

.method updateAllDrawn()V
    .registers 4

    .line 1909
    iget-boolean v0, p0, Lcom/android/server/wm/AppWindowToken;->allDrawn:Z

    if-nez v0, :cond_3e

    .line 1912
    iget v0, p0, Lcom/android/server/wm/AppWindowToken;->mNumInterestingWindows:I

    .line 1917
    if-lez v0, :cond_3e

    invoke-direct {p0}, Lcom/android/server/wm/AppWindowToken;->allDrawnStatesConsidered()Z

    move-result v1

    if-eqz v1, :cond_3e

    iget v1, p0, Lcom/android/server/wm/AppWindowToken;->mNumDrawnWindows:I

    if-lt v1, v0, :cond_3e

    .line 1918
    invoke-virtual {p0}, Lcom/android/server/wm/AppWindowToken;->isRelaunching()Z

    move-result v0

    if-nez v0, :cond_3e

    .line 1921
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/wm/AppWindowToken;->allDrawn:Z

    .line 1924
    iget-object v0, p0, Lcom/android/server/wm/AppWindowToken;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    if-eqz v0, :cond_24

    .line 1925
    iget-object v0, p0, Lcom/android/server/wm/AppWindowToken;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->setLayoutNeeded()V

    .line 1927
    :cond_24
    iget-object v0, p0, Lcom/android/server/wm/AppWindowToken;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    const/16 v1, 0x20

    iget-object v2, p0, Lcom/android/server/wm/AppWindowToken;->token:Landroid/os/IBinder;

    invoke-virtual {v0, v1, v2}, Lcom/android/server/wm/WindowManagerService$H;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 1931
    iget-object v0, p0, Lcom/android/server/wm/AppWindowToken;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->getPinnedStack()Lcom/android/server/wm/TaskStack;

    move-result-object v0

    .line 1932
    if-eqz v0, :cond_3e

    .line 1933
    invoke-virtual {v0}, Lcom/android/server/wm/TaskStack;->onAllWindowsDrawn()V

    .line 1937
    :cond_3e
    return-void
.end method

.method updateDrawnWindowStates(Lcom/android/server/wm/WindowState;)Z
    .registers 9

    .line 1950
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/android/server/wm/WindowState;->setDrawnStateEvaluated(Z)V

    .line 1957
    iget-boolean v1, p0, Lcom/android/server/wm/AppWindowToken;->allDrawn:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_e

    iget-boolean v1, p0, Lcom/android/server/wm/AppWindowToken;->mFreezingScreen:Z

    if-nez v1, :cond_e

    .line 1958
    return v2

    .line 1961
    :cond_e
    iget-wide v3, p0, Lcom/android/server/wm/AppWindowToken;->mLastTransactionSequence:J

    iget-object v1, p0, Lcom/android/server/wm/AppWindowToken;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget v1, v1, Lcom/android/server/wm/WindowManagerService;->mTransactionSequence:I

    int-to-long v5, v1

    cmp-long v1, v3, v5

    if-eqz v1, :cond_2f

    .line 1962
    iget-object v1, p0, Lcom/android/server/wm/AppWindowToken;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget v1, v1, Lcom/android/server/wm/WindowManagerService;->mTransactionSequence:I

    int-to-long v3, v1

    iput-wide v3, p0, Lcom/android/server/wm/AppWindowToken;->mLastTransactionSequence:J

    .line 1963
    iput v2, p0, Lcom/android/server/wm/AppWindowToken;->mNumDrawnWindows:I

    .line 1964
    iput-boolean v2, p0, Lcom/android/server/wm/AppWindowToken;->startingDisplayed:Z

    .line 1967
    invoke-virtual {p0, v2}, Lcom/android/server/wm/AppWindowToken;->findMainWindow(Z)Lcom/android/server/wm/WindowState;

    move-result-object v1

    if-eqz v1, :cond_2c

    move v1, v0

    goto :goto_2d

    :cond_2c
    move v1, v2

    :goto_2d
    iput v1, p0, Lcom/android/server/wm/AppWindowToken;->mNumInterestingWindows:I

    .line 1970
    :cond_2f
    iget-object v1, p1, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    .line 1972
    nop

    .line 1974
    iget-boolean v1, p0, Lcom/android/server/wm/AppWindowToken;->allDrawn:Z

    if-nez v1, :cond_70

    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->mightAffectAllDrawn()Z

    move-result v1

    if-eqz v1, :cond_70

    .line 1987
    iget-object v1, p0, Lcom/android/server/wm/AppWindowToken;->startingWindow:Lcom/android/server/wm/WindowState;

    if-eq p1, v1, :cond_5d

    .line 1988
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->isInteresting()Z

    move-result v1

    if-eqz v1, :cond_70

    .line 1990
    invoke-virtual {p0, v2}, Lcom/android/server/wm/AppWindowToken;->findMainWindow(Z)Lcom/android/server/wm/WindowState;

    move-result-object v1

    if-eq v1, p1, :cond_51

    .line 1991
    iget v1, p0, Lcom/android/server/wm/AppWindowToken;->mNumInterestingWindows:I

    add-int/2addr v1, v0

    iput v1, p0, Lcom/android/server/wm/AppWindowToken;->mNumInterestingWindows:I

    .line 1993
    :cond_51
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->isDrawnLw()Z

    move-result p1

    if-eqz p1, :cond_70

    .line 1994
    iget p1, p0, Lcom/android/server/wm/AppWindowToken;->mNumDrawnWindows:I

    add-int/2addr p1, v0

    iput p1, p0, Lcom/android/server/wm/AppWindowToken;->mNumDrawnWindows:I

    .line 2001
    goto :goto_71

    .line 2004
    :cond_5d
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->isDrawnLw()Z

    move-result p1

    if-eqz p1, :cond_70

    .line 2005
    iget-object p1, p0, Lcom/android/server/wm/AppWindowToken;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    if-eqz p1, :cond_6e

    .line 2006
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    invoke-virtual {p1, v3, v4}, Lcom/android/server/wm/ActivityRecord;->onStartingWindowDrawn(J)V

    .line 2008
    :cond_6e
    iput-boolean v0, p0, Lcom/android/server/wm/AppWindowToken;->startingDisplayed:Z

    .line 2012
    :cond_70
    move v0, v2

    :goto_71
    return v0
.end method

.method updateLetterboxSurface(Lcom/android/server/wm/WindowState;)V
    .registers 3

    .line 2042
    invoke-virtual {p0}, Lcom/android/server/wm/AppWindowToken;->findMainWindow()Lcom/android/server/wm/WindowState;

    move-result-object v0

    .line 2043
    if-eq v0, p1, :cond_b

    if-eqz p1, :cond_b

    if-eqz v0, :cond_b

    .line 2044
    return-void

    .line 2046
    :cond_b
    invoke-virtual {p0, p1}, Lcom/android/server/wm/AppWindowToken;->layoutLetterbox(Lcom/android/server/wm/WindowState;)V

    .line 2047
    iget-object p1, p0, Lcom/android/server/wm/AppWindowToken;->mLetterbox:Lcom/android/server/wm/Letterbox;

    if-eqz p1, :cond_21

    invoke-virtual {p1}, Lcom/android/server/wm/Letterbox;->needsApplySurfaceChanges()Z

    move-result p1

    if-eqz p1, :cond_21

    .line 2048
    iget-object p1, p0, Lcom/android/server/wm/AppWindowToken;->mLetterbox:Lcom/android/server/wm/Letterbox;

    invoke-virtual {p0}, Lcom/android/server/wm/AppWindowToken;->getPendingTransaction()Landroid/view/SurfaceControl$Transaction;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/server/wm/Letterbox;->applySurfaceChanges(Landroid/view/SurfaceControl$Transaction;)V

    .line 2050
    :cond_21
    return-void
.end method

.method updateReportedVisibilityLocked()V
    .registers 7

    .line 398
    iget-object v0, p0, Lcom/android/server/wm/AppWindowToken;->appToken:Landroid/view/IApplicationToken;

    if-nez v0, :cond_5

    .line 399
    return-void

    .line 403
    :cond_5
    iget-object v0, p0, Lcom/android/server/wm/AppWindowToken;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowList;->size()I

    move-result v0

    .line 405
    iget-object v1, p0, Lcom/android/server/wm/AppWindowToken;->mReportedVisibilityResults:Lcom/android/server/wm/WindowState$UpdateReportedVisibilityResults;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowState$UpdateReportedVisibilityResults;->reset()V

    .line 407
    const/4 v1, 0x0

    move v2, v1

    :goto_12
    if-ge v2, v0, :cond_24

    .line 408
    iget-object v3, p0, Lcom/android/server/wm/AppWindowToken;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v3, v2}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/WindowState;

    .line 409
    iget-object v4, p0, Lcom/android/server/wm/AppWindowToken;->mReportedVisibilityResults:Lcom/android/server/wm/WindowState$UpdateReportedVisibilityResults;

    invoke-virtual {v3, v4}, Lcom/android/server/wm/WindowState;->updateReportedVisibility(Lcom/android/server/wm/WindowState$UpdateReportedVisibilityResults;)V

    .line 407
    add-int/lit8 v2, v2, 0x1

    goto :goto_12

    .line 412
    :cond_24
    iget-object v0, p0, Lcom/android/server/wm/AppWindowToken;->mReportedVisibilityResults:Lcom/android/server/wm/WindowState$UpdateReportedVisibilityResults;

    iget v0, v0, Lcom/android/server/wm/WindowState$UpdateReportedVisibilityResults;->numInteresting:I

    .line 413
    iget-object v2, p0, Lcom/android/server/wm/AppWindowToken;->mReportedVisibilityResults:Lcom/android/server/wm/WindowState$UpdateReportedVisibilityResults;

    iget v2, v2, Lcom/android/server/wm/WindowState$UpdateReportedVisibilityResults;->numVisible:I

    .line 414
    iget-object v3, p0, Lcom/android/server/wm/AppWindowToken;->mReportedVisibilityResults:Lcom/android/server/wm/WindowState$UpdateReportedVisibilityResults;

    iget v3, v3, Lcom/android/server/wm/WindowState$UpdateReportedVisibilityResults;->numDrawn:I

    .line 415
    iget-object v4, p0, Lcom/android/server/wm/AppWindowToken;->mReportedVisibilityResults:Lcom/android/server/wm/WindowState$UpdateReportedVisibilityResults;

    iget-boolean v4, v4, Lcom/android/server/wm/WindowState$UpdateReportedVisibilityResults;->nowGone:Z

    .line 417
    const/4 v5, 0x1

    if-lez v0, :cond_3b

    if-lt v3, v0, :cond_3b

    move v3, v5

    goto :goto_3c

    :cond_3b
    move v3, v1

    .line 418
    :goto_3c
    if-lez v0, :cond_47

    if-lt v2, v0, :cond_47

    invoke-virtual {p0}, Lcom/android/server/wm/AppWindowToken;->isHidden()Z

    move-result v0

    if-nez v0, :cond_47

    move v1, v5

    .line 419
    :cond_47
    if-nez v4, :cond_51

    .line 421
    if-nez v3, :cond_4d

    .line 422
    iget-boolean v3, p0, Lcom/android/server/wm/AppWindowToken;->reportedDrawn:Z

    .line 424
    :cond_4d
    if-nez v1, :cond_51

    .line 425
    iget-boolean v1, p0, Lcom/android/server/wm/AppWindowToken;->reportedVisible:Z

    .line 430
    :cond_51
    iget-boolean v0, p0, Lcom/android/server/wm/AppWindowToken;->reportedDrawn:Z

    if-eq v3, v0, :cond_62

    .line 431
    iget-object v0, p0, Lcom/android/server/wm/AppWindowToken;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    if-eqz v0, :cond_60

    .line 432
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    invoke-virtual {v0, v3, v4, v5}, Lcom/android/server/wm/ActivityRecord;->onWindowsDrawn(ZJ)V

    .line 434
    :cond_60
    iput-boolean v3, p0, Lcom/android/server/wm/AppWindowToken;->reportedDrawn:Z

    .line 436
    :cond_62
    iget-boolean v0, p0, Lcom/android/server/wm/AppWindowToken;->reportedVisible:Z

    if-eq v1, v0, :cond_75

    .line 439
    iput-boolean v1, p0, Lcom/android/server/wm/AppWindowToken;->reportedVisible:Z

    .line 440
    iget-object v0, p0, Lcom/android/server/wm/AppWindowToken;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    if-eqz v0, :cond_75

    .line 441
    if-eqz v1, :cond_72

    .line 442
    invoke-direct {p0}, Lcom/android/server/wm/AppWindowToken;->onWindowsVisible()V

    goto :goto_75

    .line 444
    :cond_72
    invoke-direct {p0}, Lcom/android/server/wm/AppWindowToken;->onWindowsGone()V

    .line 448
    :cond_75
    :goto_75
    return-void
.end method

.method windowsAreFocusable()Z
    .registers 4

    .line 828
    iget v0, p0, Lcom/android/server/wm/AppWindowToken;->mTargetSdk:I

    const/4 v1, 0x0

    const/16 v2, 0x1d

    if-ge v0, v2, :cond_2e

    .line 829
    iget-object v0, p0, Lcom/android/server/wm/AppWindowToken;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    if-eqz v0, :cond_18

    .line 830
    iget-object v0, v0, Lcom/android/server/wm/ActivityRecord;->app:Lcom/android/server/wm/WindowProcessController;

    if-eqz v0, :cond_18

    iget-object v0, p0, Lcom/android/server/wm/AppWindowToken;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    iget-object v0, v0, Lcom/android/server/wm/ActivityRecord;->app:Lcom/android/server/wm/WindowProcessController;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowProcessController;->getPid()I

    move-result v0

    goto :goto_19

    :cond_18
    move v0, v1

    .line 831
    :goto_19
    iget-object v2, p0, Lcom/android/server/wm/AppWindowToken;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    iget-object v2, v2, Lcom/android/server/wm/RootWindowContainer;->mTopFocusedAppByProcess:Ljava/util/HashMap;

    .line 832
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/AppWindowToken;

    .line 833
    if-eqz v0, :cond_2e

    if-eq v0, p0, :cond_2e

    .line 836
    return v1

    .line 839
    :cond_2e
    invoke-virtual {p0}, Lcom/android/server/wm/AppWindowToken;->getWindowConfiguration()Landroid/app/WindowConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/WindowConfiguration;->canReceiveKeys()Z

    move-result v0

    if-nez v0, :cond_3c

    iget-boolean v0, p0, Lcom/android/server/wm/AppWindowToken;->mAlwaysFocusable:Z

    if-eqz v0, :cond_3d

    :cond_3c
    const/4 v1, 0x1

    :cond_3d
    return v1
.end method

.method writeNameToProto(Landroid/util/proto/ProtoOutputStream;J)V
    .registers 5

    .line 3176
    iget-object v0, p0, Lcom/android/server/wm/AppWindowToken;->appToken:Landroid/view/IApplicationToken;

    if-nez v0, :cond_5

    .line 3177
    return-void

    .line 3180
    :cond_5
    :try_start_5
    invoke-interface {v0}, Landroid/view/IApplicationToken;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, p2, p3, v0}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_c} :catch_d

    .line 3184
    goto :goto_17

    .line 3181
    :catch_d
    move-exception p1

    .line 3183
    invoke-virtual {p1}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "WindowManager"

    invoke-static {p2, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3185
    :goto_17
    return-void
.end method

.method public writeToProto(Landroid/util/proto/ProtoOutputStream;JI)V
    .registers 8

    .line 3137
    const/4 v0, 0x2

    if-ne p4, v0, :cond_a

    invoke-virtual {p0}, Lcom/android/server/wm/AppWindowToken;->isVisible()Z

    move-result v0

    if-nez v0, :cond_a

    .line 3138
    return-void

    .line 3141
    :cond_a
    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide p2

    .line 3142
    const-wide v0, 0x10900000001L

    invoke-virtual {p0, p1, v0, v1}, Lcom/android/server/wm/AppWindowToken;->writeNameToProto(Landroid/util/proto/ProtoOutputStream;J)V

    .line 3143
    const-wide v0, 0x10b00000002L

    invoke-super {p0, p1, v0, v1, p4}, Lcom/android/server/wm/WindowToken;->writeToProto(Landroid/util/proto/ProtoOutputStream;JI)V

    .line 3144
    const-wide v0, 0x10800000003L

    iget-boolean p4, p0, Lcom/android/server/wm/AppWindowToken;->mLastSurfaceShowing:Z

    invoke-virtual {p1, v0, v1, p4}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 3145
    const-wide v0, 0x10800000004L

    invoke-virtual {p0}, Lcom/android/server/wm/AppWindowToken;->isWaitingForTransitionStart()Z

    move-result p4

    invoke-virtual {p1, v0, v1, p4}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 3146
    const-wide v0, 0x10800000005L

    invoke-direct {p0}, Lcom/android/server/wm/AppWindowToken;->isReallyAnimating()Z

    move-result p4

    invoke-virtual {p1, v0, v1, p4}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 3147
    iget-object p4, p0, Lcom/android/server/wm/AppWindowToken;->mThumbnail:Lcom/android/server/wm/AppWindowThumbnail;

    if-eqz p4, :cond_4c

    .line 3148
    const-wide v0, 0x10b00000006L

    invoke-virtual {p4, p1, v0, v1}, Lcom/android/server/wm/AppWindowThumbnail;->writeToProto(Landroid/util/proto/ProtoOutputStream;J)V

    .line 3150
    :cond_4c
    const-wide v0, 0x10800000007L

    iget-boolean p4, p0, Lcom/android/server/wm/AppWindowToken;->mFillsParent:Z

    invoke-virtual {p1, v0, v1, p4}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 3151
    const-wide v0, 0x10800000008L

    iget-boolean p4, p0, Lcom/android/server/wm/AppWindowToken;->mAppStopped:Z

    invoke-virtual {p1, v0, v1, p4}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 3152
    const-wide v0, 0x10800000009L

    iget-boolean p4, p0, Lcom/android/server/wm/AppWindowToken;->hiddenRequested:Z

    invoke-virtual {p1, v0, v1, p4}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 3153
    const-wide v0, 0x1080000000aL

    iget-boolean p4, p0, Lcom/android/server/wm/AppWindowToken;->mClientHidden:Z

    invoke-virtual {p1, v0, v1, p4}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 3154
    const-wide v0, 0x1080000000bL

    iget-boolean p4, p0, Lcom/android/server/wm/AppWindowToken;->mDeferHidingClient:Z

    invoke-virtual {p1, v0, v1, p4}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 3155
    const-wide v0, 0x1080000000cL

    iget-boolean p4, p0, Lcom/android/server/wm/AppWindowToken;->reportedDrawn:Z

    invoke-virtual {p1, v0, v1, p4}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 3156
    const-wide v0, 0x1080000000dL

    iget-boolean p4, p0, Lcom/android/server/wm/AppWindowToken;->reportedVisible:Z

    invoke-virtual {p1, v0, v1, p4}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 3157
    const-wide v0, 0x1050000000eL

    iget p4, p0, Lcom/android/server/wm/AppWindowToken;->mNumInterestingWindows:I

    invoke-virtual {p1, v0, v1, p4}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 3158
    const-wide v0, 0x1050000000fL

    iget p4, p0, Lcom/android/server/wm/AppWindowToken;->mNumDrawnWindows:I

    invoke-virtual {p1, v0, v1, p4}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 3159
    const-wide v0, 0x10800000010L

    iget-boolean p4, p0, Lcom/android/server/wm/AppWindowToken;->allDrawn:Z

    invoke-virtual {p1, v0, v1, p4}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 3160
    const-wide v0, 0x10800000011L

    iget-boolean p4, p0, Lcom/android/server/wm/AppWindowToken;->mLastAllDrawn:Z

    invoke-virtual {p1, v0, v1, p4}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 3161
    const-wide v0, 0x10800000012L

    iget-boolean p4, p0, Lcom/android/server/wm/AppWindowToken;->removed:Z

    invoke-virtual {p1, v0, v1, p4}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 3162
    iget-object p4, p0, Lcom/android/server/wm/AppWindowToken;->startingWindow:Lcom/android/server/wm/WindowState;

    if-eqz p4, :cond_d0

    .line 3163
    const-wide v0, 0x10b00000013L

    invoke-virtual {p4, p1, v0, v1}, Lcom/android/server/wm/WindowState;->writeIdentifierToProto(Landroid/util/proto/ProtoOutputStream;J)V

    .line 3165
    :cond_d0
    const-wide v0, 0x10800000014L

    iget-boolean p4, p0, Lcom/android/server/wm/AppWindowToken;->startingDisplayed:Z

    invoke-virtual {p1, v0, v1, p4}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 3166
    const-wide v0, 0x10800000015L

    iget-boolean p4, p0, Lcom/android/server/wm/AppWindowToken;->startingMoved:Z

    invoke-virtual {p1, v0, v1, p4}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 3167
    const-wide v0, 0x10800000016L

    iget-boolean p4, p0, Lcom/android/server/wm/AppWindowToken;->mHiddenSetFromTransferredStartingWindow:Z

    invoke-virtual {p1, v0, v1, p4}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 3169
    iget-object p4, p0, Lcom/android/server/wm/AppWindowToken;->mFrozenBounds:Ljava/util/ArrayDeque;

    invoke-virtual {p4}, Ljava/util/ArrayDeque;->iterator()Ljava/util/Iterator;

    move-result-object p4

    :goto_f4
    invoke-interface {p4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_109

    invoke-interface {p4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Rect;

    .line 3170
    const-wide v1, 0x20b00000017L

    invoke-virtual {v0, p1, v1, v2}, Landroid/graphics/Rect;->writeToProto(Landroid/util/proto/ProtoOutputStream;J)V

    .line 3171
    goto :goto_f4

    .line 3172
    :cond_109
    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 3173
    return-void
.end method
