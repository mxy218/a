.class public Lcom/android/server/wm/BoundsAnimationController;
.super Ljava/lang/Object;
.source "BoundsAnimationController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wm/BoundsAnimationController$BoundsAnimator;,
        Lcom/android/server/wm/BoundsAnimationController$AppTransitionNotifier;,
        Lcom/android/server/wm/BoundsAnimationController$AnimationType;,
        Lcom/android/server/wm/BoundsAnimationController$SchedulePipModeChangedState;
    }
.end annotation


# static fields
.field public static final BOUNDS:I = 0x0

.field private static final DEBUG:Z = false

.field private static final DEBUG_ANIMATION_SLOW_DOWN_FACTOR:I = 0x1

.field private static final DEBUG_LOCAL:Z = false

.field private static final DEFAULT_TRANSITION_DURATION:I = 0x1a9

.field public static final FADE_IN:I = 0x1

.field private static final FADE_IN_DURATION:I = 0x1f4

.field public static final NO_PIP_MODE_CHANGED_CALLBACKS:I = 0x0

.field public static final SCHEDULE_PIP_MODE_CHANGED_ON_END:I = 0x2

.field public static final SCHEDULE_PIP_MODE_CHANGED_ON_START:I = 0x1

.field private static final TAG:Ljava/lang/String; = "WindowManager"

.field private static final WAIT_FOR_DRAW_TIMEOUT_MS:I = 0xbb8


# instance fields
.field private final mAnimationHandler:Landroid/animation/AnimationHandler;

.field private mAnimationType:I
    .annotation build Lcom/android/server/wm/BoundsAnimationController$AnimationType;
    .end annotation
.end field

.field private final mAppTransition:Lcom/android/server/wm/AppTransition;

.field private final mAppTransitionNotifier:Lcom/android/server/wm/BoundsAnimationController$AppTransitionNotifier;

.field private mChoreographer:Landroid/view/Choreographer;

.field private final mFastOutSlowInInterpolator:Landroid/view/animation/Interpolator;

.field private mFinishAnimationAfterTransition:Z

.field private final mHandler:Landroid/os/Handler;

.field private mRunningAnimations:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Lcom/android/server/wm/BoundsAnimationTarget;",
            "Lcom/android/server/wm/BoundsAnimationController$BoundsAnimator;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/android/server/wm/AppTransition;Landroid/os/Handler;Landroid/animation/AnimationHandler;)V
    .registers 7

    .line 130
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 84
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/BoundsAnimationController;->mRunningAnimations:Landroid/util/ArrayMap;

    .line 120
    new-instance v0, Lcom/android/server/wm/BoundsAnimationController$AppTransitionNotifier;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/wm/BoundsAnimationController$AppTransitionNotifier;-><init>(Lcom/android/server/wm/BoundsAnimationController;Lcom/android/server/wm/BoundsAnimationController$1;)V

    iput-object v0, p0, Lcom/android/server/wm/BoundsAnimationController;->mAppTransitionNotifier:Lcom/android/server/wm/BoundsAnimationController$AppTransitionNotifier;

    .line 122
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/wm/BoundsAnimationController;->mFinishAnimationAfterTransition:Z

    .line 131
    iput-object p3, p0, Lcom/android/server/wm/BoundsAnimationController;->mHandler:Landroid/os/Handler;

    .line 132
    iput-object p2, p0, Lcom/android/server/wm/BoundsAnimationController;->mAppTransition:Lcom/android/server/wm/AppTransition;

    .line 133
    iget-object p2, p0, Lcom/android/server/wm/BoundsAnimationController;->mAppTransition:Lcom/android/server/wm/AppTransition;

    iget-object v0, p0, Lcom/android/server/wm/BoundsAnimationController;->mAppTransitionNotifier:Lcom/android/server/wm/BoundsAnimationController$AppTransitionNotifier;

    invoke-virtual {p2, v0}, Lcom/android/server/wm/AppTransition;->registerListenerLocked(Lcom/android/server/wm/WindowManagerInternal$AppTransitionListener;)V

    .line 134
    const p2, 0x10c000d

    invoke-static {p1, p2}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/wm/BoundsAnimationController;->mFastOutSlowInInterpolator:Landroid/view/animation/Interpolator;

    .line 136
    iput-object p4, p0, Lcom/android/server/wm/BoundsAnimationController;->mAnimationHandler:Landroid/animation/AnimationHandler;

    .line 137
    if-eqz p4, :cond_35

    .line 139
    new-instance p1, Lcom/android/server/wm/-$$Lambda$BoundsAnimationController$3-yWz6AXIW5r1KElGtHEgHZdi5Q;

    invoke-direct {p1, p0, p4}, Lcom/android/server/wm/-$$Lambda$BoundsAnimationController$3-yWz6AXIW5r1KElGtHEgHZdi5Q;-><init>(Lcom/android/server/wm/BoundsAnimationController;Landroid/animation/AnimationHandler;)V

    invoke-virtual {p3, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 144
    :cond_35
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/wm/BoundsAnimationController;)Z
    .registers 1

    .line 56
    iget-boolean p0, p0, Lcom/android/server/wm/BoundsAnimationController;->mFinishAnimationAfterTransition:Z

    return p0
.end method

.method static synthetic access$002(Lcom/android/server/wm/BoundsAnimationController;Z)Z
    .registers 2

    .line 56
    iput-boolean p1, p0, Lcom/android/server/wm/BoundsAnimationController;->mFinishAnimationAfterTransition:Z

    return p1
.end method

.method static synthetic access$100(Lcom/android/server/wm/BoundsAnimationController;)Landroid/os/Handler;
    .registers 1

    .line 56
    iget-object p0, p0, Lcom/android/server/wm/BoundsAnimationController;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$200(Lcom/android/server/wm/BoundsAnimationController;)Landroid/util/ArrayMap;
    .registers 1

    .line 56
    iget-object p0, p0, Lcom/android/server/wm/BoundsAnimationController;->mRunningAnimations:Landroid/util/ArrayMap;

    return-object p0
.end method

.method static synthetic access$400(Lcom/android/server/wm/BoundsAnimationController;)V
    .registers 1

    .line 56
    invoke-direct {p0}, Lcom/android/server/wm/BoundsAnimationController;->updateBooster()V

    return-void
.end method

.method static synthetic access$500(Lcom/android/server/wm/BoundsAnimationController;)Lcom/android/server/wm/AppTransition;
    .registers 1

    .line 56
    iget-object p0, p0, Lcom/android/server/wm/BoundsAnimationController;->mAppTransition:Lcom/android/server/wm/AppTransition;

    return-object p0
.end method

.method static synthetic access$600(Lcom/android/server/wm/BoundsAnimationController;)Landroid/animation/AnimationHandler;
    .registers 1

    .line 56
    iget-object p0, p0, Lcom/android/server/wm/BoundsAnimationController;->mAnimationHandler:Landroid/animation/AnimationHandler;

    return-object p0
.end method

.method private isRunningFadeInAnimation(Lcom/android/server/wm/BoundsAnimationTarget;)Z
    .registers 4

    .line 559
    iget-object v0, p0, Lcom/android/server/wm/BoundsAnimationController;->mRunningAnimations:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/wm/BoundsAnimationController$BoundsAnimator;

    .line 560
    const/4 v0, 0x1

    if-eqz p1, :cond_18

    invoke-static {p1}, Lcom/android/server/wm/BoundsAnimationController$BoundsAnimator;->access$1300(Lcom/android/server/wm/BoundsAnimationController$BoundsAnimator;)I

    move-result v1

    if-ne v1, v0, :cond_18

    invoke-virtual {p1}, Lcom/android/server/wm/BoundsAnimationController$BoundsAnimator;->isStarted()Z

    move-result p1

    if-eqz p1, :cond_18

    goto :goto_19

    :cond_18
    const/4 v0, 0x0

    :goto_19
    return v0
.end method

.method public static synthetic lambda$MoVv_WhxoMrTVo-xz1qu2FMcYrM(Lcom/android/server/wm/BoundsAnimationController;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/wm/BoundsAnimationController;->resume()V

    return-void
.end method

.method private resume()V
    .registers 3

    .line 564
    const/4 v0, 0x0

    :goto_1
    iget-object v1, p0, Lcom/android/server/wm/BoundsAnimationController;->mRunningAnimations:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v1

    if-ge v0, v1, :cond_17

    .line 565
    iget-object v1, p0, Lcom/android/server/wm/BoundsAnimationController;->mRunningAnimations:Landroid/util/ArrayMap;

    invoke-virtual {v1, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/BoundsAnimationController$BoundsAnimator;

    .line 566
    invoke-virtual {v1}, Lcom/android/server/wm/BoundsAnimationController$BoundsAnimator;->resume()V

    .line 564
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 568
    :cond_17
    return-void
.end method

.method private updateBooster()V
    .registers 3

    .line 571
    sget-object v0, Lcom/android/server/wm/WindowManagerService;->sThreadPriorityBooster:Lcom/android/server/wm/WindowManagerThreadPriorityBooster;

    iget-object v1, p0, Lcom/android/server/wm/BoundsAnimationController;->mRunningAnimations:Landroid/util/ArrayMap;

    .line 572
    invoke-virtual {v1}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result v1

    .line 571
    xor-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/server/wm/WindowManagerThreadPriorityBooster;->setBoundsAnimationRunning(Z)V

    .line 573
    return-void
.end method


# virtual methods
.method public animateBounds(Lcom/android/server/wm/BoundsAnimationTarget;Landroid/graphics/Rect;Landroid/graphics/Rect;IIZZI)V
    .registers 9
    .param p8  # I
        .annotation build Lcom/android/server/wm/BoundsAnimationController$AnimationType;
        .end annotation
    .end param

    .line 434
    invoke-virtual/range {p0 .. p8}, Lcom/android/server/wm/BoundsAnimationController;->animateBoundsImpl(Lcom/android/server/wm/BoundsAnimationTarget;Landroid/graphics/Rect;Landroid/graphics/Rect;IIZZI)Lcom/android/server/wm/BoundsAnimationController$BoundsAnimator;

    .line 436
    return-void
.end method

.method animateBoundsImpl(Lcom/android/server/wm/BoundsAnimationTarget;Landroid/graphics/Rect;Landroid/graphics/Rect;IIZZI)Lcom/android/server/wm/BoundsAnimationController$BoundsAnimator;
    .registers 25
    .param p8  # I
        .annotation build Lcom/android/server/wm/BoundsAnimationController$AnimationType;
        .end annotation
    .end param
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 455
    move-object/from16 v11, p0

    move-object/from16 v12, p1

    move-object/from16 v5, p3

    move/from16 v0, p5

    iget-object v1, v11, Lcom/android/server/wm/BoundsAnimationController;->mRunningAnimations:Landroid/util/ArrayMap;

    invoke-virtual {v1, v12}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/BoundsAnimationController$BoundsAnimator;

    .line 457
    invoke-direct/range {p0 .. p1}, Lcom/android/server/wm/BoundsAnimationController;->isRunningFadeInAnimation(Lcom/android/server/wm/BoundsAnimationTarget;)Z

    move-result v2

    const/4 v13, 0x1

    if-eqz v2, :cond_2d

    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Rect;->width()I

    move-result v2

    invoke-virtual/range {p3 .. p3}, Landroid/graphics/Rect;->width()I

    move-result v3

    if-ne v2, v3, :cond_2d

    .line 458
    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Rect;->height()I

    move-result v2

    invoke-virtual/range {p3 .. p3}, Landroid/graphics/Rect;->height()I

    move-result v3

    if-ne v2, v3, :cond_2d

    .line 459
    move v14, v13

    goto :goto_2f

    .line 461
    :cond_2d
    move/from16 v14, p8

    :goto_2f
    const/4 v2, 0x0

    if-eqz v1, :cond_34

    move v3, v13

    goto :goto_35

    :cond_34
    move v3, v2

    .line 462
    :goto_35
    nop

    .line 469
    new-instance v10, Landroid/graphics/Rect;

    invoke-direct {v10}, Landroid/graphics/Rect;-><init>()V

    .line 470
    const/4 v15, 0x2

    if-eqz v3, :cond_92

    .line 471
    invoke-virtual {v1, v5}, Lcom/android/server/wm/BoundsAnimationController$BoundsAnimator;->isAnimatingTo(Landroid/graphics/Rect;)Z

    move-result v3

    if-eqz v3, :cond_55

    if-eqz p7, :cond_4c

    invoke-static {v1}, Lcom/android/server/wm/BoundsAnimationController$BoundsAnimator;->access$800(Lcom/android/server/wm/BoundsAnimationController$BoundsAnimator;)Z

    move-result v3

    if-eqz v3, :cond_55

    :cond_4c
    if-eqz p6, :cond_54

    .line 472
    invoke-static {v1}, Lcom/android/server/wm/BoundsAnimationController$BoundsAnimator;->access$900(Lcom/android/server/wm/BoundsAnimationController$BoundsAnimator;)Z

    move-result v3

    if-eqz v3, :cond_55

    .line 478
    :cond_54
    return-object v1

    .line 482
    :cond_55
    invoke-static {v1}, Lcom/android/server/wm/BoundsAnimationController$BoundsAnimator;->access$1000(Lcom/android/server/wm/BoundsAnimationController$BoundsAnimator;)I

    move-result v3

    .line 485
    invoke-static {v1}, Lcom/android/server/wm/BoundsAnimationController$BoundsAnimator;->access$1000(Lcom/android/server/wm/BoundsAnimationController$BoundsAnimator;)I

    move-result v4

    if-ne v4, v13, :cond_64

    .line 486
    if-ne v0, v13, :cond_62

    goto :goto_6e

    .line 492
    :cond_62
    move v0, v15

    goto :goto_6e

    .line 494
    :cond_64
    invoke-static {v1}, Lcom/android/server/wm/BoundsAnimationController$BoundsAnimator;->access$1000(Lcom/android/server/wm/BoundsAnimationController$BoundsAnimator;)I

    move-result v4

    if-ne v4, v15, :cond_6e

    .line 495
    if-ne v0, v13, :cond_6d

    goto :goto_6e

    .line 501
    :cond_6d
    move v0, v15

    .line 507
    :cond_6e
    :goto_6e
    if-nez p6, :cond_7b

    if-nez p7, :cond_7b

    .line 508
    invoke-static {v1}, Lcom/android/server/wm/BoundsAnimationController$BoundsAnimator;->access$800(Lcom/android/server/wm/BoundsAnimationController$BoundsAnimator;)Z

    move-result v4

    .line 509
    invoke-static {v1}, Lcom/android/server/wm/BoundsAnimationController$BoundsAnimator;->access$900(Lcom/android/server/wm/BoundsAnimationController$BoundsAnimator;)Z

    move-result v6

    goto :goto_7f

    .line 515
    :cond_7b
    move/from16 v6, p6

    move/from16 v4, p7

    :goto_7f
    invoke-static {v1}, Lcom/android/server/wm/BoundsAnimationController$BoundsAnimator;->access$1100(Lcom/android/server/wm/BoundsAnimationController$BoundsAnimator;)I

    move-result v7

    invoke-static {v1}, Lcom/android/server/wm/BoundsAnimationController$BoundsAnimator;->access$1200(Lcom/android/server/wm/BoundsAnimationController$BoundsAnimator;)I

    move-result v8

    invoke-virtual {v10, v2, v2, v7, v8}, Landroid/graphics/Rect;->set(IIII)V

    .line 518
    invoke-virtual {v1}, Lcom/android/server/wm/BoundsAnimationController$BoundsAnimator;->cancel()V

    move v7, v3

    move v9, v4

    move v8, v6

    move v6, v0

    goto :goto_98

    .line 470
    :cond_92
    move/from16 v8, p6

    move/from16 v9, p7

    move v6, v0

    move v7, v2

    .line 520
    :goto_98
    if-ne v14, v13, :cond_9e

    .line 521
    const/4 v0, 0x0

    invoke-interface {v12, v5, v0}, Lcom/android/server/wm/BoundsAnimationTarget;->setPinnedStackSize(Landroid/graphics/Rect;Landroid/graphics/Rect;)Z

    .line 524
    :cond_9e
    new-instance v4, Lcom/android/server/wm/BoundsAnimationController$BoundsAnimator;

    move-object v0, v4

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move v3, v14

    move-object v13, v4

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    invoke-direct/range {v0 .. v10}, Lcom/android/server/wm/BoundsAnimationController$BoundsAnimator;-><init>(Lcom/android/server/wm/BoundsAnimationController;Lcom/android/server/wm/BoundsAnimationTarget;ILandroid/graphics/Rect;Landroid/graphics/Rect;IIZZLandroid/graphics/Rect;)V

    .line 527
    iget-object v0, v11, Lcom/android/server/wm/BoundsAnimationController;->mRunningAnimations:Landroid/util/ArrayMap;

    invoke-virtual {v0, v12, v13}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 528
    new-array v0, v15, [F

    fill-array-data v0, :array_da

    invoke-virtual {v13, v0}, Lcom/android/server/wm/BoundsAnimationController$BoundsAnimator;->setFloatValues([F)V

    .line 529
    const/4 v0, 0x1

    if-ne v14, v0, :cond_c1

    const-wide/16 v0, 0x1f4

    goto :goto_cd

    .line 530
    :cond_c1
    const/4 v0, -0x1

    move/from16 v1, p4

    if-eq v1, v0, :cond_c8

    move v0, v1

    goto :goto_ca

    :cond_c8
    const/16 v0, 0x1a9

    :goto_ca
    const/4 v1, 0x1

    mul-int/2addr v0, v1

    int-to-long v0, v0

    .line 529
    :goto_cd
    invoke-virtual {v13, v0, v1}, Lcom/android/server/wm/BoundsAnimationController$BoundsAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 532
    iget-object v0, v11, Lcom/android/server/wm/BoundsAnimationController;->mFastOutSlowInInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v13, v0}, Lcom/android/server/wm/BoundsAnimationController$BoundsAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 533
    invoke-virtual {v13}, Lcom/android/server/wm/BoundsAnimationController$BoundsAnimator;->start()V

    .line 534
    return-object v13

    nop

    :array_da
    .array-data 4
        0x0
        0x3f800000  # 1.0f
    .end array-data
.end method

.method cancel(Lcom/android/server/wm/BoundsAnimationTarget;)V
    .registers 3

    .line 442
    iget-object v0, p0, Lcom/android/server/wm/BoundsAnimationController;->mRunningAnimations:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/wm/BoundsAnimationController$BoundsAnimator;

    .line 443
    if-eqz p1, :cond_d

    .line 446
    invoke-static {p1}, Lcom/android/server/wm/BoundsAnimationController$BoundsAnimator;->access$700(Lcom/android/server/wm/BoundsAnimationController$BoundsAnimator;)V

    .line 448
    :cond_d
    return-void
.end method

.method public getAnimationType()I
    .registers 3
    .annotation build Lcom/android/server/wm/BoundsAnimationController$AnimationType;
    .end annotation

    .line 543
    iget v0, p0, Lcom/android/server/wm/BoundsAnimationController;->mAnimationType:I

    .line 545
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/server/wm/BoundsAnimationController;->mAnimationType:I

    .line 546
    return v0
.end method

.method public getHandler()Landroid/os/Handler;
    .registers 2

    .line 550
    iget-object v0, p0, Lcom/android/server/wm/BoundsAnimationController;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method public synthetic lambda$new$0$BoundsAnimationController(Landroid/animation/AnimationHandler;)V
    .registers 4

    .line 140
    invoke-static {}, Landroid/view/Choreographer;->getSfInstance()Landroid/view/Choreographer;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wm/BoundsAnimationController;->mChoreographer:Landroid/view/Choreographer;

    .line 141
    new-instance v0, Lcom/android/internal/graphics/SfVsyncFrameCallbackProvider;

    iget-object v1, p0, Lcom/android/server/wm/BoundsAnimationController;->mChoreographer:Landroid/view/Choreographer;

    invoke-direct {v0, v1}, Lcom/android/internal/graphics/SfVsyncFrameCallbackProvider;-><init>(Landroid/view/Choreographer;)V

    invoke-virtual {p1, v0}, Landroid/animation/AnimationHandler;->setProvider(Landroid/animation/AnimationHandler$AnimationFrameCallbackProvider;)V

    .line 142
    return-void
.end method

.method public onAllWindowsDrawn()V
    .registers 3

    .line 555
    iget-object v0, p0, Lcom/android/server/wm/BoundsAnimationController;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/wm/-$$Lambda$BoundsAnimationController$MoVv_WhxoMrTVo-xz1qu2FMcYrM;

    invoke-direct {v1, p0}, Lcom/android/server/wm/-$$Lambda$BoundsAnimationController$MoVv_WhxoMrTVo-xz1qu2FMcYrM;-><init>(Lcom/android/server/wm/BoundsAnimationController;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 556
    return-void
.end method

.method public setAnimationType(I)V
    .registers 2
    .param p1  # I
        .annotation build Lcom/android/server/wm/BoundsAnimationController$AnimationType;
        .end annotation
    .end param

    .line 538
    iput p1, p0, Lcom/android/server/wm/BoundsAnimationController;->mAnimationType:I

    .line 539
    return-void
.end method
