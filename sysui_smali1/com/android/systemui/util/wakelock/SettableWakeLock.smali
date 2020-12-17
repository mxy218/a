.class public Lcom/android/systemui/util/wakelock/SettableWakeLock;
.super Ljava/lang/Object;
.source "SettableWakeLock.java"


# instance fields
.field private mAcquired:Z

.field private final mInner:Lcom/android/systemui/util/wakelock/WakeLock;

.field private final mWhy:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/android/systemui/util/wakelock/WakeLock;Ljava/lang/String;)V
    .registers 4

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "inner wakelock required"

    .line 29
    invoke-static {p1, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 31
    iput-object p1, p0, Lcom/android/systemui/util/wakelock/SettableWakeLock;->mInner:Lcom/android/systemui/util/wakelock/WakeLock;

    .line 32
    iput-object p2, p0, Lcom/android/systemui/util/wakelock/SettableWakeLock;->mWhy:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public declared-synchronized setAcquired(Z)V
    .registers 4

    monitor-enter p0

    .line 40
    :try_start_1
    iget-boolean v0, p0, Lcom/android/systemui/util/wakelock/SettableWakeLock;->mAcquired:Z

    if-eq v0, p1, :cond_18

    if-eqz p1, :cond_f

    .line 42
    iget-object v0, p0, Lcom/android/systemui/util/wakelock/SettableWakeLock;->mInner:Lcom/android/systemui/util/wakelock/WakeLock;

    iget-object v1, p0, Lcom/android/systemui/util/wakelock/SettableWakeLock;->mWhy:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/android/systemui/util/wakelock/WakeLock;->acquire(Ljava/lang/String;)V

    goto :goto_16

    .line 44
    :cond_f
    iget-object v0, p0, Lcom/android/systemui/util/wakelock/SettableWakeLock;->mInner:Lcom/android/systemui/util/wakelock/WakeLock;

    iget-object v1, p0, Lcom/android/systemui/util/wakelock/SettableWakeLock;->mWhy:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/android/systemui/util/wakelock/WakeLock;->release(Ljava/lang/String;)V

    .line 46
    :goto_16
    iput-boolean p1, p0, Lcom/android/systemui/util/wakelock/SettableWakeLock;->mAcquired:Z
    :try_end_18
    .catchall {:try_start_1 .. :try_end_18} :catchall_1a

    .line 48
    :cond_18
    monitor-exit p0

    return-void

    :catchall_1a
    move-exception p1

    monitor-exit p0

    throw p1
.end method
