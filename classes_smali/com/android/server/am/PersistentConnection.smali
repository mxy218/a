.class public abstract Lcom/android/server/am/PersistentConnection;
.super Ljava/lang/Object;
.source "PersistentConnection.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false


# instance fields
.field private final mBindForBackoffRunnable:Ljava/lang/Runnable;

.field private mBound:Z
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation
.end field

.field private final mComponentName:Landroid/content/ComponentName;

.field private final mContext:Landroid/content/Context;

.field private final mHandler:Landroid/os/Handler;

.field private mIsConnected:Z
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation
.end field

.field private mLastConnectedTime:J
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation
.end field

.field private final mLock:Ljava/lang/Object;

.field private mNextBackoffMs:J

.field private mNumBindingDied:I
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation
.end field

.field private mNumConnected:I
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation
.end field

.field private mNumDisconnected:I
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation
.end field

.field private final mRebindBackoffIncrease:D

.field private final mRebindBackoffMs:J

.field private final mRebindMaxBackoffMs:J

.field private mRebindScheduled:Z
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation
.end field

.field private mReconnectTime:J

.field private final mResetBackoffDelay:J

.field private mService:Ljava/lang/Object;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private final mServiceConnection:Landroid/content/ServiceConnection;

.field private mShouldBeBound:Z
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation
.end field

.field private final mStableCheck:Ljava/lang/Runnable;

.field private final mTag:Ljava/lang/String;

.field private final mUserId:I


# direct methods
.method public constructor <init>(Ljava/lang/String;Landroid/content/Context;Landroid/os/Handler;ILandroid/content/ComponentName;JDJJ)V
    .registers 15

    .line 184
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/PersistentConnection;->mLock:Ljava/lang/Object;

    .line 118
    new-instance v0, Lcom/android/server/am/PersistentConnection$1;

    invoke-direct {v0, p0}, Lcom/android/server/am/PersistentConnection$1;-><init>(Lcom/android/server/am/PersistentConnection;)V

    iput-object v0, p0, Lcom/android/server/am/PersistentConnection;->mServiceConnection:Landroid/content/ServiceConnection;

    .line 179
    new-instance v0, Lcom/android/server/am/-$$Lambda$PersistentConnection$xTW-hnA2hSnEFuF87mUe85RYnfE;

    invoke-direct {v0, p0}, Lcom/android/server/am/-$$Lambda$PersistentConnection$xTW-hnA2hSnEFuF87mUe85RYnfE;-><init>(Lcom/android/server/am/PersistentConnection;)V

    iput-object v0, p0, Lcom/android/server/am/PersistentConnection;->mBindForBackoffRunnable:Ljava/lang/Runnable;

    .line 395
    new-instance v0, Lcom/android/server/am/-$$Lambda$PersistentConnection$rkvbuN0FQdQUv1hqSwDvmwwh6Uk;

    invoke-direct {v0, p0}, Lcom/android/server/am/-$$Lambda$PersistentConnection$rkvbuN0FQdQUv1hqSwDvmwwh6Uk;-><init>(Lcom/android/server/am/PersistentConnection;)V

    iput-object v0, p0, Lcom/android/server/am/PersistentConnection;->mStableCheck:Ljava/lang/Runnable;

    .line 185
    iput-object p1, p0, Lcom/android/server/am/PersistentConnection;->mTag:Ljava/lang/String;

    .line 186
    iput-object p2, p0, Lcom/android/server/am/PersistentConnection;->mContext:Landroid/content/Context;

    .line 187
    iput-object p3, p0, Lcom/android/server/am/PersistentConnection;->mHandler:Landroid/os/Handler;

    .line 188
    iput p4, p0, Lcom/android/server/am/PersistentConnection;->mUserId:I

    .line 189
    iput-object p5, p0, Lcom/android/server/am/PersistentConnection;->mComponentName:Landroid/content/ComponentName;

    .line 191
    const-wide/16 p1, 0x3e8

    mul-long/2addr p6, p1

    iput-wide p6, p0, Lcom/android/server/am/PersistentConnection;->mRebindBackoffMs:J

    .line 192
    iput-wide p8, p0, Lcom/android/server/am/PersistentConnection;->mRebindBackoffIncrease:D

    .line 193
    mul-long/2addr p10, p1

    iput-wide p10, p0, Lcom/android/server/am/PersistentConnection;->mRebindMaxBackoffMs:J

    .line 194
    mul-long/2addr p12, p1

    iput-wide p12, p0, Lcom/android/server/am/PersistentConnection;->mResetBackoffDelay:J

    .line 196
    iget-wide p1, p0, Lcom/android/server/am/PersistentConnection;->mRebindBackoffMs:J

    iput-wide p1, p0, Lcom/android/server/am/PersistentConnection;->mNextBackoffMs:J

    .line 197
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/am/PersistentConnection;)Ljava/lang/Object;
    .registers 1

    .line 65
    iget-object p0, p0, Lcom/android/server/am/PersistentConnection;->mLock:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$100(Lcom/android/server/am/PersistentConnection;)Z
    .registers 1

    .line 65
    iget-boolean p0, p0, Lcom/android/server/am/PersistentConnection;->mBound:Z

    return p0
.end method

.method static synthetic access$1008(Lcom/android/server/am/PersistentConnection;)I
    .registers 3

    .line 65
    iget v0, p0, Lcom/android/server/am/PersistentConnection;->mNumDisconnected:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/android/server/am/PersistentConnection;->mNumDisconnected:I

    return v0
.end method

.method static synthetic access$1100(Lcom/android/server/am/PersistentConnection;)V
    .registers 1

    .line 65
    invoke-direct {p0}, Lcom/android/server/am/PersistentConnection;->cleanUpConnectionLocked()V

    return-void
.end method

.method static synthetic access$1208(Lcom/android/server/am/PersistentConnection;)I
    .registers 3

    .line 65
    iget v0, p0, Lcom/android/server/am/PersistentConnection;->mNumBindingDied:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/android/server/am/PersistentConnection;->mNumBindingDied:I

    return v0
.end method

.method static synthetic access$200(Lcom/android/server/am/PersistentConnection;)Ljava/lang/String;
    .registers 1

    .line 65
    iget-object p0, p0, Lcom/android/server/am/PersistentConnection;->mTag:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$300(Lcom/android/server/am/PersistentConnection;)Landroid/content/ComponentName;
    .registers 1

    .line 65
    iget-object p0, p0, Lcom/android/server/am/PersistentConnection;->mComponentName:Landroid/content/ComponentName;

    return-object p0
.end method

.method static synthetic access$400(Lcom/android/server/am/PersistentConnection;)I
    .registers 1

    .line 65
    iget p0, p0, Lcom/android/server/am/PersistentConnection;->mUserId:I

    return p0
.end method

.method static synthetic access$508(Lcom/android/server/am/PersistentConnection;)I
    .registers 3

    .line 65
    iget v0, p0, Lcom/android/server/am/PersistentConnection;->mNumConnected:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/android/server/am/PersistentConnection;->mNumConnected:I

    return v0
.end method

.method static synthetic access$602(Lcom/android/server/am/PersistentConnection;Z)Z
    .registers 2

    .line 65
    iput-boolean p1, p0, Lcom/android/server/am/PersistentConnection;->mIsConnected:Z

    return p1
.end method

.method static synthetic access$702(Lcom/android/server/am/PersistentConnection;J)J
    .registers 3

    .line 65
    iput-wide p1, p0, Lcom/android/server/am/PersistentConnection;->mLastConnectedTime:J

    return-wide p1
.end method

.method static synthetic access$802(Lcom/android/server/am/PersistentConnection;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    .line 65
    iput-object p1, p0, Lcom/android/server/am/PersistentConnection;->mService:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$900(Lcom/android/server/am/PersistentConnection;)V
    .registers 1

    .line 65
    invoke-direct {p0}, Lcom/android/server/am/PersistentConnection;->scheduleStableCheckLocked()V

    return-void
.end method

.method private cleanUpConnectionLocked()V
    .registers 2
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 339
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/am/PersistentConnection;->mIsConnected:Z

    .line 340
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/am/PersistentConnection;->mService:Ljava/lang/Object;

    .line 342
    invoke-direct {p0}, Lcom/android/server/am/PersistentConnection;->unscheduleStableCheckLocked()V

    .line 343
    return-void
.end method

.method public static synthetic lambda$rkvbuN0FQdQUv1hqSwDvmwwh6Uk(Lcom/android/server/am/PersistentConnection;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/am/PersistentConnection;->stableConnectionCheck()V

    return-void
.end method

.method private resetBackoffLocked()V
    .registers 5
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 289
    iget-wide v0, p0, Lcom/android/server/am/PersistentConnection;->mNextBackoffMs:J

    iget-wide v2, p0, Lcom/android/server/am/PersistentConnection;->mRebindBackoffMs:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_22

    .line 290
    iput-wide v2, p0, Lcom/android/server/am/PersistentConnection;->mNextBackoffMs:J

    .line 291
    iget-object v0, p0, Lcom/android/server/am/PersistentConnection;->mTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Backoff reset to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/android/server/am/PersistentConnection;->mNextBackoffMs:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 293
    :cond_22
    return-void
.end method

.method private scheduleStableCheckLocked()V
    .registers 6
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 418
    invoke-direct {p0}, Lcom/android/server/am/PersistentConnection;->unscheduleStableCheckLocked()V

    .line 419
    iget-object v0, p0, Lcom/android/server/am/PersistentConnection;->mStableCheck:Ljava/lang/Runnable;

    invoke-virtual {p0}, Lcom/android/server/am/PersistentConnection;->injectUptimeMillis()J

    move-result-wide v1

    iget-wide v3, p0, Lcom/android/server/am/PersistentConnection;->mResetBackoffDelay:J

    add-long/2addr v1, v3

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/server/am/PersistentConnection;->injectPostAtTime(Ljava/lang/Runnable;J)V

    .line 420
    return-void
.end method

.method private stableConnectionCheck()V
    .registers 8

    .line 398
    iget-object v0, p0, Lcom/android/server/am/PersistentConnection;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 399
    :try_start_3
    invoke-virtual {p0}, Lcom/android/server/am/PersistentConnection;->injectUptimeMillis()J

    move-result-wide v1

    .line 400
    iget-wide v3, p0, Lcom/android/server/am/PersistentConnection;->mLastConnectedTime:J

    iget-wide v5, p0, Lcom/android/server/am/PersistentConnection;->mResetBackoffDelay:J

    add-long/2addr v3, v5

    sub-long/2addr v3, v1

    .line 405
    iget-boolean v1, p0, Lcom/android/server/am/PersistentConnection;->mBound:Z

    if-eqz v1, :cond_1e

    iget-boolean v1, p0, Lcom/android/server/am/PersistentConnection;->mIsConnected:Z

    if-eqz v1, :cond_1e

    const-wide/16 v1, 0x0

    cmp-long v1, v3, v1

    if-gtz v1, :cond_1e

    .line 406
    invoke-direct {p0}, Lcom/android/server/am/PersistentConnection;->resetBackoffLocked()V

    .line 408
    :cond_1e
    monitor-exit v0

    .line 409
    return-void

    .line 408
    :catchall_20
    move-exception v1

    monitor-exit v0
    :try_end_22
    .catchall {:try_start_3 .. :try_end_22} :catchall_20

    throw v1
.end method

.method private final unbindLocked()V
    .registers 4
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 359
    invoke-virtual {p0}, Lcom/android/server/am/PersistentConnection;->unscheduleRebindLocked()V

    .line 361
    iget-boolean v0, p0, Lcom/android/server/am/PersistentConnection;->mBound:Z

    if-nez v0, :cond_8

    .line 362
    return-void

    .line 364
    :cond_8
    iget-object v0, p0, Lcom/android/server/am/PersistentConnection;->mTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Stopping: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/am/PersistentConnection;->mComponentName:Landroid/content/ComponentName;

    invoke-virtual {v2}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " u"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/am/PersistentConnection;->mUserId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 365
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/am/PersistentConnection;->mBound:Z

    .line 366
    iget-object v0, p0, Lcom/android/server/am/PersistentConnection;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/am/PersistentConnection;->mServiceConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 368
    invoke-direct {p0}, Lcom/android/server/am/PersistentConnection;->cleanUpConnectionLocked()V

    .line 369
    return-void
.end method

.method private unscheduleStableCheckLocked()V
    .registers 2
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 413
    iget-object v0, p0, Lcom/android/server/am/PersistentConnection;->mStableCheck:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/android/server/am/PersistentConnection;->injectRemoveCallbacks(Ljava/lang/Runnable;)V

    .line 414
    return-void
.end method


# virtual methods
.method protected abstract asInterface(Landroid/os/IBinder;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/IBinder;",
            ")TT;"
        }
    .end annotation
.end method

.method public final bind()V
    .registers 3

    .line 252
    iget-object v0, p0, Lcom/android/server/am/PersistentConnection;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 253
    const/4 v1, 0x1

    :try_start_4
    iput-boolean v1, p0, Lcom/android/server/am/PersistentConnection;->mShouldBeBound:Z

    .line 255
    invoke-virtual {p0, v1}, Lcom/android/server/am/PersistentConnection;->bindInnerLocked(Z)V

    .line 256
    monitor-exit v0

    .line 257
    return-void

    .line 256
    :catchall_b
    move-exception v1

    monitor-exit v0
    :try_end_d
    .catchall {:try_start_4 .. :try_end_d} :catchall_b

    throw v1
.end method

.method final bindForBackoff()V
    .registers 3

    .line 327
    iget-object v0, p0, Lcom/android/server/am/PersistentConnection;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 328
    :try_start_3
    iget-boolean v1, p0, Lcom/android/server/am/PersistentConnection;->mShouldBeBound:Z

    if-nez v1, :cond_9

    .line 330
    monitor-exit v0

    return-void

    .line 333
    :cond_9
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/android/server/am/PersistentConnection;->bindInnerLocked(Z)V

    .line 334
    monitor-exit v0

    .line 335
    return-void

    .line 334
    :catchall_f
    move-exception v1

    monitor-exit v0
    :try_end_11
    .catchall {:try_start_3 .. :try_end_11} :catchall_f

    throw v1
.end method

.method public final bindInnerLocked(Z)V
    .registers 10
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 297
    invoke-virtual {p0}, Lcom/android/server/am/PersistentConnection;->unscheduleRebindLocked()V

    .line 299
    iget-boolean v0, p0, Lcom/android/server/am/PersistentConnection;->mBound:Z

    if-eqz v0, :cond_8

    .line 300
    return-void

    .line 302
    :cond_8
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/am/PersistentConnection;->mBound:Z

    .line 304
    invoke-direct {p0}, Lcom/android/server/am/PersistentConnection;->unscheduleStableCheckLocked()V

    .line 306
    if-eqz p1, :cond_13

    .line 307
    invoke-direct {p0}, Lcom/android/server/am/PersistentConnection;->resetBackoffLocked()V

    .line 310
    :cond_13
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    iget-object v1, p0, Lcom/android/server/am/PersistentConnection;->mComponentName:Landroid/content/ComponentName;

    invoke-virtual {p1, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object p1

    .line 316
    iget-object v2, p0, Lcom/android/server/am/PersistentConnection;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/server/am/PersistentConnection;->mServiceConnection:Landroid/content/ServiceConnection;

    .line 317
    invoke-virtual {p0}, Lcom/android/server/am/PersistentConnection;->getBindFlags()I

    move-result v1

    or-int/lit8 v5, v1, 0x1

    iget-object v6, p0, Lcom/android/server/am/PersistentConnection;->mHandler:Landroid/os/Handler;

    iget v0, p0, Lcom/android/server/am/PersistentConnection;->mUserId:I

    .line 318
    invoke-static {v0}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v7

    .line 316
    move-object v3, p1

    invoke-virtual/range {v2 .. v7}, Landroid/content/Context;->bindServiceAsUser(Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/Handler;Landroid/os/UserHandle;)Z

    move-result v0

    .line 320
    if-nez v0, :cond_60

    .line 321
    iget-object v0, p0, Lcom/android/server/am/PersistentConnection;->mTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Binding: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " u"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p0, Lcom/android/server/am/PersistentConnection;->mUserId:I

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " failed."

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 324
    :cond_60
    return-void
.end method

.method public dump(Ljava/lang/String;Ljava/io/PrintWriter;)V
    .registers 8

    .line 426
    iget-object v0, p0, Lcom/android/server/am/PersistentConnection;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 427
    :try_start_3
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 428
    iget-object v1, p0, Lcom/android/server/am/PersistentConnection;->mComponentName:Landroid/content/ComponentName;

    invoke-virtual {v1}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 429
    const-string v1, " u"

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 430
    iget v1, p0, Lcom/android/server/am/PersistentConnection;->mUserId:I

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(I)V

    .line 431
    iget-boolean v1, p0, Lcom/android/server/am/PersistentConnection;->mBound:Z

    if-eqz v1, :cond_20

    const-string v1, " [bound]"

    goto :goto_22

    :cond_20
    const-string v1, " [not bound]"

    :goto_22
    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 432
    iget-boolean v1, p0, Lcom/android/server/am/PersistentConnection;->mIsConnected:Z

    if-eqz v1, :cond_2c

    const-string v1, " [connected]"

    goto :goto_2e

    :cond_2c
    const-string v1, " [not connected]"

    :goto_2e
    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 433
    iget-boolean v1, p0, Lcom/android/server/am/PersistentConnection;->mRebindScheduled:Z

    if-eqz v1, :cond_44

    .line 434
    const-string v1, " reconnect in "

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 435
    iget-wide v1, p0, Lcom/android/server/am/PersistentConnection;->mReconnectTime:J

    invoke-virtual {p0}, Lcom/android/server/am/PersistentConnection;->injectUptimeMillis()J

    move-result-wide v3

    sub-long/2addr v1, v3

    invoke-static {v1, v2, p2}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 437
    :cond_44
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 439
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 440
    const-string v1, "  Next backoff(sec): "

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 441
    iget-wide v1, p0, Lcom/android/server/am/PersistentConnection;->mNextBackoffMs:J

    const-wide/16 v3, 0x3e8

    div-long/2addr v1, v3

    invoke-virtual {p2, v1, v2}, Ljava/io/PrintWriter;->print(J)V

    .line 442
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 444
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 445
    const-string p1, "  Connected: "

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 446
    iget p1, p0, Lcom/android/server/am/PersistentConnection;->mNumConnected:I

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(I)V

    .line 447
    const-string p1, "  Disconnected: "

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 448
    iget p1, p0, Lcom/android/server/am/PersistentConnection;->mNumDisconnected:I

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(I)V

    .line 449
    const-string p1, "  Died: "

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 450
    iget p1, p0, Lcom/android/server/am/PersistentConnection;->mNumBindingDied:I

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(I)V

    .line 451
    iget-boolean p1, p0, Lcom/android/server/am/PersistentConnection;->mIsConnected:Z

    if-eqz p1, :cond_8e

    .line 452
    const-string p1, "  Duration: "

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 453
    invoke-virtual {p0}, Lcom/android/server/am/PersistentConnection;->injectUptimeMillis()J

    move-result-wide v1

    iget-wide v3, p0, Lcom/android/server/am/PersistentConnection;->mLastConnectedTime:J

    sub-long/2addr v1, v3

    invoke-static {v1, v2, p2}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 455
    :cond_8e
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 456
    monitor-exit v0

    .line 457
    return-void

    .line 456
    :catchall_93
    move-exception p1

    monitor-exit v0
    :try_end_95
    .catchall {:try_start_3 .. :try_end_95} :catchall_93

    throw p1
.end method

.method protected abstract getBindFlags()I
.end method

.method getBindForBackoffRunnableForTest()Ljava/lang/Runnable;
    .registers 2
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 491
    iget-object v0, p0, Lcom/android/server/am/PersistentConnection;->mBindForBackoffRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method public final getComponentName()Landroid/content/ComponentName;
    .registers 2

    .line 200
    iget-object v0, p0, Lcom/android/server/am/PersistentConnection;->mComponentName:Landroid/content/ComponentName;

    return-object v0
.end method

.method public getNextBackoffMs()J
    .registers 4

    .line 261
    iget-object v0, p0, Lcom/android/server/am/PersistentConnection;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 262
    :try_start_3
    iget-wide v1, p0, Lcom/android/server/am/PersistentConnection;->mNextBackoffMs:J

    monitor-exit v0

    return-wide v1

    .line 263
    :catchall_7
    move-exception v1

    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v1
.end method

.method getNextBackoffMsForTest()J
    .registers 3
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 476
    iget-wide v0, p0, Lcom/android/server/am/PersistentConnection;->mNextBackoffMs:J

    return-wide v0
.end method

.method public getNumBindingDied()I
    .registers 3

    .line 282
    iget-object v0, p0, Lcom/android/server/am/PersistentConnection;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 283
    :try_start_3
    iget v1, p0, Lcom/android/server/am/PersistentConnection;->mNumBindingDied:I

    monitor-exit v0

    return v1

    .line 284
    :catchall_7
    move-exception v1

    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v1
.end method

.method public getNumConnected()I
    .registers 3

    .line 268
    iget-object v0, p0, Lcom/android/server/am/PersistentConnection;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 269
    :try_start_3
    iget v1, p0, Lcom/android/server/am/PersistentConnection;->mNumConnected:I

    monitor-exit v0

    return v1

    .line 270
    :catchall_7
    move-exception v1

    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v1
.end method

.method public getNumDisconnected()I
    .registers 3

    .line 275
    iget-object v0, p0, Lcom/android/server/am/PersistentConnection;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 276
    :try_start_3
    iget v1, p0, Lcom/android/server/am/PersistentConnection;->mNumDisconnected:I

    monitor-exit v0

    return v1

    .line 277
    :catchall_7
    move-exception v1

    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v1
.end method

.method getReconnectTimeForTest()J
    .registers 3
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 481
    iget-wide v0, p0, Lcom/android/server/am/PersistentConnection;->mReconnectTime:J

    return-wide v0
.end method

.method public final getServiceBinder()Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 243
    iget-object v0, p0, Lcom/android/server/am/PersistentConnection;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 244
    :try_start_3
    iget-object v1, p0, Lcom/android/server/am/PersistentConnection;->mService:Ljava/lang/Object;

    monitor-exit v0

    return-object v1

    .line 245
    :catchall_7
    move-exception v1

    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v1
.end method

.method getServiceConnectionForTest()Landroid/content/ServiceConnection;
    .registers 2
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 486
    iget-object v0, p0, Lcom/android/server/am/PersistentConnection;->mServiceConnection:Landroid/content/ServiceConnection;

    return-object v0
.end method

.method getStableCheckRunnableForTest()Ljava/lang/Runnable;
    .registers 2
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 496
    iget-object v0, p0, Lcom/android/server/am/PersistentConnection;->mStableCheck:Ljava/lang/Runnable;

    return-object v0
.end method

.method public final getUserId()I
    .registers 2

    .line 204
    iget v0, p0, Lcom/android/server/am/PersistentConnection;->mUserId:I

    return v0
.end method

.method injectPostAtTime(Ljava/lang/Runnable;J)V
    .registers 5
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 466
    iget-object v0, p0, Lcom/android/server/am/PersistentConnection;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1, p2, p3}, Landroid/os/Handler;->postAtTime(Ljava/lang/Runnable;J)Z

    .line 467
    return-void
.end method

.method injectRemoveCallbacks(Ljava/lang/Runnable;)V
    .registers 3
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 461
    iget-object v0, p0, Lcom/android/server/am/PersistentConnection;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 462
    return-void
.end method

.method injectUptimeMillis()J
    .registers 3
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 471
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    return-wide v0
.end method

.method public final isBound()Z
    .registers 3

    .line 216
    iget-object v0, p0, Lcom/android/server/am/PersistentConnection;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 217
    :try_start_3
    iget-boolean v1, p0, Lcom/android/server/am/PersistentConnection;->mBound:Z

    monitor-exit v0

    return v1

    .line 218
    :catchall_7
    move-exception v1

    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v1
.end method

.method public final isConnected()Z
    .registers 3

    .line 234
    iget-object v0, p0, Lcom/android/server/am/PersistentConnection;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 235
    :try_start_3
    iget-boolean v1, p0, Lcom/android/server/am/PersistentConnection;->mIsConnected:Z

    monitor-exit v0

    return v1

    .line 236
    :catchall_7
    move-exception v1

    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v1
.end method

.method public final isRebindScheduled()Z
    .registers 3

    .line 225
    iget-object v0, p0, Lcom/android/server/am/PersistentConnection;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 226
    :try_start_3
    iget-boolean v1, p0, Lcom/android/server/am/PersistentConnection;->mRebindScheduled:Z

    monitor-exit v0

    return v1

    .line 227
    :catchall_7
    move-exception v1

    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v1
.end method

.method public synthetic lambda$new$0$PersistentConnection()V
    .registers 1

    .line 179
    invoke-virtual {p0}, Lcom/android/server/am/PersistentConnection;->bindForBackoff()V

    return-void
.end method

.method scheduleRebindLocked()V
    .registers 7
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 379
    invoke-direct {p0}, Lcom/android/server/am/PersistentConnection;->unbindLocked()V

    .line 381
    iget-boolean v0, p0, Lcom/android/server/am/PersistentConnection;->mRebindScheduled:Z

    if-nez v0, :cond_46

    .line 382
    iget-object v0, p0, Lcom/android/server/am/PersistentConnection;->mTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Scheduling to reconnect in "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/android/server/am/PersistentConnection;->mNextBackoffMs:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, " ms (uptime)"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 384
    invoke-virtual {p0}, Lcom/android/server/am/PersistentConnection;->injectUptimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/server/am/PersistentConnection;->mNextBackoffMs:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/server/am/PersistentConnection;->mReconnectTime:J

    .line 386
    iget-object v0, p0, Lcom/android/server/am/PersistentConnection;->mBindForBackoffRunnable:Ljava/lang/Runnable;

    iget-wide v1, p0, Lcom/android/server/am/PersistentConnection;->mReconnectTime:J

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/server/am/PersistentConnection;->injectPostAtTime(Ljava/lang/Runnable;J)V

    .line 388
    iget-wide v0, p0, Lcom/android/server/am/PersistentConnection;->mRebindMaxBackoffMs:J

    iget-wide v2, p0, Lcom/android/server/am/PersistentConnection;->mNextBackoffMs:J

    long-to-double v2, v2

    iget-wide v4, p0, Lcom/android/server/am/PersistentConnection;->mRebindBackoffIncrease:D

    mul-double/2addr v2, v4

    double-to-long v2, v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/am/PersistentConnection;->mNextBackoffMs:J

    .line 391
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/am/PersistentConnection;->mRebindScheduled:Z

    .line 393
    :cond_46
    return-void
.end method

.method shouldBeBoundForTest()Z
    .registers 2
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 501
    iget-boolean v0, p0, Lcom/android/server/am/PersistentConnection;->mShouldBeBound:Z

    return v0
.end method

.method public final unbind()V
    .registers 3

    .line 349
    iget-object v0, p0, Lcom/android/server/am/PersistentConnection;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 350
    const/4 v1, 0x0

    :try_start_4
    iput-boolean v1, p0, Lcom/android/server/am/PersistentConnection;->mShouldBeBound:Z

    .line 352
    invoke-direct {p0}, Lcom/android/server/am/PersistentConnection;->unbindLocked()V

    .line 353
    invoke-direct {p0}, Lcom/android/server/am/PersistentConnection;->unscheduleStableCheckLocked()V

    .line 354
    monitor-exit v0

    .line 355
    return-void

    .line 354
    :catchall_e
    move-exception v1

    monitor-exit v0
    :try_end_10
    .catchall {:try_start_4 .. :try_end_10} :catchall_e

    throw v1
.end method

.method unscheduleRebindLocked()V
    .registers 2
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 373
    iget-object v0, p0, Lcom/android/server/am/PersistentConnection;->mBindForBackoffRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/android/server/am/PersistentConnection;->injectRemoveCallbacks(Ljava/lang/Runnable;)V

    .line 374
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/am/PersistentConnection;->mRebindScheduled:Z

    .line 375
    return-void
.end method
