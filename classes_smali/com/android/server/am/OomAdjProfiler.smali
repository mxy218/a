.class public Lcom/android/server/am/OomAdjProfiler;
.super Ljava/lang/Object;
.source "OomAdjProfiler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/am/OomAdjProfiler$CpuTimes;
    }
.end annotation


# static fields
.field private static final PROFILING_DISABLED:Z = true


# instance fields
.field private mLastSystemServerCpuTimeMs:J
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "this"
        }
    .end annotation
.end field

.field private mOnBattery:Z
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "this"
        }
    .end annotation
.end field

.field private mOomAdjRunTime:Lcom/android/server/am/OomAdjProfiler$CpuTimes;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "this"
        }
    .end annotation
.end field

.field final mOomAdjRunTimesHist:Lcom/android/internal/util/RingBuffer;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "this"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/internal/util/RingBuffer<",
            "Lcom/android/server/am/OomAdjProfiler$CpuTimes;",
            ">;"
        }
    .end annotation
.end field

.field private mOomAdjStartTimeMs:J
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "this"
        }
    .end annotation
.end field

.field private mOomAdjStarted:Z
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "this"
        }
    .end annotation
.end field

.field private final mProcessCpuTracker:Lcom/android/internal/os/ProcessCpuTracker;

.field private mScreenOff:Z
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "this"
        }
    .end annotation
.end field

.field private mSystemServerCpuTime:Lcom/android/server/am/OomAdjProfiler$CpuTimes;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "this"
        }
    .end annotation
.end field

.field private mSystemServerCpuTimeUpdateScheduled:Z
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "this"
        }
    .end annotation
.end field

.field final mSystemServerCpuTimesHist:Lcom/android/internal/util/RingBuffer;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "this"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/internal/util/RingBuffer<",
            "Lcom/android/server/am/OomAdjProfiler$CpuTimes;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 4

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    new-instance v0, Lcom/android/server/am/OomAdjProfiler$CpuTimes;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/am/OomAdjProfiler$CpuTimes;-><init>(Lcom/android/server/am/OomAdjProfiler;Lcom/android/server/am/OomAdjProfiler$1;)V

    iput-object v0, p0, Lcom/android/server/am/OomAdjProfiler;->mOomAdjRunTime:Lcom/android/server/am/OomAdjProfiler$CpuTimes;

    .line 47
    new-instance v0, Lcom/android/server/am/OomAdjProfiler$CpuTimes;

    invoke-direct {v0, p0, v1}, Lcom/android/server/am/OomAdjProfiler$CpuTimes;-><init>(Lcom/android/server/am/OomAdjProfiler;Lcom/android/server/am/OomAdjProfiler$1;)V

    iput-object v0, p0, Lcom/android/server/am/OomAdjProfiler;->mSystemServerCpuTime:Lcom/android/server/am/OomAdjProfiler$CpuTimes;

    .line 54
    new-instance v0, Lcom/android/internal/os/ProcessCpuTracker;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/internal/os/ProcessCpuTracker;-><init>(Z)V

    iput-object v0, p0, Lcom/android/server/am/OomAdjProfiler;->mProcessCpuTracker:Lcom/android/internal/os/ProcessCpuTracker;

    .line 56
    new-instance v0, Lcom/android/internal/util/RingBuffer;

    const-class v1, Lcom/android/server/am/OomAdjProfiler$CpuTimes;

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Lcom/android/internal/util/RingBuffer;-><init>(Ljava/lang/Class;I)V

    iput-object v0, p0, Lcom/android/server/am/OomAdjProfiler;->mOomAdjRunTimesHist:Lcom/android/internal/util/RingBuffer;

    .line 58
    new-instance v0, Lcom/android/internal/util/RingBuffer;

    const-class v1, Lcom/android/server/am/OomAdjProfiler$CpuTimes;

    invoke-direct {v0, v1, v2}, Lcom/android/internal/util/RingBuffer;-><init>(Ljava/lang/Class;I)V

    iput-object v0, p0, Lcom/android/server/am/OomAdjProfiler;->mSystemServerCpuTimesHist:Lcom/android/internal/util/RingBuffer;

    return-void
.end method

.method static synthetic access$100(Lcom/android/server/am/OomAdjProfiler;)Z
    .registers 1

    .line 31
    iget-boolean p0, p0, Lcom/android/server/am/OomAdjProfiler;->mOnBattery:Z

    return p0
.end method

.method static synthetic access$200(Lcom/android/server/am/OomAdjProfiler;)Z
    .registers 1

    .line 31
    iget-boolean p0, p0, Lcom/android/server/am/OomAdjProfiler;->mScreenOff:Z

    return p0
.end method

.method private scheduleSystemServerCpuTimeUpdate()V
    .registers 1

    .line 105
    return-void
.end method

.method private updateSystemServerCpuTime(ZZ)V
    .registers 3

    .line 120
    return-void
.end method


# virtual methods
.method batteryPowerChanged(Z)V
    .registers 2

    .line 63
    return-void
.end method

.method dump(Ljava/io/PrintWriter;)V
    .registers 2

    .line 146
    return-void
.end method

.method onWakefulnessChanged(I)V
    .registers 2

    .line 73
    return-void
.end method

.method oomAdjEnded()V
    .registers 1

    .line 93
    return-void
.end method

.method oomAdjStarted()V
    .registers 1

    .line 83
    return-void
.end method

.method reset()V
    .registers 3

    .line 133
    monitor-enter p0

    .line 134
    :try_start_1
    iget-object v0, p0, Lcom/android/server/am/OomAdjProfiler;->mSystemServerCpuTime:Lcom/android/server/am/OomAdjProfiler$CpuTimes;

    invoke-virtual {v0}, Lcom/android/server/am/OomAdjProfiler$CpuTimes;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 135
    monitor-exit p0

    return-void

    .line 137
    :cond_b
    iget-object v0, p0, Lcom/android/server/am/OomAdjProfiler;->mOomAdjRunTimesHist:Lcom/android/internal/util/RingBuffer;

    iget-object v1, p0, Lcom/android/server/am/OomAdjProfiler;->mOomAdjRunTime:Lcom/android/server/am/OomAdjProfiler$CpuTimes;

    invoke-virtual {v0, v1}, Lcom/android/internal/util/RingBuffer;->append(Ljava/lang/Object;)V

    .line 138
    iget-object v0, p0, Lcom/android/server/am/OomAdjProfiler;->mSystemServerCpuTimesHist:Lcom/android/internal/util/RingBuffer;

    iget-object v1, p0, Lcom/android/server/am/OomAdjProfiler;->mSystemServerCpuTime:Lcom/android/server/am/OomAdjProfiler$CpuTimes;

    invoke-virtual {v0, v1}, Lcom/android/internal/util/RingBuffer;->append(Ljava/lang/Object;)V

    .line 139
    new-instance v0, Lcom/android/server/am/OomAdjProfiler$CpuTimes;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/am/OomAdjProfiler$CpuTimes;-><init>(Lcom/android/server/am/OomAdjProfiler;Lcom/android/server/am/OomAdjProfiler$1;)V

    iput-object v0, p0, Lcom/android/server/am/OomAdjProfiler;->mOomAdjRunTime:Lcom/android/server/am/OomAdjProfiler$CpuTimes;

    .line 140
    new-instance v0, Lcom/android/server/am/OomAdjProfiler$CpuTimes;

    invoke-direct {v0, p0, v1}, Lcom/android/server/am/OomAdjProfiler$CpuTimes;-><init>(Lcom/android/server/am/OomAdjProfiler;Lcom/android/server/am/OomAdjProfiler$1;)V

    iput-object v0, p0, Lcom/android/server/am/OomAdjProfiler;->mSystemServerCpuTime:Lcom/android/server/am/OomAdjProfiler$CpuTimes;

    .line 141
    monitor-exit p0

    .line 142
    return-void

    .line 141
    :catchall_2a
    move-exception v0

    monitor-exit p0
    :try_end_2c
    .catchall {:try_start_1 .. :try_end_2c} :catchall_2a

    throw v0
.end method
