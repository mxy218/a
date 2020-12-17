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
.field private static final TAG:Ljava/lang/String;

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
.method static constructor <clinit>()V
    .registers 1

    .line 54
    sget-boolean v0, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_REMOTE_ANIMATIONS:Z

    if-eqz v0, :cond_b

    sget-boolean v0, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_APP_TRANSITIONS:Z

    if-nez v0, :cond_b

    .line 55
    const-string v0, "RemoteAnimationController"

    goto :goto_d

    :cond_b
    const-string v0, "WindowManager"

    :goto_d
    sput-object v0, Lcom/android/server/wm/RemoteAnimationController;->TAG:Ljava/lang/String;

    .line 53
    return-void
.end method

.method constructor <init>(Lcom/android/server/wm/WindowManagerService;Landroid/view/RemoteAnimationAdapter;Landroid/os/Handler;)V
    .registers 5
    .param p1, "service"  # Lcom/android/server/wm/WindowManagerService;
    .param p2, "remoteAnimationAdapter"  # Landroid/view/RemoteAnimationAdapter;
    .param p3, "handler"  # Landroid/os/Handler;

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

.method static synthetic access$100()Ljava/lang/String;
    .registers 1

    .line 52
    sget-object v0, Lcom/android/server/wm/RemoteAnimationController;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/server/wm/RemoteAnimationController;)V
    .registers 1
    .param p0, "x0"  # Lcom/android/server/wm/RemoteAnimationController;

    .line 52
    invoke-direct {p0}, Lcom/android/server/wm/RemoteAnimationController;->releaseFinishedCallback()V

    return-void
.end method

.method static synthetic access$1100(Lcom/android/server/wm/RemoteAnimationController;)V
    .registers 1
    .param p0, "x0"  # Lcom/android/server/wm/RemoteAnimationController;

    .line 52
    invoke-direct {p0}, Lcom/android/server/wm/RemoteAnimationController;->invokeAnimationCancelled()V

    return-void
.end method

.method static synthetic access$1200(Lcom/android/server/wm/RemoteAnimationController;Z)V
    .registers 2
    .param p0, "x0"  # Lcom/android/server/wm/RemoteAnimationController;
    .param p1, "x1"  # Z

    .line 52
    invoke-direct {p0, p1}, Lcom/android/server/wm/RemoteAnimationController;->setRunningRemoteAnimation(Z)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/server/wm/RemoteAnimationController;)V
    .registers 1
    .param p0, "x0"  # Lcom/android/server/wm/RemoteAnimationController;

    .line 52
    invoke-direct {p0}, Lcom/android/server/wm/RemoteAnimationController;->onAnimationFinished()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/server/wm/RemoteAnimationController;)Landroid/graphics/Rect;
    .registers 2
    .param p0, "x0"  # Lcom/android/server/wm/RemoteAnimationController;

    .line 52
    iget-object v0, p0, Lcom/android/server/wm/RemoteAnimationController;->mTmpRect:Landroid/graphics/Rect;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/server/wm/RemoteAnimationController;)Landroid/view/RemoteAnimationAdapter;
    .registers 2
    .param p0, "x0"  # Lcom/android/server/wm/RemoteAnimationController;

    .line 52
    iget-object v0, p0, Lcom/android/server/wm/RemoteAnimationController;->mRemoteAnimationAdapter:Landroid/view/RemoteAnimationAdapter;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/server/wm/RemoteAnimationController;)Ljava/util/ArrayList;
    .registers 2
    .param p0, "x0"  # Lcom/android/server/wm/RemoteAnimationController;

    .line 52
    iget-object v0, p0, Lcom/android/server/wm/RemoteAnimationController;->mPendingAnimations:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/server/wm/RemoteAnimationController;)Ljava/lang/Runnable;
    .registers 2
    .param p0, "x0"  # Lcom/android/server/wm/RemoteAnimationController;

    .line 52
    iget-object v0, p0, Lcom/android/server/wm/RemoteAnimationController;->mTimeoutRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/server/wm/RemoteAnimationController;)Landroid/os/Handler;
    .registers 2
    .param p0, "x0"  # Lcom/android/server/wm/RemoteAnimationController;

    .line 52
    iget-object v0, p0, Lcom/android/server/wm/RemoteAnimationController;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private createAnimations()[Landroid/view/RemoteAnimationTarget;
    .registers 8

    .line 159
    sget-boolean v0, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_REMOTE_ANIMATIONS:Z

    if-eqz v0, :cond_b

    sget-object v0, Lcom/android/server/wm/RemoteAnimationController;->TAG:Ljava/lang/String;

    const-string v1, "createAnimations()"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 160
    :cond_b
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 161
    .local v0, "targets":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/RemoteAnimationTarget;>;"
    iget-object v1, p0, Lcom/android/server/wm/RemoteAnimationController;->mPendingAnimations:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .local v1, "i":I
    :goto_18
    if-ltz v1, :cond_9b

    .line 162
    iget-object v2, p0, Lcom/android/server/wm/RemoteAnimationController;->mPendingAnimations:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationRecord;

    .line 163
    .local v2, "wrappers":Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationRecord;
    invoke-virtual {v2}, Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationRecord;->createRemoteAnimationTarget()Landroid/view/RemoteAnimationTarget;

    move-result-object v3

    .line 164
    .local v3, "target":Landroid/view/RemoteAnimationTarget;
    if-eqz v3, :cond_48

    .line 165
    sget-boolean v4, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_REMOTE_ANIMATIONS:Z

    if-eqz v4, :cond_44

    sget-object v4, Lcom/android/server/wm/RemoteAnimationController;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "\tAdd token="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v2, Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationRecord;->mAppWindowToken:Lcom/android/server/wm/AppWindowToken;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 166
    :cond_44
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_97

    .line 168
    :cond_48
    sget-boolean v4, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_REMOTE_ANIMATIONS:Z

    if-eqz v4, :cond_64

    sget-object v4, Lcom/android/server/wm/RemoteAnimationController;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "\tRemove token="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v2, Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationRecord;->mAppWindowToken:Lcom/android/server/wm/AppWindowToken;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 173
    :cond_64
    iget-object v4, v2, Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationRecord;->mAdapter:Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationAdapterWrapper;

    if-eqz v4, :cond_7b

    iget-object v4, v2, Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationRecord;->mAdapter:Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationAdapterWrapper;

    .line 174
    invoke-static {v4}, Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationAdapterWrapper;->access$000(Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationAdapterWrapper;)Lcom/android/server/wm/SurfaceAnimator$OnAnimationFinishedCallback;

    move-result-object v4

    if-eqz v4, :cond_7b

    .line 175
    iget-object v4, v2, Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationRecord;->mAdapter:Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationAdapterWrapper;

    invoke-static {v4}, Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationAdapterWrapper;->access$000(Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationAdapterWrapper;)Lcom/android/server/wm/SurfaceAnimator$OnAnimationFinishedCallback;

    move-result-object v4

    iget-object v5, v2, Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationRecord;->mAdapter:Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationAdapterWrapper;

    .line 176
    invoke-interface {v4, v5}, Lcom/android/server/wm/SurfaceAnimator$OnAnimationFinishedCallback;->onAnimationFinished(Lcom/android/server/wm/AnimationAdapter;)V

    .line 178
    :cond_7b
    iget-object v4, v2, Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationRecord;->mThumbnailAdapter:Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationAdapterWrapper;

    if-eqz v4, :cond_92

    iget-object v4, v2, Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationRecord;->mThumbnailAdapter:Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationAdapterWrapper;

    .line 179
    invoke-static {v4}, Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationAdapterWrapper;->access$000(Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationAdapterWrapper;)Lcom/android/server/wm/SurfaceAnimator$OnAnimationFinishedCallback;

    move-result-object v4

    if-eqz v4, :cond_92

    .line 180
    iget-object v4, v2, Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationRecord;->mThumbnailAdapter:Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationAdapterWrapper;

    invoke-static {v4}, Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationAdapterWrapper;->access$000(Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationAdapterWrapper;)Lcom/android/server/wm/SurfaceAnimator$OnAnimationFinishedCallback;

    move-result-object v4

    iget-object v5, v2, Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationRecord;->mThumbnailAdapter:Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationAdapterWrapper;

    .line 181
    invoke-interface {v4, v5}, Lcom/android/server/wm/SurfaceAnimator$OnAnimationFinishedCallback;->onAnimationFinished(Lcom/android/server/wm/AnimationAdapter;)V

    .line 183
    :cond_92
    iget-object v4, p0, Lcom/android/server/wm/RemoteAnimationController;->mPendingAnimations:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 161
    .end local v2  # "wrappers":Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationRecord;
    .end local v3  # "target":Landroid/view/RemoteAnimationTarget;
    :goto_97
    add-int/lit8 v1, v1, -0x1

    goto/16 :goto_18

    .line 186
    .end local v1  # "i":I
    :cond_9b
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [Landroid/view/RemoteAnimationTarget;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/view/RemoteAnimationTarget;

    return-object v1
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
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v1, Lcom/android/server/wm/RemoteAnimationController;->TAG:Ljava/lang/String;

    const-string v2, "Failed to notify cancel"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 229
    .end local v0  # "e":Landroid/os/RemoteException;
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
    .registers 7

    .line 190
    sget-boolean v0, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_REMOTE_ANIMATIONS:Z

    if-eqz v0, :cond_20

    sget-object v0, Lcom/android/server/wm/RemoteAnimationController;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onAnimationFinished(): mPendingAnimations="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/wm/RemoteAnimationController;->mPendingAnimations:Ljava/util/ArrayList;

    .line 191
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 190
    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 192
    :cond_20
    iget-object v0, p0, Lcom/android/server/wm/RemoteAnimationController;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/wm/RemoteAnimationController;->mTimeoutRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 193
    iget-object v0, p0, Lcom/android/server/wm/RemoteAnimationController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_2c
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 194
    invoke-direct {p0}, Lcom/android/server/wm/RemoteAnimationController;->unlinkToDeathOfRunner()V

    .line 195
    invoke-direct {p0}, Lcom/android/server/wm/RemoteAnimationController;->releaseFinishedCallback()V

    .line 196
    iget-object v1, p0, Lcom/android/server/wm/RemoteAnimationController;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowManagerService;->openSurfaceTransaction()V
    :try_end_3a
    .catchall {:try_start_2c .. :try_end_3a} :catchall_c4

    .line 198
    :try_start_3a
    sget-boolean v1, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_REMOTE_ANIMATIONS:Z

    if-eqz v1, :cond_45

    sget-object v1, Lcom/android/server/wm/RemoteAnimationController;->TAG:Ljava/lang/String;

    const-string v2, "onAnimationFinished(): Notify animation finished:"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 200
    :cond_45
    iget-object v1, p0, Lcom/android/server/wm/RemoteAnimationController;->mPendingAnimations:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .local v1, "i":I
    :goto_4d
    if-ltz v1, :cond_94

    .line 201
    iget-object v2, p0, Lcom/android/server/wm/RemoteAnimationController;->mPendingAnimations:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationRecord;

    .line 202
    .local v2, "adapters":Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationRecord;
    iget-object v3, v2, Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationRecord;->mAdapter:Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationAdapterWrapper;

    if-eqz v3, :cond_66

    .line 203
    iget-object v3, v2, Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationRecord;->mAdapter:Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationAdapterWrapper;

    invoke-static {v3}, Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationAdapterWrapper;->access$000(Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationAdapterWrapper;)Lcom/android/server/wm/SurfaceAnimator$OnAnimationFinishedCallback;

    move-result-object v3

    iget-object v4, v2, Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationRecord;->mAdapter:Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationAdapterWrapper;

    .line 204
    invoke-interface {v3, v4}, Lcom/android/server/wm/SurfaceAnimator$OnAnimationFinishedCallback;->onAnimationFinished(Lcom/android/server/wm/AnimationAdapter;)V

    .line 206
    :cond_66
    iget-object v3, v2, Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationRecord;->mThumbnailAdapter:Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationAdapterWrapper;

    if-eqz v3, :cond_75

    .line 207
    iget-object v3, v2, Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationRecord;->mThumbnailAdapter:Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationAdapterWrapper;

    invoke-static {v3}, Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationAdapterWrapper;->access$000(Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationAdapterWrapper;)Lcom/android/server/wm/SurfaceAnimator$OnAnimationFinishedCallback;

    move-result-object v3

    iget-object v4, v2, Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationRecord;->mThumbnailAdapter:Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationAdapterWrapper;

    .line 208
    invoke-interface {v3, v4}, Lcom/android/server/wm/SurfaceAnimator$OnAnimationFinishedCallback;->onAnimationFinished(Lcom/android/server/wm/AnimationAdapter;)V

    .line 210
    :cond_75
    sget-boolean v3, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_REMOTE_ANIMATIONS:Z

    if-eqz v3, :cond_91

    sget-object v3, Lcom/android/server/wm/RemoteAnimationController;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "\t"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v2, Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationRecord;->mAppWindowToken:Lcom/android/server/wm/AppWindowToken;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_91
    .catch Ljava/lang/Exception; {:try_start_3a .. :try_end_91} :catch_b2
    .catchall {:try_start_3a .. :try_end_91} :catchall_b0

    .line 200
    .end local v2  # "adapters":Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationRecord;
    :cond_91
    add-int/lit8 v1, v1, -0x1

    goto :goto_4d

    .line 216
    .end local v1  # "i":I
    :cond_94
    :try_start_94
    iget-object v1, p0, Lcom/android/server/wm/RemoteAnimationController;->mService:Lcom/android/server/wm/WindowManagerService;

    const-string v2, "RemoteAnimationController#finished"

    invoke-virtual {v1, v2}, Lcom/android/server/wm/WindowManagerService;->closeSurfaceTransaction(Ljava/lang/String;)V

    .line 217
    nop

    .line 218
    monitor-exit v0
    :try_end_9d
    .catchall {:try_start_94 .. :try_end_9d} :catchall_c4

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 219
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/server/wm/RemoteAnimationController;->setRunningRemoteAnimation(Z)V

    .line 220
    sget-boolean v0, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_REMOTE_ANIMATIONS:Z

    if-eqz v0, :cond_af

    sget-object v0, Lcom/android/server/wm/RemoteAnimationController;->TAG:Ljava/lang/String;

    const-string v1, "Finishing remote animation"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 221
    :cond_af
    return-void

    .line 216
    :catchall_b0
    move-exception v1

    goto :goto_bc

    .line 212
    :catch_b2
    move-exception v1

    .line 213
    .local v1, "e":Ljava/lang/Exception;
    :try_start_b3
    sget-object v2, Lcom/android/server/wm/RemoteAnimationController;->TAG:Ljava/lang/String;

    const-string v3, "Failed to finish remote animation"

    invoke-static {v2, v3, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 214
    nop

    .end local p0  # "this":Lcom/android/server/wm/RemoteAnimationController;
    throw v1
    :try_end_bc
    .catchall {:try_start_b3 .. :try_end_bc} :catchall_b0

    .line 216
    .end local v1  # "e":Ljava/lang/Exception;
    .restart local p0  # "this":Lcom/android/server/wm/RemoteAnimationController;
    :goto_bc
    :try_start_bc
    iget-object v2, p0, Lcom/android/server/wm/RemoteAnimationController;->mService:Lcom/android/server/wm/WindowManagerService;

    const-string v3, "RemoteAnimationController#finished"

    invoke-virtual {v2, v3}, Lcom/android/server/wm/WindowManagerService;->closeSurfaceTransaction(Ljava/lang/String;)V

    .end local p0  # "this":Lcom/android/server/wm/RemoteAnimationController;
    throw v1

    .line 218
    .restart local p0  # "this":Lcom/android/server/wm/RemoteAnimationController;
    :catchall_c4
    move-exception v1

    monitor-exit v0
    :try_end_c6
    .catchall {:try_start_bc .. :try_end_c6} :catchall_c4

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
    .registers 8
    .param p1, "running"  # Z

    .line 239
    iget-object v0, p0, Lcom/android/server/wm/RemoteAnimationController;->mRemoteAnimationAdapter:Landroid/view/RemoteAnimationAdapter;

    invoke-virtual {v0}, Landroid/view/RemoteAnimationAdapter;->getCallingPid()I

    move-result v0

    .line 240
    .local v0, "pid":I
    iget-object v1, p0, Lcom/android/server/wm/RemoteAnimationController;->mRemoteAnimationAdapter:Landroid/view/RemoteAnimationAdapter;

    invoke-virtual {v1}, Landroid/view/RemoteAnimationAdapter;->getCallingUid()I

    move-result v1

    .line 241
    .local v1, "uid":I
    if-eqz v0, :cond_3b

    .line 244
    iget-object v2, p0, Lcom/android/server/wm/RemoteAnimationController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v2, v0, v1}, Lcom/android/server/wm/ActivityTaskManagerService;->getProcessController(II)Lcom/android/server/wm/WindowProcessController;

    move-result-object v2

    .line 245
    .local v2, "wpc":Lcom/android/server/wm/WindowProcessController;
    if-nez v2, :cond_37

    .line 246
    sget-object v3, Lcom/android/server/wm/RemoteAnimationController;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unable to find process with pid="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " uid="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 247
    return-void

    .line 249
    :cond_37
    invoke-virtual {v2, p1}, Lcom/android/server/wm/WindowProcessController;->setRunningRemoteAnimation(Z)V

    .line 250
    return-void

    .line 242
    .end local v2  # "wpc":Lcom/android/server/wm/WindowProcessController;
    :cond_3b
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "Calling pid of remote animation was null"

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2
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
    .registers 6

    .line 148
    sget-object v0, Lcom/android/server/wm/RemoteAnimationController;->TAG:Ljava/lang/String;

    const-string v1, "Starting remote animation"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 149
    new-instance v0, Ljava/io/StringWriter;

    invoke-direct {v0}, Ljava/io/StringWriter;-><init>()V

    .line 150
    .local v0, "sw":Ljava/io/StringWriter;
    new-instance v1, Lcom/android/internal/util/FastPrintWriter;

    invoke-direct {v1, v0}, Lcom/android/internal/util/FastPrintWriter;-><init>(Ljava/io/Writer;)V

    .line 151
    .local v1, "pw":Lcom/android/internal/util/FastPrintWriter;
    iget-object v2, p0, Lcom/android/server/wm/RemoteAnimationController;->mPendingAnimations:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    .local v2, "i":I
    :goto_19
    if-ltz v2, :cond_2d

    .line 152
    iget-object v3, p0, Lcom/android/server/wm/RemoteAnimationController;->mPendingAnimations:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationRecord;

    iget-object v3, v3, Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationRecord;->mAdapter:Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationAdapterWrapper;

    const-string v4, ""

    invoke-virtual {v3, v1, v4}, Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationAdapterWrapper;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 151
    add-int/lit8 v2, v2, -0x1

    goto :goto_19

    .line 154
    .end local v2  # "i":I
    :cond_2d
    invoke-virtual {v1}, Lcom/android/internal/util/FastPrintWriter;->close()V

    .line 155
    sget-object v2, Lcom/android/server/wm/RemoteAnimationController;->TAG:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

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
    .registers 5
    .param p1, "reason"  # Ljava/lang/String;

    .line 136
    sget-boolean v0, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_REMOTE_ANIMATIONS:Z

    if-eqz v0, :cond_1a

    sget-object v0, Lcom/android/server/wm/RemoteAnimationController;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "cancelAnimation(): reason="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 137
    :cond_1a
    iget-object v0, p0, Lcom/android/server/wm/RemoteAnimationController;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerService;->getWindowManagerLock()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 138
    :try_start_21
    iget-boolean v1, p0, Lcom/android/server/wm/RemoteAnimationController;->mCanceled:Z

    if-eqz v1, :cond_27

    .line 139
    monitor-exit v0

    return-void

    .line 141
    :cond_27
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/wm/RemoteAnimationController;->mCanceled:Z

    .line 142
    monitor-exit v0
    :try_end_2b
    .catchall {:try_start_21 .. :try_end_2b} :catchall_32

    .line 143
    invoke-direct {p0}, Lcom/android/server/wm/RemoteAnimationController;->onAnimationFinished()V

    .line 144
    invoke-direct {p0}, Lcom/android/server/wm/RemoteAnimationController;->invokeAnimationCancelled()V

    .line 145
    return-void

    .line 142
    :catchall_32
    move-exception v1

    :try_start_33
    monitor-exit v0
    :try_end_34
    .catchall {:try_start_33 .. :try_end_34} :catchall_32

    throw v1
.end method

.method createRemoteAnimationRecord(Lcom/android/server/wm/AppWindowToken;Landroid/graphics/Point;Landroid/graphics/Rect;Landroid/graphics/Rect;)Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationRecord;
    .registers 13
    .param p1, "appWindowToken"  # Lcom/android/server/wm/AppWindowToken;
    .param p2, "position"  # Landroid/graphics/Point;
    .param p3, "stackBounds"  # Landroid/graphics/Rect;
    .param p4, "startBounds"  # Landroid/graphics/Rect;

    .line 87
    sget-boolean v0, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_REMOTE_ANIMATIONS:Z

    if-eqz v0, :cond_1a

    sget-object v0, Lcom/android/server/wm/RemoteAnimationController;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "createAnimationAdapter(): token="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    :cond_1a
    new-instance v0, Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationRecord;

    move-object v2, v0

    move-object v3, p0

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    move-object v7, p4

    invoke-direct/range {v2 .. v7}, Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationRecord;-><init>(Lcom/android/server/wm/RemoteAnimationController;Lcom/android/server/wm/AppWindowToken;Landroid/graphics/Point;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 91
    .local v0, "adapters":Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationRecord;
    iget-object v1, p0, Lcom/android/server/wm/RemoteAnimationController;->mPendingAnimations:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 92
    return-object v0
.end method

.method goodToGo()V
    .registers 5

    .line 99
    sget-boolean v0, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_REMOTE_ANIMATIONS:Z

    if-eqz v0, :cond_b

    sget-object v0, Lcom/android/server/wm/RemoteAnimationController;->TAG:Ljava/lang/String;

    const-string v1, "goodToGo()"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    :cond_b
    iget-object v0, p0, Lcom/android/server/wm/RemoteAnimationController;->mPendingAnimations:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_57

    iget-boolean v0, p0, Lcom/android/server/wm/RemoteAnimationController;->mCanceled:Z

    if-eqz v0, :cond_18

    goto :goto_57

    .line 109
    :cond_18
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
    .local v0, "animations":[Landroid/view/RemoteAnimationTarget;
    array-length v1, v0

    if-nez v1, :cond_46

    .line 115
    sget-boolean v1, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_REMOTE_ANIMATIONS:Z

    if-eqz v1, :cond_42

    sget-object v1, Lcom/android/server/wm/RemoteAnimationController;->TAG:Ljava/lang/String;

    const-string v2, "goodToGo(): No apps to animate"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 116
    :cond_42
    invoke-direct {p0}, Lcom/android/server/wm/RemoteAnimationController;->onAnimationFinished()V

    .line 117
    return-void

    .line 119
    :cond_46
    iget-object v1, p0, Lcom/android/server/wm/RemoteAnimationController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mAnimator:Lcom/android/server/wm/WindowAnimator;

    new-instance v2, Lcom/android/server/wm/-$$Lambda$RemoteAnimationController$f_Hsu4PN7pGOiq9Nl8vxzEA3wa0;

    invoke-direct {v2, p0, v0}, Lcom/android/server/wm/-$$Lambda$RemoteAnimationController$f_Hsu4PN7pGOiq9Nl8vxzEA3wa0;-><init>(Lcom/android/server/wm/RemoteAnimationController;[Landroid/view/RemoteAnimationTarget;)V

    invoke-virtual {v1, v2}, Lcom/android/server/wm/WindowAnimator;->addAfterPrepareSurfacesRunnable(Ljava/lang/Runnable;)V

    .line 132
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/android/server/wm/RemoteAnimationController;->setRunningRemoteAnimation(Z)V

    .line 133
    return-void

    .line 101
    .end local v0  # "animations":[Landroid/view/RemoteAnimationTarget;
    :cond_57
    :goto_57
    sget-boolean v0, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_REMOTE_ANIMATIONS:Z

    if-eqz v0, :cond_81

    sget-object v0, Lcom/android/server/wm/RemoteAnimationController;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "goodToGo(): Animation finished already, canceled="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/server/wm/RemoteAnimationController;->mCanceled:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " mPendingAnimations="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/wm/RemoteAnimationController;->mPendingAnimations:Ljava/util/ArrayList;

    .line 103
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 101
    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 104
    :cond_81
    invoke-direct {p0}, Lcom/android/server/wm/RemoteAnimationController;->onAnimationFinished()V

    .line 105
    return-void
.end method

.method public synthetic lambda$goodToGo$1$RemoteAnimationController([Landroid/view/RemoteAnimationTarget;)V
    .registers 5
    .param p1, "animations"  # [Landroid/view/RemoteAnimationTarget;

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
    move-exception v0

    .line 124
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v1, Lcom/android/server/wm/RemoteAnimationController;->TAG:Ljava/lang/String;

    const-string v2, "Failed to start remote animation"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 125
    invoke-direct {p0}, Lcom/android/server/wm/RemoteAnimationController;->onAnimationFinished()V

    .line 127
    .end local v0  # "e":Landroid/os/RemoteException;
    :goto_1a
    sget-boolean v0, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_REMOTE_ANIMATIONS:Z

    if-eqz v0, :cond_28

    .line 128
    sget-object v0, Lcom/android/server/wm/RemoteAnimationController;->TAG:Ljava/lang/String;

    const-string v1, "startAnimation(): Notify animation start:"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 129
    invoke-direct {p0}, Lcom/android/server/wm/RemoteAnimationController;->writeStartDebugStatement()V

    .line 131
    :cond_28
    return-void
.end method

.method public synthetic lambda$new$0$RemoteAnimationController()V
    .registers 2

    .line 63
    const-string v0, "timeoutRunnable"

    invoke-virtual {p0, v0}, Lcom/android/server/wm/RemoteAnimationController;->cancelAnimation(Ljava/lang/String;)V

    return-void
.end method
