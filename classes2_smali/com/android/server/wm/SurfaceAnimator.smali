.class Lcom/android/server/wm/SurfaceAnimator;
.super Ljava/lang/Object;
.source "SurfaceAnimator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wm/SurfaceAnimator$Animatable;,
        Lcom/android/server/wm/SurfaceAnimator$OnAnimationFinishedCallback;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "WindowManager"


# instance fields
.field final mAnimatable:Lcom/android/server/wm/SurfaceAnimator$Animatable;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field private mAnimation:Lcom/android/server/wm/AnimationAdapter;

.field final mAnimationFinishedCallback:Ljava/lang/Runnable;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field private mAnimationStartDelayed:Z

.field private final mInnerAnimationFinishedCallback:Lcom/android/server/wm/SurfaceAnimator$OnAnimationFinishedCallback;

.field mLeash:Landroid/view/SurfaceControl;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field private final mService:Lcom/android/server/wm/WindowManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/wm/SurfaceAnimator$Animatable;Ljava/lang/Runnable;Lcom/android/server/wm/WindowManagerService;)V
    .registers 4

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    iput-object p1, p0, Lcom/android/server/wm/SurfaceAnimator;->mAnimatable:Lcom/android/server/wm/SurfaceAnimator$Animatable;

    .line 67
    iput-object p3, p0, Lcom/android/server/wm/SurfaceAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    .line 68
    iput-object p2, p0, Lcom/android/server/wm/SurfaceAnimator;->mAnimationFinishedCallback:Ljava/lang/Runnable;

    .line 69
    invoke-direct {p0, p2}, Lcom/android/server/wm/SurfaceAnimator;->getFinishedCallback(Ljava/lang/Runnable;)Lcom/android/server/wm/SurfaceAnimator$OnAnimationFinishedCallback;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/wm/SurfaceAnimator;->mInnerAnimationFinishedCallback:Lcom/android/server/wm/SurfaceAnimator$OnAnimationFinishedCallback;

    .line 70
    return-void
.end method

.method private cancelAnimation(Landroid/view/SurfaceControl$Transaction;ZZ)V
    .registers 8

    .line 258
    iget-object v0, p0, Lcom/android/server/wm/SurfaceAnimator;->mLeash:Landroid/view/SurfaceControl;

    .line 259
    iget-object v1, p0, Lcom/android/server/wm/SurfaceAnimator;->mAnimation:Lcom/android/server/wm/AnimationAdapter;

    .line 260
    const/4 v2, 0x0

    invoke-direct {p0, p1, v2}, Lcom/android/server/wm/SurfaceAnimator;->reset(Landroid/view/SurfaceControl$Transaction;Z)V

    .line 261
    if-eqz v1, :cond_1a

    .line 262
    iget-boolean v3, p0, Lcom/android/server/wm/SurfaceAnimator;->mAnimationStartDelayed:Z

    if-nez v3, :cond_13

    if-eqz p3, :cond_13

    .line 263
    invoke-interface {v1, v0}, Lcom/android/server/wm/AnimationAdapter;->onAnimationCancelled(Landroid/view/SurfaceControl;)V

    .line 265
    :cond_13
    if-nez p2, :cond_1a

    .line 266
    iget-object v1, p0, Lcom/android/server/wm/SurfaceAnimator;->mAnimationFinishedCallback:Ljava/lang/Runnable;

    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    .line 270
    :cond_1a
    if-eqz p3, :cond_26

    if-eqz v0, :cond_26

    .line 271
    invoke-virtual {p1, v0}, Landroid/view/SurfaceControl$Transaction;->remove(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    .line 272
    iget-object p1, p0, Lcom/android/server/wm/SurfaceAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {p1}, Lcom/android/server/wm/WindowManagerService;->scheduleAnimationLocked()V

    .line 275
    :cond_26
    if-nez p2, :cond_2a

    .line 276
    iput-boolean v2, p0, Lcom/android/server/wm/SurfaceAnimator;->mAnimationStartDelayed:Z

    .line 278
    :cond_2a
    return-void
.end method

.method private createAnimationLeash(Landroid/view/SurfaceControl;Landroid/view/SurfaceControl$Transaction;IIZ)Landroid/view/SurfaceControl;
    .registers 9

    .line 322
    iget-object v0, p0, Lcom/android/server/wm/SurfaceAnimator;->mAnimatable:Lcom/android/server/wm/SurfaceAnimator$Animatable;

    invoke-interface {v0}, Lcom/android/server/wm/SurfaceAnimator$Animatable;->makeAnimationLeash()Landroid/view/SurfaceControl$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wm/SurfaceAnimator;->mAnimatable:Lcom/android/server/wm/SurfaceAnimator$Animatable;

    .line 323
    invoke-interface {v1}, Lcom/android/server/wm/SurfaceAnimator$Animatable;->getAnimationLeashParent()Landroid/view/SurfaceControl;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/SurfaceControl$Builder;->setParent(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Builder;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " - animation-leash"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 324
    invoke-virtual {v0, v1}, Landroid/view/SurfaceControl$Builder;->setName(Ljava/lang/String;)Landroid/view/SurfaceControl$Builder;

    move-result-object v0

    .line 325
    invoke-virtual {v0}, Landroid/view/SurfaceControl$Builder;->build()Landroid/view/SurfaceControl;

    move-result-object v0

    .line 326
    invoke-virtual {p2, v0, p3, p4}, Landroid/view/SurfaceControl$Transaction;->setWindowCrop(Landroid/view/SurfaceControl;II)Landroid/view/SurfaceControl$Transaction;

    .line 327
    invoke-virtual {p2, v0}, Landroid/view/SurfaceControl$Transaction;->show(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    .line 329
    if-eqz p5, :cond_33

    const/4 p3, 0x0

    goto :goto_35

    :cond_33
    const/high16 p3, 0x3f800000  # 1.0f

    :goto_35
    invoke-virtual {p2, v0, p3}, Landroid/view/SurfaceControl$Transaction;->setAlpha(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;

    .line 330
    invoke-virtual {p2, p1, v0}, Landroid/view/SurfaceControl$Transaction;->reparent(Landroid/view/SurfaceControl;Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    .line 331
    return-object v0
.end method

.method private getFinishedCallback(Ljava/lang/Runnable;)Lcom/android/server/wm/SurfaceAnimator$OnAnimationFinishedCallback;
    .registers 3

    .line 74
    new-instance v0, Lcom/android/server/wm/-$$Lambda$SurfaceAnimator$vdRZk66hQVbQCvVXEaQCT1kVmFc;

    invoke-direct {v0, p0, p1}, Lcom/android/server/wm/-$$Lambda$SurfaceAnimator$vdRZk66hQVbQCvVXEaQCT1kVmFc;-><init>(Lcom/android/server/wm/SurfaceAnimator;Ljava/lang/Runnable;)V

    return-object v0
.end method

.method private reset(Landroid/view/SurfaceControl$Transaction;Z)V
    .registers 9

    .line 281
    iget-object v0, p0, Lcom/android/server/wm/SurfaceAnimator;->mAnimatable:Lcom/android/server/wm/SurfaceAnimator$Animatable;

    invoke-interface {v0}, Lcom/android/server/wm/SurfaceAnimator$Animatable;->getSurfaceControl()Landroid/view/SurfaceControl;

    move-result-object v0

    .line 282
    iget-object v1, p0, Lcom/android/server/wm/SurfaceAnimator;->mAnimatable:Lcom/android/server/wm/SurfaceAnimator$Animatable;

    invoke-interface {v1}, Lcom/android/server/wm/SurfaceAnimator$Animatable;->getParentSurfaceControl()Landroid/view/SurfaceControl;

    move-result-object v1

    .line 284
    nop

    .line 289
    iget-object v2, p0, Lcom/android/server/wm/SurfaceAnimator;->mLeash:Landroid/view/SurfaceControl;

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v2, :cond_17

    if-eqz v0, :cond_17

    move v2, v4

    goto :goto_18

    :cond_17
    move v2, v3

    .line 290
    :goto_18
    if-eqz v2, :cond_2c

    .line 294
    invoke-virtual {v0}, Landroid/view/SurfaceControl;->isValid()Z

    move-result v5

    if-eqz v5, :cond_2c

    if-eqz v1, :cond_2c

    invoke-virtual {v1}, Landroid/view/SurfaceControl;->isValid()Z

    move-result v5

    if-eqz v5, :cond_2c

    .line 295
    invoke-virtual {p1, v0, v1}, Landroid/view/SurfaceControl$Transaction;->reparent(Landroid/view/SurfaceControl;Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    .line 296
    move v3, v4

    .line 299
    :cond_2c
    iget-object v0, p0, Lcom/android/server/wm/SurfaceAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mAnimationTransferMap:Landroid/util/ArrayMap;

    iget-object v1, p0, Lcom/android/server/wm/SurfaceAnimator;->mAnimation:Lcom/android/server/wm/AnimationAdapter;

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 300
    iget-object v0, p0, Lcom/android/server/wm/SurfaceAnimator;->mLeash:Landroid/view/SurfaceControl;

    if-eqz v0, :cond_3f

    if-eqz p2, :cond_3f

    .line 301
    invoke-virtual {p1, v0}, Landroid/view/SurfaceControl$Transaction;->remove(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    .line 302
    move v3, v4

    .line 304
    :cond_3f
    const/4 p2, 0x0

    iput-object p2, p0, Lcom/android/server/wm/SurfaceAnimator;->mLeash:Landroid/view/SurfaceControl;

    .line 305
    iput-object p2, p0, Lcom/android/server/wm/SurfaceAnimator;->mAnimation:Lcom/android/server/wm/AnimationAdapter;

    .line 307
    if-eqz v2, :cond_4c

    .line 310
    iget-object p2, p0, Lcom/android/server/wm/SurfaceAnimator;->mAnimatable:Lcom/android/server/wm/SurfaceAnimator$Animatable;

    invoke-interface {p2, p1}, Lcom/android/server/wm/SurfaceAnimator$Animatable;->onAnimationLeashLost(Landroid/view/SurfaceControl$Transaction;)V

    .line 311
    move v3, v4

    .line 314
    :cond_4c
    if-eqz v3, :cond_53

    .line 315
    iget-object p1, p0, Lcom/android/server/wm/SurfaceAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {p1}, Lcom/android/server/wm/WindowManagerService;->scheduleAnimationLocked()V

    .line 317
    :cond_53
    return-void
.end method


# virtual methods
.method cancelAnimation()V
    .registers 4

    .line 178
    iget-object v0, p0, Lcom/android/server/wm/SurfaceAnimator;->mAnimatable:Lcom/android/server/wm/SurfaceAnimator$Animatable;

    invoke-interface {v0}, Lcom/android/server/wm/SurfaceAnimator$Animatable;->getPendingTransaction()Landroid/view/SurfaceControl$Transaction;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/android/server/wm/SurfaceAnimator;->cancelAnimation(Landroid/view/SurfaceControl$Transaction;ZZ)V

    .line 180
    iget-object v0, p0, Lcom/android/server/wm/SurfaceAnimator;->mAnimatable:Lcom/android/server/wm/SurfaceAnimator$Animatable;

    invoke-interface {v0}, Lcom/android/server/wm/SurfaceAnimator$Animatable;->commitPendingTransaction()V

    .line 181
    return-void
.end method

.method dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .registers 5

    .line 355
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mLeash="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/wm/SurfaceAnimator;->mLeash:Landroid/view/SurfaceControl;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    .line 356
    iget-boolean v0, p0, Lcom/android/server/wm/SurfaceAnimator;->mAnimationStartDelayed:Z

    if-eqz v0, :cond_1c

    .line 357
    const-string v0, " mAnimationStartDelayed="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/wm/SurfaceAnimator;->mAnimationStartDelayed:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Z)V

    goto :goto_1f

    .line 359
    :cond_1c
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 361
    :goto_1f
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "Animation:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 362
    iget-object v0, p0, Lcom/android/server/wm/SurfaceAnimator;->mAnimation:Lcom/android/server/wm/AnimationAdapter;

    if-eqz v0, :cond_40

    .line 363
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "  "

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Lcom/android/server/wm/AnimationAdapter;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    goto :goto_48

    .line 365
    :cond_40
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string p2, "null"

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 367
    :goto_48
    return-void
.end method

.method endDelayingAnimationStart()V
    .registers 5

    .line 150
    iget-boolean v0, p0, Lcom/android/server/wm/SurfaceAnimator;->mAnimationStartDelayed:Z

    .line 151
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/wm/SurfaceAnimator;->mAnimationStartDelayed:Z

    .line 152
    if-eqz v0, :cond_1d

    iget-object v0, p0, Lcom/android/server/wm/SurfaceAnimator;->mAnimation:Lcom/android/server/wm/AnimationAdapter;

    if-eqz v0, :cond_1d

    .line 153
    iget-object v1, p0, Lcom/android/server/wm/SurfaceAnimator;->mLeash:Landroid/view/SurfaceControl;

    iget-object v2, p0, Lcom/android/server/wm/SurfaceAnimator;->mAnimatable:Lcom/android/server/wm/SurfaceAnimator$Animatable;

    invoke-interface {v2}, Lcom/android/server/wm/SurfaceAnimator$Animatable;->getPendingTransaction()Landroid/view/SurfaceControl$Transaction;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/wm/SurfaceAnimator;->mInnerAnimationFinishedCallback:Lcom/android/server/wm/SurfaceAnimator$OnAnimationFinishedCallback;

    invoke-interface {v0, v1, v2, v3}, Lcom/android/server/wm/AnimationAdapter;->startAnimation(Landroid/view/SurfaceControl;Landroid/view/SurfaceControl$Transaction;Lcom/android/server/wm/SurfaceAnimator$OnAnimationFinishedCallback;)V

    .line 155
    iget-object v0, p0, Lcom/android/server/wm/SurfaceAnimator;->mAnimatable:Lcom/android/server/wm/SurfaceAnimator$Animatable;

    invoke-interface {v0}, Lcom/android/server/wm/SurfaceAnimator$Animatable;->commitPendingTransaction()V

    .line 157
    :cond_1d
    return-void
.end method

.method getAnimation()Lcom/android/server/wm/AnimationAdapter;
    .registers 2

    .line 171
    iget-object v0, p0, Lcom/android/server/wm/SurfaceAnimator;->mAnimation:Lcom/android/server/wm/AnimationAdapter;

    return-object v0
.end method

.method hasLeash()Z
    .registers 2

    .line 215
    iget-object v0, p0, Lcom/android/server/wm/SurfaceAnimator;->mLeash:Landroid/view/SurfaceControl;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method isAnimating()Z
    .registers 2

    .line 164
    iget-object v0, p0, Lcom/android/server/wm/SurfaceAnimator;->mAnimation:Lcom/android/server/wm/AnimationAdapter;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method isAnimationStartDelayed()Z
    .registers 2

    .line 244
    iget-boolean v0, p0, Lcom/android/server/wm/SurfaceAnimator;->mAnimationStartDelayed:Z

    return v0
.end method

.method public synthetic lambda$getFinishedCallback$0$SurfaceAnimator(Lcom/android/server/wm/AnimationAdapter;Ljava/lang/Runnable;)V
    .registers 4

    .line 88
    iget-object v0, p0, Lcom/android/server/wm/SurfaceAnimator;->mAnimation:Lcom/android/server/wm/AnimationAdapter;

    if-eq p1, v0, :cond_5

    .line 89
    return-void

    .line 91
    :cond_5
    iget-object p1, p0, Lcom/android/server/wm/SurfaceAnimator;->mAnimatable:Lcom/android/server/wm/SurfaceAnimator$Animatable;

    invoke-interface {p1}, Lcom/android/server/wm/SurfaceAnimator$Animatable;->getPendingTransaction()Landroid/view/SurfaceControl$Transaction;

    move-result-object p1

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/android/server/wm/SurfaceAnimator;->reset(Landroid/view/SurfaceControl$Transaction;Z)V

    .line 92
    if-eqz p2, :cond_14

    .line 93
    invoke-interface {p2}, Ljava/lang/Runnable;->run()V

    .line 95
    :cond_14
    return-void
.end method

.method public synthetic lambda$getFinishedCallback$1$SurfaceAnimator(Ljava/lang/Runnable;Lcom/android/server/wm/AnimationAdapter;)V
    .registers 5

    .line 75
    iget-object v0, p0, Lcom/android/server/wm/SurfaceAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_5
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 76
    iget-object v1, p0, Lcom/android/server/wm/SurfaceAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mAnimationTransferMap:Landroid/util/ArrayMap;

    invoke-virtual {v1, p2}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/SurfaceAnimator;

    .line 77
    if-eqz v1, :cond_1e

    .line 78
    iget-object p1, v1, Lcom/android/server/wm/SurfaceAnimator;->mInnerAnimationFinishedCallback:Lcom/android/server/wm/SurfaceAnimator$OnAnimationFinishedCallback;

    invoke-interface {p1, p2}, Lcom/android/server/wm/SurfaceAnimator$OnAnimationFinishedCallback;->onAnimationFinished(Lcom/android/server/wm/AnimationAdapter;)V

    .line 79
    monitor-exit v0
    :try_end_1a
    .catchall {:try_start_5 .. :try_end_1a} :catchall_3c

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    .line 82
    :cond_1e
    :try_start_1e
    iget-object v1, p0, Lcom/android/server/wm/SurfaceAnimator;->mAnimation:Lcom/android/server/wm/AnimationAdapter;

    if-eq p2, v1, :cond_27

    .line 83
    monitor-exit v0
    :try_end_23
    .catchall {:try_start_1e .. :try_end_23} :catchall_3c

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    .line 85
    :cond_27
    :try_start_27
    new-instance v1, Lcom/android/server/wm/-$$Lambda$SurfaceAnimator$M9kRDTUpVS03LTqe-QLQz3DnMhk;

    invoke-direct {v1, p0, p2, p1}, Lcom/android/server/wm/-$$Lambda$SurfaceAnimator$M9kRDTUpVS03LTqe-QLQz3DnMhk;-><init>(Lcom/android/server/wm/SurfaceAnimator;Lcom/android/server/wm/AnimationAdapter;Ljava/lang/Runnable;)V

    .line 96
    iget-object p1, p0, Lcom/android/server/wm/SurfaceAnimator;->mAnimatable:Lcom/android/server/wm/SurfaceAnimator$Animatable;

    invoke-interface {p1, v1}, Lcom/android/server/wm/SurfaceAnimator$Animatable;->shouldDeferAnimationFinish(Ljava/lang/Runnable;)Z

    move-result p1

    if-nez p1, :cond_37

    .line 97
    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    .line 99
    :cond_37
    monitor-exit v0
    :try_end_38
    .catchall {:try_start_27 .. :try_end_38} :catchall_3c

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 100
    return-void

    .line 99
    :catchall_3c
    move-exception p1

    :try_start_3d
    monitor-exit v0
    :try_end_3e
    .catchall {:try_start_3d .. :try_end_3e} :catchall_3c

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p1
.end method

.method reparent(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;)V
    .registers 4

    .line 208
    iget-object v0, p0, Lcom/android/server/wm/SurfaceAnimator;->mLeash:Landroid/view/SurfaceControl;

    if-eqz v0, :cond_5

    goto :goto_b

    :cond_5
    iget-object v0, p0, Lcom/android/server/wm/SurfaceAnimator;->mAnimatable:Lcom/android/server/wm/SurfaceAnimator$Animatable;

    invoke-interface {v0}, Lcom/android/server/wm/SurfaceAnimator$Animatable;->getSurfaceControl()Landroid/view/SurfaceControl;

    move-result-object v0

    :goto_b
    invoke-virtual {p1, v0, p2}, Landroid/view/SurfaceControl$Transaction;->reparent(Landroid/view/SurfaceControl;Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    .line 209
    return-void
.end method

.method setLayer(Landroid/view/SurfaceControl$Transaction;I)V
    .registers 4

    .line 190
    iget-object v0, p0, Lcom/android/server/wm/SurfaceAnimator;->mLeash:Landroid/view/SurfaceControl;

    if-eqz v0, :cond_5

    goto :goto_b

    :cond_5
    iget-object v0, p0, Lcom/android/server/wm/SurfaceAnimator;->mAnimatable:Lcom/android/server/wm/SurfaceAnimator$Animatable;

    invoke-interface {v0}, Lcom/android/server/wm/SurfaceAnimator$Animatable;->getSurfaceControl()Landroid/view/SurfaceControl;

    move-result-object v0

    :goto_b
    invoke-virtual {p1, v0, p2}, Landroid/view/SurfaceControl$Transaction;->setLayer(Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;

    .line 191
    return-void
.end method

.method setRelativeLayer(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;I)V
    .registers 5

    .line 199
    iget-object v0, p0, Lcom/android/server/wm/SurfaceAnimator;->mLeash:Landroid/view/SurfaceControl;

    if-eqz v0, :cond_5

    goto :goto_b

    :cond_5
    iget-object v0, p0, Lcom/android/server/wm/SurfaceAnimator;->mAnimatable:Lcom/android/server/wm/SurfaceAnimator$Animatable;

    invoke-interface {v0}, Lcom/android/server/wm/SurfaceAnimator$Animatable;->getSurfaceControl()Landroid/view/SurfaceControl;

    move-result-object v0

    :goto_b
    invoke-virtual {p1, v0, p2, p3}, Landroid/view/SurfaceControl$Transaction;->setRelativeLayer(Landroid/view/SurfaceControl;Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;

    .line 200
    return-void
.end method

.method startAnimation(Landroid/view/SurfaceControl$Transaction;Lcom/android/server/wm/AnimationAdapter;Z)V
    .registers 10

    .line 115
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0, v0}, Lcom/android/server/wm/SurfaceAnimator;->cancelAnimation(Landroid/view/SurfaceControl$Transaction;ZZ)V

    .line 116
    iput-object p2, p0, Lcom/android/server/wm/SurfaceAnimator;->mAnimation:Lcom/android/server/wm/AnimationAdapter;

    .line 117
    iget-object p2, p0, Lcom/android/server/wm/SurfaceAnimator;->mAnimatable:Lcom/android/server/wm/SurfaceAnimator$Animatable;

    invoke-interface {p2}, Lcom/android/server/wm/SurfaceAnimator$Animatable;->getSurfaceControl()Landroid/view/SurfaceControl;

    move-result-object v1

    .line 118
    if-nez v1, :cond_19

    .line 119
    const-string p1, "WindowManager"

    const-string p2, "Unable to start animation, surface is null or no children."

    invoke-static {p1, p2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 120
    invoke-virtual {p0}, Lcom/android/server/wm/SurfaceAnimator;->cancelAnimation()V

    .line 121
    return-void

    .line 123
    :cond_19
    iget-object p2, p0, Lcom/android/server/wm/SurfaceAnimator;->mAnimatable:Lcom/android/server/wm/SurfaceAnimator$Animatable;

    .line 124
    invoke-interface {p2}, Lcom/android/server/wm/SurfaceAnimator$Animatable;->getSurfaceWidth()I

    move-result v3

    iget-object p2, p0, Lcom/android/server/wm/SurfaceAnimator;->mAnimatable:Lcom/android/server/wm/SurfaceAnimator$Animatable;

    invoke-interface {p2}, Lcom/android/server/wm/SurfaceAnimator$Animatable;->getSurfaceHeight()I

    move-result v4

    .line 123
    move-object v0, p0

    move-object v2, p1

    move v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/android/server/wm/SurfaceAnimator;->createAnimationLeash(Landroid/view/SurfaceControl;Landroid/view/SurfaceControl$Transaction;IIZ)Landroid/view/SurfaceControl;

    move-result-object p2

    iput-object p2, p0, Lcom/android/server/wm/SurfaceAnimator;->mLeash:Landroid/view/SurfaceControl;

    .line 125
    iget-object p2, p0, Lcom/android/server/wm/SurfaceAnimator;->mAnimatable:Lcom/android/server/wm/SurfaceAnimator$Animatable;

    iget-object p3, p0, Lcom/android/server/wm/SurfaceAnimator;->mLeash:Landroid/view/SurfaceControl;

    invoke-interface {p2, p1, p3}, Lcom/android/server/wm/SurfaceAnimator$Animatable;->onAnimationLeashCreated(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;)V

    .line 126
    iget-boolean p2, p0, Lcom/android/server/wm/SurfaceAnimator;->mAnimationStartDelayed:Z

    if-eqz p2, :cond_3a

    .line 128
    return-void

    .line 130
    :cond_3a
    iget-object p2, p0, Lcom/android/server/wm/SurfaceAnimator;->mAnimation:Lcom/android/server/wm/AnimationAdapter;

    iget-object p3, p0, Lcom/android/server/wm/SurfaceAnimator;->mLeash:Landroid/view/SurfaceControl;

    iget-object v0, p0, Lcom/android/server/wm/SurfaceAnimator;->mInnerAnimationFinishedCallback:Lcom/android/server/wm/SurfaceAnimator$OnAnimationFinishedCallback;

    invoke-interface {p2, p3, p1, v0}, Lcom/android/server/wm/AnimationAdapter;->startAnimation(Landroid/view/SurfaceControl;Landroid/view/SurfaceControl$Transaction;Lcom/android/server/wm/SurfaceAnimator$OnAnimationFinishedCallback;)V

    .line 131
    return-void
.end method

.method startDelayingAnimationStart()V
    .registers 2

    .line 141
    invoke-virtual {p0}, Lcom/android/server/wm/SurfaceAnimator;->isAnimating()Z

    move-result v0

    if-nez v0, :cond_9

    .line 142
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/wm/SurfaceAnimator;->mAnimationStartDelayed:Z

    .line 144
    :cond_9
    return-void
.end method

.method transferAnimation(Lcom/android/server/wm/SurfaceAnimator;)V
    .registers 6

    .line 219
    iget-object v0, p1, Lcom/android/server/wm/SurfaceAnimator;->mLeash:Landroid/view/SurfaceControl;

    if-nez v0, :cond_5

    .line 220
    return-void

    .line 222
    :cond_5
    iget-object v0, p0, Lcom/android/server/wm/SurfaceAnimator;->mAnimatable:Lcom/android/server/wm/SurfaceAnimator$Animatable;

    invoke-interface {v0}, Lcom/android/server/wm/SurfaceAnimator$Animatable;->getSurfaceControl()Landroid/view/SurfaceControl;

    move-result-object v0

    .line 223
    iget-object v1, p0, Lcom/android/server/wm/SurfaceAnimator;->mAnimatable:Lcom/android/server/wm/SurfaceAnimator$Animatable;

    invoke-interface {v1}, Lcom/android/server/wm/SurfaceAnimator$Animatable;->getAnimationLeashParent()Landroid/view/SurfaceControl;

    move-result-object v1

    .line 224
    if-eqz v0, :cond_4a

    if-nez v1, :cond_16

    goto :goto_4a

    .line 229
    :cond_16
    invoke-virtual {p0}, Lcom/android/server/wm/SurfaceAnimator;->endDelayingAnimationStart()V

    .line 230
    iget-object v2, p0, Lcom/android/server/wm/SurfaceAnimator;->mAnimatable:Lcom/android/server/wm/SurfaceAnimator$Animatable;

    invoke-interface {v2}, Lcom/android/server/wm/SurfaceAnimator$Animatable;->getPendingTransaction()Landroid/view/SurfaceControl$Transaction;

    move-result-object v2

    .line 231
    const/4 v3, 0x1

    invoke-direct {p0, v2, v3, v3}, Lcom/android/server/wm/SurfaceAnimator;->cancelAnimation(Landroid/view/SurfaceControl$Transaction;ZZ)V

    .line 232
    iget-object v3, p1, Lcom/android/server/wm/SurfaceAnimator;->mLeash:Landroid/view/SurfaceControl;

    iput-object v3, p0, Lcom/android/server/wm/SurfaceAnimator;->mLeash:Landroid/view/SurfaceControl;

    .line 233
    iget-object v3, p1, Lcom/android/server/wm/SurfaceAnimator;->mAnimation:Lcom/android/server/wm/AnimationAdapter;

    iput-object v3, p0, Lcom/android/server/wm/SurfaceAnimator;->mAnimation:Lcom/android/server/wm/AnimationAdapter;

    .line 236
    const/4 v3, 0x0

    invoke-direct {p1, v2, v3, v3}, Lcom/android/server/wm/SurfaceAnimator;->cancelAnimation(Landroid/view/SurfaceControl$Transaction;ZZ)V

    .line 237
    iget-object p1, p0, Lcom/android/server/wm/SurfaceAnimator;->mLeash:Landroid/view/SurfaceControl;

    invoke-virtual {v2, v0, p1}, Landroid/view/SurfaceControl$Transaction;->reparent(Landroid/view/SurfaceControl;Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    .line 238
    iget-object p1, p0, Lcom/android/server/wm/SurfaceAnimator;->mLeash:Landroid/view/SurfaceControl;

    invoke-virtual {v2, p1, v1}, Landroid/view/SurfaceControl$Transaction;->reparent(Landroid/view/SurfaceControl;Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    .line 239
    iget-object p1, p0, Lcom/android/server/wm/SurfaceAnimator;->mAnimatable:Lcom/android/server/wm/SurfaceAnimator$Animatable;

    iget-object v0, p0, Lcom/android/server/wm/SurfaceAnimator;->mLeash:Landroid/view/SurfaceControl;

    invoke-interface {p1, v2, v0}, Lcom/android/server/wm/SurfaceAnimator$Animatable;->onAnimationLeashCreated(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;)V

    .line 240
    iget-object p1, p0, Lcom/android/server/wm/SurfaceAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object p1, p1, Lcom/android/server/wm/WindowManagerService;->mAnimationTransferMap:Landroid/util/ArrayMap;

    iget-object v0, p0, Lcom/android/server/wm/SurfaceAnimator;->mAnimation:Lcom/android/server/wm/AnimationAdapter;

    invoke-virtual {p1, v0, p0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 241
    return-void

    .line 225
    :cond_4a
    :goto_4a
    const-string p1, "WindowManager"

    const-string v0, "Unable to transfer animation, surface or parent is null"

    invoke-static {p1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 226
    invoke-virtual {p0}, Lcom/android/server/wm/SurfaceAnimator;->cancelAnimation()V

    .line 227
    return-void
.end method

.method writeToProto(Landroid/util/proto/ProtoOutputStream;J)V
    .registers 7

    .line 343
    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide p2

    .line 344
    iget-object v0, p0, Lcom/android/server/wm/SurfaceAnimator;->mAnimation:Lcom/android/server/wm/AnimationAdapter;

    if-eqz v0, :cond_10

    .line 345
    const-wide v1, 0x10b00000003L

    invoke-interface {v0, p1, v1, v2}, Lcom/android/server/wm/AnimationAdapter;->writeToProto(Landroid/util/proto/ProtoOutputStream;J)V

    .line 347
    :cond_10
    iget-object v0, p0, Lcom/android/server/wm/SurfaceAnimator;->mLeash:Landroid/view/SurfaceControl;

    if-eqz v0, :cond_1c

    .line 348
    const-wide v1, 0x10b00000001L

    invoke-virtual {v0, p1, v1, v2}, Landroid/view/SurfaceControl;->writeToProto(Landroid/util/proto/ProtoOutputStream;J)V

    .line 350
    :cond_1c
    const-wide v0, 0x10800000002L

    iget-boolean v2, p0, Lcom/android/server/wm/SurfaceAnimator;->mAnimationStartDelayed:Z

    invoke-virtual {p1, v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 351
    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 352
    return-void
.end method
