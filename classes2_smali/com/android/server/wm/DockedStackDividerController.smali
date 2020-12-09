.class public Lcom/android/server/wm/DockedStackDividerController;
.super Ljava/lang/Object;
.source "DockedStackDividerController.java"


# static fields
.field private static final CLIP_REVEAL_MEET_EARLIEST:F = 0.6f

.field private static final CLIP_REVEAL_MEET_FRACTION_MAX:F = 0.8f

.field private static final CLIP_REVEAL_MEET_FRACTION_MIN:F = 0.4f

.field private static final CLIP_REVEAL_MEET_LAST:F = 1.0f

.field private static final DIVIDER_WIDTH_INACTIVE_DP:I = 0x4

.field private static final IME_ADJUST_ANIM_DURATION:J = 0x118L

.field private static final IME_ADJUST_DRAWN_TIMEOUT:J = 0xc8L

.field private static final IME_ADJUST_ENTRY_INTERPOLATOR:Landroid/view/animation/Interpolator;

.field private static final TAG:Ljava/lang/String; = "WindowManager"


# instance fields
.field private mAdjustedForDivider:Z

.field private mAdjustedForIme:Z

.field private mAnimatingForIme:Z

.field private mAnimatingForMinimizedDockedStack:Z

.field private mAnimationDuration:J

.field private mAnimationStart:F

.field private mAnimationStartDelayed:Z

.field private mAnimationStartTime:J

.field private mAnimationStarted:Z

.field private mAnimationTarget:F

.field private mDelayedImeWin:Lcom/android/server/wm/WindowState;

.field private mDimmedStack:Lcom/android/server/wm/TaskStack;

.field private final mDisplayContent:Lcom/android/server/wm/DisplayContent;

.field private mDividerAnimationStart:F

.field private mDividerAnimationTarget:F

.field private mDividerInsets:I

.field private mDividerWindowWidth:I

.field private mDividerWindowWidthInactive:I

.field private final mDockedStackListeners:Landroid/os/RemoteCallbackList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/RemoteCallbackList<",
            "Landroid/view/IDockedStackListener;",
            ">;"
        }
    .end annotation
.end field

.field private mImeHeight:I

.field private mImeHideRequested:Z

.field mLastAnimationProgress:F

.field private mLastDimLayerAlpha:F

.field private final mLastDimLayerRect:Landroid/graphics/Rect;

.field mLastDividerProgress:F

.field private final mLastRect:Landroid/graphics/Rect;

.field private mLastVisibility:Z

.field private mMaximizeMeetFraction:F

.field private mMinimizedDock:Z

.field private final mMinimizedDockInterpolator:Landroid/view/animation/Interpolator;

.field private mOriginalDockedSide:I

.field private mResizing:Z

.field private final mService:Lcom/android/server/wm/WindowManagerService;

.field private final mSnapAlgorithmForRotation:[Lcom/android/internal/policy/DividerSnapAlgorithm;

.field private mTaskHeightInMinimizedMode:I

.field private final mTmpRect:Landroid/graphics/Rect;

.field private final mTmpRect2:Landroid/graphics/Rect;

.field private final mTmpRect3:Landroid/graphics/Rect;

.field private final mTouchRegion:Landroid/graphics/Rect;

.field private mWindow:Lcom/android/server/wm/WindowState;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    .line 96
    new-instance v0, Landroid/view/animation/PathInterpolator;

    const v1, 0x3e4ccccd  # 0.2f

    const/4 v2, 0x0

    const v3, 0x3dcccccd  # 0.1f

    const/high16 v4, 0x3f800000  # 1.0f

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    sput-object v0, Lcom/android/server/wm/DockedStackDividerController;->IME_ADJUST_ENTRY_INTERPOLATOR:Landroid/view/animation/Interpolator;

    return-void
.end method

.method constructor <init>(Lcom/android/server/wm/WindowManagerService;Lcom/android/server/wm/DisplayContent;)V
    .registers 4

    .line 148
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 113
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/DockedStackDividerController;->mTmpRect:Landroid/graphics/Rect;

    .line 114
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/DockedStackDividerController;->mTmpRect2:Landroid/graphics/Rect;

    .line 115
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/DockedStackDividerController;->mTmpRect3:Landroid/graphics/Rect;

    .line 116
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/DockedStackDividerController;->mLastRect:Landroid/graphics/Rect;

    .line 117
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/wm/DockedStackDividerController;->mLastVisibility:Z

    .line 118
    new-instance v0, Landroid/os/RemoteCallbackList;

    invoke-direct {v0}, Landroid/os/RemoteCallbackList;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/DockedStackDividerController;->mDockedStackListeners:Landroid/os/RemoteCallbackList;

    .line 122
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/wm/DockedStackDividerController;->mOriginalDockedSide:I

    .line 132
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/DockedStackDividerController;->mTouchRegion:Landroid/graphics/Rect;

    .line 142
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/android/internal/policy/DividerSnapAlgorithm;

    iput-object v0, p0, Lcom/android/server/wm/DockedStackDividerController;->mSnapAlgorithmForRotation:[Lcom/android/internal/policy/DividerSnapAlgorithm;

    .line 144
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/DockedStackDividerController;->mLastDimLayerRect:Landroid/graphics/Rect;

    .line 149
    iput-object p1, p0, Lcom/android/server/wm/DockedStackDividerController;->mService:Lcom/android/server/wm/WindowManagerService;

    .line 150
    iput-object p2, p0, Lcom/android/server/wm/DockedStackDividerController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 151
    iget-object p1, p1, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    .line 152
    const p2, 0x10c000d

    invoke-static {p1, p2}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/wm/DockedStackDividerController;->mMinimizedDockInterpolator:Landroid/view/animation/Interpolator;

    .line 154
    invoke-direct {p0}, Lcom/android/server/wm/DockedStackDividerController;->loadDimens()V

    .line 155
    return-void
.end method

.method private adjustMaximizeAmount(Lcom/android/server/wm/TaskStack;FF)F
    .registers 7

    .line 983
    iget v0, p0, Lcom/android/server/wm/DockedStackDividerController;->mMaximizeMeetFraction:F

    const/high16 v1, 0x3f800000  # 1.0f

    cmpl-float v0, v0, v1

    if-nez v0, :cond_9

    .line 984
    return p3

    .line 986
    :cond_9
    invoke-virtual {p1}, Lcom/android/server/wm/TaskStack;->getMinimizeDistance()I

    move-result p1

    .line 987
    iget-object v0, p0, Lcom/android/server/wm/DockedStackDividerController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v0, v0, Lcom/android/server/wm/DisplayContent;->mAppTransition:Lcom/android/server/wm/AppTransition;

    invoke-virtual {v0}, Lcom/android/server/wm/AppTransition;->getLastClipRevealMaxTranslation()I

    move-result v0

    int-to-float v0, v0

    int-to-float p1, p1

    div-float/2addr v0, p1

    .line 989
    iget p1, p0, Lcom/android/server/wm/DockedStackDividerController;->mAnimationTarget:F

    mul-float/2addr p1, p2

    sub-float v2, v1, p2

    mul-float/2addr v2, v0

    add-float/2addr p1, v2

    .line 990
    iget v0, p0, Lcom/android/server/wm/DockedStackDividerController;->mMaximizeMeetFraction:F

    div-float/2addr p2, v0

    invoke-static {p2, v1}, Ljava/lang/Math;->min(FF)F

    move-result p2

    .line 991
    mul-float/2addr p1, p2

    sub-float/2addr v1, p2

    mul-float/2addr p3, v1

    add-float/2addr p1, p3

    return p1
.end method

.method private animateForIme(J)Z
    .registers 7

    .line 908
    iget-boolean v0, p0, Lcom/android/server/wm/DockedStackDividerController;->mAnimationStarted:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_9

    iget-boolean v0, p0, Lcom/android/server/wm/DockedStackDividerController;->mAnimationStartDelayed:Z

    if-eqz v0, :cond_19

    .line 909
    :cond_9
    iput-boolean v1, p0, Lcom/android/server/wm/DockedStackDividerController;->mAnimationStarted:Z

    .line 910
    iput-wide p1, p0, Lcom/android/server/wm/DockedStackDividerController;->mAnimationStartTime:J

    .line 911
    const/high16 v0, 0x438c0000  # 280.0f

    iget-object v2, p0, Lcom/android/server/wm/DockedStackDividerController;->mService:Lcom/android/server/wm/WindowManagerService;

    .line 912
    invoke-virtual {v2}, Lcom/android/server/wm/WindowManagerService;->getWindowAnimationScaleLocked()F

    move-result v2

    mul-float/2addr v2, v0

    float-to-long v2, v2

    iput-wide v2, p0, Lcom/android/server/wm/DockedStackDividerController;->mAnimationDuration:J

    .line 914
    :cond_19
    iget-wide v2, p0, Lcom/android/server/wm/DockedStackDividerController;->mAnimationStartTime:J

    sub-long/2addr p1, v2

    long-to-float p1, p1

    iget-wide v2, p0, Lcom/android/server/wm/DockedStackDividerController;->mAnimationDuration:J

    long-to-float p2, v2

    div-float/2addr p1, p2

    const/high16 p2, 0x3f800000  # 1.0f

    invoke-static {p2, p1}, Ljava/lang/Math;->min(FF)F

    move-result p1

    .line 915
    iget v0, p0, Lcom/android/server/wm/DockedStackDividerController;->mAnimationTarget:F

    cmpl-float v0, v0, p2

    if-nez v0, :cond_30

    sget-object v0, Lcom/android/server/wm/DockedStackDividerController;->IME_ADJUST_ENTRY_INTERPOLATOR:Landroid/view/animation/Interpolator;

    goto :goto_32

    :cond_30
    sget-object v0, Lcom/android/server/wm/AppTransition;->TOUCH_RESPONSE_INTERPOLATOR:Landroid/view/animation/Interpolator;

    .line 916
    :goto_32
    invoke-interface {v0, p1}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result p1

    .line 917
    iget-object v0, p0, Lcom/android/server/wm/DockedStackDividerController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget v2, p0, Lcom/android/server/wm/DockedStackDividerController;->mAnimationTarget:F

    iget v3, p0, Lcom/android/server/wm/DockedStackDividerController;->mDividerAnimationTarget:F

    .line 918
    invoke-virtual {v0, p1, v2, v3}, Lcom/android/server/wm/DisplayContent;->animateForIme(FFF)Z

    move-result v0

    .line 919
    if-eqz v0, :cond_49

    .line 920
    iget-object v0, p0, Lcom/android/server/wm/DockedStackDividerController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mWindowPlacerLocked:Lcom/android/server/wm/WindowSurfacePlacer;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowSurfacePlacer;->performSurfacePlacement()V

    .line 922
    :cond_49
    cmpl-float p1, p1, p2

    if-ltz p1, :cond_59

    .line 923
    iget p1, p0, Lcom/android/server/wm/DockedStackDividerController;->mAnimationTarget:F

    iput p1, p0, Lcom/android/server/wm/DockedStackDividerController;->mLastAnimationProgress:F

    .line 924
    iget p1, p0, Lcom/android/server/wm/DockedStackDividerController;->mDividerAnimationTarget:F

    iput p1, p0, Lcom/android/server/wm/DockedStackDividerController;->mLastDividerProgress:F

    .line 925
    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/server/wm/DockedStackDividerController;->mAnimatingForIme:Z

    .line 926
    return p1

    .line 928
    :cond_59
    return v1
.end method

.method private animateForMinimizedDockedStack(J)Z
    .registers 8

    .line 933
    iget-object v0, p0, Lcom/android/server/wm/DockedStackDividerController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->getSplitScreenPrimaryStackIgnoringVisibility()Lcom/android/server/wm/TaskStack;

    move-result-object v0

    .line 934
    iget-boolean v1, p0, Lcom/android/server/wm/DockedStackDividerController;->mAnimationStarted:Z

    const/4 v2, 0x1

    if-nez v1, :cond_18

    .line 935
    iput-boolean v2, p0, Lcom/android/server/wm/DockedStackDividerController;->mAnimationStarted:Z

    .line 936
    iput-wide p1, p0, Lcom/android/server/wm/DockedStackDividerController;->mAnimationStartTime:J

    .line 937
    iget-boolean v1, p0, Lcom/android/server/wm/DockedStackDividerController;->mMinimizedDock:Z

    .line 938
    invoke-virtual {p0}, Lcom/android/server/wm/DockedStackDividerController;->isHomeStackResizable()Z

    move-result v3

    .line 937
    invoke-direct {p0, v1, v2, v3}, Lcom/android/server/wm/DockedStackDividerController;->notifyDockedStackMinimizedChanged(ZZZ)V

    .line 940
    :cond_18
    iget-wide v3, p0, Lcom/android/server/wm/DockedStackDividerController;->mAnimationStartTime:J

    sub-long/2addr p1, v3

    long-to-float p1, p1

    iget-wide v3, p0, Lcom/android/server/wm/DockedStackDividerController;->mAnimationDuration:J

    long-to-float p2, v3

    div-float/2addr p1, p2

    const/high16 p2, 0x3f800000  # 1.0f

    invoke-static {p2, p1}, Ljava/lang/Math;->min(FF)F

    move-result p1

    .line 941
    invoke-direct {p0}, Lcom/android/server/wm/DockedStackDividerController;->isAnimationMaximizing()Z

    move-result v1

    if-eqz v1, :cond_2f

    sget-object v1, Lcom/android/server/wm/AppTransition;->TOUCH_RESPONSE_INTERPOLATOR:Landroid/view/animation/Interpolator;

    goto :goto_31

    :cond_2f
    iget-object v1, p0, Lcom/android/server/wm/DockedStackDividerController;->mMinimizedDockInterpolator:Landroid/view/animation/Interpolator;

    .line 942
    :goto_31
    invoke-interface {v1, p1}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result p1

    .line 943
    if-eqz v0, :cond_48

    .line 944
    invoke-direct {p0, v0, p1}, Lcom/android/server/wm/DockedStackDividerController;->getMinimizeAmount(Lcom/android/server/wm/TaskStack;F)F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/server/wm/TaskStack;->setAdjustedForMinimizedDock(F)Z

    move-result v0

    if-eqz v0, :cond_48

    .line 945
    iget-object v0, p0, Lcom/android/server/wm/DockedStackDividerController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mWindowPlacerLocked:Lcom/android/server/wm/WindowSurfacePlacer;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowSurfacePlacer;->performSurfacePlacement()V

    .line 948
    :cond_48
    cmpl-float p1, p1, p2

    if-ltz p1, :cond_50

    .line 949
    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/server/wm/DockedStackDividerController;->mAnimatingForMinimizedDockedStack:Z

    .line 950
    return p1

    .line 952
    :cond_50
    return v2
.end method

.method private clearImeAdjustAnimation()Z
    .registers 3

    .line 795
    iget-object v0, p0, Lcom/android/server/wm/DockedStackDividerController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->clearImeAdjustAnimation()Z

    move-result v0

    .line 796
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/wm/DockedStackDividerController;->mAnimatingForIme:Z

    .line 797
    return v0
.end method

.method private containsAppInDockedStack(Landroid/util/ArraySet;)Z
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArraySet<",
            "Lcom/android/server/wm/AppWindowToken;",
            ">;)Z"
        }
    .end annotation

    .line 698
    invoke-virtual {p1}, Landroid/util/ArraySet;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    :goto_6
    if-ltz v0, :cond_1e

    .line 699
    invoke-virtual {p1, v0}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/AppWindowToken;

    .line 700
    invoke-virtual {v2}, Lcom/android/server/wm/AppWindowToken;->getTask()Lcom/android/server/wm/Task;

    move-result-object v3

    if-eqz v3, :cond_1b

    invoke-virtual {v2}, Lcom/android/server/wm/AppWindowToken;->inSplitScreenPrimaryWindowingMode()Z

    move-result v2

    if-eqz v2, :cond_1b

    .line 701
    return v1

    .line 698
    :cond_1b
    add-int/lit8 v0, v0, -0x1

    goto :goto_6

    .line 704
    :cond_1e
    const/4 p1, 0x0

    return p1
.end method

.method private getClipRevealMeetFraction(Lcom/android/server/wm/TaskStack;)F
    .registers 5

    .line 999
    invoke-direct {p0}, Lcom/android/server/wm/DockedStackDividerController;->isAnimationMaximizing()Z

    move-result v0

    const/high16 v1, 0x3f800000  # 1.0f

    if-eqz v0, :cond_40

    if-eqz p1, :cond_40

    iget-object v0, p0, Lcom/android/server/wm/DockedStackDividerController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v0, v0, Lcom/android/server/wm/DisplayContent;->mAppTransition:Lcom/android/server/wm/AppTransition;

    .line 1000
    invoke-virtual {v0}, Lcom/android/server/wm/AppTransition;->hadClipRevealAnimation()Z

    move-result v0

    if-nez v0, :cond_15

    goto :goto_40

    .line 1003
    :cond_15
    invoke-virtual {p1}, Lcom/android/server/wm/TaskStack;->getMinimizeDistance()I

    move-result p1

    .line 1004
    iget-object v0, p0, Lcom/android/server/wm/DockedStackDividerController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v0, v0, Lcom/android/server/wm/DisplayContent;->mAppTransition:Lcom/android/server/wm/AppTransition;

    .line 1005
    invoke-virtual {v0}, Lcom/android/server/wm/AppTransition;->getLastClipRevealMaxTranslation()I

    move-result v0

    .line 1004
    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    int-to-float v0, v0

    int-to-float p1, p1

    div-float/2addr v0, p1

    .line 1006
    const/4 p1, 0x0

    const v2, 0x3ecccccd  # 0.4f

    sub-float/2addr v0, v2

    div-float/2addr v0, v2

    invoke-static {v1, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    invoke-static {p1, v0}, Ljava/lang/Math;->max(FF)F

    move-result p1

    .line 1008
    const v0, 0x3f19999a  # 0.6f

    sub-float/2addr v1, p1

    const p1, 0x3ecccccc  # 0.39999998f

    mul-float/2addr v1, p1

    add-float/2addr v1, v0

    return v1

    .line 1001
    :cond_40
    :goto_40
    return v1
.end method

.method private getMinimizeAmount(Lcom/android/server/wm/TaskStack;F)F
    .registers 5

    .line 968
    invoke-virtual {p0, p2}, Lcom/android/server/wm/DockedStackDividerController;->getInterpolatedAnimationValue(F)F

    move-result v0

    .line 969
    invoke-direct {p0}, Lcom/android/server/wm/DockedStackDividerController;->isAnimationMaximizing()Z

    move-result v1

    if-eqz v1, :cond_f

    .line 970
    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/wm/DockedStackDividerController;->adjustMaximizeAmount(Lcom/android/server/wm/TaskStack;FF)F

    move-result p1

    return p1

    .line 972
    :cond_f
    return v0
.end method

.method private getResizeDimLayer()I
    .registers 3

    .line 661
    iget-object v0, p0, Lcom/android/server/wm/DockedStackDividerController;->mWindow:Lcom/android/server/wm/WindowState;

    const/4 v1, 0x1

    if-eqz v0, :cond_9

    iget v0, v0, Lcom/android/server/wm/WindowState;->mLayer:I

    add-int/lit8 v1, v0, -0x1

    :cond_9
    return v1
.end method

.method private initSnapAlgorithmForRotations()V
    .registers 20

    .line 270
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/wm/DockedStackDividerController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v1}, Lcom/android/server/wm/DisplayContent;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    .line 273
    new-instance v2, Landroid/content/res/Configuration;

    invoke-direct {v2}, Landroid/content/res/Configuration;-><init>()V

    .line 274
    const/4 v3, 0x0

    move v10, v3

    :goto_f
    const/4 v4, 0x4

    if-ge v10, v4, :cond_d8

    .line 275
    const/4 v11, 0x1

    if-eq v10, v11, :cond_1b

    const/4 v4, 0x3

    if-ne v10, v4, :cond_19

    goto :goto_1b

    :cond_19
    move v4, v3

    goto :goto_1c

    :cond_1b
    :goto_1b
    move v4, v11

    .line 276
    :goto_1c
    if-eqz v4, :cond_24

    .line 277
    iget-object v5, v0, Lcom/android/server/wm/DockedStackDividerController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget v5, v5, Lcom/android/server/wm/DisplayContent;->mBaseDisplayHeight:I

    move v14, v5

    goto :goto_29

    .line 278
    :cond_24
    iget-object v5, v0, Lcom/android/server/wm/DockedStackDividerController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget v5, v5, Lcom/android/server/wm/DisplayContent;->mBaseDisplayWidth:I

    move v14, v5

    .line 279
    :goto_29
    if-eqz v4, :cond_31

    .line 280
    iget-object v4, v0, Lcom/android/server/wm/DockedStackDividerController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget v4, v4, Lcom/android/server/wm/DisplayContent;->mBaseDisplayWidth:I

    move v15, v4

    goto :goto_36

    .line 281
    :cond_31
    iget-object v4, v0, Lcom/android/server/wm/DockedStackDividerController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget v4, v4, Lcom/android/server/wm/DisplayContent;->mBaseDisplayHeight:I

    move v15, v4

    .line 282
    :goto_36
    iget-object v4, v0, Lcom/android/server/wm/DockedStackDividerController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 283
    invoke-virtual {v4, v10}, Lcom/android/server/wm/DisplayContent;->calculateDisplayCutoutForRotation(I)Lcom/android/server/wm/utils/WmDisplayCutout;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/server/wm/utils/WmDisplayCutout;->getDisplayCutout()Landroid/view/DisplayCutout;

    move-result-object v12

    .line 284
    iget-object v4, v0, Lcom/android/server/wm/DockedStackDividerController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v4}, Lcom/android/server/wm/DisplayContent;->getDisplayPolicy()Lcom/android/server/wm/DisplayPolicy;

    move-result-object v13

    .line 285
    iget-object v9, v0, Lcom/android/server/wm/DockedStackDividerController;->mTmpRect:Landroid/graphics/Rect;

    move-object v4, v13

    move v5, v10

    move v6, v14

    move v7, v15

    move-object v8, v12

    invoke-virtual/range {v4 .. v9}, Lcom/android/server/wm/DisplayPolicy;->getStableInsetsLw(IIILandroid/view/DisplayCutout;Landroid/graphics/Rect;)V

    .line 286
    invoke-virtual {v2}, Landroid/content/res/Configuration;->unset()V

    .line 287
    if-gt v14, v15, :cond_57

    move v4, v11

    goto :goto_58

    :cond_57
    const/4 v4, 0x2

    :goto_58
    iput v4, v2, Landroid/content/res/Configuration;->orientation:I

    .line 289
    iget v8, v1, Landroid/content/res/Configuration;->uiMode:I

    move-object v4, v13

    move v5, v14

    move v6, v15

    move v7, v10

    move-object v9, v12

    invoke-virtual/range {v4 .. v9}, Lcom/android/server/wm/DisplayPolicy;->getNonDecorDisplayWidth(IIIILandroid/view/DisplayCutout;)I

    move-result v16

    .line 291
    iget v8, v1, Landroid/content/res/Configuration;->uiMode:I

    invoke-virtual/range {v4 .. v9}, Lcom/android/server/wm/DisplayPolicy;->getNonDecorDisplayHeight(IIIILandroid/view/DisplayCutout;)I

    move-result v17

    .line 293
    iget-object v9, v0, Lcom/android/server/wm/DockedStackDividerController;->mTmpRect:Landroid/graphics/Rect;

    move v5, v10

    move v6, v14

    move v7, v15

    move-object v8, v12

    invoke-virtual/range {v4 .. v9}, Lcom/android/server/wm/DisplayPolicy;->getNonDecorInsetsLw(IIILandroid/view/DisplayCutout;Landroid/graphics/Rect;)V

    .line 294
    iget-object v4, v0, Lcom/android/server/wm/DockedStackDividerController;->mTmpRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->left:I

    .line 295
    iget-object v5, v0, Lcom/android/server/wm/DockedStackDividerController;->mTmpRect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->top:I

    .line 297
    iget-object v6, v2, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    add-int v7, v4, v16

    add-int v8, v5, v17

    invoke-virtual {v6, v4, v5, v7, v8}, Landroid/app/WindowConfiguration;->setAppBounds(IIII)V

    .line 300
    iget-object v4, v0, Lcom/android/server/wm/DockedStackDividerController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v4}, Lcom/android/server/wm/DisplayContent;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    iget v9, v4, Landroid/util/DisplayMetrics;->density:F

    .line 301
    iget v8, v1, Landroid/content/res/Configuration;->uiMode:I

    move-object v4, v13

    move v5, v14

    move v6, v15

    move v7, v10

    move/from16 v16, v9

    move-object v9, v12

    invoke-virtual/range {v4 .. v9}, Lcom/android/server/wm/DisplayPolicy;->getConfigDisplayWidth(IIIILandroid/view/DisplayCutout;)I

    move-result v4

    int-to-float v4, v4

    div-float v4, v4, v16

    float-to-int v4, v4

    iput v4, v2, Landroid/content/res/Configuration;->screenWidthDp:I

    .line 303
    iget v8, v1, Landroid/content/res/Configuration;->uiMode:I

    move-object v4, v13

    invoke-virtual/range {v4 .. v9}, Lcom/android/server/wm/DisplayPolicy;->getConfigDisplayHeight(IIIILandroid/view/DisplayCutout;)I

    move-result v4

    int-to-float v4, v4

    div-float v4, v4, v16

    float-to-int v4, v4

    iput v4, v2, Landroid/content/res/Configuration;->screenHeightDp:I

    .line 305
    iget-object v4, v0, Lcom/android/server/wm/DockedStackDividerController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v4, v4, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v2}, Landroid/content/Context;->createConfigurationContext(Landroid/content/res/Configuration;)Landroid/content/Context;

    move-result-object v4

    .line 306
    iget-object v5, v0, Lcom/android/server/wm/DockedStackDividerController;->mSnapAlgorithmForRotation:[Lcom/android/internal/policy/DividerSnapAlgorithm;

    new-instance v6, Lcom/android/internal/policy/DividerSnapAlgorithm;

    .line 307
    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/DockedStackDividerController;->getContentWidth()I

    move-result v16

    iget v4, v2, Landroid/content/res/Configuration;->orientation:I

    if-ne v4, v11, :cond_c8

    move/from16 v17, v11

    goto :goto_ca

    :cond_c8
    move/from16 v17, v3

    :goto_ca
    iget-object v4, v0, Lcom/android/server/wm/DockedStackDividerController;->mTmpRect:Landroid/graphics/Rect;

    move-object v12, v6

    move-object/from16 v18, v4

    invoke-direct/range {v12 .. v18}, Lcom/android/internal/policy/DividerSnapAlgorithm;-><init>(Landroid/content/res/Resources;IIIZLandroid/graphics/Rect;)V

    aput-object v6, v5, v10

    .line 274
    add-int/lit8 v10, v10, 0x1

    goto/16 :goto_f

    .line 310
    :cond_d8
    return-void
.end method

.method private isAnimationMaximizing()Z
    .registers 3

    .line 889
    iget v0, p0, Lcom/android/server/wm/DockedStackDividerController;->mAnimationTarget:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_9

    const/4 v0, 0x1

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    return v0
.end method

.method static isDockSideAllowed(IIIZ)Z
    .registers 7
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 483
    const/4 v0, 0x2

    const/4 v1, 0x1

    if-ne p0, v0, :cond_5

    .line 484
    return v1

    .line 487
    :cond_5
    const/4 v2, 0x0

    if-eqz p3, :cond_14

    .line 489
    if-ne p0, v1, :cond_c

    if-eq p2, v0, :cond_13

    :cond_c
    const/4 p1, 0x3

    if-ne p0, p1, :cond_12

    if-ne p2, v1, :cond_12

    goto :goto_13

    :cond_12
    move v1, v2

    :cond_13
    :goto_13
    return v1

    .line 494
    :cond_14
    if-ne p0, p1, :cond_17

    .line 495
    return v1

    .line 499
    :cond_17
    if-ne p0, v1, :cond_1c

    if-ne p1, v0, :cond_1c

    goto :goto_1d

    :cond_1c
    move v1, v2

    :goto_1d
    return v1
.end method

.method private isWithinDisplay(Lcom/android/server/wm/Task;)Z
    .registers 3

    .line 744
    iget-object v0, p0, Lcom/android/server/wm/DockedStackDividerController;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {p1, v0}, Lcom/android/server/wm/Task;->getBounds(Landroid/graphics/Rect;)V

    .line 745
    iget-object p1, p0, Lcom/android/server/wm/DockedStackDividerController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v0, p0, Lcom/android/server/wm/DockedStackDividerController;->mTmpRect2:Landroid/graphics/Rect;

    invoke-virtual {p1, v0}, Lcom/android/server/wm/DisplayContent;->getBounds(Landroid/graphics/Rect;)V

    .line 746
    iget-object p1, p0, Lcom/android/server/wm/DockedStackDividerController;->mTmpRect:Landroid/graphics/Rect;

    iget-object v0, p0, Lcom/android/server/wm/DockedStackDividerController;->mTmpRect2:Landroid/graphics/Rect;

    invoke-virtual {p1, v0}, Landroid/graphics/Rect;->intersect(Landroid/graphics/Rect;)Z

    move-result p1

    return p1
.end method

.method private loadDimens()V
    .registers 4

    .line 313
    iget-object v0, p0, Lcom/android/server/wm/DockedStackDividerController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    .line 314
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x10500f9

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/server/wm/DockedStackDividerController;->mDividerWindowWidth:I

    .line 316
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x10500f8

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/server/wm/DockedStackDividerController;->mDividerInsets:I

    .line 318
    iget-object v1, p0, Lcom/android/server/wm/DockedStackDividerController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 319
    invoke-virtual {v1}, Lcom/android/server/wm/DisplayContent;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    .line 318
    const/4 v2, 0x4

    invoke-static {v2, v1}, Lcom/android/server/wm/WindowManagerService;->dipToPixel(ILandroid/util/DisplayMetrics;)I

    move-result v1

    iput v1, p0, Lcom/android/server/wm/DockedStackDividerController;->mDividerWindowWidthInactive:I

    .line 320
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1050224

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/server/wm/DockedStackDividerController;->mTaskHeightInMinimizedMode:I

    .line 322
    invoke-direct {p0}, Lcom/android/server/wm/DockedStackDividerController;->initSnapAlgorithmForRotations()V

    .line 323
    return-void
.end method

.method private notifyAdjustedForImeChanged(ZJ)V
    .registers 9

    .line 602
    iget-object v0, p0, Lcom/android/server/wm/DockedStackDividerController;->mDockedStackListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v0

    .line 603
    const/4 v1, 0x0

    :goto_7
    if-ge v1, v0, :cond_20

    .line 604
    iget-object v2, p0, Lcom/android/server/wm/DockedStackDividerController;->mDockedStackListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v2, v1}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v2

    check-cast v2, Landroid/view/IDockedStackListener;

    .line 606
    :try_start_11
    invoke-interface {v2, p1, p2, p3}, Landroid/view/IDockedStackListener;->onAdjustedForImeChanged(ZJ)V
    :try_end_14
    .catch Landroid/os/RemoteException; {:try_start_11 .. :try_end_14} :catch_15

    .line 609
    goto :goto_1d

    .line 607
    :catch_15
    move-exception v2

    .line 608
    const-string v3, "WindowManager"

    const-string v4, "Error delivering adjusted for ime changed event."

    invoke-static {v3, v4, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 603
    :goto_1d
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 611
    :cond_20
    iget-object p1, p0, Lcom/android/server/wm/DockedStackDividerController;->mDockedStackListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {p1}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 612
    return-void
.end method

.method private notifyDockedDividerVisibilityChanged(Z)V
    .registers 7

    .line 454
    iget-object v0, p0, Lcom/android/server/wm/DockedStackDividerController;->mDockedStackListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v0

    .line 455
    const/4 v1, 0x0

    :goto_7
    if-ge v1, v0, :cond_20

    .line 456
    iget-object v2, p0, Lcom/android/server/wm/DockedStackDividerController;->mDockedStackListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v2, v1}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v2

    check-cast v2, Landroid/view/IDockedStackListener;

    .line 458
    :try_start_11
    invoke-interface {v2, p1}, Landroid/view/IDockedStackListener;->onDividerVisibilityChanged(Z)V
    :try_end_14
    .catch Landroid/os/RemoteException; {:try_start_11 .. :try_end_14} :catch_15

    .line 461
    goto :goto_1d

    .line 459
    :catch_15
    move-exception v2

    .line 460
    const-string v3, "WindowManager"

    const-string v4, "Error delivering divider visibility changed event."

    invoke-static {v3, v4, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 455
    :goto_1d
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 463
    :cond_20
    iget-object p1, p0, Lcom/android/server/wm/DockedStackDividerController;->mDockedStackListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {p1}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 464
    return-void
.end method

.method private notifyDockedStackMinimizedChanged(ZZZ)V
    .registers 10

    .line 560
    nop

    .line 561
    if-eqz p2, :cond_33

    .line 562
    iget-object p2, p0, Lcom/android/server/wm/DockedStackDividerController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 563
    invoke-virtual {p2}, Lcom/android/server/wm/DisplayContent;->getSplitScreenPrimaryStackIgnoringVisibility()Lcom/android/server/wm/TaskStack;

    move-result-object p2

    .line 564
    invoke-direct {p0}, Lcom/android/server/wm/DockedStackDividerController;->isAnimationMaximizing()Z

    move-result v0

    if-eqz v0, :cond_18

    .line 565
    iget-object v0, p0, Lcom/android/server/wm/DockedStackDividerController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v0, v0, Lcom/android/server/wm/DisplayContent;->mAppTransition:Lcom/android/server/wm/AppTransition;

    invoke-virtual {v0}, Lcom/android/server/wm/AppTransition;->getLastClipRevealTransitionDuration()J

    move-result-wide v0

    goto :goto_1a

    .line 566
    :cond_18
    const-wide/16 v0, 0x150

    .line 567
    :goto_1a
    long-to-float v0, v0

    iget-object v1, p0, Lcom/android/server/wm/DockedStackDividerController;->mService:Lcom/android/server/wm/WindowManagerService;

    .line 568
    invoke-virtual {v1}, Lcom/android/server/wm/WindowManagerService;->getTransitionAnimationScaleLocked()F

    move-result v1

    mul-float/2addr v0, v1

    float-to-long v0, v0

    iput-wide v0, p0, Lcom/android/server/wm/DockedStackDividerController;->mAnimationDuration:J

    .line 569
    invoke-direct {p0, p2}, Lcom/android/server/wm/DockedStackDividerController;->getClipRevealMeetFraction(Lcom/android/server/wm/TaskStack;)F

    move-result p2

    iput p2, p0, Lcom/android/server/wm/DockedStackDividerController;->mMaximizeMeetFraction:F

    .line 570
    iget-wide v0, p0, Lcom/android/server/wm/DockedStackDividerController;->mAnimationDuration:J

    long-to-float p2, v0

    iget v0, p0, Lcom/android/server/wm/DockedStackDividerController;->mMaximizeMeetFraction:F

    mul-float/2addr p2, v0

    float-to-long v0, p2

    goto :goto_35

    .line 561
    :cond_33
    const-wide/16 v0, 0x0

    .line 572
    :goto_35
    iget-object p2, p0, Lcom/android/server/wm/DockedStackDividerController;->mDockedStackListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {p2}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result p2

    .line 573
    const/4 v2, 0x0

    :goto_3c
    if-ge v2, p2, :cond_55

    .line 574
    iget-object v3, p0, Lcom/android/server/wm/DockedStackDividerController;->mDockedStackListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3, v2}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v3

    check-cast v3, Landroid/view/IDockedStackListener;

    .line 576
    :try_start_46
    invoke-interface {v3, p1, v0, v1, p3}, Landroid/view/IDockedStackListener;->onDockedStackMinimizedChanged(ZJZ)V
    :try_end_49
    .catch Landroid/os/RemoteException; {:try_start_46 .. :try_end_49} :catch_4a

    .line 580
    goto :goto_52

    .line 578
    :catch_4a
    move-exception v3

    .line 579
    const-string v4, "WindowManager"

    const-string v5, "Error delivering minimized dock changed event."

    invoke-static {v4, v5, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 573
    :goto_52
    add-int/lit8 v2, v2, 0x1

    goto :goto_3c

    .line 582
    :cond_55
    iget-object p2, p0, Lcom/android/server/wm/DockedStackDividerController;->mDockedStackListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {p2}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 585
    iget-object p2, p0, Lcom/android/server/wm/DockedStackDividerController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object p2, p2, Lcom/android/server/wm/WindowManagerService;->mAtmInternal:Lcom/android/server/wm/ActivityTaskManagerInternal;

    invoke-virtual {p2, p1}, Lcom/android/server/wm/ActivityTaskManagerInternal;->notifyDockedStackMinimizedChanged(Z)V

    .line 586
    return-void
.end method

.method private resetDragResizingChangeReported()V
    .registers 4

    .line 362
    iget-object v0, p0, Lcom/android/server/wm/DockedStackDividerController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    sget-object v1, Lcom/android/server/wm/-$$Lambda$vhwCX-wzYksBgFM46tASKUCeQRc;->INSTANCE:Lcom/android/server/wm/-$$Lambda$vhwCX-wzYksBgFM46tASKUCeQRc;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/android/server/wm/DisplayContent;->forAllWindows(Ljava/util/function/Consumer;Z)V

    .line 364
    return-void
.end method

.method private setMinimizedDockedStack(ZZ)V
    .registers 8

    .line 757
    iget-boolean v0, p0, Lcom/android/server/wm/DockedStackDividerController;->mMinimizedDock:Z

    .line 758
    iput-boolean p1, p0, Lcom/android/server/wm/DockedStackDividerController;->mMinimizedDock:Z

    .line 759
    if-ne p1, v0, :cond_7

    .line 760
    return-void

    .line 763
    :cond_7
    invoke-direct {p0}, Lcom/android/server/wm/DockedStackDividerController;->clearImeAdjustAnimation()Z

    move-result v0

    .line 764
    nop

    .line 765
    invoke-virtual {p0}, Lcom/android/server/wm/DockedStackDividerController;->isHomeStackResizable()Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_19

    .line 766
    invoke-direct {p0, p1, p2, v3}, Lcom/android/server/wm/DockedStackDividerController;->notifyDockedStackMinimizedChanged(ZZZ)V

    .line 768
    move v2, v3

    goto :goto_35

    .line 770
    :cond_19
    const/4 v1, 0x0

    const/high16 v4, 0x3f800000  # 1.0f

    if-eqz p1, :cond_2a

    .line 771
    if-eqz p2, :cond_24

    .line 772
    invoke-direct {p0, v1, v4}, Lcom/android/server/wm/DockedStackDividerController;->startAdjustAnimation(FF)V

    goto :goto_35

    .line 774
    :cond_24
    invoke-direct {p0, v3}, Lcom/android/server/wm/DockedStackDividerController;->setMinimizedDockedStack(Z)Z

    move-result p2

    or-int/2addr v2, p2

    goto :goto_35

    .line 777
    :cond_2a
    if-eqz p2, :cond_30

    .line 778
    invoke-direct {p0, v4, v1}, Lcom/android/server/wm/DockedStackDividerController;->startAdjustAnimation(FF)V

    goto :goto_35

    .line 780
    :cond_30
    invoke-direct {p0, v2}, Lcom/android/server/wm/DockedStackDividerController;->setMinimizedDockedStack(Z)Z

    move-result p2

    or-int/2addr v2, p2

    .line 784
    :goto_35
    if-nez v0, :cond_39

    if-eqz v2, :cond_62

    .line 785
    :cond_39
    if-eqz v0, :cond_5b

    if-nez v2, :cond_5b

    .line 786
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "setMinimizedDockedStack: IME adjust changed due to minimizing, minimizedDock="

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, " minimizedChange="

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "WindowManager"

    invoke-static {p2, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 790
    :cond_5b
    iget-object p1, p0, Lcom/android/server/wm/DockedStackDividerController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object p1, p1, Lcom/android/server/wm/WindowManagerService;->mWindowPlacerLocked:Lcom/android/server/wm/WindowSurfacePlacer;

    invoke-virtual {p1}, Lcom/android/server/wm/WindowSurfacePlacer;->performSurfacePlacement()V

    .line 792
    :cond_62
    return-void
.end method

.method private setMinimizedDockedStack(Z)Z
    .registers 5

    .line 883
    iget-object v0, p0, Lcom/android/server/wm/DockedStackDividerController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->getSplitScreenPrimaryStackIgnoringVisibility()Lcom/android/server/wm/TaskStack;

    move-result-object v0

    .line 884
    invoke-virtual {p0}, Lcom/android/server/wm/DockedStackDividerController;->isHomeStackResizable()Z

    move-result v1

    const/4 v2, 0x0

    invoke-direct {p0, p1, v2, v1}, Lcom/android/server/wm/DockedStackDividerController;->notifyDockedStackMinimizedChanged(ZZZ)V

    .line 885
    if-eqz v0, :cond_1d

    if-eqz p1, :cond_15

    const/high16 p1, 0x3f800000  # 1.0f

    goto :goto_16

    :cond_15
    const/4 p1, 0x0

    :goto_16
    invoke-virtual {v0, p1}, Lcom/android/server/wm/TaskStack;->setAdjustedForMinimizedDock(F)Z

    move-result p1

    if-eqz p1, :cond_1d

    const/4 v2, 0x1

    :cond_1d
    return v2
.end method

.method private startAdjustAnimation(FF)V
    .registers 4

    .line 801
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/wm/DockedStackDividerController;->mAnimatingForMinimizedDockedStack:Z

    .line 802
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/wm/DockedStackDividerController;->mAnimationStarted:Z

    .line 803
    iput p1, p0, Lcom/android/server/wm/DockedStackDividerController;->mAnimationStart:F

    .line 804
    iput p2, p0, Lcom/android/server/wm/DockedStackDividerController;->mAnimationTarget:F

    .line 805
    return-void
.end method

.method private startImeAdjustAnimation(ZZLcom/android/server/wm/WindowState;)V
    .registers 9

    .line 813
    iget-boolean v0, p0, Lcom/android/server/wm/DockedStackDividerController;->mAnimatingForIme:Z

    const/high16 v1, 0x3f800000  # 1.0f

    const/4 v2, 0x0

    if-nez v0, :cond_22

    .line 814
    iget-boolean v0, p0, Lcom/android/server/wm/DockedStackDividerController;->mAdjustedForIme:Z

    if-eqz v0, :cond_d

    move v0, v1

    goto :goto_e

    :cond_d
    move v0, v2

    :goto_e
    iput v0, p0, Lcom/android/server/wm/DockedStackDividerController;->mAnimationStart:F

    .line 815
    iget-boolean v0, p0, Lcom/android/server/wm/DockedStackDividerController;->mAdjustedForDivider:Z

    if-eqz v0, :cond_16

    move v0, v1

    goto :goto_17

    :cond_16
    move v0, v2

    :goto_17
    iput v0, p0, Lcom/android/server/wm/DockedStackDividerController;->mDividerAnimationStart:F

    .line 816
    iget v0, p0, Lcom/android/server/wm/DockedStackDividerController;->mAnimationStart:F

    iput v0, p0, Lcom/android/server/wm/DockedStackDividerController;->mLastAnimationProgress:F

    .line 817
    iget v0, p0, Lcom/android/server/wm/DockedStackDividerController;->mDividerAnimationStart:F

    iput v0, p0, Lcom/android/server/wm/DockedStackDividerController;->mLastDividerProgress:F

    goto :goto_2a

    .line 819
    :cond_22
    iget v0, p0, Lcom/android/server/wm/DockedStackDividerController;->mLastAnimationProgress:F

    iput v0, p0, Lcom/android/server/wm/DockedStackDividerController;->mAnimationStart:F

    .line 820
    iget v0, p0, Lcom/android/server/wm/DockedStackDividerController;->mLastDividerProgress:F

    iput v0, p0, Lcom/android/server/wm/DockedStackDividerController;->mDividerAnimationStart:F

    .line 822
    :goto_2a
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/wm/DockedStackDividerController;->mAnimatingForIme:Z

    .line 823
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/android/server/wm/DockedStackDividerController;->mAnimationStarted:Z

    .line 824
    if-eqz p1, :cond_34

    move v4, v1

    goto :goto_35

    :cond_34
    move v4, v2

    :goto_35
    iput v4, p0, Lcom/android/server/wm/DockedStackDividerController;->mAnimationTarget:F

    .line 825
    if-eqz p2, :cond_3a

    goto :goto_3b

    :cond_3a
    move v1, v2

    :goto_3b
    iput v1, p0, Lcom/android/server/wm/DockedStackDividerController;->mDividerAnimationTarget:F

    .line 827
    iget-object v1, p0, Lcom/android/server/wm/DockedStackDividerController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v1}, Lcom/android/server/wm/DisplayContent;->beginImeAdjustAnimation()V

    .line 831
    iget-object v1, p0, Lcom/android/server/wm/DockedStackDividerController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mWaitingForDrawn:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_85

    .line 832
    iget-object v1, p0, Lcom/android/server/wm/DockedStackDividerController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    const/16 v2, 0x18

    invoke-virtual {v1, v2}, Lcom/android/server/wm/WindowManagerService$H;->removeMessages(I)V

    .line 833
    iget-object v1, p0, Lcom/android/server/wm/DockedStackDividerController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    const-wide/16 v3, 0xc8

    invoke-virtual {v1, v2, v3, v4}, Lcom/android/server/wm/WindowManagerService$H;->sendEmptyMessageDelayed(IJ)Z

    .line 835
    iput-boolean v0, p0, Lcom/android/server/wm/DockedStackDividerController;->mAnimationStartDelayed:Z

    .line 836
    if-eqz p3, :cond_6e

    .line 839
    iget-object v0, p0, Lcom/android/server/wm/DockedStackDividerController;->mDelayedImeWin:Lcom/android/server/wm/WindowState;

    if-eqz v0, :cond_69

    .line 840
    invoke-virtual {v0}, Lcom/android/server/wm/WindowState;->endDelayingAnimationStart()V

    .line 842
    :cond_69
    iput-object p3, p0, Lcom/android/server/wm/DockedStackDividerController;->mDelayedImeWin:Lcom/android/server/wm/WindowState;

    .line 843
    invoke-virtual {p3}, Lcom/android/server/wm/WindowState;->startDelayingAnimationStart()V

    .line 850
    :cond_6e
    iget-object p3, p0, Lcom/android/server/wm/DockedStackDividerController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object p3, p3, Lcom/android/server/wm/WindowManagerService;->mWaitingForDrawnCallback:Ljava/lang/Runnable;

    if-eqz p3, :cond_7b

    .line 851
    iget-object p3, p0, Lcom/android/server/wm/DockedStackDividerController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object p3, p3, Lcom/android/server/wm/WindowManagerService;->mWaitingForDrawnCallback:Ljava/lang/Runnable;

    invoke-interface {p3}, Ljava/lang/Runnable;->run()V

    .line 853
    :cond_7b
    iget-object p3, p0, Lcom/android/server/wm/DockedStackDividerController;->mService:Lcom/android/server/wm/WindowManagerService;

    new-instance v0, Lcom/android/server/wm/-$$Lambda$DockedStackDividerController$5bA1vUPZ2WAWRKwBSEsFIfWUu9o;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/server/wm/-$$Lambda$DockedStackDividerController$5bA1vUPZ2WAWRKwBSEsFIfWUu9o;-><init>(Lcom/android/server/wm/DockedStackDividerController;ZZ)V

    iput-object v0, p3, Lcom/android/server/wm/WindowManagerService;->mWaitingForDrawnCallback:Ljava/lang/Runnable;

    goto :goto_90

    .line 877
    :cond_85
    if-nez p1, :cond_8b

    if-eqz p2, :cond_8a

    goto :goto_8b

    :cond_8a
    move v0, v3

    :cond_8b
    :goto_8b
    const-wide/16 p1, 0x118

    invoke-direct {p0, v0, p1, p2}, Lcom/android/server/wm/DockedStackDividerController;->notifyAdjustedForImeChanged(ZJ)V

    .line 880
    :goto_90
    return-void
.end method

.method private wasVisible()Z
    .registers 2

    .line 390
    iget-boolean v0, p0, Lcom/android/server/wm/DockedStackDividerController;->mLastVisibility:Z

    return v0
.end method


# virtual methods
.method public animate(J)Z
    .registers 5

    .line 893
    iget-object v0, p0, Lcom/android/server/wm/DockedStackDividerController;->mWindow:Lcom/android/server/wm/WindowState;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    .line 894
    return v1

    .line 896
    :cond_6
    iget-boolean v0, p0, Lcom/android/server/wm/DockedStackDividerController;->mAnimatingForMinimizedDockedStack:Z

    if-eqz v0, :cond_f

    .line 897
    invoke-direct {p0, p1, p2}, Lcom/android/server/wm/DockedStackDividerController;->animateForMinimizedDockedStack(J)Z

    move-result p1

    return p1

    .line 898
    :cond_f
    iget-boolean v0, p0, Lcom/android/server/wm/DockedStackDividerController;->mAnimatingForIme:Z

    if-eqz v0, :cond_22

    iget-object v0, p0, Lcom/android/server/wm/DockedStackDividerController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v0, v0, Lcom/android/server/wm/DisplayContent;->mAppTransition:Lcom/android/server/wm/AppTransition;

    invoke-virtual {v0}, Lcom/android/server/wm/AppTransition;->isRunning()Z

    move-result v0

    if-nez v0, :cond_22

    .line 902
    invoke-direct {p0, p1, p2}, Lcom/android/server/wm/DockedStackDividerController;->animateForIme(J)Z

    move-result p1

    return p1

    .line 904
    :cond_22
    return v1
.end method

.method canPrimaryStackDockTo(ILandroid/graphics/Rect;I)Z
    .registers 7

    .line 474
    iget-object v0, p0, Lcom/android/server/wm/DockedStackDividerController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->getDisplayPolicy()Lcom/android/server/wm/DisplayPolicy;

    move-result-object v0

    .line 475
    iget v1, p0, Lcom/android/server/wm/DockedStackDividerController;->mOriginalDockedSide:I

    .line 476
    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result v2

    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result p2

    invoke-virtual {v0, v2, p2, p3}, Lcom/android/server/wm/DisplayPolicy;->navigationBarPosition(III)I

    move-result p2

    .line 477
    invoke-virtual {v0}, Lcom/android/server/wm/DisplayPolicy;->navigationBarCanMove()Z

    move-result p3

    .line 475
    invoke-static {p1, v1, p2, p3}, Lcom/android/server/wm/DockedStackDividerController;->isDockSideAllowed(IIIZ)Z

    move-result p1

    return p1
.end method

.method checkMinimizeChanged(Z)V
    .registers 8

    .line 712
    iget-object v0, p0, Lcom/android/server/wm/DockedStackDividerController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->getSplitScreenPrimaryStackIgnoringVisibility()Lcom/android/server/wm/TaskStack;

    move-result-object v0

    if-nez v0, :cond_9

    .line 713
    return-void

    .line 715
    :cond_9
    iget-object v0, p0, Lcom/android/server/wm/DockedStackDividerController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->getHomeStack()Lcom/android/server/wm/TaskStack;

    move-result-object v0

    .line 716
    if-nez v0, :cond_12

    .line 717
    return-void

    .line 719
    :cond_12
    invoke-virtual {v0}, Lcom/android/server/wm/TaskStack;->findHomeTask()Lcom/android/server/wm/Task;

    move-result-object v1

    .line 720
    if-eqz v1, :cond_64

    invoke-direct {p0, v1}, Lcom/android/server/wm/DockedStackDividerController;->isWithinDisplay(Lcom/android/server/wm/Task;)Z

    move-result v2

    if-nez v2, :cond_1f

    goto :goto_64

    .line 726
    :cond_1f
    iget-boolean v2, p0, Lcom/android/server/wm/DockedStackDividerController;->mMinimizedDock:Z

    if-eqz v2, :cond_2a

    iget-object v2, p0, Lcom/android/server/wm/DockedStackDividerController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-boolean v2, v2, Lcom/android/server/wm/WindowManagerService;->mKeyguardOrAodShowingOnDefaultDisplay:Z

    if-eqz v2, :cond_2a

    .line 727
    return-void

    .line 729
    :cond_2a
    iget-object v2, p0, Lcom/android/server/wm/DockedStackDividerController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Lcom/android/server/wm/DisplayContent;->getTopStackInWindowingMode(I)Lcom/android/server/wm/TaskStack;

    move-result-object v2

    .line 731
    iget-object v3, p0, Lcom/android/server/wm/DockedStackDividerController;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v3}, Lcom/android/server/wm/WindowManagerService;->getRecentsAnimationController()Lcom/android/server/wm/RecentsAnimationController;

    move-result-object v3

    .line 732
    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v3, :cond_43

    .line 733
    invoke-virtual {v3}, Lcom/android/server/wm/RecentsAnimationController;->isSplitScreenMinimized()Z

    move-result v3

    if-eqz v3, :cond_43

    move v3, v4

    goto :goto_44

    :cond_43
    move v3, v5

    .line 734
    :goto_44
    invoke-virtual {v1}, Lcom/android/server/wm/Task;->getTopVisibleAppToken()Lcom/android/server/wm/AppWindowToken;

    move-result-object v1

    if-eqz v1, :cond_4c

    move v1, v4

    goto :goto_4d

    :cond_4c
    move v1, v5

    .line 735
    :goto_4d
    if-eqz v1, :cond_5a

    if-eqz v2, :cond_5a

    .line 738
    invoke-virtual {v0, v2}, Lcom/android/server/wm/TaskStack;->compareTo(Lcom/android/server/wm/WindowContainer;)I

    move-result v0

    if-ltz v0, :cond_59

    move v1, v4

    goto :goto_5a

    :cond_59
    move v1, v5

    .line 740
    :cond_5a
    :goto_5a
    if-nez v1, :cond_60

    if-eqz v3, :cond_5f

    goto :goto_60

    :cond_5f
    move v4, v5

    :cond_60
    :goto_60
    invoke-direct {p0, v4, p1}, Lcom/android/server/wm/DockedStackDividerController;->setMinimizedDockedStack(ZZ)V

    .line 741
    return-void

    .line 721
    :cond_64
    :goto_64
    return-void
.end method

.method dump(Ljava/lang/String;Ljava/io/PrintWriter;)V
    .registers 5

    .line 1021
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "DockedStackDividerController"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1022
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "  mLastVisibility="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/wm/DockedStackDividerController;->mLastVisibility:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1023
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "  mMinimizedDock="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/wm/DockedStackDividerController;->mMinimizedDock:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1024
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "  mAdjustedForIme="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/wm/DockedStackDividerController;->mAdjustedForIme:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1025
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "  mAdjustedForDivider="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p1, p0, Lcom/android/server/wm/DockedStackDividerController;->mAdjustedForDivider:Z

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1026
    return-void
.end method

.method getContentInsets()I
    .registers 2

    .line 338
    iget v0, p0, Lcom/android/server/wm/DockedStackDividerController;->mDividerInsets:I

    return v0
.end method

.method getContentWidth()I
    .registers 3

    .line 334
    iget v0, p0, Lcom/android/server/wm/DockedStackDividerController;->mDividerWindowWidth:I

    iget v1, p0, Lcom/android/server/wm/DockedStackDividerController;->mDividerInsets:I

    mul-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    return v0
.end method

.method getContentWidthInactive()I
    .registers 2

    .line 342
    iget v0, p0, Lcom/android/server/wm/DockedStackDividerController;->mDividerWindowWidthInactive:I

    return v0
.end method

.method getDockSide(Landroid/graphics/Rect;Landroid/graphics/Rect;II)I
    .registers 7

    .line 208
    const/4 v0, 0x2

    const/4 v1, 0x1

    if-ne p3, v1, :cond_20

    .line 210
    iget p3, p2, Landroid/graphics/Rect;->bottom:I

    iget v1, p1, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr p3, v1

    iget p1, p1, Landroid/graphics/Rect;->top:I

    iget v1, p2, Landroid/graphics/Rect;->top:I

    sub-int/2addr p1, v1

    sub-int/2addr p3, p1

    .line 211
    if-lez p3, :cond_12

    .line 212
    return v0

    .line 213
    :cond_12
    const/4 p1, 0x4

    if-gez p3, :cond_16

    .line 214
    return p1

    .line 216
    :cond_16
    invoke-virtual {p0, v0, p2, p4}, Lcom/android/server/wm/DockedStackDividerController;->canPrimaryStackDockTo(ILandroid/graphics/Rect;I)Z

    move-result p2

    if-eqz p2, :cond_1e

    .line 217
    move p1, v0

    goto :goto_1f

    :cond_1e
    nop

    .line 216
    :goto_1f
    return p1

    .line 218
    :cond_20
    if-ne p3, v0, :cond_3e

    .line 220
    iget p3, p2, Landroid/graphics/Rect;->right:I

    iget v0, p1, Landroid/graphics/Rect;->right:I

    sub-int/2addr p3, v0

    iget p1, p1, Landroid/graphics/Rect;->left:I

    iget v0, p2, Landroid/graphics/Rect;->left:I

    sub-int/2addr p1, v0

    sub-int/2addr p3, p1

    .line 221
    if-lez p3, :cond_30

    .line 222
    return v1

    .line 223
    :cond_30
    const/4 p1, 0x3

    if-gez p3, :cond_34

    .line 224
    return p1

    .line 226
    :cond_34
    invoke-virtual {p0, v1, p2, p4}, Lcom/android/server/wm/DockedStackDividerController;->canPrimaryStackDockTo(ILandroid/graphics/Rect;I)Z

    move-result p2

    if-eqz p2, :cond_3c

    .line 227
    move p1, v1

    goto :goto_3d

    :cond_3c
    nop

    .line 226
    :goto_3d
    return p1

    .line 229
    :cond_3e
    const/4 p1, -0x1

    return p1
.end method

.method getHomeStackBoundsInDockedMode(Landroid/content/res/Configuration;ILandroid/graphics/Rect;)V
    .registers 12

    .line 233
    iget-object v0, p0, Lcom/android/server/wm/DockedStackDividerController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->getDisplayInfo()Landroid/view/DisplayInfo;

    move-result-object v0

    iget-object v5, v0, Landroid/view/DisplayInfo;->displayCutout:Landroid/view/DisplayCutout;

    .line 234
    iget-object v0, p1, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v0}, Landroid/app/WindowConfiguration;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    .line 235
    iget-object v1, p1, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v1}, Landroid/app/WindowConfiguration;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v7

    .line 236
    iget-object v1, p0, Lcom/android/server/wm/DockedStackDividerController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v1}, Lcom/android/server/wm/DisplayContent;->getDisplayPolicy()Lcom/android/server/wm/DisplayPolicy;

    move-result-object v1

    iget-object v2, p1, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    .line 237
    invoke-virtual {v2}, Landroid/app/WindowConfiguration;->getRotation()I

    move-result v2

    iget-object v6, p0, Lcom/android/server/wm/DockedStackDividerController;->mTmpRect:Landroid/graphics/Rect;

    .line 236
    move v3, v0

    move v4, v7

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/wm/DisplayPolicy;->getStableInsetsLw(IIILandroid/view/DisplayCutout;Landroid/graphics/Rect;)V

    .line 239
    iget v1, p0, Lcom/android/server/wm/DockedStackDividerController;->mDividerWindowWidth:I

    iget v2, p0, Lcom/android/server/wm/DockedStackDividerController;->mDividerInsets:I

    mul-int/lit8 v2, v2, 0x2

    sub-int/2addr v1, v2

    .line 242
    iget p1, p1, Landroid/content/res/Configuration;->orientation:I

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne p1, v3, :cond_48

    .line 243
    iget p1, p0, Lcom/android/server/wm/DockedStackDividerController;->mTaskHeightInMinimizedMode:I

    add-int/2addr p1, v1

    iget-object p2, p0, Lcom/android/server/wm/DockedStackDividerController;->mTmpRect:Landroid/graphics/Rect;

    iget p2, p2, Landroid/graphics/Rect;->top:I

    add-int/2addr p1, p2

    invoke-virtual {p3, v2, p1, v0, v7}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_64

    .line 248
    :cond_48
    iget p1, p0, Lcom/android/server/wm/DockedStackDividerController;->mTaskHeightInMinimizedMode:I

    add-int/2addr p1, v1

    iget-object v1, p0, Lcom/android/server/wm/DockedStackDividerController;->mTmpRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    add-int/2addr p1, v1

    .line 249
    iget-object v1, p0, Lcom/android/server/wm/DockedStackDividerController;->mTmpRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    .line 250
    iget-object v4, p0, Lcom/android/server/wm/DockedStackDividerController;->mTmpRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->right:I

    sub-int/2addr v0, v4

    .line 251
    if-ne p2, v3, :cond_5d

    .line 252
    add-int/2addr v1, p1

    goto :goto_61

    .line 253
    :cond_5d
    const/4 v3, 0x3

    if-ne p2, v3, :cond_61

    .line 254
    sub-int/2addr v0, p1

    .line 256
    :cond_61
    :goto_61
    invoke-virtual {p3, v1, v2, v0, v7}, Landroid/graphics/Rect;->set(IIII)V

    .line 258
    :goto_64
    return-void
.end method

.method getImeHeightAdjustedFor()I
    .registers 2

    .line 415
    iget v0, p0, Lcom/android/server/wm/DockedStackDividerController;->mImeHeight:I

    return v0
.end method

.method getInterpolatedAnimationValue(F)F
    .registers 4

    .line 957
    iget v0, p0, Lcom/android/server/wm/DockedStackDividerController;->mAnimationTarget:F

    mul-float/2addr v0, p1

    const/high16 v1, 0x3f800000  # 1.0f

    sub-float/2addr v1, p1

    iget p1, p0, Lcom/android/server/wm/DockedStackDividerController;->mAnimationStart:F

    mul-float/2addr v1, p1

    add-float/2addr v0, v1

    return v0
.end method

.method getInterpolatedDividerValue(F)F
    .registers 4

    .line 961
    iget v0, p0, Lcom/android/server/wm/DockedStackDividerController;->mDividerAnimationTarget:F

    mul-float/2addr v0, p1

    const/high16 v1, 0x3f800000  # 1.0f

    sub-float/2addr v1, p1

    iget p1, p0, Lcom/android/server/wm/DockedStackDividerController;->mDividerAnimationStart:F

    mul-float/2addr v1, p1

    add-float/2addr v0, v1

    return v0
.end method

.method getSmallestWidthDpForBounds(Landroid/graphics/Rect;)I
    .registers 22

    .line 158
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/wm/DockedStackDividerController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v1}, Lcom/android/server/wm/DisplayContent;->getDisplayInfo()Landroid/view/DisplayInfo;

    move-result-object v1

    .line 160
    iget-object v2, v0, Lcom/android/server/wm/DockedStackDividerController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget v2, v2, Lcom/android/server/wm/DisplayContent;->mBaseDisplayWidth:I

    .line 161
    iget-object v3, v0, Lcom/android/server/wm/DockedStackDividerController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget v3, v3, Lcom/android/server/wm/DisplayContent;->mBaseDisplayHeight:I

    .line 162
    nop

    .line 166
    const/4 v4, 0x0

    const v5, 0x7fffffff

    move v12, v5

    move v5, v4

    :goto_17
    const/4 v6, 0x4

    if-ge v5, v6, :cond_c1

    .line 167
    iget-object v6, v0, Lcom/android/server/wm/DockedStackDividerController;->mTmpRect:Landroid/graphics/Rect;

    move-object/from16 v13, p1

    invoke-virtual {v6, v13}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 168
    iget-object v6, v0, Lcom/android/server/wm/DockedStackDividerController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget v7, v1, Landroid/view/DisplayInfo;->rotation:I

    iget-object v8, v0, Lcom/android/server/wm/DockedStackDividerController;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v6, v7, v5, v8}, Lcom/android/server/wm/DisplayContent;->rotateBounds(IILandroid/graphics/Rect;)V

    .line 169
    const/4 v6, 0x1

    if-eq v5, v6, :cond_33

    const/4 v7, 0x3

    if-ne v5, v7, :cond_31

    goto :goto_33

    :cond_31
    move v7, v4

    goto :goto_34

    :cond_33
    :goto_33
    move v7, v6

    .line 170
    :goto_34
    iget-object v8, v0, Lcom/android/server/wm/DockedStackDividerController;->mTmpRect2:Landroid/graphics/Rect;

    .line 171
    if-eqz v7, :cond_3a

    move v9, v3

    goto :goto_3b

    :cond_3a
    move v9, v2

    .line 172
    :goto_3b
    if-eqz v7, :cond_3f

    move v7, v2

    goto :goto_40

    :cond_3f
    move v7, v3

    .line 170
    :goto_40
    invoke-virtual {v8, v4, v4, v9, v7}, Landroid/graphics/Rect;->set(IIII)V

    .line 173
    iget-object v7, v0, Lcom/android/server/wm/DockedStackDividerController;->mTmpRect2:Landroid/graphics/Rect;

    invoke-virtual {v7}, Landroid/graphics/Rect;->width()I

    move-result v7

    iget-object v8, v0, Lcom/android/server/wm/DockedStackDividerController;->mTmpRect2:Landroid/graphics/Rect;

    invoke-virtual {v8}, Landroid/graphics/Rect;->height()I

    move-result v8

    if-gt v7, v8, :cond_52

    .line 174
    goto :goto_53

    .line 175
    :cond_52
    const/4 v6, 0x2

    .line 176
    :goto_53
    iget-object v7, v0, Lcom/android/server/wm/DockedStackDividerController;->mTmpRect:Landroid/graphics/Rect;

    iget-object v8, v0, Lcom/android/server/wm/DockedStackDividerController;->mTmpRect2:Landroid/graphics/Rect;

    invoke-virtual {v0, v7, v8, v6, v5}, Lcom/android/server/wm/DockedStackDividerController;->getDockSide(Landroid/graphics/Rect;Landroid/graphics/Rect;II)I

    move-result v15

    .line 177
    iget-object v6, v0, Lcom/android/server/wm/DockedStackDividerController;->mTmpRect:Landroid/graphics/Rect;

    .line 178
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/DockedStackDividerController;->getContentWidth()I

    move-result v7

    .line 177
    invoke-static {v6, v15, v7}, Lcom/android/internal/policy/DockedDividerUtils;->calculatePositionForBounds(Landroid/graphics/Rect;II)I

    move-result v6

    .line 180
    iget-object v7, v0, Lcom/android/server/wm/DockedStackDividerController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v7, v5}, Lcom/android/server/wm/DisplayContent;->calculateDisplayCutoutForRotation(I)Lcom/android/server/wm/utils/WmDisplayCutout;

    move-result-object v7

    .line 181
    invoke-virtual {v7}, Lcom/android/server/wm/utils/WmDisplayCutout;->getDisplayCutout()Landroid/view/DisplayCutout;

    move-result-object v10

    .line 185
    iget-object v7, v0, Lcom/android/server/wm/DockedStackDividerController;->mSnapAlgorithmForRotation:[Lcom/android/internal/policy/DividerSnapAlgorithm;

    aget-object v7, v7, v5

    .line 186
    invoke-virtual {v7, v6}, Lcom/android/internal/policy/DividerSnapAlgorithm;->calculateNonDismissingSnapTarget(I)Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;

    move-result-object v6

    iget v14, v6, Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;->position:I

    .line 187
    iget-object v6, v0, Lcom/android/server/wm/DockedStackDividerController;->mTmpRect:Landroid/graphics/Rect;

    iget-object v7, v0, Lcom/android/server/wm/DockedStackDividerController;->mTmpRect2:Landroid/graphics/Rect;

    .line 188
    invoke-virtual {v7}, Landroid/graphics/Rect;->width()I

    move-result v17

    iget-object v7, v0, Lcom/android/server/wm/DockedStackDividerController;->mTmpRect2:Landroid/graphics/Rect;

    invoke-virtual {v7}, Landroid/graphics/Rect;->height()I

    move-result v18

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/DockedStackDividerController;->getContentWidth()I

    move-result v19

    .line 187
    move-object/from16 v16, v6

    invoke-static/range {v14 .. v19}, Lcom/android/internal/policy/DockedDividerUtils;->calculateBoundsForPosition(IILandroid/graphics/Rect;III)V

    .line 189
    iget-object v6, v0, Lcom/android/server/wm/DockedStackDividerController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v6}, Lcom/android/server/wm/DisplayContent;->getDisplayPolicy()Lcom/android/server/wm/DisplayPolicy;

    move-result-object v6

    iget-object v7, v0, Lcom/android/server/wm/DockedStackDividerController;->mTmpRect2:Landroid/graphics/Rect;

    invoke-virtual {v7}, Landroid/graphics/Rect;->width()I

    move-result v8

    iget-object v7, v0, Lcom/android/server/wm/DockedStackDividerController;->mTmpRect2:Landroid/graphics/Rect;

    .line 190
    invoke-virtual {v7}, Landroid/graphics/Rect;->height()I

    move-result v9

    iget-object v11, v0, Lcom/android/server/wm/DockedStackDividerController;->mTmpRect3:Landroid/graphics/Rect;

    .line 189
    move v7, v5

    invoke-virtual/range {v6 .. v11}, Lcom/android/server/wm/DisplayPolicy;->getStableInsetsLw(IIILandroid/view/DisplayCutout;Landroid/graphics/Rect;)V

    .line 191
    iget-object v6, v0, Lcom/android/server/wm/DockedStackDividerController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v7, v0, Lcom/android/server/wm/DockedStackDividerController;->mTmpRect2:Landroid/graphics/Rect;

    iget-object v8, v0, Lcom/android/server/wm/DockedStackDividerController;->mTmpRect3:Landroid/graphics/Rect;

    iget-object v9, v0, Lcom/android/server/wm/DockedStackDividerController;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v6, v7, v8, v9}, Lcom/android/server/wm/WindowManagerService;->intersectDisplayInsetBounds(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 192
    iget-object v6, v0, Lcom/android/server/wm/DockedStackDividerController;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v6}, Landroid/graphics/Rect;->width()I

    move-result v6

    invoke-static {v6, v12}, Ljava/lang/Math;->min(II)I

    move-result v12

    .line 166
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_17

    .line 194
    :cond_c1
    int-to-float v1, v12

    iget-object v0, v0, Lcom/android/server/wm/DockedStackDividerController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    div-float/2addr v1, v0

    float-to-int v0, v1

    return v0
.end method

.method getTouchRegion(Landroid/graphics/Rect;)V
    .registers 4

    .line 357
    iget-object v0, p0, Lcom/android/server/wm/DockedStackDividerController;->mTouchRegion:Landroid/graphics/Rect;

    invoke-virtual {p1, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 358
    iget-object v0, p0, Lcom/android/server/wm/DockedStackDividerController;->mWindow:Lcom/android/server/wm/WindowState;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowState;->getFrameLw()Landroid/graphics/Rect;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Rect;->left:I

    iget-object v1, p0, Lcom/android/server/wm/DockedStackDividerController;->mWindow:Lcom/android/server/wm/WindowState;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowState;->getFrameLw()Landroid/graphics/Rect;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Rect;->top:I

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Rect;->offset(II)V

    .line 359
    return-void
.end method

.method getWindow()Lcom/android/server/wm/WindowState;
    .registers 2

    .line 1017
    iget-object v0, p0, Lcom/android/server/wm/DockedStackDividerController;->mWindow:Lcom/android/server/wm/WindowState;

    return-object v0
.end method

.method isHomeStackResizable()Z
    .registers 3

    .line 261
    iget-object v0, p0, Lcom/android/server/wm/DockedStackDividerController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->getHomeStack()Lcom/android/server/wm/TaskStack;

    move-result-object v0

    .line 262
    const/4 v1, 0x0

    if-nez v0, :cond_a

    .line 263
    return v1

    .line 265
    :cond_a
    invoke-virtual {v0}, Lcom/android/server/wm/TaskStack;->findHomeTask()Lcom/android/server/wm/Task;

    move-result-object v0

    .line 266
    if-eqz v0, :cond_17

    invoke-virtual {v0}, Lcom/android/server/wm/Task;->isResizeable()Z

    move-result v0

    if-eqz v0, :cond_17

    const/4 v1, 0x1

    :cond_17
    return v1
.end method

.method isImeHideRequested()Z
    .registers 2

    .line 555
    iget-boolean v0, p0, Lcom/android/server/wm/DockedStackDividerController;->mImeHideRequested:Z

    return v0
.end method

.method isMinimizedDock()Z
    .registers 2

    .line 708
    iget-boolean v0, p0, Lcom/android/server/wm/DockedStackDividerController;->mMinimizedDock:Z

    return v0
.end method

.method isResizing()Z
    .registers 2

    .line 330
    iget-boolean v0, p0, Lcom/android/server/wm/DockedStackDividerController;->mResizing:Z

    return v0
.end method

.method public synthetic lambda$startImeAdjustAnimation$0$DockedStackDividerController(ZZ)V
    .registers 10

    .line 854
    iget-object v0, p0, Lcom/android/server/wm/DockedStackDividerController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_5
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 855
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/wm/DockedStackDividerController;->mAnimationStartDelayed:Z

    .line 856
    iget-object v2, p0, Lcom/android/server/wm/DockedStackDividerController;->mDelayedImeWin:Lcom/android/server/wm/WindowState;

    if-eqz v2, :cond_14

    .line 857
    iget-object v2, p0, Lcom/android/server/wm/DockedStackDividerController;->mDelayedImeWin:Lcom/android/server/wm/WindowState;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowState;->endDelayingAnimationStart()V

    .line 861
    :cond_14
    const-wide/16 v2, 0x0

    .line 862
    iget-boolean v4, p0, Lcom/android/server/wm/DockedStackDividerController;->mAdjustedForIme:Z

    if-ne v4, p1, :cond_21

    iget-boolean v4, p0, Lcom/android/server/wm/DockedStackDividerController;->mAdjustedForDivider:Z

    if-ne v4, p2, :cond_21

    .line 864
    const-wide/16 v2, 0x118

    goto :goto_53

    .line 866
    :cond_21
    const-string v4, "WindowManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "IME adjust changed while waiting for drawn: adjustedForIme="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, " adjustedForDivider="

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, " mAdjustedForIme="

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p1, p0, Lcom/android/server/wm/DockedStackDividerController;->mAdjustedForIme:Z

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, " mAdjustedForDivider="

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p1, p0, Lcom/android/server/wm/DockedStackDividerController;->mAdjustedForDivider:Z

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v4, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 872
    :goto_53
    iget-boolean p1, p0, Lcom/android/server/wm/DockedStackDividerController;->mAdjustedForIme:Z

    if-nez p1, :cond_5b

    iget-boolean p1, p0, Lcom/android/server/wm/DockedStackDividerController;->mAdjustedForDivider:Z

    if-eqz p1, :cond_5c

    :cond_5b
    const/4 v1, 0x1

    :cond_5c
    invoke-direct {p0, v1, v2, v3}, Lcom/android/server/wm/DockedStackDividerController;->notifyAdjustedForImeChanged(ZJ)V

    .line 874
    monitor-exit v0
    :try_end_60
    .catchall {:try_start_5 .. :try_end_60} :catchall_64

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 875
    return-void

    .line 874
    :catchall_64
    move-exception p1

    :try_start_65
    monitor-exit v0
    :try_end_66
    .catchall {:try_start_65 .. :try_end_66} :catchall_64

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p1
.end method

.method notifyAppTransitionStarting(Landroid/util/ArraySet;I)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArraySet<",
            "Lcom/android/server/wm/AppWindowToken;",
            ">;I)V"
        }
    .end annotation

    .line 673
    iget-boolean v0, p0, Lcom/android/server/wm/DockedStackDividerController;->mMinimizedDock:Z

    .line 674
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/android/server/wm/DockedStackDividerController;->checkMinimizeChanged(Z)V

    .line 682
    if-eqz v0, :cond_2e

    iget-boolean v0, p0, Lcom/android/server/wm/DockedStackDividerController;->mMinimizedDock:Z

    if-eqz v0, :cond_2e

    invoke-direct {p0, p1}, Lcom/android/server/wm/DockedStackDividerController;->containsAppInDockedStack(Landroid/util/ArraySet;)Z

    move-result p1

    if-eqz p1, :cond_2e

    if-eqz p2, :cond_2e

    .line 684
    invoke-static {p2}, Lcom/android/server/wm/AppTransition;->isKeyguardGoingAwayTransit(I)Z

    move-result p1

    if-nez p1, :cond_2e

    .line 685
    iget-object p1, p0, Lcom/android/server/wm/DockedStackDividerController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object p1, p1, Lcom/android/server/wm/WindowManagerService;->mAtmInternal:Lcom/android/server/wm/ActivityTaskManagerInternal;

    iget-object p2, p0, Lcom/android/server/wm/DockedStackDividerController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget p2, p2, Lcom/android/server/wm/WindowManagerService;->mCurrentUserId:I

    invoke-virtual {p1, p2}, Lcom/android/server/wm/ActivityTaskManagerInternal;->isRecentsComponentHomeActivity(I)Z

    move-result p1

    if-eqz p1, :cond_29

    goto :goto_2e

    .line 689
    :cond_29
    iget-object p1, p0, Lcom/android/server/wm/DockedStackDividerController;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {p1}, Lcom/android/server/wm/WindowManagerService;->showRecentApps()V

    .line 692
    :cond_2e
    :goto_2e
    return-void
.end method

.method notifyAppVisibilityChanged()V
    .registers 2

    .line 669
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/server/wm/DockedStackDividerController;->checkMinimizeChanged(Z)V

    .line 670
    return-void
.end method

.method notifyDockSideChanged(I)V
    .registers 7

    .line 589
    iget-object v0, p0, Lcom/android/server/wm/DockedStackDividerController;->mDockedStackListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v0

    .line 590
    const/4 v1, 0x0

    :goto_7
    if-ge v1, v0, :cond_20

    .line 591
    iget-object v2, p0, Lcom/android/server/wm/DockedStackDividerController;->mDockedStackListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v2, v1}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v2

    check-cast v2, Landroid/view/IDockedStackListener;

    .line 593
    :try_start_11
    invoke-interface {v2, p1}, Landroid/view/IDockedStackListener;->onDockSideChanged(I)V
    :try_end_14
    .catch Landroid/os/RemoteException; {:try_start_11 .. :try_end_14} :catch_15

    .line 596
    goto :goto_1d

    .line 594
    :catch_15
    move-exception v2

    .line 595
    const-string v3, "WindowManager"

    const-string v4, "Error delivering dock side changed event."

    invoke-static {v3, v4, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 590
    :goto_1d
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 598
    :cond_20
    iget-object p1, p0, Lcom/android/server/wm/DockedStackDividerController;->mDockedStackListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {p1}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 599
    return-void
.end method

.method notifyDockedStackExistsChanged(Z)V
    .registers 8

    .line 504
    iget-object v0, p0, Lcom/android/server/wm/DockedStackDividerController;->mDockedStackListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v0

    .line 505
    const/4 v1, 0x0

    move v2, v1

    :goto_8
    if-ge v2, v0, :cond_21

    .line 506
    iget-object v3, p0, Lcom/android/server/wm/DockedStackDividerController;->mDockedStackListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3, v2}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v3

    check-cast v3, Landroid/view/IDockedStackListener;

    .line 508
    :try_start_12
    invoke-interface {v3, p1}, Landroid/view/IDockedStackListener;->onDockedStackExistsChanged(Z)V
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_12 .. :try_end_15} :catch_16

    .line 511
    goto :goto_1e

    .line 509
    :catch_16
    move-exception v3

    .line 510
    const-string v4, "WindowManager"

    const-string v5, "Error delivering docked stack exists changed event."

    invoke-static {v4, v5, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 505
    :goto_1e
    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    .line 513
    :cond_21
    iget-object v0, p0, Lcom/android/server/wm/DockedStackDividerController;->mDockedStackListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 514
    if-eqz p1, :cond_47

    .line 515
    const-class p1, Lcom/android/server/inputmethod/InputMethodManagerInternal;

    .line 516
    invoke-static {p1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/inputmethod/InputMethodManagerInternal;

    .line 517
    if-eqz p1, :cond_38

    .line 521
    invoke-virtual {p1}, Lcom/android/server/inputmethod/InputMethodManagerInternal;->hideCurrentInputMethod()V

    .line 522
    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/android/server/wm/DockedStackDividerController;->mImeHideRequested:Z

    .line 527
    :cond_38
    iget-object p1, p0, Lcom/android/server/wm/DockedStackDividerController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {p1}, Lcom/android/server/wm/DisplayContent;->getSplitScreenPrimaryStackIgnoringVisibility()Lcom/android/server/wm/TaskStack;

    move-result-object p1

    .line 528
    iget-object v0, p0, Lcom/android/server/wm/DockedStackDividerController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {p1, v0}, Lcom/android/server/wm/TaskStack;->getDockSideForDisplay(Lcom/android/server/wm/DisplayContent;)I

    move-result p1

    iput p1, p0, Lcom/android/server/wm/DockedStackDividerController;->mOriginalDockedSide:I

    .line 529
    return-void

    .line 531
    :cond_47
    const/4 p1, -0x1

    iput p1, p0, Lcom/android/server/wm/DockedStackDividerController;->mOriginalDockedSide:I

    .line 532
    invoke-direct {p0, v1, v1}, Lcom/android/server/wm/DockedStackDividerController;->setMinimizedDockedStack(ZZ)V

    .line 534
    iget-object p1, p0, Lcom/android/server/wm/DockedStackDividerController;->mDimmedStack:Lcom/android/server/wm/TaskStack;

    if-eqz p1, :cond_57

    .line 535
    invoke-virtual {p1}, Lcom/android/server/wm/TaskStack;->stopDimming()V

    .line 536
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/server/wm/DockedStackDividerController;->mDimmedStack:Lcom/android/server/wm/TaskStack;

    .line 538
    :cond_57
    return-void
.end method

.method onConfigurationChanged()V
    .registers 1

    .line 326
    invoke-direct {p0}, Lcom/android/server/wm/DockedStackDividerController;->loadDimens()V

    .line 327
    return-void
.end method

.method positionDockedStackedDivider(Landroid/graphics/Rect;)V
    .registers 7

    .line 419
    iget-object v0, p0, Lcom/android/server/wm/DockedStackDividerController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->getSplitScreenPrimaryStackIgnoringVisibility()Lcom/android/server/wm/TaskStack;

    move-result-object v0

    .line 420
    if-nez v0, :cond_e

    .line 426
    iget-object v0, p0, Lcom/android/server/wm/DockedStackDividerController;->mLastRect:Landroid/graphics/Rect;

    invoke-virtual {p1, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 427
    return-void

    .line 429
    :cond_e
    iget-object v1, p0, Lcom/android/server/wm/DockedStackDividerController;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Lcom/android/server/wm/TaskStack;->getDimBounds(Landroid/graphics/Rect;)V

    .line 431
    invoke-virtual {v0}, Lcom/android/server/wm/TaskStack;->getDockSide()I

    move-result v0

    .line 432
    const/4 v1, 0x1

    if-eq v0, v1, :cond_77

    const/4 v1, 0x2

    if-eq v0, v1, :cond_5a

    const/4 v1, 0x3

    if-eq v0, v1, :cond_3f

    const/4 v1, 0x4

    if-eq v0, v1, :cond_24

    goto :goto_92

    .line 446
    :cond_24
    iget v0, p1, Landroid/graphics/Rect;->left:I

    iget-object v1, p0, Lcom/android/server/wm/DockedStackDividerController;->mTmpRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v2

    sub-int/2addr v1, v2

    iget v2, p0, Lcom/android/server/wm/DockedStackDividerController;->mDividerInsets:I

    add-int/2addr v1, v2

    iget v2, p1, Landroid/graphics/Rect;->right:I

    iget-object v3, p0, Lcom/android/server/wm/DockedStackDividerController;->mTmpRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    iget v4, p0, Lcom/android/server/wm/DockedStackDividerController;->mDividerInsets:I

    add-int/2addr v3, v4

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_92

    .line 442
    :cond_3f
    iget-object v0, p0, Lcom/android/server/wm/DockedStackDividerController;->mTmpRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v1

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/android/server/wm/DockedStackDividerController;->mDividerInsets:I

    add-int/2addr v0, v1

    iget v1, p1, Landroid/graphics/Rect;->top:I

    iget-object v2, p0, Lcom/android/server/wm/DockedStackDividerController;->mTmpRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    iget v3, p0, Lcom/android/server/wm/DockedStackDividerController;->mDividerInsets:I

    add-int/2addr v2, v3

    iget v3, p1, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Rect;->set(IIII)V

    .line 444
    goto :goto_92

    .line 438
    :cond_5a
    iget v0, p1, Landroid/graphics/Rect;->left:I

    iget-object v1, p0, Lcom/android/server/wm/DockedStackDividerController;->mTmpRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    iget v2, p0, Lcom/android/server/wm/DockedStackDividerController;->mDividerInsets:I

    sub-int/2addr v1, v2

    iget-object v2, p0, Lcom/android/server/wm/DockedStackDividerController;->mTmpRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->right:I

    iget-object v3, p0, Lcom/android/server/wm/DockedStackDividerController;->mTmpRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    .line 439
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v4

    add-int/2addr v3, v4

    iget v4, p0, Lcom/android/server/wm/DockedStackDividerController;->mDividerInsets:I

    sub-int/2addr v3, v4

    .line 438
    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Rect;->set(IIII)V

    .line 440
    goto :goto_92

    .line 434
    :cond_77
    iget-object v0, p0, Lcom/android/server/wm/DockedStackDividerController;->mTmpRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->right:I

    iget v1, p0, Lcom/android/server/wm/DockedStackDividerController;->mDividerInsets:I

    sub-int/2addr v0, v1

    iget v1, p1, Landroid/graphics/Rect;->top:I

    iget-object v2, p0, Lcom/android/server/wm/DockedStackDividerController;->mTmpRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->right:I

    .line 435
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v3

    add-int/2addr v2, v3

    iget v3, p0, Lcom/android/server/wm/DockedStackDividerController;->mDividerInsets:I

    sub-int/2addr v2, v3

    iget v3, p1, Landroid/graphics/Rect;->bottom:I

    .line 434
    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Rect;->set(IIII)V

    .line 436
    nop

    .line 450
    :goto_92
    iget-object v0, p0, Lcom/android/server/wm/DockedStackDividerController;->mLastRect:Landroid/graphics/Rect;

    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 451
    return-void
.end method

.method reevaluateVisibility(Z)V
    .registers 5

    .line 372
    iget-object v0, p0, Lcom/android/server/wm/DockedStackDividerController;->mWindow:Lcom/android/server/wm/WindowState;

    if-nez v0, :cond_5

    .line 373
    return-void

    .line 375
    :cond_5
    iget-object v0, p0, Lcom/android/server/wm/DockedStackDividerController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->getSplitScreenPrimaryStackIgnoringVisibility()Lcom/android/server/wm/TaskStack;

    move-result-object v0

    .line 378
    const/4 v1, 0x0

    if-eqz v0, :cond_10

    const/4 v0, 0x1

    goto :goto_11

    :cond_10
    move v0, v1

    .line 379
    :goto_11
    iget-boolean v2, p0, Lcom/android/server/wm/DockedStackDividerController;->mLastVisibility:Z

    if-ne v2, v0, :cond_18

    if-nez p1, :cond_18

    .line 380
    return-void

    .line 382
    :cond_18
    iput-boolean v0, p0, Lcom/android/server/wm/DockedStackDividerController;->mLastVisibility:Z

    .line 383
    invoke-direct {p0, v0}, Lcom/android/server/wm/DockedStackDividerController;->notifyDockedDividerVisibilityChanged(Z)V

    .line 384
    if-nez v0, :cond_23

    .line 385
    const/4 p1, 0x0

    invoke-virtual {p0, v1, v1, p1}, Lcom/android/server/wm/DockedStackDividerController;->setResizeDimLayer(ZIF)V

    .line 387
    :cond_23
    return-void
.end method

.method registerDockedStackListener(Landroid/view/IDockedStackListener;)V
    .registers 4

    .line 615
    iget-object v0, p0, Lcom/android/server/wm/DockedStackDividerController;->mDockedStackListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0, p1}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;)Z

    .line 616
    invoke-direct {p0}, Lcom/android/server/wm/DockedStackDividerController;->wasVisible()Z

    move-result p1

    invoke-direct {p0, p1}, Lcom/android/server/wm/DockedStackDividerController;->notifyDockedDividerVisibilityChanged(Z)V

    .line 617
    iget-object p1, p0, Lcom/android/server/wm/DockedStackDividerController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 618
    invoke-virtual {p1}, Lcom/android/server/wm/DisplayContent;->getSplitScreenPrimaryStackIgnoringVisibility()Lcom/android/server/wm/TaskStack;

    move-result-object p1

    const/4 v0, 0x0

    if-eqz p1, :cond_17

    const/4 p1, 0x1

    goto :goto_18

    :cond_17
    move p1, v0

    .line 617
    :goto_18
    invoke-virtual {p0, p1}, Lcom/android/server/wm/DockedStackDividerController;->notifyDockedStackExistsChanged(Z)V

    .line 619
    iget-boolean p1, p0, Lcom/android/server/wm/DockedStackDividerController;->mMinimizedDock:Z

    .line 620
    invoke-virtual {p0}, Lcom/android/server/wm/DockedStackDividerController;->isHomeStackResizable()Z

    move-result v1

    .line 619
    invoke-direct {p0, p1, v0, v1}, Lcom/android/server/wm/DockedStackDividerController;->notifyDockedStackMinimizedChanged(ZZZ)V

    .line 621
    iget-boolean p1, p0, Lcom/android/server/wm/DockedStackDividerController;->mAdjustedForIme:Z

    const-wide/16 v0, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/android/server/wm/DockedStackDividerController;->notifyAdjustedForImeChanged(ZJ)V

    .line 623
    return-void
.end method

.method resetImeHideRequested()V
    .registers 2

    .line 544
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/wm/DockedStackDividerController;->mImeHideRequested:Z

    .line 545
    return-void
.end method

.method setAdjustedForIme(ZZZLcom/android/server/wm/WindowState;I)V
    .registers 8

    .line 396
    iget-boolean v0, p0, Lcom/android/server/wm/DockedStackDividerController;->mAdjustedForIme:Z

    if-ne v0, p1, :cond_e

    if-eqz p1, :cond_a

    iget v0, p0, Lcom/android/server/wm/DockedStackDividerController;->mImeHeight:I

    if-ne v0, p5, :cond_e

    :cond_a
    iget-boolean v0, p0, Lcom/android/server/wm/DockedStackDividerController;->mAdjustedForDivider:Z

    if-eq v0, p2, :cond_32

    .line 398
    :cond_e
    const/4 v0, 0x0

    if-eqz p3, :cond_22

    iget-boolean p3, p0, Lcom/android/server/wm/DockedStackDividerController;->mAnimatingForMinimizedDockedStack:Z

    if-nez p3, :cond_22

    .line 401
    iget-boolean p3, p0, Lcom/android/server/wm/DockedStackDividerController;->mMinimizedDock:Z

    .line 402
    invoke-virtual {p0}, Lcom/android/server/wm/DockedStackDividerController;->isHomeStackResizable()Z

    move-result v1

    .line 401
    invoke-direct {p0, p3, v0, v1}, Lcom/android/server/wm/DockedStackDividerController;->notifyDockedStackMinimizedChanged(ZZZ)V

    .line 403
    invoke-direct {p0, p1, p2, p4}, Lcom/android/server/wm/DockedStackDividerController;->startImeAdjustAnimation(ZZLcom/android/server/wm/WindowState;)V

    goto :goto_2c

    .line 406
    :cond_22
    if-nez p1, :cond_26

    if-eqz p2, :cond_27

    :cond_26
    const/4 v0, 0x1

    :cond_27
    const-wide/16 p3, 0x0

    invoke-direct {p0, v0, p3, p4}, Lcom/android/server/wm/DockedStackDividerController;->notifyAdjustedForImeChanged(ZJ)V

    .line 408
    :goto_2c
    iput-boolean p1, p0, Lcom/android/server/wm/DockedStackDividerController;->mAdjustedForIme:Z

    .line 409
    iput p5, p0, Lcom/android/server/wm/DockedStackDividerController;->mImeHeight:I

    .line 410
    iput-boolean p2, p0, Lcom/android/server/wm/DockedStackDividerController;->mAdjustedForDivider:Z

    .line 412
    :cond_32
    return-void
.end method

.method setResizeDimLayer(ZIF)V
    .registers 6

    .line 633
    const/4 v0, 0x0

    if-eqz p2, :cond_a

    .line 634
    iget-object v1, p0, Lcom/android/server/wm/DockedStackDividerController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v1, p2}, Lcom/android/server/wm/DisplayContent;->getTopStackInWindowingMode(I)Lcom/android/server/wm/TaskStack;

    move-result-object p2

    goto :goto_b

    .line 635
    :cond_a
    move-object p2, v0

    .line 636
    :goto_b
    iget-object v1, p0, Lcom/android/server/wm/DockedStackDividerController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v1}, Lcom/android/server/wm/DisplayContent;->getSplitScreenPrimaryStack()Lcom/android/server/wm/TaskStack;

    move-result-object v1

    .line 637
    if-eqz p1, :cond_19

    if-eqz p2, :cond_19

    if-eqz v1, :cond_19

    const/4 p1, 0x1

    goto :goto_1a

    :cond_19
    const/4 p1, 0x0

    .line 641
    :goto_1a
    iget-object v1, p0, Lcom/android/server/wm/DockedStackDividerController;->mDimmedStack:Lcom/android/server/wm/TaskStack;

    if-eqz v1, :cond_25

    if-eq v1, p2, :cond_25

    .line 642
    invoke-virtual {v1}, Lcom/android/server/wm/TaskStack;->stopDimming()V

    .line 643
    iput-object v0, p0, Lcom/android/server/wm/DockedStackDividerController;->mDimmedStack:Lcom/android/server/wm/TaskStack;

    .line 646
    :cond_25
    if-eqz p1, :cond_2c

    .line 647
    iput-object p2, p0, Lcom/android/server/wm/DockedStackDividerController;->mDimmedStack:Lcom/android/server/wm/TaskStack;

    .line 648
    invoke-virtual {p2, p3}, Lcom/android/server/wm/TaskStack;->dim(F)V

    .line 650
    :cond_2c
    if-nez p1, :cond_35

    if-eqz p2, :cond_35

    .line 651
    iput-object v0, p0, Lcom/android/server/wm/DockedStackDividerController;->mDimmedStack:Lcom/android/server/wm/TaskStack;

    .line 652
    invoke-virtual {p2}, Lcom/android/server/wm/TaskStack;->stopDimming()V

    .line 654
    :cond_35
    return-void
.end method

.method setResizing(Z)V
    .registers 3

    .line 346
    iget-boolean v0, p0, Lcom/android/server/wm/DockedStackDividerController;->mResizing:Z

    if-eq v0, p1, :cond_9

    .line 347
    iput-boolean p1, p0, Lcom/android/server/wm/DockedStackDividerController;->mResizing:Z

    .line 348
    invoke-direct {p0}, Lcom/android/server/wm/DockedStackDividerController;->resetDragResizingChangeReported()V

    .line 350
    :cond_9
    return-void
.end method

.method setTouchRegion(Landroid/graphics/Rect;)V
    .registers 3

    .line 353
    iget-object v0, p0, Lcom/android/server/wm/DockedStackDividerController;->mTouchRegion:Landroid/graphics/Rect;

    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 354
    return-void
.end method

.method setWindow(Lcom/android/server/wm/WindowState;)V
    .registers 2

    .line 367
    iput-object p1, p0, Lcom/android/server/wm/DockedStackDividerController;->mWindow:Lcom/android/server/wm/WindowState;

    .line 368
    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/android/server/wm/DockedStackDividerController;->reevaluateVisibility(Z)V

    .line 369
    return-void
.end method

.method public toShortString()Ljava/lang/String;
    .registers 2

    .line 1013
    const-string v0, "WindowManager"

    return-object v0
.end method

.method writeToProto(Landroid/util/proto/ProtoOutputStream;J)V
    .registers 7

    .line 1029
    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide p2

    .line 1030
    iget-boolean v0, p0, Lcom/android/server/wm/DockedStackDividerController;->mMinimizedDock:Z

    const-wide v1, 0x10800000001L

    invoke-virtual {p1, v1, v2, v0}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 1031
    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 1032
    return-void
.end method
