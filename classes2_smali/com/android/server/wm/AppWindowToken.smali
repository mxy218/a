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

.field mKeyguardlsitActivity:I

.field private mLastAllDrawn:Z

.field private mLastAppSaturationInfo:Lcom/android/server/wm/AppWindowToken$AppSaturationInfo;

.field private mLastContainsDismissKeyguardWindow:Z

.field private mLastContainsShowWhenLockedWindow:Z

.field private mLastParent:Lcom/android/server/wm/Task;

.field private mLastSurfaceShowing:Z

.field private mLastTransactionSequence:J

.field mLaunchTaskBehind:Z

.field private mLetterbox:Lcom/android/server/wm/Letterbox;

.field private mLockOrientation:I

.field mNeedsAnimationBoundsLayer:Z

.field mNeedsZBoost:Z
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field private mNumDrawnWindows:I

.field private mNumInterestingWindows:I

.field private mPendingRelaunchCount:I

.field private mPrevWinMode:I

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
    .registers 31
    .param p1, "service"  # Lcom/android/server/wm/WindowManagerService;
    .param p2, "token"  # Landroid/view/IApplicationToken;
    .param p3, "activityComponent"  # Landroid/content/ComponentName;
    .param p4, "voiceInteraction"  # Z
    .param p5, "dc"  # Lcom/android/server/wm/DisplayContent;
    .param p6, "inputDispatchingTimeoutNanos"  # J
    .param p8, "fullscreen"  # Z
    .param p9, "showForAllUsers"  # Z
    .param p10, "targetSdk"  # I
    .param p11, "orientation"  # I
    .param p12, "rotationAnimationHint"  # I
    .param p13, "launchTaskBehind"  # Z
    .param p14, "alwaysFocusable"  # Z
    .param p15, "activityRecord"  # Lcom/android/server/wm/ActivityRecord;

    .line 346
    move-object v7, p0

    move-object/from16 v8, p15

    move-object v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move/from16 v4, p4

    move-object/from16 v5, p5

    move/from16 v6, p8

    invoke-direct/range {v0 .. v6}, Lcom/android/server/wm/AppWindowToken;-><init>(Lcom/android/server/wm/WindowManagerService;Landroid/view/IApplicationToken;Landroid/content/ComponentName;ZLcom/android/server/wm/DisplayContent;Z)V

    .line 348
    iput-object v8, v7, Lcom/android/server/wm/AppWindowToken;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    .line 349
    iget-object v0, v7, Lcom/android/server/wm/AppWindowToken;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v0, p0}, Lcom/android/server/wm/ActivityRecord;->registerConfigurationChangeListener(Lcom/android/server/wm/ConfigurationContainerListener;)V

    .line 350
    move-wide/from16 v0, p6

    iput-wide v0, v7, Lcom/android/server/wm/AppWindowToken;->mInputDispatchingTimeoutNanos:J

    .line 351
    move/from16 v2, p9

    iput-boolean v2, v7, Lcom/android/server/wm/AppWindowToken;->mShowForAllUsers:Z

    .line 352
    move/from16 v3, p10

    iput v3, v7, Lcom/android/server/wm/AppWindowToken;->mTargetSdk:I

    .line 353
    move/from16 v4, p11

    iput v4, v7, Lcom/android/server/wm/AppWindowToken;->mOrientation:I

    .line 354
    move/from16 v5, p13

    iput-boolean v5, v7, Lcom/android/server/wm/AppWindowToken;->mLaunchTaskBehind:Z

    .line 355
    move/from16 v6, p14

    iput-boolean v6, v7, Lcom/android/server/wm/AppWindowToken;->mAlwaysFocusable:Z

    .line 356
    move/from16 v9, p12

    iput v9, v7, Lcom/android/server/wm/AppWindowToken;->mRotationAnimationHint:I

    .line 359
    const/4 v10, 0x1

    invoke-virtual {p0, v10}, Lcom/android/server/wm/AppWindowToken;->setHidden(Z)V

    .line 360
    iput-boolean v10, v7, Lcom/android/server/wm/AppWindowToken;->hiddenRequested:Z

    .line 362
    const-class v10, Lcom/android/server/display/color/ColorDisplayService$ColorDisplayServiceInternal;

    invoke-static {v10}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/server/display/color/ColorDisplayService$ColorDisplayServiceInternal;

    .line 364
    .local v10, "cds":Lcom/android/server/display/color/ColorDisplayService$ColorDisplayServiceInternal;
    iget-object v11, v8, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    iget v12, v8, Lcom/android/server/wm/ActivityRecord;->mUserId:I

    new-instance v13, Ljava/lang/ref/WeakReference;

    iget-object v14, v7, Lcom/android/server/wm/AppWindowToken;->mColorTransformController:Lcom/android/server/display/color/ColorDisplayService$ColorTransformController;

    invoke-direct {v13, v14}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v10, v11, v12, v13}, Lcom/android/server/display/color/ColorDisplayService$ColorDisplayServiceInternal;->attachColorTransformController(Ljava/lang/String;ILjava/lang/ref/WeakReference;)Z

    .line 366
    return-void
.end method

.method constructor <init>(Lcom/android/server/wm/WindowManagerService;Landroid/view/IApplicationToken;Landroid/content/ComponentName;ZLcom/android/server/wm/DisplayContent;Z)V
    .registers 16
    .param p1, "service"  # Lcom/android/server/wm/WindowManagerService;
    .param p2, "token"  # Landroid/view/IApplicationToken;
    .param p3, "activityComponent"  # Landroid/content/ComponentName;
    .param p4, "voiceInteraction"  # Z
    .param p5, "dc"  # Lcom/android/server/wm/DisplayContent;
    .param p6, "fillsParent"  # Z

    .line 371
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

    .line 167
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/wm/AppWindowToken;->mRemovingFromDisplay:Z

    .line 176
    const-wide/high16 v1, -0x8000000000000000L

    iput-wide v1, p0, Lcom/android/server/wm/AppWindowToken;->mLastTransactionSequence:J

    .line 221
    new-instance v1, Lcom/android/server/wm/WindowState$UpdateReportedVisibilityResults;

    invoke-direct {v1}, Lcom/android/server/wm/WindowState$UpdateReportedVisibilityResults;-><init>()V

    iput-object v1, p0, Lcom/android/server/wm/AppWindowToken;->mReportedVisibilityResults:Lcom/android/server/wm/WindowState$UpdateReportedVisibilityResults;

    .line 242
    new-instance v1, Ljava/util/ArrayDeque;

    invoke-direct {v1}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v1, p0, Lcom/android/server/wm/AppWindowToken;->mFrozenBounds:Ljava/util/ArrayDeque;

    .line 243
    new-instance v1, Ljava/util/ArrayDeque;

    invoke-direct {v1}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v1, p0, Lcom/android/server/wm/AppWindowToken;->mFrozenMergedConfig:Ljava/util/ArrayDeque;

    .line 249
    const/high16 v1, 0x3f800000  # 1.0f

    iput v1, p0, Lcom/android/server/wm/AppWindowToken;->mSizeCompatScale:F

    .line 266
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/wm/AppWindowToken;->mCanTurnScreenOn:Z

    .line 281
    iput-boolean v1, p0, Lcom/android/server/wm/AppWindowToken;->mLastSurfaceShowing:Z

    .line 288
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/android/server/wm/AppWindowToken;->mTransitStartRect:Landroid/graphics/Rect;

    .line 294
    iput-object v0, p0, Lcom/android/server/wm/AppWindowToken;->mTransitChangeLeash:Landroid/view/SurfaceControl;

    .line 303
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/AppWindowToken;->mTmpPoint:Landroid/graphics/Point;

    .line 304
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/AppWindowToken;->mTmpRect:Landroid/graphics/Rect;

    .line 305
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/AppWindowToken;->mTmpPrevBounds:Landroid/graphics/Rect;

    .line 328
    new-instance v0, Lcom/android/server/wm/-$$Lambda$AppWindowToken$cwsF3cyeJjO4UiuaM07w8TBc698;

    invoke-direct {v0, p0}, Lcom/android/server/wm/-$$Lambda$AppWindowToken$cwsF3cyeJjO4UiuaM07w8TBc698;-><init>(Lcom/android/server/wm/AppWindowToken;)V

    iput-object v0, p0, Lcom/android/server/wm/AppWindowToken;->mColorTransformController:Lcom/android/server/display/color/ColorDisplayService$ColorTransformController;

    .line 2255
    new-instance v0, Lcom/android/server/wm/AppWindowToken$1;

    invoke-direct {v0, p0}, Lcom/android/server/wm/AppWindowToken$1;-><init>(Lcom/android/server/wm/AppWindowToken;)V

    iput-object v0, p0, Lcom/android/server/wm/AppWindowToken;->mAddStartingWindow:Ljava/lang/Runnable;

    .line 3408
    const/high16 v0, -0x80000000

    iput v0, p0, Lcom/android/server/wm/AppWindowToken;->mLockOrientation:I

    .line 373
    iput-object p2, p0, Lcom/android/server/wm/AppWindowToken;->appToken:Landroid/view/IApplicationToken;

    .line 374
    iput-object p3, p0, Lcom/android/server/wm/AppWindowToken;->mActivityComponent:Landroid/content/ComponentName;

    .line 375
    iput-boolean p4, p0, Lcom/android/server/wm/AppWindowToken;->mVoiceInteraction:Z

    .line 376
    iput-boolean p6, p0, Lcom/android/server/wm/AppWindowToken;->mFillsParent:Z

    .line 377
    new-instance v0, Landroid/view/InputApplicationHandle;

    iget-object v1, p0, Lcom/android/server/wm/AppWindowToken;->appToken:Landroid/view/IApplicationToken;

    invoke-interface {v1}, Landroid/view/IApplicationToken;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/view/InputApplicationHandle;-><init>(Landroid/os/IBinder;)V

    iput-object v0, p0, Lcom/android/server/wm/AppWindowToken;->mInputApplicationHandle:Landroid/view/InputApplicationHandle;

    .line 378
    return-void
.end method

.method private allDrawnStatesConsidered()Z
    .registers 5

    .line 1947
    iget-object v0, p0, Lcom/android/server/wm/AppWindowToken;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowList;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    .local v0, "i":I
    :goto_8
    if-ltz v0, :cond_23

    .line 1948
    iget-object v2, p0, Lcom/android/server/wm/AppWindowToken;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v2, v0}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/WindowState;

    .line 1949
    .local v2, "child":Lcom/android/server/wm/WindowState;
    invoke-virtual {v2}, Lcom/android/server/wm/WindowState;->mightAffectAllDrawn()Z

    move-result v3

    if-eqz v3, :cond_20

    invoke-virtual {v2}, Lcom/android/server/wm/WindowState;->getDrawnStateEvaluated()Z

    move-result v3

    if-nez v3, :cond_20

    .line 1950
    const/4 v1, 0x0

    return v1

    .line 1947
    .end local v2  # "child":Lcom/android/server/wm/WindowState;
    :cond_20
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    .line 1953
    .end local v0  # "i":I
    :cond_23
    return v1
.end method

.method private calculateCompatBoundsTransformation(Landroid/content/res/Configuration;)V
    .registers 15
    .param p1, "newParentConfig"  # Landroid/content/res/Configuration;

    .line 1858
    iget-object v0, p1, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v0}, Landroid/app/WindowConfiguration;->getAppBounds()Landroid/graphics/Rect;

    move-result-object v0

    .line 1859
    .local v0, "parentAppBounds":Landroid/graphics/Rect;
    iget-object v1, p1, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v1}, Landroid/app/WindowConfiguration;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    .line 1860
    .local v1, "parentBounds":Landroid/graphics/Rect;
    if-eqz v0, :cond_10

    move-object v2, v0

    goto :goto_11

    :cond_10
    move-object v2, v1

    .line 1861
    .local v2, "viewportBounds":Landroid/graphics/Rect;
    :goto_11
    invoke-virtual {p0}, Lcom/android/server/wm/AppWindowToken;->getWindowConfiguration()Landroid/app/WindowConfiguration;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/WindowConfiguration;->getAppBounds()Landroid/graphics/Rect;

    move-result-object v3

    .line 1862
    .local v3, "appBounds":Landroid/graphics/Rect;
    if-eqz v3, :cond_1d

    move-object v4, v3

    goto :goto_21

    :cond_1d
    invoke-virtual {p0}, Lcom/android/server/wm/AppWindowToken;->getResolvedOverrideBounds()Landroid/graphics/Rect;

    move-result-object v4

    .line 1863
    .local v4, "contentBounds":Landroid/graphics/Rect;
    :goto_21
    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v5

    int-to-float v5, v5

    .line 1864
    .local v5, "contentW":F
    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v6

    int-to-float v6, v6

    .line 1865
    .local v6, "contentH":F
    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v7

    int-to-float v7, v7

    .line 1866
    .local v7, "viewportW":F
    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v8

    int-to-float v8, v8

    .line 1868
    .local v8, "viewportH":F
    cmpg-float v9, v5, v7

    const/high16 v10, 0x3f800000  # 1.0f

    if-gtz v9, :cond_41

    cmpg-float v9, v6, v8

    if-gtz v9, :cond_41

    .line 1869
    move v9, v10

    goto :goto_49

    :cond_41
    div-float v9, v7, v5

    div-float v11, v8, v6

    invoke-static {v9, v11}, Ljava/lang/Math;->min(FF)F

    move-result v9

    :goto_49
    iput v9, p0, Lcom/android/server/wm/AppWindowToken;->mSizeCompatScale:F

    .line 1870
    iget v9, p0, Lcom/android/server/wm/AppWindowToken;->mSizeCompatScale:F

    mul-float/2addr v9, v5

    sub-float v9, v7, v9

    add-float/2addr v9, v10

    const/high16 v10, 0x3f000000  # 0.5f

    mul-float/2addr v9, v10

    float-to-int v9, v9

    iget v10, v2, Landroid/graphics/Rect;->left:I

    add-int/2addr v9, v10

    .line 1873
    .local v9, "offsetX":I
    iget-object v10, p0, Lcom/android/server/wm/AppWindowToken;->mSizeCompatBounds:Landroid/graphics/Rect;

    if-nez v10, :cond_63

    .line 1874
    new-instance v10, Landroid/graphics/Rect;

    invoke-direct {v10}, Landroid/graphics/Rect;-><init>()V

    iput-object v10, p0, Lcom/android/server/wm/AppWindowToken;->mSizeCompatBounds:Landroid/graphics/Rect;

    .line 1876
    :cond_63
    iget-object v10, p0, Lcom/android/server/wm/AppWindowToken;->mSizeCompatBounds:Landroid/graphics/Rect;

    invoke-virtual {v10, v4}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 1877
    iget-object v10, p0, Lcom/android/server/wm/AppWindowToken;->mSizeCompatBounds:Landroid/graphics/Rect;

    const/4 v11, 0x0

    invoke-virtual {v10, v11, v11}, Landroid/graphics/Rect;->offsetTo(II)V

    .line 1878
    iget-object v10, p0, Lcom/android/server/wm/AppWindowToken;->mSizeCompatBounds:Landroid/graphics/Rect;

    iget v11, p0, Lcom/android/server/wm/AppWindowToken;->mSizeCompatScale:F

    invoke-virtual {v10, v11}, Landroid/graphics/Rect;->scale(F)V

    .line 1880
    iget-object v10, p0, Lcom/android/server/wm/AppWindowToken;->mSizeCompatBounds:Landroid/graphics/Rect;

    iget v11, v1, Landroid/graphics/Rect;->top:I

    iput v11, v10, Landroid/graphics/Rect;->top:I

    .line 1882
    iget-object v10, p0, Lcom/android/server/wm/AppWindowToken;->mSizeCompatBounds:Landroid/graphics/Rect;

    iget v11, v10, Landroid/graphics/Rect;->bottom:I

    iget v12, v2, Landroid/graphics/Rect;->top:I

    add-int/2addr v11, v12

    iput v11, v10, Landroid/graphics/Rect;->bottom:I

    .line 1883
    iget-object v10, p0, Lcom/android/server/wm/AppWindowToken;->mSizeCompatBounds:Landroid/graphics/Rect;

    iget v11, v10, Landroid/graphics/Rect;->left:I

    add-int/2addr v11, v9

    iput v11, v10, Landroid/graphics/Rect;->left:I

    .line 1884
    iget-object v10, p0, Lcom/android/server/wm/AppWindowToken;->mSizeCompatBounds:Landroid/graphics/Rect;

    iget v11, v10, Landroid/graphics/Rect;->right:I

    add-int/2addr v11, v9

    iput v11, v10, Landroid/graphics/Rect;->right:I

    .line 1885
    return-void
.end method

.method private clearChangeLeash(Landroid/view/SurfaceControl$Transaction;Z)V
    .registers 6
    .param p1, "t"  # Landroid/view/SurfaceControl$Transaction;
    .param p2, "cancel"  # Z

    .line 3008
    iget-object v0, p0, Lcom/android/server/wm/AppWindowToken;->mTransitChangeLeash:Landroid/view/SurfaceControl;

    if-nez v0, :cond_5

    .line 3009
    return-void

    .line 3011
    :cond_5
    if-eqz p2, :cond_1d

    .line 3012
    invoke-direct {p0}, Lcom/android/server/wm/AppWindowToken;->clearThumbnail()V

    .line 3013
    invoke-virtual {p0}, Lcom/android/server/wm/AppWindowToken;->getSurfaceControl()Landroid/view/SurfaceControl;

    move-result-object v0

    .line 3014
    .local v0, "sc":Landroid/view/SurfaceControl;
    invoke-virtual {p0}, Lcom/android/server/wm/AppWindowToken;->getParentSurfaceControl()Landroid/view/SurfaceControl;

    move-result-object v1

    .line 3016
    .local v1, "parentSc":Landroid/view/SurfaceControl;
    if-eqz v1, :cond_1d

    if-eqz v0, :cond_1d

    .line 3017
    invoke-virtual {p0}, Lcom/android/server/wm/AppWindowToken;->getParentSurfaceControl()Landroid/view/SurfaceControl;

    move-result-object v2

    invoke-virtual {p1, v0, v2}, Landroid/view/SurfaceControl$Transaction;->reparent(Landroid/view/SurfaceControl;Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    .line 3020
    .end local v0  # "sc":Landroid/view/SurfaceControl;
    .end local v1  # "parentSc":Landroid/view/SurfaceControl;
    :cond_1d
    iget-object v0, p0, Lcom/android/server/wm/AppWindowToken;->mTransitChangeLeash:Landroid/view/SurfaceControl;

    invoke-virtual {p1, v0}, Landroid/view/SurfaceControl$Transaction;->hide(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    .line 3021
    iget-object v0, p0, Lcom/android/server/wm/AppWindowToken;->mTransitChangeLeash:Landroid/view/SurfaceControl;

    invoke-virtual {p1, v0}, Landroid/view/SurfaceControl$Transaction;->remove(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    .line 3022
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/wm/AppWindowToken;->mTransitChangeLeash:Landroid/view/SurfaceControl;

    .line 3023
    if-eqz p2, :cond_2f

    .line 3024
    invoke-virtual {p0, p1}, Lcom/android/server/wm/AppWindowToken;->onAnimationLeashLost(Landroid/view/SurfaceControl$Transaction;)V

    .line 3026
    :cond_2f
    return-void
.end method

.method private clearThumbnail()V
    .registers 2

    .line 3125
    iget-object v0, p0, Lcom/android/server/wm/AppWindowToken;->mThumbnail:Lcom/android/server/wm/AppWindowThumbnail;

    if-nez v0, :cond_5

    .line 3126
    return-void

    .line 3128
    :cond_5
    invoke-virtual {v0}, Lcom/android/server/wm/AppWindowThumbnail;->destroy()V

    .line 3129
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/wm/AppWindowToken;->mThumbnail:Lcom/android/server/wm/AppWindowThumbnail;

    .line 3130
    return-void
.end method

.method private createAnimationBoundsLayer(Landroid/view/SurfaceControl$Transaction;)Landroid/view/SurfaceControl;
    .registers 5
    .param p1, "t"  # Landroid/view/SurfaceControl$Transaction;

    .line 2589
    sget-boolean v0, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_APP_TRANSITIONS:Z

    if-nez v0, :cond_8

    sget-boolean v0, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_ANIM:Z

    if-eqz v0, :cond_f

    :cond_8
    const-string v0, "WindowManager"

    const-string v1, "Creating animation bounds layer"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2590
    :cond_f
    invoke-virtual {p0}, Lcom/android/server/wm/AppWindowToken;->makeAnimationLeash()Landroid/view/SurfaceControl$Builder;

    move-result-object v0

    .line 2591
    invoke-virtual {p0}, Lcom/android/server/wm/AppWindowToken;->getAnimationLeashParent()Landroid/view/SurfaceControl;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/SurfaceControl$Builder;->setParent(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Builder;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 2592
    invoke-virtual {p0}, Lcom/android/server/wm/AppWindowToken;->getSurfaceControl()Landroid/view/SurfaceControl;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " - animation-bounds"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/SurfaceControl$Builder;->setName(Ljava/lang/String;)Landroid/view/SurfaceControl$Builder;

    move-result-object v0

    .line 2593
    .local v0, "builder":Landroid/view/SurfaceControl$Builder;
    invoke-virtual {v0}, Landroid/view/SurfaceControl$Builder;->build()Landroid/view/SurfaceControl;

    move-result-object v1

    .line 2594
    .local v1, "boundsLayer":Landroid/view/SurfaceControl;
    invoke-virtual {p1, v1}, Landroid/view/SurfaceControl$Transaction;->show(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    .line 2595
    return-object v1
.end method

.method private createSnapshot(Landroid/app/ActivityManager$TaskSnapshot;)Z
    .registers 4
    .param p1, "snapshot"  # Landroid/app/ActivityManager$TaskSnapshot;

    .line 2235
    if-nez p1, :cond_4

    .line 2236
    const/4 v0, 0x0

    return v0

    .line 2239
    :cond_4
    sget-boolean v0, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_STARTING_WINDOW:Z

    if-eqz v0, :cond_f

    const-string v0, "WindowManager"

    const-string v1, "Creating SnapshotStartingData"

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2240
    :cond_f
    new-instance v0, Lcom/android/server/wm/SnapshotStartingData;

    iget-object v1, p0, Lcom/android/server/wm/AppWindowToken;->mWmService:Lcom/android/server/wm/WindowManagerService;

    invoke-direct {v0, v1, p1}, Lcom/android/server/wm/SnapshotStartingData;-><init>(Lcom/android/server/wm/WindowManagerService;Landroid/app/ActivityManager$TaskSnapshot;)V

    iput-object v0, p0, Lcom/android/server/wm/AppWindowToken;->mStartingData:Lcom/android/server/wm/StartingData;

    .line 2241
    invoke-virtual {p0}, Lcom/android/server/wm/AppWindowToken;->scheduleAddStartingWindow()V

    .line 2242
    const/4 v0, 0x1

    return v0
.end method

.method private destroySurfaces(Z)V
    .registers 8
    .param p1, "cleanupOnResume"  # Z

    .line 985
    const/4 v0, 0x0

    .line 988
    .local v0, "destroyedSomething":Z
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/android/server/wm/AppWindowToken;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 989
    .local v1, "children":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wm/WindowState;>;"
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    .local v2, "i":I
    :goto_e
    if-ltz v2, :cond_20

    .line 990
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/wm/WindowState;

    .line 991
    .local v4, "win":Lcom/android/server/wm/WindowState;
    iget-boolean v5, p0, Lcom/android/server/wm/AppWindowToken;->mAppStopped:Z

    invoke-virtual {v4, p1, v5}, Lcom/android/server/wm/WindowState;->destroySurface(ZZ)Z

    move-result v5

    or-int/2addr v0, v5

    .line 989
    .end local v4  # "win":Lcom/android/server/wm/WindowState;
    add-int/lit8 v2, v2, -0x1

    goto :goto_e

    .line 993
    .end local v2  # "i":I
    :cond_20
    if-eqz v0, :cond_2d

    .line 994
    invoke-virtual {p0}, Lcom/android/server/wm/AppWindowToken;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v2

    .line 995
    .local v2, "dc":Lcom/android/server/wm/DisplayContent;
    invoke-virtual {v2, v3}, Lcom/android/server/wm/DisplayContent;->assignWindowLayers(Z)V

    .line 996
    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Lcom/android/server/wm/AppWindowToken;->updateLetterboxSurface(Lcom/android/server/wm/WindowState;)V

    .line 998
    .end local v2  # "dc":Lcom/android/server/wm/DisplayContent;
    :cond_2d
    return-void
.end method

.method private freezeBounds()V
    .registers 5

    .line 1394
    invoke-virtual {p0}, Lcom/android/server/wm/AppWindowToken;->getTask()Lcom/android/server/wm/Task;

    move-result-object v0

    .line 1395
    .local v0, "task":Lcom/android/server/wm/Task;
    iget-object v1, p0, Lcom/android/server/wm/AppWindowToken;->mFrozenBounds:Ljava/util/ArrayDeque;

    new-instance v2, Landroid/graphics/Rect;

    iget-object v3, v0, Lcom/android/server/wm/Task;->mPreparedFrozenBounds:Landroid/graphics/Rect;

    invoke-direct {v2, v3}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayDeque;->offer(Ljava/lang/Object;)Z

    .line 1397
    iget-object v1, v0, Lcom/android/server/wm/Task;->mPreparedFrozenMergedConfig:Landroid/content/res/Configuration;

    sget-object v2, Landroid/content/res/Configuration;->EMPTY:Landroid/content/res/Configuration;

    invoke-virtual {v1, v2}, Landroid/content/res/Configuration;->equals(Landroid/content/res/Configuration;)Z

    move-result v1

    if-eqz v1, :cond_29

    .line 1399
    iget-object v1, p0, Lcom/android/server/wm/AppWindowToken;->mFrozenMergedConfig:Ljava/util/ArrayDeque;

    new-instance v2, Landroid/content/res/Configuration;

    invoke-virtual {v0}, Lcom/android/server/wm/Task;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/content/res/Configuration;-><init>(Landroid/content/res/Configuration;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayDeque;->offer(Ljava/lang/Object;)Z

    goto :goto_35

    .line 1401
    :cond_29
    iget-object v1, p0, Lcom/android/server/wm/AppWindowToken;->mFrozenMergedConfig:Ljava/util/ArrayDeque;

    new-instance v2, Landroid/content/res/Configuration;

    iget-object v3, v0, Lcom/android/server/wm/Task;->mPreparedFrozenMergedConfig:Landroid/content/res/Configuration;

    invoke-direct {v2, v3}, Landroid/content/res/Configuration;-><init>(Landroid/content/res/Configuration;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayDeque;->offer(Ljava/lang/Object;)Z

    .line 1404
    :goto_35
    iget-object v1, v0, Lcom/android/server/wm/Task;->mPreparedFrozenMergedConfig:Landroid/content/res/Configuration;

    invoke-virtual {v1}, Landroid/content/res/Configuration;->unset()V

    .line 1405
    return-void
.end method

.method private getStartingWindowType(ZZZZZZLandroid/app/ActivityManager$TaskSnapshot;)I
    .registers 11
    .param p1, "newTask"  # Z
    .param p2, "taskSwitch"  # Z
    .param p3, "processRunning"  # Z
    .param p4, "allowTaskSnapshot"  # Z
    .param p5, "activityCreated"  # Z
    .param p6, "fromRecents"  # Z
    .param p7, "snapshot"  # Landroid/app/ActivityManager$TaskSnapshot;

    .line 2320
    invoke-virtual {p0}, Lcom/android/server/wm/AppWindowToken;->isMzWindowMode()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    .line 2321
    return v1

    .line 2323
    :cond_8
    invoke-virtual {p0}, Lcom/android/server/wm/AppWindowToken;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    iget-object v0, v0, Lcom/android/server/wm/DisplayContent;->mAppTransition:Lcom/android/server/wm/AppTransition;

    invoke-virtual {v0}, Lcom/android/server/wm/AppTransition;->getAppTransition()I

    move-result v0

    const/16 v2, 0x13

    if-ne v0, v2, :cond_17

    .line 2328
    return v1

    .line 2329
    :cond_17
    const/4 v0, 0x2

    if-nez p1, :cond_3d

    if-eqz p3, :cond_3d

    if-eqz p2, :cond_21

    if-nez p5, :cond_21

    goto :goto_3d

    .line 2331
    :cond_21
    if-eqz p2, :cond_3c

    if-eqz p4, :cond_3c

    .line 2332
    iget-object v2, p0, Lcom/android/server/wm/AppWindowToken;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-boolean v2, v2, Lcom/android/server/wm/WindowManagerService;->mLowRamTaskSnapshotsAndRecents:Z

    if-eqz v2, :cond_2c

    .line 2335
    return v0

    .line 2337
    :cond_2c
    if-nez p7, :cond_2f

    goto :goto_3b

    .line 2338
    :cond_2f
    invoke-direct {p0, p7}, Lcom/android/server/wm/AppWindowToken;->snapshotOrientationSameAsTask(Landroid/app/ActivityManager$TaskSnapshot;)Z

    move-result v1

    if-nez v1, :cond_3a

    if-eqz p6, :cond_38

    goto :goto_3a

    .line 2339
    :cond_38
    move v1, v0

    goto :goto_3b

    :cond_3a
    :goto_3a
    const/4 v1, 0x1

    .line 2337
    :goto_3b
    return v1

    .line 2341
    :cond_3c
    return v1

    .line 2330
    :cond_3d
    :goto_3d
    return v0
.end method

.method private hasNonDefaultColorWindow()Z
    .registers 3

    .line 3374
    sget-object v0, Lcom/android/server/wm/-$$Lambda$AppWindowToken$fPUApbLk_vYcjY_mIHRDEOCqbZU;->INSTANCE:Lcom/android/server/wm/-$$Lambda$AppWindowToken$fPUApbLk_vYcjY_mIHRDEOCqbZU;

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/android/server/wm/AppWindowToken;->forAllWindows(Lcom/android/internal/util/ToBooleanFunction;Z)Z

    move-result v0

    return v0
.end method

.method private initializeChangeTransition(Landroid/graphics/Rect;)V
    .registers 12
    .param p1, "startBounds"  # Landroid/graphics/Rect;

    .line 1789
    iget-object v0, p0, Lcom/android/server/wm/AppWindowToken;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    const/16 v1, 0x1b

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, v2, v2}, Lcom/android/server/wm/DisplayContent;->prepareAppTransition(IZIZ)V

    .line 1791
    iget-object v0, p0, Lcom/android/server/wm/AppWindowToken;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v0, v0, Lcom/android/server/wm/DisplayContent;->mChangingApps:Landroid/util/ArraySet;

    invoke-virtual {v0, p0}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 1792
    iget-object v0, p0, Lcom/android/server/wm/AppWindowToken;->mTransitStartRect:Landroid/graphics/Rect;

    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 1794
    invoke-virtual {p0}, Lcom/android/server/wm/AppWindowToken;->makeAnimationLeash()Landroid/view/SurfaceControl$Builder;

    move-result-object v0

    .line 1795
    invoke-virtual {p0}, Lcom/android/server/wm/AppWindowToken;->getAnimationLeashParent()Landroid/view/SurfaceControl;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/view/SurfaceControl$Builder;->setParent(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Builder;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 1796
    invoke-virtual {p0}, Lcom/android/server/wm/AppWindowToken;->getSurfaceControl()Landroid/view/SurfaceControl;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " - interim-change-leash"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/view/SurfaceControl$Builder;->setName(Ljava/lang/String;)Landroid/view/SurfaceControl$Builder;

    move-result-object v0

    .line 1797
    .local v0, "builder":Landroid/view/SurfaceControl$Builder;
    invoke-virtual {v0}, Landroid/view/SurfaceControl$Builder;->build()Landroid/view/SurfaceControl;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/wm/AppWindowToken;->mTransitChangeLeash:Landroid/view/SurfaceControl;

    .line 1798
    invoke-virtual {p0}, Lcom/android/server/wm/AppWindowToken;->getPendingTransaction()Landroid/view/SurfaceControl$Transaction;

    move-result-object v2

    .line 1800
    .local v2, "t":Landroid/view/SurfaceControl$Transaction;
    iget v3, p0, Lcom/android/server/wm/AppWindowToken;->mPrevWinMode:I

    const/4 v4, 0x6

    if-eq v3, v4, :cond_61

    .line 1812
    iget-object v3, p0, Lcom/android/server/wm/AppWindowToken;->mTransitChangeLeash:Landroid/view/SurfaceControl;

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v4

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v5

    invoke-virtual {v2, v3, v4, v5}, Landroid/view/SurfaceControl$Transaction;->setWindowCrop(Landroid/view/SurfaceControl;II)Landroid/view/SurfaceControl$Transaction;

    .line 1813
    iget-object v3, p0, Lcom/android/server/wm/AppWindowToken;->mTransitChangeLeash:Landroid/view/SurfaceControl;

    iget v4, p1, Landroid/graphics/Rect;->left:I

    int-to-float v4, v4

    iget v5, p1, Landroid/graphics/Rect;->top:I

    int-to-float v5, v5

    invoke-virtual {v2, v3, v4, v5}, Landroid/view/SurfaceControl$Transaction;->setPosition(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    goto :goto_a4

    .line 1802
    :cond_61
    invoke-virtual {p0}, Lcom/android/server/wm/AppWindowToken;->getStack()Lcom/android/server/wm/TaskStack;

    move-result-object v3

    iget-object v3, v3, Lcom/android/server/wm/TaskStack;->mDeferHideDimTokens:Ljava/util/List;

    invoke-interface {v3, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1803
    iget-object v3, p0, Lcom/android/server/wm/AppWindowToken;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v3, Lcom/android/server/wm/WindowManagerService;->mWmsExtInternal:Lcom/android/server/wm/FlymeWindowManagerInternal;

    invoke-virtual {v3}, Lcom/android/server/wm/FlymeWindowManagerInternal;->getWindowModeWindowFrame()Lcom/android/server/wm/FlymeWindowModeFrame;

    move-result-object v9

    .line 1804
    .local v9, "windowModeFrame":Lcom/android/server/wm/FlymeWindowModeFrame;
    iget-object v4, p0, Lcom/android/server/wm/AppWindowToken;->mTransitChangeLeash:Landroid/view/SurfaceControl;

    invoke-virtual {v9}, Lcom/android/server/wm/FlymeWindowModeFrame;->getScale()F

    move-result v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual {v9}, Lcom/android/server/wm/FlymeWindowModeFrame;->getScale()F

    move-result v8

    move-object v3, v2

    invoke-virtual/range {v3 .. v8}, Landroid/view/SurfaceControl$Transaction;->setMatrix(Landroid/view/SurfaceControl;FFFF)Landroid/view/SurfaceControl$Transaction;

    .line 1805
    invoke-virtual {v9}, Lcom/android/server/wm/FlymeWindowModeFrame;->getDisplayBound()Landroid/graphics/Rect;

    move-result-object v3

    .line 1806
    .local v3, "rect":Landroid/graphics/Rect;
    iget-object v4, p0, Lcom/android/server/wm/AppWindowToken;->mTransitChangeLeash:Landroid/view/SurfaceControl;

    invoke-virtual {v9}, Lcom/android/server/wm/FlymeWindowModeFrame;->getVisibleFrame()Landroid/graphics/Rect;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Landroid/view/SurfaceControl$Transaction;->setWindowCrop(Landroid/view/SurfaceControl;Landroid/graphics/Rect;)Landroid/view/SurfaceControl$Transaction;

    .line 1807
    iget-object v4, p0, Lcom/android/server/wm/AppWindowToken;->mTransitChangeLeash:Landroid/view/SurfaceControl;

    iget v5, v3, Landroid/graphics/Rect;->left:I

    int-to-float v5, v5

    iget v6, v3, Landroid/graphics/Rect;->top:I

    int-to-float v6, v6

    invoke-virtual {v2, v4, v5, v6}, Landroid/view/SurfaceControl$Transaction;->setPosition(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    .line 1808
    iget-object v4, p0, Lcom/android/server/wm/AppWindowToken;->mTransitChangeLeash:Landroid/view/SurfaceControl;

    invoke-virtual {v9}, Lcom/android/server/wm/FlymeWindowModeFrame;->getCornerRadius()F

    move-result v5

    invoke-virtual {v2, v4, v5}, Landroid/view/SurfaceControl$Transaction;->setCornerRadius(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;

    .line 1810
    .end local v3  # "rect":Landroid/graphics/Rect;
    .end local v9  # "windowModeFrame":Lcom/android/server/wm/FlymeWindowModeFrame;
    nop

    .line 1817
    :goto_a4
    iget-object v3, p0, Lcom/android/server/wm/AppWindowToken;->mTransitChangeLeash:Landroid/view/SurfaceControl;

    invoke-virtual {v2, v3}, Landroid/view/SurfaceControl$Transaction;->show(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    .line 1818
    invoke-virtual {p0}, Lcom/android/server/wm/AppWindowToken;->getSurfaceControl()Landroid/view/SurfaceControl;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/wm/AppWindowToken;->mTransitChangeLeash:Landroid/view/SurfaceControl;

    invoke-virtual {v2, v3, v4}, Landroid/view/SurfaceControl$Transaction;->reparent(Landroid/view/SurfaceControl;Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    .line 1819
    iget-object v3, p0, Lcom/android/server/wm/AppWindowToken;->mTransitChangeLeash:Landroid/view/SurfaceControl;

    invoke-virtual {p0, v2, v3}, Lcom/android/server/wm/AppWindowToken;->onAnimationLeashCreated(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;)V

    .line 1823
    new-instance v3, Landroid/util/ArraySet;

    invoke-direct {v3}, Landroid/util/ArraySet;-><init>()V

    .line 1824
    .local v3, "activityTypes":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/Integer;>;"
    invoke-virtual {p0}, Lcom/android/server/wm/AppWindowToken;->getActivityType()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 1825
    iget-object v4, p0, Lcom/android/server/wm/AppWindowToken;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v4, v4, Lcom/android/server/wm/DisplayContent;->mAppTransitionController:Lcom/android/server/wm/AppTransitionController;

    .line 1826
    invoke-virtual {v4, p0, v1, v3}, Lcom/android/server/wm/AppTransitionController;->getRemoteAnimationOverride(Lcom/android/server/wm/AppWindowToken;ILandroid/util/ArraySet;)Landroid/view/RemoteAnimationAdapter;

    move-result-object v1

    .line 1828
    .local v1, "adapter":Landroid/view/RemoteAnimationAdapter;
    if-eqz v1, :cond_d8

    invoke-virtual {v1}, Landroid/view/RemoteAnimationAdapter;->getChangeNeedsSnapshot()Z

    move-result v4

    if-nez v4, :cond_d8

    .line 1829
    return-void

    .line 1832
    :cond_d8
    invoke-virtual {p0}, Lcom/android/server/wm/AppWindowToken;->getTask()Lcom/android/server/wm/Task;

    move-result-object v4

    .line 1833
    .local v4, "task":Lcom/android/server/wm/Task;
    iget-object v5, p0, Lcom/android/server/wm/AppWindowToken;->mThumbnail:Lcom/android/server/wm/AppWindowThumbnail;

    if-nez v5, :cond_100

    if-eqz v4, :cond_100

    invoke-virtual {p0}, Lcom/android/server/wm/AppWindowToken;->hasCommittedReparentToAnimationLeash()Z

    move-result v5

    if-nez v5, :cond_100

    .line 1834
    iget-object v5, p0, Lcom/android/server/wm/AppWindowToken;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v5, v5, Lcom/android/server/wm/WindowManagerService;->mTaskSnapshotController:Lcom/android/server/wm/TaskSnapshotController;

    const/high16 v6, 0x3f800000  # 1.0f

    .line 1835
    invoke-virtual {v5, v4, v6}, Lcom/android/server/wm/TaskSnapshotController;->createTaskSnapshot(Lcom/android/server/wm/Task;F)Landroid/view/SurfaceControl$ScreenshotGraphicBuffer;

    move-result-object v5

    .line 1837
    .local v5, "snapshot":Landroid/view/SurfaceControl$ScreenshotGraphicBuffer;
    if-eqz v5, :cond_100

    .line 1838
    new-instance v6, Lcom/android/server/wm/AppWindowThumbnail;

    invoke-virtual {v5}, Landroid/view/SurfaceControl$ScreenshotGraphicBuffer;->getGraphicBuffer()Landroid/graphics/GraphicBuffer;

    move-result-object v7

    const/4 v8, 0x1

    invoke-direct {v6, v2, p0, v7, v8}, Lcom/android/server/wm/AppWindowThumbnail;-><init>(Landroid/view/SurfaceControl$Transaction;Lcom/android/server/wm/AppWindowToken;Landroid/graphics/GraphicBuffer;Z)V

    iput-object v6, p0, Lcom/android/server/wm/AppWindowToken;->mThumbnail:Lcom/android/server/wm/AppWindowThumbnail;

    .line 1842
    .end local v5  # "snapshot":Landroid/view/SurfaceControl$ScreenshotGraphicBuffer;
    :cond_100
    return-void
.end method

.method private isReallyAnimating()Z
    .registers 2

    .line 3000
    invoke-super {p0}, Lcom/android/server/wm/WindowToken;->isSelfAnimating()Z

    move-result v0

    return v0
.end method

.method static synthetic lambda$hasNonDefaultColorWindow$7(Lcom/android/server/wm/WindowState;)Z
    .registers 2
    .param p0, "ws"  # Lcom/android/server/wm/WindowState;

    .line 3374
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {v0}, Landroid/view/WindowManager$LayoutParams;->getColorMode()I

    move-result v0

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method

.method static synthetic lambda$removeStartingWindow$4(Lcom/android/server/policy/WindowManagerPolicy$StartingSurface;)V
    .registers 4
    .param p0, "surface"  # Lcom/android/server/policy/WindowManagerPolicy$StartingSurface;

    .line 2406
    sget-boolean v0, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_STARTING_WINDOW:Z

    const-string v1, "WindowManager"

    if-eqz v0, :cond_1a

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Removing startingView="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2408
    :cond_1a
    :try_start_1a
    invoke-interface {p0}, Lcom/android/server/policy/WindowManagerPolicy$StartingSurface;->remove()V
    :try_end_1d
    .catch Ljava/lang/Exception; {:try_start_1a .. :try_end_1d} :catch_1e

    .line 2411
    goto :goto_24

    .line 2409
    :catch_1e
    move-exception v0

    .line 2410
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "Exception when removing starting window"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2412
    .end local v0  # "e":Ljava/lang/Exception;
    :goto_24
    return-void
.end method

.method static synthetic lambda$setVisibility$2(Lcom/android/server/wm/DisplayContent;Lcom/android/server/wm/WindowState;)V
    .registers 4
    .param p0, "displayContent"  # Lcom/android/server/wm/DisplayContent;
    .param p1, "w"  # Lcom/android/server/wm/WindowState;

    .line 550
    iget-object v0, p1, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    iget v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mDrawState:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_15

    .line 551
    iget-object v0, p1, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowStateAnimator;->resetDrawState()V

    .line 555
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->resetLastContentInsets()V

    .line 557
    const/4 v0, 0x1

    iput-boolean v0, p1, Lcom/android/server/wm/WindowState;->mLayoutNeeded:Z

    .line 558
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->setLayoutNeeded()V

    .line 561
    :cond_15
    return-void
.end method

.method static synthetic lambda$showAllWindowsLocked$6(Lcom/android/server/wm/WindowState;)V
    .registers 3
    .param p0, "windowState"  # Lcom/android/server/wm/WindowState;

    .line 2936
    sget-boolean v0, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_VISIBILITY:Z

    if-eqz v0, :cond_1a

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "performing show on: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WindowManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2937
    :cond_1a
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->performShowLocked()Z

    .line 2938
    return-void
.end method

.method private loadAnimation(Landroid/view/WindowManager$LayoutParams;IZZ)Landroid/view/animation/Animation;
    .registers 33
    .param p1, "lp"  # Landroid/view/WindowManager$LayoutParams;
    .param p2, "transit"  # I
    .param p3, "enter"  # Z
    .param p4, "isVoiceInteraction"  # Z

    .line 2757
    move-object/from16 v6, p0

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/AppWindowToken;->getTask()Lcom/android/server/wm/Task;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/Task;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v7

    .line 2758
    .local v7, "displayContent":Lcom/android/server/wm/DisplayContent;
    invoke-virtual {v7}, Lcom/android/server/wm/DisplayContent;->getDisplayInfo()Landroid/view/DisplayInfo;

    move-result-object v8

    .line 2759
    .local v8, "displayInfo":Landroid/view/DisplayInfo;
    iget v9, v8, Landroid/view/DisplayInfo;->appWidth:I

    .line 2760
    .local v9, "width":I
    iget v10, v8, Landroid/view/DisplayInfo;->appHeight:I

    .line 2761
    .local v10, "height":I
    sget-boolean v0, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_APP_TRANSITIONS:Z

    const-string v11, "WindowManager"

    if-nez v0, :cond_1c

    sget-boolean v0, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_ANIM:Z

    if-eqz v0, :cond_30

    :cond_1c
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "applyAnimation: atoken="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v11, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2765
    :cond_30
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/AppWindowToken;->findMainWindow()Lcom/android/server/wm/WindowState;

    move-result-object v12

    .line 2766
    .local v12, "win":Lcom/android/server/wm/WindowState;
    new-instance v0, Landroid/graphics/Rect;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1, v9, v10}, Landroid/graphics/Rect;-><init>(IIII)V

    move-object v5, v0

    .line 2767
    .local v5, "frame":Landroid/graphics/Rect;
    new-instance v0, Landroid/graphics/Rect;

    iget v2, v8, Landroid/view/DisplayInfo;->logicalWidth:I

    iget v3, v8, Landroid/view/DisplayInfo;->logicalHeight:I

    invoke-direct {v0, v1, v1, v2, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    move-object/from16 v20, v0

    .line 2769
    .local v20, "displayFrame":Landroid/graphics/Rect;
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    move-object v4, v0

    .line 2770
    .local v4, "insets":Landroid/graphics/Rect;
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    move-object v3, v0

    .line 2771
    .local v3, "stableInsets":Landroid/graphics/Rect;
    const/4 v0, 0x0

    .line 2772
    .local v0, "surfaceInsets":Landroid/graphics/Rect;
    if-eqz v12, :cond_5c

    invoke-virtual {v12}, Lcom/android/server/wm/WindowState;->inFreeformWindowingMode()Z

    move-result v2

    if-eqz v2, :cond_5c

    const/4 v1, 0x1

    :cond_5c
    move/from16 v27, v1

    .line 2773
    .local v27, "freeform":Z
    if-eqz v12, :cond_a7

    .line 2778
    if-eqz v27, :cond_6a

    .line 2779
    invoke-virtual {v12}, Lcom/android/server/wm/WindowState;->getFrameLw()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v5, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    goto :goto_99

    .line 2780
    :cond_6a
    invoke-virtual {v12}, Lcom/android/server/wm/WindowState;->isLetterboxedAppWindow()Z

    move-result v1

    if-eqz v1, :cond_7c

    .line 2781
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/AppWindowToken;->getTask()Lcom/android/server/wm/Task;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/wm/Task;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v5, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    goto :goto_99

    .line 2782
    :cond_7c
    invoke-virtual {v12}, Lcom/android/server/wm/WindowState;->isDockedResizing()Z

    move-result v1

    if-eqz v1, :cond_92

    .line 2785
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/AppWindowToken;->getTask()Lcom/android/server/wm/Task;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/wm/Task;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/wm/WindowContainer;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v5, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    goto :goto_99

    .line 2787
    :cond_92
    invoke-virtual {v12}, Lcom/android/server/wm/WindowState;->getContainingFrame()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v5, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 2789
    :goto_99
    invoke-virtual {v12}, Lcom/android/server/wm/WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    iget-object v0, v1, Landroid/view/WindowManager$LayoutParams;->surfaceInsets:Landroid/graphics/Rect;

    .line 2792
    invoke-virtual {v12, v4}, Lcom/android/server/wm/WindowState;->getContentInsets(Landroid/graphics/Rect;)V

    .line 2793
    invoke-virtual {v12, v3}, Lcom/android/server/wm/WindowState;->getStableInsets(Landroid/graphics/Rect;)V

    move-object v2, v0

    goto :goto_a8

    .line 2773
    :cond_a7
    move-object v2, v0

    .line 2796
    .end local v0  # "surfaceInsets":Landroid/graphics/Rect;
    .local v2, "surfaceInsets":Landroid/graphics/Rect;
    :goto_a8
    iget-boolean v0, v6, Lcom/android/server/wm/AppWindowToken;->mLaunchTaskBehind:Z

    if-eqz v0, :cond_af

    .line 2800
    const/4 v0, 0x0

    move v1, v0

    .end local p3  # "enter":Z
    .local v0, "enter":Z
    goto :goto_b1

    .line 2796
    .end local v0  # "enter":Z
    .restart local p3  # "enter":Z
    :cond_af
    move/from16 v1, p3

    .line 2802
    .end local p3  # "enter":Z
    .local v1, "enter":Z
    :goto_b1
    sget-boolean v0, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_APP_TRANSITIONS:Z

    if-eqz v0, :cond_ed

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Loading animation for app transition. transit="

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2803
    invoke-static/range {p2 .. p2}, Lcom/android/server/wm/AppTransition;->appTransitionToString(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v13, " enter="

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v13, " frame="

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v13, " insets="

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v13, " surfaceInsets="

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2802
    invoke-static {v11, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2805
    :cond_ed
    invoke-virtual {v7}, Lcom/android/server/wm/DisplayContent;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 2807
    .local v0, "displayConfig":Landroid/content/res/Configuration;
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/AppWindowToken;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v13

    iget-object v13, v13, Lcom/android/server/wm/DisplayContent;->mAppTransition:Lcom/android/server/wm/AppTransition;

    iget v15, v0, Landroid/content/res/Configuration;->uiMode:I

    iget v14, v0, Landroid/content/res/Configuration;->orientation:I

    .line 2809
    move-object/from16 p3, v0

    .end local v0  # "displayConfig":Landroid/content/res/Configuration;
    .local p3, "displayConfig":Landroid/content/res/Configuration;
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/AppWindowToken;->getTask()Lcom/android/server/wm/Task;

    move-result-object v0

    iget v0, v0, Lcom/android/server/wm/Task;->mTaskId:I

    .line 2807
    move/from16 v18, v14

    move-object/from16 v14, p1

    move/from16 v17, v15

    move/from16 v15, p2

    move/from16 v16, v1

    move-object/from16 v19, v5

    move-object/from16 v21, v4

    move-object/from16 v22, v2

    move-object/from16 v23, v3

    move/from16 v24, p4

    move/from16 v25, v27

    move/from16 v26, v0

    invoke-virtual/range {v13 .. v26}, Lcom/android/server/wm/AppTransition;->loadAnimation(Landroid/view/WindowManager$LayoutParams;IZIILandroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;ZZI)Landroid/view/animation/Animation;

    move-result-object v13

    .line 2810
    .local v13, "anim":Landroid/view/animation/Animation;
    iget-object v0, v6, Lcom/android/server/wm/AppWindowToken;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mWmsExtInternal:Lcom/android/server/wm/FlymeWindowManagerInternal;

    move-object/from16 v14, p3

    .end local p3  # "displayConfig":Landroid/content/res/Configuration;
    .local v14, "displayConfig":Landroid/content/res/Configuration;
    move v15, v1

    .end local v1  # "enter":Z
    .local v15, "enter":Z
    move-object/from16 v1, p0

    move-object/from16 v16, v2

    .end local v2  # "surfaceInsets":Landroid/graphics/Rect;
    .local v16, "surfaceInsets":Landroid/graphics/Rect;
    move-object v2, v13

    move-object/from16 v17, v3

    .end local v3  # "stableInsets":Landroid/graphics/Rect;
    .local v17, "stableInsets":Landroid/graphics/Rect;
    move-object v3, v14

    move-object/from16 v18, v4

    .end local v4  # "insets":Landroid/graphics/Rect;
    .local v18, "insets":Landroid/graphics/Rect;
    move/from16 v4, p2

    .end local v5  # "frame":Landroid/graphics/Rect;
    .local v19, "frame":Landroid/graphics/Rect;
    move v5, v15

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/wm/FlymeWindowManagerInternal;->applyAnimation(Lcom/android/server/wm/AppWindowToken;Landroid/view/animation/Animation;Landroid/content/res/Configuration;IZ)Landroid/view/animation/Animation;

    move-result-object v0

    .line 2812
    .local v0, "a":Landroid/view/animation/Animation;
    if-eqz v0, :cond_16d

    .line 2813
    sget-boolean v1, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_ANIM:Z

    if-eqz v1, :cond_159

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Loaded animation "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v11, v1}, Lcom/android/server/wm/WindowManagerService;->logWithStack(Ljava/lang/String;Ljava/lang/String;)V

    .line 2814
    :cond_159
    invoke-virtual/range {v19 .. v19}, Landroid/graphics/Rect;->width()I

    move-result v1

    .line 2815
    .local v1, "containingWidth":I
    invoke-virtual/range {v19 .. v19}, Landroid/graphics/Rect;->height()I

    move-result v2

    .line 2816
    .local v2, "containingHeight":I
    invoke-virtual {v0, v1, v2, v9, v10}, Landroid/view/animation/Animation;->initialize(IIII)V

    .line 2817
    iget-object v3, v6, Lcom/android/server/wm/AppWindowToken;->mWmService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v3}, Lcom/android/server/wm/WindowManagerService;->getTransitionAnimationScaleLocked()F

    move-result v3

    invoke-virtual {v0, v3}, Landroid/view/animation/Animation;->scaleCurrentDuration(F)V

    .line 2819
    .end local v1  # "containingWidth":I
    .end local v2  # "containingHeight":I
    :cond_16d
    return-object v0
.end method

.method private loadThumbnailAnimation(Landroid/graphics/GraphicBuffer;)Landroid/view/animation/Animation;
    .registers 15
    .param p1, "thumbnailHeader"  # Landroid/graphics/GraphicBuffer;

    .line 3109
    iget-object v0, p0, Lcom/android/server/wm/AppWindowToken;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->getDisplayInfo()Landroid/view/DisplayInfo;

    move-result-object v0

    .line 3114
    .local v0, "displayInfo":Landroid/view/DisplayInfo;
    invoke-virtual {p0}, Lcom/android/server/wm/AppWindowToken;->findMainWindow()Lcom/android/server/wm/WindowState;

    move-result-object v1

    .line 3115
    .local v1, "win":Lcom/android/server/wm/WindowState;
    if-eqz v1, :cond_12

    invoke-virtual {v1}, Lcom/android/server/wm/WindowState;->getContentFrameLw()Landroid/graphics/Rect;

    move-result-object v2

    move-object v7, v2

    goto :goto_1d

    .line 3116
    :cond_12
    new-instance v2, Landroid/graphics/Rect;

    iget v3, v0, Landroid/view/DisplayInfo;->appWidth:I

    iget v4, v0, Landroid/view/DisplayInfo;->appHeight:I

    const/4 v5, 0x0

    invoke-direct {v2, v5, v5, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    move-object v7, v2

    :goto_1d
    nop

    .line 3117
    .local v7, "appRect":Landroid/graphics/Rect;
    if-eqz v1, :cond_25

    invoke-virtual {v1}, Lcom/android/server/wm/WindowState;->getContentInsets()Landroid/graphics/Rect;

    move-result-object v2

    goto :goto_26

    :cond_25
    const/4 v2, 0x0

    :goto_26
    move-object v8, v2

    .line 3118
    .local v8, "insets":Landroid/graphics/Rect;
    iget-object v2, p0, Lcom/android/server/wm/AppWindowToken;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v2}, Lcom/android/server/wm/DisplayContent;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    .line 3119
    .local v2, "displayConfig":Landroid/content/res/Configuration;
    invoke-virtual {p0}, Lcom/android/server/wm/AppWindowToken;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v3

    iget-object v6, v3, Lcom/android/server/wm/DisplayContent;->mAppTransition:Lcom/android/server/wm/AppTransition;

    .line 3120
    invoke-virtual {p0}, Lcom/android/server/wm/AppWindowToken;->getTask()Lcom/android/server/wm/Task;

    move-result-object v3

    iget v10, v3, Lcom/android/server/wm/Task;->mTaskId:I

    iget v11, v2, Landroid/content/res/Configuration;->uiMode:I

    iget v12, v2, Landroid/content/res/Configuration;->orientation:I

    .line 3119
    move-object v9, p1

    invoke-virtual/range {v6 .. v12}, Lcom/android/server/wm/AppTransition;->createThumbnailAspectScaleAnimationLocked(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/GraphicBuffer;III)Landroid/view/animation/Animation;

    move-result-object v3

    return-object v3
.end method

.method private onWindowsGone()V
    .registers 3

    .line 452
    iget-object v0, p0, Lcom/android/server/wm/AppWindowToken;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    if-nez v0, :cond_5

    .line 453
    return-void

    .line 455
    :cond_5
    sget-boolean v0, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_VISIBILITY:Z

    if-eqz v0, :cond_23

    .line 456
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Reporting gone in "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/wm/AppWindowToken;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    iget-object v1, v1, Lcom/android/server/wm/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WindowManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 458
    :cond_23
    iget-object v0, p0, Lcom/android/server/wm/AppWindowToken;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityRecord;->onWindowsGone()V

    .line 459
    return-void
.end method

.method private onWindowsVisible()V
    .registers 3

    .line 462
    iget-object v0, p0, Lcom/android/server/wm/AppWindowToken;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    if-nez v0, :cond_5

    .line 463
    return-void

    .line 465
    :cond_5
    sget-boolean v0, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_VISIBILITY:Z

    if-eqz v0, :cond_23

    .line 466
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Reporting visible in "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/wm/AppWindowToken;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    iget-object v1, v1, Lcom/android/server/wm/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WindowManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 468
    :cond_23
    iget-object v0, p0, Lcom/android/server/wm/AppWindowToken;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityRecord;->onWindowsVisible()V

    .line 469
    return-void
.end method

.method private reportDescendantOrientationChangeIfNeeded()V
    .registers 3

    .line 774
    iget-object v0, p0, Lcom/android/server/wm/AppWindowToken;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityRecord;->getRequestedConfigurationOrientation()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/server/wm/AppWindowToken;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    if-eq v0, v1, :cond_2c

    .line 775
    invoke-virtual {p0}, Lcom/android/server/wm/AppWindowToken;->getOrientationIgnoreVisibility()I

    move-result v0

    const/4 v1, -0x2

    if-ne v0, v1, :cond_16

    goto :goto_2c

    .line 780
    :cond_16
    iget-object v0, p0, Lcom/android/server/wm/AppWindowToken;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    iget-object v1, v0, Lcom/android/server/wm/ActivityRecord;->app:Lcom/android/server/wm/WindowProcessController;

    invoke-virtual {v0, v1}, Lcom/android/server/wm/ActivityRecord;->mayFreezeScreenLocked(Lcom/android/server/wm/WindowProcessController;)Z

    move-result v0

    if-eqz v0, :cond_25

    .line 781
    iget-object v0, p0, Lcom/android/server/wm/AppWindowToken;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    iget-object v0, v0, Lcom/android/server/wm/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    goto :goto_26

    :cond_25
    const/4 v0, 0x0

    .line 782
    .local v0, "freezeToken":Landroid/os/IBinder;
    :goto_26
    iget-object v1, p0, Lcom/android/server/wm/AppWindowToken;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {p0, v0, v1}, Lcom/android/server/wm/AppWindowToken;->onDescendantOrientationChanged(Landroid/os/IBinder;Lcom/android/server/wm/ConfigurationContainer;)Z

    .line 783
    return-void

    .line 776
    .end local v0  # "freezeToken":Landroid/os/IBinder;
    :cond_2c
    :goto_2c
    return-void
.end method

.method private shouldStartChangeTransition(II)Z
    .registers 10
    .param p1, "prevWinMode"  # I
    .param p2, "newWinMode"  # I

    .line 1753
    invoke-virtual {p0}, Lcom/android/server/wm/AppWindowToken;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    iget-object v0, v0, Lcom/android/server/wm/DisplayContent;->mAppTransition:Lcom/android/server/wm/AppTransition;

    invoke-virtual {v0}, Lcom/android/server/wm/AppTransition;->getAppTransition()I

    move-result v0

    .line 1754
    .local v0, "appTransition":I
    invoke-static {v0}, Lcom/android/server/wm/AppTransition;->isChangeTransit(I)Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v1, :cond_20

    invoke-virtual {p0}, Lcom/android/server/wm/AppWindowToken;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v1

    iget-object v1, v1, Lcom/android/server/wm/DisplayContent;->mAppTransition:Lcom/android/server/wm/AppTransition;

    invoke-virtual {v1}, Lcom/android/server/wm/AppTransition;->isTransitionSet()Z

    move-result v1

    if-eqz v1, :cond_20

    move v1, v2

    goto :goto_21

    :cond_20
    move v1, v3

    .line 1755
    .local v1, "otherTransition":Z
    :goto_21
    iget-object v4, p0, Lcom/android/server/wm/AppWindowToken;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-boolean v4, v4, Lcom/android/server/wm/WindowManagerService;->mDisableTransitionAnimation:Z

    if-nez v4, :cond_b5

    .line 1756
    invoke-virtual {p0}, Lcom/android/server/wm/AppWindowToken;->isVisible()Z

    move-result v4

    if-eqz v4, :cond_b5

    if-nez v1, :cond_b5

    .line 1758
    invoke-virtual {p0}, Lcom/android/server/wm/AppWindowToken;->getSurfaceControl()Landroid/view/SurfaceControl;

    move-result-object v4

    if-nez v4, :cond_37

    goto/16 :goto_b5

    .line 1765
    :cond_37
    iput p1, p0, Lcom/android/server/wm/AppWindowToken;->mPrevWinMode:I

    .line 1766
    const/4 v4, 0x6

    if-ne p1, v4, :cond_3e

    move v5, v2

    goto :goto_3f

    :cond_3e
    move v5, v3

    :goto_3f
    if-ne p2, v4, :cond_43

    move v4, v2

    goto :goto_44

    :cond_43
    move v4, v3

    :goto_44
    if-eq v5, v4, :cond_48

    move v4, v2

    goto :goto_49

    :cond_48
    move v4, v3

    .line 1767
    .local v4, "mzWindowModeChange":Z
    :goto_49
    if-eqz v4, :cond_5f

    iget-object v5, p0, Lcom/android/server/wm/AppWindowToken;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v5}, Lcom/android/server/wm/ActivityRecord;->getTaskRecord()Lcom/android/server/wm/TaskRecord;

    move-result-object v5

    if-eqz v5, :cond_5f

    iget-object v5, p0, Lcom/android/server/wm/AppWindowToken;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v5}, Lcom/android/server/wm/ActivityRecord;->getTaskRecord()Lcom/android/server/wm/TaskRecord;

    move-result-object v5

    iget-boolean v5, v5, Lcom/android/server/wm/TaskRecord;->hasBeenVisible:Z

    if-eqz v5, :cond_5f

    move v5, v2

    goto :goto_60

    :cond_5f
    move v5, v3

    :goto_60
    move v4, v5

    .line 1768
    if-eqz v4, :cond_7f

    iget-object v5, p0, Lcom/android/server/wm/AppWindowToken;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v5}, Lcom/android/server/wm/ActivityRecord;->getActivityStack()Lcom/android/server/wm/ActivityStack;

    move-result-object v5

    if-eqz v5, :cond_7f

    iget-object v5, p0, Lcom/android/server/wm/AppWindowToken;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    .line 1769
    invoke-virtual {v5}, Lcom/android/server/wm/ActivityRecord;->getActivityStack()Lcom/android/server/wm/ActivityStack;

    move-result-object v5

    iget-object v5, v5, Lcom/android/server/wm/ActivityStack;->mStackSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    iget-object v5, v5, Lcom/android/server/wm/ActivityStackSupervisor;->mNoAnimActivities:Ljava/util/ArrayList;

    iget-object v6, p0, Lcom/android/server/wm/AppWindowToken;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_7f

    move v5, v2

    goto :goto_80

    :cond_7f
    move v5, v3

    :goto_80
    move v4, v5

    .line 1770
    if-eqz v4, :cond_a1

    invoke-virtual {p0}, Lcom/android/server/wm/AppWindowToken;->getStack()Lcom/android/server/wm/TaskStack;

    move-result-object v5

    if-eqz v5, :cond_a1

    invoke-virtual {p0}, Lcom/android/server/wm/AppWindowToken;->getStack()Lcom/android/server/wm/TaskStack;

    move-result-object v5

    iget-object v5, v5, Lcom/android/server/wm/TaskStack;->mActivityStack:Lcom/android/server/wm/ActivityStack;

    invoke-virtual {v5}, Lcom/android/server/wm/ActivityStack;->getDisplay()Lcom/android/server/wm/ActivityDisplay;

    move-result-object v5

    invoke-virtual {p0}, Lcom/android/server/wm/AppWindowToken;->getStack()Lcom/android/server/wm/TaskStack;

    move-result-object v6

    iget-object v6, v6, Lcom/android/server/wm/TaskStack;->mActivityStack:Lcom/android/server/wm/ActivityStack;

    invoke-virtual {v5, v6}, Lcom/android/server/wm/ActivityDisplay;->isTopStack(Lcom/android/server/wm/ActivityStack;)Z

    move-result v5

    if-eqz v5, :cond_a1

    move v5, v2

    goto :goto_a2

    :cond_a1
    move v5, v3

    :goto_a2
    move v4, v5

    .line 1771
    if-nez v4, :cond_b4

    const/4 v5, 0x5

    if-ne p1, v5, :cond_aa

    move v6, v2

    goto :goto_ab

    :cond_aa
    move v6, v3

    :goto_ab
    if-ne p2, v5, :cond_af

    move v5, v2

    goto :goto_b0

    :cond_af
    move v5, v3

    :goto_b0
    if-eq v6, v5, :cond_b3

    goto :goto_b4

    :cond_b3
    move v2, v3

    :cond_b4
    :goto_b4
    return v2

    .line 1759
    .end local v4  # "mzWindowModeChange":Z
    :cond_b5
    :goto_b5
    return v3
.end method

.method private snapshotOrientationSameAsTask(Landroid/app/ActivityManager$TaskSnapshot;)Z
    .registers 7
    .param p1, "snapshot"  # Landroid/app/ActivityManager$TaskSnapshot;

    .line 2347
    const/4 v0, 0x0

    if-nez p1, :cond_4

    .line 2348
    return v0

    .line 2351
    :cond_4
    invoke-virtual {p0}, Lcom/android/server/wm/AppWindowToken;->getTask()Lcom/android/server/wm/Task;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/wm/Task;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget-object v1, v1, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v1}, Landroid/app/WindowConfiguration;->getWindowingMode()I

    move-result v1

    .line 2352
    .local v1, "taskWindowMode":I
    invoke-virtual {p1}, Landroid/app/ActivityManager$TaskSnapshot;->getWindowingMode()I

    move-result v2

    .line 2353
    .local v2, "snapWindowMode":I
    const/4 v3, 0x6

    if-eq v1, v3, :cond_2e

    if-ne v2, v3, :cond_1c

    goto :goto_2e

    .line 2358
    :cond_1c
    invoke-virtual {p0}, Lcom/android/server/wm/AppWindowToken;->getTask()Lcom/android/server/wm/Task;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/wm/Task;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    iget v3, v3, Landroid/content/res/Configuration;->orientation:I

    invoke-virtual {p1}, Landroid/app/ActivityManager$TaskSnapshot;->getOrientation()I

    move-result v4

    if-ne v3, v4, :cond_2d

    const/4 v0, 0x1

    :cond_2d
    return v0

    .line 2355
    :cond_2e
    :goto_2e
    return v0
.end method

.method private unfreezeBounds()V
    .registers 3

    .line 1411
    iget-object v0, p0, Lcom/android/server/wm/AppWindowToken;->mFrozenBounds:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 1412
    return-void

    .line 1414
    :cond_9
    iget-object v0, p0, Lcom/android/server/wm/AppWindowToken;->mFrozenBounds:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->remove()Ljava/lang/Object;

    .line 1415
    iget-object v0, p0, Lcom/android/server/wm/AppWindowToken;->mFrozenMergedConfig:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1b

    .line 1416
    iget-object v0, p0, Lcom/android/server/wm/AppWindowToken;->mFrozenMergedConfig:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->remove()Ljava/lang/Object;

    .line 1418
    :cond_1b
    iget-object v0, p0, Lcom/android/server/wm/AppWindowToken;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_23
    if-ltz v0, :cond_33

    .line 1419
    iget-object v1, p0, Lcom/android/server/wm/AppWindowToken;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v1, v0}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/WindowState;

    .line 1420
    .local v1, "win":Lcom/android/server/wm/WindowState;
    invoke-virtual {v1}, Lcom/android/server/wm/WindowState;->onUnfreezeBounds()V

    .line 1418
    .end local v1  # "win":Lcom/android/server/wm/WindowState;
    add-int/lit8 v0, v0, -0x1

    goto :goto_23

    .line 1422
    .end local v0  # "i":I
    :cond_33
    iget-object v0, p0, Lcom/android/server/wm/AppWindowToken;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mWindowPlacerLocked:Lcom/android/server/wm/WindowSurfacePlacer;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowSurfacePlacer;->performSurfacePlacement()V

    .line 1423
    return-void
.end method

.method private updateColorTransform()V
    .registers 5

    .line 3379
    iget-object v0, p0, Lcom/android/server/wm/AppWindowToken;->mSurfaceControl:Landroid/view/SurfaceControl;

    if-eqz v0, :cond_1e

    iget-object v0, p0, Lcom/android/server/wm/AppWindowToken;->mLastAppSaturationInfo:Lcom/android/server/wm/AppWindowToken$AppSaturationInfo;

    if-eqz v0, :cond_1e

    .line 3380
    invoke-virtual {p0}, Lcom/android/server/wm/AppWindowToken;->getPendingTransaction()Landroid/view/SurfaceControl$Transaction;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wm/AppWindowToken;->mSurfaceControl:Landroid/view/SurfaceControl;

    iget-object v2, p0, Lcom/android/server/wm/AppWindowToken;->mLastAppSaturationInfo:Lcom/android/server/wm/AppWindowToken$AppSaturationInfo;

    iget-object v2, v2, Lcom/android/server/wm/AppWindowToken$AppSaturationInfo;->mMatrix:[F

    iget-object v3, p0, Lcom/android/server/wm/AppWindowToken;->mLastAppSaturationInfo:Lcom/android/server/wm/AppWindowToken$AppSaturationInfo;

    iget-object v3, v3, Lcom/android/server/wm/AppWindowToken$AppSaturationInfo;->mTranslation:[F

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/SurfaceControl$Transaction;->setColorTransform(Landroid/view/SurfaceControl;[F[F)Landroid/view/SurfaceControl$Transaction;

    .line 3382
    iget-object v0, p0, Lcom/android/server/wm/AppWindowToken;->mWmService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerService;->scheduleAnimationLocked()V

    .line 3384
    :cond_1e
    return-void
.end method

.method private waitingForReplacement()Z
    .registers 5

    .line 1289
    iget-object v0, p0, Lcom/android/server/wm/AppWindowToken;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowList;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    .local v0, "i":I
    :goto_8
    if-ltz v0, :cond_1c

    .line 1290
    iget-object v2, p0, Lcom/android/server/wm/AppWindowToken;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v2, v0}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/WindowState;

    .line 1291
    .local v2, "candidate":Lcom/android/server/wm/WindowState;
    invoke-virtual {v2}, Lcom/android/server/wm/WindowState;->waitingForReplacement()Z

    move-result v3

    if-eqz v3, :cond_19

    .line 1292
    return v1

    .line 1289
    .end local v2  # "candidate":Lcom/android/server/wm/WindowState;
    :cond_19
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    .line 1295
    .end local v0  # "i":I
    :cond_1c
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method addStartingWindow(Ljava/lang/String;ILandroid/content/res/CompatibilityInfo;Ljava/lang/CharSequence;IIIILandroid/os/IBinder;ZZZZZZ)Z
    .registers 36
    .param p1, "pkg"  # Ljava/lang/String;
    .param p2, "theme"  # I
    .param p3, "compatInfo"  # Landroid/content/res/CompatibilityInfo;
    .param p4, "nonLocalizedLabel"  # Ljava/lang/CharSequence;
    .param p5, "labelRes"  # I
    .param p6, "icon"  # I
    .param p7, "logo"  # I
    .param p8, "windowFlags"  # I
    .param p9, "transferFrom"  # Landroid/os/IBinder;
    .param p10, "newTask"  # Z
    .param p11, "taskSwitch"  # Z
    .param p12, "processRunning"  # Z
    .param p13, "allowTaskSnapshot"  # Z
    .param p14, "activityCreated"  # Z
    .param p15, "fromRecents"  # Z

    .line 2141
    move-object/from16 v8, p0

    move/from16 v15, p2

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/AppWindowToken;->okToDisplay()Z

    move-result v0

    const/4 v9, 0x0

    if-nez v0, :cond_c

    .line 2142
    return v9

    .line 2145
    :cond_c
    iget-object v0, v8, Lcom/android/server/wm/AppWindowToken;->mStartingData:Lcom/android/server/wm/StartingData;

    if-eqz v0, :cond_11

    .line 2146
    return v9

    .line 2149
    :cond_11
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/AppWindowToken;->findMainWindow()Lcom/android/server/wm/WindowState;

    move-result-object v14

    .line 2150
    .local v14, "mainWin":Lcom/android/server/wm/WindowState;
    if-eqz v14, :cond_20

    iget-object v0, v14, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowStateAnimator;->getShown()Z

    move-result v0

    if-eqz v0, :cond_20

    .line 2152
    return v9

    .line 2155
    :cond_20
    iget-object v0, v8, Lcom/android/server/wm/AppWindowToken;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mTaskSnapshotController:Lcom/android/server/wm/TaskSnapshotController;

    .line 2157
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/AppWindowToken;->getTask()Lcom/android/server/wm/Task;

    move-result-object v1

    iget v1, v1, Lcom/android/server/wm/Task;->mTaskId:I

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/AppWindowToken;->getTask()Lcom/android/server/wm/Task;

    move-result-object v2

    iget v2, v2, Lcom/android/server/wm/Task;->mUserId:I

    .line 2156
    invoke-virtual {v0, v1, v2, v9, v9}, Lcom/android/server/wm/TaskSnapshotController;->getSnapshot(IIZZ)Landroid/app/ActivityManager$TaskSnapshot;

    move-result-object v13

    .line 2159
    .local v13, "snapshot":Landroid/app/ActivityManager$TaskSnapshot;
    move-object/from16 v0, p0

    move/from16 v1, p10

    move/from16 v2, p11

    move/from16 v3, p12

    move/from16 v4, p13

    move/from16 v5, p14

    move/from16 v6, p15

    move-object v7, v13

    invoke-direct/range {v0 .. v7}, Lcom/android/server/wm/AppWindowToken;->getStartingWindowType(ZZZZZZLandroid/app/ActivityManager$TaskSnapshot;)I

    move-result v0

    .line 2162
    .local v0, "type":I
    const/4 v1, 0x1

    if-ne v0, v1, :cond_4f

    .line 2163
    invoke-direct {v8, v13}, Lcom/android/server/wm/AppWindowToken;->createSnapshot(Landroid/app/ActivityManager$TaskSnapshot;)Z

    move-result v1

    return v1

    .line 2169
    :cond_4f
    sget-boolean v2, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_STARTING_WINDOW:Z

    const-string v3, "WindowManager"

    if-eqz v2, :cond_6d

    .line 2170
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Checking theme of starting window: 0x"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2172
    :cond_6d
    if-eqz v15, :cond_e6

    .line 2173
    invoke-static {}, Lcom/android/server/AttributeCache;->instance()Lcom/android/server/AttributeCache;

    move-result-object v2

    sget-object v4, Lcom/android/internal/R$styleable;->Window:[I

    iget-object v5, v8, Lcom/android/server/wm/AppWindowToken;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget v5, v5, Lcom/android/server/wm/WindowManagerService;->mCurrentUserId:I

    move-object/from16 v6, p1

    invoke-virtual {v2, v6, v15, v4, v5}, Lcom/android/server/AttributeCache;->get(Ljava/lang/String;I[II)Lcom/android/server/AttributeCache$Entry;

    move-result-object v2

    .line 2176
    .local v2, "ent":Lcom/android/server/AttributeCache$Entry;
    if-nez v2, :cond_82

    .line 2179
    return v9

    .line 2181
    :cond_82
    iget-object v4, v2, Lcom/android/server/AttributeCache$Entry;->array:Landroid/content/res/TypedArray;

    const/4 v5, 0x5

    invoke-virtual {v4, v5, v9}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v4

    .line 2183
    .local v4, "windowIsTranslucent":Z
    iget-object v5, v2, Lcom/android/server/AttributeCache$Entry;->array:Landroid/content/res/TypedArray;

    const/4 v7, 0x4

    invoke-virtual {v5, v7, v9}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v5

    .line 2185
    .local v5, "windowIsFloating":Z
    iget-object v7, v2, Lcom/android/server/AttributeCache$Entry;->array:Landroid/content/res/TypedArray;

    const/16 v10, 0xe

    invoke-virtual {v7, v10, v9}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v7

    .line 2187
    .local v7, "windowShowWallpaper":Z
    iget-object v10, v2, Lcom/android/server/AttributeCache$Entry;->array:Landroid/content/res/TypedArray;

    const/16 v11, 0xc

    invoke-virtual {v10, v11, v9}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v10

    .line 2189
    .local v10, "windowDisableStarting":Z
    sget-boolean v11, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_STARTING_WINDOW:Z

    if-eqz v11, :cond_c8

    .line 2190
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Translucent="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v12, " Floating="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v12, " ShowWallpaper="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v3, v11}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2194
    :cond_c8
    if-eqz v4, :cond_cb

    .line 2195
    return v9

    .line 2197
    :cond_cb
    if-nez v5, :cond_e5

    if-eqz v10, :cond_d0

    goto :goto_e5

    .line 2200
    :cond_d0
    if-eqz v7, :cond_e8

    .line 2201
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/AppWindowToken;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v11

    iget-object v11, v11, Lcom/android/server/wm/DisplayContent;->mWallpaperController:Lcom/android/server/wm/WallpaperController;

    .line 2202
    invoke-virtual {v11}, Lcom/android/server/wm/WallpaperController;->getWallpaperTarget()Lcom/android/server/wm/WindowState;

    move-result-object v11

    if-nez v11, :cond_e4

    .line 2208
    const/high16 v11, 0x100000

    or-int v11, p8, v11

    move v2, v11

    .end local p8  # "windowFlags":I
    .local v11, "windowFlags":I
    goto :goto_ea

    .line 2210
    .end local v11  # "windowFlags":I
    .restart local p8  # "windowFlags":I
    :cond_e4
    return v9

    .line 2198
    :cond_e5
    :goto_e5
    return v9

    .line 2172
    .end local v2  # "ent":Lcom/android/server/AttributeCache$Entry;
    .end local v4  # "windowIsTranslucent":Z
    .end local v5  # "windowIsFloating":Z
    .end local v7  # "windowShowWallpaper":Z
    .end local v10  # "windowDisableStarting":Z
    :cond_e6
    move-object/from16 v6, p1

    .line 2215
    :cond_e8
    move/from16 v2, p8

    .end local p8  # "windowFlags":I
    .local v2, "windowFlags":I
    :goto_ea
    move-object/from16 v4, p9

    invoke-virtual {v8, v4}, Lcom/android/server/wm/AppWindowToken;->transferStartingWindow(Landroid/os/IBinder;)Z

    move-result v5

    if-eqz v5, :cond_f3

    .line 2216
    return v1

    .line 2221
    :cond_f3
    const/4 v5, 0x2

    if-eq v0, v5, :cond_f7

    .line 2222
    return v9

    .line 2225
    :cond_f7
    sget-boolean v5, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_STARTING_WINDOW:Z

    if-eqz v5, :cond_100

    const-string v5, "Creating SplashScreenStartingData"

    invoke-static {v3, v5}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2226
    :cond_100
    new-instance v3, Lcom/android/server/wm/SplashScreenStartingData;

    iget-object v10, v8, Lcom/android/server/wm/AppWindowToken;->mWmService:Lcom/android/server/wm/WindowManagerService;

    .line 2228
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/AppWindowToken;->getMergedOverrideConfiguration()Landroid/content/res/Configuration;

    move-result-object v19

    move-object v9, v3

    move-object/from16 v11, p1

    move/from16 v12, p2

    move-object v5, v13

    .end local v13  # "snapshot":Landroid/app/ActivityManager$TaskSnapshot;
    .local v5, "snapshot":Landroid/app/ActivityManager$TaskSnapshot;
    move-object/from16 v13, p3

    move-object v7, v14

    .end local v14  # "mainWin":Lcom/android/server/wm/WindowState;
    .local v7, "mainWin":Lcom/android/server/wm/WindowState;
    move-object/from16 v14, p4

    move/from16 v15, p5

    move/from16 v16, p6

    move/from16 v17, p7

    move/from16 v18, v2

    invoke-direct/range {v9 .. v19}, Lcom/android/server/wm/SplashScreenStartingData;-><init>(Lcom/android/server/wm/WindowManagerService;Ljava/lang/String;ILandroid/content/res/CompatibilityInfo;Ljava/lang/CharSequence;IIIILandroid/content/res/Configuration;)V

    iput-object v3, v8, Lcom/android/server/wm/AppWindowToken;->mStartingData:Lcom/android/server/wm/StartingData;

    .line 2229
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/AppWindowToken;->scheduleAddStartingWindow()V

    .line 2230
    return v1
.end method

.method addWindow(Lcom/android/server/wm/WindowState;)V
    .registers 6
    .param p1, "w"  # Lcom/android/server/wm/WindowState;

    .line 1262
    invoke-super {p0, p1}, Lcom/android/server/wm/WindowToken;->addWindow(Lcom/android/server/wm/WindowState;)V

    .line 1264
    const/4 v0, 0x0

    .line 1265
    .local v0, "gotReplacementWindow":Z
    iget-object v1, p0, Lcom/android/server/wm/AppWindowToken;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .local v1, "i":I
    :goto_c
    if-ltz v1, :cond_1e

    .line 1266
    iget-object v2, p0, Lcom/android/server/wm/AppWindowToken;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v2, v1}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/WindowState;

    .line 1267
    .local v2, "candidate":Lcom/android/server/wm/WindowState;
    invoke-virtual {v2, p1}, Lcom/android/server/wm/WindowState;->setReplacementWindowIfNeeded(Lcom/android/server/wm/WindowState;)Z

    move-result v3

    or-int/2addr v0, v3

    .line 1265
    .end local v2  # "candidate":Lcom/android/server/wm/WindowState;
    add-int/lit8 v1, v1, -0x1

    goto :goto_c

    .line 1271
    .end local v1  # "i":I
    :cond_1e
    if-eqz v0, :cond_25

    .line 1272
    iget-object v1, p0, Lcom/android/server/wm/AppWindowToken;->mWmService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v1, p0}, Lcom/android/server/wm/WindowManagerService;->scheduleWindowReplacementTimeouts(Lcom/android/server/wm/AppWindowToken;)V

    .line 1274
    :cond_25
    invoke-virtual {p0}, Lcom/android/server/wm/AppWindowToken;->checkKeyguardFlagsChanged()V

    .line 1275
    return-void
.end method

.method applyAnimationLocked(Landroid/view/WindowManager$LayoutParams;IZZ)Z
    .registers 30
    .param p1, "lp"  # Landroid/view/WindowManager$LayoutParams;
    .param p2, "transit"  # I
    .param p3, "enter"  # Z
    .param p4, "isVoiceInteraction"  # Z

    .line 2624
    move-object/from16 v0, p0

    move/from16 v1, p2

    iget-object v2, v0, Lcom/android/server/wm/AppWindowToken;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-boolean v2, v2, Lcom/android/server/wm/WindowManagerService;->mDisableTransitionAnimation:Z

    const/4 v3, 0x0

    if-nez v2, :cond_218

    invoke-virtual {v0, v1}, Lcom/android/server/wm/AppWindowToken;->shouldAnimate(I)Z

    move-result v2

    if-nez v2, :cond_13

    goto/16 :goto_218

    .line 2636
    :cond_13
    const-wide/16 v4, 0x20

    const-string v2, "AWT#applyAnimationLocked"

    invoke-static {v4, v5, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 2637
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/AppWindowToken;->okToAnimate()Z

    move-result v2

    if-eqz v2, :cond_20b

    .line 2639
    const/4 v2, 0x0

    .line 2641
    .local v2, "thumbnailAdapter":Lcom/android/server/wm/AnimationAdapter;
    nop

    .line 2642
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/AppWindowToken;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v6

    iget-object v6, v6, Lcom/android/server/wm/DisplayContent;->mAppTransition:Lcom/android/server/wm/AppTransition;

    invoke-virtual {v6}, Lcom/android/server/wm/AppTransition;->getAppStackClipMode()I

    move-result v6

    .line 2645
    .local v6, "appStackClipMode":I
    iget-object v7, v0, Lcom/android/server/wm/AppWindowToken;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v6}, Lcom/android/server/wm/AppWindowToken;->getAnimationBounds(I)Landroid/graphics/Rect;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 2646
    iget-object v7, v0, Lcom/android/server/wm/AppWindowToken;->mTmpPoint:Landroid/graphics/Point;

    iget-object v8, v0, Lcom/android/server/wm/AppWindowToken;->mTmpRect:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->left:I

    iget-object v9, v0, Lcom/android/server/wm/AppWindowToken;->mTmpRect:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->top:I

    invoke-virtual {v7, v8, v9}, Landroid/graphics/Point;->set(II)V

    .line 2647
    iget-object v7, v0, Lcom/android/server/wm/AppWindowToken;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v7, v3, v3}, Landroid/graphics/Rect;->offsetTo(II)V

    .line 2649
    invoke-static/range {p2 .. p2}, Lcom/android/server/wm/AppTransition;->isChangeTransit(I)Z

    move-result v7

    if-eqz v7, :cond_5d

    if-eqz p3, :cond_5d

    .line 2650
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/AppWindowToken;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v7

    iget-object v7, v7, Lcom/android/server/wm/DisplayContent;->mChangingApps:Landroid/util/ArraySet;

    invoke-virtual {v7, v0}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5d

    const/4 v7, 0x1

    goto :goto_5e

    :cond_5d
    move v7, v3

    :goto_5e
    move/from16 v16, v7

    .line 2652
    .local v16, "isChanging":Z
    if-nez v16, :cond_73

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/AppWindowToken;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v7

    iget-object v7, v7, Lcom/android/server/wm/DisplayContent;->mChangingApps:Landroid/util/ArraySet;

    invoke-virtual {v7, v0}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_73

    if-eqz p3, :cond_73

    .line 2653
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/AppWindowToken;->clearChangeTransition()V

    .line 2657
    :cond_73
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/AppWindowToken;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v7

    iget-object v7, v7, Lcom/android/server/wm/DisplayContent;->mAppTransition:Lcom/android/server/wm/AppTransition;

    invoke-virtual {v7}, Lcom/android/server/wm/AppTransition;->getRemoteAnimationController()Lcom/android/server/wm/RemoteAnimationController;

    move-result-object v7

    if-eqz v7, :cond_b1

    iget-object v7, v0, Lcom/android/server/wm/AppWindowToken;->mSurfaceAnimator:Lcom/android/server/wm/SurfaceAnimator;

    .line 2658
    invoke-virtual {v7}, Lcom/android/server/wm/SurfaceAnimator;->isAnimationStartDelayed()Z

    move-result v7

    if-nez v7, :cond_b1

    .line 2659
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/AppWindowToken;->isMzWindowMode()Z

    move-result v3

    if-eqz v3, :cond_91

    .line 2660
    const/4 v3, 0x0

    .line 2661
    .local v3, "adapter":Lcom/android/server/wm/AnimationAdapter;
    const/4 v2, 0x0

    goto/16 :goto_1dc

    .line 2663
    .end local v3  # "adapter":Lcom/android/server/wm/AnimationAdapter;
    :cond_91
    nop

    .line 2664
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/AppWindowToken;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v3

    iget-object v3, v3, Lcom/android/server/wm/DisplayContent;->mAppTransition:Lcom/android/server/wm/AppTransition;

    invoke-virtual {v3}, Lcom/android/server/wm/AppTransition;->getRemoteAnimationController()Lcom/android/server/wm/RemoteAnimationController;

    move-result-object v3

    iget-object v7, v0, Lcom/android/server/wm/AppWindowToken;->mTmpPoint:Landroid/graphics/Point;

    iget-object v8, v0, Lcom/android/server/wm/AppWindowToken;->mTmpRect:Landroid/graphics/Rect;

    .line 2666
    if-eqz v16, :cond_a5

    iget-object v9, v0, Lcom/android/server/wm/AppWindowToken;->mTransitStartRect:Landroid/graphics/Rect;

    goto :goto_a6

    :cond_a5
    const/4 v9, 0x0

    .line 2665
    :goto_a6
    invoke-virtual {v3, v0, v7, v8, v9}, Lcom/android/server/wm/RemoteAnimationController;->createRemoteAnimationRecord(Lcom/android/server/wm/AppWindowToken;Landroid/graphics/Point;Landroid/graphics/Rect;Landroid/graphics/Rect;)Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationRecord;

    move-result-object v3

    .line 2667
    .local v3, "adapters":Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationRecord;
    iget-object v7, v3, Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationRecord;->mAdapter:Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationAdapterWrapper;

    .line 2668
    .local v7, "adapter":Lcom/android/server/wm/AnimationAdapter;
    iget-object v2, v3, Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationRecord;->mThumbnailAdapter:Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationAdapterWrapper;

    .line 2669
    .end local v3  # "adapters":Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationRecord;
    move-object v3, v7

    goto/16 :goto_1dc

    .line 2670
    .end local v7  # "adapter":Lcom/android/server/wm/AnimationAdapter;
    :cond_b1
    if-eqz v16, :cond_184

    .line 2671
    iget-object v3, v0, Lcom/android/server/wm/AppWindowToken;->mWmService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v3}, Lcom/android/server/wm/WindowManagerService;->getTransitionAnimationScaleLocked()F

    move-result v3

    .line 2672
    .local v3, "durationScale":F
    iget-object v7, v0, Lcom/android/server/wm/AppWindowToken;->mTmpRect:Landroid/graphics/Rect;

    iget-object v8, v0, Lcom/android/server/wm/AppWindowToken;->mTmpPoint:Landroid/graphics/Point;

    iget v8, v8, Landroid/graphics/Point;->x:I

    iget-object v9, v0, Lcom/android/server/wm/AppWindowToken;->mTmpPoint:Landroid/graphics/Point;

    iget v9, v9, Landroid/graphics/Point;->y:I

    invoke-virtual {v7, v8, v9}, Landroid/graphics/Rect;->offsetTo(II)V

    .line 2674
    iget v7, v0, Lcom/android/server/wm/AppWindowToken;->mPrevWinMode:I

    const/4 v8, 0x6

    if-eq v7, v8, :cond_112

    .line 2693
    new-instance v14, Lcom/android/server/wm/LocalAnimationAdapter;

    new-instance v13, Lcom/android/server/wm/WindowChangeAnimationSpec;

    iget-object v8, v0, Lcom/android/server/wm/AppWindowToken;->mTransitStartRect:Landroid/graphics/Rect;

    iget-object v9, v0, Lcom/android/server/wm/AppWindowToken;->mTmpRect:Landroid/graphics/Rect;

    .line 2695
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/AppWindowToken;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/server/wm/DisplayContent;->getDisplayInfo()Landroid/view/DisplayInfo;

    move-result-object v10

    const/4 v12, 0x1

    const/16 v17, 0x0

    move-object v7, v13

    move v11, v3

    move-object v4, v13

    move/from16 v13, v17

    invoke-direct/range {v7 .. v13}, Lcom/android/server/wm/WindowChangeAnimationSpec;-><init>(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/view/DisplayInfo;FZZ)V

    iget-object v5, v0, Lcom/android/server/wm/AppWindowToken;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v5, v5, Lcom/android/server/wm/WindowManagerService;->mSurfaceAnimationRunner:Lcom/android/server/wm/SurfaceAnimationRunner;

    invoke-direct {v14, v4, v5}, Lcom/android/server/wm/LocalAnimationAdapter;-><init>(Lcom/android/server/wm/LocalAnimationAdapter$AnimationSpec;Lcom/android/server/wm/SurfaceAnimationRunner;)V

    move-object v4, v14

    .line 2698
    .local v4, "adapter":Lcom/android/server/wm/AnimationAdapter;
    iget-object v5, v0, Lcom/android/server/wm/AppWindowToken;->mThumbnail:Lcom/android/server/wm/AppWindowThumbnail;

    if-eqz v5, :cond_174

    .line 2699
    new-instance v5, Lcom/android/server/wm/LocalAnimationAdapter;

    new-instance v14, Lcom/android/server/wm/WindowChangeAnimationSpec;

    iget-object v8, v0, Lcom/android/server/wm/AppWindowToken;->mTransitStartRect:Landroid/graphics/Rect;

    iget-object v9, v0, Lcom/android/server/wm/AppWindowToken;->mTmpRect:Landroid/graphics/Rect;

    .line 2701
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/AppWindowToken;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/server/wm/DisplayContent;->getDisplayInfo()Landroid/view/DisplayInfo;

    move-result-object v10

    const/4 v12, 0x1

    const/4 v13, 0x1

    move-object v7, v14

    move v11, v3

    invoke-direct/range {v7 .. v13}, Lcom/android/server/wm/WindowChangeAnimationSpec;-><init>(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/view/DisplayInfo;FZZ)V

    iget-object v7, v0, Lcom/android/server/wm/AppWindowToken;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v7, v7, Lcom/android/server/wm/WindowManagerService;->mSurfaceAnimationRunner:Lcom/android/server/wm/SurfaceAnimationRunner;

    invoke-direct {v5, v14, v7}, Lcom/android/server/wm/LocalAnimationAdapter;-><init>(Lcom/android/server/wm/LocalAnimationAdapter$AnimationSpec;Lcom/android/server/wm/SurfaceAnimationRunner;)V

    move-object v2, v5

    goto :goto_174

    .line 2676
    .end local v4  # "adapter":Lcom/android/server/wm/AnimationAdapter;
    :cond_112
    iget-object v4, v0, Lcom/android/server/wm/AppWindowToken;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v4, v4, Lcom/android/server/wm/WindowManagerService;->mWmsExtInternal:Lcom/android/server/wm/FlymeWindowManagerInternal;

    invoke-virtual {v4}, Lcom/android/server/wm/FlymeWindowManagerInternal;->getWindowModeWindowFrame()Lcom/android/server/wm/FlymeWindowModeFrame;

    move-result-object v4

    .line 2677
    .local v4, "startFrame":Lcom/android/server/wm/FlymeDisplayInfo;
    new-instance v9, Lcom/android/server/wm/FlymeStackFrame;

    iget-object v5, v0, Lcom/android/server/wm/AppWindowToken;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/AppWindowToken;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/server/wm/DisplayContent;->getWindowCornerRadius()F

    move-result v7

    invoke-direct {v9, v5, v7}, Lcom/android/server/wm/FlymeStackFrame;-><init>(Landroid/graphics/Rect;F)V

    .line 2678
    .local v9, "endFrame":Lcom/android/server/wm/FlymeDisplayInfo;
    new-instance v5, Lcom/android/server/wm/LocalAnimationAdapter;

    new-instance v14, Lcom/android/server/wm/FlymeWindowChangeAnimationSpec;

    const/high16 v10, 0x3f800000  # 1.0f

    .line 2680
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/AppWindowToken;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/server/wm/DisplayContent;->getDisplayInfo()Landroid/view/DisplayInfo;

    move-result-object v11

    const/4 v13, 0x1

    const/16 v17, 0x0

    move-object v7, v14

    move-object v8, v4

    move v12, v3

    move-object v15, v14

    move/from16 v14, v17

    invoke-direct/range {v7 .. v14}, Lcom/android/server/wm/FlymeWindowChangeAnimationSpec;-><init>(Lcom/android/server/wm/FlymeDisplayInfo;Lcom/android/server/wm/FlymeDisplayInfo;FLandroid/view/DisplayInfo;FZZ)V

    iget-object v7, v0, Lcom/android/server/wm/AppWindowToken;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v7, v7, Lcom/android/server/wm/WindowManagerService;->mSurfaceAnimationRunner:Lcom/android/server/wm/SurfaceAnimationRunner;

    invoke-direct {v5, v15, v7}, Lcom/android/server/wm/LocalAnimationAdapter;-><init>(Lcom/android/server/wm/LocalAnimationAdapter$AnimationSpec;Lcom/android/server/wm/SurfaceAnimationRunner;)V

    .line 2683
    .local v5, "adapter":Lcom/android/server/wm/AnimationAdapter;
    iget-object v7, v0, Lcom/android/server/wm/AppWindowToken;->mThumbnail:Lcom/android/server/wm/AppWindowThumbnail;

    if-eqz v7, :cond_173

    .line 2684
    new-instance v7, Lcom/android/server/wm/LocalAnimationAdapter;

    new-instance v8, Lcom/android/server/wm/FlymeWindowChangeAnimationSpec;

    const/high16 v20, 0x3f800000  # 1.0f

    .line 2686
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/AppWindowToken;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v10

    invoke-virtual {v10}, Lcom/android/server/wm/DisplayContent;->getDisplayInfo()Landroid/view/DisplayInfo;

    move-result-object v21

    const/16 v23, 0x1

    const/16 v24, 0x1

    move-object/from16 v17, v8

    move-object/from16 v18, v4

    move-object/from16 v19, v9

    move/from16 v22, v3

    invoke-direct/range {v17 .. v24}, Lcom/android/server/wm/FlymeWindowChangeAnimationSpec;-><init>(Lcom/android/server/wm/FlymeDisplayInfo;Lcom/android/server/wm/FlymeDisplayInfo;FLandroid/view/DisplayInfo;FZZ)V

    iget-object v10, v0, Lcom/android/server/wm/AppWindowToken;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v10, v10, Lcom/android/server/wm/WindowManagerService;->mSurfaceAnimationRunner:Lcom/android/server/wm/SurfaceAnimationRunner;

    invoke-direct {v7, v8, v10}, Lcom/android/server/wm/LocalAnimationAdapter;-><init>(Lcom/android/server/wm/LocalAnimationAdapter$AnimationSpec;Lcom/android/server/wm/SurfaceAnimationRunner;)V

    move-object v2, v7

    .line 2691
    .end local v4  # "startFrame":Lcom/android/server/wm/FlymeDisplayInfo;
    .end local v9  # "endFrame":Lcom/android/server/wm/FlymeDisplayInfo;
    :cond_173
    move-object v4, v5

    .line 2709
    .end local v5  # "adapter":Lcom/android/server/wm/AnimationAdapter;
    .local v4, "adapter":Lcom/android/server/wm/AnimationAdapter;
    :cond_174
    :goto_174
    iput v1, v0, Lcom/android/server/wm/AppWindowToken;->mTransit:I

    .line 2710
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/AppWindowToken;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v5

    iget-object v5, v5, Lcom/android/server/wm/DisplayContent;->mAppTransition:Lcom/android/server/wm/AppTransition;

    invoke-virtual {v5}, Lcom/android/server/wm/AppTransition;->getTransitFlags()I

    move-result v5

    iput v5, v0, Lcom/android/server/wm/AppWindowToken;->mTransitFlags:I

    .line 2711
    .end local v3  # "durationScale":F
    move-object v3, v4

    goto :goto_1dc

    .line 2712
    .end local v4  # "adapter":Lcom/android/server/wm/AnimationAdapter;
    :cond_184
    if-nez v6, :cond_187

    const/4 v3, 0x1

    :cond_187
    iput-boolean v3, v0, Lcom/android/server/wm/AppWindowToken;->mNeedsAnimationBoundsLayer:Z

    .line 2714
    invoke-direct/range {p0 .. p4}, Lcom/android/server/wm/AppWindowToken;->loadAnimation(Landroid/view/WindowManager$LayoutParams;IZZ)Landroid/view/animation/Animation;

    move-result-object v3

    .line 2715
    .local v3, "a":Landroid/view/animation/Animation;
    if-eqz v3, :cond_1db

    .line 2718
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/AppWindowToken;->inMultiWindowMode()Z

    move-result v4

    if-nez v4, :cond_19f

    .line 2719
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/AppWindowToken;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/server/wm/DisplayContent;->getWindowCornerRadius()F

    move-result v4

    move v14, v4

    goto :goto_1a1

    .line 2720
    :cond_19f
    const/4 v4, 0x0

    move v14, v4

    :goto_1a1
    nop

    .line 2721
    .local v14, "windowCornerRadius":F
    new-instance v4, Lcom/android/server/wm/LocalAnimationAdapter;

    new-instance v5, Lcom/android/server/wm/WindowAnimationSpec;

    iget-object v9, v0, Lcom/android/server/wm/AppWindowToken;->mTmpPoint:Landroid/graphics/Point;

    iget-object v10, v0, Lcom/android/server/wm/AppWindowToken;->mTmpRect:Landroid/graphics/Rect;

    .line 2723
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/AppWindowToken;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v7

    iget-object v7, v7, Lcom/android/server/wm/DisplayContent;->mAppTransition:Lcom/android/server/wm/AppTransition;

    invoke-virtual {v7}, Lcom/android/server/wm/AppTransition;->canSkipFirstFrame()Z

    move-result v11

    const/4 v13, 0x1

    move-object v7, v5

    move-object v8, v3

    move v12, v6

    invoke-direct/range {v7 .. v14}, Lcom/android/server/wm/WindowAnimationSpec;-><init>(Landroid/view/animation/Animation;Landroid/graphics/Point;Landroid/graphics/Rect;ZIZF)V

    iget-object v7, v0, Lcom/android/server/wm/AppWindowToken;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v7, v7, Lcom/android/server/wm/WindowManagerService;->mSurfaceAnimationRunner:Lcom/android/server/wm/SurfaceAnimationRunner;

    invoke-direct {v4, v5, v7}, Lcom/android/server/wm/LocalAnimationAdapter;-><init>(Lcom/android/server/wm/LocalAnimationAdapter$AnimationSpec;Lcom/android/server/wm/SurfaceAnimationRunner;)V

    .line 2728
    .restart local v4  # "adapter":Lcom/android/server/wm/AnimationAdapter;
    invoke-virtual {v3}, Landroid/view/animation/Animation;->getZAdjustment()I

    move-result v5

    const/4 v7, 0x1

    if-ne v5, v7, :cond_1cb

    .line 2729
    iput-boolean v7, v0, Lcom/android/server/wm/AppWindowToken;->mNeedsZBoost:Z

    .line 2731
    :cond_1cb
    iput v1, v0, Lcom/android/server/wm/AppWindowToken;->mTransit:I

    .line 2732
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/AppWindowToken;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v5

    iget-object v5, v5, Lcom/android/server/wm/DisplayContent;->mAppTransition:Lcom/android/server/wm/AppTransition;

    invoke-virtual {v5}, Lcom/android/server/wm/AppTransition;->getTransitFlags()I

    move-result v5

    iput v5, v0, Lcom/android/server/wm/AppWindowToken;->mTransitFlags:I

    .line 2733
    .end local v14  # "windowCornerRadius":F
    move-object v3, v4

    goto :goto_1dc

    .line 2734
    .end local v4  # "adapter":Lcom/android/server/wm/AnimationAdapter;
    :cond_1db
    const/4 v3, 0x0

    .line 2737
    .local v3, "adapter":Lcom/android/server/wm/AnimationAdapter;
    :goto_1dc
    if-eqz v3, :cond_20a

    .line 2738
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/AppWindowToken;->getPendingTransaction()Landroid/view/SurfaceControl$Transaction;

    move-result-object v4

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/AppWindowToken;->isVisible()Z

    move-result v5

    const/4 v7, 0x1

    xor-int/2addr v5, v7

    invoke-virtual {v0, v4, v3, v5}, Lcom/android/server/wm/AppWindowToken;->startAnimation(Landroid/view/SurfaceControl$Transaction;Lcom/android/server/wm/AnimationAdapter;Z)V

    .line 2739
    invoke-interface {v3}, Lcom/android/server/wm/AnimationAdapter;->getShowWallpaper()Z

    move-result v4

    if-eqz v4, :cond_1f9

    .line 2740
    iget-object v4, v0, Lcom/android/server/wm/AppWindowToken;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget v5, v4, Lcom/android/server/wm/DisplayContent;->pendingLayoutChanges:I

    or-int/lit8 v5, v5, 0x4

    iput v5, v4, Lcom/android/server/wm/DisplayContent;->pendingLayoutChanges:I

    .line 2742
    :cond_1f9
    if-eqz v2, :cond_20a

    .line 2743
    iget-object v4, v0, Lcom/android/server/wm/AppWindowToken;->mThumbnail:Lcom/android/server/wm/AppWindowThumbnail;

    .line 2744
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/AppWindowToken;->getPendingTransaction()Landroid/view/SurfaceControl$Transaction;

    move-result-object v5

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/AppWindowToken;->isVisible()Z

    move-result v7

    const/4 v8, 0x1

    .line 2743
    xor-int/2addr v7, v8

    invoke-virtual {v4, v5, v2, v7}, Lcom/android/server/wm/AppWindowThumbnail;->startAnimation(Landroid/view/SurfaceControl$Transaction;Lcom/android/server/wm/AnimationAdapter;Z)V

    .line 2747
    .end local v2  # "thumbnailAdapter":Lcom/android/server/wm/AnimationAdapter;
    .end local v3  # "adapter":Lcom/android/server/wm/AnimationAdapter;
    .end local v6  # "appStackClipMode":I
    .end local v16  # "isChanging":Z
    :cond_20a
    goto :goto_20e

    .line 2748
    :cond_20b
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/AppWindowToken;->cancelAnimation()V

    .line 2750
    :goto_20e
    const-wide/16 v2, 0x20

    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V

    .line 2752
    invoke-direct/range {p0 .. p0}, Lcom/android/server/wm/AppWindowToken;->isReallyAnimating()Z

    move-result v2

    return v2

    .line 2625
    :cond_218
    :goto_218
    sget-boolean v2, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_APP_TRANSITIONS:Z

    if-nez v2, :cond_220

    sget-boolean v2, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_ANIM:Z

    if-eqz v2, :cond_236

    .line 2626
    :cond_220
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "applyAnimation: transition animation is disabled or skipped. atoken="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v4, "WindowManager"

    invoke-static {v4, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2629
    :cond_236
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/AppWindowToken;->cancelAnimation()V

    .line 2630
    return v3
.end method

.method asAppWindowToken()Lcom/android/server/wm/AppWindowToken;
    .registers 1

    .line 2132
    return-object p0
.end method

.method attachCrossProfileAppsThumbnailAnimation()V
    .registers 11

    .line 3081
    invoke-direct {p0}, Lcom/android/server/wm/AppWindowToken;->isReallyAnimating()Z

    move-result v0

    if-nez v0, :cond_7

    .line 3082
    return-void

    .line 3084
    :cond_7
    invoke-direct {p0}, Lcom/android/server/wm/AppWindowToken;->clearThumbnail()V

    .line 3086
    invoke-virtual {p0}, Lcom/android/server/wm/AppWindowToken;->findMainWindow()Lcom/android/server/wm/WindowState;

    move-result-object v0

    .line 3087
    .local v0, "win":Lcom/android/server/wm/WindowState;
    if-nez v0, :cond_11

    .line 3088
    return-void

    .line 3090
    :cond_11
    invoke-virtual {v0}, Lcom/android/server/wm/WindowState;->getFrameLw()Landroid/graphics/Rect;

    move-result-object v1

    .line 3091
    .local v1, "frame":Landroid/graphics/Rect;
    invoke-virtual {p0}, Lcom/android/server/wm/AppWindowToken;->getTask()Lcom/android/server/wm/Task;

    move-result-object v2

    iget v2, v2, Lcom/android/server/wm/Task;->mUserId:I

    iget-object v3, p0, Lcom/android/server/wm/AppWindowToken;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget v3, v3, Lcom/android/server/wm/WindowManagerService;->mCurrentUserId:I

    if-ne v2, v3, :cond_25

    .line 3092
    const v2, 0x1080309

    goto :goto_28

    .line 3093
    :cond_25
    const v2, 0x1080359

    :goto_28
    nop

    .line 3094
    .local v2, "thumbnailDrawableRes":I
    nop

    .line 3095
    invoke-virtual {p0}, Lcom/android/server/wm/AppWindowToken;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v3

    iget-object v3, v3, Lcom/android/server/wm/DisplayContent;->mAppTransition:Lcom/android/server/wm/AppTransition;

    .line 3096
    invoke-virtual {v3, v2, v1}, Lcom/android/server/wm/AppTransition;->createCrossProfileAppsThumbnail(ILandroid/graphics/Rect;)Landroid/graphics/GraphicBuffer;

    move-result-object v3

    .line 3097
    .local v3, "thumbnail":Landroid/graphics/GraphicBuffer;
    if-nez v3, :cond_37

    .line 3098
    return-void

    .line 3100
    :cond_37
    new-instance v4, Lcom/android/server/wm/AppWindowThumbnail;

    invoke-virtual {p0}, Lcom/android/server/wm/AppWindowToken;->getPendingTransaction()Landroid/view/SurfaceControl$Transaction;

    move-result-object v5

    invoke-direct {v4, v5, p0, v3}, Lcom/android/server/wm/AppWindowThumbnail;-><init>(Landroid/view/SurfaceControl$Transaction;Lcom/android/server/wm/AppWindowToken;Landroid/graphics/GraphicBuffer;)V

    iput-object v4, p0, Lcom/android/server/wm/AppWindowToken;->mThumbnail:Lcom/android/server/wm/AppWindowThumbnail;

    .line 3101
    nop

    .line 3102
    invoke-virtual {p0}, Lcom/android/server/wm/AppWindowToken;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v4

    iget-object v4, v4, Lcom/android/server/wm/DisplayContent;->mAppTransition:Lcom/android/server/wm/AppTransition;

    .line 3103
    invoke-virtual {v0}, Lcom/android/server/wm/WindowState;->getFrameLw()Landroid/graphics/Rect;

    move-result-object v5

    .line 3102
    invoke-virtual {v4, v5}, Lcom/android/server/wm/AppTransition;->createCrossProfileAppsThumbnailAnimationLocked(Landroid/graphics/Rect;)Landroid/view/animation/Animation;

    move-result-object v4

    .line 3104
    .local v4, "animation":Landroid/view/animation/Animation;
    iget-object v5, p0, Lcom/android/server/wm/AppWindowToken;->mThumbnail:Lcom/android/server/wm/AppWindowThumbnail;

    invoke-virtual {p0}, Lcom/android/server/wm/AppWindowToken;->getPendingTransaction()Landroid/view/SurfaceControl$Transaction;

    move-result-object v6

    new-instance v7, Landroid/graphics/Point;

    iget v8, v1, Landroid/graphics/Rect;->left:I

    iget v9, v1, Landroid/graphics/Rect;->top:I

    invoke-direct {v7, v8, v9}, Landroid/graphics/Point;-><init>(II)V

    invoke-virtual {v5, v6, v4, v7}, Lcom/android/server/wm/AppWindowThumbnail;->startAnimation(Landroid/view/SurfaceControl$Transaction;Landroid/view/animation/Animation;Landroid/graphics/Point;)V

    .line 3106
    return-void
.end method

.method attachThumbnailAnimation()V
    .registers 6

    .line 3061
    invoke-direct {p0}, Lcom/android/server/wm/AppWindowToken;->isReallyAnimating()Z

    move-result v0

    if-nez v0, :cond_7

    .line 3062
    return-void

    .line 3064
    :cond_7
    invoke-virtual {p0}, Lcom/android/server/wm/AppWindowToken;->getTask()Lcom/android/server/wm/Task;

    move-result-object v0

    iget v0, v0, Lcom/android/server/wm/Task;->mTaskId:I

    .line 3065
    .local v0, "taskId":I
    nop

    .line 3066
    invoke-virtual {p0}, Lcom/android/server/wm/AppWindowToken;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v1

    iget-object v1, v1, Lcom/android/server/wm/DisplayContent;->mAppTransition:Lcom/android/server/wm/AppTransition;

    invoke-virtual {v1, v0}, Lcom/android/server/wm/AppTransition;->getAppTransitionThumbnailHeader(I)Landroid/graphics/GraphicBuffer;

    move-result-object v1

    .line 3067
    .local v1, "thumbnailHeader":Landroid/graphics/GraphicBuffer;
    if-nez v1, :cond_35

    .line 3068
    sget-boolean v2, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_APP_TRANSITIONS:Z

    if-eqz v2, :cond_34

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "No thumbnail header bitmap for: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "WindowManager"

    invoke-static {v3, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3069
    :cond_34
    return-void

    .line 3071
    :cond_35
    invoke-direct {p0}, Lcom/android/server/wm/AppWindowToken;->clearThumbnail()V

    .line 3072
    new-instance v2, Lcom/android/server/wm/AppWindowThumbnail;

    invoke-virtual {p0}, Lcom/android/server/wm/AppWindowToken;->getPendingTransaction()Landroid/view/SurfaceControl$Transaction;

    move-result-object v3

    invoke-direct {v2, v3, p0, v1}, Lcom/android/server/wm/AppWindowThumbnail;-><init>(Landroid/view/SurfaceControl$Transaction;Lcom/android/server/wm/AppWindowToken;Landroid/graphics/GraphicBuffer;)V

    iput-object v2, p0, Lcom/android/server/wm/AppWindowToken;->mThumbnail:Lcom/android/server/wm/AppWindowThumbnail;

    .line 3073
    iget-object v2, p0, Lcom/android/server/wm/AppWindowToken;->mThumbnail:Lcom/android/server/wm/AppWindowThumbnail;

    invoke-virtual {p0}, Lcom/android/server/wm/AppWindowToken;->getPendingTransaction()Landroid/view/SurfaceControl$Transaction;

    move-result-object v3

    invoke-direct {p0, v1}, Lcom/android/server/wm/AppWindowToken;->loadThumbnailAnimation(Landroid/graphics/GraphicBuffer;)Landroid/view/animation/Animation;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/android/server/wm/AppWindowThumbnail;->startAnimation(Landroid/view/SurfaceControl$Transaction;Landroid/view/animation/Animation;)V

    .line 3074
    return-void
.end method

.method canShowWindows()Z
    .registers 2

    .line 3367
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

    .line 2519
    iget-boolean v0, p0, Lcom/android/server/wm/AppWindowToken;->mCanTurnScreenOn:Z

    return v0
.end method

.method cancelAnimation()V
    .registers 3

    .line 3030
    invoke-virtual {p0}, Lcom/android/server/wm/AppWindowToken;->cancelAnimationOnly()V

    .line 3031
    invoke-direct {p0}, Lcom/android/server/wm/AppWindowToken;->clearThumbnail()V

    .line 3032
    invoke-virtual {p0}, Lcom/android/server/wm/AppWindowToken;->getPendingTransaction()Landroid/view/SurfaceControl$Transaction;

    move-result-object v0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/android/server/wm/AppWindowToken;->clearChangeLeash(Landroid/view/SurfaceControl$Transaction;Z)V

    .line 3033
    return-void
.end method

.method cancelAnimationOnly()V
    .registers 1

    .line 3042
    invoke-super {p0}, Lcom/android/server/wm/WindowToken;->cancelAnimation()V

    .line 3043
    return-void
.end method

.method checkAppWindowsReadyToShow()V
    .registers 3

    .line 1908
    iget-boolean v0, p0, Lcom/android/server/wm/AppWindowToken;->allDrawn:Z

    iget-boolean v1, p0, Lcom/android/server/wm/AppWindowToken;->mLastAllDrawn:Z

    if-ne v0, v1, :cond_7

    .line 1909
    return-void

    .line 1912
    :cond_7
    iput-boolean v0, p0, Lcom/android/server/wm/AppWindowToken;->mLastAllDrawn:Z

    .line 1913
    if-nez v0, :cond_c

    .line 1914
    return-void

    .line 1918
    :cond_c
    iget-boolean v0, p0, Lcom/android/server/wm/AppWindowToken;->mFreezingScreen:Z

    if-eqz v0, :cond_4d

    .line 1919
    invoke-virtual {p0}, Lcom/android/server/wm/AppWindowToken;->showAllWindowsLocked()V

    .line 1920
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/android/server/wm/AppWindowToken;->stopFreezingScreen(ZZ)V

    .line 1921
    sget-boolean v0, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_ORIENTATION:Z

    if-eqz v0, :cond_46

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Setting mOrientationChangeComplete=true because wtoken "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " numInteresting="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/wm/AppWindowToken;->mNumInterestingWindows:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " numDrawn="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/wm/AppWindowToken;->mNumDrawnWindows:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WindowManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1925
    :cond_46
    const/4 v0, 0x4

    const-string v1, "checkAppWindowsReadyToShow: freezingScreen"

    invoke-virtual {p0, v0, v1}, Lcom/android/server/wm/AppWindowToken;->setAppLayoutChanges(ILjava/lang/String;)V

    goto :goto_69

    .line 1928
    :cond_4d
    const/16 v0, 0x8

    const-string v1, "checkAppWindowsReadyToShow"

    invoke-virtual {p0, v0, v1}, Lcom/android/server/wm/AppWindowToken;->setAppLayoutChanges(ILjava/lang/String;)V

    .line 1931
    invoke-virtual {p0}, Lcom/android/server/wm/AppWindowToken;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    iget-object v0, v0, Lcom/android/server/wm/DisplayContent;->mOpeningApps:Landroid/util/ArraySet;

    invoke-virtual {v0, p0}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_69

    invoke-virtual {p0}, Lcom/android/server/wm/AppWindowToken;->canShowWindows()Z

    move-result v0

    if-eqz v0, :cond_69

    .line 1932
    invoke-virtual {p0}, Lcom/android/server/wm/AppWindowToken;->showAllWindowsLocked()V

    .line 1935
    :cond_69
    :goto_69
    return-void
.end method

.method checkCompleteDeferredRemoval()Z
    .registers 2

    .line 872
    iget-boolean v0, p0, Lcom/android/server/wm/AppWindowToken;->mIsExiting:Z

    if-eqz v0, :cond_7

    .line 873
    invoke-virtual {p0}, Lcom/android/server/wm/AppWindowToken;->removeIfPossible()V

    .line 875
    :cond_7
    invoke-super {p0}, Lcom/android/server/wm/WindowToken;->checkCompleteDeferredRemoval()Z

    move-result v0

    return v0
.end method

.method checkKeyguardFlagsChanged()V
    .registers 6

    .line 2461
    invoke-virtual {p0}, Lcom/android/server/wm/AppWindowToken;->containsDismissKeyguardWindow()Z

    move-result v0

    .line 2462
    .local v0, "containsDismissKeyguard":Z
    invoke-virtual {p0}, Lcom/android/server/wm/AppWindowToken;->containsShowWhenLockedWindow()Z

    move-result v1

    .line 2463
    .local v1, "containsShowWhenLocked":Z
    iget-boolean v2, p0, Lcom/android/server/wm/AppWindowToken;->mLastContainsDismissKeyguardWindow:Z

    if-ne v0, v2, :cond_10

    iget-boolean v2, p0, Lcom/android/server/wm/AppWindowToken;->mLastContainsShowWhenLockedWindow:Z

    if-eq v1, v2, :cond_1e

    .line 2465
    :cond_10
    iget-object v2, p0, Lcom/android/server/wm/AppWindowToken;->mWmService:Lcom/android/server/wm/WindowManagerService;

    const/4 v3, 0x0

    .line 2466
    invoke-virtual {p0}, Lcom/android/server/wm/AppWindowToken;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/server/wm/DisplayContent;->getDisplayId()I

    move-result v4

    .line 2465
    invoke-virtual {v2, v3, v4}, Lcom/android/server/wm/WindowManagerService;->notifyKeyguardFlagsChanged(Ljava/lang/Runnable;I)V

    .line 2468
    :cond_1e
    iput-boolean v0, p0, Lcom/android/server/wm/AppWindowToken;->mLastContainsDismissKeyguardWindow:Z

    .line 2469
    iput-boolean v1, p0, Lcom/android/server/wm/AppWindowToken;->mLastContainsShowWhenLockedWindow:Z

    .line 2470
    return-void
.end method

.method clearAllDrawn()V
    .registers 2

    .line 1031
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/wm/AppWindowToken;->allDrawn:Z

    .line 1032
    iput-boolean v0, p0, Lcom/android/server/wm/AppWindowToken;->deferClearAllDrawn:Z

    .line 1033
    return-void
.end method

.method clearAnimatingFlags()V
    .registers 5

    .line 961
    const/4 v0, 0x0

    .line 962
    .local v0, "wallpaperMightChange":Z
    iget-object v1, p0, Lcom/android/server/wm/AppWindowToken;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .local v1, "i":I
    :goto_9
    if-ltz v1, :cond_1b

    .line 963
    iget-object v2, p0, Lcom/android/server/wm/AppWindowToken;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v2, v1}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/WindowState;

    .line 964
    .local v2, "win":Lcom/android/server/wm/WindowState;
    invoke-virtual {v2}, Lcom/android/server/wm/WindowState;->clearAnimatingFlags()Z

    move-result v3

    or-int/2addr v0, v3

    .line 962
    .end local v2  # "win":Lcom/android/server/wm/WindowState;
    add-int/lit8 v1, v1, -0x1

    goto :goto_9

    .line 966
    .end local v1  # "i":I
    :cond_1b
    if-eqz v0, :cond_20

    .line 967
    invoke-virtual {p0}, Lcom/android/server/wm/AppWindowToken;->requestUpdateWallpaperIfNeeded()V

    .line 969
    :cond_20
    return-void
.end method

.method clearChangeTransition()V
    .registers 3

    .line 3402
    invoke-virtual {p0}, Lcom/android/server/wm/AppWindowToken;->getStack()Lcom/android/server/wm/TaskStack;

    move-result-object v0

    iget-object v0, v0, Lcom/android/server/wm/TaskStack;->mDeferHideDimTokens:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 3403
    invoke-virtual {p0}, Lcom/android/server/wm/AppWindowToken;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    iget-object v0, v0, Lcom/android/server/wm/DisplayContent;->mChangingApps:Landroid/util/ArraySet;

    invoke-virtual {v0, p0}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    .line 3404
    invoke-virtual {p0}, Lcom/android/server/wm/AppWindowToken;->getPendingTransaction()Landroid/view/SurfaceControl$Transaction;

    move-result-object v0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/android/server/wm/AppWindowToken;->clearChangeLeash(Landroid/view/SurfaceControl$Transaction;Z)V

    .line 3405
    return-void
.end method

.method clearRelaunching()V
    .registers 2

    .line 1225
    iget v0, p0, Lcom/android/server/wm/AppWindowToken;->mPendingRelaunchCount:I

    if-nez v0, :cond_5

    .line 1226
    return-void

    .line 1228
    :cond_5
    invoke-direct {p0}, Lcom/android/server/wm/AppWindowToken;->unfreezeBounds()V

    .line 1229
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/wm/AppWindowToken;->mPendingRelaunchCount:I

    .line 1230
    return-void
.end method

.method clearWillReplaceWindows()V
    .registers 3

    .line 1151
    sget-boolean v0, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_ADD_REMOVE:Z

    if-eqz v0, :cond_1f

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Resetting app token "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " of replacing window marks."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WindowManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1154
    :cond_1f
    iget-object v0, p0, Lcom/android/server/wm/AppWindowToken;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_27
    if-ltz v0, :cond_37

    .line 1155
    iget-object v1, p0, Lcom/android/server/wm/AppWindowToken;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v1, v0}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/WindowState;

    .line 1156
    .local v1, "w":Lcom/android/server/wm/WindowState;
    invoke-virtual {v1}, Lcom/android/server/wm/WindowState;->clearWillReplaceWindow()V

    .line 1154
    .end local v1  # "w":Lcom/android/server/wm/WindowState;
    add-int/lit8 v0, v0, -0x1

    goto :goto_27

    .line 1158
    .end local v0  # "i":I
    :cond_37
    return-void
.end method

.method commitVisibility(Landroid/view/WindowManager$LayoutParams;ZIZZ)Z
    .registers 23
    .param p1, "lp"  # Landroid/view/WindowManager$LayoutParams;
    .param p2, "visible"  # Z
    .param p3, "transit"  # I
    .param p4, "performLayout"  # Z
    .param p5, "isVoiceInteraction"  # Z

    .line 619
    move-object/from16 v0, p0

    move/from16 v1, p2

    move/from16 v2, p3

    move/from16 v3, p4

    const/4 v4, 0x0

    .line 620
    .local v4, "delayed":Z
    const/4 v5, 0x0

    iput-boolean v5, v0, Lcom/android/server/wm/AppWindowToken;->inPendingTransaction:Z

    .line 623
    iput-boolean v5, v0, Lcom/android/server/wm/AppWindowToken;->mHiddenSetFromTransferredStartingWindow:Z

    .line 630
    const/4 v6, 0x0

    .line 631
    .local v6, "visibilityChanged":Z
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/AppWindowToken;->isHidden()Z

    move-result v7

    const/4 v8, 0x1

    if-eq v7, v1, :cond_30

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/AppWindowToken;->isHidden()Z

    move-result v7

    if-eqz v7, :cond_20

    iget-boolean v7, v0, Lcom/android/server/wm/AppWindowToken;->mIsExiting:Z

    if-nez v7, :cond_30

    :cond_20
    if-eqz v1, :cond_29

    invoke-direct/range {p0 .. p0}, Lcom/android/server/wm/AppWindowToken;->waitingForReplacement()Z

    move-result v7

    if-eqz v7, :cond_29

    goto :goto_30

    .line 693
    :cond_29
    move-object/from16 v12, p1

    move/from16 v13, p5

    move v15, v5

    goto/16 :goto_137

    .line 632
    :cond_30
    :goto_30
    iget-object v7, v0, Lcom/android/server/wm/AppWindowToken;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v7, v7, Lcom/android/server/wm/WindowManagerService;->mAccessibilityController:Lcom/android/server/wm/AccessibilityController;

    .line 634
    .local v7, "accessibilityController":Lcom/android/server/wm/AccessibilityController;
    const/4 v9, 0x0

    .line 635
    .local v9, "changed":Z
    sget-boolean v10, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_APP_TRANSITIONS:Z

    const-string v11, "WindowManager"

    if-eqz v10, :cond_63

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Changing app "

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v12, " hidden="

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 636
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/AppWindowToken;->isHidden()Z

    move-result v12

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v12, " performLayout="

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 635
    invoke-static {v11, v10}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 638
    :cond_63
    const/4 v10, 0x0

    .line 640
    .local v10, "runningAppAnimation":Z
    const/4 v12, -0x1

    if-eq v2, v12, :cond_8d

    .line 641
    iget-boolean v12, v0, Lcom/android/server/wm/AppWindowToken;->mUseTransferredAnimation:Z

    if-eqz v12, :cond_74

    .line 642
    invoke-direct/range {p0 .. p0}, Lcom/android/server/wm/AppWindowToken;->isReallyAnimating()Z

    move-result v10

    move-object/from16 v12, p1

    move/from16 v13, p5

    goto :goto_7f

    .line 643
    :cond_74
    move-object/from16 v12, p1

    move/from16 v13, p5

    invoke-virtual {v0, v12, v2, v1, v13}, Lcom/android/server/wm/AppWindowToken;->applyAnimationLocked(Landroid/view/WindowManager$LayoutParams;IZZ)Z

    move-result v14

    if-eqz v14, :cond_7f

    .line 644
    const/4 v10, 0x1

    .line 646
    :cond_7f
    :goto_7f
    move v4, v10

    .line 647
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/AppWindowToken;->findMainWindow()Lcom/android/server/wm/WindowState;

    move-result-object v14

    .line 648
    .local v14, "window":Lcom/android/server/wm/WindowState;
    if-eqz v14, :cond_8b

    if-eqz v7, :cond_8b

    .line 649
    invoke-virtual {v7, v14, v2}, Lcom/android/server/wm/AccessibilityController;->onAppWindowTransitionLocked(Lcom/android/server/wm/WindowState;I)V

    .line 651
    :cond_8b
    const/4 v9, 0x1

    goto :goto_91

    .line 640
    .end local v14  # "window":Lcom/android/server/wm/WindowState;
    :cond_8d
    move-object/from16 v12, p1

    move/from16 v13, p5

    .line 654
    :goto_91
    iget-object v14, v0, Lcom/android/server/wm/AppWindowToken;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v14}, Lcom/android/server/wm/WindowList;->size()I

    move-result v14

    .line 655
    .local v14, "windowsCount":I
    const/4 v15, 0x0

    .local v15, "i":I
    :goto_98
    if-ge v15, v14, :cond_ac

    .line 656
    iget-object v5, v0, Lcom/android/server/wm/AppWindowToken;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v5, v15}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/wm/WindowState;

    .line 657
    .local v5, "win":Lcom/android/server/wm/WindowState;
    invoke-virtual {v5, v1, v10}, Lcom/android/server/wm/WindowState;->onAppVisibilityChanged(ZZ)Z

    move-result v16

    or-int v9, v9, v16

    .line 655
    .end local v5  # "win":Lcom/android/server/wm/WindowState;
    add-int/lit8 v15, v15, 0x1

    const/4 v5, 0x0

    goto :goto_98

    .line 660
    .end local v15  # "i":I
    :cond_ac
    xor-int/lit8 v5, v1, 0x1

    invoke-virtual {v0, v5}, Lcom/android/server/wm/AppWindowToken;->setHidden(Z)V

    .line 661
    xor-int/lit8 v5, v1, 0x1

    iput-boolean v5, v0, Lcom/android/server/wm/AppWindowToken;->hiddenRequested:Z

    .line 662
    const/4 v6, 0x1

    .line 663
    if-nez v1, :cond_bc

    .line 664
    invoke-virtual {v0, v8, v8}, Lcom/android/server/wm/AppWindowToken;->stopFreezingScreen(ZZ)V

    goto :goto_dd

    .line 668
    :cond_bc
    iget-object v5, v0, Lcom/android/server/wm/AppWindowToken;->startingWindow:Lcom/android/server/wm/WindowState;

    if-eqz v5, :cond_d0

    invoke-virtual {v5}, Lcom/android/server/wm/WindowState;->isDrawnLw()Z

    move-result v5

    if-nez v5, :cond_d0

    .line 669
    iget-object v5, v0, Lcom/android/server/wm/AppWindowToken;->startingWindow:Lcom/android/server/wm/WindowState;

    invoke-virtual {v5, v8}, Lcom/android/server/wm/WindowState;->clearPolicyVisibilityFlag(I)V

    .line 670
    iget-object v5, v0, Lcom/android/server/wm/AppWindowToken;->startingWindow:Lcom/android/server/wm/WindowState;

    const/4 v15, 0x0

    iput-boolean v15, v5, Lcom/android/server/wm/WindowState;->mLegacyPolicyVisibilityAfterAnim:Z

    .line 675
    :cond_d0
    iget-object v5, v0, Lcom/android/server/wm/AppWindowToken;->mWmService:Lcom/android/server/wm/WindowManagerService;

    invoke-static {v5}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v15, Lcom/android/server/wm/-$$Lambda$2KrtdmjrY7Nagc4IRqzCk9gDuQU;

    invoke-direct {v15, v5}, Lcom/android/server/wm/-$$Lambda$2KrtdmjrY7Nagc4IRqzCk9gDuQU;-><init>(Lcom/android/server/wm/WindowManagerService;)V

    invoke-virtual {v0, v15, v8}, Lcom/android/server/wm/AppWindowToken;->forAllWindows(Ljava/util/function/Consumer;Z)V

    .line 678
    :goto_dd
    sget-boolean v5, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_APP_TRANSITIONS:Z

    if-eqz v5, :cond_10b

    .line 679
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "commitVisibility: "

    invoke-virtual {v5, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v15, ": hidden="

    invoke-virtual {v5, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 680
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/AppWindowToken;->isHidden()Z

    move-result v15

    invoke-virtual {v5, v15}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v15, " hiddenRequested="

    invoke-virtual {v5, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v15, v0, Lcom/android/server/wm/AppWindowToken;->hiddenRequested:Z

    invoke-virtual {v5, v15}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 679
    invoke-static {v11, v5}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 683
    :cond_10b
    if-eqz v9, :cond_136

    .line 684
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/AppWindowToken;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/server/wm/DisplayContent;->getInputMonitor()Lcom/android/server/wm/InputMonitor;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/server/wm/InputMonitor;->setUpdateInputWindowsNeededLw()V

    .line 685
    if-eqz v3, :cond_129

    .line 686
    iget-object v5, v0, Lcom/android/server/wm/AppWindowToken;->mWmService:Lcom/android/server/wm/WindowManagerService;

    const/4 v11, 0x3

    const/4 v15, 0x0

    invoke-virtual {v5, v11, v15}, Lcom/android/server/wm/WindowManagerService;->updateFocusedWindowLocked(IZ)Z

    .line 688
    iget-object v5, v0, Lcom/android/server/wm/AppWindowToken;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v5, v5, Lcom/android/server/wm/WindowManagerService;->mWindowPlacerLocked:Lcom/android/server/wm/WindowSurfacePlacer;

    invoke-virtual {v5}, Lcom/android/server/wm/WindowSurfacePlacer;->performSurfacePlacement()V

    goto :goto_12a

    .line 685
    :cond_129
    const/4 v15, 0x0

    .line 690
    :goto_12a
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/AppWindowToken;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/server/wm/DisplayContent;->getInputMonitor()Lcom/android/server/wm/InputMonitor;

    move-result-object v5

    invoke-virtual {v5, v15}, Lcom/android/server/wm/InputMonitor;->updateInputWindowsLw(Z)V

    goto :goto_137

    .line 683
    :cond_136
    const/4 v15, 0x0

    .line 693
    .end local v7  # "accessibilityController":Lcom/android/server/wm/AccessibilityController;
    .end local v9  # "changed":Z
    .end local v10  # "runningAppAnimation":Z
    .end local v14  # "windowsCount":I
    :goto_137
    iput-boolean v15, v0, Lcom/android/server/wm/AppWindowToken;->mUseTransferredAnimation:Z

    .line 695
    invoke-direct/range {p0 .. p0}, Lcom/android/server/wm/AppWindowToken;->isReallyAnimating()Z

    move-result v5

    if-eqz v5, :cond_141

    .line 696
    const/4 v4, 0x1

    goto :goto_144

    .line 702
    :cond_141
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/AppWindowToken;->onAnimationFinished()V

    .line 705
    :goto_144
    iget-object v5, v0, Lcom/android/server/wm/AppWindowToken;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v5}, Lcom/android/server/wm/WindowList;->size()I

    move-result v5

    sub-int/2addr v5, v8

    .local v5, "i":I
    :goto_14b
    if-ltz v5, :cond_161

    if-nez v4, :cond_161

    .line 706
    iget-object v7, v0, Lcom/android/server/wm/AppWindowToken;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v7, v5}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/wm/WindowState;

    invoke-virtual {v7}, Lcom/android/server/wm/WindowState;->isSelfOrChildAnimating()Z

    move-result v7

    if-eqz v7, :cond_15e

    .line 707
    const/4 v4, 0x1

    .line 705
    :cond_15e
    add-int/lit8 v5, v5, -0x1

    goto :goto_14b

    .line 711
    .end local v5  # "i":I
    :cond_161
    if-eqz v6, :cond_1e1

    .line 712
    if-eqz v1, :cond_172

    if-nez v4, :cond_172

    .line 715
    iput-boolean v8, v0, Lcom/android/server/wm/AppWindowToken;->mEnteringAnimation:Z

    .line 716
    iget-object v5, v0, Lcom/android/server/wm/AppWindowToken;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v5, v5, Lcom/android/server/wm/WindowManagerService;->mActivityManagerAppTransitionNotifier:Lcom/android/server/wm/WindowManagerInternal$AppTransitionListener;

    iget-object v7, v0, Lcom/android/server/wm/AppWindowToken;->token:Landroid/os/IBinder;

    invoke-virtual {v5, v7}, Lcom/android/server/wm/WindowManagerInternal$AppTransitionListener;->onAppTransitionFinishedLocked(Landroid/os/IBinder;)V

    .line 725
    :cond_172
    if-nez v1, :cond_17a

    invoke-direct/range {p0 .. p0}, Lcom/android/server/wm/AppWindowToken;->isReallyAnimating()Z

    move-result v5

    if-nez v5, :cond_17f

    .line 726
    :cond_17a
    xor-int/lit8 v5, v1, 0x1

    invoke-virtual {v0, v5}, Lcom/android/server/wm/AppWindowToken;->setClientHidden(Z)V

    .line 729
    :cond_17f
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/AppWindowToken;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v5

    iget-object v5, v5, Lcom/android/server/wm/DisplayContent;->mClosingApps:Landroid/util/ArraySet;

    invoke-virtual {v5, v0}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1a9

    .line 730
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/AppWindowToken;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v5

    iget-object v5, v5, Lcom/android/server/wm/DisplayContent;->mOpeningApps:Landroid/util/ArraySet;

    invoke-virtual {v5, v0}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1a9

    .line 736
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/AppWindowToken;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/server/wm/DisplayContent;->getDockedDividerController()Lcom/android/server/wm/DockedStackDividerController;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/server/wm/DockedStackDividerController;->notifyAppVisibilityChanged()V

    .line 740
    iget-object v5, v0, Lcom/android/server/wm/AppWindowToken;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v5, v5, Lcom/android/server/wm/WindowManagerService;->mTaskSnapshotController:Lcom/android/server/wm/TaskSnapshotController;

    invoke-virtual {v5, v0, v1}, Lcom/android/server/wm/TaskSnapshotController;->notifyAppVisibilityChanged(Lcom/android/server/wm/AppWindowToken;Z)V

    .line 753
    :cond_1a9
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/AppWindowToken;->isHidden()Z

    move-result v5

    if-eqz v5, :cond_1de

    if-nez v4, :cond_1de

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/AppWindowToken;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v5

    iget-object v5, v5, Lcom/android/server/wm/DisplayContent;->mAppTransition:Lcom/android/server/wm/AppTransition;

    invoke-virtual {v5}, Lcom/android/server/wm/AppTransition;->isTransitionSet()Z

    move-result v5

    if-nez v5, :cond_1de

    .line 754
    invoke-static {}, Landroid/view/SurfaceControl;->openTransaction()V

    .line 755
    iget-object v5, v0, Lcom/android/server/wm/AppWindowToken;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v5}, Lcom/android/server/wm/WindowList;->size()I

    move-result v5

    sub-int/2addr v5, v8

    .restart local v5  # "i":I
    :goto_1c7
    if-ltz v5, :cond_1db

    .line 756
    iget-object v7, v0, Lcom/android/server/wm/AppWindowToken;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v7, v5}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/wm/WindowState;

    iget-object v7, v7, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    const-string v8, "immediately hidden"

    invoke-virtual {v7, v8}, Lcom/android/server/wm/WindowStateAnimator;->hide(Ljava/lang/String;)V

    .line 755
    add-int/lit8 v5, v5, -0x1

    goto :goto_1c7

    .line 758
    .end local v5  # "i":I
    :cond_1db
    invoke-static {}, Landroid/view/SurfaceControl;->closeTransaction()V

    .line 762
    :cond_1de
    invoke-direct/range {p0 .. p0}, Lcom/android/server/wm/AppWindowToken;->reportDescendantOrientationChangeIfNeeded()V

    .line 765
    :cond_1e1
    return v4
.end method

.method containsDismissKeyguardWindow()Z
    .registers 5

    .line 2427
    invoke-virtual {p0}, Lcom/android/server/wm/AppWindowToken;->isRelaunching()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 2428
    iget-boolean v0, p0, Lcom/android/server/wm/AppWindowToken;->mLastContainsDismissKeyguardWindow:Z

    return v0

    .line 2431
    :cond_9
    iget-object v0, p0, Lcom/android/server/wm/AppWindowToken;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_11
    const/4 v1, 0x0

    if-ltz v0, :cond_34

    .line 2432
    iget-object v2, p0, Lcom/android/server/wm/AppWindowToken;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v2, v0}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/WindowState;

    iget-object v2, v2, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v2, v2, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v3, 0x400000

    and-int/2addr v2, v3

    if-eqz v2, :cond_31

    .line 2434
    iget-object v2, p0, Lcom/android/server/wm/AppWindowToken;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mWmsExtInternal:Lcom/android/server/wm/FlymeWindowManagerInternal;

    const/4 v3, 0x0

    invoke-virtual {v2, p0, v3, v1}, Lcom/android/server/wm/FlymeWindowManagerInternal;->shouldFinishWithAccessControl(Lcom/android/server/wm/AppWindowToken;Lcom/android/server/wm/WindowState;Z)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    return v1

    .line 2431
    :cond_31
    add-int/lit8 v0, v0, -0x1

    goto :goto_11

    .line 2438
    .end local v0  # "i":I
    :cond_34
    return v1
.end method

.method containsShowWhenLockedWindow()Z
    .registers 5

    .line 2445
    invoke-virtual {p0}, Lcom/android/server/wm/AppWindowToken;->isRelaunching()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 2446
    iget-boolean v0, p0, Lcom/android/server/wm/AppWindowToken;->mLastContainsShowWhenLockedWindow:Z

    return v0

    .line 2449
    :cond_9
    iget-object v0, p0, Lcom/android/server/wm/AppWindowToken;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_11
    const/4 v1, 0x0

    if-ltz v0, :cond_34

    .line 2450
    iget-object v2, p0, Lcom/android/server/wm/AppWindowToken;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v2, v0}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/WindowState;

    iget-object v2, v2, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v2, v2, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v3, 0x80000

    and-int/2addr v2, v3

    if-eqz v2, :cond_31

    .line 2452
    iget-object v2, p0, Lcom/android/server/wm/AppWindowToken;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mWmsExtInternal:Lcom/android/server/wm/FlymeWindowManagerInternal;

    const/4 v3, 0x0

    invoke-virtual {v2, p0, v3, v1}, Lcom/android/server/wm/FlymeWindowManagerInternal;->shouldFinishWithAccessControl(Lcom/android/server/wm/AppWindowToken;Lcom/android/server/wm/WindowState;Z)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    return v1

    .line 2449
    :cond_31
    add-int/lit8 v0, v0, -0x1

    goto :goto_11

    .line 2457
    .end local v0  # "i":I
    :cond_34
    return v1
.end method

.method destroySurfaces()V
    .registers 2

    .line 972
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/server/wm/AppWindowToken;->destroySurfaces(Z)V

    .line 973
    return-void
.end method

.method detachChildren()V
    .registers 4

    .line 1202
    invoke-static {}, Landroid/view/SurfaceControl;->openTransaction()V

    .line 1203
    iget-object v0, p0, Lcom/android/server/wm/AppWindowToken;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_b
    if-ltz v0, :cond_1d

    .line 1204
    iget-object v1, p0, Lcom/android/server/wm/AppWindowToken;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v1, v0}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/WindowState;

    .line 1205
    .local v1, "w":Lcom/android/server/wm/WindowState;
    iget-object v2, v1, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowStateAnimator;->detachChildren()V

    .line 1203
    .end local v1  # "w":Lcom/android/server/wm/WindowState;
    add-int/lit8 v0, v0, -0x1

    goto :goto_b

    .line 1207
    .end local v0  # "i":I
    :cond_1d
    invoke-static {}, Landroid/view/SurfaceControl;->closeTransaction()V

    .line 1209
    invoke-virtual {p0}, Lcom/android/server/wm/AppWindowToken;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    iget-object v0, v0, Lcom/android/server/wm/DisplayContent;->mUnknownAppVisibilityController:Lcom/android/server/wm/UnknownAppVisibilityController;

    invoke-virtual {v0, p0}, Lcom/android/server/wm/UnknownAppVisibilityController;->appRemovedOrHidden(Lcom/android/server/wm/AppWindowToken;)V

    .line 1211
    return-void
.end method

.method dump(Ljava/io/PrintWriter;Ljava/lang/String;Z)V
    .registers 7
    .param p1, "pw"  # Ljava/io/PrintWriter;
    .param p2, "prefix"  # Ljava/lang/String;
    .param p3, "dumpAll"  # Z

    .line 3142
    invoke-super {p0, p1, p2, p3}, Lcom/android/server/wm/WindowToken;->dump(Ljava/io/PrintWriter;Ljava/lang/String;Z)V

    .line 3143
    iget-object v0, p0, Lcom/android/server/wm/AppWindowToken;->appToken:Landroid/view/IApplicationToken;

    if-eqz v0, :cond_20

    .line 3144
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "app=true mVoiceInteraction="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/wm/AppWindowToken;->mVoiceInteraction:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3146
    :cond_20
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "component="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/wm/AppWindowToken;->mActivityComponent:Landroid/content/ComponentName;

    invoke-virtual {v1}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3147
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "task="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/server/wm/AppWindowToken;->getTask()Lcom/android/server/wm/Task;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 3148
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, " mFillsParent="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/wm/AppWindowToken;->mFillsParent:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 3149
    const-string v0, " mOrientation="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/wm/AppWindowToken;->mOrientation:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 3150
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "hiddenRequested="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/wm/AppWindowToken;->hiddenRequested:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " mClientHidden="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/wm/AppWindowToken;->mClientHidden:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 3151
    iget-boolean v1, p0, Lcom/android/server/wm/AppWindowToken;->mDeferHidingClient:Z

    if-eqz v1, :cond_97

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " mDeferHidingClient="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/server/wm/AppWindowToken;->mDeferHidingClient:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_99

    :cond_97
    const-string v1, ""

    :goto_99
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " reportedDrawn="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/wm/AppWindowToken;->reportedDrawn:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " reportedVisible="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/wm/AppWindowToken;->reportedVisible:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3150
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3153
    iget-boolean v0, p0, Lcom/android/server/wm/AppWindowToken;->paused:Z

    if-eqz v0, :cond_c8

    .line 3154
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "paused="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/wm/AppWindowToken;->paused:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 3156
    :cond_c8
    iget-boolean v0, p0, Lcom/android/server/wm/AppWindowToken;->mAppStopped:Z

    if-eqz v0, :cond_d9

    .line 3157
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mAppStopped="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/wm/AppWindowToken;->mAppStopped:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 3159
    :cond_d9
    iget v0, p0, Lcom/android/server/wm/AppWindowToken;->mNumInterestingWindows:I

    if-nez v0, :cond_e9

    iget v0, p0, Lcom/android/server/wm/AppWindowToken;->mNumDrawnWindows:I

    if-nez v0, :cond_e9

    iget-boolean v0, p0, Lcom/android/server/wm/AppWindowToken;->allDrawn:Z

    if-nez v0, :cond_e9

    iget-boolean v0, p0, Lcom/android/server/wm/AppWindowToken;->mLastAllDrawn:Z

    if-eqz v0, :cond_123

    .line 3161
    :cond_e9
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mNumInterestingWindows="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3162
    iget v0, p0, Lcom/android/server/wm/AppWindowToken;->mNumInterestingWindows:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 3163
    const-string v0, " mNumDrawnWindows="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/wm/AppWindowToken;->mNumDrawnWindows:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 3164
    const-string v0, " inPendingTransaction="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/wm/AppWindowToken;->inPendingTransaction:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 3165
    const-string v0, " allDrawn="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/wm/AppWindowToken;->allDrawn:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 3166
    const-string v0, " lastAllDrawn="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/wm/AppWindowToken;->mLastAllDrawn:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 3167
    const-string v0, ")"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3169
    :cond_123
    iget-boolean v0, p0, Lcom/android/server/wm/AppWindowToken;->inPendingTransaction:Z

    if-eqz v0, :cond_134

    .line 3170
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "inPendingTransaction="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3171
    iget-boolean v0, p0, Lcom/android/server/wm/AppWindowToken;->inPendingTransaction:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 3173
    :cond_134
    iget-object v0, p0, Lcom/android/server/wm/AppWindowToken;->mStartingData:Lcom/android/server/wm/StartingData;

    if-nez v0, :cond_144

    iget-boolean v0, p0, Lcom/android/server/wm/AppWindowToken;->removed:Z

    if-nez v0, :cond_144

    iget-boolean v0, p0, Lcom/android/server/wm/AppWindowToken;->firstWindowDrawn:Z

    if-nez v0, :cond_144

    iget-boolean v0, p0, Lcom/android/server/wm/AppWindowToken;->mIsExiting:Z

    if-eqz v0, :cond_16f

    .line 3174
    :cond_144
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "startingData="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/wm/AppWindowToken;->mStartingData:Lcom/android/server/wm/StartingData;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    .line 3175
    const-string v0, " removed="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/wm/AppWindowToken;->removed:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 3176
    const-string v0, " firstWindowDrawn="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/wm/AppWindowToken;->firstWindowDrawn:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 3177
    const-string v0, " mIsExiting="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/wm/AppWindowToken;->mIsExiting:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 3179
    :cond_16f
    iget-object v0, p0, Lcom/android/server/wm/AppWindowToken;->startingWindow:Lcom/android/server/wm/WindowState;

    if-nez v0, :cond_183

    iget-object v0, p0, Lcom/android/server/wm/AppWindowToken;->startingSurface:Lcom/android/server/policy/WindowManagerPolicy$StartingSurface;

    if-nez v0, :cond_183

    iget-boolean v0, p0, Lcom/android/server/wm/AppWindowToken;->startingDisplayed:Z

    if-nez v0, :cond_183

    iget-boolean v0, p0, Lcom/android/server/wm/AppWindowToken;->startingMoved:Z

    if-nez v0, :cond_183

    iget-boolean v0, p0, Lcom/android/server/wm/AppWindowToken;->mHiddenSetFromTransferredStartingWindow:Z

    if-eqz v0, :cond_1c4

    .line 3181
    :cond_183
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "startingWindow="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/wm/AppWindowToken;->startingWindow:Lcom/android/server/wm/WindowState;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    .line 3182
    const-string v0, " startingSurface="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/wm/AppWindowToken;->startingSurface:Lcom/android/server/policy/WindowManagerPolicy$StartingSurface;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    .line 3183
    const-string v0, " startingDisplayed="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/wm/AppWindowToken;->startingDisplayed:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 3184
    const-string v0, " startingMoved="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/wm/AppWindowToken;->startingMoved:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 3185
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mHiddenSetFromTransferredStartingWindow="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/wm/AppWindowToken;->mHiddenSetFromTransferredStartingWindow:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3188
    :cond_1c4
    iget-object v0, p0, Lcom/android/server/wm/AppWindowToken;->mFrozenBounds:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1e6

    .line 3189
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mFrozenBounds="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/wm/AppWindowToken;->mFrozenBounds:Ljava/util/ArrayDeque;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 3190
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mFrozenMergedConfig="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/wm/AppWindowToken;->mFrozenMergedConfig:Ljava/util/ArrayDeque;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 3192
    :cond_1e6
    iget v0, p0, Lcom/android/server/wm/AppWindowToken;->mPendingRelaunchCount:I

    if-eqz v0, :cond_1f7

    .line 3193
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mPendingRelaunchCount="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/wm/AppWindowToken;->mPendingRelaunchCount:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 3195
    :cond_1f7
    iget v0, p0, Lcom/android/server/wm/AppWindowToken;->mSizeCompatScale:F

    const/high16 v1, 0x3f800000  # 1.0f

    cmpl-float v0, v0, v1

    if-nez v0, :cond_203

    iget-object v0, p0, Lcom/android/server/wm/AppWindowToken;->mSizeCompatBounds:Landroid/graphics/Rect;

    if-eqz v0, :cond_226

    .line 3196
    :cond_203
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "mSizeCompatScale="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/wm/AppWindowToken;->mSizeCompatScale:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, " mSizeCompatBounds="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/wm/AppWindowToken;->mSizeCompatBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3199
    :cond_226
    iget-boolean v0, p0, Lcom/android/server/wm/AppWindowToken;->mRemovingFromDisplay:Z

    if-eqz v0, :cond_243

    .line 3200
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "mRemovingFromDisplay="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/wm/AppWindowToken;->mRemovingFromDisplay:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3202
    :cond_243
    return-void
.end method

.method fillsParent()Z
    .registers 2

    .line 2417
    iget-boolean v0, p0, Lcom/android/server/wm/AppWindowToken;->mFillsParent:Z

    return v0
.end method

.method findMainWindow()Lcom/android/server/wm/WindowState;
    .registers 2

    .line 800
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/server/wm/AppWindowToken;->findMainWindow(Z)Lcom/android/server/wm/WindowState;

    move-result-object v0

    return-object v0
.end method

.method findMainWindow(Z)Lcom/android/server/wm/WindowState;
    .registers 8
    .param p1, "includeStartingApp"  # Z

    .line 811
    const/4 v0, 0x0

    .line 812
    .local v0, "candidate":Lcom/android/server/wm/WindowState;
    iget-object v1, p0, Lcom/android/server/wm/AppWindowToken;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowList;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    .local v1, "j":I
    :goto_9
    if-ltz v1, :cond_27

    .line 813
    iget-object v3, p0, Lcom/android/server/wm/AppWindowToken;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v3, v1}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/WindowState;

    .line 814
    .local v3, "win":Lcom/android/server/wm/WindowState;
    iget-object v4, v3, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v4, v4, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 817
    .local v4, "type":I
    if-eq v4, v2, :cond_1e

    if-eqz p1, :cond_23

    const/4 v5, 0x3

    if-ne v4, v5, :cond_23

    .line 822
    :cond_1e
    iget-boolean v5, v3, Lcom/android/server/wm/WindowState;->mAnimatingExit:Z

    if-eqz v5, :cond_26

    .line 823
    move-object v0, v3

    .line 812
    .end local v3  # "win":Lcom/android/server/wm/WindowState;
    .end local v4  # "type":I
    :cond_23
    add-int/lit8 v1, v1, -0x1

    goto :goto_9

    .line 825
    .restart local v3  # "win":Lcom/android/server/wm/WindowState;
    .restart local v4  # "type":I
    :cond_26
    return-object v3

    .line 829
    .end local v1  # "j":I
    .end local v3  # "win":Lcom/android/server/wm/WindowState;
    .end local v4  # "type":I
    :cond_27
    return-object v0
.end method

.method finishRelaunching()V
    .registers 2

    .line 1214
    invoke-direct {p0}, Lcom/android/server/wm/AppWindowToken;->unfreezeBounds()V

    .line 1216
    iget v0, p0, Lcom/android/server/wm/AppWindowToken;->mPendingRelaunchCount:I

    if-lez v0, :cond_c

    .line 1217
    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/android/server/wm/AppWindowToken;->mPendingRelaunchCount:I

    goto :goto_f

    .line 1220
    :cond_c
    invoke-virtual {p0}, Lcom/android/server/wm/AppWindowToken;->checkKeyguardFlagsChanged()V

    .line 1222
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

    .line 2121
    .local p1, "callback":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Lcom/android/server/wm/AppWindowToken;>;"
    invoke-interface {p1, p0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 2122
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

    .line 2113
    .local p1, "callback":Lcom/android/internal/util/ToBooleanFunction;, "Lcom/android/internal/util/ToBooleanFunction<Lcom/android/server/wm/WindowState;>;"
    iget-boolean v0, p0, Lcom/android/server/wm/AppWindowToken;->mIsExiting:Z

    if-eqz v0, :cond_c

    invoke-direct {p0}, Lcom/android/server/wm/AppWindowToken;->waitingForReplacement()Z

    move-result v0

    if-nez v0, :cond_c

    .line 2114
    const/4 v0, 0x0

    return v0

    .line 2116
    :cond_c
    invoke-virtual {p0, p1, p2}, Lcom/android/server/wm/AppWindowToken;->forAllWindowsUnchecked(Lcom/android/internal/util/ToBooleanFunction;Z)Z

    move-result v0

    return v0
.end method

.method forAllWindowsUnchecked(Lcom/android/internal/util/ToBooleanFunction;Z)Z
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

    .line 2126
    .local p1, "callback":Lcom/android/internal/util/ToBooleanFunction;, "Lcom/android/internal/util/ToBooleanFunction<Lcom/android/server/wm/WindowState;>;"
    invoke-super {p0, p1, p2}, Lcom/android/server/wm/WindowToken;->forAllWindows(Lcom/android/internal/util/ToBooleanFunction;Z)Z

    move-result v0

    return v0
.end method

.method getAnimationBounds(I)Landroid/graphics/Rect;
    .registers 3
    .param p1, "appStackClipMode"  # I
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 2612
    const/4 v0, 0x1

    if-ne p1, v0, :cond_12

    invoke-virtual {p0}, Lcom/android/server/wm/AppWindowToken;->getStack()Lcom/android/server/wm/TaskStack;

    move-result-object v0

    if-eqz v0, :cond_12

    .line 2614
    invoke-virtual {p0}, Lcom/android/server/wm/AppWindowToken;->getStack()Lcom/android/server/wm/TaskStack;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/TaskStack;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    return-object v0

    .line 2618
    :cond_12
    invoke-virtual {p0}, Lcom/android/server/wm/AppWindowToken;->getTask()Lcom/android/server/wm/Task;

    move-result-object v0

    if-eqz v0, :cond_21

    invoke-virtual {p0}, Lcom/android/server/wm/AppWindowToken;->getTask()Lcom/android/server/wm/Task;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/Task;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    goto :goto_25

    :cond_21
    invoke-virtual {p0}, Lcom/android/server/wm/AppWindowToken;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    :goto_25
    return-object v0
.end method

.method public getAnimationLeashParent()Landroid/view/SurfaceControl;
    .registers 2

    .line 2556
    invoke-virtual {p0}, Lcom/android/server/wm/AppWindowToken;->inPinnedWindowingMode()Z

    move-result v0

    if-nez v0, :cond_b

    .line 2557
    invoke-virtual {p0}, Lcom/android/server/wm/AppWindowToken;->getAppAnimationLayer()Landroid/view/SurfaceControl;

    move-result-object v0

    return-object v0

    .line 2559
    :cond_b
    invoke-virtual {p0}, Lcom/android/server/wm/AppWindowToken;->getStack()Lcom/android/server/wm/TaskStack;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/TaskStack;->getSurfaceControl()Landroid/view/SurfaceControl;

    move-result-object v0

    return-object v0
.end method

.method getAppAnimationLayer()Landroid/view/SurfaceControl;
    .registers 3

    .line 2540
    iget-object v0, p0, Lcom/android/server/wm/AppWindowToken;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mWmsExtInternal:Lcom/android/server/wm/FlymeWindowManagerInternal;

    invoke-virtual {v0, p0}, Lcom/android/server/wm/FlymeWindowManagerInternal;->getAppAnimationLayer(Lcom/android/server/wm/AppWindowToken;)Landroid/view/SurfaceControl;

    move-result-object v0

    .line 2541
    .local v0, "surfaceControl":Landroid/view/SurfaceControl;
    if-eqz v0, :cond_b

    .line 2542
    return-object v0

    .line 2545
    :cond_b
    invoke-virtual {p0}, Lcom/android/server/wm/AppWindowToken;->isActivityTypeHome()Z

    move-result v1

    if-eqz v1, :cond_13

    const/4 v1, 0x2

    goto :goto_1c

    .line 2546
    :cond_13
    invoke-virtual {p0}, Lcom/android/server/wm/AppWindowToken;->needsZBoost()Z

    move-result v1

    if-eqz v1, :cond_1b

    const/4 v1, 0x1

    goto :goto_1c

    .line 2547
    :cond_1b
    const/4 v1, 0x0

    .line 2545
    :goto_1c
    invoke-virtual {p0, v1}, Lcom/android/server/wm/AppWindowToken;->getAppAnimationLayer(I)Landroid/view/SurfaceControl;

    move-result-object v1

    return-object v1
.end method

.method public getBounds()Landroid/graphics/Rect;
    .registers 2

    .line 1889
    iget-object v0, p0, Lcom/android/server/wm/AppWindowToken;->mSizeCompatBounds:Landroid/graphics/Rect;

    if-eqz v0, :cond_5

    .line 1890
    return-object v0

    .line 1892
    :cond_5
    invoke-super {p0}, Lcom/android/server/wm/WindowToken;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    return-object v0
.end method

.method getDisplayedBounds()Landroid/graphics/Rect;
    .registers 4

    .line 2600
    invoke-virtual {p0}, Lcom/android/server/wm/AppWindowToken;->getTask()Lcom/android/server/wm/Task;

    move-result-object v0

    .line 2601
    .local v0, "task":Lcom/android/server/wm/Task;
    if-eqz v0, :cond_11

    .line 2602
    invoke-virtual {v0}, Lcom/android/server/wm/Task;->getOverrideDisplayedBounds()Landroid/graphics/Rect;

    move-result-object v1

    .line 2603
    .local v1, "overrideDisplayedBounds":Landroid/graphics/Rect;
    invoke-virtual {v1}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_11

    .line 2604
    return-object v1

    .line 2607
    .end local v1  # "overrideDisplayedBounds":Landroid/graphics/Rect;
    :cond_11
    invoke-virtual {p0}, Lcom/android/server/wm/AppWindowToken;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    return-object v1
.end method

.method getHighestAnimLayerWindow(Lcom/android/server/wm/WindowState;)Lcom/android/server/wm/WindowState;
    .registers 6
    .param p1, "currentTarget"  # Lcom/android/server/wm/WindowState;

    .line 2484
    const/4 v0, 0x0

    .line 2485
    .local v0, "candidate":Lcom/android/server/wm/WindowState;
    iget-object v1, p0, Lcom/android/server/wm/AppWindowToken;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v1, p1}, Lcom/android/server/wm/WindowList;->indexOf(Ljava/lang/Object;)I

    move-result v1

    .local v1, "i":I
    :goto_7
    if-ltz v1, :cond_1c

    .line 2486
    iget-object v2, p0, Lcom/android/server/wm/AppWindowToken;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v2, v1}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/WindowState;

    .line 2487
    .local v2, "w":Lcom/android/server/wm/WindowState;
    iget-boolean v3, v2, Lcom/android/server/wm/WindowState;->mRemoved:Z

    if-eqz v3, :cond_16

    .line 2488
    goto :goto_19

    .line 2490
    :cond_16
    if-nez v0, :cond_19

    .line 2491
    move-object v0, v2

    .line 2485
    .end local v2  # "w":Lcom/android/server/wm/WindowState;
    :cond_19
    :goto_19
    add-int/lit8 v1, v1, -0x1

    goto :goto_7

    .line 2494
    .end local v1  # "i":I
    :cond_1c
    return-object v0
.end method

.method getImeTargetBelowWindow(Lcom/android/server/wm/WindowState;)Lcom/android/server/wm/WindowState;
    .registers 5
    .param p1, "w"  # Lcom/android/server/wm/WindowState;

    .line 2473
    iget-object v0, p0, Lcom/android/server/wm/AppWindowToken;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/WindowList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 2474
    .local v0, "index":I
    if-lez v0, :cond_19

    .line 2475
    iget-object v1, p0, Lcom/android/server/wm/AppWindowToken;->mChildren:Lcom/android/server/wm/WindowList;

    add-int/lit8 v2, v0, -0x1

    invoke-virtual {v1, v2}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/WindowState;

    .line 2476
    .local v1, "target":Lcom/android/server/wm/WindowState;
    invoke-virtual {v1}, Lcom/android/server/wm/WindowState;->canBeImeTarget()Z

    move-result v2

    if-eqz v2, :cond_19

    .line 2477
    return-object v1

    .line 2480
    .end local v1  # "target":Lcom/android/server/wm/WindowState;
    :cond_19
    const/4 v1, 0x0

    return-object v1
.end method

.method getLetterboxInnerBounds(Landroid/graphics/Rect;)V
    .registers 3
    .param p1, "outBounds"  # Landroid/graphics/Rect;

    .line 3329
    iget-object v0, p0, Lcom/android/server/wm/AppWindowToken;->mLetterbox:Lcom/android/server/wm/Letterbox;

    if-eqz v0, :cond_c

    .line 3330
    invoke-virtual {v0}, Lcom/android/server/wm/Letterbox;->getInnerFrame()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    goto :goto_f

    .line 3332
    :cond_c
    invoke-virtual {p1}, Landroid/graphics/Rect;->setEmpty()V

    .line 3334
    :goto_f
    return-void
.end method

.method getLetterboxInsets()Landroid/graphics/Rect;
    .registers 2

    .line 3320
    iget-object v0, p0, Lcom/android/server/wm/AppWindowToken;->mLetterbox:Lcom/android/server/wm/Letterbox;

    if-eqz v0, :cond_9

    .line 3321
    invoke-virtual {v0}, Lcom/android/server/wm/Letterbox;->getInsets()Landroid/graphics/Rect;

    move-result-object v0

    return-object v0

    .line 3323
    :cond_9
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    return-object v0
.end method

.method getOrientation(I)I
    .registers 7
    .param p1, "candidate"  # I

    .line 1630
    const-string v0, ",mLockOrientation="

    const-string v1, "getOrientation this ="

    const-string v2, "WindowManager"

    const/high16 v3, -0x80000000

    const/4 v4, 0x3

    if-ne p1, v4, :cond_39

    .line 1635
    iget v4, p0, Lcom/android/server/wm/AppWindowToken;->mLockOrientation:I

    if-eq v4, v3, :cond_36

    iget-object v3, p0, Lcom/android/server/wm/AppWindowToken;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v3, Lcom/android/server/wm/WindowManagerService;->mWmsExtInternal:Lcom/android/server/wm/FlymeWindowManagerInternal;

    .line 1636
    invoke-virtual {v3}, Lcom/android/server/wm/FlymeWindowManagerInternal;->isLockOrientationForSensor()Z

    move-result v3

    if-eqz v3, :cond_36

    .line 1637
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/android/server/wm/AppWindowToken;->mLockOrientation:I

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1638
    iget v0, p0, Lcom/android/server/wm/AppWindowToken;->mLockOrientation:I

    return v0

    .line 1641
    :cond_36
    iget v0, p0, Lcom/android/server/wm/AppWindowToken;->mOrientation:I

    return v0

    .line 1647
    :cond_39
    iget-boolean v4, p0, Lcom/android/server/wm/AppWindowToken;->sendingToBottom:Z

    if-nez v4, :cond_89

    invoke-virtual {p0}, Lcom/android/server/wm/AppWindowToken;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v4

    iget-object v4, v4, Lcom/android/server/wm/DisplayContent;->mClosingApps:Landroid/util/ArraySet;

    invoke-virtual {v4, p0}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_89

    .line 1648
    invoke-virtual {p0}, Lcom/android/server/wm/AppWindowToken;->isVisible()Z

    move-result v4

    if-nez v4, :cond_5b

    invoke-virtual {p0}, Lcom/android/server/wm/AppWindowToken;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v4

    iget-object v4, v4, Lcom/android/server/wm/DisplayContent;->mOpeningApps:Landroid/util/ArraySet;

    invoke-virtual {v4, p0}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_89

    .line 1650
    :cond_5b
    iget v4, p0, Lcom/android/server/wm/AppWindowToken;->mLockOrientation:I

    if-eq v4, v3, :cond_86

    iget-object v3, p0, Lcom/android/server/wm/AppWindowToken;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v3, Lcom/android/server/wm/WindowManagerService;->mWmsExtInternal:Lcom/android/server/wm/FlymeWindowManagerInternal;

    .line 1651
    invoke-virtual {v3}, Lcom/android/server/wm/FlymeWindowManagerInternal;->isLockOrientationForSensor()Z

    move-result v3

    if-eqz v3, :cond_86

    .line 1652
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/android/server/wm/AppWindowToken;->mLockOrientation:I

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1653
    iget v0, p0, Lcom/android/server/wm/AppWindowToken;->mLockOrientation:I

    return v0

    .line 1656
    :cond_86
    iget v0, p0, Lcom/android/server/wm/AppWindowToken;->mOrientation:I

    return v0

    .line 1659
    :cond_89
    const/4 v0, -0x2

    return v0
.end method

.method getOrientationIgnoreVisibility()I
    .registers 2

    .line 1664
    iget v0, p0, Lcom/android/server/wm/AppWindowToken;->mOrientation:I

    return v0
.end method

.method getRemoteAnimationDefinition()Landroid/view/RemoteAnimationDefinition;
    .registers 2

    .line 3137
    iget-object v0, p0, Lcom/android/server/wm/AppWindowToken;->mRemoteAnimationDefinition:Landroid/view/RemoteAnimationDefinition;

    return-object v0
.end method

.method getResolvedOverrideBounds()Landroid/graphics/Rect;
    .registers 2

    .line 1683
    invoke-virtual {p0}, Lcom/android/server/wm/AppWindowToken;->getResolvedOverrideConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget-object v0, v0, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v0}, Landroid/app/WindowConfiguration;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    return-object v0
.end method

.method getSizeCompatScale()F
    .registers 2

    .line 1674
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
    .registers 3

    .line 1040
    invoke-virtual {p0}, Lcom/android/server/wm/AppWindowToken;->getTask()Lcom/android/server/wm/Task;

    move-result-object v0

    .line 1041
    .local v0, "task":Lcom/android/server/wm/Task;
    if-eqz v0, :cond_9

    .line 1042
    iget-object v1, v0, Lcom/android/server/wm/Task;->mStack:Lcom/android/server/wm/TaskStack;

    return-object v1

    .line 1044
    :cond_9
    const/4 v1, 0x0

    return-object v1
.end method

.method getTask()Lcom/android/server/wm/Task;
    .registers 2

    .line 1036
    invoke-virtual {p0}, Lcom/android/server/wm/AppWindowToken;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/Task;

    return-object v0
.end method

.method getThumbnail()Lcom/android/server/wm/AppWindowThumbnail;
    .registers 2
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 1850
    iget-object v0, p0, Lcom/android/server/wm/AppWindowToken;->mThumbnail:Lcom/android/server/wm/AppWindowThumbnail;

    return-object v0
.end method

.method getTopFullscreenWindow()Lcom/android/server/wm/WindowState;
    .registers 4

    .line 790
    iget-object v0, p0, Lcom/android/server/wm/AppWindowToken;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_8
    if-ltz v0, :cond_20

    .line 791
    iget-object v1, p0, Lcom/android/server/wm/AppWindowToken;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v1, v0}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/WindowState;

    .line 792
    .local v1, "win":Lcom/android/server/wm/WindowState;
    if-eqz v1, :cond_1d

    iget-object v2, v1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {v2}, Landroid/view/WindowManager$LayoutParams;->isFullscreen()Z

    move-result v2

    if-eqz v2, :cond_1d

    .line 793
    return-object v1

    .line 790
    .end local v1  # "win":Lcom/android/server/wm/WindowState;
    :cond_1d
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    .line 796
    .end local v0  # "i":I
    :cond_20
    const/4 v0, 0x0

    return-object v0
.end method

.method public getTransit()I
    .registers 2

    .line 3053
    iget v0, p0, Lcom/android/server/wm/AppWindowToken;->mTransit:I

    return v0
.end method

.method getTransitFlags()I
    .registers 2

    .line 3057
    iget v0, p0, Lcom/android/server/wm/AppWindowToken;->mTransitFlags:I

    return v0
.end method

.method hasWindowsAlive()Z
    .registers 4

    .line 1121
    iget-object v0, p0, Lcom/android/server/wm/AppWindowToken;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowList;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    .local v0, "i":I
    :goto_8
    if-ltz v0, :cond_1a

    .line 1124
    iget-object v2, p0, Lcom/android/server/wm/AppWindowToken;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v2, v0}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/WindowState;

    iget-boolean v2, v2, Lcom/android/server/wm/WindowState;->mAppDied:Z

    if-nez v2, :cond_17

    .line 1125
    return v1

    .line 1121
    :cond_17
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    .line 1128
    .end local v0  # "i":I
    :cond_1a
    const/4 v0, 0x0

    return v0
.end method

.method inSizeCompatMode()Z
    .registers 2

    .line 1669
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

    .line 2985
    invoke-virtual {p0}, Lcom/android/server/wm/AppWindowToken;->isSelfAnimating()Z

    move-result v0

    return v0
.end method

.method isClientHidden()Z
    .registers 2

    .line 472
    iget-boolean v0, p0, Lcom/android/server/wm/AppWindowToken;->mClientHidden:Z

    return v0
.end method

.method isClosingOrEnteringPip()Z
    .registers 2

    .line 3358
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
    .registers 8
    .param p1, "newWindow"  # Lcom/android/server/wm/WindowState;
    .param p2, "existingWindow"  # Lcom/android/server/wm/WindowState;

    .line 1239
    iget-object v0, p1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 1240
    .local v0, "type1":I
    iget-object v1, p2, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v1, v1, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 1243
    .local v1, "type2":I
    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v0, v3, :cond_f

    if-eq v1, v3, :cond_f

    .line 1244
    return v2

    .line 1245
    :cond_f
    if-eq v0, v3, :cond_14

    if-ne v1, v3, :cond_14

    .line 1246
    return v3

    .line 1250
    :cond_14
    const/4 v4, 0x3

    if-ne v0, v4, :cond_1a

    if-eq v1, v4, :cond_1a

    .line 1251
    return v3

    .line 1252
    :cond_1a
    if-eq v0, v4, :cond_1f

    if-ne v1, v4, :cond_1f

    .line 1253
    return v2

    .line 1257
    :cond_1f
    return v3
.end method

.method isFreezingScreen()Z
    .registers 2

    .line 3244
    iget-boolean v0, p0, Lcom/android/server/wm/AppWindowToken;->mFreezingScreen:Z

    return v0
.end method

.method isInChangeTransition()Z
    .registers 2

    .line 1845
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
    .param p1, "win"  # Lcom/android/server/wm/WindowState;

    .line 1616
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
    .param p1, "rect"  # Landroid/graphics/Rect;

    .line 3341
    iget-object v0, p0, Lcom/android/server/wm/AppWindowToken;->mLetterbox:Lcom/android/server/wm/Letterbox;

    if-eqz v0, :cond_c

    invoke-virtual {v0, p1}, Lcom/android/server/wm/Letterbox;->isOverlappingWith(Landroid/graphics/Rect;)Z

    move-result v0

    if-eqz v0, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    return v0
.end method

.method isRelaunching()Z
    .registers 2

    .line 1168
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

    .line 2991
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

    .line 3240
    iget-boolean v0, p0, Lcom/android/server/wm/AppWindowToken;->mLastSurfaceShowing:Z

    return v0
.end method

.method isVisible()Z
    .registers 2

    .line 851
    invoke-virtual {p0}, Lcom/android/server/wm/AppWindowToken;->isHidden()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method isWaitingForTransitionStart()Z
    .registers 2

    .line 3046
    invoke-virtual {p0}, Lcom/android/server/wm/AppWindowToken;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    iget-object v0, v0, Lcom/android/server/wm/DisplayContent;->mAppTransition:Lcom/android/server/wm/AppTransition;

    invoke-virtual {v0}, Lcom/android/server/wm/AppTransition;->isTransitionSet()Z

    move-result v0

    if-eqz v0, :cond_32

    .line 3047
    invoke-virtual {p0}, Lcom/android/server/wm/AppWindowToken;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    iget-object v0, v0, Lcom/android/server/wm/DisplayContent;->mOpeningApps:Landroid/util/ArraySet;

    invoke-virtual {v0, p0}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_30

    .line 3048
    invoke-virtual {p0}, Lcom/android/server/wm/AppWindowToken;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    iget-object v0, v0, Lcom/android/server/wm/DisplayContent;->mClosingApps:Landroid/util/ArraySet;

    invoke-virtual {v0, p0}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_30

    .line 3049
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

    .line 3046
    :goto_33
    return v0
.end method

.method keyDispatchingTimedOut(Ljava/lang/String;I)Z
    .registers 4
    .param p1, "reason"  # Ljava/lang/String;
    .param p2, "windowPid"  # I

    .line 1992
    iget-object v0, p0, Lcom/android/server/wm/AppWindowToken;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    if-eqz v0, :cond_c

    invoke-virtual {v0, p1, p2}, Lcom/android/server/wm/ActivityRecord;->keyDispatchingTimedOut(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    return v0
.end method

.method public synthetic lambda$layoutLetterbox$3$AppWindowToken()Landroid/view/SurfaceControl$Builder;
    .registers 2

    .line 2080
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/server/wm/AppWindowToken;->makeChildSurface(Lcom/android/server/wm/WindowContainer;)Landroid/view/SurfaceControl$Builder;

    move-result-object v0

    return-object v0
.end method

.method public synthetic lambda$new$0$AppWindowToken([F[F)V
    .registers 6
    .param p1, "matrix"  # [F
    .param p2, "translation"  # [F

    .line 330
    iget-object v0, p0, Lcom/android/server/wm/AppWindowToken;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_5
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 331
    iget-object v1, p0, Lcom/android/server/wm/AppWindowToken;->mLastAppSaturationInfo:Lcom/android/server/wm/AppWindowToken$AppSaturationInfo;

    if-nez v1, :cond_14

    .line 332
    new-instance v1, Lcom/android/server/wm/AppWindowToken$AppSaturationInfo;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/android/server/wm/AppWindowToken$AppSaturationInfo;-><init>(Lcom/android/server/wm/AppWindowToken$1;)V

    iput-object v1, p0, Lcom/android/server/wm/AppWindowToken;->mLastAppSaturationInfo:Lcom/android/server/wm/AppWindowToken$AppSaturationInfo;

    .line 335
    :cond_14
    iget-object v1, p0, Lcom/android/server/wm/AppWindowToken;->mLastAppSaturationInfo:Lcom/android/server/wm/AppWindowToken$AppSaturationInfo;

    invoke-virtual {v1, p1, p2}, Lcom/android/server/wm/AppWindowToken$AppSaturationInfo;->setSaturation([F[F)V

    .line 336
    invoke-direct {p0}, Lcom/android/server/wm/AppWindowToken;->updateColorTransform()V

    .line 337
    monitor-exit v0
    :try_end_1d
    .catchall {:try_start_5 .. :try_end_1d} :catchall_21

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 338
    return-void

    .line 337
    :catchall_21
    move-exception v1

    :try_start_22
    monitor-exit v0
    :try_end_23
    .catchall {:try_start_22 .. :try_end_23} :catchall_21

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method public synthetic lambda$new$1$AppWindowToken([F[F)V
    .registers 5
    .param p1, "matrix"  # [F
    .param p2, "translation"  # [F

    .line 329
    iget-object v0, p0, Lcom/android/server/wm/AppWindowToken;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    new-instance v1, Lcom/android/server/wm/-$$Lambda$AppWindowToken$-fbAn0RqOBB6FcyKBQMt-QpZ1Ec;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/server/wm/-$$Lambda$AppWindowToken$-fbAn0RqOBB6FcyKBQMt-QpZ1Ec;-><init>(Lcom/android/server/wm/AppWindowToken;[F[F)V

    invoke-virtual {v0, v1}, Lcom/android/server/wm/WindowManagerService$H;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public synthetic lambda$shouldUseAppThemeSnapshot$5$AppWindowToken(Lcom/android/server/wm/WindowState;)Z
    .registers 3
    .param p1, "w"  # Lcom/android/server/wm/WindowState;

    .line 2534
    iget-object v0, p0, Lcom/android/server/wm/AppWindowToken;->mWmService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/WindowManagerService;->isSecureLocked(Lcom/android/server/wm/WindowState;)Z

    move-result v0

    return v0
.end method

.method layoutLetterbox(Lcom/android/server/wm/WindowState;)V
    .registers 9
    .param p1, "winHint"  # Lcom/android/server/wm/WindowState;

    .line 2068
    invoke-virtual {p0}, Lcom/android/server/wm/AppWindowToken;->findMainWindow()Lcom/android/server/wm/WindowState;

    move-result-object v0

    .line 2069
    .local v0, "w":Lcom/android/server/wm/WindowState;
    if-eqz v0, :cond_85

    if-eqz p1, :cond_c

    if-eq v0, p1, :cond_c

    goto/16 :goto_85

    .line 2072
    :cond_c
    invoke-virtual {v0}, Lcom/android/server/wm/WindowState;->isDrawnLw()Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v1, :cond_23

    iget-object v1, v0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    iget-boolean v1, v1, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceDestroyDeferred:Z

    if-nez v1, :cond_23

    .line 2074
    invoke-virtual {v0}, Lcom/android/server/wm/WindowState;->isDragResizeChanged()Z

    move-result v1

    if-eqz v1, :cond_21

    goto :goto_23

    :cond_21
    move v1, v2

    goto :goto_24

    :cond_23
    :goto_23
    move v1, v3

    .line 2075
    .local v1, "surfaceReady":Z
    :goto_24
    if-eqz v1, :cond_33

    invoke-virtual {v0}, Lcom/android/server/wm/WindowState;->isLetterboxedAppWindow()Z

    move-result v4

    if-eqz v4, :cond_33

    invoke-virtual {p0}, Lcom/android/server/wm/AppWindowToken;->fillsParent()Z

    move-result v4

    if-eqz v4, :cond_33

    move v2, v3

    .line 2076
    .local v2, "needsLetterbox":Z
    :cond_33
    if-eqz v2, :cond_7b

    .line 2077
    iget-object v3, p0, Lcom/android/server/wm/AppWindowToken;->mLetterbox:Lcom/android/server/wm/Letterbox;

    if-nez v3, :cond_4c

    .line 2080
    new-instance v3, Lcom/android/server/wm/FlymeLetterbox;

    new-instance v4, Lcom/android/server/wm/-$$Lambda$AppWindowToken$kWpxOpxJiMwx92-ZTbqi9WL8d2s;

    invoke-direct {v4, p0}, Lcom/android/server/wm/-$$Lambda$AppWindowToken$kWpxOpxJiMwx92-ZTbqi9WL8d2s;-><init>(Lcom/android/server/wm/AppWindowToken;)V

    iget-object v5, p0, Lcom/android/server/wm/AppWindowToken;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-direct {v3, v4, v5}, Lcom/android/server/wm/FlymeLetterbox;-><init>(Ljava/util/function/Supplier;Lcom/android/server/wm/DisplayContent;)V

    iput-object v3, p0, Lcom/android/server/wm/AppWindowToken;->mLetterbox:Lcom/android/server/wm/Letterbox;

    .line 2082
    iget-object v3, p0, Lcom/android/server/wm/AppWindowToken;->mLetterbox:Lcom/android/server/wm/Letterbox;

    invoke-virtual {v3, v0}, Lcom/android/server/wm/Letterbox;->attachInput(Lcom/android/server/wm/WindowState;)V

    .line 2084
    :cond_4c
    iget-object v3, p0, Lcom/android/server/wm/AppWindowToken;->mTmpPoint:Landroid/graphics/Point;

    invoke-virtual {p0, v3}, Lcom/android/server/wm/AppWindowToken;->getPosition(Landroid/graphics/Point;)V

    .line 2088
    invoke-virtual {p0}, Lcom/android/server/wm/AppWindowToken;->inMultiWindowMode()Z

    move-result v3

    if-nez v3, :cond_67

    invoke-virtual {p0}, Lcom/android/server/wm/AppWindowToken;->getStack()Lcom/android/server/wm/TaskStack;

    move-result-object v3

    if-nez v3, :cond_5e

    goto :goto_67

    .line 2089
    :cond_5e
    invoke-virtual {p0}, Lcom/android/server/wm/AppWindowToken;->getStack()Lcom/android/server/wm/TaskStack;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/wm/TaskStack;->getDisplayedBounds()Landroid/graphics/Rect;

    move-result-object v3

    goto :goto_6f

    :cond_67
    :goto_67
    invoke-virtual {p0}, Lcom/android/server/wm/AppWindowToken;->getTask()Lcom/android/server/wm/Task;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/wm/Task;->getDisplayedBounds()Landroid/graphics/Rect;

    move-result-object v3

    .line 2090
    .local v3, "spaceToFill":Landroid/graphics/Rect;
    :goto_6f
    iget-object v4, p0, Lcom/android/server/wm/AppWindowToken;->mLetterbox:Lcom/android/server/wm/Letterbox;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowState;->getFrameLw()Landroid/graphics/Rect;

    move-result-object v5

    iget-object v6, p0, Lcom/android/server/wm/AppWindowToken;->mTmpPoint:Landroid/graphics/Point;

    invoke-virtual {v4, v3, v5, v6}, Lcom/android/server/wm/Letterbox;->layout(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Point;)V

    .end local v3  # "spaceToFill":Landroid/graphics/Rect;
    goto :goto_83

    .line 2091
    :cond_7b
    iget-object v3, p0, Lcom/android/server/wm/AppWindowToken;->mLetterbox:Lcom/android/server/wm/Letterbox;

    if-eqz v3, :cond_83

    .line 2092
    invoke-virtual {v3}, Lcom/android/server/wm/Letterbox;->hide()V

    goto :goto_84

    .line 2091
    :cond_83
    :goto_83
    nop

    .line 2094
    :goto_84
    return-void

    .line 2070
    .end local v1  # "surfaceReady":Z
    .end local v2  # "needsLetterbox":Z
    :cond_85
    :goto_85
    return-void
.end method

.method public matchParentBounds()Z
    .registers 5

    .line 1897
    invoke-super {p0}, Lcom/android/server/wm/WindowToken;->matchParentBounds()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_8

    .line 1898
    return v1

    .line 1902
    :cond_8
    invoke-virtual {p0}, Lcom/android/server/wm/AppWindowToken;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object v0

    .line 1903
    .local v0, "parent":Lcom/android/server/wm/WindowContainer;
    if-eqz v0, :cond_1e

    invoke-virtual {v0}, Lcom/android/server/wm/WindowContainer;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/server/wm/AppWindowToken;->getResolvedOverrideBounds()Landroid/graphics/Rect;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1d

    goto :goto_1e

    :cond_1d
    const/4 v1, 0x0

    :cond_1e
    :goto_1e
    return v1
.end method

.method needsZBoost()Z
    .registers 2

    .line 3249
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
    .registers 4
    .param p1, "wasStopped"  # Z

    .line 1005
    sget-boolean v0, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_ADD_REMOVE:Z

    if-eqz v0, :cond_22

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "notifyAppResumed: wasStopped="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WindowManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1007
    :cond_22
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/wm/AppWindowToken;->mAppStopped:Z

    .line 1009
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/server/wm/AppWindowToken;->setCanTurnScreenOn(Z)V

    .line 1010
    if-nez p1, :cond_2e

    .line 1011
    invoke-direct {p0, v0}, Lcom/android/server/wm/AppWindowToken;->destroySurfaces(Z)V

    .line 1013
    :cond_2e
    return-void
.end method

.method notifyAppStopped()V
    .registers 3

    .line 1020
    sget-boolean v0, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_ADD_REMOVE:Z

    if-eqz v0, :cond_1a

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "notifyAppStopped: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WindowManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1021
    :cond_1a
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/wm/AppWindowToken;->mAppStopped:Z

    .line 1022
    invoke-virtual {p0}, Lcom/android/server/wm/AppWindowToken;->destroySurfaces()V

    .line 1024
    invoke-virtual {p0}, Lcom/android/server/wm/AppWindowToken;->removeStartingWindow()V

    .line 1026
    invoke-virtual {p0}, Lcom/android/server/wm/AppWindowToken;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    iget-object v0, v0, Lcom/android/server/wm/DisplayContent;->mUnknownAppVisibilityController:Lcom/android/server/wm/UnknownAppVisibilityController;

    invoke-virtual {v0, p0}, Lcom/android/server/wm/UnknownAppVisibilityController;->appRemovedOrHidden(Lcom/android/server/wm/AppWindowToken;)V

    .line 1028
    return-void
.end method

.method protected onAnimationFinished()V
    .registers 6

    .line 2943
    invoke-super {p0}, Lcom/android/server/wm/WindowToken;->onAnimationFinished()V

    .line 2945
    const-wide/16 v0, 0x20

    const-string v2, "AWT#onAnimationFinished"

    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 2946
    const/4 v2, -0x1

    iput v2, p0, Lcom/android/server/wm/AppWindowToken;->mTransit:I

    .line 2947
    const/4 v2, 0x0

    iput v2, p0, Lcom/android/server/wm/AppWindowToken;->mTransitFlags:I

    .line 2948
    iput-boolean v2, p0, Lcom/android/server/wm/AppWindowToken;->mNeedsZBoost:Z

    .line 2949
    iput-boolean v2, p0, Lcom/android/server/wm/AppWindowToken;->mNeedsAnimationBoundsLayer:Z

    .line 2951
    const/16 v3, 0xc

    const-string v4, "AppWindowToken"

    invoke-virtual {p0, v3, v4}, Lcom/android/server/wm/AppWindowToken;->setAppLayoutChanges(ILjava/lang/String;)V

    .line 2954
    invoke-direct {p0}, Lcom/android/server/wm/AppWindowToken;->clearThumbnail()V

    .line 2955
    invoke-virtual {p0}, Lcom/android/server/wm/AppWindowToken;->isHidden()Z

    move-result v3

    if-eqz v3, :cond_29

    iget-boolean v3, p0, Lcom/android/server/wm/AppWindowToken;->hiddenRequested:Z

    if-eqz v3, :cond_29

    const/4 v2, 0x1

    :cond_29
    invoke-virtual {p0, v2}, Lcom/android/server/wm/AppWindowToken;->setClientHidden(Z)V

    .line 2957
    invoke-virtual {p0}, Lcom/android/server/wm/AppWindowToken;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v2

    invoke-virtual {v2, p0}, Lcom/android/server/wm/DisplayContent;->computeImeTargetIfNeeded(Lcom/android/server/wm/AppWindowToken;)V

    .line 2959
    sget-boolean v2, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_ANIM:Z

    if-eqz v2, :cond_79

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Animation done in "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ": reportedVisible="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/android/server/wm/AppWindowToken;->reportedVisible:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, " okToDisplay="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2961
    invoke-virtual {p0}, Lcom/android/server/wm/AppWindowToken;->okToDisplay()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, " okToAnimate="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2962
    invoke-virtual {p0}, Lcom/android/server/wm/AppWindowToken;->okToAnimate()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, " startingDisplayed="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/android/server/wm/AppWindowToken;->startingDisplayed:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 2959
    const-string v3, "WindowManager"

    invoke-static {v3, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2966
    :cond_79
    iget-object v2, p0, Lcom/android/server/wm/AppWindowToken;->mThumbnail:Lcom/android/server/wm/AppWindowThumbnail;

    if-eqz v2, :cond_83

    .line 2967
    invoke-virtual {v2}, Lcom/android/server/wm/AppWindowThumbnail;->destroy()V

    .line 2968
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/server/wm/AppWindowToken;->mThumbnail:Lcom/android/server/wm/AppWindowThumbnail;

    .line 2973
    :cond_83
    new-instance v2, Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/android/server/wm/AppWindowToken;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 2974
    .local v2, "children":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wm/WindowState;>;"
    sget-object v3, Lcom/android/server/wm/-$$Lambda$01bPtngJg5AqEoOWfW3rWfV7MH4;->INSTANCE:Lcom/android/server/wm/-$$Lambda$01bPtngJg5AqEoOWfW3rWfV7MH4;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->forEach(Ljava/util/function/Consumer;)V

    .line 2976
    invoke-virtual {p0}, Lcom/android/server/wm/AppWindowToken;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v3

    iget-object v3, v3, Lcom/android/server/wm/DisplayContent;->mAppTransition:Lcom/android/server/wm/AppTransition;

    iget-object v4, p0, Lcom/android/server/wm/AppWindowToken;->token:Landroid/os/IBinder;

    invoke-virtual {v3, v4}, Lcom/android/server/wm/AppTransition;->notifyAppTransitionFinishedLocked(Landroid/os/IBinder;)V

    .line 2977
    invoke-virtual {p0}, Lcom/android/server/wm/AppWindowToken;->scheduleAnimation()V

    .line 2979
    iget-object v3, p0, Lcom/android/server/wm/AppWindowToken;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v3}, Lcom/android/server/wm/ActivityRecord;->onAnimationFinished()V

    .line 2980
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 2981
    return-void
.end method

.method public onAnimationLeashCreated(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;)V
    .registers 8
    .param p1, "t"  # Landroid/view/SurfaceControl$Transaction;
    .param p2, "leash"  # Landroid/view/SurfaceControl;

    .line 2869
    const/4 v0, 0x0

    .line 2871
    .local v0, "layer":I
    iget-object v1, p0, Lcom/android/server/wm/AppWindowToken;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mWmsExtInternal:Lcom/android/server/wm/FlymeWindowManagerInternal;

    invoke-virtual {v1, p0, p1, p2}, Lcom/android/server/wm/FlymeWindowManagerInternal;->onAppWindowTokenAnimationLeashCreated(Lcom/android/server/wm/AppWindowToken;Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;)V

    .line 2873
    invoke-virtual {p0}, Lcom/android/server/wm/AppWindowToken;->inPinnedWindowingMode()Z

    move-result v1

    if-nez v1, :cond_13

    .line 2874
    invoke-virtual {p0}, Lcom/android/server/wm/AppWindowToken;->getPrefixOrderIndex()I

    move-result v0

    goto :goto_1b

    .line 2879
    :cond_13
    invoke-virtual {p0}, Lcom/android/server/wm/AppWindowToken;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/wm/WindowContainer;->getPrefixOrderIndex()I

    move-result v0

    .line 2882
    :goto_1b
    iget-boolean v1, p0, Lcom/android/server/wm/AppWindowToken;->mNeedsZBoost:Z

    if-eqz v1, :cond_23

    .line 2883
    const v1, 0x2fb7ba90

    add-int/2addr v0, v1

    .line 2885
    :cond_23
    iget-boolean v1, p0, Lcom/android/server/wm/AppWindowToken;->mNeedsAnimationBoundsLayer:Z

    if-nez v1, :cond_2a

    .line 2886
    invoke-virtual {p2, v0}, Landroid/view/SurfaceControl;->setLayer(I)V

    .line 2889
    :cond_2a
    invoke-virtual {p0}, Lcom/android/server/wm/AppWindowToken;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v1

    .line 2890
    .local v1, "dc":Lcom/android/server/wm/DisplayContent;
    invoke-virtual {v1}, Lcom/android/server/wm/DisplayContent;->assignStackOrdering()V

    .line 2892
    iget-object v2, p0, Lcom/android/server/wm/AppWindowToken;->mTransitChangeLeash:Landroid/view/SurfaceControl;

    if-ne p2, v2, :cond_36

    .line 2894
    return-void

    .line 2895
    :cond_36
    if-eqz v2, :cond_3c

    .line 2897
    const/4 v2, 0x0

    invoke-direct {p0, p1, v2}, Lcom/android/server/wm/AppWindowToken;->clearChangeLeash(Landroid/view/SurfaceControl$Transaction;Z)V

    .line 2900
    :cond_3c
    iget-object v2, p0, Lcom/android/server/wm/AppWindowToken;->mAnimatingAppWindowTokenRegistry:Lcom/android/server/wm/AnimatingAppWindowTokenRegistry;

    if-eqz v2, :cond_43

    .line 2901
    invoke-virtual {v2, p0}, Lcom/android/server/wm/AnimatingAppWindowTokenRegistry;->notifyStarting(Lcom/android/server/wm/AppWindowToken;)V

    .line 2906
    :cond_43
    iget-boolean v2, p0, Lcom/android/server/wm/AppWindowToken;->mNeedsAnimationBoundsLayer:Z

    if-eqz v2, :cond_89

    .line 2907
    iget-object v2, p0, Lcom/android/server/wm/AppWindowToken;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->setEmpty()V

    .line 2908
    invoke-virtual {p0}, Lcom/android/server/wm/AppWindowToken;->getTask()Lcom/android/server/wm/Task;

    move-result-object v2

    .line 2909
    .local v2, "task":Lcom/android/server/wm/Task;
    invoke-virtual {p0}, Lcom/android/server/wm/AppWindowToken;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v3

    iget-object v3, v3, Lcom/android/server/wm/DisplayContent;->mAppTransitionController:Lcom/android/server/wm/AppTransitionController;

    .line 2910
    invoke-virtual {p0}, Lcom/android/server/wm/AppWindowToken;->getTransit()I

    move-result v4

    .line 2909
    invoke-virtual {v3, v4, v2}, Lcom/android/server/wm/AppTransitionController;->isTransitWithinTask(ILcom/android/server/wm/Task;)Z

    move-result v3

    if-eqz v3, :cond_66

    .line 2911
    iget-object v3, p0, Lcom/android/server/wm/AppWindowToken;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v2, v3}, Lcom/android/server/wm/Task;->getBounds(Landroid/graphics/Rect;)V

    goto :goto_72

    .line 2913
    :cond_66
    invoke-virtual {p0}, Lcom/android/server/wm/AppWindowToken;->getStack()Lcom/android/server/wm/TaskStack;

    move-result-object v3

    .line 2914
    .local v3, "stack":Lcom/android/server/wm/TaskStack;
    if-nez v3, :cond_6d

    .line 2915
    return-void

    .line 2918
    :cond_6d
    iget-object v4, p0, Lcom/android/server/wm/AppWindowToken;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v3, v4}, Lcom/android/server/wm/TaskStack;->getBounds(Landroid/graphics/Rect;)V

    .line 2920
    .end local v3  # "stack":Lcom/android/server/wm/TaskStack;
    :goto_72
    invoke-direct {p0, p1}, Lcom/android/server/wm/AppWindowToken;->createAnimationBoundsLayer(Landroid/view/SurfaceControl$Transaction;)Landroid/view/SurfaceControl;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/wm/AppWindowToken;->mAnimationBoundsLayer:Landroid/view/SurfaceControl;

    .line 2923
    iget-object v3, p0, Lcom/android/server/wm/AppWindowToken;->mAnimationBoundsLayer:Landroid/view/SurfaceControl;

    iget-object v4, p0, Lcom/android/server/wm/AppWindowToken;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {p1, v3, v4}, Landroid/view/SurfaceControl$Transaction;->setWindowCrop(Landroid/view/SurfaceControl;Landroid/graphics/Rect;)Landroid/view/SurfaceControl$Transaction;

    .line 2924
    iget-object v3, p0, Lcom/android/server/wm/AppWindowToken;->mAnimationBoundsLayer:Landroid/view/SurfaceControl;

    invoke-virtual {p1, v3, v0}, Landroid/view/SurfaceControl$Transaction;->setLayer(Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;

    .line 2927
    iget-object v3, p0, Lcom/android/server/wm/AppWindowToken;->mAnimationBoundsLayer:Landroid/view/SurfaceControl;

    invoke-virtual {p1, p2, v3}, Landroid/view/SurfaceControl$Transaction;->reparent(Landroid/view/SurfaceControl;Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    .line 2929
    .end local v2  # "task":Lcom/android/server/wm/Task;
    :cond_89
    return-void
.end method

.method public onAnimationLeashLost(Landroid/view/SurfaceControl$Transaction;)V
    .registers 3
    .param p1, "t"  # Landroid/view/SurfaceControl$Transaction;

    .line 2831
    invoke-super {p0, p1}, Lcom/android/server/wm/WindowToken;->onAnimationLeashLost(Landroid/view/SurfaceControl$Transaction;)V

    .line 2832
    iget-object v0, p0, Lcom/android/server/wm/AppWindowToken;->mAnimationBoundsLayer:Landroid/view/SurfaceControl;

    if-eqz v0, :cond_d

    .line 2833
    invoke-virtual {p1, v0}, Landroid/view/SurfaceControl$Transaction;->remove(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    .line 2834
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/wm/AppWindowToken;->mAnimationBoundsLayer:Landroid/view/SurfaceControl;

    .line 2837
    :cond_d
    iget-object v0, p0, Lcom/android/server/wm/AppWindowToken;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mWmsExtInternal:Lcom/android/server/wm/FlymeWindowManagerInternal;

    invoke-virtual {v0, p0, p1}, Lcom/android/server/wm/FlymeWindowManagerInternal;->onAppWindowTokenAnimationLeashLost(Lcom/android/server/wm/AppWindowToken;Landroid/view/SurfaceControl$Transaction;)V

    .line 2839
    iget-object v0, p0, Lcom/android/server/wm/AppWindowToken;->mAnimatingAppWindowTokenRegistry:Lcom/android/server/wm/AnimatingAppWindowTokenRegistry;

    if-eqz v0, :cond_1b

    .line 2840
    invoke-virtual {v0, p0}, Lcom/android/server/wm/AnimatingAppWindowTokenRegistry;->notifyFinished(Lcom/android/server/wm/AppWindowToken;)V

    .line 2842
    :cond_1b
    return-void
.end method

.method public onAppFreezeTimeout()V
    .registers 3

    .line 1495
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Force clearing freeze: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WindowManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1496
    const/4 v0, 0x1

    invoke-virtual {p0, v0, v0}, Lcom/android/server/wm/AppWindowToken;->stopFreezingScreen(ZZ)V

    .line 1497
    return-void
.end method

.method onAppTransitionDone()V
    .registers 2

    .line 1621
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/wm/AppWindowToken;->sendingToBottom:Z

    .line 1622
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 9
    .param p1, "newParentConfig"  # Landroid/content/res/Configuration;

    .line 1688
    invoke-virtual {p0}, Lcom/android/server/wm/AppWindowToken;->getWindowingMode()I

    move-result v0

    .line 1689
    .local v0, "prevWinMode":I
    iget-object v1, p0, Lcom/android/server/wm/AppWindowToken;->mTmpPrevBounds:Landroid/graphics/Rect;

    invoke-virtual {p0}, Lcom/android/server/wm/AppWindowToken;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 1690
    invoke-super {p0, p1}, Lcom/android/server/wm/WindowToken;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 1692
    invoke-virtual {p0}, Lcom/android/server/wm/AppWindowToken;->getTask()Lcom/android/server/wm/Task;

    move-result-object v1

    .line 1693
    .local v1, "task":Lcom/android/server/wm/Task;
    invoke-virtual {p0}, Lcom/android/server/wm/AppWindowToken;->getResolvedOverrideBounds()Landroid/graphics/Rect;

    move-result-object v2

    .line 1694
    .local v2, "overrideBounds":Landroid/graphics/Rect;
    if-eqz v1, :cond_63

    invoke-virtual {v2}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_63

    iget-object v3, v1, Lcom/android/server/wm/Task;->mTaskRecord:Lcom/android/server/wm/TaskRecord;

    if-eqz v3, :cond_30

    iget-object v3, v1, Lcom/android/server/wm/Task;->mTaskRecord:Lcom/android/server/wm/TaskRecord;

    .line 1699
    invoke-virtual {v3}, Lcom/android/server/wm/TaskRecord;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    iget v3, v3, Landroid/content/res/Configuration;->orientation:I

    iget v4, p1, Landroid/content/res/Configuration;->orientation:I

    if-ne v3, v4, :cond_63

    .line 1700
    :cond_30
    invoke-virtual {v1}, Lcom/android/server/wm/Task;->getBounds()Landroid/graphics/Rect;

    move-result-object v3

    .line 1704
    .local v3, "taskBounds":Landroid/graphics/Rect;
    invoke-virtual {p1}, Landroid/content/res/Configuration;->isMzWindowMode()Z

    move-result v4

    if-nez v4, :cond_55

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v4

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v5

    if-ne v4, v5, :cond_4e

    .line 1705
    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v4

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v5

    if-le v4, v5, :cond_55

    .line 1706
    :cond_4e
    invoke-direct {p0, p1}, Lcom/android/server/wm/AppWindowToken;->calculateCompatBoundsTransformation(Landroid/content/res/Configuration;)V

    .line 1708
    invoke-virtual {p0}, Lcom/android/server/wm/AppWindowToken;->updateSurfacePosition()V

    goto :goto_63

    .line 1709
    :cond_55
    iget-object v4, p0, Lcom/android/server/wm/AppWindowToken;->mSizeCompatBounds:Landroid/graphics/Rect;

    if-eqz v4, :cond_63

    .line 1710
    const/4 v4, 0x0

    iput-object v4, p0, Lcom/android/server/wm/AppWindowToken;->mSizeCompatBounds:Landroid/graphics/Rect;

    .line 1711
    const/high16 v4, 0x3f800000  # 1.0f

    iput v4, p0, Lcom/android/server/wm/AppWindowToken;->mSizeCompatScale:F

    .line 1712
    invoke-virtual {p0}, Lcom/android/server/wm/AppWindowToken;->updateSurfacePosition()V

    .line 1716
    .end local v3  # "taskBounds":Landroid/graphics/Rect;
    :cond_63
    :goto_63
    invoke-virtual {p0}, Lcom/android/server/wm/AppWindowToken;->getWindowingMode()I

    move-result v3

    .line 1718
    .local v3, "winMode":I
    if-ne v0, v3, :cond_6a

    .line 1719
    return-void

    .line 1722
    :cond_6a
    const/4 v4, 0x2

    if-eqz v0, :cond_77

    if-ne v3, v4, :cond_77

    .line 1724
    iget-object v4, p0, Lcom/android/server/wm/AppWindowToken;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v4, v4, Lcom/android/server/wm/DisplayContent;->mPinnedStackControllerLocked:Lcom/android/server/wm/PinnedStackController;

    invoke-virtual {v4, p0}, Lcom/android/server/wm/PinnedStackController;->resetReentrySnapFraction(Lcom/android/server/wm/AppWindowToken;)V

    goto :goto_ac

    .line 1725
    :cond_77
    if-ne v0, v4, :cond_9f

    if-eqz v3, :cond_9f

    .line 1726
    invoke-virtual {p0}, Lcom/android/server/wm/AppWindowToken;->isHidden()Z

    move-result v4

    if-nez v4, :cond_9f

    .line 1729
    iget-object v4, p0, Lcom/android/server/wm/AppWindowToken;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v4}, Lcom/android/server/wm/DisplayContent;->getPinnedStack()Lcom/android/server/wm/TaskStack;

    move-result-object v4

    .line 1730
    .local v4, "pinnedStack":Lcom/android/server/wm/TaskStack;
    if-eqz v4, :cond_ab

    .line 1732
    invoke-virtual {v4}, Lcom/android/server/wm/TaskStack;->lastAnimatingBoundsWasToFullscreen()Z

    move-result v5

    if-eqz v5, :cond_92

    .line 1735
    iget-object v5, v4, Lcom/android/server/wm/TaskStack;->mPreAnimationBounds:Landroid/graphics/Rect;

    .local v5, "stackBounds":Landroid/graphics/Rect;
    goto :goto_97

    .line 1740
    .end local v5  # "stackBounds":Landroid/graphics/Rect;
    :cond_92
    iget-object v5, p0, Lcom/android/server/wm/AppWindowToken;->mTmpRect:Landroid/graphics/Rect;

    .line 1741
    .restart local v5  # "stackBounds":Landroid/graphics/Rect;
    invoke-virtual {v4, v5}, Lcom/android/server/wm/TaskStack;->getBounds(Landroid/graphics/Rect;)V

    .line 1743
    :goto_97
    iget-object v6, p0, Lcom/android/server/wm/AppWindowToken;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v6, v6, Lcom/android/server/wm/DisplayContent;->mPinnedStackControllerLocked:Lcom/android/server/wm/PinnedStackController;

    invoke-virtual {v6, p0, v5}, Lcom/android/server/wm/PinnedStackController;->saveReentrySnapFraction(Lcom/android/server/wm/AppWindowToken;Landroid/graphics/Rect;)V

    goto :goto_ab

    .line 1746
    .end local v4  # "pinnedStack":Lcom/android/server/wm/TaskStack;
    .end local v5  # "stackBounds":Landroid/graphics/Rect;
    :cond_9f
    invoke-direct {p0, v0, v3}, Lcom/android/server/wm/AppWindowToken;->shouldStartChangeTransition(II)Z

    move-result v4

    if-eqz v4, :cond_ab

    .line 1747
    iget-object v4, p0, Lcom/android/server/wm/AppWindowToken;->mTmpPrevBounds:Landroid/graphics/Rect;

    invoke-direct {p0, v4}, Lcom/android/server/wm/AppWindowToken;->initializeChangeTransition(Landroid/graphics/Rect;)V

    goto :goto_ac

    .line 1746
    :cond_ab
    :goto_ab
    nop

    .line 1749
    :goto_ac
    return-void
.end method

.method onDisplayChanged(Lcom/android/server/wm/DisplayContent;)V
    .registers 6
    .param p1, "dc"  # Lcom/android/server/wm/DisplayContent;

    .line 1347
    iget-object v0, p0, Lcom/android/server/wm/AppWindowToken;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 1348
    .local v0, "prevDc":Lcom/android/server/wm/DisplayContent;
    invoke-super {p0, p1}, Lcom/android/server/wm/WindowToken;->onDisplayChanged(Lcom/android/server/wm/DisplayContent;)V

    .line 1349
    if-eqz v0, :cond_6d

    iget-object v1, p0, Lcom/android/server/wm/AppWindowToken;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    if-ne v0, v1, :cond_c

    goto :goto_6d

    .line 1353
    :cond_c
    iget-object v1, v0, Lcom/android/server/wm/DisplayContent;->mOpeningApps:Landroid/util/ArraySet;

    invoke-virtual {v1, p0}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_2c

    .line 1355
    iget-object v1, p0, Lcom/android/server/wm/AppWindowToken;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v1, v1, Lcom/android/server/wm/DisplayContent;->mOpeningApps:Landroid/util/ArraySet;

    invoke-virtual {v1, p0}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 1356
    iget-object v1, p0, Lcom/android/server/wm/AppWindowToken;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v3, v0, Lcom/android/server/wm/DisplayContent;->mAppTransition:Lcom/android/server/wm/AppTransition;

    invoke-virtual {v3}, Lcom/android/server/wm/AppTransition;->getAppTransition()I

    move-result v3

    invoke-virtual {v1, v3, v2}, Lcom/android/server/wm/DisplayContent;->prepareAppTransition(IZ)V

    .line 1357
    iget-object v1, p0, Lcom/android/server/wm/AppWindowToken;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v1}, Lcom/android/server/wm/DisplayContent;->executeAppTransition()V

    .line 1360
    :cond_2c
    iget-object v1, v0, Lcom/android/server/wm/DisplayContent;->mChangingApps:Landroid/util/ArraySet;

    invoke-virtual {v1, p0}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3b

    .line 1367
    invoke-virtual {p0}, Lcom/android/server/wm/AppWindowToken;->getPendingTransaction()Landroid/view/SurfaceControl$Transaction;

    move-result-object v1

    invoke-direct {p0, v1, v2}, Lcom/android/server/wm/AppWindowToken;->clearChangeLeash(Landroid/view/SurfaceControl$Transaction;Z)V

    .line 1369
    :cond_3b
    iget-object v1, v0, Lcom/android/server/wm/DisplayContent;->mClosingApps:Landroid/util/ArraySet;

    invoke-virtual {v1, p0}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    .line 1371
    iget-object v1, v0, Lcom/android/server/wm/DisplayContent;->mFocusedApp:Lcom/android/server/wm/AppWindowToken;

    if-ne v1, p0, :cond_5f

    .line 1372
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/server/wm/DisplayContent;->setFocusedApp(Lcom/android/server/wm/AppWindowToken;)Z

    .line 1373
    invoke-virtual {p1}, Lcom/android/server/wm/DisplayContent;->getTopStack()Lcom/android/server/wm/TaskStack;

    move-result-object v1

    .line 1374
    .local v1, "stack":Lcom/android/server/wm/TaskStack;
    if-eqz v1, :cond_5f

    .line 1375
    invoke-virtual {v1}, Lcom/android/server/wm/TaskStack;->getTopChild()Lcom/android/server/wm/WindowContainer;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/Task;

    .line 1376
    .local v2, "task":Lcom/android/server/wm/Task;
    if-eqz v2, :cond_5f

    invoke-virtual {v2}, Lcom/android/server/wm/Task;->getTopChild()Lcom/android/server/wm/WindowContainer;

    move-result-object v3

    if-ne v3, p0, :cond_5f

    .line 1377
    invoke-virtual {p1, p0}, Lcom/android/server/wm/DisplayContent;->setFocusedApp(Lcom/android/server/wm/AppWindowToken;)Z

    .line 1382
    .end local v1  # "stack":Lcom/android/server/wm/TaskStack;
    .end local v2  # "task":Lcom/android/server/wm/Task;
    :cond_5f
    iget-object v1, p0, Lcom/android/server/wm/AppWindowToken;->mLetterbox:Lcom/android/server/wm/Letterbox;

    if-eqz v1, :cond_6c

    .line 1383
    iget-object v2, p0, Lcom/android/server/wm/AppWindowToken;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v2}, Lcom/android/server/wm/DisplayContent;->getDisplayId()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/server/wm/Letterbox;->onMovedToDisplay(I)V

    .line 1385
    :cond_6c
    return-void

    .line 1350
    :cond_6d
    :goto_6d
    return-void
.end method

.method onFirstWindowDrawn(Lcom/android/server/wm/WindowState;Lcom/android/server/wm/WindowStateAnimator;)V
    .registers 5
    .param p1, "win"  # Lcom/android/server/wm/WindowState;
    .param p2, "winAnimator"  # Lcom/android/server/wm/WindowStateAnimator;

    .line 381
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/wm/AppWindowToken;->firstWindowDrawn:Z

    .line 384
    invoke-virtual {p0}, Lcom/android/server/wm/AppWindowToken;->removeDeadWindows()V

    .line 386
    iget-object v0, p0, Lcom/android/server/wm/AppWindowToken;->startingWindow:Lcom/android/server/wm/WindowState;

    if-eqz v0, :cond_32

    .line 387
    sget-boolean v0, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_STARTING_WINDOW:Z

    if-nez v0, :cond_12

    sget-boolean v0, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_ANIM:Z

    if-eqz v0, :cond_2f

    :cond_12
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Finish starting "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p1, Lcom/android/server/wm/WindowState;->mToken:Lcom/android/server/wm/WindowToken;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ": first real window is shown, no animation"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WindowManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 392
    :cond_2f
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->cancelAnimation()V

    .line 394
    :cond_32
    invoke-virtual {p0}, Lcom/android/server/wm/AppWindowToken;->removeStartingWindow()V

    .line 395
    invoke-virtual {p0}, Lcom/android/server/wm/AppWindowToken;->updateReportedVisibilityLocked()V

    .line 396
    return-void
.end method

.method onParentChanged()V
    .registers 4

    .line 1050
    invoke-super {p0}, Lcom/android/server/wm/WindowToken;->onParentChanged()V

    .line 1052
    invoke-virtual {p0}, Lcom/android/server/wm/AppWindowToken;->getTask()Lcom/android/server/wm/Task;

    move-result-object v0

    .line 1057
    .local v0, "task":Lcom/android/server/wm/Task;
    iget-boolean v1, p0, Lcom/android/server/wm/AppWindowToken;->mReparenting:Z

    if-nez v1, :cond_26

    .line 1058
    if-nez v0, :cond_17

    .line 1061
    invoke-virtual {p0}, Lcom/android/server/wm/AppWindowToken;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v1

    iget-object v1, v1, Lcom/android/server/wm/DisplayContent;->mClosingApps:Landroid/util/ArraySet;

    invoke-virtual {v1, p0}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    goto :goto_26

    .line 1062
    :cond_17
    iget-object v1, p0, Lcom/android/server/wm/AppWindowToken;->mLastParent:Lcom/android/server/wm/Task;

    if-eqz v1, :cond_26

    iget-object v1, v1, Lcom/android/server/wm/Task;->mStack:Lcom/android/server/wm/TaskStack;

    if-eqz v1, :cond_26

    .line 1063
    iget-object v1, v0, Lcom/android/server/wm/Task;->mStack:Lcom/android/server/wm/TaskStack;

    iget-object v1, v1, Lcom/android/server/wm/TaskStack;->mExitingAppTokens:Lcom/android/server/wm/AppTokenList;

    invoke-virtual {v1, p0}, Lcom/android/server/wm/AppTokenList;->remove(Ljava/lang/Object;)Z

    .line 1066
    :cond_26
    :goto_26
    invoke-virtual {p0}, Lcom/android/server/wm/AppWindowToken;->getStack()Lcom/android/server/wm/TaskStack;

    move-result-object v1

    .line 1069
    .local v1, "stack":Lcom/android/server/wm/TaskStack;
    iget-object v2, p0, Lcom/android/server/wm/AppWindowToken;->mAnimatingAppWindowTokenRegistry:Lcom/android/server/wm/AnimatingAppWindowTokenRegistry;

    if-eqz v2, :cond_31

    .line 1070
    invoke-virtual {v2, p0}, Lcom/android/server/wm/AnimatingAppWindowTokenRegistry;->notifyFinished(Lcom/android/server/wm/AppWindowToken;)V

    .line 1072
    :cond_31
    if-eqz v1, :cond_38

    .line 1073
    invoke-virtual {v1}, Lcom/android/server/wm/TaskStack;->getAnimatingAppWindowTokenRegistry()Lcom/android/server/wm/AnimatingAppWindowTokenRegistry;

    move-result-object v2

    goto :goto_39

    .line 1074
    :cond_38
    const/4 v2, 0x0

    :goto_39
    iput-object v2, p0, Lcom/android/server/wm/AppWindowToken;->mAnimatingAppWindowTokenRegistry:Lcom/android/server/wm/AnimatingAppWindowTokenRegistry;

    .line 1076
    iput-object v0, p0, Lcom/android/server/wm/AppWindowToken;->mLastParent:Lcom/android/server/wm/Task;

    .line 1078
    invoke-direct {p0}, Lcom/android/server/wm/AppWindowToken;->updateColorTransform()V

    .line 1079
    return-void
.end method

.method onRemovedFromDisplay()V
    .registers 10

    .line 879
    iget-boolean v0, p0, Lcom/android/server/wm/AppWindowToken;->mRemovingFromDisplay:Z

    if-eqz v0, :cond_5

    .line 880
    return-void

    .line 882
    :cond_5
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/wm/AppWindowToken;->mRemovingFromDisplay:Z

    .line 884
    invoke-virtual {p0}, Lcom/android/server/wm/AppWindowToken;->clearChangeTransition()V

    .line 886
    sget-boolean v1, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_APP_TRANSITIONS:Z

    const-string v2, "WindowManager"

    if-eqz v1, :cond_25

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Removing app token: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 888
    :cond_25
    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, -0x1

    const/4 v7, 0x1

    iget-boolean v8, p0, Lcom/android/server/wm/AppWindowToken;->mVoiceInteraction:Z

    move-object v3, p0

    invoke-virtual/range {v3 .. v8}, Lcom/android/server/wm/AppWindowToken;->commitVisibility(Landroid/view/WindowManager$LayoutParams;ZIZZ)Z

    move-result v1

    .line 890
    .local v1, "delayed":Z
    invoke-virtual {p0}, Lcom/android/server/wm/AppWindowToken;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v3

    iget-object v3, v3, Lcom/android/server/wm/DisplayContent;->mOpeningApps:Landroid/util/ArraySet;

    invoke-virtual {v3, p0}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    .line 891
    invoke-virtual {p0}, Lcom/android/server/wm/AppWindowToken;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v3

    iget-object v3, v3, Lcom/android/server/wm/DisplayContent;->mChangingApps:Landroid/util/ArraySet;

    invoke-virtual {v3, p0}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    .line 892
    invoke-virtual {p0}, Lcom/android/server/wm/AppWindowToken;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v3

    iget-object v3, v3, Lcom/android/server/wm/DisplayContent;->mUnknownAppVisibilityController:Lcom/android/server/wm/UnknownAppVisibilityController;

    invoke-virtual {v3, p0}, Lcom/android/server/wm/UnknownAppVisibilityController;->appRemovedOrHidden(Lcom/android/server/wm/AppWindowToken;)V

    .line 893
    iget-object v3, p0, Lcom/android/server/wm/AppWindowToken;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v3, Lcom/android/server/wm/WindowManagerService;->mTaskSnapshotController:Lcom/android/server/wm/TaskSnapshotController;

    invoke-virtual {v3, p0}, Lcom/android/server/wm/TaskSnapshotController;->onAppRemoved(Lcom/android/server/wm/AppWindowToken;)V

    .line 894
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/android/server/wm/AppWindowToken;->waitingToShow:Z

    .line 895
    invoke-virtual {p0}, Lcom/android/server/wm/AppWindowToken;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v4

    iget-object v4, v4, Lcom/android/server/wm/DisplayContent;->mClosingApps:Landroid/util/ArraySet;

    invoke-virtual {v4, p0}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_63

    .line 896
    const/4 v1, 0x1

    goto :goto_79

    .line 897
    :cond_63
    invoke-virtual {p0}, Lcom/android/server/wm/AppWindowToken;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v4

    iget-object v4, v4, Lcom/android/server/wm/DisplayContent;->mAppTransition:Lcom/android/server/wm/AppTransition;

    invoke-virtual {v4}, Lcom/android/server/wm/AppTransition;->isTransitionSet()Z

    move-result v4

    if-eqz v4, :cond_79

    .line 898
    invoke-virtual {p0}, Lcom/android/server/wm/AppWindowToken;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v4

    iget-object v4, v4, Lcom/android/server/wm/DisplayContent;->mClosingApps:Landroid/util/ArraySet;

    invoke-virtual {v4, p0}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 899
    const/4 v1, 0x1

    .line 902
    :cond_79
    :goto_79
    sget-boolean v4, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_APP_TRANSITIONS:Z

    const-string v5, " delayed="

    if-eqz v4, :cond_b1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Removing app "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v6, " animation="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 903
    invoke-virtual {p0}, Lcom/android/server/wm/AppWindowToken;->getAnimation()Lcom/android/server/wm/AnimationAdapter;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, " animating="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/wm/AppWindowToken;->isSelfAnimating()Z

    move-result v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 902
    invoke-static {v2, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 905
    :cond_b1
    sget-boolean v4, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_ADD_REMOVE:Z

    if-nez v4, :cond_b9

    sget-boolean v4, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_TOKEN_MOVEMENT:Z

    if-eqz v4, :cond_e0

    :cond_b9
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "removeAppToken: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, " Callers="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v5, 0x4

    .line 906
    invoke-static {v5}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 905
    invoke-static {v2, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 908
    :cond_e0
    iget-object v4, p0, Lcom/android/server/wm/AppWindowToken;->mStartingData:Lcom/android/server/wm/StartingData;

    if-eqz v4, :cond_e7

    .line 909
    invoke-virtual {p0}, Lcom/android/server/wm/AppWindowToken;->removeStartingWindow()V

    .line 915
    :cond_e7
    invoke-virtual {p0}, Lcom/android/server/wm/AppWindowToken;->isSelfAnimating()Z

    move-result v4

    if-eqz v4, :cond_f8

    .line 916
    invoke-virtual {p0}, Lcom/android/server/wm/AppWindowToken;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v4

    iget-object v4, v4, Lcom/android/server/wm/DisplayContent;->mNoAnimationNotifyOnTransitionFinished:Ljava/util/List;

    iget-object v5, p0, Lcom/android/server/wm/AppWindowToken;->token:Landroid/os/IBinder;

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 919
    :cond_f8
    invoke-virtual {p0}, Lcom/android/server/wm/AppWindowToken;->getStack()Lcom/android/server/wm/TaskStack;

    move-result-object v4

    .line 920
    .local v4, "stack":Lcom/android/server/wm/TaskStack;
    if-eqz v1, :cond_12a

    invoke-virtual {p0}, Lcom/android/server/wm/AppWindowToken;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_12a

    .line 922
    sget-boolean v5, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_ADD_REMOVE:Z

    if-nez v5, :cond_10c

    sget-boolean v5, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_TOKEN_MOVEMENT:Z

    if-eqz v5, :cond_120

    :cond_10c
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "removeAppToken make exiting: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 924
    :cond_120
    if-eqz v4, :cond_127

    .line 925
    iget-object v5, v4, Lcom/android/server/wm/TaskStack;->mExitingAppTokens:Lcom/android/server/wm/AppTokenList;

    invoke-virtual {v5, p0}, Lcom/android/server/wm/AppTokenList;->add(Ljava/lang/Object;)Z

    .line 927
    :cond_127
    iput-boolean v0, p0, Lcom/android/server/wm/AppWindowToken;->mIsExiting:Z

    goto :goto_137

    .line 931
    :cond_12a
    invoke-virtual {p0}, Lcom/android/server/wm/AppWindowToken;->cancelAnimation()V

    .line 932
    if-eqz v4, :cond_134

    .line 933
    iget-object v5, v4, Lcom/android/server/wm/TaskStack;->mExitingAppTokens:Lcom/android/server/wm/AppTokenList;

    invoke-virtual {v5, p0}, Lcom/android/server/wm/AppTokenList;->remove(Ljava/lang/Object;)Z

    .line 935
    :cond_134
    invoke-virtual {p0}, Lcom/android/server/wm/AppWindowToken;->removeIfPossible()V

    .line 938
    :goto_137
    iput-boolean v0, p0, Lcom/android/server/wm/AppWindowToken;->removed:Z

    .line 939
    invoke-virtual {p0, v0, v0}, Lcom/android/server/wm/AppWindowToken;->stopFreezingScreen(ZZ)V

    .line 941
    invoke-virtual {p0}, Lcom/android/server/wm/AppWindowToken;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v5

    .line 942
    .local v5, "dc":Lcom/android/server/wm/DisplayContent;
    iget-object v6, v5, Lcom/android/server/wm/DisplayContent;->mFocusedApp:Lcom/android/server/wm/AppWindowToken;

    const/4 v7, 0x0

    if-ne v6, p0, :cond_171

    .line 943
    sget-boolean v6, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_FOCUS_LIGHT:Z

    if-eqz v6, :cond_169

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Removing focused app token:"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v8, " displayId="

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 944
    invoke-virtual {v5}, Lcom/android/server/wm/DisplayContent;->getDisplayId()I

    move-result v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 943
    invoke-static {v2, v6}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 945
    :cond_169
    invoke-virtual {v5, v7}, Lcom/android/server/wm/DisplayContent;->setFocusedApp(Lcom/android/server/wm/AppWindowToken;)Z

    .line 946
    iget-object v2, p0, Lcom/android/server/wm/AppWindowToken;->mWmService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v2, v3, v0}, Lcom/android/server/wm/WindowManagerService;->updateFocusedWindowLocked(IZ)Z

    .line 948
    :cond_171
    iget-object v0, p0, Lcom/android/server/wm/AppWindowToken;->mLetterbox:Lcom/android/server/wm/Letterbox;

    if-eqz v0, :cond_17a

    .line 949
    invoke-virtual {v0}, Lcom/android/server/wm/Letterbox;->destroy()V

    .line 950
    iput-object v7, p0, Lcom/android/server/wm/AppWindowToken;->mLetterbox:Lcom/android/server/wm/Letterbox;

    .line 953
    :cond_17a
    if-nez v1, :cond_17f

    .line 954
    invoke-virtual {p0}, Lcom/android/server/wm/AppWindowToken;->updateReportedVisibilityLocked()V

    .line 957
    :cond_17f
    iput-boolean v3, p0, Lcom/android/server/wm/AppWindowToken;->mRemovingFromDisplay:Z

    .line 958
    return-void
.end method

.method onWindowReplacementTimeout()V
    .registers 3

    .line 1299
    iget-object v0, p0, Lcom/android/server/wm/AppWindowToken;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_8
    if-ltz v0, :cond_18

    .line 1300
    iget-object v1, p0, Lcom/android/server/wm/AppWindowToken;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v1, v0}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/WindowState;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowState;->onWindowReplacementTimeout()V

    .line 1299
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    .line 1302
    .end local v0  # "i":I
    :cond_18
    return-void
.end method

.method postWindowRemoveStartingWindowCleanup(Lcom/android/server/wm/WindowState;)V
    .registers 5
    .param p1, "win"  # Lcom/android/server/wm/WindowState;

    .line 1083
    iget-object v0, p0, Lcom/android/server/wm/AppWindowToken;->startingWindow:Lcom/android/server/wm/WindowState;

    const-string v1, "WindowManager"

    if-ne v0, p1, :cond_22

    .line 1084
    sget-boolean v0, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_STARTING_WINDOW:Z

    if-eqz v0, :cond_1e

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Notify removed startingWindow "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1085
    :cond_1e
    invoke-virtual {p0}, Lcom/android/server/wm/AppWindowToken;->removeStartingWindow()V

    goto :goto_6c

    .line 1086
    :cond_22
    iget-object v0, p0, Lcom/android/server/wm/AppWindowToken;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowList;->size()I

    move-result v0

    const/4 v2, 0x1

    if-nez v0, :cond_3f

    .line 1089
    sget-boolean v0, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_STARTING_WINDOW:Z

    if-eqz v0, :cond_34

    const-string v0, "Nulling last startingData"

    invoke-static {v1, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1090
    :cond_34
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/wm/AppWindowToken;->mStartingData:Lcom/android/server/wm/StartingData;

    .line 1091
    iget-boolean v0, p0, Lcom/android/server/wm/AppWindowToken;->mHiddenSetFromTransferredStartingWindow:Z

    if-eqz v0, :cond_6c

    .line 1095
    invoke-virtual {p0, v2}, Lcom/android/server/wm/AppWindowToken;->setHidden(Z)V

    goto :goto_6c

    .line 1097
    :cond_3f
    iget-object v0, p0, Lcom/android/server/wm/AppWindowToken;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowList;->size()I

    move-result v0

    if-ne v0, v2, :cond_6c

    iget-object v0, p0, Lcom/android/server/wm/AppWindowToken;->startingSurface:Lcom/android/server/policy/WindowManagerPolicy$StartingSurface;

    if-eqz v0, :cond_6c

    invoke-virtual {p0}, Lcom/android/server/wm/AppWindowToken;->isRelaunching()Z

    move-result v0

    if-nez v0, :cond_6c

    .line 1100
    sget-boolean v0, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_STARTING_WINDOW:Z

    if-eqz v0, :cond_69

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Last window, removing starting window "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1102
    :cond_69
    invoke-virtual {p0}, Lcom/android/server/wm/AppWindowToken;->removeStartingWindow()V

    .line 1104
    :cond_6c
    :goto_6c
    return-void
.end method

.method prepareSurfaces()V
    .registers 5

    .line 3219
    invoke-super {p0}, Lcom/android/server/wm/WindowToken;->isSelfAnimating()Z

    move-result v0

    .line 3220
    .local v0, "reallyAnimating":Z
    invoke-virtual {p0}, Lcom/android/server/wm/AppWindowToken;->isHidden()Z

    move-result v1

    if-eqz v1, :cond_f

    if-eqz v0, :cond_d

    goto :goto_f

    :cond_d
    const/4 v1, 0x0

    goto :goto_10

    :cond_f
    :goto_f
    const/4 v1, 0x1

    .line 3222
    .local v1, "show":Z
    :goto_10
    iget-object v2, p0, Lcom/android/server/wm/AppWindowToken;->mSurfaceControl:Landroid/view/SurfaceControl;

    if-eqz v2, :cond_33

    .line 3223
    if-eqz v1, :cond_24

    iget-boolean v2, p0, Lcom/android/server/wm/AppWindowToken;->mLastSurfaceShowing:Z

    if-nez v2, :cond_24

    .line 3224
    invoke-virtual {p0}, Lcom/android/server/wm/AppWindowToken;->getPendingTransaction()Landroid/view/SurfaceControl$Transaction;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/wm/AppWindowToken;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {v2, v3}, Landroid/view/SurfaceControl$Transaction;->show(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    goto :goto_33

    .line 3225
    :cond_24
    if-nez v1, :cond_33

    iget-boolean v2, p0, Lcom/android/server/wm/AppWindowToken;->mLastSurfaceShowing:Z

    if-eqz v2, :cond_33

    .line 3226
    invoke-virtual {p0}, Lcom/android/server/wm/AppWindowToken;->getPendingTransaction()Landroid/view/SurfaceControl$Transaction;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/wm/AppWindowToken;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {v2, v3}, Landroid/view/SurfaceControl$Transaction;->hide(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    .line 3229
    :cond_33
    :goto_33
    iget-object v2, p0, Lcom/android/server/wm/AppWindowToken;->mThumbnail:Lcom/android/server/wm/AppWindowThumbnail;

    if-eqz v2, :cond_3e

    .line 3230
    invoke-virtual {p0}, Lcom/android/server/wm/AppWindowToken;->getPendingTransaction()Landroid/view/SurfaceControl$Transaction;

    move-result-object v3

    invoke-virtual {v2, v3, v1}, Lcom/android/server/wm/AppWindowThumbnail;->setShowing(Landroid/view/SurfaceControl$Transaction;Z)V

    .line 3232
    :cond_3e
    iput-boolean v1, p0, Lcom/android/server/wm/AppWindowToken;->mLastSurfaceShowing:Z

    .line 3233
    invoke-super {p0}, Lcom/android/server/wm/WindowToken;->prepareSurfaces()V

    .line 3234
    return-void
.end method

.method registerRemoteAnimations(Landroid/view/RemoteAnimationDefinition;)V
    .registers 2
    .param p1, "definition"  # Landroid/view/RemoteAnimationDefinition;

    .line 3133
    iput-object p1, p0, Lcom/android/server/wm/AppWindowToken;->mRemoteAnimationDefinition:Landroid/view/RemoteAnimationDefinition;

    .line 3134
    return-void
.end method

.method bridge synthetic removeChild(Lcom/android/server/wm/WindowContainer;)V
    .registers 2

    .line 143
    check-cast p1, Lcom/android/server/wm/WindowState;

    invoke-virtual {p0, p1}, Lcom/android/server/wm/AppWindowToken;->removeChild(Lcom/android/server/wm/WindowState;)V

    return-void
.end method

.method removeChild(Lcom/android/server/wm/WindowState;)V
    .registers 3
    .param p1, "child"  # Lcom/android/server/wm/WindowState;

    .line 1279
    iget-object v0, p0, Lcom/android/server/wm/AppWindowToken;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/WindowList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9

    .line 1281
    return-void

    .line 1283
    :cond_9
    invoke-super {p0, p1}, Lcom/android/server/wm/WindowToken;->removeChild(Lcom/android/server/wm/WindowContainer;)V

    .line 1284
    invoke-virtual {p0}, Lcom/android/server/wm/AppWindowToken;->checkKeyguardFlagsChanged()V

    .line 1285
    invoke-virtual {p0, p1}, Lcom/android/server/wm/AppWindowToken;->updateLetterboxSurface(Lcom/android/server/wm/WindowState;)V

    .line 1286
    return-void
.end method

.method removeDeadWindows()V
    .registers 6

    .line 1107
    iget-object v0, p0, Lcom/android/server/wm/AppWindowToken;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowList;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    .local v0, "winNdx":I
    :goto_8
    if-ltz v0, :cond_3c

    .line 1108
    iget-object v2, p0, Lcom/android/server/wm/AppWindowToken;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v2, v0}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/WindowState;

    .line 1109
    .local v2, "win":Lcom/android/server/wm/WindowState;
    iget-boolean v3, v2, Lcom/android/server/wm/WindowState;->mAppDied:Z

    if-eqz v3, :cond_39

    .line 1110
    sget-boolean v3, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_WINDOW_MOVEMENT:Z

    if-nez v3, :cond_1e

    sget-boolean v3, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_ADD_REMOVE:Z

    if-eqz v3, :cond_34

    :cond_1e
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "removeDeadWindows: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "WindowManager"

    invoke-static {v4, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1113
    :cond_34
    iput-boolean v1, v2, Lcom/android/server/wm/WindowState;->mDestroying:Z

    .line 1115
    invoke-virtual {v2}, Lcom/android/server/wm/WindowState;->removeIfPossible()V

    .line 1107
    .end local v2  # "win":Lcom/android/server/wm/WindowState;
    :cond_39
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    .line 1118
    .end local v0  # "winNdx":I
    :cond_3c
    return-void
.end method

.method removeIfPossible()V
    .registers 2

    .line 865
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/wm/AppWindowToken;->mIsExiting:Z

    .line 866
    invoke-virtual {p0}, Lcom/android/server/wm/AppWindowToken;->removeAllWindowsIfPossible()V

    .line 867
    invoke-virtual {p0}, Lcom/android/server/wm/AppWindowToken;->removeImmediately()V

    .line 868
    return-void
.end method

.method removeImmediately()V
    .registers 2

    .line 856
    invoke-virtual {p0}, Lcom/android/server/wm/AppWindowToken;->onRemovedFromDisplay()V

    .line 857
    iget-object v0, p0, Lcom/android/server/wm/AppWindowToken;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    if-eqz v0, :cond_a

    .line 858
    invoke-virtual {v0, p0}, Lcom/android/server/wm/ActivityRecord;->unregisterConfigurationChangeListener(Lcom/android/server/wm/ConfigurationContainerListener;)V

    .line 860
    :cond_a
    invoke-super {p0}, Lcom/android/server/wm/WindowToken;->removeImmediately()V

    .line 861
    return-void
.end method

.method removeReplacedWindowIfNeeded(Lcom/android/server/wm/WindowState;)V
    .registers 5
    .param p1, "replacement"  # Lcom/android/server/wm/WindowState;

    .line 1436
    iget-object v0, p0, Lcom/android/server/wm/AppWindowToken;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_8
    if-ltz v0, :cond_1c

    .line 1437
    iget-object v1, p0, Lcom/android/server/wm/AppWindowToken;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v1, v0}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/WindowState;

    .line 1438
    .local v1, "win":Lcom/android/server/wm/WindowState;
    invoke-virtual {v1, p1}, Lcom/android/server/wm/WindowState;->removeReplacedWindowIfNeeded(Lcom/android/server/wm/WindowState;)Z

    move-result v2

    if-eqz v2, :cond_19

    .line 1439
    return-void

    .line 1436
    .end local v1  # "win":Lcom/android/server/wm/WindowState;
    :cond_19
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    .line 1442
    .end local v0  # "i":I
    :cond_1c
    return-void
.end method

.method removeStartingWindow()V
    .registers 5

    .line 2362
    iget-object v0, p0, Lcom/android/server/wm/AppWindowToken;->startingWindow:Lcom/android/server/wm/WindowState;

    const-string v1, "WindowManager"

    const/4 v2, 0x0

    if-nez v0, :cond_26

    .line 2363
    iget-object v0, p0, Lcom/android/server/wm/AppWindowToken;->mStartingData:Lcom/android/server/wm/StartingData;

    if-eqz v0, :cond_25

    .line 2366
    sget-boolean v0, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_STARTING_WINDOW:Z

    if-eqz v0, :cond_23

    .line 2367
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Clearing startingData for token="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2369
    :cond_23
    iput-object v2, p0, Lcom/android/server/wm/AppWindowToken;->mStartingData:Lcom/android/server/wm/StartingData;

    .line 2371
    :cond_25
    return-void

    .line 2375
    :cond_26
    iget-object v0, p0, Lcom/android/server/wm/AppWindowToken;->mStartingData:Lcom/android/server/wm/StartingData;

    if-eqz v0, :cond_87

    .line 2376
    iget-object v0, p0, Lcom/android/server/wm/AppWindowToken;->startingSurface:Lcom/android/server/policy/WindowManagerPolicy$StartingSurface;

    .line 2377
    .local v0, "surface":Lcom/android/server/policy/WindowManagerPolicy$StartingSurface;
    iput-object v2, p0, Lcom/android/server/wm/AppWindowToken;->mStartingData:Lcom/android/server/wm/StartingData;

    .line 2378
    iput-object v2, p0, Lcom/android/server/wm/AppWindowToken;->startingSurface:Lcom/android/server/policy/WindowManagerPolicy$StartingSurface;

    .line 2379
    iput-object v2, p0, Lcom/android/server/wm/AppWindowToken;->startingWindow:Lcom/android/server/wm/WindowState;

    .line 2380
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/server/wm/AppWindowToken;->startingDisplayed:Z

    .line 2381
    if-nez v0, :cond_41

    .line 2382
    sget-boolean v2, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_STARTING_WINDOW:Z

    if-eqz v2, :cond_40

    .line 2383
    const-string v2, "startingWindow was set but startingSurface==null, couldn\'t remove"

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2386
    :cond_40
    return-void

    .line 2396
    :cond_41
    sget-boolean v2, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_STARTING_WINDOW:Z

    if-eqz v2, :cond_7a

    .line 2397
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Schedule remove starting "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " startingWindow="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/wm/AppWindowToken;->startingWindow:Lcom/android/server/wm/WindowState;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " startingView="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/wm/AppWindowToken;->startingSurface:Lcom/android/server/policy/WindowManagerPolicy$StartingSurface;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " Callers="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v3, 0x5

    .line 2400
    invoke-static {v3}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 2397
    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2405
    :cond_7a
    iget-object v1, p0, Lcom/android/server/wm/AppWindowToken;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mAnimationHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/server/wm/-$$Lambda$AppWindowToken$4wx593XO55AcDD3O9-1QAS0fIHY;

    invoke-direct {v2, v0}, Lcom/android/server/wm/-$$Lambda$AppWindowToken$4wx593XO55AcDD3O9-1QAS0fIHY;-><init>(Lcom/android/server/policy/WindowManagerPolicy$StartingSurface;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 2413
    return-void

    .line 2389
    .end local v0  # "surface":Lcom/android/server/policy/WindowManagerPolicy$StartingSurface;
    :cond_87
    sget-boolean v0, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_STARTING_WINDOW:Z

    if-eqz v0, :cond_9f

    .line 2390
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Tried to remove starting window but startingWindow was null:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2393
    :cond_9f
    return-void
.end method

.method reparent(Lcom/android/server/wm/Task;I)V
    .registers 8
    .param p1, "task"  # Lcom/android/server/wm/Task;
    .param p2, "position"  # I

    .line 1305
    sget-boolean v0, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_ADD_REMOVE:Z

    const-string v1, "WindowManager"

    if-eqz v0, :cond_2c

    .line 1306
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "reparent: moving app token="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " to task="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Lcom/android/server/wm/Task;->mTaskId:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " at "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1309
    :cond_2c
    if-eqz p1, :cond_c9

    .line 1312
    invoke-virtual {p0}, Lcom/android/server/wm/AppWindowToken;->getTask()Lcom/android/server/wm/Task;

    move-result-object v0

    .line 1313
    .local v0, "currentTask":Lcom/android/server/wm/Task;
    const-string v2, "window token="

    if-eq p1, v0, :cond_ac

    .line 1318
    iget-object v3, v0, Lcom/android/server/wm/Task;->mStack:Lcom/android/server/wm/TaskStack;

    iget-object v4, p1, Lcom/android/server/wm/Task;->mStack:Lcom/android/server/wm/TaskStack;

    if-ne v3, v4, :cond_87

    .line 1324
    sget-boolean v2, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_ADD_REMOVE:Z

    if-eqz v2, :cond_5c

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "reParentWindowToken: removing window token="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " from task="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1326
    :cond_5c
    invoke-virtual {p0}, Lcom/android/server/wm/AppWindowToken;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v1

    .line 1328
    .local v1, "prevDisplayContent":Lcom/android/server/wm/DisplayContent;
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/server/wm/AppWindowToken;->mReparenting:Z

    .line 1330
    invoke-virtual {p0}, Lcom/android/server/wm/AppWindowToken;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object v2

    invoke-virtual {v2, p0}, Lcom/android/server/wm/WindowContainer;->removeChild(Lcom/android/server/wm/WindowContainer;)V

    .line 1331
    invoke-virtual {p1, p0, p2}, Lcom/android/server/wm/Task;->addChild(Lcom/android/server/wm/AppWindowToken;I)V

    .line 1333
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/server/wm/AppWindowToken;->mReparenting:Z

    .line 1336
    invoke-virtual {p1}, Lcom/android/server/wm/Task;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v2

    .line 1337
    .local v2, "displayContent":Lcom/android/server/wm/DisplayContent;
    invoke-virtual {v2}, Lcom/android/server/wm/DisplayContent;->setLayoutNeeded()V

    .line 1338
    if-eq v1, v2, :cond_7f

    .line 1339
    invoke-virtual {p0, v2}, Lcom/android/server/wm/AppWindowToken;->onDisplayChanged(Lcom/android/server/wm/DisplayContent;)V

    .line 1340
    invoke-virtual {v1}, Lcom/android/server/wm/DisplayContent;->setLayoutNeeded()V

    .line 1342
    :cond_7f
    invoke-virtual {p0}, Lcom/android/server/wm/AppWindowToken;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/wm/DisplayContent;->layoutAndAssignWindowLayersIfNeeded()V

    .line 1343
    return-void

    .line 1319
    .end local v1  # "prevDisplayContent":Lcom/android/server/wm/DisplayContent;
    .end local v2  # "displayContent":Lcom/android/server/wm/DisplayContent;
    :cond_87
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " current task="

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " belongs to a different stack than "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1314
    :cond_ac
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " already child of task="

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1310
    .end local v0  # "currentTask":Lcom/android/server/wm/Task;
    :cond_c9
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "reparent: could not find task"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected reparentSurfaceControl(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;)V
    .registers 4
    .param p1, "t"  # Landroid/view/SurfaceControl$Transaction;
    .param p2, "newParent"  # Landroid/view/SurfaceControl;

    .line 2860
    iget-object v0, p0, Lcom/android/server/wm/AppWindowToken;->mSurfaceAnimator:Lcom/android/server/wm/SurfaceAnimator;

    invoke-virtual {v0}, Lcom/android/server/wm/SurfaceAnimator;->hasLeash()Z

    move-result v0

    if-nez v0, :cond_d

    .line 2861
    iget-object v0, p0, Lcom/android/server/wm/AppWindowToken;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {p1, v0, p2}, Landroid/view/SurfaceControl$Transaction;->reparent(Landroid/view/SurfaceControl;Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    .line 2863
    :cond_d
    return-void
.end method

.method requestUpdateWallpaperIfNeeded()V
    .registers 3

    .line 1161
    iget-object v0, p0, Lcom/android/server/wm/AppWindowToken;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_8
    if-ltz v0, :cond_18

    .line 1162
    iget-object v1, p0, Lcom/android/server/wm/AppWindowToken;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v1, v0}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/WindowState;

    .line 1163
    .local v1, "w":Lcom/android/server/wm/WindowState;
    invoke-virtual {v1}, Lcom/android/server/wm/WindowState;->requestUpdateWallpaperIfNeeded()V

    .line 1161
    .end local v1  # "w":Lcom/android/server/wm/WindowState;
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    .line 1165
    .end local v0  # "i":I
    :cond_18
    return-void
.end method

.method scheduleAddStartingWindow()V
    .registers 3

    .line 2249
    iget-object v0, p0, Lcom/android/server/wm/AppWindowToken;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mAnimationHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/wm/AppWindowToken;->mAddStartingWindow:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasCallbacks(Ljava/lang/Runnable;)Z

    move-result v0

    if-nez v0, :cond_20

    .line 2250
    sget-boolean v0, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_STARTING_WINDOW:Z

    if-eqz v0, :cond_17

    const-string v0, "WindowManager"

    const-string v1, "Enqueueing ADD_STARTING"

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2251
    :cond_17
    iget-object v0, p0, Lcom/android/server/wm/AppWindowToken;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mAnimationHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/wm/AppWindowToken;->mAddStartingWindow:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->postAtFrontOfQueue(Ljava/lang/Runnable;)Z

    .line 2253
    :cond_20
    return-void
.end method

.method setAppLayoutChanges(ILjava/lang/String;)V
    .registers 6
    .param p1, "changes"  # I
    .param p2, "reason"  # Ljava/lang/String;

    .line 1426
    iget-object v0, p0, Lcom/android/server/wm/AppWindowToken;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1e

    .line 1427
    invoke-virtual {p0}, Lcom/android/server/wm/AppWindowToken;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    .line 1428
    .local v0, "dc":Lcom/android/server/wm/DisplayContent;
    iget v1, v0, Lcom/android/server/wm/DisplayContent;->pendingLayoutChanges:I

    or-int/2addr v1, p1

    iput v1, v0, Lcom/android/server/wm/DisplayContent;->pendingLayoutChanges:I

    .line 1429
    sget-boolean v1, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_LAYOUT_REPEATS:Z

    if-eqz v1, :cond_1e

    .line 1430
    iget-object v1, p0, Lcom/android/server/wm/AppWindowToken;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mWindowPlacerLocked:Lcom/android/server/wm/WindowSurfacePlacer;

    iget v2, v0, Lcom/android/server/wm/DisplayContent;->pendingLayoutChanges:I

    invoke-virtual {v1, p2, v2}, Lcom/android/server/wm/WindowSurfacePlacer;->debugLayoutRepeats(Ljava/lang/String;I)V

    .line 1433
    .end local v0  # "dc":Lcom/android/server/wm/DisplayContent;
    :cond_1e
    return-void
.end method

.method setCanTurnScreenOn(Z)V
    .registers 2
    .param p1, "canTurnScreenOn"  # Z

    .line 2508
    iput-boolean p1, p0, Lcom/android/server/wm/AppWindowToken;->mCanTurnScreenOn:Z

    .line 2509
    return-void
.end method

.method setClientHidden(Z)V
    .registers 4
    .param p1, "hideClient"  # Z

    .line 476
    iget-boolean v0, p0, Lcom/android/server/wm/AppWindowToken;->mClientHidden:Z

    if-eq v0, p1, :cond_40

    if-eqz p1, :cond_b

    iget-boolean v0, p0, Lcom/android/server/wm/AppWindowToken;->mDeferHidingClient:Z

    if-eqz v0, :cond_b

    goto :goto_40

    .line 479
    :cond_b
    sget-boolean v0, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_APP_TRANSITIONS:Z

    if-eqz v0, :cond_3a

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setClientHidden: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " clientHidden="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " Callers="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x5

    .line 480
    invoke-static {v1}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 479
    const-string v1, "WindowManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 481
    :cond_3a
    iput-boolean p1, p0, Lcom/android/server/wm/AppWindowToken;->mClientHidden:Z

    .line 482
    invoke-virtual {p0}, Lcom/android/server/wm/AppWindowToken;->sendAppVisibilityToClients()V

    .line 483
    return-void

    .line 477
    :cond_40
    :goto_40
    return-void
.end method

.method setDisablePreviewScreenshots(Z)V
    .registers 2
    .param p1, "disable"  # Z

    .line 2501
    iput-boolean p1, p0, Lcom/android/server/wm/AppWindowToken;->mDisablePreviewScreenshots:Z

    .line 2502
    return-void
.end method

.method setFillsParent(Z)V
    .registers 2
    .param p1, "fillsParent"  # Z

    .line 2421
    iput-boolean p1, p0, Lcom/android/server/wm/AppWindowToken;->mFillsParent:Z

    .line 2422
    return-void
.end method

.method setHidden(Z)V
    .registers 3
    .param p1, "hidden"  # Z

    .line 3206
    invoke-super {p0, p1}, Lcom/android/server/wm/WindowToken;->setHidden(Z)V

    .line 3208
    if-eqz p1, :cond_c

    .line 3210
    iget-object v0, p0, Lcom/android/server/wm/AppWindowToken;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v0, v0, Lcom/android/server/wm/DisplayContent;->mPinnedStackControllerLocked:Lcom/android/server/wm/PinnedStackController;

    invoke-virtual {v0, p0}, Lcom/android/server/wm/PinnedStackController;->resetReentrySnapFraction(Lcom/android/server/wm/AppWindowToken;)V

    .line 3212
    :cond_c
    invoke-virtual {p0}, Lcom/android/server/wm/AppWindowToken;->scheduleAnimation()V

    .line 3213
    return-void
.end method

.method protected setLayer(Landroid/view/SurfaceControl$Transaction;I)V
    .registers 4
    .param p1, "t"  # Landroid/view/SurfaceControl$Transaction;
    .param p2, "layer"  # I

    .line 2846
    iget-object v0, p0, Lcom/android/server/wm/AppWindowToken;->mSurfaceAnimator:Lcom/android/server/wm/SurfaceAnimator;

    invoke-virtual {v0}, Lcom/android/server/wm/SurfaceAnimator;->hasLeash()Z

    move-result v0

    if-nez v0, :cond_d

    .line 2847
    iget-object v0, p0, Lcom/android/server/wm/AppWindowToken;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {p1, v0, p2}, Landroid/view/SurfaceControl$Transaction;->setLayer(Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;

    .line 2849
    :cond_d
    return-void
.end method

.method public setLockOrientationForSensor(Z)V
    .registers 3
    .param p1, "locked"  # Z

    .line 3411
    if-eqz p1, :cond_7

    .line 3412
    iget v0, p0, Lcom/android/server/wm/AppWindowToken;->mOrientation:I

    iput v0, p0, Lcom/android/server/wm/AppWindowToken;->mLockOrientation:I

    goto :goto_b

    .line 3414
    :cond_7
    const/high16 v0, -0x80000000

    iput v0, p0, Lcom/android/server/wm/AppWindowToken;->mLockOrientation:I

    .line 3416
    :goto_b
    return-void
.end method

.method protected setRelativeLayer(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;I)V
    .registers 5
    .param p1, "t"  # Landroid/view/SurfaceControl$Transaction;
    .param p2, "relativeTo"  # Landroid/view/SurfaceControl;
    .param p3, "layer"  # I

    .line 2853
    iget-object v0, p0, Lcom/android/server/wm/AppWindowToken;->mSurfaceAnimator:Lcom/android/server/wm/SurfaceAnimator;

    invoke-virtual {v0}, Lcom/android/server/wm/SurfaceAnimator;->hasLeash()Z

    move-result v0

    if-nez v0, :cond_d

    .line 2854
    iget-object v0, p0, Lcom/android/server/wm/AppWindowToken;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {p1, v0, p2, p3}, Landroid/view/SurfaceControl$Transaction;->setRelativeLayer(Landroid/view/SurfaceControl;Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;

    .line 2856
    :cond_d
    return-void
.end method

.method setVisibility(ZZ)V
    .registers 15
    .param p1, "visible"  # Z
    .param p2, "deferHidingClient"  # Z

    .line 486
    invoke-virtual {p0}, Lcom/android/server/wm/AppWindowToken;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    iget-object v0, v0, Lcom/android/server/wm/DisplayContent;->mAppTransition:Lcom/android/server/wm/AppTransition;

    .line 495
    .local v0, "appTransition":Lcom/android/server/wm/AppTransition;
    const/4 v1, 0x1

    if-nez p1, :cond_19

    iget-boolean v2, p0, Lcom/android/server/wm/AppWindowToken;->hiddenRequested:Z

    if-eqz v2, :cond_19

    .line 497
    if-nez p2, :cond_18

    iget-boolean v2, p0, Lcom/android/server/wm/AppWindowToken;->mDeferHidingClient:Z

    if-eqz v2, :cond_18

    .line 500
    iput-boolean p2, p0, Lcom/android/server/wm/AppWindowToken;->mDeferHidingClient:Z

    .line 501
    invoke-virtual {p0, v1}, Lcom/android/server/wm/AppWindowToken;->setClientHidden(Z)V

    .line 503
    :cond_18
    return-void

    .line 506
    :cond_19
    sget-boolean v2, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_APP_TRANSITIONS:Z

    const-string v3, "WindowManager"

    if-nez v2, :cond_23

    sget-boolean v2, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_ORIENTATION:Z

    if-eqz v2, :cond_6c

    .line 507
    :cond_23
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setAppVisibility("

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/wm/AppWindowToken;->appToken:Landroid/view/IApplicationToken;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ", visible="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, "): "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " hidden="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 509
    invoke-virtual {p0}, Lcom/android/server/wm/AppWindowToken;->isHidden()Z

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, " hiddenRequested="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v4, p0, Lcom/android/server/wm/AppWindowToken;->hiddenRequested:Z

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, " Callers="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v4, 0x6

    .line 510
    invoke-static {v4}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 507
    invoke-static {v3, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 513
    :cond_6c
    invoke-virtual {p0}, Lcom/android/server/wm/AppWindowToken;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v2

    .line 514
    .local v2, "displayContent":Lcom/android/server/wm/DisplayContent;
    iget-object v4, v2, Lcom/android/server/wm/DisplayContent;->mOpeningApps:Landroid/util/ArraySet;

    invoke-virtual {v4, p0}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    .line 515
    iget-object v4, v2, Lcom/android/server/wm/DisplayContent;->mClosingApps:Landroid/util/ArraySet;

    invoke-virtual {v4, p0}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    .line 516
    invoke-virtual {p0}, Lcom/android/server/wm/AppWindowToken;->isInChangeTransition()Z

    move-result v4

    if-eqz v4, :cond_87

    .line 517
    invoke-virtual {p0}, Lcom/android/server/wm/AppWindowToken;->getPendingTransaction()Landroid/view/SurfaceControl$Transaction;

    move-result-object v4

    invoke-direct {p0, v4, v1}, Lcom/android/server/wm/AppWindowToken;->clearChangeLeash(Landroid/view/SurfaceControl$Transaction;Z)V

    .line 519
    :cond_87
    iget-object v4, v2, Lcom/android/server/wm/DisplayContent;->mChangingApps:Landroid/util/ArraySet;

    invoke-virtual {v4, p0}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    .line 520
    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/android/server/wm/AppWindowToken;->waitingToShow:Z

    .line 521
    xor-int/lit8 v5, p1, 0x1

    iput-boolean v5, p0, Lcom/android/server/wm/AppWindowToken;->hiddenRequested:Z

    .line 522
    iput-boolean p2, p0, Lcom/android/server/wm/AppWindowToken;->mDeferHidingClient:Z

    .line 524
    if-nez p1, :cond_9b

    .line 528
    invoke-virtual {p0}, Lcom/android/server/wm/AppWindowToken;->removeDeadWindows()V

    goto :goto_ee

    .line 530
    :cond_9b
    invoke-virtual {v0}, Lcom/android/server/wm/AppTransition;->isTransitionSet()Z

    move-result v5

    if-nez v5, :cond_ac

    .line 531
    invoke-virtual {v0}, Lcom/android/server/wm/AppTransition;->isReady()Z

    move-result v5

    if-eqz v5, :cond_ac

    .line 535
    iget-object v5, v2, Lcom/android/server/wm/DisplayContent;->mOpeningApps:Landroid/util/ArraySet;

    invoke-virtual {v5, p0}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 537
    :cond_ac
    iput-boolean v4, p0, Lcom/android/server/wm/AppWindowToken;->startingMoved:Z

    .line 540
    invoke-virtual {p0}, Lcom/android/server/wm/AppWindowToken;->isHidden()Z

    move-result v5

    if-nez v5, :cond_b8

    iget-boolean v5, p0, Lcom/android/server/wm/AppWindowToken;->mAppStopped:Z

    if-eqz v5, :cond_cb

    .line 541
    :cond_b8
    invoke-virtual {p0}, Lcom/android/server/wm/AppWindowToken;->clearAllDrawn()V

    .line 544
    invoke-virtual {p0}, Lcom/android/server/wm/AppWindowToken;->isHidden()Z

    move-result v5

    if-eqz v5, :cond_cb

    .line 545
    iput-boolean v1, p0, Lcom/android/server/wm/AppWindowToken;->waitingToShow:Z

    .line 549
    new-instance v5, Lcom/android/server/wm/-$$Lambda$AppWindowToken$l3nhOHg-NM6mJqZvaw_yRzIRixU;

    invoke-direct {v5, v2}, Lcom/android/server/wm/-$$Lambda$AppWindowToken$l3nhOHg-NM6mJqZvaw_yRzIRixU;-><init>(Lcom/android/server/wm/DisplayContent;)V

    invoke-virtual {p0, v5, v1}, Lcom/android/server/wm/AppWindowToken;->forAllWindows(Ljava/util/function/Consumer;Z)V

    .line 569
    :cond_cb
    invoke-virtual {p0, v4}, Lcom/android/server/wm/AppWindowToken;->setClientHidden(Z)V

    .line 571
    invoke-virtual {p0}, Lcom/android/server/wm/AppWindowToken;->requestUpdateWallpaperIfNeeded()V

    .line 573
    sget-boolean v5, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_ADD_REMOVE:Z

    if-eqz v5, :cond_e9

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "No longer Stopped: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 574
    :cond_e9
    iput-boolean v4, p0, Lcom/android/server/wm/AppWindowToken;->mAppStopped:Z

    .line 576
    invoke-virtual {p0}, Lcom/android/server/wm/AppWindowToken;->transferStartingWindowFromHiddenAboveTokenIfNeeded()V

    .line 581
    :goto_ee
    invoke-virtual {p0}, Lcom/android/server/wm/AppWindowToken;->okToAnimate()Z

    move-result v5

    if-eqz v5, :cond_14c

    invoke-virtual {v0}, Lcom/android/server/wm/AppTransition;->isTransitionSet()Z

    move-result v5

    if-eqz v5, :cond_14c

    .line 582
    iput-boolean v1, p0, Lcom/android/server/wm/AppWindowToken;->inPendingTransaction:Z

    .line 583
    if-eqz p1, :cond_106

    .line 584
    iget-object v4, v2, Lcom/android/server/wm/DisplayContent;->mOpeningApps:Landroid/util/ArraySet;

    invoke-virtual {v4, p0}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 585
    iput-boolean v1, p0, Lcom/android/server/wm/AppWindowToken;->mEnteringAnimation:Z

    goto :goto_10d

    .line 587
    :cond_106
    iget-object v5, v2, Lcom/android/server/wm/DisplayContent;->mClosingApps:Landroid/util/ArraySet;

    invoke-virtual {v5, p0}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 588
    iput-boolean v4, p0, Lcom/android/server/wm/AppWindowToken;->mEnteringAnimation:Z

    .line 590
    :goto_10d
    invoke-virtual {v0}, Lcom/android/server/wm/AppTransition;->getAppTransition()I

    move-result v4

    const/16 v5, 0x10

    if-ne v4, v5, :cond_148

    .line 593
    invoke-virtual {p0}, Lcom/android/server/wm/AppWindowToken;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/server/wm/DisplayContent;->findFocusedWindow()Lcom/android/server/wm/WindowState;

    move-result-object v4

    .line 594
    .local v4, "win":Lcom/android/server/wm/WindowState;
    if-eqz v4, :cond_148

    .line 595
    iget-object v5, v4, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    .line 596
    .local v5, "focusedToken":Lcom/android/server/wm/AppWindowToken;
    if-eqz v5, :cond_148

    .line 597
    sget-boolean v6, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_APP_TRANSITIONS:Z

    if-eqz v6, :cond_140

    .line 598
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "TRANSIT_TASK_OPEN_BEHIND,  adding "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v7, " to mOpeningApps"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 602
    :cond_140
    invoke-virtual {v5, v1}, Lcom/android/server/wm/AppWindowToken;->setHidden(Z)V

    .line 603
    iget-object v1, v2, Lcom/android/server/wm/DisplayContent;->mOpeningApps:Landroid/util/ArraySet;

    invoke-virtual {v1, v5}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 608
    .end local v4  # "win":Lcom/android/server/wm/WindowState;
    .end local v5  # "focusedToken":Lcom/android/server/wm/AppWindowToken;
    :cond_148
    invoke-direct {p0}, Lcom/android/server/wm/AppWindowToken;->reportDescendantOrientationChangeIfNeeded()V

    .line 609
    return-void

    .line 612
    :cond_14c
    const/4 v7, 0x0

    const/4 v9, -0x1

    const/4 v10, 0x1

    iget-boolean v11, p0, Lcom/android/server/wm/AppWindowToken;->mVoiceInteraction:Z

    move-object v6, p0

    move v8, p1

    invoke-virtual/range {v6 .. v11}, Lcom/android/server/wm/AppWindowToken;->commitVisibility(Landroid/view/WindowManager$LayoutParams;ZIZZ)Z

    .line 613
    invoke-virtual {p0}, Lcom/android/server/wm/AppWindowToken;->updateReportedVisibilityLocked()V

    .line 614
    return-void
.end method

.method setWillCloseOrEnterPip(Z)V
    .registers 2
    .param p1, "willCloseOrEnterPip"  # Z

    .line 3349
    iput-boolean p1, p0, Lcom/android/server/wm/AppWindowToken;->mWillCloseOrEnterPip:Z

    .line 3350
    return-void
.end method

.method setWillReplaceChildWindows()V
    .registers 3

    .line 1142
    sget-boolean v0, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_ADD_REMOVE:Z

    if-eqz v0, :cond_1f

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Marking app token "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " with replacing child windows."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WindowManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1144
    :cond_1f
    iget-object v0, p0, Lcom/android/server/wm/AppWindowToken;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_27
    if-ltz v0, :cond_37

    .line 1145
    iget-object v1, p0, Lcom/android/server/wm/AppWindowToken;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v1, v0}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/WindowState;

    .line 1146
    .local v1, "w":Lcom/android/server/wm/WindowState;
    invoke-virtual {v1}, Lcom/android/server/wm/WindowState;->setWillReplaceChildWindows()V

    .line 1144
    .end local v1  # "w":Lcom/android/server/wm/WindowState;
    add-int/lit8 v0, v0, -0x1

    goto :goto_27

    .line 1148
    .end local v0  # "i":I
    :cond_37
    return-void
.end method

.method setWillReplaceWindows(Z)V
    .registers 4
    .param p1, "animate"  # Z

    .line 1132
    sget-boolean v0, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_ADD_REMOVE:Z

    if-eqz v0, :cond_1f

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Marking app token "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " with replacing windows."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WindowManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1135
    :cond_1f
    iget-object v0, p0, Lcom/android/server/wm/AppWindowToken;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_27
    if-ltz v0, :cond_37

    .line 1136
    iget-object v1, p0, Lcom/android/server/wm/AppWindowToken;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v1, v0}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/WindowState;

    .line 1137
    .local v1, "w":Lcom/android/server/wm/WindowState;
    invoke-virtual {v1, p1}, Lcom/android/server/wm/WindowState;->setWillReplaceWindow(Z)V

    .line 1135
    .end local v1  # "w":Lcom/android/server/wm/WindowState;
    add-int/lit8 v0, v0, -0x1

    goto :goto_27

    .line 1139
    .end local v0  # "i":I
    :cond_37
    return-void
.end method

.method shouldAnimate(I)Z
    .registers 8
    .param p1, "transit"  # I
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 2566
    nop

    .line 2567
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

    .line 2568
    .local v0, "isSplitScreenPrimary":Z
    :goto_d
    const/16 v3, 0xd

    if-eq p1, v3, :cond_13

    move v3, v1

    goto :goto_14

    :cond_13
    move v3, v2

    .line 2573
    .local v3, "allowSplitScreenPrimaryAnimation":Z
    :goto_14
    iget-object v4, p0, Lcom/android/server/wm/AppWindowToken;->mWmService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v4}, Lcom/android/server/wm/WindowManagerService;->getRecentsAnimationController()Lcom/android/server/wm/RecentsAnimationController;

    move-result-object v4

    .line 2574
    .local v4, "controller":Lcom/android/server/wm/RecentsAnimationController;
    if-eqz v4, :cond_2d

    invoke-virtual {p0}, Lcom/android/server/wm/AppWindowToken;->getTask()Lcom/android/server/wm/Task;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/server/wm/RecentsAnimationController;->isAnimatingTask(Lcom/android/server/wm/Task;)Z

    move-result v5

    if-eqz v5, :cond_2d

    .line 2575
    invoke-virtual {v4}, Lcom/android/server/wm/RecentsAnimationController;->shouldDeferCancelUntilNextTransition()Z

    move-result v5

    if-eqz v5, :cond_2d

    .line 2576
    return v2

    .line 2582
    :cond_2d
    if-eqz v0, :cond_33

    if-eqz v3, :cond_32

    goto :goto_33

    :cond_32
    move v1, v2

    :cond_33
    :goto_33
    return v1
.end method

.method public shouldDeferAnimationFinish(Ljava/lang/Runnable;)Z
    .registers 3
    .param p1, "endDeferFinishCallback"  # Ljava/lang/Runnable;

    .line 2824
    iget-object v0, p0, Lcom/android/server/wm/AppWindowToken;->mAnimatingAppWindowTokenRegistry:Lcom/android/server/wm/AnimatingAppWindowTokenRegistry;

    if-eqz v0, :cond_c

    .line 2825
    invoke-virtual {v0, p0, p1}, Lcom/android/server/wm/AnimatingAppWindowTokenRegistry;->notifyAboutToFinish(Lcom/android/server/wm/AppWindowToken;Ljava/lang/Runnable;)Z

    move-result v0

    if-eqz v0, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    .line 2824
    :goto_d
    return v0
.end method

.method shouldFreezeBounds()Z
    .registers 3

    .line 1172
    invoke-virtual {p0}, Lcom/android/server/wm/AppWindowToken;->getTask()Lcom/android/server/wm/Task;

    move-result-object v0

    .line 1176
    .local v0, "task":Lcom/android/server/wm/Task;
    if-eqz v0, :cond_16

    invoke-virtual {v0}, Lcom/android/server/wm/Task;->inFreeformWindowingMode()Z

    move-result v1

    if-eqz v1, :cond_d

    goto :goto_16

    .line 1184
    :cond_d
    invoke-virtual {p0}, Lcom/android/server/wm/AppWindowToken;->getTask()Lcom/android/server/wm/Task;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/wm/Task;->isDragResizing()Z

    move-result v1

    return v1

    .line 1177
    :cond_16
    :goto_16
    const/4 v1, 0x0

    return v1
.end method

.method shouldUseAppThemeSnapshot()Z
    .registers 3

    .line 2534
    iget-boolean v0, p0, Lcom/android/server/wm/AppWindowToken;->mDisablePreviewScreenshots:Z

    const/4 v1, 0x1

    if-nez v0, :cond_12

    new-instance v0, Lcom/android/server/wm/-$$Lambda$AppWindowToken$d4zJvV4k3x33TpwfF6P_rRU1dh8;

    invoke-direct {v0, p0}, Lcom/android/server/wm/-$$Lambda$AppWindowToken$d4zJvV4k3x33TpwfF6P_rRU1dh8;-><init>(Lcom/android/server/wm/AppWindowToken;)V

    invoke-virtual {p0, v0, v1}, Lcom/android/server/wm/AppWindowToken;->forAllWindows(Lcom/android/internal/util/ToBooleanFunction;Z)Z

    move-result v0

    if-eqz v0, :cond_11

    goto :goto_12

    :cond_11
    const/4 v1, 0x0

    :cond_12
    :goto_12
    return v1
.end method

.method showAllWindowsLocked()V
    .registers 3

    .line 2935
    sget-object v0, Lcom/android/server/wm/-$$Lambda$AppWindowToken$GO_44j7HKFWrNpwWGQ4totlKXW8;->INSTANCE:Lcom/android/server/wm/-$$Lambda$AppWindowToken$GO_44j7HKFWrNpwWGQ4totlKXW8;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/server/wm/AppWindowToken;->forAllWindows(Ljava/util/function/Consumer;Z)V

    .line 2939
    return-void
.end method

.method startFreezingScreen()V
    .registers 5

    .line 1445
    sget-boolean v0, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_ORIENTATION:Z

    if-eqz v0, :cond_3c

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Set freezing of "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/wm/AppWindowToken;->appToken:Landroid/view/IApplicationToken;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ": hidden="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1446
    invoke-virtual {p0}, Lcom/android/server/wm/AppWindowToken;->isHidden()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " freezing="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/wm/AppWindowToken;->mFreezingScreen:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " hiddenRequested="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/wm/AppWindowToken;->hiddenRequested:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1445
    const-string v1, "WindowManager"

    invoke-static {v1, v0}, Lcom/android/server/wm/WindowManagerService;->logWithStack(Ljava/lang/String;Ljava/lang/String;)V

    .line 1448
    :cond_3c
    iget-boolean v0, p0, Lcom/android/server/wm/AppWindowToken;->hiddenRequested:Z

    if-nez v0, :cond_8c

    .line 1449
    iget-boolean v0, p0, Lcom/android/server/wm/AppWindowToken;->mFreezingScreen:Z

    if-nez v0, :cond_75

    .line 1450
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/wm/AppWindowToken;->mFreezingScreen:Z

    .line 1451
    iget-object v1, p0, Lcom/android/server/wm/AppWindowToken;->mWmService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v1, p0}, Lcom/android/server/wm/WindowManagerService;->registerAppFreezeListener(Lcom/android/server/wm/WindowManagerService$AppFreezeListener;)V

    .line 1452
    iget-object v1, p0, Lcom/android/server/wm/AppWindowToken;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget v2, v1, Lcom/android/server/wm/WindowManagerService;->mAppsFreezingScreen:I

    add-int/2addr v2, v0

    iput v2, v1, Lcom/android/server/wm/WindowManagerService;->mAppsFreezingScreen:I

    .line 1453
    iget-object v1, p0, Lcom/android/server/wm/AppWindowToken;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget v1, v1, Lcom/android/server/wm/WindowManagerService;->mAppsFreezingScreen:I

    if-ne v1, v0, :cond_75

    .line 1454
    iget-object v0, p0, Lcom/android/server/wm/AppWindowToken;->mWmService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {p0}, Lcom/android/server/wm/AppWindowToken;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v2, v1}, Lcom/android/server/wm/WindowManagerService;->startFreezingDisplayLocked(IILcom/android/server/wm/DisplayContent;)V

    .line 1455
    iget-object v0, p0, Lcom/android/server/wm/AppWindowToken;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Lcom/android/server/wm/WindowManagerService$H;->removeMessages(I)V

    .line 1456
    iget-object v0, p0, Lcom/android/server/wm/AppWindowToken;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/wm/WindowManagerService$H;->sendEmptyMessageDelayed(IJ)Z

    .line 1459
    :cond_75
    iget-object v0, p0, Lcom/android/server/wm/AppWindowToken;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowList;->size()I

    move-result v0

    .line 1460
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_7c
    if-ge v1, v0, :cond_8c

    .line 1461
    iget-object v2, p0, Lcom/android/server/wm/AppWindowToken;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v2, v1}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/WindowState;

    .line 1462
    .local v2, "w":Lcom/android/server/wm/WindowState;
    invoke-virtual {v2}, Lcom/android/server/wm/WindowState;->onStartFreezingScreen()V

    .line 1460
    .end local v2  # "w":Lcom/android/server/wm/WindowState;
    add-int/lit8 v1, v1, 0x1

    goto :goto_7c

    .line 1465
    .end local v0  # "count":I
    .end local v1  # "i":I
    :cond_8c
    return-void
.end method

.method startRelaunching()V
    .registers 2

    .line 1188
    invoke-virtual {p0}, Lcom/android/server/wm/AppWindowToken;->shouldFreezeBounds()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 1189
    invoke-direct {p0}, Lcom/android/server/wm/AppWindowToken;->freezeBounds()V

    .line 1196
    :cond_9
    invoke-virtual {p0}, Lcom/android/server/wm/AppWindowToken;->detachChildren()V

    .line 1198
    iget v0, p0, Lcom/android/server/wm/AppWindowToken;->mPendingRelaunchCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/server/wm/AppWindowToken;->mPendingRelaunchCount:I

    .line 1199
    return-void
.end method

.method stopFreezingScreen(ZZ)V
    .registers 9
    .param p1, "unfreezeSurfaceNow"  # Z
    .param p2, "force"  # Z

    .line 1468
    iget-boolean v0, p0, Lcom/android/server/wm/AppWindowToken;->mFreezingScreen:Z

    if-nez v0, :cond_5

    .line 1469
    return-void

    .line 1471
    :cond_5
    sget-boolean v0, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_ORIENTATION:Z

    const-string v1, "WindowManager"

    if-eqz v0, :cond_27

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Clear freezing of "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " force="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1472
    :cond_27
    iget-object v0, p0, Lcom/android/server/wm/AppWindowToken;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowList;->size()I

    move-result v0

    .line 1473
    .local v0, "count":I
    const/4 v2, 0x0

    .line 1474
    .local v2, "unfrozeWindows":Z
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_2f
    if-ge v3, v0, :cond_41

    .line 1475
    iget-object v4, p0, Lcom/android/server/wm/AppWindowToken;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v4, v3}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/wm/WindowState;

    .line 1476
    .local v4, "w":Lcom/android/server/wm/WindowState;
    invoke-virtual {v4}, Lcom/android/server/wm/WindowState;->onStopFreezingScreen()Z

    move-result v5

    or-int/2addr v2, v5

    .line 1474
    .end local v4  # "w":Lcom/android/server/wm/WindowState;
    add-int/lit8 v3, v3, 0x1

    goto :goto_2f

    .line 1478
    .end local v3  # "i":I
    :cond_41
    if-nez p2, :cond_45

    if-eqz v2, :cond_71

    .line 1479
    :cond_45
    sget-boolean v3, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_ORIENTATION:Z

    if-eqz v3, :cond_5d

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "No longer freezing: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1480
    :cond_5d
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/wm/AppWindowToken;->mFreezingScreen:Z

    .line 1481
    iget-object v1, p0, Lcom/android/server/wm/AppWindowToken;->mWmService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v1, p0}, Lcom/android/server/wm/WindowManagerService;->unregisterAppFreezeListener(Lcom/android/server/wm/WindowManagerService$AppFreezeListener;)V

    .line 1482
    iget-object v1, p0, Lcom/android/server/wm/AppWindowToken;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget v3, v1, Lcom/android/server/wm/WindowManagerService;->mAppsFreezingScreen:I

    add-int/lit8 v3, v3, -0x1

    iput v3, v1, Lcom/android/server/wm/WindowManagerService;->mAppsFreezingScreen:I

    .line 1483
    iget-object v1, p0, Lcom/android/server/wm/AppWindowToken;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iput-object p0, v1, Lcom/android/server/wm/WindowManagerService;->mLastFinishedFreezeSource:Ljava/lang/Object;

    .line 1485
    :cond_71
    if-eqz p1, :cond_81

    .line 1486
    if-eqz v2, :cond_7c

    .line 1487
    iget-object v1, p0, Lcom/android/server/wm/AppWindowToken;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mWindowPlacerLocked:Lcom/android/server/wm/WindowSurfacePlacer;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowSurfacePlacer;->performSurfacePlacement()V

    .line 1489
    :cond_7c
    iget-object v1, p0, Lcom/android/server/wm/AppWindowToken;->mWmService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowManagerService;->stopFreezingDisplayLocked()V

    .line 1491
    :cond_81
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 3309
    iget-object v0, p0, Lcom/android/server/wm/AppWindowToken;->stringName:Ljava/lang/String;

    if-nez v0, :cond_2e

    .line 3310
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 3311
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string v1, "AppWindowToken{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3312
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3313
    const-string v1, " token="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/wm/AppWindowToken;->token:Landroid/os/IBinder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 3314
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/wm/AppWindowToken;->stringName:Ljava/lang/String;

    .line 3316
    .end local v0  # "sb":Ljava/lang/StringBuilder;
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
    .registers 13
    .param p1, "transferFrom"  # Landroid/os/IBinder;

    .line 1519
    invoke-virtual {p0}, Lcom/android/server/wm/AppWindowToken;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/server/wm/DisplayContent;->getAppWindowToken(Landroid/os/IBinder;)Lcom/android/server/wm/AppWindowToken;

    move-result-object v0

    .line 1521
    .local v0, "fromToken":Lcom/android/server/wm/AppWindowToken;
    const/4 v1, 0x0

    if-eqz v0, :cond_129

    iget-object v2, p0, Lcom/android/server/wm/AppWindowToken;->mSurfaceControl:Landroid/view/SurfaceControl;

    if-nez v2, :cond_11

    goto/16 :goto_129

    .line 1526
    :cond_11
    iget-object v2, p0, Lcom/android/server/wm/AppWindowToken;->mStartingData:Lcom/android/server/wm/StartingData;

    const-string v3, "WindowManager"

    if-nez v2, :cond_1b

    iget-object v2, p0, Lcom/android/server/wm/AppWindowToken;->startingSurface:Lcom/android/server/policy/WindowManagerPolicy$StartingSurface;

    if-eqz v2, :cond_29

    :cond_1b
    invoke-virtual {v0}, Lcom/android/server/wm/AppWindowToken;->getController()Lcom/android/server/wm/WindowContainerController;

    move-result-object v2

    if-eqz v2, :cond_29

    .line 1527
    const-string v2, "skip copy startingData as it already exists to avoid dmabuf leak"

    invoke-static {v3, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1528
    invoke-virtual {v0}, Lcom/android/server/wm/AppWindowToken;->removeStartingWindow()V

    .line 1532
    :cond_29
    iget-object v2, v0, Lcom/android/server/wm/AppWindowToken;->startingWindow:Lcom/android/server/wm/WindowState;

    .line 1533
    .local v2, "tStartingWindow":Lcom/android/server/wm/WindowState;
    const-string v4, " to "

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-eqz v2, :cond_fa

    iget-object v7, v0, Lcom/android/server/wm/AppWindowToken;->startingSurface:Lcom/android/server/policy/WindowManagerPolicy$StartingSurface;

    if-eqz v7, :cond_fa

    .line 1536
    invoke-virtual {p0}, Lcom/android/server/wm/AppWindowToken;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v7

    iput-boolean v6, v7, Lcom/android/server/wm/DisplayContent;->mSkipAppTransitionAnimation:Z

    .line 1538
    sget-boolean v7, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_STARTING_WINDOW:Z

    const-string v8, " from "

    if-eqz v7, :cond_61

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Moving existing starting "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1541
    :cond_61
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v9

    .line 1544
    .local v9, "origId":J
    :try_start_65
    iget-object v4, v0, Lcom/android/server/wm/AppWindowToken;->mStartingData:Lcom/android/server/wm/StartingData;

    iput-object v4, p0, Lcom/android/server/wm/AppWindowToken;->mStartingData:Lcom/android/server/wm/StartingData;

    .line 1545
    iget-object v4, v0, Lcom/android/server/wm/AppWindowToken;->startingSurface:Lcom/android/server/policy/WindowManagerPolicy$StartingSurface;

    iput-object v4, p0, Lcom/android/server/wm/AppWindowToken;->startingSurface:Lcom/android/server/policy/WindowManagerPolicy$StartingSurface;

    .line 1546
    iget-boolean v4, v0, Lcom/android/server/wm/AppWindowToken;->startingDisplayed:Z

    iput-boolean v4, p0, Lcom/android/server/wm/AppWindowToken;->startingDisplayed:Z

    .line 1547
    iput-boolean v1, v0, Lcom/android/server/wm/AppWindowToken;->startingDisplayed:Z

    .line 1548
    iput-object v2, p0, Lcom/android/server/wm/AppWindowToken;->startingWindow:Lcom/android/server/wm/WindowState;

    .line 1549
    iget-boolean v4, v0, Lcom/android/server/wm/AppWindowToken;->reportedVisible:Z

    iput-boolean v4, p0, Lcom/android/server/wm/AppWindowToken;->reportedVisible:Z

    .line 1550
    iput-object v5, v0, Lcom/android/server/wm/AppWindowToken;->mStartingData:Lcom/android/server/wm/StartingData;

    .line 1551
    iput-object v5, v0, Lcom/android/server/wm/AppWindowToken;->startingSurface:Lcom/android/server/policy/WindowManagerPolicy$StartingSurface;

    .line 1552
    iput-object v5, v0, Lcom/android/server/wm/AppWindowToken;->startingWindow:Lcom/android/server/wm/WindowState;

    .line 1553
    iput-boolean v6, v0, Lcom/android/server/wm/AppWindowToken;->startingMoved:Z

    .line 1554
    iput-object p0, v2, Lcom/android/server/wm/WindowState;->mToken:Lcom/android/server/wm/WindowToken;

    .line 1555
    iput-object p0, v2, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    .line 1557
    sget-boolean v4, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_ADD_REMOVE:Z

    if-nez v4, :cond_8d

    sget-boolean v4, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_STARTING_WINDOW:Z

    if-eqz v4, :cond_a7

    :cond_8d
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Removing starting "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1559
    :cond_a7
    invoke-virtual {v0, v2}, Lcom/android/server/wm/AppWindowToken;->removeChild(Lcom/android/server/wm/WindowState;)V

    .line 1560
    invoke-virtual {v0, v2}, Lcom/android/server/wm/AppWindowToken;->postWindowRemoveStartingWindowCleanup(Lcom/android/server/wm/WindowState;)V

    .line 1561
    iput-boolean v1, v0, Lcom/android/server/wm/AppWindowToken;->mHiddenSetFromTransferredStartingWindow:Z

    .line 1562
    invoke-virtual {p0, v2}, Lcom/android/server/wm/AppWindowToken;->addWindow(Lcom/android/server/wm/WindowState;)V

    .line 1567
    iget-boolean v3, v0, Lcom/android/server/wm/AppWindowToken;->allDrawn:Z

    if-eqz v3, :cond_bc

    .line 1568
    iput-boolean v6, p0, Lcom/android/server/wm/AppWindowToken;->allDrawn:Z

    .line 1569
    iget-boolean v3, v0, Lcom/android/server/wm/AppWindowToken;->deferClearAllDrawn:Z

    iput-boolean v3, p0, Lcom/android/server/wm/AppWindowToken;->deferClearAllDrawn:Z

    .line 1571
    :cond_bc
    iget-boolean v3, v0, Lcom/android/server/wm/AppWindowToken;->firstWindowDrawn:Z

    if-eqz v3, :cond_c2

    .line 1572
    iput-boolean v6, p0, Lcom/android/server/wm/AppWindowToken;->firstWindowDrawn:Z

    .line 1574
    :cond_c2
    invoke-virtual {v0}, Lcom/android/server/wm/AppWindowToken;->isHidden()Z

    move-result v3

    if-nez v3, :cond_cf

    .line 1575
    invoke-virtual {p0, v1}, Lcom/android/server/wm/AppWindowToken;->setHidden(Z)V

    .line 1576
    iput-boolean v1, p0, Lcom/android/server/wm/AppWindowToken;->hiddenRequested:Z

    .line 1577
    iput-boolean v6, p0, Lcom/android/server/wm/AppWindowToken;->mHiddenSetFromTransferredStartingWindow:Z

    .line 1579
    :cond_cf
    iget-boolean v1, v0, Lcom/android/server/wm/AppWindowToken;->mClientHidden:Z

    invoke-virtual {p0, v1}, Lcom/android/server/wm/AppWindowToken;->setClientHidden(Z)V

    .line 1581
    invoke-virtual {p0, v0}, Lcom/android/server/wm/AppWindowToken;->transferAnimation(Lcom/android/server/wm/WindowContainer;)V

    .line 1583
    invoke-virtual {p0}, Lcom/android/server/wm/AppWindowToken;->clearChangeTransition()V

    .line 1588
    iput-boolean v6, p0, Lcom/android/server/wm/AppWindowToken;->mUseTransferredAnimation:Z

    .line 1590
    iget-object v1, p0, Lcom/android/server/wm/AppWindowToken;->mWmService:Lcom/android/server/wm/WindowManagerService;

    const/4 v3, 0x3

    invoke-virtual {v1, v3, v6}, Lcom/android/server/wm/WindowManagerService;->updateFocusedWindowLocked(IZ)Z

    .line 1592
    invoke-virtual {p0}, Lcom/android/server/wm/AppWindowToken;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/wm/DisplayContent;->setLayoutNeeded()V

    .line 1593
    iget-object v1, p0, Lcom/android/server/wm/AppWindowToken;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mWindowPlacerLocked:Lcom/android/server/wm/WindowSurfacePlacer;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowSurfacePlacer;->performSurfacePlacement()V
    :try_end_f0
    .catchall {:try_start_65 .. :try_end_f0} :catchall_f5

    .line 1595
    invoke-static {v9, v10}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1596
    nop

    .line 1597
    return v6

    .line 1595
    :catchall_f5
    move-exception v1

    invoke-static {v9, v10}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v1

    .line 1598
    .end local v9  # "origId":J
    :cond_fa
    iget-object v7, v0, Lcom/android/server/wm/AppWindowToken;->mStartingData:Lcom/android/server/wm/StartingData;

    if-eqz v7, :cond_128

    .line 1601
    sget-boolean v1, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_STARTING_WINDOW:Z

    if-eqz v1, :cond_11c

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Moving pending starting from "

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1603
    :cond_11c
    iget-object v1, v0, Lcom/android/server/wm/AppWindowToken;->mStartingData:Lcom/android/server/wm/StartingData;

    iput-object v1, p0, Lcom/android/server/wm/AppWindowToken;->mStartingData:Lcom/android/server/wm/StartingData;

    .line 1604
    iput-object v5, v0, Lcom/android/server/wm/AppWindowToken;->mStartingData:Lcom/android/server/wm/StartingData;

    .line 1605
    iput-boolean v6, v0, Lcom/android/server/wm/AppWindowToken;->startingMoved:Z

    .line 1606
    invoke-virtual {p0}, Lcom/android/server/wm/AppWindowToken;->scheduleAddStartingWindow()V

    .line 1607
    return v6

    .line 1612
    :cond_128
    return v1

    .line 1523
    .end local v2  # "tStartingWindow":Lcom/android/server/wm/WindowState;
    :cond_129
    :goto_129
    return v1
.end method

.method transferStartingWindowFromHiddenAboveTokenIfNeeded()V
    .registers 5

    .line 1506
    invoke-virtual {p0}, Lcom/android/server/wm/AppWindowToken;->getTask()Lcom/android/server/wm/Task;

    move-result-object v0

    .line 1507
    .local v0, "task":Lcom/android/server/wm/Task;
    iget-object v1, v0, Lcom/android/server/wm/Task;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .local v1, "i":I
    :goto_c
    if-ltz v1, :cond_29

    .line 1508
    iget-object v2, v0, Lcom/android/server/wm/Task;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v2, v1}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/AppWindowToken;

    .line 1509
    .local v2, "fromToken":Lcom/android/server/wm/AppWindowToken;
    if-ne v2, p0, :cond_19

    .line 1510
    return-void

    .line 1512
    :cond_19
    iget-boolean v3, v2, Lcom/android/server/wm/AppWindowToken;->hiddenRequested:Z

    if-eqz v3, :cond_26

    iget-object v3, v2, Lcom/android/server/wm/AppWindowToken;->token:Landroid/os/IBinder;

    invoke-virtual {p0, v3}, Lcom/android/server/wm/AppWindowToken;->transferStartingWindow(Landroid/os/IBinder;)Z

    move-result v3

    if-eqz v3, :cond_26

    .line 1513
    return-void

    .line 1507
    .end local v2  # "fromToken":Lcom/android/server/wm/AppWindowToken;
    :cond_26
    add-int/lit8 v1, v1, -0x1

    goto :goto_c

    .line 1516
    .end local v1  # "i":I
    :cond_29
    return-void
.end method

.method updateAllDrawn()V
    .registers 5

    .line 1961
    iget-boolean v0, p0, Lcom/android/server/wm/AppWindowToken;->allDrawn:Z

    if-nez v0, :cond_6a

    .line 1964
    iget v0, p0, Lcom/android/server/wm/AppWindowToken;->mNumInterestingWindows:I

    .line 1969
    .local v0, "numInteresting":I
    if-lez v0, :cond_6a

    invoke-direct {p0}, Lcom/android/server/wm/AppWindowToken;->allDrawnStatesConsidered()Z

    move-result v1

    if-eqz v1, :cond_6a

    iget v1, p0, Lcom/android/server/wm/AppWindowToken;->mNumDrawnWindows:I

    if-lt v1, v0, :cond_6a

    .line 1970
    invoke-virtual {p0}, Lcom/android/server/wm/AppWindowToken;->isRelaunching()Z

    move-result v1

    if-nez v1, :cond_6a

    .line 1971
    sget-boolean v1, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_VISIBILITY:Z

    if-eqz v1, :cond_44

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "allDrawn: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " interesting="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " drawn="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/wm/AppWindowToken;->mNumDrawnWindows:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "WindowManager"

    invoke-static {v2, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1973
    :cond_44
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/wm/AppWindowToken;->allDrawn:Z

    .line 1976
    iget-object v1, p0, Lcom/android/server/wm/AppWindowToken;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    if-eqz v1, :cond_50

    .line 1977
    iget-object v1, p0, Lcom/android/server/wm/AppWindowToken;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v1}, Lcom/android/server/wm/DisplayContent;->setLayoutNeeded()V

    .line 1979
    :cond_50
    iget-object v1, p0, Lcom/android/server/wm/AppWindowToken;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    const/16 v2, 0x20

    iget-object v3, p0, Lcom/android/server/wm/AppWindowToken;->token:Landroid/os/IBinder;

    invoke-virtual {v1, v2, v3}, Lcom/android/server/wm/WindowManagerService$H;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 1983
    iget-object v1, p0, Lcom/android/server/wm/AppWindowToken;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v1}, Lcom/android/server/wm/DisplayContent;->getPinnedStack()Lcom/android/server/wm/TaskStack;

    move-result-object v1

    .line 1984
    .local v1, "pinnedStack":Lcom/android/server/wm/TaskStack;
    if-eqz v1, :cond_6a

    .line 1985
    invoke-virtual {v1}, Lcom/android/server/wm/TaskStack;->onAllWindowsDrawn()V

    .line 1989
    .end local v0  # "numInteresting":I
    .end local v1  # "pinnedStack":Lcom/android/server/wm/TaskStack;
    :cond_6a
    return-void
.end method

.method updateDrawnWindowStates(Lcom/android/server/wm/WindowState;)Z
    .registers 11
    .param p1, "w"  # Lcom/android/server/wm/WindowState;

    .line 2002
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/android/server/wm/WindowState;->setDrawnStateEvaluated(Z)V

    .line 2004
    sget-boolean v1, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_STARTING_WINDOW_VERBOSE:Z

    const-string v2, " freezingScreen="

    const-string v3, "WindowManager"

    if-eqz v1, :cond_42

    iget-object v1, p0, Lcom/android/server/wm/AppWindowToken;->startingWindow:Lcom/android/server/wm/WindowState;

    if-ne p1, v1, :cond_42

    .line 2005
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updateWindows: starting "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " isOnScreen="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->isOnScreen()Z

    move-result v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, " allDrawn="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v4, p0, Lcom/android/server/wm/AppWindowToken;->allDrawn:Z

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v4, p0, Lcom/android/server/wm/AppWindowToken;->mFreezingScreen:Z

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2009
    :cond_42
    iget-boolean v1, p0, Lcom/android/server/wm/AppWindowToken;->allDrawn:Z

    const/4 v4, 0x0

    if-eqz v1, :cond_4c

    iget-boolean v1, p0, Lcom/android/server/wm/AppWindowToken;->mFreezingScreen:Z

    if-nez v1, :cond_4c

    .line 2010
    return v4

    .line 2013
    :cond_4c
    iget-wide v5, p0, Lcom/android/server/wm/AppWindowToken;->mLastTransactionSequence:J

    iget-object v1, p0, Lcom/android/server/wm/AppWindowToken;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget v1, v1, Lcom/android/server/wm/WindowManagerService;->mTransactionSequence:I

    int-to-long v7, v1

    cmp-long v1, v5, v7

    if-eqz v1, :cond_6d

    .line 2014
    iget-object v1, p0, Lcom/android/server/wm/AppWindowToken;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget v1, v1, Lcom/android/server/wm/WindowManagerService;->mTransactionSequence:I

    int-to-long v5, v1

    iput-wide v5, p0, Lcom/android/server/wm/AppWindowToken;->mLastTransactionSequence:J

    .line 2015
    iput v4, p0, Lcom/android/server/wm/AppWindowToken;->mNumDrawnWindows:I

    .line 2016
    iput-boolean v4, p0, Lcom/android/server/wm/AppWindowToken;->startingDisplayed:Z

    .line 2019
    invoke-virtual {p0, v4}, Lcom/android/server/wm/AppWindowToken;->findMainWindow(Z)Lcom/android/server/wm/WindowState;

    move-result-object v1

    if-eqz v1, :cond_6a

    move v1, v0

    goto :goto_6b

    :cond_6a
    move v1, v4

    :goto_6b
    iput v1, p0, Lcom/android/server/wm/AppWindowToken;->mNumInterestingWindows:I

    .line 2022
    :cond_6d
    iget-object v1, p1, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    .line 2024
    .local v1, "winAnimator":Lcom/android/server/wm/WindowStateAnimator;
    const/4 v5, 0x0

    .line 2026
    .local v5, "isInterestingAndDrawn":Z
    iget-boolean v6, p0, Lcom/android/server/wm/AppWindowToken;->allDrawn:Z

    if-nez v6, :cond_179

    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->mightAffectAllDrawn()Z

    move-result v6

    if-eqz v6, :cond_179

    .line 2027
    sget-boolean v6, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_VISIBILITY:Z

    if-nez v6, :cond_82

    sget-boolean v6, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_ORIENTATION:Z

    if-eqz v6, :cond_104

    .line 2028
    :cond_82
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Eval win "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v7, ": isDrawn="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->isDrawnLw()Z

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v7, ", isAnimationSet="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2029
    invoke-virtual {p0}, Lcom/android/server/wm/AppWindowToken;->isSelfAnimating()Z

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 2028
    invoke-static {v3, v6}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2030
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->isDrawnLw()Z

    move-result v6

    if-nez v6, :cond_104

    .line 2031
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Not displayed: s="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v1, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceController:Lcom/android/server/wm/WindowSurfaceController;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v7, " pv="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2032
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->isVisibleByPolicy()Z

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v7, " mDrawState="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2033
    invoke-virtual {v1}, Lcom/android/server/wm/WindowStateAnimator;->drawStateToString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " ph="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2034
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->isParentWindowHidden()Z

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v7, " th="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v7, p0, Lcom/android/server/wm/AppWindowToken;->hiddenRequested:Z

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v7, " a="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2035
    invoke-virtual {p0}, Lcom/android/server/wm/AppWindowToken;->isSelfAnimating()Z

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 2031
    invoke-static {v3, v6}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2039
    :cond_104
    iget-object v6, p0, Lcom/android/server/wm/AppWindowToken;->startingWindow:Lcom/android/server/wm/WindowState;

    if-eq p1, v6, :cond_166

    .line 2040
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->isInteresting()Z

    move-result v6

    if-eqz v6, :cond_179

    .line 2042
    invoke-virtual {p0, v4}, Lcom/android/server/wm/AppWindowToken;->findMainWindow(Z)Lcom/android/server/wm/WindowState;

    move-result-object v4

    if-eq v4, p1, :cond_119

    .line 2043
    iget v4, p0, Lcom/android/server/wm/AppWindowToken;->mNumInterestingWindows:I

    add-int/2addr v4, v0

    iput v4, p0, Lcom/android/server/wm/AppWindowToken;->mNumInterestingWindows:I

    .line 2045
    :cond_119
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->isDrawnLw()Z

    move-result v4

    if-eqz v4, :cond_179

    .line 2046
    iget v4, p0, Lcom/android/server/wm/AppWindowToken;->mNumDrawnWindows:I

    add-int/2addr v4, v0

    iput v4, p0, Lcom/android/server/wm/AppWindowToken;->mNumDrawnWindows:I

    .line 2048
    sget-boolean v0, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_VISIBILITY:Z

    if-nez v0, :cond_12c

    sget-boolean v0, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_ORIENTATION:Z

    if-eqz v0, :cond_164

    :cond_12c
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "tokenMayBeDrawn: "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " w="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " numInteresting="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/android/server/wm/AppWindowToken;->mNumInterestingWindows:I

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/server/wm/AppWindowToken;->mFreezingScreen:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " mAppFreezing="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p1, Lcom/android/server/wm/WindowState;->mAppFreezing:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2053
    :cond_164
    const/4 v5, 0x1

    goto :goto_179

    .line 2056
    :cond_166
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->isDrawnLw()Z

    move-result v2

    if-eqz v2, :cond_179

    .line 2057
    iget-object v2, p0, Lcom/android/server/wm/AppWindowToken;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    if-eqz v2, :cond_177

    .line 2058
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Lcom/android/server/wm/ActivityRecord;->onStartingWindowDrawn(J)V

    .line 2060
    :cond_177
    iput-boolean v0, p0, Lcom/android/server/wm/AppWindowToken;->startingDisplayed:Z

    .line 2064
    :cond_179
    :goto_179
    return v5
.end method

.method updateLetterboxSurface(Lcom/android/server/wm/WindowState;)V
    .registers 5
    .param p1, "winHint"  # Lcom/android/server/wm/WindowState;

    .line 2097
    invoke-virtual {p0}, Lcom/android/server/wm/AppWindowToken;->findMainWindow()Lcom/android/server/wm/WindowState;

    move-result-object v0

    .line 2098
    .local v0, "w":Lcom/android/server/wm/WindowState;
    if-eq v0, p1, :cond_b

    if-eqz p1, :cond_b

    if-eqz v0, :cond_b

    .line 2099
    return-void

    .line 2101
    :cond_b
    invoke-virtual {p0, p1}, Lcom/android/server/wm/AppWindowToken;->layoutLetterbox(Lcom/android/server/wm/WindowState;)V

    .line 2102
    iget-object v1, p0, Lcom/android/server/wm/AppWindowToken;->mLetterbox:Lcom/android/server/wm/Letterbox;

    if-eqz v1, :cond_21

    invoke-virtual {v1}, Lcom/android/server/wm/Letterbox;->needsApplySurfaceChanges()Z

    move-result v1

    if-eqz v1, :cond_21

    .line 2103
    iget-object v1, p0, Lcom/android/server/wm/AppWindowToken;->mLetterbox:Lcom/android/server/wm/Letterbox;

    invoke-virtual {p0}, Lcom/android/server/wm/AppWindowToken;->getPendingTransaction()Landroid/view/SurfaceControl$Transaction;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/server/wm/Letterbox;->applySurfaceChanges(Landroid/view/SurfaceControl$Transaction;)V

    .line 2105
    :cond_21
    return-void
.end method

.method updateReportedVisibilityLocked()V
    .registers 12

    .line 399
    iget-object v0, p0, Lcom/android/server/wm/AppWindowToken;->appToken:Landroid/view/IApplicationToken;

    if-nez v0, :cond_5

    .line 400
    return-void

    .line 403
    :cond_5
    sget-boolean v0, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_VISIBILITY:Z

    const-string v1, "WindowManager"

    if-eqz v0, :cond_1f

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Update reported visibility: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 404
    :cond_1f
    iget-object v0, p0, Lcom/android/server/wm/AppWindowToken;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowList;->size()I

    move-result v0

    .line 406
    .local v0, "count":I
    iget-object v2, p0, Lcom/android/server/wm/AppWindowToken;->mReportedVisibilityResults:Lcom/android/server/wm/WindowState$UpdateReportedVisibilityResults;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowState$UpdateReportedVisibilityResults;->reset()V

    .line 408
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_2b
    if-ge v2, v0, :cond_3d

    .line 409
    iget-object v3, p0, Lcom/android/server/wm/AppWindowToken;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v3, v2}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/WindowState;

    .line 410
    .local v3, "win":Lcom/android/server/wm/WindowState;
    iget-object v4, p0, Lcom/android/server/wm/AppWindowToken;->mReportedVisibilityResults:Lcom/android/server/wm/WindowState$UpdateReportedVisibilityResults;

    invoke-virtual {v3, v4}, Lcom/android/server/wm/WindowState;->updateReportedVisibility(Lcom/android/server/wm/WindowState$UpdateReportedVisibilityResults;)V

    .line 408
    .end local v3  # "win":Lcom/android/server/wm/WindowState;
    add-int/lit8 v2, v2, 0x1

    goto :goto_2b

    .line 413
    .end local v2  # "i":I
    :cond_3d
    iget-object v2, p0, Lcom/android/server/wm/AppWindowToken;->mReportedVisibilityResults:Lcom/android/server/wm/WindowState$UpdateReportedVisibilityResults;

    iget v2, v2, Lcom/android/server/wm/WindowState$UpdateReportedVisibilityResults;->numInteresting:I

    .line 414
    .local v2, "numInteresting":I
    iget-object v3, p0, Lcom/android/server/wm/AppWindowToken;->mReportedVisibilityResults:Lcom/android/server/wm/WindowState$UpdateReportedVisibilityResults;

    iget v3, v3, Lcom/android/server/wm/WindowState$UpdateReportedVisibilityResults;->numVisible:I

    .line 415
    .local v3, "numVisible":I
    iget-object v4, p0, Lcom/android/server/wm/AppWindowToken;->mReportedVisibilityResults:Lcom/android/server/wm/WindowState$UpdateReportedVisibilityResults;

    iget v4, v4, Lcom/android/server/wm/WindowState$UpdateReportedVisibilityResults;->numDrawn:I

    .line 416
    .local v4, "numDrawn":I
    iget-object v5, p0, Lcom/android/server/wm/AppWindowToken;->mReportedVisibilityResults:Lcom/android/server/wm/WindowState$UpdateReportedVisibilityResults;

    iget-boolean v5, v5, Lcom/android/server/wm/WindowState$UpdateReportedVisibilityResults;->nowGone:Z

    .line 418
    .local v5, "nowGone":Z
    const/4 v6, 0x0

    const/4 v7, 0x1

    if-lez v2, :cond_55

    if-lt v4, v2, :cond_55

    move v8, v7

    goto :goto_56

    :cond_55
    move v8, v6

    .line 419
    .local v8, "nowDrawn":Z
    :goto_56
    if-lez v2, :cond_61

    if-lt v3, v2, :cond_61

    invoke-virtual {p0}, Lcom/android/server/wm/AppWindowToken;->isHidden()Z

    move-result v9

    if-nez v9, :cond_61

    move v6, v7

    .line 420
    .local v6, "nowVisible":Z
    :cond_61
    if-nez v5, :cond_6b

    .line 422
    if-nez v8, :cond_67

    .line 423
    iget-boolean v8, p0, Lcom/android/server/wm/AppWindowToken;->reportedDrawn:Z

    .line 425
    :cond_67
    if-nez v6, :cond_6b

    .line 426
    iget-boolean v6, p0, Lcom/android/server/wm/AppWindowToken;->reportedVisible:Z

    .line 429
    :cond_6b
    sget-boolean v7, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_VISIBILITY:Z

    if-eqz v7, :cond_93

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "VIS "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v9, ": interesting="

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, " visible="

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v1, v7}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 431
    :cond_93
    iget-boolean v7, p0, Lcom/android/server/wm/AppWindowToken;->reportedDrawn:Z

    if-eq v8, v7, :cond_a4

    .line 432
    iget-object v7, p0, Lcom/android/server/wm/AppWindowToken;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    if-eqz v7, :cond_a2

    .line 433
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v9

    invoke-virtual {v7, v8, v9, v10}, Lcom/android/server/wm/ActivityRecord;->onWindowsDrawn(ZJ)V

    .line 435
    :cond_a2
    iput-boolean v8, p0, Lcom/android/server/wm/AppWindowToken;->reportedDrawn:Z

    .line 437
    :cond_a4
    iget-boolean v7, p0, Lcom/android/server/wm/AppWindowToken;->reportedVisible:Z

    if-eq v6, v7, :cond_d7

    .line 438
    sget-boolean v7, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_VISIBILITY:Z

    if-eqz v7, :cond_c8

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Visibility changed in "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v9, ": vis="

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v1, v7}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 440
    :cond_c8
    iput-boolean v6, p0, Lcom/android/server/wm/AppWindowToken;->reportedVisible:Z

    .line 441
    iget-object v1, p0, Lcom/android/server/wm/AppWindowToken;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    if-eqz v1, :cond_d7

    .line 442
    if-eqz v6, :cond_d4

    .line 443
    invoke-direct {p0}, Lcom/android/server/wm/AppWindowToken;->onWindowsVisible()V

    goto :goto_d7

    .line 445
    :cond_d4
    invoke-direct {p0}, Lcom/android/server/wm/AppWindowToken;->onWindowsGone()V

    .line 449
    :cond_d7
    :goto_d7
    return-void
.end method

.method windowsAreFocusable()Z
    .registers 5

    .line 833
    iget v0, p0, Lcom/android/server/wm/AppWindowToken;->mTargetSdk:I

    const/4 v1, 0x0

    const/16 v2, 0x1d

    if-ge v0, v2, :cond_2e

    .line 834
    iget-object v0, p0, Lcom/android/server/wm/AppWindowToken;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    if-eqz v0, :cond_18

    .line 835
    iget-object v0, v0, Lcom/android/server/wm/ActivityRecord;->app:Lcom/android/server/wm/WindowProcessController;

    if-eqz v0, :cond_18

    iget-object v0, p0, Lcom/android/server/wm/AppWindowToken;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    iget-object v0, v0, Lcom/android/server/wm/ActivityRecord;->app:Lcom/android/server/wm/WindowProcessController;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowProcessController;->getPid()I

    move-result v0

    goto :goto_19

    :cond_18
    move v0, v1

    .line 836
    .local v0, "pid":I
    :goto_19
    iget-object v2, p0, Lcom/android/server/wm/AppWindowToken;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    iget-object v2, v2, Lcom/android/server/wm/RootWindowContainer;->mTopFocusedAppByProcess:Ljava/util/HashMap;

    .line 837
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/AppWindowToken;

    .line 838
    .local v2, "topFocusedAppOfMyProcess":Lcom/android/server/wm/AppWindowToken;
    if-eqz v2, :cond_2e

    if-eq v2, p0, :cond_2e

    .line 841
    return v1

    .line 844
    .end local v0  # "pid":I
    .end local v2  # "topFocusedAppOfMyProcess":Lcom/android/server/wm/AppWindowToken;
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
    .registers 7
    .param p1, "proto"  # Landroid/util/proto/ProtoOutputStream;
    .param p2, "fieldId"  # J

    .line 3296
    iget-object v0, p0, Lcom/android/server/wm/AppWindowToken;->appToken:Landroid/view/IApplicationToken;

    if-nez v0, :cond_5

    .line 3297
    return-void

    .line 3300
    :cond_5
    :try_start_5
    invoke-interface {v0}, Landroid/view/IApplicationToken;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, p2, p3, v0}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_c} :catch_d

    .line 3304
    goto :goto_17

    .line 3301
    :catch_d
    move-exception v0

    .line 3303
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "WindowManager"

    invoke-static {v2, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3305
    .end local v0  # "e":Landroid/os/RemoteException;
    :goto_17
    return-void
.end method

.method public writeToProto(Landroid/util/proto/ProtoOutputStream;JI)V
    .registers 11
    .param p1, "proto"  # Landroid/util/proto/ProtoOutputStream;
    .param p2, "fieldId"  # J
    .param p4, "logLevel"  # I

    .line 3257
    const/4 v0, 0x2

    if-ne p4, v0, :cond_a

    invoke-virtual {p0}, Lcom/android/server/wm/AppWindowToken;->isVisible()Z

    move-result v0

    if-nez v0, :cond_a

    .line 3258
    return-void

    .line 3261
    :cond_a
    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v0

    .line 3262
    .local v0, "token":J
    const-wide v2, 0x10900000001L

    invoke-virtual {p0, p1, v2, v3}, Lcom/android/server/wm/AppWindowToken;->writeNameToProto(Landroid/util/proto/ProtoOutputStream;J)V

    .line 3263
    const-wide v2, 0x10b00000002L

    invoke-super {p0, p1, v2, v3, p4}, Lcom/android/server/wm/WindowToken;->writeToProto(Landroid/util/proto/ProtoOutputStream;JI)V

    .line 3264
    const-wide v2, 0x10800000003L

    iget-boolean v4, p0, Lcom/android/server/wm/AppWindowToken;->mLastSurfaceShowing:Z

    invoke-virtual {p1, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 3265
    const-wide v2, 0x10800000004L

    invoke-virtual {p0}, Lcom/android/server/wm/AppWindowToken;->isWaitingForTransitionStart()Z

    move-result v4

    invoke-virtual {p1, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 3266
    const-wide v2, 0x10800000005L

    invoke-direct {p0}, Lcom/android/server/wm/AppWindowToken;->isReallyAnimating()Z

    move-result v4

    invoke-virtual {p1, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 3267
    iget-object v2, p0, Lcom/android/server/wm/AppWindowToken;->mThumbnail:Lcom/android/server/wm/AppWindowThumbnail;

    if-eqz v2, :cond_4c

    .line 3268
    const-wide v3, 0x10b00000006L

    invoke-virtual {v2, p1, v3, v4}, Lcom/android/server/wm/AppWindowThumbnail;->writeToProto(Landroid/util/proto/ProtoOutputStream;J)V

    .line 3270
    :cond_4c
    const-wide v2, 0x10800000007L

    iget-boolean v4, p0, Lcom/android/server/wm/AppWindowToken;->mFillsParent:Z

    invoke-virtual {p1, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 3271
    const-wide v2, 0x10800000008L

    iget-boolean v4, p0, Lcom/android/server/wm/AppWindowToken;->mAppStopped:Z

    invoke-virtual {p1, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 3272
    const-wide v2, 0x10800000009L

    iget-boolean v4, p0, Lcom/android/server/wm/AppWindowToken;->hiddenRequested:Z

    invoke-virtual {p1, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 3273
    const-wide v2, 0x1080000000aL

    iget-boolean v4, p0, Lcom/android/server/wm/AppWindowToken;->mClientHidden:Z

    invoke-virtual {p1, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 3274
    const-wide v2, 0x1080000000bL

    iget-boolean v4, p0, Lcom/android/server/wm/AppWindowToken;->mDeferHidingClient:Z

    invoke-virtual {p1, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 3275
    const-wide v2, 0x1080000000cL

    iget-boolean v4, p0, Lcom/android/server/wm/AppWindowToken;->reportedDrawn:Z

    invoke-virtual {p1, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 3276
    const-wide v2, 0x1080000000dL

    iget-boolean v4, p0, Lcom/android/server/wm/AppWindowToken;->reportedVisible:Z

    invoke-virtual {p1, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 3277
    const-wide v2, 0x1050000000eL

    iget v4, p0, Lcom/android/server/wm/AppWindowToken;->mNumInterestingWindows:I

    invoke-virtual {p1, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 3278
    const-wide v2, 0x1050000000fL

    iget v4, p0, Lcom/android/server/wm/AppWindowToken;->mNumDrawnWindows:I

    invoke-virtual {p1, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 3279
    const-wide v2, 0x10800000010L

    iget-boolean v4, p0, Lcom/android/server/wm/AppWindowToken;->allDrawn:Z

    invoke-virtual {p1, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 3280
    const-wide v2, 0x10800000011L

    iget-boolean v4, p0, Lcom/android/server/wm/AppWindowToken;->mLastAllDrawn:Z

    invoke-virtual {p1, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 3281
    const-wide v2, 0x10800000012L

    iget-boolean v4, p0, Lcom/android/server/wm/AppWindowToken;->removed:Z

    invoke-virtual {p1, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 3282
    iget-object v2, p0, Lcom/android/server/wm/AppWindowToken;->startingWindow:Lcom/android/server/wm/WindowState;

    if-eqz v2, :cond_d0

    .line 3283
    const-wide v3, 0x10b00000013L

    invoke-virtual {v2, p1, v3, v4}, Lcom/android/server/wm/WindowState;->writeIdentifierToProto(Landroid/util/proto/ProtoOutputStream;J)V

    .line 3285
    :cond_d0
    const-wide v2, 0x10800000014L

    iget-boolean v4, p0, Lcom/android/server/wm/AppWindowToken;->startingDisplayed:Z

    invoke-virtual {p1, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 3286
    const-wide v2, 0x10800000015L

    iget-boolean v4, p0, Lcom/android/server/wm/AppWindowToken;->startingMoved:Z

    invoke-virtual {p1, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 3287
    const-wide v2, 0x10800000016L

    iget-boolean v4, p0, Lcom/android/server/wm/AppWindowToken;->mHiddenSetFromTransferredStartingWindow:Z

    invoke-virtual {p1, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 3289
    iget-object v2, p0, Lcom/android/server/wm/AppWindowToken;->mFrozenBounds:Ljava/util/ArrayDeque;

    invoke-virtual {v2}, Ljava/util/ArrayDeque;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_f4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_109

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/Rect;

    .line 3290
    .local v3, "bounds":Landroid/graphics/Rect;
    const-wide v4, 0x20b00000017L

    invoke-virtual {v3, p1, v4, v5}, Landroid/graphics/Rect;->writeToProto(Landroid/util/proto/ProtoOutputStream;J)V

    .line 3291
    .end local v3  # "bounds":Landroid/graphics/Rect;
    goto :goto_f4

    .line 3292
    :cond_109
    invoke-virtual {p1, v0, v1}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 3293
    return-void
.end method
