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

    .line 97
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
    .registers 5
    .param p1, "service"  # Lcom/android/server/wm/WindowManagerService;
    .param p2, "displayContent"  # Lcom/android/server/wm/DisplayContent;

    .line 149
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 114
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/DockedStackDividerController;->mTmpRect:Landroid/graphics/Rect;

    .line 115
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/DockedStackDividerController;->mTmpRect2:Landroid/graphics/Rect;

    .line 116
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/DockedStackDividerController;->mTmpRect3:Landroid/graphics/Rect;

    .line 117
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/DockedStackDividerController;->mLastRect:Landroid/graphics/Rect;

    .line 118
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/wm/DockedStackDividerController;->mLastVisibility:Z

    .line 119
    new-instance v0, Landroid/os/RemoteCallbackList;

    invoke-direct {v0}, Landroid/os/RemoteCallbackList;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/DockedStackDividerController;->mDockedStackListeners:Landroid/os/RemoteCallbackList;

    .line 123
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/wm/DockedStackDividerController;->mOriginalDockedSide:I

    .line 133
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/DockedStackDividerController;->mTouchRegion:Landroid/graphics/Rect;

    .line 143
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/android/internal/policy/DividerSnapAlgorithm;

    iput-object v0, p0, Lcom/android/server/wm/DockedStackDividerController;->mSnapAlgorithmForRotation:[Lcom/android/internal/policy/DividerSnapAlgorithm;

    .line 145
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/DockedStackDividerController;->mLastDimLayerRect:Landroid/graphics/Rect;

    .line 150
    iput-object p1, p0, Lcom/android/server/wm/DockedStackDividerController;->mService:Lcom/android/server/wm/WindowManagerService;

    .line 151
    iput-object p2, p0, Lcom/android/server/wm/DockedStackDividerController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 152
    iget-object v0, p1, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    .line 153
    .local v0, "context":Landroid/content/Context;
    const v1, 0x10c000d

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/wm/DockedStackDividerController;->mMinimizedDockInterpolator:Landroid/view/animation/Interpolator;

    .line 155
    invoke-direct {p0}, Lcom/android/server/wm/DockedStackDividerController;->loadDimens()V

    .line 156
    return-void
.end method

.method private adjustMaximizeAmount(Lcom/android/server/wm/TaskStack;FF)F
    .registers 10
    .param p1, "stack"  # Lcom/android/server/wm/TaskStack;
    .param p2, "t"  # F
    .param p3, "naturalAmount"  # F

    .line 994
    iget v0, p0, Lcom/android/server/wm/DockedStackDividerController;->mMaximizeMeetFraction:F

    const/high16 v1, 0x3f800000  # 1.0f

    cmpl-float v0, v0, v1

    if-nez v0, :cond_9

    .line 995
    return p3

    .line 997
    :cond_9
    invoke-virtual {p1}, Lcom/android/server/wm/TaskStack;->getMinimizeDistance()I

    move-result v0

    .line 998
    .local v0, "minimizeDistance":I
    iget-object v2, p0, Lcom/android/server/wm/DockedStackDividerController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v2, v2, Lcom/android/server/wm/DisplayContent;->mAppTransition:Lcom/android/server/wm/AppTransition;

    invoke-virtual {v2}, Lcom/android/server/wm/AppTransition;->getLastClipRevealMaxTranslation()I

    move-result v2

    int-to-float v2, v2

    int-to-float v3, v0

    div-float/2addr v2, v3

    .line 1000
    .local v2, "startPrime":F
    iget v3, p0, Lcom/android/server/wm/DockedStackDividerController;->mAnimationTarget:F

    mul-float/2addr v3, p2

    sub-float v4, v1, p2

    mul-float/2addr v4, v2

    add-float/2addr v3, v4

    .line 1001
    .local v3, "amountPrime":F
    iget v4, p0, Lcom/android/server/wm/DockedStackDividerController;->mMaximizeMeetFraction:F

    div-float v4, p2, v4

    invoke-static {v4, v1}, Ljava/lang/Math;->min(FF)F

    move-result v4

    .line 1002
    .local v4, "t2":F
    mul-float v5, v3, v4

    sub-float/2addr v1, v4

    mul-float/2addr v1, p3

    add-float/2addr v5, v1

    return v5
.end method

.method private animateForIme(J)Z
    .registers 9
    .param p1, "now"  # J

    .line 919
    iget-boolean v0, p0, Lcom/android/server/wm/DockedStackDividerController;->mAnimationStarted:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_9

    iget-boolean v0, p0, Lcom/android/server/wm/DockedStackDividerController;->mAnimationStartDelayed:Z

    if-eqz v0, :cond_19

    .line 920
    :cond_9
    iput-boolean v1, p0, Lcom/android/server/wm/DockedStackDividerController;->mAnimationStarted:Z

    .line 921
    iput-wide p1, p0, Lcom/android/server/wm/DockedStackDividerController;->mAnimationStartTime:J

    .line 922
    const/high16 v0, 0x438c0000  # 280.0f

    iget-object v2, p0, Lcom/android/server/wm/DockedStackDividerController;->mService:Lcom/android/server/wm/WindowManagerService;

    .line 923
    invoke-virtual {v2}, Lcom/android/server/wm/WindowManagerService;->getWindowAnimationScaleLocked()F

    move-result v2

    mul-float/2addr v2, v0

    float-to-long v2, v2

    iput-wide v2, p0, Lcom/android/server/wm/DockedStackDividerController;->mAnimationDuration:J

    .line 925
    :cond_19
    iget-wide v2, p0, Lcom/android/server/wm/DockedStackDividerController;->mAnimationStartTime:J

    sub-long v2, p1, v2

    long-to-float v0, v2

    iget-wide v2, p0, Lcom/android/server/wm/DockedStackDividerController;->mAnimationDuration:J

    long-to-float v2, v2

    div-float/2addr v0, v2

    const/high16 v2, 0x3f800000  # 1.0f

    invoke-static {v2, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    .line 926
    .local v0, "t":F
    iget v3, p0, Lcom/android/server/wm/DockedStackDividerController;->mAnimationTarget:F

    cmpl-float v3, v3, v2

    if-nez v3, :cond_31

    sget-object v3, Lcom/android/server/wm/DockedStackDividerController;->IME_ADJUST_ENTRY_INTERPOLATOR:Landroid/view/animation/Interpolator;

    goto :goto_33

    :cond_31
    sget-object v3, Lcom/android/server/wm/AppTransition;->TOUCH_RESPONSE_INTERPOLATOR:Landroid/view/animation/Interpolator;

    .line 927
    :goto_33
    invoke-interface {v3, v0}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v0

    .line 928
    iget-object v3, p0, Lcom/android/server/wm/DockedStackDividerController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget v4, p0, Lcom/android/server/wm/DockedStackDividerController;->mAnimationTarget:F

    iget v5, p0, Lcom/android/server/wm/DockedStackDividerController;->mDividerAnimationTarget:F

    .line 929
    invoke-virtual {v3, v0, v4, v5}, Lcom/android/server/wm/DisplayContent;->animateForIme(FFF)Z

    move-result v3

    .line 930
    .local v3, "updated":Z
    if-eqz v3, :cond_4a

    .line 931
    iget-object v4, p0, Lcom/android/server/wm/DockedStackDividerController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v4, v4, Lcom/android/server/wm/WindowManagerService;->mWindowPlacerLocked:Lcom/android/server/wm/WindowSurfacePlacer;

    invoke-virtual {v4}, Lcom/android/server/wm/WindowSurfacePlacer;->performSurfacePlacement()V

    .line 933
    :cond_4a
    cmpl-float v2, v0, v2

    if-ltz v2, :cond_5a

    .line 934
    iget v1, p0, Lcom/android/server/wm/DockedStackDividerController;->mAnimationTarget:F

    iput v1, p0, Lcom/android/server/wm/DockedStackDividerController;->mLastAnimationProgress:F

    .line 935
    iget v1, p0, Lcom/android/server/wm/DockedStackDividerController;->mDividerAnimationTarget:F

    iput v1, p0, Lcom/android/server/wm/DockedStackDividerController;->mLastDividerProgress:F

    .line 936
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/wm/DockedStackDividerController;->mAnimatingForIme:Z

    .line 937
    return v1

    .line 939
    :cond_5a
    return v1
.end method

.method private animateForMinimizedDockedStack(J)Z
    .registers 8
    .param p1, "now"  # J

    .line 944
    iget-object v0, p0, Lcom/android/server/wm/DockedStackDividerController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->getSplitScreenPrimaryStackIgnoringVisibility()Lcom/android/server/wm/TaskStack;

    move-result-object v0

    .line 945
    .local v0, "stack":Lcom/android/server/wm/TaskStack;
    iget-boolean v1, p0, Lcom/android/server/wm/DockedStackDividerController;->mAnimationStarted:Z

    const/4 v2, 0x1

    if-nez v1, :cond_18

    .line 946
    iput-boolean v2, p0, Lcom/android/server/wm/DockedStackDividerController;->mAnimationStarted:Z

    .line 947
    iput-wide p1, p0, Lcom/android/server/wm/DockedStackDividerController;->mAnimationStartTime:J

    .line 948
    iget-boolean v1, p0, Lcom/android/server/wm/DockedStackDividerController;->mMinimizedDock:Z

    .line 949
    invoke-virtual {p0}, Lcom/android/server/wm/DockedStackDividerController;->isHomeStackResizable()Z

    move-result v3

    .line 948
    invoke-direct {p0, v1, v2, v3}, Lcom/android/server/wm/DockedStackDividerController;->notifyDockedStackMinimizedChanged(ZZZ)V

    .line 951
    :cond_18
    iget-wide v3, p0, Lcom/android/server/wm/DockedStackDividerController;->mAnimationStartTime:J

    sub-long v3, p1, v3

    long-to-float v1, v3

    iget-wide v3, p0, Lcom/android/server/wm/DockedStackDividerController;->mAnimationDuration:J

    long-to-float v3, v3

    div-float/2addr v1, v3

    const/high16 v3, 0x3f800000  # 1.0f

    invoke-static {v3, v1}, Ljava/lang/Math;->min(FF)F

    move-result v1

    .line 952
    .local v1, "t":F
    invoke-direct {p0}, Lcom/android/server/wm/DockedStackDividerController;->isAnimationMaximizing()Z

    move-result v4

    if-eqz v4, :cond_30

    sget-object v4, Lcom/android/server/wm/AppTransition;->TOUCH_RESPONSE_INTERPOLATOR:Landroid/view/animation/Interpolator;

    goto :goto_32

    :cond_30
    iget-object v4, p0, Lcom/android/server/wm/DockedStackDividerController;->mMinimizedDockInterpolator:Landroid/view/animation/Interpolator;

    .line 953
    :goto_32
    invoke-interface {v4, v1}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v1

    .line 954
    if-eqz v0, :cond_49

    .line 955
    invoke-direct {p0, v0, v1}, Lcom/android/server/wm/DockedStackDividerController;->getMinimizeAmount(Lcom/android/server/wm/TaskStack;F)F

    move-result v4

    invoke-virtual {v0, v4}, Lcom/android/server/wm/TaskStack;->setAdjustedForMinimizedDock(F)Z

    move-result v4

    if-eqz v4, :cond_49

    .line 956
    iget-object v4, p0, Lcom/android/server/wm/DockedStackDividerController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v4, v4, Lcom/android/server/wm/WindowManagerService;->mWindowPlacerLocked:Lcom/android/server/wm/WindowSurfacePlacer;

    invoke-virtual {v4}, Lcom/android/server/wm/WindowSurfacePlacer;->performSurfacePlacement()V

    .line 959
    :cond_49
    cmpl-float v3, v1, v3

    if-ltz v3, :cond_51

    .line 960
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/server/wm/DockedStackDividerController;->mAnimatingForMinimizedDockedStack:Z

    .line 961
    return v2

    .line 963
    :cond_51
    return v2
.end method

.method private clearImeAdjustAnimation()Z
    .registers 3

    .line 806
    iget-object v0, p0, Lcom/android/server/wm/DockedStackDividerController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->clearImeAdjustAnimation()Z

    move-result v0

    .line 807
    .local v0, "changed":Z
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/wm/DockedStackDividerController;->mAnimatingForIme:Z

    .line 808
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

    .line 697
    .local p1, "apps":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/wm/AppWindowToken;>;"
    invoke-virtual {p1}, Landroid/util/ArraySet;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    .local v0, "i":I
    :goto_6
    if-ltz v0, :cond_1e

    .line 698
    invoke-virtual {p1, v0}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/AppWindowToken;

    .line 699
    .local v2, "token":Lcom/android/server/wm/AppWindowToken;
    invoke-virtual {v2}, Lcom/android/server/wm/AppWindowToken;->getTask()Lcom/android/server/wm/Task;

    move-result-object v3

    if-eqz v3, :cond_1b

    invoke-virtual {v2}, Lcom/android/server/wm/AppWindowToken;->inSplitScreenPrimaryWindowingMode()Z

    move-result v3

    if-eqz v3, :cond_1b

    .line 700
    return v1

    .line 697
    .end local v2  # "token":Lcom/android/server/wm/AppWindowToken;
    :cond_1b
    add-int/lit8 v0, v0, -0x1

    goto :goto_6

    .line 703
    .end local v0  # "i":I
    :cond_1e
    const/4 v0, 0x0

    return v0
.end method

.method private getClipRevealMeetFraction(Lcom/android/server/wm/TaskStack;)F
    .registers 8
    .param p1, "stack"  # Lcom/android/server/wm/TaskStack;

    .line 1010
    invoke-direct {p0}, Lcom/android/server/wm/DockedStackDividerController;->isAnimationMaximizing()Z

    move-result v0

    const/high16 v1, 0x3f800000  # 1.0f

    if-eqz v0, :cond_41

    if-eqz p1, :cond_41

    iget-object v0, p0, Lcom/android/server/wm/DockedStackDividerController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v0, v0, Lcom/android/server/wm/DisplayContent;->mAppTransition:Lcom/android/server/wm/AppTransition;

    .line 1011
    invoke-virtual {v0}, Lcom/android/server/wm/AppTransition;->hadClipRevealAnimation()Z

    move-result v0

    if-nez v0, :cond_15

    goto :goto_41

    .line 1014
    :cond_15
    invoke-virtual {p1}, Lcom/android/server/wm/TaskStack;->getMinimizeDistance()I

    move-result v0

    .line 1015
    .local v0, "minimizeDistance":I
    iget-object v2, p0, Lcom/android/server/wm/DockedStackDividerController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v2, v2, Lcom/android/server/wm/DisplayContent;->mAppTransition:Lcom/android/server/wm/AppTransition;

    .line 1016
    invoke-virtual {v2}, Lcom/android/server/wm/AppTransition;->getLastClipRevealMaxTranslation()I

    move-result v2

    .line 1015
    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    int-to-float v2, v2

    int-to-float v3, v0

    div-float/2addr v2, v3

    .line 1017
    .local v2, "fraction":F
    const/4 v3, 0x0

    const v4, 0x3ecccccd  # 0.4f

    sub-float v5, v2, v4

    div-float/2addr v5, v4

    invoke-static {v1, v5}, Ljava/lang/Math;->min(FF)F

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->max(FF)F

    move-result v3

    .line 1019
    .local v3, "t":F
    const v4, 0x3f19999a  # 0.6f

    sub-float/2addr v1, v3

    const v5, 0x3ecccccc  # 0.39999998f

    mul-float/2addr v1, v5

    add-float/2addr v1, v4

    return v1

    .line 1012
    .end local v0  # "minimizeDistance":I
    .end local v2  # "fraction":F
    .end local v3  # "t":F
    :cond_41
    :goto_41
    return v1
.end method

.method private getMinimizeAmount(Lcom/android/server/wm/TaskStack;F)F
    .registers 5
    .param p1, "stack"  # Lcom/android/server/wm/TaskStack;
    .param p2, "t"  # F

    .line 979
    invoke-virtual {p0, p2}, Lcom/android/server/wm/DockedStackDividerController;->getInterpolatedAnimationValue(F)F

    move-result v0

    .line 980
    .local v0, "naturalAmount":F
    invoke-direct {p0}, Lcom/android/server/wm/DockedStackDividerController;->isAnimationMaximizing()Z

    move-result v1

    if-eqz v1, :cond_f

    .line 981
    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/wm/DockedStackDividerController;->adjustMaximizeAmount(Lcom/android/server/wm/TaskStack;FF)F

    move-result v1

    return v1

    .line 983
    :cond_f
    return v0
.end method

.method private getResizeDimLayer()I
    .registers 3

    .line 660
    iget-object v0, p0, Lcom/android/server/wm/DockedStackDividerController;->mWindow:Lcom/android/server/wm/WindowState;

    const/4 v1, 0x1

    if-eqz v0, :cond_9

    iget v0, v0, Lcom/android/server/wm/WindowState;->mLayer:I

    add-int/lit8 v1, v0, -0x1

    :cond_9
    return v1
.end method

.method private initSnapAlgorithmForRotations()V
    .registers 27

    .line 271
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/wm/DockedStackDividerController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v1}, Lcom/android/server/wm/DisplayContent;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    .line 274
    .local v1, "baseConfig":Landroid/content/res/Configuration;
    new-instance v2, Landroid/content/res/Configuration;

    invoke-direct {v2}, Landroid/content/res/Configuration;-><init>()V

    .line 275
    .local v2, "config":Landroid/content/res/Configuration;
    const/4 v3, 0x0

    .local v3, "rotation":I
    :goto_e
    const/4 v4, 0x4

    if-ge v3, v4, :cond_eb

    .line 276
    const/4 v10, 0x0

    const/4 v11, 0x1

    if-eq v3, v11, :cond_1b

    const/4 v4, 0x3

    if-ne v3, v4, :cond_19

    goto :goto_1b

    :cond_19
    move v4, v10

    goto :goto_1c

    :cond_1b
    :goto_1b
    move v4, v11

    :goto_1c
    move v12, v4

    .line 277
    .local v12, "rotated":Z
    if-eqz v12, :cond_24

    .line 278
    iget-object v4, v0, Lcom/android/server/wm/DockedStackDividerController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget v4, v4, Lcom/android/server/wm/DisplayContent;->mBaseDisplayHeight:I

    goto :goto_28

    .line 279
    :cond_24
    iget-object v4, v0, Lcom/android/server/wm/DockedStackDividerController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget v4, v4, Lcom/android/server/wm/DisplayContent;->mBaseDisplayWidth:I

    :goto_28
    move v15, v4

    .line 280
    .local v15, "dw":I
    if-eqz v12, :cond_30

    .line 281
    iget-object v4, v0, Lcom/android/server/wm/DockedStackDividerController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget v4, v4, Lcom/android/server/wm/DisplayContent;->mBaseDisplayWidth:I

    goto :goto_34

    .line 282
    :cond_30
    iget-object v4, v0, Lcom/android/server/wm/DockedStackDividerController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget v4, v4, Lcom/android/server/wm/DisplayContent;->mBaseDisplayHeight:I

    :goto_34
    move v14, v4

    .line 283
    .local v14, "dh":I
    iget-object v4, v0, Lcom/android/server/wm/DockedStackDividerController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 284
    invoke-virtual {v4, v3}, Lcom/android/server/wm/DisplayContent;->calculateDisplayCutoutForRotation(I)Lcom/android/server/wm/utils/WmDisplayCutout;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/server/wm/utils/WmDisplayCutout;->getDisplayCutout()Landroid/view/DisplayCutout;

    move-result-object v20

    .line 285
    .local v20, "displayCutout":Landroid/view/DisplayCutout;
    iget-object v4, v0, Lcom/android/server/wm/DockedStackDividerController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v4}, Lcom/android/server/wm/DisplayContent;->getDisplayPolicy()Lcom/android/server/wm/DisplayPolicy;

    move-result-object v21

    .line 286
    .local v21, "displayPolicy":Lcom/android/server/wm/DisplayPolicy;
    iget-object v9, v0, Lcom/android/server/wm/DockedStackDividerController;->mTmpRect:Landroid/graphics/Rect;

    move-object/from16 v4, v21

    move v5, v3

    move v6, v15

    move v7, v14

    move-object/from16 v8, v20

    invoke-virtual/range {v4 .. v9}, Lcom/android/server/wm/DisplayPolicy;->getStableInsetsLw(IIILandroid/view/DisplayCutout;Landroid/graphics/Rect;)V

    .line 287
    invoke-virtual {v2}, Landroid/content/res/Configuration;->unset()V

    .line 288
    if-gt v15, v14, :cond_58

    move v4, v11

    goto :goto_59

    :cond_58
    const/4 v4, 0x2

    :goto_59
    iput v4, v2, Landroid/content/res/Configuration;->orientation:I

    .line 290
    iget v8, v1, Landroid/content/res/Configuration;->uiMode:I

    move-object/from16 v4, v21

    move v5, v15

    move v6, v14

    move v7, v3

    move-object/from16 v9, v20

    invoke-virtual/range {v4 .. v9}, Lcom/android/server/wm/DisplayPolicy;->getNonDecorDisplayWidth(IIIILandroid/view/DisplayCutout;)I

    move-result v22

    .line 292
    .local v22, "appWidth":I
    iget v8, v1, Landroid/content/res/Configuration;->uiMode:I

    invoke-virtual/range {v4 .. v9}, Lcom/android/server/wm/DisplayPolicy;->getNonDecorDisplayHeight(IIIILandroid/view/DisplayCutout;)I

    move-result v23

    .line 294
    .local v23, "appHeight":I
    iget-object v9, v0, Lcom/android/server/wm/DockedStackDividerController;->mTmpRect:Landroid/graphics/Rect;

    move v5, v3

    move v6, v15

    move v7, v14

    move-object/from16 v8, v20

    invoke-virtual/range {v4 .. v9}, Lcom/android/server/wm/DisplayPolicy;->getNonDecorInsetsLw(IIILandroid/view/DisplayCutout;Landroid/graphics/Rect;)V

    .line 295
    iget-object v4, v0, Lcom/android/server/wm/DockedStackDividerController;->mTmpRect:Landroid/graphics/Rect;

    iget v13, v4, Landroid/graphics/Rect;->left:I

    .line 296
    .local v13, "leftInset":I
    iget-object v4, v0, Lcom/android/server/wm/DockedStackDividerController;->mTmpRect:Landroid/graphics/Rect;

    iget v9, v4, Landroid/graphics/Rect;->top:I

    .line 298
    .local v9, "topInset":I
    iget-object v4, v2, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    add-int v5, v13, v22

    add-int v6, v9, v23

    invoke-virtual {v4, v13, v9, v5, v6}, Landroid/app/WindowConfiguration;->setAppBounds(IIII)V

    .line 301
    iget-object v4, v0, Lcom/android/server/wm/DockedStackDividerController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v4}, Lcom/android/server/wm/DisplayContent;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    iget v8, v4, Landroid/util/DisplayMetrics;->density:F

    .line 302
    .local v8, "density":F
    iget v7, v1, Landroid/content/res/Configuration;->uiMode:I

    move-object/from16 v4, v21

    move v5, v15

    move v6, v14

    move/from16 v16, v7

    move v7, v3

    move/from16 v24, v8

    .end local v8  # "density":F
    .local v24, "density":F
    move/from16 v8, v16

    move/from16 v25, v9

    .end local v9  # "topInset":I
    .local v25, "topInset":I
    move-object/from16 v9, v20

    invoke-virtual/range {v4 .. v9}, Lcom/android/server/wm/DisplayPolicy;->getConfigDisplayWidth(IIIILandroid/view/DisplayCutout;)I

    move-result v4

    int-to-float v4, v4

    div-float v4, v4, v24

    float-to-int v4, v4

    iput v4, v2, Landroid/content/res/Configuration;->screenWidthDp:I

    .line 304
    iget v8, v1, Landroid/content/res/Configuration;->uiMode:I

    move-object/from16 v4, v21

    invoke-virtual/range {v4 .. v9}, Lcom/android/server/wm/DisplayPolicy;->getConfigDisplayHeight(IIIILandroid/view/DisplayCutout;)I

    move-result v4

    int-to-float v4, v4

    div-float v4, v4, v24

    float-to-int v4, v4

    iput v4, v2, Landroid/content/res/Configuration;->screenHeightDp:I

    .line 306
    iget-object v4, v0, Lcom/android/server/wm/DockedStackDividerController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v4, v4, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v2}, Landroid/content/Context;->createConfigurationContext(Landroid/content/res/Configuration;)Landroid/content/Context;

    move-result-object v4

    .line 307
    .local v4, "rotationContext":Landroid/content/Context;
    iget-object v5, v0, Lcom/android/server/wm/DockedStackDividerController;->mSnapAlgorithmForRotation:[Lcom/android/internal/policy/DividerSnapAlgorithm;

    new-instance v6, Lcom/android/internal/policy/DividerSnapAlgorithm;

    .line 308
    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/DockedStackDividerController;->getContentWidth()I

    move-result v17

    iget v8, v2, Landroid/content/res/Configuration;->orientation:I

    if-ne v8, v11, :cond_d5

    move/from16 v18, v11

    goto :goto_d7

    :cond_d5
    move/from16 v18, v10

    :goto_d7
    iget-object v8, v0, Lcom/android/server/wm/DockedStackDividerController;->mTmpRect:Landroid/graphics/Rect;

    move v9, v13

    .end local v13  # "leftInset":I
    .local v9, "leftInset":I
    move-object v13, v6

    move v10, v14

    .end local v14  # "dh":I
    .local v10, "dh":I
    move-object v14, v7

    move v7, v15

    .end local v15  # "dw":I
    .local v7, "dw":I
    move/from16 v16, v10

    move-object/from16 v19, v8

    invoke-direct/range {v13 .. v19}, Lcom/android/internal/policy/DividerSnapAlgorithm;-><init>(Landroid/content/res/Resources;IIIZLandroid/graphics/Rect;)V

    aput-object v6, v5, v3

    .line 275
    .end local v4  # "rotationContext":Landroid/content/Context;
    .end local v7  # "dw":I
    .end local v9  # "leftInset":I
    .end local v10  # "dh":I
    .end local v12  # "rotated":Z
    .end local v20  # "displayCutout":Landroid/view/DisplayCutout;
    .end local v21  # "displayPolicy":Lcom/android/server/wm/DisplayPolicy;
    .end local v22  # "appWidth":I
    .end local v23  # "appHeight":I
    .end local v24  # "density":F
    .end local v25  # "topInset":I
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_e

    .line 311
    .end local v3  # "rotation":I
    :cond_eb
    return-void
.end method

.method private isAnimationMaximizing()Z
    .registers 3

    .line 900
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
    .param p0, "dockSide"  # I
    .param p1, "originalDockSide"  # I
    .param p2, "navBarPosition"  # I
    .param p3, "navigationBarCanMove"  # Z
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 484
    const/4 v0, 0x2

    const/4 v1, 0x1

    if-ne p0, v0, :cond_5

    .line 485
    return v1

    .line 488
    :cond_5
    const/4 v2, 0x0

    if-eqz p3, :cond_14

    .line 490
    if-ne p0, v1, :cond_c

    if-eq p2, v0, :cond_13

    :cond_c
    const/4 v0, 0x3

    if-ne p0, v0, :cond_12

    if-ne p2, v1, :cond_12

    goto :goto_13

    :cond_12
    move v1, v2

    :cond_13
    :goto_13
    return v1

    .line 495
    :cond_14
    if-ne p0, p1, :cond_17

    .line 496
    return v1

    .line 500
    :cond_17
    if-ne p0, v1, :cond_1c

    if-ne p1, v0, :cond_1c

    goto :goto_1d

    :cond_1c
    move v1, v2

    :goto_1d
    return v1
.end method

.method private isHomeOrRecent(Lcom/android/server/wm/TaskStack;)Z
    .registers 3
    .param p1, "stack"  # Lcom/android/server/wm/TaskStack;

    .line 750
    if-eqz p1, :cond_10

    invoke-virtual {p1}, Lcom/android/server/wm/TaskStack;->isActivityTypeRecents()Z

    move-result v0

    if-nez v0, :cond_e

    invoke-virtual {p1}, Lcom/android/server/wm/TaskStack;->isActivityTypeHome()Z

    move-result v0

    if-eqz v0, :cond_10

    :cond_e
    const/4 v0, 0x1

    goto :goto_11

    :cond_10
    const/4 v0, 0x0

    :goto_11
    return v0
.end method

.method private isWithinDisplay(Lcom/android/server/wm/Task;)Z
    .registers 4
    .param p1, "task"  # Lcom/android/server/wm/Task;

    .line 755
    iget-object v0, p0, Lcom/android/server/wm/DockedStackDividerController;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {p1, v0}, Lcom/android/server/wm/Task;->getBounds(Landroid/graphics/Rect;)V

    .line 756
    iget-object v0, p0, Lcom/android/server/wm/DockedStackDividerController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v1, p0, Lcom/android/server/wm/DockedStackDividerController;->mTmpRect2:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Lcom/android/server/wm/DisplayContent;->getBounds(Landroid/graphics/Rect;)V

    .line 757
    iget-object v0, p0, Lcom/android/server/wm/DockedStackDividerController;->mTmpRect:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/android/server/wm/DockedStackDividerController;->mTmpRect2:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->intersect(Landroid/graphics/Rect;)Z

    move-result v0

    return v0
.end method

.method private loadDimens()V
    .registers 4

    .line 314
    iget-object v0, p0, Lcom/android/server/wm/DockedStackDividerController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    .line 315
    .local v0, "context":Landroid/content/Context;
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x10500f6

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/server/wm/DockedStackDividerController;->mDividerWindowWidth:I

    .line 317
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x10500f5

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/server/wm/DockedStackDividerController;->mDividerInsets:I

    .line 319
    iget-object v1, p0, Lcom/android/server/wm/DockedStackDividerController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 320
    invoke-virtual {v1}, Lcom/android/server/wm/DisplayContent;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    .line 319
    const/4 v2, 0x4

    invoke-static {v2, v1}, Lcom/android/server/wm/WindowManagerService;->dipToPixel(ILandroid/util/DisplayMetrics;)I

    move-result v1

    iput v1, p0, Lcom/android/server/wm/DockedStackDividerController;->mDividerWindowWidthInactive:I

    .line 321
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x1050219

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/server/wm/DockedStackDividerController;->mTaskHeightInMinimizedMode:I

    .line 323
    invoke-direct {p0}, Lcom/android/server/wm/DockedStackDividerController;->initSnapAlgorithmForRotations()V

    .line 324
    return-void
.end method

.method private notifyAdjustedForImeChanged(ZJ)V
    .registers 10
    .param p1, "adjustedForIme"  # Z
    .param p2, "animDuration"  # J

    .line 601
    iget-object v0, p0, Lcom/android/server/wm/DockedStackDividerController;->mDockedStackListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v0

    .line 602
    .local v0, "size":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_7
    if-ge v1, v0, :cond_20

    .line 603
    iget-object v2, p0, Lcom/android/server/wm/DockedStackDividerController;->mDockedStackListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v2, v1}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v2

    check-cast v2, Landroid/view/IDockedStackListener;

    .line 605
    .local v2, "listener":Landroid/view/IDockedStackListener;
    :try_start_11
    invoke-interface {v2, p1, p2, p3}, Landroid/view/IDockedStackListener;->onAdjustedForImeChanged(ZJ)V
    :try_end_14
    .catch Landroid/os/RemoteException; {:try_start_11 .. :try_end_14} :catch_15

    .line 608
    goto :goto_1d

    .line 606
    :catch_15
    move-exception v3

    .line 607
    .local v3, "e":Landroid/os/RemoteException;
    const-string v4, "WindowManager"

    const-string v5, "Error delivering adjusted for ime changed event."

    invoke-static {v4, v5, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 602
    .end local v2  # "listener":Landroid/view/IDockedStackListener;
    .end local v3  # "e":Landroid/os/RemoteException;
    :goto_1d
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 610
    .end local v1  # "i":I
    :cond_20
    iget-object v1, p0, Lcom/android/server/wm/DockedStackDividerController;->mDockedStackListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v1}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 611
    return-void
.end method

.method private notifyDockedDividerVisibilityChanged(Z)V
    .registers 8
    .param p1, "visible"  # Z

    .line 455
    iget-object v0, p0, Lcom/android/server/wm/DockedStackDividerController;->mDockedStackListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v0

    .line 456
    .local v0, "size":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_7
    if-ge v1, v0, :cond_20

    .line 457
    iget-object v2, p0, Lcom/android/server/wm/DockedStackDividerController;->mDockedStackListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v2, v1}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v2

    check-cast v2, Landroid/view/IDockedStackListener;

    .line 459
    .local v2, "listener":Landroid/view/IDockedStackListener;
    :try_start_11
    invoke-interface {v2, p1}, Landroid/view/IDockedStackListener;->onDividerVisibilityChanged(Z)V
    :try_end_14
    .catch Landroid/os/RemoteException; {:try_start_11 .. :try_end_14} :catch_15

    .line 462
    goto :goto_1d

    .line 460
    :catch_15
    move-exception v3

    .line 461
    .local v3, "e":Landroid/os/RemoteException;
    const-string v4, "WindowManager"

    const-string v5, "Error delivering divider visibility changed event."

    invoke-static {v4, v5, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 456
    .end local v2  # "listener":Landroid/view/IDockedStackListener;
    .end local v3  # "e":Landroid/os/RemoteException;
    :goto_1d
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 464
    .end local v1  # "i":I
    :cond_20
    iget-object v1, p0, Lcom/android/server/wm/DockedStackDividerController;->mDockedStackListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v1}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 465
    return-void
.end method

.method private notifyDockedStackMinimizedChanged(ZZZ)V
    .registers 12
    .param p1, "minimizedDock"  # Z
    .param p2, "animate"  # Z
    .param p3, "isHomeStackResizable"  # Z

    .line 561
    const-wide/16 v0, 0x0

    .line 562
    .local v0, "animDuration":J
    if-eqz p2, :cond_34

    .line 563
    iget-object v2, p0, Lcom/android/server/wm/DockedStackDividerController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 564
    invoke-virtual {v2}, Lcom/android/server/wm/DisplayContent;->getSplitScreenPrimaryStackIgnoringVisibility()Lcom/android/server/wm/TaskStack;

    move-result-object v2

    .line 565
    .local v2, "stack":Lcom/android/server/wm/TaskStack;
    invoke-direct {p0}, Lcom/android/server/wm/DockedStackDividerController;->isAnimationMaximizing()Z

    move-result v3

    if-eqz v3, :cond_19

    .line 566
    iget-object v3, p0, Lcom/android/server/wm/DockedStackDividerController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v3, v3, Lcom/android/server/wm/DisplayContent;->mAppTransition:Lcom/android/server/wm/AppTransition;

    invoke-virtual {v3}, Lcom/android/server/wm/AppTransition;->getLastClipRevealTransitionDuration()J

    move-result-wide v3

    goto :goto_1b

    .line 567
    :cond_19
    const-wide/16 v3, 0x150

    :goto_1b
    nop

    .line 568
    .local v3, "transitionDuration":J
    long-to-float v5, v3

    iget-object v6, p0, Lcom/android/server/wm/DockedStackDividerController;->mService:Lcom/android/server/wm/WindowManagerService;

    .line 569
    invoke-virtual {v6}, Lcom/android/server/wm/WindowManagerService;->getTransitionAnimationScaleLocked()F

    move-result v6

    mul-float/2addr v5, v6

    float-to-long v5, v5

    iput-wide v5, p0, Lcom/android/server/wm/DockedStackDividerController;->mAnimationDuration:J

    .line 570
    invoke-direct {p0, v2}, Lcom/android/server/wm/DockedStackDividerController;->getClipRevealMeetFraction(Lcom/android/server/wm/TaskStack;)F

    move-result v5

    iput v5, p0, Lcom/android/server/wm/DockedStackDividerController;->mMaximizeMeetFraction:F

    .line 571
    iget-wide v5, p0, Lcom/android/server/wm/DockedStackDividerController;->mAnimationDuration:J

    long-to-float v5, v5

    iget v6, p0, Lcom/android/server/wm/DockedStackDividerController;->mMaximizeMeetFraction:F

    mul-float/2addr v5, v6

    float-to-long v0, v5

    .line 573
    .end local v2  # "stack":Lcom/android/server/wm/TaskStack;
    .end local v3  # "transitionDuration":J
    :cond_34
    iget-object v2, p0, Lcom/android/server/wm/DockedStackDividerController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mAtmInternal:Lcom/android/server/wm/ActivityTaskManagerInternal;

    invoke-virtual {v2, p1}, Lcom/android/server/wm/ActivityTaskManagerInternal;->notifyDockedStackMinimizedChanged(Z)V

    .line 574
    iget-object v2, p0, Lcom/android/server/wm/DockedStackDividerController;->mDockedStackListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v2}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v2

    .line 575
    .local v2, "size":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_42
    if-ge v3, v2, :cond_5b

    .line 576
    iget-object v4, p0, Lcom/android/server/wm/DockedStackDividerController;->mDockedStackListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v4, v3}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v4

    check-cast v4, Landroid/view/IDockedStackListener;

    .line 578
    .local v4, "listener":Landroid/view/IDockedStackListener;
    :try_start_4c
    invoke-interface {v4, p1, v0, v1, p3}, Landroid/view/IDockedStackListener;->onDockedStackMinimizedChanged(ZJZ)V
    :try_end_4f
    .catch Landroid/os/RemoteException; {:try_start_4c .. :try_end_4f} :catch_50

    .line 582
    goto :goto_58

    .line 580
    :catch_50
    move-exception v5

    .line 581
    .local v5, "e":Landroid/os/RemoteException;
    const-string v6, "WindowManager"

    const-string v7, "Error delivering minimized dock changed event."

    invoke-static {v6, v7, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 575
    .end local v4  # "listener":Landroid/view/IDockedStackListener;
    .end local v5  # "e":Landroid/os/RemoteException;
    :goto_58
    add-int/lit8 v3, v3, 0x1

    goto :goto_42

    .line 584
    .end local v3  # "i":I
    :cond_5b
    iget-object v3, p0, Lcom/android/server/wm/DockedStackDividerController;->mDockedStackListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 585
    return-void
.end method

.method private resetDragResizingChangeReported()V
    .registers 4

    .line 363
    iget-object v0, p0, Lcom/android/server/wm/DockedStackDividerController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    sget-object v1, Lcom/android/server/wm/-$$Lambda$vhwCX-wzYksBgFM46tASKUCeQRc;->INSTANCE:Lcom/android/server/wm/-$$Lambda$vhwCX-wzYksBgFM46tASKUCeQRc;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/android/server/wm/DisplayContent;->forAllWindows(Ljava/util/function/Consumer;Z)V

    .line 365
    return-void
.end method

.method private setMinimizedDockedStack(ZZ)V
    .registers 9
    .param p1, "minimizedDock"  # Z
    .param p2, "animate"  # Z

    .line 768
    iget-boolean v0, p0, Lcom/android/server/wm/DockedStackDividerController;->mMinimizedDock:Z

    .line 769
    .local v0, "wasMinimized":Z
    iput-boolean p1, p0, Lcom/android/server/wm/DockedStackDividerController;->mMinimizedDock:Z

    .line 770
    if-ne p1, v0, :cond_7

    .line 771
    return-void

    .line 774
    :cond_7
    invoke-direct {p0}, Lcom/android/server/wm/DockedStackDividerController;->clearImeAdjustAnimation()Z

    move-result v1

    .line 775
    .local v1, "imeChanged":Z
    const/4 v2, 0x0

    .line 776
    .local v2, "minimizedChange":Z
    invoke-virtual {p0}, Lcom/android/server/wm/DockedStackDividerController;->isHomeStackResizable()Z

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_18

    .line 777
    invoke-direct {p0, p1, p2, v4}, Lcom/android/server/wm/DockedStackDividerController;->notifyDockedStackMinimizedChanged(ZZZ)V

    .line 779
    const/4 v2, 0x1

    goto :goto_35

    .line 781
    :cond_18
    const/4 v3, 0x0

    const/high16 v5, 0x3f800000  # 1.0f

    if-eqz p1, :cond_29

    .line 782
    if-eqz p2, :cond_23

    .line 783
    invoke-direct {p0, v3, v5}, Lcom/android/server/wm/DockedStackDividerController;->startAdjustAnimation(FF)V

    goto :goto_35

    .line 785
    :cond_23
    invoke-direct {p0, v4}, Lcom/android/server/wm/DockedStackDividerController;->setMinimizedDockedStack(Z)Z

    move-result v3

    or-int/2addr v2, v3

    goto :goto_35

    .line 788
    :cond_29
    if-eqz p2, :cond_2f

    .line 789
    invoke-direct {p0, v5, v3}, Lcom/android/server/wm/DockedStackDividerController;->startAdjustAnimation(FF)V

    goto :goto_35

    .line 791
    :cond_2f
    const/4 v3, 0x0

    invoke-direct {p0, v3}, Lcom/android/server/wm/DockedStackDividerController;->setMinimizedDockedStack(Z)Z

    move-result v3

    or-int/2addr v2, v3

    .line 795
    :goto_35
    if-nez v1, :cond_39

    if-eqz v2, :cond_62

    .line 796
    :cond_39
    if-eqz v1, :cond_5b

    if-nez v2, :cond_5b

    .line 797
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setMinimizedDockedStack: IME adjust changed due to minimizing, minimizedDock="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, " minimizedChange="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "WindowManager"

    invoke-static {v4, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 801
    :cond_5b
    iget-object v3, p0, Lcom/android/server/wm/DockedStackDividerController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v3, Lcom/android/server/wm/WindowManagerService;->mWindowPlacerLocked:Lcom/android/server/wm/WindowSurfacePlacer;

    invoke-virtual {v3}, Lcom/android/server/wm/WindowSurfacePlacer;->performSurfacePlacement()V

    .line 803
    :cond_62
    return-void
.end method

.method private setMinimizedDockedStack(Z)Z
    .registers 5
    .param p1, "minimized"  # Z

    .line 894
    iget-object v0, p0, Lcom/android/server/wm/DockedStackDividerController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->getSplitScreenPrimaryStackIgnoringVisibility()Lcom/android/server/wm/TaskStack;

    move-result-object v0

    .line 895
    .local v0, "stack":Lcom/android/server/wm/TaskStack;
    invoke-virtual {p0}, Lcom/android/server/wm/DockedStackDividerController;->isHomeStackResizable()Z

    move-result v1

    const/4 v2, 0x0

    invoke-direct {p0, p1, v2, v1}, Lcom/android/server/wm/DockedStackDividerController;->notifyDockedStackMinimizedChanged(ZZZ)V

    .line 896
    if-eqz v0, :cond_1d

    if-eqz p1, :cond_15

    const/high16 v1, 0x3f800000  # 1.0f

    goto :goto_16

    :cond_15
    const/4 v1, 0x0

    :goto_16
    invoke-virtual {v0, v1}, Lcom/android/server/wm/TaskStack;->setAdjustedForMinimizedDock(F)Z

    move-result v1

    if-eqz v1, :cond_1d

    const/4 v2, 0x1

    :cond_1d
    return v2
.end method

.method private startAdjustAnimation(FF)V
    .registers 4
    .param p1, "from"  # F
    .param p2, "to"  # F

    .line 812
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/wm/DockedStackDividerController;->mAnimatingForMinimizedDockedStack:Z

    .line 813
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/wm/DockedStackDividerController;->mAnimationStarted:Z

    .line 814
    iput p1, p0, Lcom/android/server/wm/DockedStackDividerController;->mAnimationStart:F

    .line 815
    iput p2, p0, Lcom/android/server/wm/DockedStackDividerController;->mAnimationTarget:F

    .line 816
    return-void
.end method

.method private startImeAdjustAnimation(ZZLcom/android/server/wm/WindowState;)V
    .registers 9
    .param p1, "adjustedForIme"  # Z
    .param p2, "adjustedForDivider"  # Z
    .param p3, "imeWin"  # Lcom/android/server/wm/WindowState;

    .line 824
    iget-boolean v0, p0, Lcom/android/server/wm/DockedStackDividerController;->mAnimatingForIme:Z

    const/high16 v1, 0x3f800000  # 1.0f

    const/4 v2, 0x0

    if-nez v0, :cond_22

    .line 825
    iget-boolean v0, p0, Lcom/android/server/wm/DockedStackDividerController;->mAdjustedForIme:Z

    if-eqz v0, :cond_d

    move v0, v1

    goto :goto_e

    :cond_d
    move v0, v2

    :goto_e
    iput v0, p0, Lcom/android/server/wm/DockedStackDividerController;->mAnimationStart:F

    .line 826
    iget-boolean v0, p0, Lcom/android/server/wm/DockedStackDividerController;->mAdjustedForDivider:Z

    if-eqz v0, :cond_16

    move v0, v1

    goto :goto_17

    :cond_16
    move v0, v2

    :goto_17
    iput v0, p0, Lcom/android/server/wm/DockedStackDividerController;->mDividerAnimationStart:F

    .line 827
    iget v0, p0, Lcom/android/server/wm/DockedStackDividerController;->mAnimationStart:F

    iput v0, p0, Lcom/android/server/wm/DockedStackDividerController;->mLastAnimationProgress:F

    .line 828
    iget v0, p0, Lcom/android/server/wm/DockedStackDividerController;->mDividerAnimationStart:F

    iput v0, p0, Lcom/android/server/wm/DockedStackDividerController;->mLastDividerProgress:F

    goto :goto_2a

    .line 830
    :cond_22
    iget v0, p0, Lcom/android/server/wm/DockedStackDividerController;->mLastAnimationProgress:F

    iput v0, p0, Lcom/android/server/wm/DockedStackDividerController;->mAnimationStart:F

    .line 831
    iget v0, p0, Lcom/android/server/wm/DockedStackDividerController;->mLastDividerProgress:F

    iput v0, p0, Lcom/android/server/wm/DockedStackDividerController;->mDividerAnimationStart:F

    .line 833
    :goto_2a
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/wm/DockedStackDividerController;->mAnimatingForIme:Z

    .line 834
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/android/server/wm/DockedStackDividerController;->mAnimationStarted:Z

    .line 835
    if-eqz p1, :cond_34

    move v4, v1

    goto :goto_35

    :cond_34
    move v4, v2

    :goto_35
    iput v4, p0, Lcom/android/server/wm/DockedStackDividerController;->mAnimationTarget:F

    .line 836
    if-eqz p2, :cond_3a

    goto :goto_3b

    :cond_3a
    move v1, v2

    :goto_3b
    iput v1, p0, Lcom/android/server/wm/DockedStackDividerController;->mDividerAnimationTarget:F

    .line 838
    iget-object v1, p0, Lcom/android/server/wm/DockedStackDividerController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v1}, Lcom/android/server/wm/DisplayContent;->beginImeAdjustAnimation()V

    .line 842
    iget-object v1, p0, Lcom/android/server/wm/DockedStackDividerController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mWaitingForDrawn:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_85

    .line 843
    iget-object v1, p0, Lcom/android/server/wm/DockedStackDividerController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    const/16 v2, 0x18

    invoke-virtual {v1, v2}, Lcom/android/server/wm/WindowManagerService$H;->removeMessages(I)V

    .line 844
    iget-object v1, p0, Lcom/android/server/wm/DockedStackDividerController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    const-wide/16 v3, 0xc8

    invoke-virtual {v1, v2, v3, v4}, Lcom/android/server/wm/WindowManagerService$H;->sendEmptyMessageDelayed(IJ)Z

    .line 846
    iput-boolean v0, p0, Lcom/android/server/wm/DockedStackDividerController;->mAnimationStartDelayed:Z

    .line 847
    if-eqz p3, :cond_6e

    .line 850
    iget-object v0, p0, Lcom/android/server/wm/DockedStackDividerController;->mDelayedImeWin:Lcom/android/server/wm/WindowState;

    if-eqz v0, :cond_69

    .line 851
    invoke-virtual {v0}, Lcom/android/server/wm/WindowState;->endDelayingAnimationStart()V

    .line 853
    :cond_69
    iput-object p3, p0, Lcom/android/server/wm/DockedStackDividerController;->mDelayedImeWin:Lcom/android/server/wm/WindowState;

    .line 854
    invoke-virtual {p3}, Lcom/android/server/wm/WindowState;->startDelayingAnimationStart()V

    .line 861
    :cond_6e
    iget-object v0, p0, Lcom/android/server/wm/DockedStackDividerController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mWaitingForDrawnCallback:Ljava/lang/Runnable;

    if-eqz v0, :cond_7b

    .line 862
    iget-object v0, p0, Lcom/android/server/wm/DockedStackDividerController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mWaitingForDrawnCallback:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 864
    :cond_7b
    iget-object v0, p0, Lcom/android/server/wm/DockedStackDividerController;->mService:Lcom/android/server/wm/WindowManagerService;

    new-instance v1, Lcom/android/server/wm/-$$Lambda$DockedStackDividerController$5bA1vUPZ2WAWRKwBSEsFIfWUu9o;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/server/wm/-$$Lambda$DockedStackDividerController$5bA1vUPZ2WAWRKwBSEsFIfWUu9o;-><init>(Lcom/android/server/wm/DockedStackDividerController;ZZ)V

    iput-object v1, v0, Lcom/android/server/wm/WindowManagerService;->mWaitingForDrawnCallback:Ljava/lang/Runnable;

    goto :goto_90

    .line 888
    :cond_85
    if-nez p1, :cond_8b

    if-eqz p2, :cond_8a

    goto :goto_8b

    :cond_8a
    move v0, v3

    :cond_8b
    :goto_8b
    const-wide/16 v1, 0x118

    invoke-direct {p0, v0, v1, v2}, Lcom/android/server/wm/DockedStackDividerController;->notifyAdjustedForImeChanged(ZJ)V

    .line 891
    :goto_90
    return-void
.end method

.method private wasVisible()Z
    .registers 2

    .line 391
    iget-boolean v0, p0, Lcom/android/server/wm/DockedStackDividerController;->mLastVisibility:Z

    return v0
.end method


# virtual methods
.method public animate(J)Z
    .registers 5
    .param p1, "now"  # J

    .line 904
    iget-object v0, p0, Lcom/android/server/wm/DockedStackDividerController;->mWindow:Lcom/android/server/wm/WindowState;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    .line 905
    return v1

    .line 907
    :cond_6
    iget-boolean v0, p0, Lcom/android/server/wm/DockedStackDividerController;->mAnimatingForMinimizedDockedStack:Z

    if-eqz v0, :cond_f

    .line 908
    invoke-direct {p0, p1, p2}, Lcom/android/server/wm/DockedStackDividerController;->animateForMinimizedDockedStack(J)Z

    move-result v0

    return v0

    .line 909
    :cond_f
    iget-boolean v0, p0, Lcom/android/server/wm/DockedStackDividerController;->mAnimatingForIme:Z

    if-eqz v0, :cond_22

    iget-object v0, p0, Lcom/android/server/wm/DockedStackDividerController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v0, v0, Lcom/android/server/wm/DisplayContent;->mAppTransition:Lcom/android/server/wm/AppTransition;

    invoke-virtual {v0}, Lcom/android/server/wm/AppTransition;->isRunning()Z

    move-result v0

    if-nez v0, :cond_22

    .line 913
    invoke-direct {p0, p1, p2}, Lcom/android/server/wm/DockedStackDividerController;->animateForIme(J)Z

    move-result v0

    return v0

    .line 915
    :cond_22
    return v1
.end method

.method canPrimaryStackDockTo(ILandroid/graphics/Rect;I)Z
    .registers 8
    .param p1, "dockSide"  # I
    .param p2, "parentRect"  # Landroid/graphics/Rect;
    .param p3, "rotation"  # I

    .line 475
    iget-object v0, p0, Lcom/android/server/wm/DockedStackDividerController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->getDisplayPolicy()Lcom/android/server/wm/DisplayPolicy;

    move-result-object v0

    .line 476
    .local v0, "policy":Lcom/android/server/wm/DisplayPolicy;
    iget v1, p0, Lcom/android/server/wm/DockedStackDividerController;->mOriginalDockedSide:I

    .line 477
    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result v2

    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result v3

    invoke-virtual {v0, v2, v3, p3}, Lcom/android/server/wm/DisplayPolicy;->navigationBarPosition(III)I

    move-result v2

    .line 478
    invoke-virtual {v0}, Lcom/android/server/wm/DisplayPolicy;->navigationBarCanMove()Z

    move-result v3

    .line 476
    invoke-static {p1, v1, v2, v3}, Lcom/android/server/wm/DockedStackDividerController;->isDockSideAllowed(IIIZ)Z

    move-result v1

    return v1
.end method

.method checkMinimizeChanged(Z)V
    .registers 11
    .param p1, "animate"  # Z

    .line 711
    iget-object v0, p0, Lcom/android/server/wm/DockedStackDividerController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->getSplitScreenPrimaryStackIgnoringVisibility()Lcom/android/server/wm/TaskStack;

    move-result-object v0

    if-nez v0, :cond_9

    .line 712
    return-void

    .line 714
    :cond_9
    iget-object v0, p0, Lcom/android/server/wm/DockedStackDividerController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->getHomeStack()Lcom/android/server/wm/TaskStack;

    move-result-object v0

    .line 715
    .local v0, "homeStack":Lcom/android/server/wm/TaskStack;
    if-nez v0, :cond_12

    .line 716
    return-void

    .line 718
    :cond_12
    invoke-virtual {v0}, Lcom/android/server/wm/TaskStack;->findHomeTask()Lcom/android/server/wm/Task;

    move-result-object v1

    .line 719
    .local v1, "homeTask":Lcom/android/server/wm/Task;
    if-eqz v1, :cond_70

    invoke-direct {p0, v1}, Lcom/android/server/wm/DockedStackDividerController;->isWithinDisplay(Lcom/android/server/wm/Task;)Z

    move-result v2

    if-nez v2, :cond_1f

    goto :goto_70

    .line 725
    :cond_1f
    iget-boolean v2, p0, Lcom/android/server/wm/DockedStackDividerController;->mMinimizedDock:Z

    if-eqz v2, :cond_2a

    iget-object v2, p0, Lcom/android/server/wm/DockedStackDividerController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-boolean v2, v2, Lcom/android/server/wm/WindowManagerService;->mKeyguardOrAodShowingOnDefaultDisplay:Z

    if-eqz v2, :cond_2a

    .line 726
    return-void

    .line 728
    :cond_2a
    iget-object v2, p0, Lcom/android/server/wm/DockedStackDividerController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Lcom/android/server/wm/DisplayContent;->getTopStackInWindowingMode(I)Lcom/android/server/wm/TaskStack;

    move-result-object v2

    .line 730
    .local v2, "topSecondaryStack":Lcom/android/server/wm/TaskStack;
    iget-object v3, p0, Lcom/android/server/wm/DockedStackDividerController;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v3}, Lcom/android/server/wm/WindowManagerService;->getRecentsAnimationController()Lcom/android/server/wm/RecentsAnimationController;

    move-result-object v3

    .line 731
    .local v3, "recentsAnim":Lcom/android/server/wm/RecentsAnimationController;
    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v3, :cond_43

    .line 732
    invoke-virtual {v3}, Lcom/android/server/wm/RecentsAnimationController;->isSplitScreenMinimized()Z

    move-result v6

    if-eqz v6, :cond_43

    move v6, v4

    goto :goto_44

    :cond_43
    move v6, v5

    .line 733
    .local v6, "minimizedForRecentsAnimation":Z
    :goto_44
    invoke-virtual {v1}, Lcom/android/server/wm/Task;->getTopVisibleAppToken()Lcom/android/server/wm/AppWindowToken;

    move-result-object v7

    if-eqz v7, :cond_4c

    move v7, v4

    goto :goto_4d

    :cond_4c
    move v7, v5

    .line 734
    .local v7, "homeVisible":Z
    :goto_4d
    if-eqz v7, :cond_5b

    if-eqz v2, :cond_5b

    .line 737
    invoke-virtual {v0, v2}, Lcom/android/server/wm/TaskStack;->compareTo(Lcom/android/server/wm/WindowContainer;)I

    move-result v8

    if-ltz v8, :cond_59

    move v8, v4

    goto :goto_5a

    :cond_59
    move v8, v5

    :goto_5a
    move v7, v8

    .line 741
    :cond_5b
    invoke-static {}, Lmeizu/os/DeviceStateManager;->isCtsRunningStatic()Z

    move-result v8

    if-nez v8, :cond_66

    .line 742
    invoke-direct {p0, v2}, Lcom/android/server/wm/DockedStackDividerController;->isHomeOrRecent(Lcom/android/server/wm/TaskStack;)Z

    move-result v8

    or-int/2addr v7, v8

    .line 745
    :cond_66
    if-nez v7, :cond_6c

    if-eqz v6, :cond_6b

    goto :goto_6c

    :cond_6b
    move v4, v5

    :cond_6c
    :goto_6c
    invoke-direct {p0, v4, p1}, Lcom/android/server/wm/DockedStackDividerController;->setMinimizedDockedStack(ZZ)V

    .line 746
    return-void

    .line 720
    .end local v2  # "topSecondaryStack":Lcom/android/server/wm/TaskStack;
    .end local v3  # "recentsAnim":Lcom/android/server/wm/RecentsAnimationController;
    .end local v6  # "minimizedForRecentsAnimation":Z
    .end local v7  # "homeVisible":Z
    :cond_70
    :goto_70
    return-void
.end method

.method dump(Ljava/lang/String;Ljava/io/PrintWriter;)V
    .registers 5
    .param p1, "prefix"  # Ljava/lang/String;
    .param p2, "pw"  # Ljava/io/PrintWriter;

    .line 1032
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "DockedStackDividerController"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1033
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

    .line 1034
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

    .line 1035
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

    .line 1036
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "  mAdjustedForDivider="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/wm/DockedStackDividerController;->mAdjustedForDivider:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1037
    return-void
.end method

.method getContentInsets()I
    .registers 2

    .line 339
    iget v0, p0, Lcom/android/server/wm/DockedStackDividerController;->mDividerInsets:I

    return v0
.end method

.method getContentWidth()I
    .registers 3

    .line 335
    iget v0, p0, Lcom/android/server/wm/DockedStackDividerController;->mDividerWindowWidth:I

    iget v1, p0, Lcom/android/server/wm/DockedStackDividerController;->mDividerInsets:I

    mul-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    return v0
.end method

.method getContentWidthInactive()I
    .registers 2

    .line 343
    iget v0, p0, Lcom/android/server/wm/DockedStackDividerController;->mDividerWindowWidthInactive:I

    return v0
.end method

.method getDockSide(Landroid/graphics/Rect;Landroid/graphics/Rect;II)I
    .registers 9
    .param p1, "bounds"  # Landroid/graphics/Rect;
    .param p2, "displayRect"  # Landroid/graphics/Rect;
    .param p3, "orientation"  # I
    .param p4, "rotation"  # I

    .line 209
    const/4 v0, 0x2

    const/4 v1, 0x1

    if-ne p3, v1, :cond_1f

    .line 211
    iget v1, p2, Landroid/graphics/Rect;->bottom:I

    iget v2, p1, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v1, v2

    iget v2, p1, Landroid/graphics/Rect;->top:I

    iget v3, p2, Landroid/graphics/Rect;->top:I

    sub-int/2addr v2, v3

    sub-int/2addr v1, v2

    .line 212
    .local v1, "diff":I
    if-lez v1, :cond_12

    .line 213
    return v0

    .line 214
    :cond_12
    const/4 v2, 0x4

    if-gez v1, :cond_16

    .line 215
    return v2

    .line 217
    :cond_16
    invoke-virtual {p0, v0, p2, p4}, Lcom/android/server/wm/DockedStackDividerController;->canPrimaryStackDockTo(ILandroid/graphics/Rect;I)Z

    move-result v3

    if-eqz v3, :cond_1d

    .line 218
    goto :goto_1e

    :cond_1d
    move v0, v2

    .line 217
    :goto_1e
    return v0

    .line 219
    .end local v1  # "diff":I
    :cond_1f
    if-ne p3, v0, :cond_3c

    .line 221
    iget v0, p2, Landroid/graphics/Rect;->right:I

    iget v2, p1, Landroid/graphics/Rect;->right:I

    sub-int/2addr v0, v2

    iget v2, p1, Landroid/graphics/Rect;->left:I

    iget v3, p2, Landroid/graphics/Rect;->left:I

    sub-int/2addr v2, v3

    sub-int/2addr v0, v2

    .line 222
    .local v0, "diff":I
    if-lez v0, :cond_2f

    .line 223
    return v1

    .line 224
    :cond_2f
    const/4 v2, 0x3

    if-gez v0, :cond_33

    .line 225
    return v2

    .line 227
    :cond_33
    invoke-virtual {p0, v1, p2, p4}, Lcom/android/server/wm/DockedStackDividerController;->canPrimaryStackDockTo(ILandroid/graphics/Rect;I)Z

    move-result v3

    if-eqz v3, :cond_3a

    .line 228
    goto :goto_3b

    :cond_3a
    move v1, v2

    .line 227
    :goto_3b
    return v1

    .line 230
    .end local v0  # "diff":I
    :cond_3c
    const/4 v0, -0x1

    return v0
.end method

.method getHomeStackBoundsInDockedMode(Landroid/content/res/Configuration;ILandroid/graphics/Rect;)V
    .registers 13
    .param p1, "parentConfig"  # Landroid/content/res/Configuration;
    .param p2, "dockSide"  # I
    .param p3, "outBounds"  # Landroid/graphics/Rect;

    .line 234
    iget-object v0, p0, Lcom/android/server/wm/DockedStackDividerController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->getDisplayInfo()Landroid/view/DisplayInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/view/DisplayInfo;->displayCutout:Landroid/view/DisplayCutout;

    .line 235
    .local v0, "displayCutout":Landroid/view/DisplayCutout;
    iget-object v1, p1, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v1}, Landroid/app/WindowConfiguration;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v7

    .line 236
    .local v7, "displayWidth":I
    iget-object v1, p1, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v1}, Landroid/app/WindowConfiguration;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v8

    .line 237
    .local v8, "displayHeight":I
    iget-object v1, p0, Lcom/android/server/wm/DockedStackDividerController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v1}, Lcom/android/server/wm/DisplayContent;->getDisplayPolicy()Lcom/android/server/wm/DisplayPolicy;

    move-result-object v1

    iget-object v2, p1, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    .line 238
    invoke-virtual {v2}, Landroid/app/WindowConfiguration;->getRotation()I

    move-result v2

    iget-object v6, p0, Lcom/android/server/wm/DockedStackDividerController;->mTmpRect:Landroid/graphics/Rect;

    .line 237
    move v3, v7

    move v4, v8

    move-object v5, v0

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/wm/DisplayPolicy;->getStableInsetsLw(IIILandroid/view/DisplayCutout;Landroid/graphics/Rect;)V

    .line 240
    iget v1, p0, Lcom/android/server/wm/DockedStackDividerController;->mDividerWindowWidth:I

    iget v2, p0, Lcom/android/server/wm/DockedStackDividerController;->mDividerInsets:I

    mul-int/lit8 v2, v2, 0x2

    sub-int/2addr v1, v2

    .line 243
    .local v1, "dividerSize":I
    iget v2, p1, Landroid/content/res/Configuration;->orientation:I

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-ne v2, v4, :cond_49

    .line 244
    iget v2, p0, Lcom/android/server/wm/DockedStackDividerController;->mTaskHeightInMinimizedMode:I

    add-int/2addr v2, v1

    iget-object v4, p0, Lcom/android/server/wm/DockedStackDividerController;->mTmpRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    add-int/2addr v2, v4

    invoke-virtual {p3, v3, v2, v7, v8}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_66

    .line 249
    :cond_49
    iget v2, p0, Lcom/android/server/wm/DockedStackDividerController;->mTaskHeightInMinimizedMode:I

    add-int/2addr v2, v1

    iget-object v5, p0, Lcom/android/server/wm/DockedStackDividerController;->mTmpRect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->top:I

    add-int/2addr v2, v5

    .line 250
    .local v2, "primaryTaskWidth":I
    iget-object v5, p0, Lcom/android/server/wm/DockedStackDividerController;->mTmpRect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->left:I

    .line 251
    .local v5, "left":I
    iget-object v6, p0, Lcom/android/server/wm/DockedStackDividerController;->mTmpRect:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->right:I

    sub-int v6, v7, v6

    .line 252
    .local v6, "right":I
    if-ne p2, v4, :cond_5f

    .line 253
    add-int/2addr v5, v2

    goto :goto_63

    .line 254
    :cond_5f
    const/4 v4, 0x3

    if-ne p2, v4, :cond_63

    .line 255
    sub-int/2addr v6, v2

    .line 257
    :cond_63
    :goto_63
    invoke-virtual {p3, v5, v3, v6, v8}, Landroid/graphics/Rect;->set(IIII)V

    .line 259
    .end local v2  # "primaryTaskWidth":I
    .end local v5  # "left":I
    .end local v6  # "right":I
    :goto_66
    return-void
.end method

.method getImeHeightAdjustedFor()I
    .registers 2

    .line 416
    iget v0, p0, Lcom/android/server/wm/DockedStackDividerController;->mImeHeight:I

    return v0
.end method

.method getInterpolatedAnimationValue(F)F
    .registers 5
    .param p1, "t"  # F

    .line 968
    iget v0, p0, Lcom/android/server/wm/DockedStackDividerController;->mAnimationTarget:F

    mul-float/2addr v0, p1

    const/high16 v1, 0x3f800000  # 1.0f

    sub-float/2addr v1, p1

    iget v2, p0, Lcom/android/server/wm/DockedStackDividerController;->mAnimationStart:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    return v0
.end method

.method getInterpolatedDividerValue(F)F
    .registers 5
    .param p1, "t"  # F

    .line 972
    iget v0, p0, Lcom/android/server/wm/DockedStackDividerController;->mDividerAnimationTarget:F

    mul-float/2addr v0, p1

    const/high16 v1, 0x3f800000  # 1.0f

    sub-float/2addr v1, p1

    iget v2, p0, Lcom/android/server/wm/DockedStackDividerController;->mDividerAnimationStart:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    return v0
.end method

.method getSmallestWidthDpForBounds(Landroid/graphics/Rect;)I
    .registers 24
    .param p1, "bounds"  # Landroid/graphics/Rect;

    .line 159
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/wm/DockedStackDividerController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v1}, Lcom/android/server/wm/DisplayContent;->getDisplayInfo()Landroid/view/DisplayInfo;

    move-result-object v1

    .line 161
    .local v1, "di":Landroid/view/DisplayInfo;
    iget-object v2, v0, Lcom/android/server/wm/DockedStackDividerController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget v2, v2, Lcom/android/server/wm/DisplayContent;->mBaseDisplayWidth:I

    .line 162
    .local v2, "baseDisplayWidth":I
    iget-object v3, v0, Lcom/android/server/wm/DockedStackDividerController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget v3, v3, Lcom/android/server/wm/DisplayContent;->mBaseDisplayHeight:I

    .line 163
    .local v3, "baseDisplayHeight":I
    const v4, 0x7fffffff

    .line 167
    .local v4, "minWidth":I
    const/4 v5, 0x0

    .local v5, "rotation":I
    :goto_14
    const/4 v6, 0x4

    if-ge v5, v6, :cond_d0

    .line 168
    iget-object v6, v0, Lcom/android/server/wm/DockedStackDividerController;->mTmpRect:Landroid/graphics/Rect;

    move-object/from16 v12, p1

    invoke-virtual {v6, v12}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 169
    iget-object v6, v0, Lcom/android/server/wm/DockedStackDividerController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget v7, v1, Landroid/view/DisplayInfo;->rotation:I

    iget-object v8, v0, Lcom/android/server/wm/DockedStackDividerController;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v6, v7, v5, v8}, Lcom/android/server/wm/DisplayContent;->rotateBounds(IILandroid/graphics/Rect;)V

    .line 170
    const/4 v6, 0x0

    const/4 v7, 0x1

    if-eq v5, v7, :cond_31

    const/4 v8, 0x3

    if-ne v5, v8, :cond_2f

    goto :goto_31

    :cond_2f
    move v8, v6

    goto :goto_32

    :cond_31
    :goto_31
    move v8, v7

    :goto_32
    move v13, v8

    .line 171
    .local v13, "rotated":Z
    iget-object v8, v0, Lcom/android/server/wm/DockedStackDividerController;->mTmpRect2:Landroid/graphics/Rect;

    .line 172
    if-eqz v13, :cond_39

    move v9, v3

    goto :goto_3a

    :cond_39
    move v9, v2

    .line 173
    :goto_3a
    if-eqz v13, :cond_3e

    move v10, v2

    goto :goto_3f

    :cond_3e
    move v10, v3

    .line 171
    :goto_3f
    invoke-virtual {v8, v6, v6, v9, v10}, Landroid/graphics/Rect;->set(IIII)V

    .line 174
    iget-object v6, v0, Lcom/android/server/wm/DockedStackDividerController;->mTmpRect2:Landroid/graphics/Rect;

    invoke-virtual {v6}, Landroid/graphics/Rect;->width()I

    move-result v6

    iget-object v8, v0, Lcom/android/server/wm/DockedStackDividerController;->mTmpRect2:Landroid/graphics/Rect;

    invoke-virtual {v8}, Landroid/graphics/Rect;->height()I

    move-result v8

    if-gt v6, v8, :cond_51

    .line 175
    goto :goto_52

    .line 176
    :cond_51
    const/4 v7, 0x2

    :goto_52
    move v14, v7

    .line 177
    .local v14, "orientation":I
    iget-object v6, v0, Lcom/android/server/wm/DockedStackDividerController;->mTmpRect:Landroid/graphics/Rect;

    iget-object v7, v0, Lcom/android/server/wm/DockedStackDividerController;->mTmpRect2:Landroid/graphics/Rect;

    invoke-virtual {v0, v6, v7, v14, v5}, Lcom/android/server/wm/DockedStackDividerController;->getDockSide(Landroid/graphics/Rect;Landroid/graphics/Rect;II)I

    move-result v11

    .line 178
    .local v11, "dockSide":I
    iget-object v6, v0, Lcom/android/server/wm/DockedStackDividerController;->mTmpRect:Landroid/graphics/Rect;

    .line 179
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/DockedStackDividerController;->getContentWidth()I

    move-result v7

    .line 178
    invoke-static {v6, v11, v7}, Lcom/android/internal/policy/DockedDividerUtils;->calculatePositionForBounds(Landroid/graphics/Rect;II)I

    move-result v10

    .line 181
    .local v10, "position":I
    iget-object v6, v0, Lcom/android/server/wm/DockedStackDividerController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v6, v5}, Lcom/android/server/wm/DisplayContent;->calculateDisplayCutoutForRotation(I)Lcom/android/server/wm/utils/WmDisplayCutout;

    move-result-object v6

    .line 182
    invoke-virtual {v6}, Lcom/android/server/wm/utils/WmDisplayCutout;->getDisplayCutout()Landroid/view/DisplayCutout;

    move-result-object v21

    .line 186
    .local v21, "displayCutout":Landroid/view/DisplayCutout;
    iget-object v6, v0, Lcom/android/server/wm/DockedStackDividerController;->mSnapAlgorithmForRotation:[Lcom/android/internal/policy/DividerSnapAlgorithm;

    aget-object v6, v6, v5

    .line 187
    invoke-virtual {v6, v10}, Lcom/android/internal/policy/DividerSnapAlgorithm;->calculateNonDismissingSnapTarget(I)Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;

    move-result-object v6

    iget v9, v6, Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;->position:I

    .line 188
    .local v9, "snappedPosition":I
    iget-object v6, v0, Lcom/android/server/wm/DockedStackDividerController;->mTmpRect:Landroid/graphics/Rect;

    iget-object v7, v0, Lcom/android/server/wm/DockedStackDividerController;->mTmpRect2:Landroid/graphics/Rect;

    .line 189
    invoke-virtual {v7}, Landroid/graphics/Rect;->width()I

    move-result v18

    iget-object v7, v0, Lcom/android/server/wm/DockedStackDividerController;->mTmpRect2:Landroid/graphics/Rect;

    invoke-virtual {v7}, Landroid/graphics/Rect;->height()I

    move-result v19

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/DockedStackDividerController;->getContentWidth()I

    move-result v20

    .line 188
    move v15, v9

    move/from16 v16, v11

    move-object/from16 v17, v6

    invoke-static/range {v15 .. v20}, Lcom/android/internal/policy/DockedDividerUtils;->calculateBoundsForPosition(IILandroid/graphics/Rect;III)V

    .line 190
    iget-object v6, v0, Lcom/android/server/wm/DockedStackDividerController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v6}, Lcom/android/server/wm/DisplayContent;->getDisplayPolicy()Lcom/android/server/wm/DisplayPolicy;

    move-result-object v6

    iget-object v7, v0, Lcom/android/server/wm/DockedStackDividerController;->mTmpRect2:Landroid/graphics/Rect;

    invoke-virtual {v7}, Landroid/graphics/Rect;->width()I

    move-result v8

    iget-object v7, v0, Lcom/android/server/wm/DockedStackDividerController;->mTmpRect2:Landroid/graphics/Rect;

    .line 191
    invoke-virtual {v7}, Landroid/graphics/Rect;->height()I

    move-result v15

    iget-object v7, v0, Lcom/android/server/wm/DockedStackDividerController;->mTmpRect3:Landroid/graphics/Rect;

    .line 190
    move-object/from16 v16, v7

    move v7, v5

    move/from16 v17, v9

    .end local v9  # "snappedPosition":I
    .local v17, "snappedPosition":I
    move v9, v15

    move v15, v10

    .end local v10  # "position":I
    .local v15, "position":I
    move-object/from16 v10, v21

    move/from16 v18, v11

    .end local v11  # "dockSide":I
    .local v18, "dockSide":I
    move-object/from16 v11, v16

    invoke-virtual/range {v6 .. v11}, Lcom/android/server/wm/DisplayPolicy;->getStableInsetsLw(IIILandroid/view/DisplayCutout;Landroid/graphics/Rect;)V

    .line 192
    iget-object v6, v0, Lcom/android/server/wm/DockedStackDividerController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v7, v0, Lcom/android/server/wm/DockedStackDividerController;->mTmpRect2:Landroid/graphics/Rect;

    iget-object v8, v0, Lcom/android/server/wm/DockedStackDividerController;->mTmpRect3:Landroid/graphics/Rect;

    iget-object v9, v0, Lcom/android/server/wm/DockedStackDividerController;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v6, v7, v8, v9}, Lcom/android/server/wm/WindowManagerService;->intersectDisplayInsetBounds(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 193
    iget-object v6, v0, Lcom/android/server/wm/DockedStackDividerController;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v6}, Landroid/graphics/Rect;->width()I

    move-result v6

    invoke-static {v6, v4}, Ljava/lang/Math;->min(II)I

    move-result v4

    .line 167
    .end local v13  # "rotated":Z
    .end local v14  # "orientation":I
    .end local v15  # "position":I
    .end local v17  # "snappedPosition":I
    .end local v18  # "dockSide":I
    .end local v21  # "displayCutout":Landroid/view/DisplayCutout;
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_14

    :cond_d0
    move-object/from16 v12, p1

    .line 195
    .end local v5  # "rotation":I
    int-to-float v5, v4

    iget-object v6, v0, Lcom/android/server/wm/DockedStackDividerController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v6}, Lcom/android/server/wm/DisplayContent;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v6

    iget v6, v6, Landroid/util/DisplayMetrics;->density:F

    div-float/2addr v5, v6

    float-to-int v5, v5

    return v5
.end method

.method getTouchRegion(Landroid/graphics/Rect;)V
    .registers 4
    .param p1, "outRegion"  # Landroid/graphics/Rect;

    .line 358
    iget-object v0, p0, Lcom/android/server/wm/DockedStackDividerController;->mTouchRegion:Landroid/graphics/Rect;

    invoke-virtual {p1, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 359
    iget-object v0, p0, Lcom/android/server/wm/DockedStackDividerController;->mWindow:Lcom/android/server/wm/WindowState;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowState;->getFrameLw()Landroid/graphics/Rect;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Rect;->left:I

    iget-object v1, p0, Lcom/android/server/wm/DockedStackDividerController;->mWindow:Lcom/android/server/wm/WindowState;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowState;->getFrameLw()Landroid/graphics/Rect;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Rect;->top:I

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Rect;->offset(II)V

    .line 360
    return-void
.end method

.method getWindow()Lcom/android/server/wm/WindowState;
    .registers 2

    .line 1028
    iget-object v0, p0, Lcom/android/server/wm/DockedStackDividerController;->mWindow:Lcom/android/server/wm/WindowState;

    return-object v0
.end method

.method isHomeStackResizable()Z
    .registers 5

    .line 262
    iget-object v0, p0, Lcom/android/server/wm/DockedStackDividerController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->getHomeStack()Lcom/android/server/wm/TaskStack;

    move-result-object v0

    .line 263
    .local v0, "homeStack":Lcom/android/server/wm/TaskStack;
    const/4 v1, 0x0

    if-nez v0, :cond_a

    .line 264
    return v1

    .line 266
    :cond_a
    invoke-virtual {v0}, Lcom/android/server/wm/TaskStack;->findHomeTask()Lcom/android/server/wm/Task;

    move-result-object v2

    .line 267
    .local v2, "homeTask":Lcom/android/server/wm/Task;
    if-eqz v2, :cond_17

    invoke-virtual {v2}, Lcom/android/server/wm/Task;->isResizeable()Z

    move-result v3

    if-eqz v3, :cond_17

    const/4 v1, 0x1

    :cond_17
    return v1
.end method

.method isImeHideRequested()Z
    .registers 2

    .line 556
    iget-boolean v0, p0, Lcom/android/server/wm/DockedStackDividerController;->mImeHideRequested:Z

    return v0
.end method

.method isMinimizedDock()Z
    .registers 2

    .line 707
    iget-boolean v0, p0, Lcom/android/server/wm/DockedStackDividerController;->mMinimizedDock:Z

    return v0
.end method

.method isResizing()Z
    .registers 2

    .line 331
    iget-boolean v0, p0, Lcom/android/server/wm/DockedStackDividerController;->mResizing:Z

    return v0
.end method

.method public synthetic lambda$startImeAdjustAnimation$0$DockedStackDividerController(ZZ)V
    .registers 10
    .param p1, "adjustedForIme"  # Z
    .param p2, "adjustedForDivider"  # Z

    .line 865
    iget-object v0, p0, Lcom/android/server/wm/DockedStackDividerController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_5
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 866
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/wm/DockedStackDividerController;->mAnimationStartDelayed:Z

    .line 867
    iget-object v2, p0, Lcom/android/server/wm/DockedStackDividerController;->mDelayedImeWin:Lcom/android/server/wm/WindowState;

    if-eqz v2, :cond_14

    .line 868
    iget-object v2, p0, Lcom/android/server/wm/DockedStackDividerController;->mDelayedImeWin:Lcom/android/server/wm/WindowState;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowState;->endDelayingAnimationStart()V

    .line 872
    :cond_14
    const-wide/16 v2, 0x0

    .line 873
    .local v2, "duration":J
    iget-boolean v4, p0, Lcom/android/server/wm/DockedStackDividerController;->mAdjustedForIme:Z

    if-ne v4, p1, :cond_21

    iget-boolean v4, p0, Lcom/android/server/wm/DockedStackDividerController;->mAdjustedForDivider:Z

    if-ne v4, p2, :cond_21

    .line 875
    const-wide/16 v2, 0x118

    goto :goto_53

    .line 877
    :cond_21
    const-string v4, "WindowManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "IME adjust changed while waiting for drawn: adjustedForIme="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v6, " adjustedForDivider="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v6, " mAdjustedForIme="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v6, p0, Lcom/android/server/wm/DockedStackDividerController;->mAdjustedForIme:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v6, " mAdjustedForDivider="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v6, p0, Lcom/android/server/wm/DockedStackDividerController;->mAdjustedForDivider:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 883
    :goto_53
    iget-boolean v4, p0, Lcom/android/server/wm/DockedStackDividerController;->mAdjustedForIme:Z

    if-nez v4, :cond_5b

    iget-boolean v4, p0, Lcom/android/server/wm/DockedStackDividerController;->mAdjustedForDivider:Z

    if-eqz v4, :cond_5c

    :cond_5b
    const/4 v1, 0x1

    :cond_5c
    invoke-direct {p0, v1, v2, v3}, Lcom/android/server/wm/DockedStackDividerController;->notifyAdjustedForImeChanged(ZJ)V

    .line 885
    .end local v2  # "duration":J
    monitor-exit v0
    :try_end_60
    .catchall {:try_start_5 .. :try_end_60} :catchall_64

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 886
    return-void

    .line 885
    :catchall_64
    move-exception v1

    :try_start_65
    monitor-exit v0
    :try_end_66
    .catchall {:try_start_65 .. :try_end_66} :catchall_64

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method notifyAppTransitionStarting(Landroid/util/ArraySet;I)V
    .registers 6
    .param p2, "appTransition"  # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArraySet<",
            "Lcom/android/server/wm/AppWindowToken;",
            ">;I)V"
        }
    .end annotation

    .line 672
    .local p1, "openingApps":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/wm/AppWindowToken;>;"
    iget-boolean v0, p0, Lcom/android/server/wm/DockedStackDividerController;->mMinimizedDock:Z

    .line 673
    .local v0, "wasMinimized":Z
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/android/server/wm/DockedStackDividerController;->checkMinimizeChanged(Z)V

    .line 681
    if-eqz v0, :cond_2e

    iget-boolean v1, p0, Lcom/android/server/wm/DockedStackDividerController;->mMinimizedDock:Z

    if-eqz v1, :cond_2e

    invoke-direct {p0, p1}, Lcom/android/server/wm/DockedStackDividerController;->containsAppInDockedStack(Landroid/util/ArraySet;)Z

    move-result v1

    if-eqz v1, :cond_2e

    if-eqz p2, :cond_2e

    .line 683
    invoke-static {p2}, Lcom/android/server/wm/AppTransition;->isKeyguardGoingAwayTransit(I)Z

    move-result v1

    if-nez v1, :cond_2e

    .line 684
    iget-object v1, p0, Lcom/android/server/wm/DockedStackDividerController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mAtmInternal:Lcom/android/server/wm/ActivityTaskManagerInternal;

    iget-object v2, p0, Lcom/android/server/wm/DockedStackDividerController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget v2, v2, Lcom/android/server/wm/WindowManagerService;->mCurrentUserId:I

    invoke-virtual {v1, v2}, Lcom/android/server/wm/ActivityTaskManagerInternal;->isRecentsComponentHomeActivity(I)Z

    move-result v1

    if-eqz v1, :cond_29

    goto :goto_2e

    .line 688
    :cond_29
    iget-object v1, p0, Lcom/android/server/wm/DockedStackDividerController;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowManagerService;->showRecentApps()V

    .line 691
    :cond_2e
    :goto_2e
    return-void
.end method

.method notifyAppVisibilityChanged()V
    .registers 2

    .line 668
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/server/wm/DockedStackDividerController;->checkMinimizeChanged(Z)V

    .line 669
    return-void
.end method

.method notifyDockSideChanged(I)V
    .registers 8
    .param p1, "newDockSide"  # I

    .line 588
    iget-object v0, p0, Lcom/android/server/wm/DockedStackDividerController;->mDockedStackListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v0

    .line 589
    .local v0, "size":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_7
    if-ge v1, v0, :cond_20

    .line 590
    iget-object v2, p0, Lcom/android/server/wm/DockedStackDividerController;->mDockedStackListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v2, v1}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v2

    check-cast v2, Landroid/view/IDockedStackListener;

    .line 592
    .local v2, "listener":Landroid/view/IDockedStackListener;
    :try_start_11
    invoke-interface {v2, p1}, Landroid/view/IDockedStackListener;->onDockSideChanged(I)V
    :try_end_14
    .catch Landroid/os/RemoteException; {:try_start_11 .. :try_end_14} :catch_15

    .line 595
    goto :goto_1d

    .line 593
    :catch_15
    move-exception v3

    .line 594
    .local v3, "e":Landroid/os/RemoteException;
    const-string v4, "WindowManager"

    const-string v5, "Error delivering dock side changed event."

    invoke-static {v4, v5, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 589
    .end local v2  # "listener":Landroid/view/IDockedStackListener;
    .end local v3  # "e":Landroid/os/RemoteException;
    :goto_1d
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 597
    .end local v1  # "i":I
    :cond_20
    iget-object v1, p0, Lcom/android/server/wm/DockedStackDividerController;->mDockedStackListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v1}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 598
    return-void
.end method

.method notifyDockedStackExistsChanged(Z)V
    .registers 8
    .param p1, "exists"  # Z

    .line 505
    iget-object v0, p0, Lcom/android/server/wm/DockedStackDividerController;->mDockedStackListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v0

    .line 506
    .local v0, "size":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_7
    if-ge v1, v0, :cond_20

    .line 507
    iget-object v2, p0, Lcom/android/server/wm/DockedStackDividerController;->mDockedStackListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v2, v1}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v2

    check-cast v2, Landroid/view/IDockedStackListener;

    .line 509
    .local v2, "listener":Landroid/view/IDockedStackListener;
    :try_start_11
    invoke-interface {v2, p1}, Landroid/view/IDockedStackListener;->onDockedStackExistsChanged(Z)V
    :try_end_14
    .catch Landroid/os/RemoteException; {:try_start_11 .. :try_end_14} :catch_15

    .line 512
    goto :goto_1d

    .line 510
    :catch_15
    move-exception v3

    .line 511
    .local v3, "e":Landroid/os/RemoteException;
    const-string v4, "WindowManager"

    const-string v5, "Error delivering docked stack exists changed event."

    invoke-static {v4, v5, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 506
    .end local v2  # "listener":Landroid/view/IDockedStackListener;
    .end local v3  # "e":Landroid/os/RemoteException;
    :goto_1d
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 514
    .end local v1  # "i":I
    :cond_20
    iget-object v1, p0, Lcom/android/server/wm/DockedStackDividerController;->mDockedStackListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v1}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 515
    if-eqz p1, :cond_46

    .line 516
    const-class v1, Lcom/android/server/inputmethod/InputMethodManagerInternal;

    .line 517
    invoke-static {v1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/inputmethod/InputMethodManagerInternal;

    .line 518
    .local v1, "inputMethodManagerInternal":Lcom/android/server/inputmethod/InputMethodManagerInternal;
    if-eqz v1, :cond_37

    .line 522
    invoke-virtual {v1}, Lcom/android/server/inputmethod/InputMethodManagerInternal;->hideCurrentInputMethod()V

    .line 523
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/server/wm/DockedStackDividerController;->mImeHideRequested:Z

    .line 528
    :cond_37
    iget-object v2, p0, Lcom/android/server/wm/DockedStackDividerController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v2}, Lcom/android/server/wm/DisplayContent;->getSplitScreenPrimaryStackIgnoringVisibility()Lcom/android/server/wm/TaskStack;

    move-result-object v2

    .line 529
    .local v2, "stack":Lcom/android/server/wm/TaskStack;
    iget-object v3, p0, Lcom/android/server/wm/DockedStackDividerController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v2, v3}, Lcom/android/server/wm/TaskStack;->getDockSideForDisplay(Lcom/android/server/wm/DisplayContent;)I

    move-result v3

    iput v3, p0, Lcom/android/server/wm/DockedStackDividerController;->mOriginalDockedSide:I

    .line 530
    return-void

    .line 532
    .end local v1  # "inputMethodManagerInternal":Lcom/android/server/inputmethod/InputMethodManagerInternal;
    .end local v2  # "stack":Lcom/android/server/wm/TaskStack;
    :cond_46
    const/4 v1, -0x1

    iput v1, p0, Lcom/android/server/wm/DockedStackDividerController;->mOriginalDockedSide:I

    .line 533
    const/4 v1, 0x0

    invoke-direct {p0, v1, v1}, Lcom/android/server/wm/DockedStackDividerController;->setMinimizedDockedStack(ZZ)V

    .line 535
    iget-object v1, p0, Lcom/android/server/wm/DockedStackDividerController;->mDimmedStack:Lcom/android/server/wm/TaskStack;

    if-eqz v1, :cond_57

    .line 536
    invoke-virtual {v1}, Lcom/android/server/wm/TaskStack;->stopDimming()V

    .line 537
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/wm/DockedStackDividerController;->mDimmedStack:Lcom/android/server/wm/TaskStack;

    .line 539
    :cond_57
    return-void
.end method

.method onConfigurationChanged()V
    .registers 1

    .line 327
    invoke-direct {p0}, Lcom/android/server/wm/DockedStackDividerController;->loadDimens()V

    .line 328
    return-void
.end method

.method positionDockedStackedDivider(Landroid/graphics/Rect;)V
    .registers 9
    .param p1, "frame"  # Landroid/graphics/Rect;

    .line 420
    iget-object v0, p0, Lcom/android/server/wm/DockedStackDividerController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->getSplitScreenPrimaryStackIgnoringVisibility()Lcom/android/server/wm/TaskStack;

    move-result-object v0

    .line 421
    .local v0, "stack":Lcom/android/server/wm/TaskStack;
    if-nez v0, :cond_e

    .line 427
    iget-object v1, p0, Lcom/android/server/wm/DockedStackDividerController;->mLastRect:Landroid/graphics/Rect;

    invoke-virtual {p1, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 428
    return-void

    .line 430
    :cond_e
    iget-object v1, p0, Lcom/android/server/wm/DockedStackDividerController;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Lcom/android/server/wm/TaskStack;->getDimBounds(Landroid/graphics/Rect;)V

    .line 432
    invoke-virtual {v0}, Lcom/android/server/wm/TaskStack;->getDockSide()I

    move-result v1

    .line 433
    .local v1, "side":I
    const/4 v2, 0x1

    if-eq v1, v2, :cond_77

    const/4 v2, 0x2

    if-eq v1, v2, :cond_5a

    const/4 v2, 0x3

    if-eq v1, v2, :cond_3f

    const/4 v2, 0x4

    if-eq v1, v2, :cond_24

    goto :goto_92

    .line 447
    :cond_24
    iget v2, p1, Landroid/graphics/Rect;->left:I

    iget-object v3, p0, Lcom/android/server/wm/DockedStackDividerController;->mTmpRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v4

    sub-int/2addr v3, v4

    iget v4, p0, Lcom/android/server/wm/DockedStackDividerController;->mDividerInsets:I

    add-int/2addr v3, v4

    iget v4, p1, Landroid/graphics/Rect;->right:I

    iget-object v5, p0, Lcom/android/server/wm/DockedStackDividerController;->mTmpRect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->top:I

    iget v6, p0, Lcom/android/server/wm/DockedStackDividerController;->mDividerInsets:I

    add-int/2addr v5, v6

    invoke-virtual {p1, v2, v3, v4, v5}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_92

    .line 443
    :cond_3f
    iget-object v2, p0, Lcom/android/server/wm/DockedStackDividerController;->mTmpRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v3

    sub-int/2addr v2, v3

    iget v3, p0, Lcom/android/server/wm/DockedStackDividerController;->mDividerInsets:I

    add-int/2addr v2, v3

    iget v3, p1, Landroid/graphics/Rect;->top:I

    iget-object v4, p0, Lcom/android/server/wm/DockedStackDividerController;->mTmpRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->left:I

    iget v5, p0, Lcom/android/server/wm/DockedStackDividerController;->mDividerInsets:I

    add-int/2addr v4, v5

    iget v5, p1, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p1, v2, v3, v4, v5}, Landroid/graphics/Rect;->set(IIII)V

    .line 445
    goto :goto_92

    .line 439
    :cond_5a
    iget v2, p1, Landroid/graphics/Rect;->left:I

    iget-object v3, p0, Lcom/android/server/wm/DockedStackDividerController;->mTmpRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    iget v4, p0, Lcom/android/server/wm/DockedStackDividerController;->mDividerInsets:I

    sub-int/2addr v3, v4

    iget-object v4, p0, Lcom/android/server/wm/DockedStackDividerController;->mTmpRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->right:I

    iget-object v5, p0, Lcom/android/server/wm/DockedStackDividerController;->mTmpRect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    .line 440
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v6

    add-int/2addr v5, v6

    iget v6, p0, Lcom/android/server/wm/DockedStackDividerController;->mDividerInsets:I

    sub-int/2addr v5, v6

    .line 439
    invoke-virtual {p1, v2, v3, v4, v5}, Landroid/graphics/Rect;->set(IIII)V

    .line 441
    goto :goto_92

    .line 435
    :cond_77
    iget-object v2, p0, Lcom/android/server/wm/DockedStackDividerController;->mTmpRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->right:I

    iget v3, p0, Lcom/android/server/wm/DockedStackDividerController;->mDividerInsets:I

    sub-int/2addr v2, v3

    iget v3, p1, Landroid/graphics/Rect;->top:I

    iget-object v4, p0, Lcom/android/server/wm/DockedStackDividerController;->mTmpRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->right:I

    .line 436
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v5

    add-int/2addr v4, v5

    iget v5, p0, Lcom/android/server/wm/DockedStackDividerController;->mDividerInsets:I

    sub-int/2addr v4, v5

    iget v5, p1, Landroid/graphics/Rect;->bottom:I

    .line 435
    invoke-virtual {p1, v2, v3, v4, v5}, Landroid/graphics/Rect;->set(IIII)V

    .line 437
    nop

    .line 451
    :goto_92
    iget-object v2, p0, Lcom/android/server/wm/DockedStackDividerController;->mLastRect:Landroid/graphics/Rect;

    invoke-virtual {v2, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 452
    return-void
.end method

.method reevaluateVisibility(Z)V
    .registers 6
    .param p1, "force"  # Z

    .line 373
    iget-object v0, p0, Lcom/android/server/wm/DockedStackDividerController;->mWindow:Lcom/android/server/wm/WindowState;

    if-nez v0, :cond_5

    .line 374
    return-void

    .line 376
    :cond_5
    iget-object v0, p0, Lcom/android/server/wm/DockedStackDividerController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->getSplitScreenPrimaryStackIgnoringVisibility()Lcom/android/server/wm/TaskStack;

    move-result-object v0

    .line 379
    .local v0, "stack":Lcom/android/server/wm/TaskStack;
    const/4 v1, 0x0

    if-eqz v0, :cond_10

    const/4 v2, 0x1

    goto :goto_11

    :cond_10
    move v2, v1

    .line 380
    .local v2, "visible":Z
    :goto_11
    iget-boolean v3, p0, Lcom/android/server/wm/DockedStackDividerController;->mLastVisibility:Z

    if-ne v3, v2, :cond_18

    if-nez p1, :cond_18

    .line 381
    return-void

    .line 383
    :cond_18
    iput-boolean v2, p0, Lcom/android/server/wm/DockedStackDividerController;->mLastVisibility:Z

    .line 384
    invoke-direct {p0, v2}, Lcom/android/server/wm/DockedStackDividerController;->notifyDockedDividerVisibilityChanged(Z)V

    .line 385
    if-nez v2, :cond_23

    .line 386
    const/4 v3, 0x0

    invoke-virtual {p0, v1, v1, v3}, Lcom/android/server/wm/DockedStackDividerController;->setResizeDimLayer(ZIF)V

    .line 388
    :cond_23
    return-void
.end method

.method registerDockedStackListener(Landroid/view/IDockedStackListener;)V
    .registers 5
    .param p1, "listener"  # Landroid/view/IDockedStackListener;

    .line 614
    iget-object v0, p0, Lcom/android/server/wm/DockedStackDividerController;->mDockedStackListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0, p1}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;)Z

    .line 615
    invoke-direct {p0}, Lcom/android/server/wm/DockedStackDividerController;->wasVisible()Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/server/wm/DockedStackDividerController;->notifyDockedDividerVisibilityChanged(Z)V

    .line 616
    iget-object v0, p0, Lcom/android/server/wm/DockedStackDividerController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 617
    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->getSplitScreenPrimaryStackIgnoringVisibility()Lcom/android/server/wm/TaskStack;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_17

    const/4 v0, 0x1

    goto :goto_18

    :cond_17
    move v0, v1

    .line 616
    :goto_18
    invoke-virtual {p0, v0}, Lcom/android/server/wm/DockedStackDividerController;->notifyDockedStackExistsChanged(Z)V

    .line 618
    iget-boolean v0, p0, Lcom/android/server/wm/DockedStackDividerController;->mMinimizedDock:Z

    .line 619
    invoke-virtual {p0}, Lcom/android/server/wm/DockedStackDividerController;->isHomeStackResizable()Z

    move-result v2

    .line 618
    invoke-direct {p0, v0, v1, v2}, Lcom/android/server/wm/DockedStackDividerController;->notifyDockedStackMinimizedChanged(ZZZ)V

    .line 620
    iget-boolean v0, p0, Lcom/android/server/wm/DockedStackDividerController;->mAdjustedForIme:Z

    const-wide/16 v1, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/android/server/wm/DockedStackDividerController;->notifyAdjustedForImeChanged(ZJ)V

    .line 622
    return-void
.end method

.method resetImeHideRequested()V
    .registers 2

    .line 545
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/wm/DockedStackDividerController;->mImeHideRequested:Z

    .line 546
    return-void
.end method

.method setAdjustedForIme(ZZZLcom/android/server/wm/WindowState;I)V
    .registers 9
    .param p1, "adjustedForIme"  # Z
    .param p2, "adjustedForDivider"  # Z
    .param p3, "animate"  # Z
    .param p4, "imeWin"  # Lcom/android/server/wm/WindowState;
    .param p5, "imeHeight"  # I

    .line 397
    iget-boolean v0, p0, Lcom/android/server/wm/DockedStackDividerController;->mAdjustedForIme:Z

    if-ne v0, p1, :cond_e

    if-eqz p1, :cond_a

    iget v0, p0, Lcom/android/server/wm/DockedStackDividerController;->mImeHeight:I

    if-ne v0, p5, :cond_e

    :cond_a
    iget-boolean v0, p0, Lcom/android/server/wm/DockedStackDividerController;->mAdjustedForDivider:Z

    if-eq v0, p2, :cond_32

    .line 399
    :cond_e
    const/4 v0, 0x0

    if-eqz p3, :cond_22

    iget-boolean v1, p0, Lcom/android/server/wm/DockedStackDividerController;->mAnimatingForMinimizedDockedStack:Z

    if-nez v1, :cond_22

    .line 402
    iget-boolean v1, p0, Lcom/android/server/wm/DockedStackDividerController;->mMinimizedDock:Z

    .line 403
    invoke-virtual {p0}, Lcom/android/server/wm/DockedStackDividerController;->isHomeStackResizable()Z

    move-result v2

    .line 402
    invoke-direct {p0, v1, v0, v2}, Lcom/android/server/wm/DockedStackDividerController;->notifyDockedStackMinimizedChanged(ZZZ)V

    .line 404
    invoke-direct {p0, p1, p2, p4}, Lcom/android/server/wm/DockedStackDividerController;->startImeAdjustAnimation(ZZLcom/android/server/wm/WindowState;)V

    goto :goto_2c

    .line 407
    :cond_22
    if-nez p1, :cond_26

    if-eqz p2, :cond_27

    :cond_26
    const/4 v0, 0x1

    :cond_27
    const-wide/16 v1, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/android/server/wm/DockedStackDividerController;->notifyAdjustedForImeChanged(ZJ)V

    .line 409
    :goto_2c
    iput-boolean p1, p0, Lcom/android/server/wm/DockedStackDividerController;->mAdjustedForIme:Z

    .line 410
    iput p5, p0, Lcom/android/server/wm/DockedStackDividerController;->mImeHeight:I

    .line 411
    iput-boolean p2, p0, Lcom/android/server/wm/DockedStackDividerController;->mAdjustedForDivider:Z

    .line 413
    :cond_32
    return-void
.end method

.method setResizeDimLayer(ZIF)V
    .registers 9
    .param p1, "visible"  # Z
    .param p2, "targetWindowingMode"  # I
    .param p3, "alpha"  # F

    .line 632
    const/4 v0, 0x0

    if-eqz p2, :cond_a

    .line 633
    iget-object v1, p0, Lcom/android/server/wm/DockedStackDividerController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v1, p2}, Lcom/android/server/wm/DisplayContent;->getTopStackInWindowingMode(I)Lcom/android/server/wm/TaskStack;

    move-result-object v1

    goto :goto_b

    .line 634
    :cond_a
    move-object v1, v0

    :goto_b
    nop

    .line 635
    .local v1, "stack":Lcom/android/server/wm/TaskStack;
    iget-object v2, p0, Lcom/android/server/wm/DockedStackDividerController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v2}, Lcom/android/server/wm/DisplayContent;->getSplitScreenPrimaryStack()Lcom/android/server/wm/TaskStack;

    move-result-object v2

    .line 636
    .local v2, "dockedStack":Lcom/android/server/wm/TaskStack;
    if-eqz p1, :cond_1a

    if-eqz v1, :cond_1a

    if-eqz v2, :cond_1a

    const/4 v3, 0x1

    goto :goto_1b

    :cond_1a
    const/4 v3, 0x0

    .line 640
    .local v3, "visibleAndValid":Z
    :goto_1b
    iget-object v4, p0, Lcom/android/server/wm/DockedStackDividerController;->mDimmedStack:Lcom/android/server/wm/TaskStack;

    if-eqz v4, :cond_26

    if-eq v4, v1, :cond_26

    .line 641
    invoke-virtual {v4}, Lcom/android/server/wm/TaskStack;->stopDimming()V

    .line 642
    iput-object v0, p0, Lcom/android/server/wm/DockedStackDividerController;->mDimmedStack:Lcom/android/server/wm/TaskStack;

    .line 645
    :cond_26
    if-eqz v3, :cond_2d

    .line 646
    iput-object v1, p0, Lcom/android/server/wm/DockedStackDividerController;->mDimmedStack:Lcom/android/server/wm/TaskStack;

    .line 647
    invoke-virtual {v1, p3}, Lcom/android/server/wm/TaskStack;->dim(F)V

    .line 649
    :cond_2d
    if-nez v3, :cond_36

    if-eqz v1, :cond_36

    .line 650
    iput-object v0, p0, Lcom/android/server/wm/DockedStackDividerController;->mDimmedStack:Lcom/android/server/wm/TaskStack;

    .line 651
    invoke-virtual {v1}, Lcom/android/server/wm/TaskStack;->stopDimming()V

    .line 653
    :cond_36
    return-void
.end method

.method setResizing(Z)V
    .registers 3
    .param p1, "resizing"  # Z

    .line 347
    iget-boolean v0, p0, Lcom/android/server/wm/DockedStackDividerController;->mResizing:Z

    if-eq v0, p1, :cond_9

    .line 348
    iput-boolean p1, p0, Lcom/android/server/wm/DockedStackDividerController;->mResizing:Z

    .line 349
    invoke-direct {p0}, Lcom/android/server/wm/DockedStackDividerController;->resetDragResizingChangeReported()V

    .line 351
    :cond_9
    return-void
.end method

.method setTouchRegion(Landroid/graphics/Rect;)V
    .registers 3
    .param p1, "touchRegion"  # Landroid/graphics/Rect;

    .line 354
    iget-object v0, p0, Lcom/android/server/wm/DockedStackDividerController;->mTouchRegion:Landroid/graphics/Rect;

    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 355
    return-void
.end method

.method setWindow(Lcom/android/server/wm/WindowState;)V
    .registers 3
    .param p1, "window"  # Lcom/android/server/wm/WindowState;

    .line 368
    iput-object p1, p0, Lcom/android/server/wm/DockedStackDividerController;->mWindow:Lcom/android/server/wm/WindowState;

    .line 369
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/server/wm/DockedStackDividerController;->reevaluateVisibility(Z)V

    .line 370
    return-void
.end method

.method public toShortString()Ljava/lang/String;
    .registers 2

    .line 1024
    const-string v0, "WindowManager"

    return-object v0
.end method

.method writeToProto(Landroid/util/proto/ProtoOutputStream;J)V
    .registers 9
    .param p1, "proto"  # Landroid/util/proto/ProtoOutputStream;
    .param p2, "fieldId"  # J

    .line 1040
    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v0

    .line 1041
    .local v0, "token":J
    iget-boolean v2, p0, Lcom/android/server/wm/DockedStackDividerController;->mMinimizedDock:Z

    const-wide v3, 0x10800000001L

    invoke-virtual {p1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 1042
    invoke-virtual {p1, v0, v1}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 1043
    return-void
.end method
