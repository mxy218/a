.class Lcom/android/server/wm/SurfaceAnimationRunner;
.super Ljava/lang/Object;
.source "SurfaceAnimationRunner.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wm/SurfaceAnimationRunner$SfValueAnimator;,
        Lcom/android/server/wm/SurfaceAnimationRunner$AnimatorFactory;,
        Lcom/android/server/wm/SurfaceAnimationRunner$RunningAnimation;
    }
.end annotation


# instance fields
.field private final mAnimationHandler:Landroid/animation/AnimationHandler;

.field private mAnimationStartDeferred:Z
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation
.end field

.field private final mAnimatorFactory:Lcom/android/server/wm/SurfaceAnimationRunner$AnimatorFactory;

.field private mApplyScheduled:Z

.field private final mApplyTransactionRunnable:Ljava/lang/Runnable;

.field private final mCancelLock:Ljava/lang/Object;

.field mChoreographer:Landroid/view/Choreographer;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field private mFrameTimeNs:J

.field private final mFrameTransaction:Landroid/view/SurfaceControl$Transaction;

.field private final mLock:Ljava/lang/Object;

.field final mPendingAnimations:Landroid/util/ArrayMap;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Landroid/view/SurfaceControl;",
            "Lcom/android/server/wm/SurfaceAnimationRunner$RunningAnimation;",
            ">;"
        }
    .end annotation
.end field

.field private mPerf:Landroid/util/BoostFramework;

.field private final mPowerManagerInternal:Landroid/os/PowerManagerInternal;

.field final mRunningAnimations:Landroid/util/ArrayMap;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Landroid/view/SurfaceControl;",
            "Lcom/android/server/wm/SurfaceAnimationRunner$RunningAnimation;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroid/animation/AnimationHandler$AnimationFrameCallbackProvider;Lcom/android/server/wm/SurfaceAnimationRunner$AnimatorFactory;Landroid/view/SurfaceControl$Transaction;Landroid/os/PowerManagerInternal;)V
    .registers 9
    .param p1, "callbackProvider"  # Landroid/animation/AnimationHandler$AnimationFrameCallbackProvider;
    .param p2, "animatorFactory"  # Lcom/android/server/wm/SurfaceAnimationRunner$AnimatorFactory;
    .param p3, "frameTransaction"  # Landroid/view/SurfaceControl$Transaction;
    .param p4, "powerManagerInternal"  # Landroid/os/PowerManagerInternal;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 101
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/SurfaceAnimationRunner;->mLock:Ljava/lang/Object;

    .line 60
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/SurfaceAnimationRunner;->mCancelLock:Ljava/lang/Object;

    .line 65
    new-instance v0, Lcom/android/server/wm/-$$Lambda$SurfaceAnimationRunner$lSzwjoKEGADoEFOzdEnwriAk0T4;

    invoke-direct {v0, p0}, Lcom/android/server/wm/-$$Lambda$SurfaceAnimationRunner$lSzwjoKEGADoEFOzdEnwriAk0T4;-><init>(Lcom/android/server/wm/SurfaceAnimationRunner;)V

    iput-object v0, p0, Lcom/android/server/wm/SurfaceAnimationRunner;->mApplyTransactionRunnable:Ljava/lang/Runnable;

    .line 77
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/SurfaceAnimationRunner;->mPendingAnimations:Landroid/util/ArrayMap;

    .line 81
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/SurfaceAnimationRunner;->mRunningAnimations:Landroid/util/ArrayMap;

    .line 90
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/wm/SurfaceAnimationRunner;->mPerf:Landroid/util/BoostFramework;

    .line 102
    invoke-static {}, Lcom/android/server/wm/SurfaceAnimationThread;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/server/wm/-$$Lambda$SurfaceAnimationRunner$xDyZdsMrcbp64p4BQmOGPvVnSWA;

    invoke-direct {v1, p0}, Lcom/android/server/wm/-$$Lambda$SurfaceAnimationRunner$xDyZdsMrcbp64p4BQmOGPvVnSWA;-><init>(Lcom/android/server/wm/SurfaceAnimationRunner;)V

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->runWithScissors(Ljava/lang/Runnable;J)Z

    .line 104
    iput-object p3, p0, Lcom/android/server/wm/SurfaceAnimationRunner;->mFrameTransaction:Landroid/view/SurfaceControl$Transaction;

    .line 105
    new-instance v0, Landroid/animation/AnimationHandler;

    invoke-direct {v0}, Landroid/animation/AnimationHandler;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/SurfaceAnimationRunner;->mAnimationHandler:Landroid/animation/AnimationHandler;

    .line 106
    iget-object v0, p0, Lcom/android/server/wm/SurfaceAnimationRunner;->mAnimationHandler:Landroid/animation/AnimationHandler;

    if-eqz p1, :cond_46

    .line 107
    move-object v1, p1

    goto :goto_4d

    .line 108
    :cond_46
    new-instance v1, Lcom/android/internal/graphics/SfVsyncFrameCallbackProvider;

    iget-object v2, p0, Lcom/android/server/wm/SurfaceAnimationRunner;->mChoreographer:Landroid/view/Choreographer;

    invoke-direct {v1, v2}, Lcom/android/internal/graphics/SfVsyncFrameCallbackProvider;-><init>(Landroid/view/Choreographer;)V

    .line 106
    :goto_4d
    invoke-virtual {v0, v1}, Landroid/animation/AnimationHandler;->setProvider(Landroid/animation/AnimationHandler$AnimationFrameCallbackProvider;)V

    .line 109
    if-eqz p2, :cond_54

    .line 110
    move-object v0, p2

    goto :goto_59

    .line 111
    :cond_54
    new-instance v0, Lcom/android/server/wm/-$$Lambda$SurfaceAnimationRunner$we7K92eAl3biB_bzyqbv5xCmasE;

    invoke-direct {v0, p0}, Lcom/android/server/wm/-$$Lambda$SurfaceAnimationRunner$we7K92eAl3biB_bzyqbv5xCmasE;-><init>(Lcom/android/server/wm/SurfaceAnimationRunner;)V

    :goto_59
    iput-object v0, p0, Lcom/android/server/wm/SurfaceAnimationRunner;->mAnimatorFactory:Lcom/android/server/wm/SurfaceAnimationRunner$AnimatorFactory;

    .line 112
    iput-object p4, p0, Lcom/android/server/wm/SurfaceAnimationRunner;->mPowerManagerInternal:Landroid/os/PowerManagerInternal;

    .line 113
    return-void
.end method

.method constructor <init>(Landroid/os/PowerManagerInternal;)V
    .registers 4
    .param p1, "powerManagerInternal"  # Landroid/os/PowerManagerInternal;

    .line 94
    new-instance v0, Landroid/view/SurfaceControl$Transaction;

    invoke-direct {v0}, Landroid/view/SurfaceControl$Transaction;-><init>()V

    const/4 v1, 0x0

    invoke-direct {p0, v1, v1, v0, p1}, Lcom/android/server/wm/SurfaceAnimationRunner;-><init>(Landroid/animation/AnimationHandler$AnimationFrameCallbackProvider;Lcom/android/server/wm/SurfaceAnimationRunner$AnimatorFactory;Landroid/view/SurfaceControl$Transaction;Landroid/os/PowerManagerInternal;)V

    .line 96
    return-void
.end method

.method static synthetic access$100(Lcom/android/server/wm/SurfaceAnimationRunner;)Ljava/lang/Object;
    .registers 2
    .param p0, "x0"  # Lcom/android/server/wm/SurfaceAnimationRunner;

    .line 52
    iget-object v0, p0, Lcom/android/server/wm/SurfaceAnimationRunner;->mCancelLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/server/wm/SurfaceAnimationRunner;)Landroid/view/SurfaceControl$Transaction;
    .registers 2
    .param p0, "x0"  # Lcom/android/server/wm/SurfaceAnimationRunner;

    .line 52
    iget-object v0, p0, Lcom/android/server/wm/SurfaceAnimationRunner;->mFrameTransaction:Landroid/view/SurfaceControl$Transaction;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/server/wm/SurfaceAnimationRunner;)Ljava/lang/Object;
    .registers 2
    .param p0, "x0"  # Lcom/android/server/wm/SurfaceAnimationRunner;

    .line 52
    iget-object v0, p0, Lcom/android/server/wm/SurfaceAnimationRunner;->mLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/server/wm/SurfaceAnimationRunner;)Landroid/animation/AnimationHandler;
    .registers 2
    .param p0, "x0"  # Lcom/android/server/wm/SurfaceAnimationRunner;

    .line 52
    iget-object v0, p0, Lcom/android/server/wm/SurfaceAnimationRunner;->mAnimationHandler:Landroid/animation/AnimationHandler;

    return-object v0
.end method

.method private applyTransaction()V
    .registers 3

    .line 299
    iget-object v0, p0, Lcom/android/server/wm/SurfaceAnimationRunner;->mFrameTransaction:Landroid/view/SurfaceControl$Transaction;

    invoke-virtual {v0}, Landroid/view/SurfaceControl$Transaction;->setAnimationTransaction()Landroid/view/SurfaceControl$Transaction;

    .line 300
    iget-object v0, p0, Lcom/android/server/wm/SurfaceAnimationRunner;->mFrameTransaction:Landroid/view/SurfaceControl$Transaction;

    invoke-virtual {v0}, Landroid/view/SurfaceControl$Transaction;->apply()V

    .line 301
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/wm/SurfaceAnimationRunner;->mApplyScheduled:Z

    .line 304
    iget-wide v0, p0, Lcom/android/server/wm/SurfaceAnimationRunner;->mFrameTimeNs:J

    invoke-static {v0, v1}, Lcom/android/server/wm/AnimatorFrameInfo;->postAnimationUpdate(J)V

    .line 306
    return-void
.end method

.method private applyTransformation(Lcom/android/server/wm/SurfaceAnimationRunner$RunningAnimation;Landroid/view/SurfaceControl$Transaction;J)V
    .registers 7
    .param p1, "a"  # Lcom/android/server/wm/SurfaceAnimationRunner$RunningAnimation;
    .param p2, "t"  # Landroid/view/SurfaceControl$Transaction;
    .param p3, "currentPlayTime"  # J

    .line 273
    iget-object v0, p1, Lcom/android/server/wm/SurfaceAnimationRunner$RunningAnimation;->mAnimSpec:Lcom/android/server/wm/LocalAnimationAdapter$AnimationSpec;

    invoke-interface {v0}, Lcom/android/server/wm/LocalAnimationAdapter$AnimationSpec;->needsEarlyWakeup()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 274
    invoke-virtual {p2}, Landroid/view/SurfaceControl$Transaction;->setEarlyWakeup()Landroid/view/SurfaceControl$Transaction;

    .line 276
    :cond_b
    iget-object v0, p1, Lcom/android/server/wm/SurfaceAnimationRunner$RunningAnimation;->mAnimSpec:Lcom/android/server/wm/LocalAnimationAdapter$AnimationSpec;

    iget-object v1, p1, Lcom/android/server/wm/SurfaceAnimationRunner$RunningAnimation;->mLeash:Landroid/view/SurfaceControl;

    invoke-interface {v0, p2, v1, p3, p4}, Lcom/android/server/wm/LocalAnimationAdapter$AnimationSpec;->apply(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;J)V

    .line 277
    return-void
.end method

.method public static synthetic lambda$9Wa9MhcrSX12liOouHtYXEkDU60(Lcom/android/server/wm/SurfaceAnimationRunner;J)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/server/wm/SurfaceAnimationRunner;->startAnimations(J)V

    return-void
.end method

.method public static synthetic lambda$lSzwjoKEGADoEFOzdEnwriAk0T4(Lcom/android/server/wm/SurfaceAnimationRunner;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/wm/SurfaceAnimationRunner;->applyTransaction()V

    return-void
.end method

.method private scheduleApplyTransaction()V
    .registers 5

    .line 287
    iget-boolean v0, p0, Lcom/android/server/wm/SurfaceAnimationRunner;->mApplyScheduled:Z

    if-nez v0, :cond_18

    .line 290
    iget-object v0, p0, Lcom/android/server/wm/SurfaceAnimationRunner;->mChoreographer:Landroid/view/Choreographer;

    invoke-virtual {v0}, Landroid/view/Choreographer;->getFrameTimeNanos()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/wm/SurfaceAnimationRunner;->mFrameTimeNs:J

    .line 292
    iget-object v0, p0, Lcom/android/server/wm/SurfaceAnimationRunner;->mChoreographer:Landroid/view/Choreographer;

    const/4 v1, 0x3

    iget-object v2, p0, Lcom/android/server/wm/SurfaceAnimationRunner;->mApplyTransactionRunnable:Ljava/lang/Runnable;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/Choreographer;->postCallback(ILjava/lang/Runnable;Ljava/lang/Object;)V

    .line 294
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/wm/SurfaceAnimationRunner;->mApplyScheduled:Z

    .line 296
    :cond_18
    return-void
.end method

.method private startAnimationLocked(Lcom/android/server/wm/SurfaceAnimationRunner$RunningAnimation;)V
    .registers 7
    .param p1, "a"  # Lcom/android/server/wm/SurfaceAnimationRunner$RunningAnimation;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 199
    iget-object v0, p0, Lcom/android/server/wm/SurfaceAnimationRunner;->mRunningAnimations:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2e

    .line 200
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "postAnimationStart:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-wide/16 v1, 0x20

    invoke-static {v1, v2, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 201
    iget-object v0, p0, Lcom/android/server/wm/SurfaceAnimationRunner;->mChoreographer:Landroid/view/Choreographer;

    invoke-virtual {v0}, Landroid/view/Choreographer;->getFrameTimeNanos()J

    move-result-wide v3

    invoke-static {v3, v4}, Lcom/android/server/wm/AnimatorFrameInfo;->postAnimationStart(J)V

    .line 202
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 205
    :cond_2e
    iget-object v0, p0, Lcom/android/server/wm/SurfaceAnimationRunner;->mAnimatorFactory:Lcom/android/server/wm/SurfaceAnimationRunner$AnimatorFactory;

    invoke-interface {v0}, Lcom/android/server/wm/SurfaceAnimationRunner$AnimatorFactory;->makeAnimator()Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 208
    .local v0, "anim":Landroid/animation/ValueAnimator;
    const/high16 v1, 0x3f800000  # 1.0f

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->overrideDurationScale(F)V

    .line 209
    iget-object v1, p1, Lcom/android/server/wm/SurfaceAnimationRunner$RunningAnimation;->mAnimSpec:Lcom/android/server/wm/LocalAnimationAdapter$AnimationSpec;

    invoke-interface {v1}, Lcom/android/server/wm/LocalAnimationAdapter$AnimationSpec;->getDuration()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 210
    new-instance v1, Lcom/android/server/wm/-$$Lambda$SurfaceAnimationRunner$puhYAP5tF0mSSJva-eUz59HnrkA;

    invoke-direct {v1, p0, p1, v0}, Lcom/android/server/wm/-$$Lambda$SurfaceAnimationRunner$puhYAP5tF0mSSJva-eUz59HnrkA;-><init>(Lcom/android/server/wm/SurfaceAnimationRunner;Lcom/android/server/wm/SurfaceAnimationRunner$RunningAnimation;Landroid/animation/ValueAnimator;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 226
    new-instance v1, Lcom/android/server/wm/SurfaceAnimationRunner$1;

    invoke-direct {v1, p0, p1, v0}, Lcom/android/server/wm/SurfaceAnimationRunner$1;-><init>(Lcom/android/server/wm/SurfaceAnimationRunner;Lcom/android/server/wm/SurfaceAnimationRunner$RunningAnimation;Landroid/animation/ValueAnimator;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 258
    iput-object v0, p1, Lcom/android/server/wm/SurfaceAnimationRunner$RunningAnimation;->mAnim:Landroid/animation/ValueAnimator;

    .line 259
    iget-object v1, p0, Lcom/android/server/wm/SurfaceAnimationRunner;->mRunningAnimations:Landroid/util/ArrayMap;

    iget-object v2, p1, Lcom/android/server/wm/SurfaceAnimationRunner$RunningAnimation;->mLeash:Landroid/view/SurfaceControl;

    invoke-virtual {v1, v2, p1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 261
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 262
    iget-object v1, p1, Lcom/android/server/wm/SurfaceAnimationRunner$RunningAnimation;->mAnimSpec:Lcom/android/server/wm/LocalAnimationAdapter$AnimationSpec;

    invoke-interface {v1}, Lcom/android/server/wm/LocalAnimationAdapter$AnimationSpec;->canSkipFirstFrame()Z

    move-result v1

    if-eqz v1, :cond_73

    .line 264
    iget-object v1, p0, Lcom/android/server/wm/SurfaceAnimationRunner;->mChoreographer:Landroid/view/Choreographer;

    invoke-virtual {v1}, Landroid/view/Choreographer;->getFrameIntervalNanos()J

    move-result-wide v1

    const-wide/32 v3, 0xf4240

    div-long/2addr v1, v3

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setCurrentPlayTime(J)V

    .line 269
    :cond_73
    iget-object v1, p0, Lcom/android/server/wm/SurfaceAnimationRunner;->mChoreographer:Landroid/view/Choreographer;

    invoke-virtual {v1}, Landroid/view/Choreographer;->getFrameTime()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->doAnimationFrame(J)Z

    .line 270
    return-void
.end method

.method private startAnimations(J)V
    .registers 6
    .param p1, "frameTimeNanos"  # J

    .line 280
    iget-object v0, p0, Lcom/android/server/wm/SurfaceAnimationRunner;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 281
    :try_start_3
    invoke-direct {p0}, Lcom/android/server/wm/SurfaceAnimationRunner;->startPendingAnimationsLocked()V

    .line 282
    monitor-exit v0
    :try_end_7
    .catchall {:try_start_3 .. :try_end_7} :catchall_f

    .line 283
    iget-object v0, p0, Lcom/android/server/wm/SurfaceAnimationRunner;->mPowerManagerInternal:Landroid/os/PowerManagerInternal;

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManagerInternal;->powerHint(II)V

    .line 284
    return-void

    .line 282
    :catchall_f
    move-exception v1

    :try_start_10
    monitor-exit v0
    :try_end_11
    .catchall {:try_start_10 .. :try_end_11} :catchall_f

    throw v1
.end method

.method private startPendingAnimationsLocked()V
    .registers 6
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 181
    const-wide/16 v0, 0x8

    const-string v2, "startPendingAnimations"

    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 182
    iget-object v2, p0, Lcom/android/server/wm/SurfaceAnimationRunner;->mPerf:Landroid/util/BoostFramework;

    if-nez v2, :cond_12

    .line 183
    new-instance v2, Landroid/util/BoostFramework;

    invoke-direct {v2}, Landroid/util/BoostFramework;-><init>()V

    iput-object v2, p0, Lcom/android/server/wm/SurfaceAnimationRunner;->mPerf:Landroid/util/BoostFramework;

    .line 185
    :cond_12
    iget-object v2, p0, Lcom/android/server/wm/SurfaceAnimationRunner;->mPerf:Landroid/util/BoostFramework;

    const/16 v3, 0x1083

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/util/BoostFramework;->perfHint(ILjava/lang/String;)I

    .line 186
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 189
    iget-object v0, p0, Lcom/android/server/wm/SurfaceAnimationRunner;->mPendingAnimations:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_25
    if-ltz v0, :cond_35

    .line 190
    iget-object v1, p0, Lcom/android/server/wm/SurfaceAnimationRunner;->mPendingAnimations:Landroid/util/ArrayMap;

    invoke-virtual {v1, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/SurfaceAnimationRunner$RunningAnimation;

    invoke-direct {p0, v1}, Lcom/android/server/wm/SurfaceAnimationRunner;->startAnimationLocked(Lcom/android/server/wm/SurfaceAnimationRunner$RunningAnimation;)V

    .line 189
    add-int/lit8 v0, v0, -0x1

    goto :goto_25

    .line 192
    .end local v0  # "i":I
    :cond_35
    iget-object v0, p0, Lcom/android/server/wm/SurfaceAnimationRunner;->mPendingAnimations:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->clear()V

    .line 193
    return-void
.end method


# virtual methods
.method continueStartingAnimations()V
    .registers 4

    .line 133
    iget-object v0, p0, Lcom/android/server/wm/SurfaceAnimationRunner;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 134
    const/4 v1, 0x0

    :try_start_4
    iput-boolean v1, p0, Lcom/android/server/wm/SurfaceAnimationRunner;->mAnimationStartDeferred:Z

    .line 135
    iget-object v1, p0, Lcom/android/server/wm/SurfaceAnimationRunner;->mPendingAnimations:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_18

    .line 136
    iget-object v1, p0, Lcom/android/server/wm/SurfaceAnimationRunner;->mChoreographer:Landroid/view/Choreographer;

    new-instance v2, Lcom/android/server/wm/-$$Lambda$SurfaceAnimationRunner$9Wa9MhcrSX12liOouHtYXEkDU60;

    invoke-direct {v2, p0}, Lcom/android/server/wm/-$$Lambda$SurfaceAnimationRunner$9Wa9MhcrSX12liOouHtYXEkDU60;-><init>(Lcom/android/server/wm/SurfaceAnimationRunner;)V

    invoke-virtual {v1, v2}, Landroid/view/Choreographer;->postFrameCallback(Landroid/view/Choreographer$FrameCallback;)V

    .line 138
    :cond_18
    monitor-exit v0

    .line 139
    return-void

    .line 138
    :catchall_1a
    move-exception v1

    monitor-exit v0
    :try_end_1c
    .catchall {:try_start_4 .. :try_end_1c} :catchall_1a

    throw v1
.end method

.method deferStartingAnimations()V
    .registers 3

    .line 122
    iget-object v0, p0, Lcom/android/server/wm/SurfaceAnimationRunner;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 123
    const/4 v1, 0x1

    :try_start_4
    iput-boolean v1, p0, Lcom/android/server/wm/SurfaceAnimationRunner;->mAnimationStartDeferred:Z

    .line 124
    monitor-exit v0

    .line 125
    return-void

    .line 124
    :catchall_8
    move-exception v1

    monitor-exit v0
    :try_end_a
    .catchall {:try_start_4 .. :try_end_a} :catchall_8

    throw v1
.end method

.method public synthetic lambda$new$0$SurfaceAnimationRunner()V
    .registers 2

    .line 102
    invoke-static {}, Landroid/view/Choreographer;->getSfInstance()Landroid/view/Choreographer;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wm/SurfaceAnimationRunner;->mChoreographer:Landroid/view/Choreographer;

    return-void
.end method

.method public synthetic lambda$new$1$SurfaceAnimationRunner()Landroid/animation/ValueAnimator;
    .registers 2

    .line 111
    new-instance v0, Lcom/android/server/wm/SurfaceAnimationRunner$SfValueAnimator;

    invoke-direct {v0, p0}, Lcom/android/server/wm/SurfaceAnimationRunner$SfValueAnimator;-><init>(Lcom/android/server/wm/SurfaceAnimationRunner;)V

    return-object v0
.end method

.method public synthetic lambda$onAnimationCancelled$2$SurfaceAnimationRunner(Lcom/android/server/wm/SurfaceAnimationRunner$RunningAnimation;)V
    .registers 3
    .param p1, "anim"  # Lcom/android/server/wm/SurfaceAnimationRunner$RunningAnimation;

    .line 170
    iget-object v0, p1, Lcom/android/server/wm/SurfaceAnimationRunner$RunningAnimation;->mAnim:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 171
    invoke-direct {p0}, Lcom/android/server/wm/SurfaceAnimationRunner;->applyTransaction()V

    .line 172
    return-void
.end method

.method public synthetic lambda$startAnimationLocked$3$SurfaceAnimationRunner(Lcom/android/server/wm/SurfaceAnimationRunner$RunningAnimation;Landroid/animation/ValueAnimator;Landroid/animation/ValueAnimator;)V
    .registers 10
    .param p1, "a"  # Lcom/android/server/wm/SurfaceAnimationRunner$RunningAnimation;
    .param p2, "anim"  # Landroid/animation/ValueAnimator;
    .param p3, "animation"  # Landroid/animation/ValueAnimator;

    .line 211
    iget-object v0, p0, Lcom/android/server/wm/SurfaceAnimationRunner;->mCancelLock:Ljava/lang/Object;

    monitor-enter v0

    .line 212
    :try_start_3
    invoke-static {p1}, Lcom/android/server/wm/SurfaceAnimationRunner$RunningAnimation;->access$000(Lcom/android/server/wm/SurfaceAnimationRunner$RunningAnimation;)Z

    move-result v1

    if-nez v1, :cond_1b

    .line 213
    invoke-virtual {p2}, Landroid/animation/ValueAnimator;->getDuration()J

    move-result-wide v1

    .line 214
    .local v1, "duration":J
    invoke-virtual {p2}, Landroid/animation/ValueAnimator;->getCurrentPlayTime()J

    move-result-wide v3

    .line 215
    .local v3, "currentPlayTime":J
    cmp-long v5, v3, v1

    if-lez v5, :cond_16

    .line 216
    move-wide v3, v1

    .line 218
    :cond_16
    iget-object v5, p0, Lcom/android/server/wm/SurfaceAnimationRunner;->mFrameTransaction:Landroid/view/SurfaceControl$Transaction;

    invoke-direct {p0, p1, v5, v3, v4}, Lcom/android/server/wm/SurfaceAnimationRunner;->applyTransformation(Lcom/android/server/wm/SurfaceAnimationRunner$RunningAnimation;Landroid/view/SurfaceControl$Transaction;J)V

    .line 220
    .end local v1  # "duration":J
    .end local v3  # "currentPlayTime":J
    :cond_1b
    monitor-exit v0
    :try_end_1c
    .catchall {:try_start_3 .. :try_end_1c} :catchall_20

    .line 223
    invoke-direct {p0}, Lcom/android/server/wm/SurfaceAnimationRunner;->scheduleApplyTransaction()V

    .line 224
    return-void

    .line 220
    :catchall_20
    move-exception v1

    :try_start_21
    monitor-exit v0
    :try_end_22
    .catchall {:try_start_21 .. :try_end_22} :catchall_20

    throw v1
.end method

.method onAnimationCancelled(Landroid/view/SurfaceControl;)V
    .registers 6
    .param p1, "leash"  # Landroid/view/SurfaceControl;

    .line 158
    iget-object v0, p0, Lcom/android/server/wm/SurfaceAnimationRunner;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 159
    :try_start_3
    iget-object v1, p0, Lcom/android/server/wm/SurfaceAnimationRunner;->mPendingAnimations:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_12

    .line 160
    iget-object v1, p0, Lcom/android/server/wm/SurfaceAnimationRunner;->mPendingAnimations:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 161
    monitor-exit v0

    return-void

    .line 163
    :cond_12
    iget-object v1, p0, Lcom/android/server/wm/SurfaceAnimationRunner;->mRunningAnimations:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/SurfaceAnimationRunner$RunningAnimation;

    .line 164
    .local v1, "anim":Lcom/android/server/wm/SurfaceAnimationRunner$RunningAnimation;
    if-eqz v1, :cond_39

    .line 165
    iget-object v2, p0, Lcom/android/server/wm/SurfaceAnimationRunner;->mRunningAnimations:Landroid/util/ArrayMap;

    invoke-virtual {v2, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 166
    iget-object v2, p0, Lcom/android/server/wm/SurfaceAnimationRunner;->mCancelLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_24
    .catchall {:try_start_3 .. :try_end_24} :catchall_3b

    .line 167
    const/4 v3, 0x1

    :try_start_25
    invoke-static {v1, v3}, Lcom/android/server/wm/SurfaceAnimationRunner$RunningAnimation;->access$002(Lcom/android/server/wm/SurfaceAnimationRunner$RunningAnimation;Z)Z

    .line 168
    monitor-exit v2
    :try_end_29
    .catchall {:try_start_25 .. :try_end_29} :catchall_36

    .line 169
    :try_start_29
    invoke-static {}, Lcom/android/server/wm/SurfaceAnimationThread;->getHandler()Landroid/os/Handler;

    move-result-object v2

    new-instance v3, Lcom/android/server/wm/-$$Lambda$SurfaceAnimationRunner$SGOilG6qRe0XTsTJRQqQKhta0pA;

    invoke-direct {v3, p0, v1}, Lcom/android/server/wm/-$$Lambda$SurfaceAnimationRunner$SGOilG6qRe0XTsTJRQqQKhta0pA;-><init>(Lcom/android/server/wm/SurfaceAnimationRunner;Lcom/android/server/wm/SurfaceAnimationRunner$RunningAnimation;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_35
    .catchall {:try_start_29 .. :try_end_35} :catchall_3b

    goto :goto_39

    .line 168
    :catchall_36
    move-exception v3

    :try_start_37
    monitor-exit v2
    :try_end_38
    .catchall {:try_start_37 .. :try_end_38} :catchall_36

    .end local p0  # "this":Lcom/android/server/wm/SurfaceAnimationRunner;
    .end local p1  # "leash":Landroid/view/SurfaceControl;
    :try_start_38
    throw v3

    .line 174
    .end local v1  # "anim":Lcom/android/server/wm/SurfaceAnimationRunner$RunningAnimation;
    .restart local p0  # "this":Lcom/android/server/wm/SurfaceAnimationRunner;
    .restart local p1  # "leash":Landroid/view/SurfaceControl;
    :cond_39
    :goto_39
    monitor-exit v0

    .line 175
    return-void

    .line 174
    :catchall_3b
    move-exception v1

    monitor-exit v0
    :try_end_3d
    .catchall {:try_start_38 .. :try_end_3d} :catchall_3b

    throw v1
.end method

.method startAnimation(Lcom/android/server/wm/LocalAnimationAdapter$AnimationSpec;Landroid/view/SurfaceControl;Landroid/view/SurfaceControl$Transaction;Ljava/lang/Runnable;)V
    .registers 9
    .param p1, "a"  # Lcom/android/server/wm/LocalAnimationAdapter$AnimationSpec;
    .param p2, "animationLeash"  # Landroid/view/SurfaceControl;
    .param p3, "t"  # Landroid/view/SurfaceControl$Transaction;
    .param p4, "finishCallback"  # Ljava/lang/Runnable;

    .line 143
    iget-object v0, p0, Lcom/android/server/wm/SurfaceAnimationRunner;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 144
    :try_start_3
    new-instance v1, Lcom/android/server/wm/SurfaceAnimationRunner$RunningAnimation;

    invoke-direct {v1, p1, p2, p4}, Lcom/android/server/wm/SurfaceAnimationRunner$RunningAnimation;-><init>(Lcom/android/server/wm/LocalAnimationAdapter$AnimationSpec;Landroid/view/SurfaceControl;Ljava/lang/Runnable;)V

    .line 146
    .local v1, "runningAnim":Lcom/android/server/wm/SurfaceAnimationRunner$RunningAnimation;
    iget-object v2, p0, Lcom/android/server/wm/SurfaceAnimationRunner;->mPendingAnimations:Landroid/util/ArrayMap;

    invoke-virtual {v2, p2, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 147
    iget-boolean v2, p0, Lcom/android/server/wm/SurfaceAnimationRunner;->mAnimationStartDeferred:Z

    if-nez v2, :cond_1b

    .line 148
    iget-object v2, p0, Lcom/android/server/wm/SurfaceAnimationRunner;->mChoreographer:Landroid/view/Choreographer;

    new-instance v3, Lcom/android/server/wm/-$$Lambda$SurfaceAnimationRunner$9Wa9MhcrSX12liOouHtYXEkDU60;

    invoke-direct {v3, p0}, Lcom/android/server/wm/-$$Lambda$SurfaceAnimationRunner$9Wa9MhcrSX12liOouHtYXEkDU60;-><init>(Lcom/android/server/wm/SurfaceAnimationRunner;)V

    invoke-virtual {v2, v3}, Landroid/view/Choreographer;->postFrameCallback(Landroid/view/Choreographer$FrameCallback;)V

    .line 153
    :cond_1b
    const-wide/16 v2, 0x0

    invoke-direct {p0, v1, p3, v2, v3}, Lcom/android/server/wm/SurfaceAnimationRunner;->applyTransformation(Lcom/android/server/wm/SurfaceAnimationRunner$RunningAnimation;Landroid/view/SurfaceControl$Transaction;J)V

    .line 154
    .end local v1  # "runningAnim":Lcom/android/server/wm/SurfaceAnimationRunner$RunningAnimation;
    monitor-exit v0

    .line 155
    return-void

    .line 154
    :catchall_22
    move-exception v1

    monitor-exit v0
    :try_end_24
    .catchall {:try_start_3 .. :try_end_24} :catchall_22

    throw v1
.end method
