.class Lcom/android/server/soundtrigger/SoundTriggerService$NumOps;
.super Ljava/lang/Object;
.source "SoundTriggerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/soundtrigger/SoundTriggerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "NumOps"
.end annotation


# instance fields
.field private mLastOpsHourSinceBoot:J
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation
.end field

.field private final mLock:Ljava/lang/Object;

.field private mNumOps:[I
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .registers 2

    .line 674
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 675
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/soundtrigger/SoundTriggerService$NumOps;->mLock:Ljava/lang/Object;

    .line 677
    const/16 v0, 0x18

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/android/server/soundtrigger/SoundTriggerService$NumOps;->mNumOps:[I

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/soundtrigger/SoundTriggerService$1;)V
    .registers 2

    .line 674
    invoke-direct {p0}, Lcom/android/server/soundtrigger/SoundTriggerService$NumOps;-><init>()V

    return-void
.end method


# virtual methods
.method addOp(J)V
    .registers 7

    .line 711
    iget-object v0, p0, Lcom/android/server/soundtrigger/SoundTriggerService$NumOps;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 712
    :try_start_3
    sget-object v1, Ljava/util/concurrent/TimeUnit;->HOURS:Ljava/util/concurrent/TimeUnit;

    sget-object v2, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v1, p1, p2, v2}, Ljava/util/concurrent/TimeUnit;->convert(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide p1

    .line 714
    iget-object v1, p0, Lcom/android/server/soundtrigger/SoundTriggerService$NumOps;->mNumOps:[I

    const-wide/16 v2, 0x18

    rem-long v2, p1, v2

    long-to-int v2, v2

    aget v3, v1, v2

    add-int/lit8 v3, v3, 0x1

    aput v3, v1, v2

    .line 715
    iput-wide p1, p0, Lcom/android/server/soundtrigger/SoundTriggerService$NumOps;->mLastOpsHourSinceBoot:J

    .line 716
    monitor-exit v0

    .line 717
    return-void

    .line 716
    :catchall_1c
    move-exception p1

    monitor-exit v0
    :try_end_1e
    .catchall {:try_start_3 .. :try_end_1e} :catchall_1c

    throw p1
.end method

.method clearOldOps(J)V
    .registers 11

    .line 691
    iget-object v0, p0, Lcom/android/server/soundtrigger/SoundTriggerService$NumOps;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 692
    :try_start_3
    sget-object v1, Ljava/util/concurrent/TimeUnit;->HOURS:Ljava/util/concurrent/TimeUnit;

    sget-object v2, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v1, p1, p2, v2}, Ljava/util/concurrent/TimeUnit;->convert(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide p1

    .line 697
    iget-wide v1, p0, Lcom/android/server/soundtrigger/SoundTriggerService$NumOps;->mLastOpsHourSinceBoot:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-eqz v1, :cond_27

    .line 698
    iget-wide v1, p0, Lcom/android/server/soundtrigger/SoundTriggerService$NumOps;->mLastOpsHourSinceBoot:J

    const-wide/16 v3, 0x1

    :goto_17
    add-long/2addr v1, v3

    cmp-long v5, v1, p1

    if-gtz v5, :cond_27

    .line 699
    iget-object v5, p0, Lcom/android/server/soundtrigger/SoundTriggerService$NumOps;->mNumOps:[I

    const-wide/16 v6, 0x18

    rem-long v6, v1, v6

    long-to-int v6, v6

    const/4 v7, 0x0

    aput v7, v5, v6

    .line 698
    goto :goto_17

    .line 702
    :cond_27
    monitor-exit v0

    .line 703
    return-void

    .line 702
    :catchall_29
    move-exception p1

    monitor-exit v0
    :try_end_2b
    .catchall {:try_start_3 .. :try_end_2b} :catchall_29

    throw p1
.end method

.method getOpsAdded()I
    .registers 5

    .line 725
    iget-object v0, p0, Lcom/android/server/soundtrigger/SoundTriggerService$NumOps;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 726
    nop

    .line 727
    const/4 v1, 0x0

    move v2, v1

    :goto_6
    const/16 v3, 0x18

    if-ge v1, v3, :cond_12

    .line 728
    :try_start_a
    iget-object v3, p0, Lcom/android/server/soundtrigger/SoundTriggerService$NumOps;->mNumOps:[I

    aget v3, v3, v1

    add-int/2addr v2, v3

    .line 727
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 731
    :cond_12
    monitor-exit v0

    return v2

    .line 732
    :catchall_14
    move-exception v1

    monitor-exit v0
    :try_end_16
    .catchall {:try_start_a .. :try_end_16} :catchall_14

    throw v1
.end method
