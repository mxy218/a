.class Lcom/android/server/soundtrigger/SoundTriggerService$SoundModelStatTracker;
.super Ljava/lang/Object;
.source "SoundTriggerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/soundtrigger/SoundTriggerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SoundModelStatTracker"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/soundtrigger/SoundTriggerService$SoundModelStatTracker$SoundModelStat;
    }
.end annotation


# instance fields
.field private final mModelStats:Ljava/util/TreeMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/TreeMap<",
            "Ljava/util/UUID;",
            "Lcom/android/server/soundtrigger/SoundTriggerService$SoundModelStatTracker$SoundModelStat;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/android/server/soundtrigger/SoundTriggerService;


# direct methods
.method constructor <init>(Lcom/android/server/soundtrigger/SoundTriggerService;)V
    .registers 2

    .line 124
    iput-object p1, p0, Lcom/android/server/soundtrigger/SoundTriggerService$SoundModelStatTracker;->this$0:Lcom/android/server/soundtrigger/SoundTriggerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 125
    new-instance p1, Ljava/util/TreeMap;

    invoke-direct {p1}, Ljava/util/TreeMap;-><init>()V

    iput-object p1, p0, Lcom/android/server/soundtrigger/SoundTriggerService$SoundModelStatTracker;->mModelStats:Ljava/util/TreeMap;

    .line 126
    return-void
.end method


# virtual methods
.method public declared-synchronized dump(Ljava/io/PrintWriter;)V
    .registers 11

    monitor-enter p0

    .line 163
    :try_start_1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 164
    const-string v2, "Model Stats:"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 165
    iget-object v2, p0, Lcom/android/server/soundtrigger/SoundTriggerService$SoundModelStatTracker;->mModelStats:Ljava/util/TreeMap;

    invoke-virtual {v2}, Ljava/util/TreeMap;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_14
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6d

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 166
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/UUID;

    .line 167
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/soundtrigger/SoundTriggerService$SoundModelStatTracker$SoundModelStat;

    .line 168
    iget-wide v5, v3, Lcom/android/server/soundtrigger/SoundTriggerService$SoundModelStatTracker$SoundModelStat;->mTotalTimeMsec:J

    .line 169
    iget-boolean v7, v3, Lcom/android/server/soundtrigger/SoundTriggerService$SoundModelStatTracker$SoundModelStat;->mIsStarted:Z

    if-eqz v7, :cond_37

    .line 170
    iget-wide v7, v3, Lcom/android/server/soundtrigger/SoundTriggerService$SoundModelStatTracker$SoundModelStat;->mLastStartTimestampMsec:J

    sub-long v7, v0, v7

    add-long/2addr v5, v7

    .line 172
    :cond_37
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ", total_time(msec)="

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, ", total_count="

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v4, v3, Lcom/android/server/soundtrigger/SoundTriggerService$SoundModelStatTracker$SoundModelStat;->mStartCount:J

    invoke-virtual {v7, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, ", last_start="

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v4, v3, Lcom/android/server/soundtrigger/SoundTriggerService$SoundModelStatTracker$SoundModelStat;->mLastStartTimestampMsec:J

    invoke-virtual {v7, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, ", last_stop="

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v3, v3, Lcom/android/server/soundtrigger/SoundTriggerService$SoundModelStatTracker$SoundModelStat;->mLastStopTimestampMsec:J

    invoke-virtual {v7, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_6c
    .catchall {:try_start_1 .. :try_end_6c} :catchall_6f

    .line 176
    goto :goto_14

    .line 177
    :cond_6d
    monitor-exit p0

    return-void

    .line 162
    :catchall_6f
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized onStart(Ljava/util/UUID;)V
    .registers 7

    monitor-enter p0

    .line 129
    :try_start_1
    iget-object v0, p0, Lcom/android/server/soundtrigger/SoundTriggerService$SoundModelStatTracker;->mModelStats:Ljava/util/TreeMap;

    invoke-virtual {v0, p1}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/soundtrigger/SoundTriggerService$SoundModelStatTracker$SoundModelStat;

    .line 130
    if-nez v0, :cond_15

    .line 131
    new-instance v0, Lcom/android/server/soundtrigger/SoundTriggerService$SoundModelStatTracker$SoundModelStat;

    invoke-direct {v0, p0}, Lcom/android/server/soundtrigger/SoundTriggerService$SoundModelStatTracker$SoundModelStat;-><init>(Lcom/android/server/soundtrigger/SoundTriggerService$SoundModelStatTracker;)V

    .line 132
    iget-object v1, p0, Lcom/android/server/soundtrigger/SoundTriggerService$SoundModelStatTracker;->mModelStats:Ljava/util/TreeMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 135
    :cond_15
    iget-boolean v1, v0, Lcom/android/server/soundtrigger/SoundTriggerService$SoundModelStatTracker$SoundModelStat;->mIsStarted:Z

    if-eqz v1, :cond_36

    .line 136
    const-string v0, "SoundTriggerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "error onStart(): Model "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " already started"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_34
    .catchall {:try_start_1 .. :try_end_34} :catchall_48

    .line 137
    monitor-exit p0

    return-void

    .line 140
    :cond_36
    :try_start_36
    iget-wide v1, v0, Lcom/android/server/soundtrigger/SoundTriggerService$SoundModelStatTracker$SoundModelStat;->mStartCount:J

    const-wide/16 v3, 0x1

    add-long/2addr v1, v3

    iput-wide v1, v0, Lcom/android/server/soundtrigger/SoundTriggerService$SoundModelStatTracker$SoundModelStat;->mStartCount:J

    .line 141
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/android/server/soundtrigger/SoundTriggerService$SoundModelStatTracker$SoundModelStat;->mLastStartTimestampMsec:J

    .line 142
    const/4 p1, 0x1

    iput-boolean p1, v0, Lcom/android/server/soundtrigger/SoundTriggerService$SoundModelStatTracker$SoundModelStat;->mIsStarted:Z
    :try_end_46
    .catchall {:try_start_36 .. :try_end_46} :catchall_48

    .line 143
    monitor-exit p0

    return-void

    .line 128
    :catchall_48
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized onStop(Ljava/util/UUID;)V
    .registers 9

    monitor-enter p0

    .line 146
    :try_start_1
    iget-object v0, p0, Lcom/android/server/soundtrigger/SoundTriggerService$SoundModelStatTracker;->mModelStats:Ljava/util/TreeMap;

    invoke-virtual {v0, p1}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/soundtrigger/SoundTriggerService$SoundModelStatTracker$SoundModelStat;

    .line 147
    if-nez v0, :cond_28

    .line 148
    const-string v0, "SoundTriggerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "error onStop(): Model "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " has no stats available"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_26
    .catchall {:try_start_1 .. :try_end_26} :catchall_5e

    .line 149
    monitor-exit p0

    return-void

    .line 152
    :cond_28
    :try_start_28
    iget-boolean v1, v0, Lcom/android/server/soundtrigger/SoundTriggerService$SoundModelStatTracker$SoundModelStat;->mIsStarted:Z

    if-nez v1, :cond_49

    .line 153
    const-string v0, "SoundTriggerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "error onStop(): Model "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " already stopped"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_47
    .catchall {:try_start_28 .. :try_end_47} :catchall_5e

    .line 154
    monitor-exit p0

    return-void

    .line 157
    :cond_49
    :try_start_49
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/android/server/soundtrigger/SoundTriggerService$SoundModelStatTracker$SoundModelStat;->mLastStopTimestampMsec:J

    .line 158
    iget-wide v1, v0, Lcom/android/server/soundtrigger/SoundTriggerService$SoundModelStatTracker$SoundModelStat;->mTotalTimeMsec:J

    iget-wide v3, v0, Lcom/android/server/soundtrigger/SoundTriggerService$SoundModelStatTracker$SoundModelStat;->mLastStopTimestampMsec:J

    iget-wide v5, v0, Lcom/android/server/soundtrigger/SoundTriggerService$SoundModelStatTracker$SoundModelStat;->mLastStartTimestampMsec:J

    sub-long/2addr v3, v5

    add-long/2addr v1, v3

    iput-wide v1, v0, Lcom/android/server/soundtrigger/SoundTriggerService$SoundModelStatTracker$SoundModelStat;->mTotalTimeMsec:J

    .line 159
    const/4 p1, 0x0

    iput-boolean p1, v0, Lcom/android/server/soundtrigger/SoundTriggerService$SoundModelStatTracker$SoundModelStat;->mIsStarted:Z
    :try_end_5c
    .catchall {:try_start_49 .. :try_end_5c} :catchall_5e

    .line 160
    monitor-exit p0

    return-void

    .line 145
    :catchall_5e
    move-exception p1

    monitor-exit p0

    throw p1
.end method
