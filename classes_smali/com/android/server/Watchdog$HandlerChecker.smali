.class public final Lcom/android/server/Watchdog$HandlerChecker;
.super Ljava/lang/Object;
.source "Watchdog.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/Watchdog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "HandlerChecker"
.end annotation


# instance fields
.field private mCompleted:Z

.field private mCurrentMonitor:Lcom/android/server/Watchdog$Monitor;

.field private final mHandler:Landroid/os/Handler;

.field private final mMonitorQueue:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/Watchdog$Monitor;",
            ">;"
        }
    .end annotation
.end field

.field private final mMonitors:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/Watchdog$Monitor;",
            ">;"
        }
    .end annotation
.end field

.field private final mName:Ljava/lang/String;

.field private mPauseCount:I

.field private mStartTime:J

.field private final mWaitMax:J

.field final synthetic this$0:Lcom/android/server/Watchdog;


# direct methods
.method constructor <init>(Lcom/android/server/Watchdog;Landroid/os/Handler;Ljava/lang/String;J)V
    .registers 7
    .param p1, "this$0"  # Lcom/android/server/Watchdog;
    .param p2, "handler"  # Landroid/os/Handler;
    .param p3, "name"  # Ljava/lang/String;
    .param p4, "waitMaxMillis"  # J

    .line 173
    iput-object p1, p0, Lcom/android/server/Watchdog$HandlerChecker;->this$0:Lcom/android/server/Watchdog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 166
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/Watchdog$HandlerChecker;->mMonitors:Ljava/util/ArrayList;

    .line 167
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/Watchdog$HandlerChecker;->mMonitorQueue:Ljava/util/ArrayList;

    .line 174
    iput-object p2, p0, Lcom/android/server/Watchdog$HandlerChecker;->mHandler:Landroid/os/Handler;

    .line 175
    iput-object p3, p0, Lcom/android/server/Watchdog$HandlerChecker;->mName:Ljava/lang/String;

    .line 176
    iput-wide p4, p0, Lcom/android/server/Watchdog$HandlerChecker;->mWaitMax:J

    .line 177
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/Watchdog$HandlerChecker;->mCompleted:Z

    .line 178
    return-void
.end method


# virtual methods
.method addMonitorLocked(Lcom/android/server/Watchdog$Monitor;)V
    .registers 3
    .param p1, "monitor"  # Lcom/android/server/Watchdog$Monitor;

    .line 183
    iget-object v0, p0, Lcom/android/server/Watchdog$HandlerChecker;->mMonitorQueue:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 184
    return-void
.end method

.method describeBlockedStateLocked()Ljava/lang/String;
    .registers 5

    .line 242
    iget-object v0, p0, Lcom/android/server/Watchdog$HandlerChecker;->mCurrentMonitor:Lcom/android/server/Watchdog$Monitor;

    const-string v1, ")"

    const-string v2, " ("

    if-nez v0, :cond_2d

    .line 243
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Blocked in handler on "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/Watchdog$HandlerChecker;->mName:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/Watchdog$HandlerChecker;->getThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 245
    :cond_2d
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Blocked in monitor "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/Watchdog$HandlerChecker;->mCurrentMonitor:Lcom/android/server/Watchdog$Monitor;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " on "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/Watchdog$HandlerChecker;->mName:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 246
    invoke-virtual {p0}, Lcom/android/server/Watchdog$HandlerChecker;->getThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 245
    return-object v0
.end method

.method public getCompletionStateLocked()I
    .registers 7

    .line 220
    iget-boolean v0, p0, Lcom/android/server/Watchdog$HandlerChecker;->mCompleted:Z

    if-eqz v0, :cond_6

    .line 221
    const/4 v0, 0x0

    return v0

    .line 223
    :cond_6
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/server/Watchdog$HandlerChecker;->mStartTime:J

    sub-long/2addr v0, v2

    .line 224
    .local v0, "latency":J
    iget-wide v2, p0, Lcom/android/server/Watchdog$HandlerChecker;->mWaitMax:J

    const-wide/16 v4, 0x2

    div-long v4, v2, v4

    cmp-long v4, v0, v4

    if-gez v4, :cond_19

    .line 225
    const/4 v2, 0x1

    return v2

    .line 226
    :cond_19
    cmp-long v2, v0, v2

    if-gez v2, :cond_1f

    .line 227
    const/4 v2, 0x2

    return v2

    .line 230
    .end local v0  # "latency":J
    :cond_1f
    const/4 v0, 0x3

    return v0
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    .line 238
    iget-object v0, p0, Lcom/android/server/Watchdog$HandlerChecker;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public getThread()Ljava/lang/Thread;
    .registers 2

    .line 234
    iget-object v0, p0, Lcom/android/server/Watchdog$HandlerChecker;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v0

    return-object v0
.end method

.method isOverdueLocked()Z
    .registers 7

    .line 216
    iget-boolean v0, p0, Lcom/android/server/Watchdog$HandlerChecker;->mCompleted:Z

    if-nez v0, :cond_13

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/server/Watchdog$HandlerChecker;->mStartTime:J

    iget-wide v4, p0, Lcom/android/server/Watchdog$HandlerChecker;->mWaitMax:J

    add-long/2addr v2, v4

    cmp-long v0, v0, v2

    if-lez v0, :cond_13

    const/4 v0, 0x1

    goto :goto_14

    :cond_13
    const/4 v0, 0x0

    :goto_14
    return v0
.end method

.method public pauseLocked(Ljava/lang/String;)V
    .registers 4
    .param p1, "reason"  # Ljava/lang/String;

    .line 272
    iget v0, p0, Lcom/android/server/Watchdog$HandlerChecker;->mPauseCount:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/android/server/Watchdog$HandlerChecker;->mPauseCount:I

    .line 276
    iput-boolean v1, p0, Lcom/android/server/Watchdog$HandlerChecker;->mCompleted:Z

    .line 277
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Pausing HandlerChecker: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/Watchdog$HandlerChecker;->mName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " for reason: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ". Pause count: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/Watchdog$HandlerChecker;->mPauseCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Watchdog"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 279
    return-void
.end method

.method public resumeLocked(Ljava/lang/String;)V
    .registers 5
    .param p1, "reason"  # Ljava/lang/String;

    .line 283
    iget v0, p0, Lcom/android/server/Watchdog$HandlerChecker;->mPauseCount:I

    const-string v1, "Watchdog"

    if-lez v0, :cond_33

    .line 284
    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/android/server/Watchdog$HandlerChecker;->mPauseCount:I

    .line 285
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Resuming HandlerChecker: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/Watchdog$HandlerChecker;->mName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " for reason: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ". Pause count: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/Watchdog$HandlerChecker;->mPauseCount:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_49

    .line 288
    :cond_33
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Already resumed HandlerChecker: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/Watchdog$HandlerChecker;->mName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 290
    :goto_49
    return-void
.end method

.method public run()V
    .registers 5

    .line 256
    iget-object v0, p0, Lcom/android/server/Watchdog$HandlerChecker;->mMonitors:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 257
    .local v0, "size":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_7
    if-ge v1, v0, :cond_22

    .line 258
    iget-object v2, p0, Lcom/android/server/Watchdog$HandlerChecker;->this$0:Lcom/android/server/Watchdog;

    monitor-enter v2

    .line 259
    :try_start_c
    iget-object v3, p0, Lcom/android/server/Watchdog$HandlerChecker;->mMonitors:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/Watchdog$Monitor;

    iput-object v3, p0, Lcom/android/server/Watchdog$HandlerChecker;->mCurrentMonitor:Lcom/android/server/Watchdog$Monitor;

    .line 260
    monitor-exit v2
    :try_end_17
    .catchall {:try_start_c .. :try_end_17} :catchall_1f

    .line 261
    iget-object v2, p0, Lcom/android/server/Watchdog$HandlerChecker;->mCurrentMonitor:Lcom/android/server/Watchdog$Monitor;

    invoke-interface {v2}, Lcom/android/server/Watchdog$Monitor;->monitor()V

    .line 257
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 260
    :catchall_1f
    move-exception v3

    :try_start_20
    monitor-exit v2
    :try_end_21
    .catchall {:try_start_20 .. :try_end_21} :catchall_1f

    throw v3

    .line 264
    .end local v1  # "i":I
    :cond_22
    iget-object v1, p0, Lcom/android/server/Watchdog$HandlerChecker;->this$0:Lcom/android/server/Watchdog;

    monitor-enter v1

    .line 265
    const/4 v2, 0x1

    :try_start_26
    iput-boolean v2, p0, Lcom/android/server/Watchdog$HandlerChecker;->mCompleted:Z

    .line 266
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/server/Watchdog$HandlerChecker;->mCurrentMonitor:Lcom/android/server/Watchdog$Monitor;

    .line 267
    monitor-exit v1

    .line 268
    return-void

    .line 267
    :catchall_2d
    move-exception v2

    monitor-exit v1
    :try_end_2f
    .catchall {:try_start_26 .. :try_end_2f} :catchall_2d

    throw v2
.end method

.method public scheduleCheckLocked()V
    .registers 3

    .line 187
    iget-boolean v0, p0, Lcom/android/server/Watchdog$HandlerChecker;->mCompleted:Z

    if-eqz v0, :cond_10

    .line 189
    iget-object v0, p0, Lcom/android/server/Watchdog$HandlerChecker;->mMonitors:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/server/Watchdog$HandlerChecker;->mMonitorQueue:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 190
    iget-object v0, p0, Lcom/android/server/Watchdog$HandlerChecker;->mMonitorQueue:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 192
    :cond_10
    iget-object v0, p0, Lcom/android/server/Watchdog$HandlerChecker;->mMonitors:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_28

    iget-object v0, p0, Lcom/android/server/Watchdog$HandlerChecker;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->getQueue()Landroid/os/MessageQueue;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/MessageQueue;->isPolling()Z

    move-result v0

    if-nez v0, :cond_2c

    :cond_28
    iget v0, p0, Lcom/android/server/Watchdog$HandlerChecker;->mPauseCount:I

    if-lez v0, :cond_30

    .line 201
    :cond_2c
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/Watchdog$HandlerChecker;->mCompleted:Z

    .line 202
    return-void

    .line 204
    :cond_30
    iget-boolean v0, p0, Lcom/android/server/Watchdog$HandlerChecker;->mCompleted:Z

    if-nez v0, :cond_35

    .line 206
    return-void

    .line 209
    :cond_35
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/Watchdog$HandlerChecker;->mCompleted:Z

    .line 210
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/Watchdog$HandlerChecker;->mCurrentMonitor:Lcom/android/server/Watchdog$Monitor;

    .line 211
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/Watchdog$HandlerChecker;->mStartTime:J

    .line 212
    iget-object v0, p0, Lcom/android/server/Watchdog$HandlerChecker;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->postAtFrontOfQueue(Ljava/lang/Runnable;)Z

    .line 213
    return-void
.end method
