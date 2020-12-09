.class Lcom/android/server/wm/RemoteAnimationController;
.super Ljava/lang/Object;
.source "RemoteAnimationController.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationAdapterWrapper;,
        Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationRecord;,
        Lcom/android/server/wm/RemoteAnimationController$FinishedCallback;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "WindowManager"

.field private static final TIMEOUT_MS:J = 0x7d0L


# instance fields
.field private mCanceled:Z

.field private mFinishedCallback:Lcom/android/server/wm/RemoteAnimationController$FinishedCallback;

.field private final mHandler:Landroid/os/Handler;

.field private mLinkedToDeathOfRunner:Z

.field private final mPendingAnimations:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationRecord;",
            ">;"
        }
    .end annotation
.end field

.field private final mRemoteAnimationAdapter:Landroid/view/RemoteAnimationAdapter;

.field private final mService:Lcom/android/server/wm/WindowManagerService;

.field private final mTimeoutRunnable:Ljava/lang/Runnable;

.field private final mTmpRect:Landroid/graphics/Rect;


# direct methods
.method constructor <init>(Lcom/android/server/wm/WindowManagerService;Landroid/view/RemoteAnimationAdapter;Landroid/os/Handler;)V
    .registers 5

    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/RemoteAnimationController;->mPendingAnimations:Ljava/util/ArrayList;

    .line 61
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/RemoteAnimationController;->mTmpRect:Landroid/graphics/Rect;

    .line 63
    new-instance v0, Lcom/android/server/wm/-$$Lambda$RemoteAnimationController$uQS8vaPKQ-E3x_9G8NCxPQmw1fw;

    invoke-direct {v0, p0}, Lcom/android/server/wm/-$$Lambda$RemoteAnimationController$uQS8vaPKQ-E3x_9G8NCxPQmw1fw;-><init>(Lcom/android/server/wm/RemoteAnimationController;)V

    iput-object v0, p0, Lcom/android/server/wm/RemoteAnimationController;->mTimeoutRunnable:Ljava/lang/Runnable;

    .line 71
    iput-object p1, p0, Lcom/android/server/wm/RemoteAnimationController;->mService:Lcom/android/server/wm/WindowManagerService;

    .line 72
    iput-object p2, p0, Lcom/android/server/wm/RemoteAnimationController;->mRemoteAnimationAdapter:Landroid/view/RemoteAnimationAdapter;

    .line 73
    iput-object p3, p0, Lcom/android/server/wm/RemoteAnimationController;->mHandler:Landroid/os/Handler;

    .line 74
    return-void
.end method

.method static synthetic access$100(Lcom/android/server/wm/RemoteAnimationController;)V
    .registers 1

    .line 52
    invoke-direct {p0}, Lcom/android/server/wm/RemoteAnimationController;->onAnimationFinished()V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/server/wm/RemoteAnimationController;)V
    .registers 1

    .line 52
    invoke-direct {p0}, Lcom/android/server/wm/RemoteAnimationController;->invokeAnimationCancelled()V

    return-void
.end method

.method static synthetic access$1100(Lcom/android/server/wm/RemoteAnimationController;Z)V
    .registers 2

    .line 52
    invoke-direct {p0, p1}, Lcom/android/server/wm/RemoteAnimationController;->setRunningRemoteAnimation(Z)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/server/wm/RemoteAnimationController;)Landroid/graphics/Rect;
    .registers 1

    .line 52
    iget-object p0, p0, Lcom/android/server/wm/RemoteAnimationController;->mTmpRect:Landroid/graphics/Rect;

    return-object p0
.end method

.method static synthetic access$300(Lcom/android/server/wm/RemoteAnimationController;)Landroid/view/RemoteAnimationAdapter;
    .registers 1

    .line 52
    iget-object p0, p0, Lcom/android/server/wm/RemoteAnimationController;->mRemoteAnimationAdapter:Landroid/view/RemoteAnimationAdapter;

    return-object p0
.end method

.method static synthetic access$600(Lcom/android/server/wm/RemoteAnimationController;)Ljava/util/ArrayList;
    .registers 1

    .line 52
    iget-object p0, p0, Lcom/android/server/wm/RemoteAnimationController;->mPendingAnimations:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic access$700(Lcom/android/server/wm/RemoteAnimationController;)Ljava/lang/Runnable;
    .registers 1

    .line 52
    iget-object p0, p0, Lcom/android/server/wm/RemoteAnimationController;->mTimeoutRunnable:Ljava/lang/Runnable;

    return-object p0
.end method

.method static synthetic access$800(Lcom/android/server/wm/RemoteAnimationController;)Landroid/os/Handler;
    .registers 1

    .line 52
    iget-object p0, p0, Lcom/android/server/wm/RemoteAnimationController;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$900(Lcom/android/server/wm/RemoteAnimationController;)V
    .registers 1

    .line 52
    invoke-direct {p0}, Lcom/android/server/wm/RemoteAnimationController;->releaseFinishedCallback()V

    return-void
.end method

.method private createAnimations()[Landroid/view/RemoteAnimationTarget;
    .registers 6

    .line 160
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 161
    iget-object v1, p0, Lcom/android/server/wm/RemoteAnimationController;->mPendingAnimations:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_d
    if-ltz v1, :cond_57

    .line 162
    iget-object v2, p0, Lcom/android/server/wm/RemoteAnimationController;->mPendingAnimations:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationRecord;

    .line 163
    invoke-virtual {v2}, Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationRecord;->createRemoteAnimationTarget()Landroid/view/RemoteAnimationTarget;

    move-result-object v3

    .line 164
    if-eqz v3, :cond_21

    .line 166
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_54

    .line 173
    :cond_21
    iget-object v3, v2, Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationRecord;->mAdapter:Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationAdapterWrapper;

    if-eqz v3, :cond_38

    iget-object v3, v2, Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationRecord;->mAdapter:Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationAdapterWrapper;

    .line 174
    invoke-static {v3}, Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationAdapterWrapper;->access$000(Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationAdapterWrapper;)Lcom/android/server/wm/SurfaceAnimator$OnAnimationFinishedCallback;

    move-result-object v3

    if-eqz v3, :cond_38

    .line 175
    iget-object v3, v2, Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationRecord;->mAdapter:Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationAdapterWrapper;

    invoke-static {v3}, Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationAdapterWrapper;->access$000(Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationAdapterWrapper;)Lcom/android/server/wm/SurfaceAnimator$OnAnimationFinishedCallback;

    move-result-object v3

    iget-object v4, v2, Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationRecord;->mAdapter:Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationAdapterWrapper;

    .line 176
    invoke-interface {v3, v4}, Lcom/android/server/wm/SurfaceAnimator$OnAnimationFinishedCallback;->onAnimationFinished(Lcom/android/server/wm/AnimationAdapter;)V

    .line 178
    :cond_38
    iget-object v3, v2, Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationRecord;->mThumbnailAdapter:Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationAdapterWrapper;

    if-eqz v3, :cond_4f

    iget-object v3, v2, Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationRecord;->mThumbnailAdapter:Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationAdapterWrapper;

    .line 179
    invoke-static {v3}, Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationAdapterWrapper;->access$000(Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationAdapterWrapper;)Lcom/android/server/wm/SurfaceAnimator$OnAnimationFinishedCallback;

    move-result-object v3

    if-eqz v3, :cond_4f

    .line 180
    iget-object v3, v2, Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationRecord;->mThumbnailAdapter:Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationAdapterWrapper;

    invoke-static {v3}, Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationAdapterWrapper;->access$000(Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationAdapterWrapper;)Lcom/android/server/wm/SurfaceAnimator$OnAnimationFinishedCallback;

    move-result-object v3

    iget-object v2, v2, Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationRecord;->mThumbnailAdapter:Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationAdapterWrapper;

    .line 181
    invoke-interface {v3, v2}, Lcom/android/server/wm/SurfaceAnimator$OnAnimationFinishedCallback;->onAnimationFinished(Lcom/android/server/wm/AnimationAdapter;)V

    .line 183
    :cond_4f
    iget-object v2, p0, Lcom/android/server/wm/RemoteAnimationController;->mPendingAnimations:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 161
    :goto_54
    add-int/lit8 v1, v1, -0x1

    goto :goto_d

    .line 186
    :cond_57
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [Landroid/view/RemoteAnimationTarget;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/view/RemoteAnimationTarget;

    return-object v0
.end method

.method private invokeAnimationCancelled()V
    .registers 4

    .line 225
    :try_start_0
    iget-object v0, p0, Lcom/android/server/wm/RemoteAnimationController;->mRemoteAnimationAdapter:Landroid/view/RemoteAnimationAdapter;

    invoke-virtual {v0}, Landroid/view/RemoteAnimationAdapter;->getRunner()Landroid/view/IRemoteAnimationRunner;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/IRemoteAnimationRunner;->onAnimationCancelled()V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_9} :catch_a

    .line 228
    goto :goto_12

    .line 226
    :catch_a
    move-exception v0

    .line 227
    const-string v1, "WindowManager"

    const-string v2, "Failed to notify cancel"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 229
    :goto_12
    return-void
.end method

.method private linkToDeathOfRunner()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 253
    iget-boolean v0, p0, Lcom/android/server/wm/RemoteAnimationController;->mLinkedToDeathOfRunner:Z

    if-nez v0, :cond_15

    .line 254
    iget-object v0, p0, Lcom/android/server/wm/RemoteAnimationController;->mRemoteAnimationAdapter:Landroid/view/RemoteAnimationAdapter;

    invoke-virtual {v0}, Landroid/view/RemoteAnimationAdapter;->getRunner()Landroid/view/IRemoteAnimationRunner;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/IRemoteAnimationRunner;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, p0, v1}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V

    .line 255
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/wm/RemoteAnimationController;->mLinkedToDeathOfRunner:Z

    .line 257
    :cond_15
    return-void
.end method

.method private onAnimationFinished()V
    .registers 6

    .line 192
    iget-object v0, p0, Lcom/android/server/wm/RemoteAnimationController;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/wm/RemoteAnimationController;->mTimeoutRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 193
    iget-object v0, p0, Lcom/android/server/wm/RemoteAnimationController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_c
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 194
    invoke-direct {p0}, Lcom/android/server/wm/RemoteAnimationController;->unlinkToDeathOfRunner()V

    .line 195
    invoke-direct {p0}, Lcom/android/server/wm/RemoteAnimationController;->releaseFinishedCallback()V

    .line 196
    iget-object v1, p0, Lcom/android/server/wm/RemoteAnimationController;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowManagerService;->openSurfaceTransaction()V
    :try_end_1a
    .catchall {:try_start_c .. :try_end_1a} :catchall_71

    .line 200
    :try_start_1a
    iget-object v1, p0, Lcom/android/server/wm/RemoteAnimationController;->mPendingAnimations:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_22
    if-ltz v1, :cond_4d

    .line 201
    iget-object v2, p0, Lcom/android/server/wm/RemoteAnimationController;->mPendingAnimations:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationRecord;

    .line 202
    iget-object v3, v2, Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationRecord;->mAdapter:Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationAdapterWrapper;

    if-eqz v3, :cond_3b

    .line 203
    iget-object v3, v2, Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationRecord;->mAdapter:Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationAdapterWrapper;

    invoke-static {v3}, Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationAdapterWrapper;->access$000(Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationAdapterWrapper;)Lcom/android/server/wm/SurfaceAnimator$OnAnimationFinishedCallback;

    move-result-object v3

    iget-object v4, v2, Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationRecord;->mAdapter:Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationAdapterWrapper;

    .line 204
    invoke-interface {v3, v4}, Lcom/android/server/wm/SurfaceAnimator$OnAnimationFinishedCallback;->onAnimationFinished(Lcom/android/server/wm/AnimationAdapter;)V

    .line 206
    :cond_3b
    iget-object v3, v2, Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationRecord;->mThumbnailAdapter:Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationAdapterWrapper;

    if-eqz v3, :cond_4a

    .line 207
    iget-object v3, v2, Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationRecord;->mThumbnailAdapter:Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationAdapterWrapper;

    invoke-static {v3}, Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationAdapterWrapper;->access$000(Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationAdapterWrapper;)Lcom/android/server/wm/SurfaceAnimator$OnAnimationFinishedCallback;

    move-result-object v3

    iget-object v2, v2, Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationRecord;->mThumbnailAdapter:Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationAdapterWrapper;

    .line 208
    invoke-interface {v3, v2}, Lcom/android/server/wm/SurfaceAnimator$OnAnimationFinishedCallback;->onAnimationFinished(Lcom/android/server/wm/AnimationAdapter;)V
    :try_end_4a
    .catch Ljava/lang/Exception; {:try_start_1a .. :try_end_4a} :catch_60
    .catchall {:try_start_1a .. :try_end_4a} :catchall_5e

    .line 200
    :cond_4a
    add-int/lit8 v1, v1, -0x1

    goto :goto_22

    .line 216
    :cond_4d
    :try_start_4d
    iget-object v1, p0, Lcom/android/server/wm/RemoteAnimationController;->mService:Lcom/android/server/wm/WindowManagerService;

    const-string v2, "RemoteAnimationController#finished"

    invoke-virtual {v1, v2}, Lcom/android/server/wm/WindowManagerService;->closeSurfaceTransaction(Ljava/lang/String;)V

    .line 217
    nop

    .line 218
    monitor-exit v0
    :try_end_56
    .catchall {:try_start_4d .. :try_end_56} :catchall_71

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 219
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/server/wm/RemoteAnimationController;->setRunningRemoteAnimation(Z)V

    .line 221
    return-void

    .line 216
    :catchall_5e
    move-exception v1

    goto :goto_69

    .line 212
    :catch_60
    move-exception v1

    .line 213
    :try_start_61
    const-string v2, "WindowManager"

    const-string v3, "Failed to finish remote animation"

    invoke-static {v2, v3, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 214
    throw v1
    :try_end_69
    .catchall {:try_start_61 .. :try_end_69} :catchall_5e

    .line 216
    :goto_69
    :try_start_69
    iget-object v2, p0, Lcom/android/server/wm/RemoteAnimationController;->mService:Lcom/android/server/wm/WindowManagerService;

    const-string v3, "RemoteAnimationController#finished"

    invoke-virtual {v2, v3}, Lcom/android/server/wm/WindowManagerService;->closeSurfaceTransaction(Ljava/lang/String;)V

    throw v1

    .line 218
    :catchall_71
    move-exception v1

    monitor-exit v0
    :try_end_73
    .catchall {:try_start_69 .. :try_end_73} :catchall_71

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method private releaseFinishedCallback()V
    .registers 2

    .line 232
    iget-object v0, p0, Lcom/android/server/wm/RemoteAnimationController;->mFinishedCallback:Lcom/android/server/wm/RemoteAnimationController$FinishedCallback;

    if-eqz v0, :cond_a

    .line 233
    invoke-virtual {v0}, Lcom/android/server/wm/RemoteAnimationController$FinishedCallback;->release()V

    .line 234
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/wm/RemoteAnimationController;->mFinishedCallback:Lcom/android/server/wm/RemoteAnimationController$FinishedCallback;

    .line 236
    :cond_a
    return-void
.end method

.method private setRunningRemoteAnimation(Z)V
    .registers 5

    .line 239
    iget-object v0, p0, Lcom/android/server/wm/RemoteAnimationController;->mRemoteAnimationAdapter:Landroid/view/RemoteAnimationAdapter;

    invoke-virtual {v0}, Landroid/view/RemoteAnimationAdapter;->getCallingPid()I

    move-result v0

    .line 240
    iget-object v1, p0, Lcom/android/server/wm/RemoteAnimationController;->mRemoteAnimationAdapter:Landroid/view/RemoteAnimationAdapter;

    invoke-virtual {v1}, Landroid/view/RemoteAnimationAdapter;->getCallingUid()I

    move-result v1

    .line 241
    if-eqz v0, :cond_3b

    .line 244
    iget-object v2, p0, Lcom/android/server/wm/RemoteAnimationController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v2, v0, v1}, Lcom/android/server/wm/ActivityTaskManagerService;->getProcessController(II)Lcom/android/server/wm/WindowProcessController;

    move-result-object v2

    .line 245
    if-nez v2, :cond_37

    .line 246
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unable to find process with pid="

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " uid="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "WindowManager"

    invoke-static {v0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 247
    return-void

    .line 249
    :cond_37
    invoke-virtual {v2, p1}, Lcom/android/server/wm/WindowProcessController;->setRunningRemoteAnimation(Z)V

    .line 250
    return-void

    .line 242
    :cond_3b
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "Calling pid of remote animation was null"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private unlinkToDeathOfRunner()V
    .registers 3

    .line 260
    iget-boolean v0, p0, Lcom/android/server/wm/RemoteAnimationController;->mLinkedToDeathOfRunner:Z

    if-eqz v0, :cond_14

    .line 261
    iget-object v0, p0, Lcom/android/server/wm/RemoteAnimationController;->mRemoteAnimationAdapter:Landroid/view/RemoteAnimationAdapter;

    invoke-virtual {v0}, Landroid/view/RemoteAnimationAdapter;->getRunner()Landroid/view/IRemoteAnimationRunner;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/IRemoteAnimationRunner;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, p0, v1}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 262
    iput-boolean v1, p0, Lcom/android/server/wm/RemoteAnimationController;->mLinkedToDeathOfRunner:Z

    .line 264
    :cond_14
    return-void
.end method

.method private writeStartDebugStatement()V
    .registers 7

    .line 148
    const-string v0, "WindowManager"

    const-string v1, "Starting remote animation"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 149
    new-instance v1, Ljava/io/StringWriter;

    invoke-direct {v1}, Ljava/io/StringWriter;-><init>()V

    .line 150
    new-instance v2, Lcom/android/internal/util/FastPrintWriter;

    invoke-direct {v2, v1}, Lcom/android/internal/util/FastPrintWriter;-><init>(Ljava/io/Writer;)V

    .line 151
    iget-object v3, p0, Lcom/android/server/wm/RemoteAnimationController;->mPendingAnimations:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    :goto_19
    if-ltz v3, :cond_2d

    .line 152
    iget-object v4, p0, Lcom/android/server/wm/RemoteAnimationController;->mPendingAnimations:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationRecord;

    iget-object v4, v4, Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationRecord;->mAdapter:Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationAdapterWrapper;

    const-string v5, ""

    invoke-virtual {v4, v2, v5}, Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationAdapterWrapper;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 151
    add-int/lit8 v3, v3, -0x1

    goto :goto_19

    .line 154
    :cond_2d
    invoke-virtual {v2}, Lcom/android/internal/util/FastPrintWriter;->close()V

    .line 155
    invoke-virtual {v1}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 156
    return-void
.end method


# virtual methods
.method public binderDied()V
    .registers 2

    .line 268
    const-string v0, "binderDied"

    invoke-virtual {p0, v0}, Lcom/android/server/wm/RemoteAnimationController;->cancelAnimation(Ljava/lang/String;)V

    .line 269
    return-void
.end method

.method cancelAnimation(Ljava/lang/String;)V
    .registers 3

    .line 137
    iget-object p1, p0, Lcom/android/server/wm/RemoteAnimationController;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {p1}, Lcom/android/server/wm/WindowManagerService;->getWindowManagerLock()Ljava/lang/Object;

    move-result-object p1

    monitor-enter p1

    .line 138
    :try_start_7
    iget-boolean v0, p0, Lcom/android/server/wm/RemoteAnimationController;->mCanceled:Z

    if-eqz v0, :cond_d

    .line 139
    monitor-exit p1

    return-void

    .line 141
    :cond_d
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/wm/RemoteAnimationController;->mCanceled:Z

    .line 142
    monitor-exit p1
    :try_end_11
    .catchall {:try_start_7 .. :try_end_11} :catchall_18

    .line 143
    invoke-direct {p0}, Lcom/android/server/wm/RemoteAnimationController;->onAnimationFinished()V

    .line 144
    invoke-direct {p0}, Lcom/android/server/wm/RemoteAnimationController;->invokeAnimationCancelled()V

    .line 145
    return-void

    .line 142
    :catchall_18
    move-exception v0

    :try_start_19
    monitor-exit p1
    :try_end_1a
    .catchall {:try_start_19 .. :try_end_1a} :catchall_18

    throw v0
.end method

.method createRemoteAnimationRecord(Lcom/android/server/wm/AppWindowToken;Landroid/graphics/Point;Landroid/graphics/Rect;Landroid/graphics/Rect;)Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationRecord;
    .registers 12

    .line 89
    new-instance v6, Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationRecord;

    move-object v0, v6

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationRecord;-><init>(Lcom/android/server/wm/RemoteAnimationController;Lcom/android/server/wm/AppWindowToken;Landroid/graphics/Point;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 91
    iget-object p1, p0, Lcom/android/server/wm/RemoteAnimationController;->mPendingAnimations:Ljava/util/ArrayList;

    invoke-virtual {p1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 92
    return-object v6
.end method

.method goodToGo()V
    .registers 5

    .line 100
    iget-object v0, p0, Lcom/android/server/wm/RemoteAnimationController;->mPendingAnimations:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_41

    iget-boolean v0, p0, Lcom/android/server/wm/RemoteAnimationController;->mCanceled:Z

    if-eqz v0, :cond_d

    goto :goto_41

    .line 109
    :cond_d
    iget-object v0, p0, Lcom/android/server/wm/RemoteAnimationController;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/wm/RemoteAnimationController;->mTimeoutRunnable:Ljava/lang/Runnable;

    const/high16 v2, 0x44fa0000  # 2000.0f

    iget-object v3, p0, Lcom/android/server/wm/RemoteAnimationController;->mService:Lcom/android/server/wm/WindowManagerService;

    .line 110
    invoke-virtual {v3}, Lcom/android/server/wm/WindowManagerService;->getCurrentAnimatorScale()F

    move-result v3

    mul-float/2addr v3, v2

    float-to-long v2, v3

    .line 109
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 111
    new-instance v0, Lcom/android/server/wm/RemoteAnimationController$FinishedCallback;

    invoke-direct {v0, p0}, Lcom/android/server/wm/RemoteAnimationController$FinishedCallback;-><init>(Lcom/android/server/wm/RemoteAnimationController;)V

    iput-object v0, p0, Lcom/android/server/wm/RemoteAnimationController;->mFinishedCallback:Lcom/android/server/wm/RemoteAnimationController$FinishedCallback;

    .line 113
    invoke-direct {p0}, Lcom/android/server/wm/RemoteAnimationController;->createAnimations()[Landroid/view/RemoteAnimationTarget;

    move-result-object v0

    .line 114
    array-length v1, v0

    if-nez v1, :cond_30

    .line 116
    invoke-direct {p0}, Lcom/android/server/wm/RemoteAnimationController;->onAnimationFinished()V

    .line 117
    return-void

    .line 119
    :cond_30
    iget-object v1, p0, Lcom/android/server/wm/RemoteAnimationController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mAnimator:Lcom/android/server/wm/WindowAnimator;

    new-instance v2, Lcom/android/server/wm/-$$Lambda$RemoteAnimationController$f_Hsu4PN7pGOiq9Nl8vxzEA3wa0;

    invoke-direct {v2, p0, v0}, Lcom/android/server/wm/-$$Lambda$RemoteAnimationController$f_Hsu4PN7pGOiq9Nl8vxzEA3wa0;-><init>(Lcom/android/server/wm/RemoteAnimationController;[Landroid/view/RemoteAnimationTarget;)V

    invoke-virtual {v1, v2}, Lcom/android/server/wm/WindowAnimator;->addAfterPrepareSurfacesRunnable(Ljava/lang/Runnable;)V

    .line 132
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/server/wm/RemoteAnimationController;->setRunningRemoteAnimation(Z)V

    .line 133
    return-void

    .line 104
    :cond_41
    :goto_41
    invoke-direct {p0}, Lcom/android/server/wm/RemoteAnimationController;->onAnimationFinished()V

    .line 105
    return-void
.end method

.method public synthetic lambda$goodToGo$1$RemoteAnimationController([Landroid/view/RemoteAnimationTarget;)V
    .registers 4

    .line 121
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/wm/RemoteAnimationController;->linkToDeathOfRunner()V

    .line 122
    iget-object v0, p0, Lcom/android/server/wm/RemoteAnimationController;->mRemoteAnimationAdapter:Landroid/view/RemoteAnimationAdapter;

    invoke-virtual {v0}, Landroid/view/RemoteAnimationAdapter;->getRunner()Landroid/view/IRemoteAnimationRunner;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wm/RemoteAnimationController;->mFinishedCallback:Lcom/android/server/wm/RemoteAnimationController$FinishedCallback;

    invoke-interface {v0, p1, v1}, Landroid/view/IRemoteAnimationRunner;->onAnimationStart([Landroid/view/RemoteAnimationTarget;Landroid/view/IRemoteAnimationFinishedCallback;)V
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_e} :catch_f

    .line 126
    goto :goto_1a

    .line 123
    :catch_f
    move-exception p1

    .line 124
    const-string v0, "WindowManager"

    const-string v1, "Failed to start remote animation"

    invoke-static {v0, v1, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 125
    invoke-direct {p0}, Lcom/android/server/wm/RemoteAnimationController;->onAnimationFinished()V

    .line 131
    :goto_1a
    return-void
.end method

.method public synthetic lambda$new$0$RemoteAnimationController()V
    .registers 2

    .line 63
    const-string v0, "timeoutRunnable"

    invoke-virtual {p0, v0}, Lcom/android/server/wm/RemoteAnimationController;->cancelAnimation(Ljava/lang/String;)V

    return-void
.end method
