.class Lcom/android/server/AlarmManagerService$DeliveryTracker;
.super Landroid/app/IAlarmCompleteListener$Stub;
.source "AlarmManagerService.java"

# interfaces
.implements Landroid/app/PendingIntent$OnFinished;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/AlarmManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "DeliveryTracker"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/AlarmManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/AlarmManagerService;)V
    .registers 2

    .line 4529
    iput-object p1, p0, Lcom/android/server/AlarmManagerService$DeliveryTracker;->this$0:Lcom/android/server/AlarmManagerService;

    invoke-direct {p0}, Landroid/app/IAlarmCompleteListener$Stub;-><init>()V

    return-void
.end method

.method private removeLocked(Landroid/app/PendingIntent;Landroid/content/Intent;)Lcom/android/server/AlarmManagerService$InFlight;
    .registers 6

    .line 4532
    const/4 v0, 0x0

    :goto_1
    iget-object v1, p0, Lcom/android/server/AlarmManagerService$DeliveryTracker;->this$0:Lcom/android/server/AlarmManagerService;

    iget-object v1, v1, Lcom/android/server/AlarmManagerService;->mInFlight:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_34

    .line 4533
    iget-object v1, p0, Lcom/android/server/AlarmManagerService$DeliveryTracker;->this$0:Lcom/android/server/AlarmManagerService;

    iget-object v1, v1, Lcom/android/server/AlarmManagerService;->mInFlight:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/AlarmManagerService$InFlight;

    .line 4534
    iget-object v2, v1, Lcom/android/server/AlarmManagerService$InFlight;->mPendingIntent:Landroid/app/PendingIntent;

    if-ne v2, p1, :cond_31

    .line 4535
    invoke-virtual {p1}, Landroid/app/PendingIntent;->isBroadcast()Z

    move-result p1

    if-eqz p1, :cond_26

    .line 4536
    iget-object p1, p0, Lcom/android/server/AlarmManagerService$DeliveryTracker;->this$0:Lcom/android/server/AlarmManagerService;

    iget p2, v1, Lcom/android/server/AlarmManagerService$InFlight;->mUid:I

    invoke-static {p1, p2}, Lcom/android/server/AlarmManagerService;->access$2800(Lcom/android/server/AlarmManagerService;I)V

    .line 4538
    :cond_26
    iget-object p1, p0, Lcom/android/server/AlarmManagerService$DeliveryTracker;->this$0:Lcom/android/server/AlarmManagerService;

    iget-object p1, p1, Lcom/android/server/AlarmManagerService;->mInFlight:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/AlarmManagerService$InFlight;

    return-object p1

    .line 4532
    :cond_31
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 4541
    :cond_34
    iget-object v0, p0, Lcom/android/server/AlarmManagerService$DeliveryTracker;->this$0:Lcom/android/server/AlarmManagerService;

    iget-object v0, v0, Lcom/android/server/AlarmManagerService;->mLog:Lcom/android/internal/util/LocalLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No in-flight alarm for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/android/internal/util/LocalLog;->w(Ljava/lang/String;)V

    .line 4542
    const/4 p1, 0x0

    return-object p1
.end method

.method private removeLocked(Landroid/os/IBinder;)Lcom/android/server/AlarmManagerService$InFlight;
    .registers 5

    .line 4546
    const/4 v0, 0x0

    :goto_1
    iget-object v1, p0, Lcom/android/server/AlarmManagerService$DeliveryTracker;->this$0:Lcom/android/server/AlarmManagerService;

    iget-object v1, v1, Lcom/android/server/AlarmManagerService;->mInFlight:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_27

    .line 4547
    iget-object v1, p0, Lcom/android/server/AlarmManagerService$DeliveryTracker;->this$0:Lcom/android/server/AlarmManagerService;

    iget-object v1, v1, Lcom/android/server/AlarmManagerService;->mInFlight:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/AlarmManagerService$InFlight;

    iget-object v1, v1, Lcom/android/server/AlarmManagerService$InFlight;->mListener:Landroid/os/IBinder;

    if-ne v1, p1, :cond_24

    .line 4548
    iget-object p1, p0, Lcom/android/server/AlarmManagerService$DeliveryTracker;->this$0:Lcom/android/server/AlarmManagerService;

    iget-object p1, p1, Lcom/android/server/AlarmManagerService;->mInFlight:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/AlarmManagerService$InFlight;

    return-object p1

    .line 4546
    :cond_24
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 4551
    :cond_27
    iget-object v0, p0, Lcom/android/server/AlarmManagerService$DeliveryTracker;->this$0:Lcom/android/server/AlarmManagerService;

    iget-object v0, v0, Lcom/android/server/AlarmManagerService;->mLog:Lcom/android/internal/util/LocalLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No in-flight alarm for listener "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/android/internal/util/LocalLog;->w(Ljava/lang/String;)V

    .line 4552
    const/4 p1, 0x0

    return-object p1
.end method

.method private updateStatsLocked(Lcom/android/server/AlarmManagerService$InFlight;)V
    .registers 11

    .line 4556
    iget-object v0, p0, Lcom/android/server/AlarmManagerService$DeliveryTracker;->this$0:Lcom/android/server/AlarmManagerService;

    invoke-static {v0}, Lcom/android/server/AlarmManagerService;->access$100(Lcom/android/server/AlarmManagerService;)Lcom/android/server/AlarmManagerService$Injector;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/AlarmManagerService$Injector;->getElapsedRealtime()J

    move-result-wide v0

    .line 4557
    iget-object v2, p1, Lcom/android/server/AlarmManagerService$InFlight;->mBroadcastStats:Lcom/android/server/AlarmManagerService$BroadcastStats;

    .line 4558
    iget v3, v2, Lcom/android/server/AlarmManagerService$BroadcastStats;->nesting:I

    add-int/lit8 v3, v3, -0x1

    iput v3, v2, Lcom/android/server/AlarmManagerService$BroadcastStats;->nesting:I

    .line 4559
    iget v3, v2, Lcom/android/server/AlarmManagerService$BroadcastStats;->nesting:I

    const/4 v4, 0x0

    if-gtz v3, :cond_22

    .line 4560
    iput v4, v2, Lcom/android/server/AlarmManagerService$BroadcastStats;->nesting:I

    .line 4561
    iget-wide v5, v2, Lcom/android/server/AlarmManagerService$BroadcastStats;->aggregateTime:J

    iget-wide v7, v2, Lcom/android/server/AlarmManagerService$BroadcastStats;->startTime:J

    sub-long v7, v0, v7

    add-long/2addr v5, v7

    iput-wide v5, v2, Lcom/android/server/AlarmManagerService$BroadcastStats;->aggregateTime:J

    .line 4563
    :cond_22
    iget-object v2, p1, Lcom/android/server/AlarmManagerService$InFlight;->mFilterStats:Lcom/android/server/AlarmManagerService$FilterStats;

    .line 4564
    iget v3, v2, Lcom/android/server/AlarmManagerService$FilterStats;->nesting:I

    add-int/lit8 v3, v3, -0x1

    iput v3, v2, Lcom/android/server/AlarmManagerService$FilterStats;->nesting:I

    .line 4565
    iget v3, v2, Lcom/android/server/AlarmManagerService$FilterStats;->nesting:I

    if-gtz v3, :cond_38

    .line 4566
    iput v4, v2, Lcom/android/server/AlarmManagerService$FilterStats;->nesting:I

    .line 4567
    iget-wide v3, v2, Lcom/android/server/AlarmManagerService$FilterStats;->aggregateTime:J

    iget-wide v5, v2, Lcom/android/server/AlarmManagerService$FilterStats;->startTime:J

    sub-long/2addr v0, v5

    add-long/2addr v3, v0

    iput-wide v3, v2, Lcom/android/server/AlarmManagerService$FilterStats;->aggregateTime:J

    .line 4570
    :cond_38
    iget-object v0, p1, Lcom/android/server/AlarmManagerService$InFlight;->mPendingIntent:Landroid/app/PendingIntent;

    iget-object v1, p1, Lcom/android/server/AlarmManagerService$InFlight;->mWorkSource:Landroid/os/WorkSource;

    iget v2, p1, Lcom/android/server/AlarmManagerService$InFlight;->mUid:I

    iget-object p1, p1, Lcom/android/server/AlarmManagerService$InFlight;->mTag:Ljava/lang/String;

    invoke-static {v0, v1, v2, p1}, Landroid/app/ActivityManager;->noteAlarmFinish(Landroid/app/PendingIntent;Landroid/os/WorkSource;ILjava/lang/String;)V

    .line 4573
    return-void
.end method

.method private updateTrackingLocked(Lcom/android/server/AlarmManagerService$InFlight;)V
    .registers 6

    .line 4576
    if-eqz p1, :cond_5

    .line 4577
    invoke-direct {p0, p1}, Lcom/android/server/AlarmManagerService$DeliveryTracker;->updateStatsLocked(Lcom/android/server/AlarmManagerService$InFlight;)V

    .line 4579
    :cond_5
    iget-object p1, p0, Lcom/android/server/AlarmManagerService$DeliveryTracker;->this$0:Lcom/android/server/AlarmManagerService;

    iget v0, p1, Lcom/android/server/AlarmManagerService;->mBroadcastRefCount:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p1, Lcom/android/server/AlarmManagerService;->mBroadcastRefCount:I

    .line 4583
    iget-object p1, p0, Lcom/android/server/AlarmManagerService$DeliveryTracker;->this$0:Lcom/android/server/AlarmManagerService;

    iget p1, p1, Lcom/android/server/AlarmManagerService;->mBroadcastRefCount:I

    const/4 v0, 0x0

    if-nez p1, :cond_98

    .line 4584
    iget-object p1, p0, Lcom/android/server/AlarmManagerService$DeliveryTracker;->this$0:Lcom/android/server/AlarmManagerService;

    iget-object p1, p1, Lcom/android/server/AlarmManagerService;->mHandler:Lcom/android/server/AlarmManagerService$AlarmHandler;

    const/4 v1, 0x4

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Lcom/android/server/AlarmManagerService$AlarmHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 4585
    iget-object p1, p0, Lcom/android/server/AlarmManagerService$DeliveryTracker;->this$0:Lcom/android/server/AlarmManagerService;

    iget-object p1, p1, Lcom/android/server/AlarmManagerService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {p1}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 4586
    iget-object p1, p0, Lcom/android/server/AlarmManagerService$DeliveryTracker;->this$0:Lcom/android/server/AlarmManagerService;

    iget-object p1, p1, Lcom/android/server/AlarmManagerService;->mInFlight:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-lez p1, :cond_c9

    .line 4587
    iget-object p1, p0, Lcom/android/server/AlarmManagerService$DeliveryTracker;->this$0:Lcom/android/server/AlarmManagerService;

    iget-object p1, p1, Lcom/android/server/AlarmManagerService;->mLog:Lcom/android/internal/util/LocalLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Finished all dispatches with "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/AlarmManagerService$DeliveryTracker;->this$0:Lcom/android/server/AlarmManagerService;

    iget-object v2, v2, Lcom/android/server/AlarmManagerService;->mInFlight:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " remaining inflights"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/android/internal/util/LocalLog;->w(Ljava/lang/String;)V

    .line 4589
    nop

    :goto_5b
    iget-object p1, p0, Lcom/android/server/AlarmManagerService$DeliveryTracker;->this$0:Lcom/android/server/AlarmManagerService;

    iget-object p1, p1, Lcom/android/server/AlarmManagerService;->mInFlight:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-ge v0, p1, :cond_90

    .line 4590
    iget-object p1, p0, Lcom/android/server/AlarmManagerService$DeliveryTracker;->this$0:Lcom/android/server/AlarmManagerService;

    iget-object p1, p1, Lcom/android/server/AlarmManagerService;->mLog:Lcom/android/internal/util/LocalLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  Remaining #"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/AlarmManagerService$DeliveryTracker;->this$0:Lcom/android/server/AlarmManagerService;

    iget-object v2, v2, Lcom/android/server/AlarmManagerService;->mInFlight:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/android/internal/util/LocalLog;->w(Ljava/lang/String;)V

    .line 4589
    add-int/lit8 v0, v0, 0x1

    goto :goto_5b

    .line 4592
    :cond_90
    iget-object p1, p0, Lcom/android/server/AlarmManagerService$DeliveryTracker;->this$0:Lcom/android/server/AlarmManagerService;

    iget-object p1, p1, Lcom/android/server/AlarmManagerService;->mInFlight:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    goto :goto_c9

    .line 4596
    :cond_98
    iget-object p1, p0, Lcom/android/server/AlarmManagerService$DeliveryTracker;->this$0:Lcom/android/server/AlarmManagerService;

    iget-object p1, p1, Lcom/android/server/AlarmManagerService;->mInFlight:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-lez p1, :cond_b8

    .line 4597
    iget-object p1, p0, Lcom/android/server/AlarmManagerService$DeliveryTracker;->this$0:Lcom/android/server/AlarmManagerService;

    iget-object p1, p1, Lcom/android/server/AlarmManagerService;->mInFlight:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/AlarmManagerService$InFlight;

    .line 4598
    iget-object v1, p0, Lcom/android/server/AlarmManagerService$DeliveryTracker;->this$0:Lcom/android/server/AlarmManagerService;

    iget-object v2, p1, Lcom/android/server/AlarmManagerService$InFlight;->mWorkSource:Landroid/os/WorkSource;

    iget v3, p1, Lcom/android/server/AlarmManagerService$InFlight;->mCreatorUid:I

    iget-object p1, p1, Lcom/android/server/AlarmManagerService$InFlight;->mTag:Ljava/lang/String;

    invoke-virtual {v1, v2, v3, p1, v0}, Lcom/android/server/AlarmManagerService;->setWakelockWorkSource(Landroid/os/WorkSource;ILjava/lang/String;Z)V

    .line 4600
    goto :goto_c9

    .line 4602
    :cond_b8
    iget-object p1, p0, Lcom/android/server/AlarmManagerService$DeliveryTracker;->this$0:Lcom/android/server/AlarmManagerService;

    iget-object p1, p1, Lcom/android/server/AlarmManagerService;->mLog:Lcom/android/internal/util/LocalLog;

    const-string v0, "Alarm wakelock still held but sent queue empty"

    invoke-virtual {p1, v0}, Lcom/android/internal/util/LocalLog;->w(Ljava/lang/String;)V

    .line 4603
    iget-object p1, p0, Lcom/android/server/AlarmManagerService$DeliveryTracker;->this$0:Lcom/android/server/AlarmManagerService;

    iget-object p1, p1, Lcom/android/server/AlarmManagerService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/os/PowerManager$WakeLock;->setWorkSource(Landroid/os/WorkSource;)V

    .line 4606
    :cond_c9
    :goto_c9
    return-void
.end method


# virtual methods
.method public alarmComplete(Landroid/os/IBinder;)V
    .registers 7

    .line 4613
    if-nez p1, :cond_2b

    .line 4614
    iget-object p1, p0, Lcom/android/server/AlarmManagerService$DeliveryTracker;->this$0:Lcom/android/server/AlarmManagerService;

    iget-object p1, p1, Lcom/android/server/AlarmManagerService;->mLog:Lcom/android/internal/util/LocalLog;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid alarmComplete: uid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " pid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4615
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 4614
    invoke-virtual {p1, v0}, Lcom/android/internal/util/LocalLog;->w(Ljava/lang/String;)V

    .line 4616
    return-void

    .line 4619
    :cond_2b
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 4621
    :try_start_2f
    iget-object v2, p0, Lcom/android/server/AlarmManagerService$DeliveryTracker;->this$0:Lcom/android/server/AlarmManagerService;

    iget-object v2, v2, Lcom/android/server/AlarmManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_34
    .catchall {:try_start_2f .. :try_end_34} :catchall_53

    .line 4622
    :try_start_34
    iget-object v3, p0, Lcom/android/server/AlarmManagerService$DeliveryTracker;->this$0:Lcom/android/server/AlarmManagerService;

    iget-object v3, v3, Lcom/android/server/AlarmManagerService;->mHandler:Lcom/android/server/AlarmManagerService$AlarmHandler;

    const/4 v4, 0x3

    invoke-virtual {v3, v4, p1}, Lcom/android/server/AlarmManagerService$AlarmHandler;->removeMessages(ILjava/lang/Object;)V

    .line 4623
    invoke-direct {p0, p1}, Lcom/android/server/AlarmManagerService$DeliveryTracker;->removeLocked(Landroid/os/IBinder;)Lcom/android/server/AlarmManagerService$InFlight;

    move-result-object p1

    .line 4624
    if-eqz p1, :cond_4a

    .line 4628
    invoke-direct {p0, p1}, Lcom/android/server/AlarmManagerService$DeliveryTracker;->updateTrackingLocked(Lcom/android/server/AlarmManagerService$InFlight;)V

    .line 4629
    iget-object p1, p0, Lcom/android/server/AlarmManagerService$DeliveryTracker;->this$0:Lcom/android/server/AlarmManagerService;

    invoke-static {p1}, Lcom/android/server/AlarmManagerService;->access$2908(Lcom/android/server/AlarmManagerService;)I

    .line 4637
    :cond_4a
    monitor-exit v2
    :try_end_4b
    .catchall {:try_start_34 .. :try_end_4b} :catchall_50

    .line 4639
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4640
    nop

    .line 4641
    return-void

    .line 4637
    :catchall_50
    move-exception p1

    :try_start_51
    monitor-exit v2
    :try_end_52
    .catchall {:try_start_51 .. :try_end_52} :catchall_50

    :try_start_52
    throw p1
    :try_end_53
    .catchall {:try_start_52 .. :try_end_53} :catchall_53

    .line 4639
    :catchall_53
    move-exception p1

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p1
.end method

.method public alarmTimedOut(Landroid/os/IBinder;)V
    .registers 6

    .line 4659
    iget-object v0, p0, Lcom/android/server/AlarmManagerService$DeliveryTracker;->this$0:Lcom/android/server/AlarmManagerService;

    iget-object v0, v0, Lcom/android/server/AlarmManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 4660
    :try_start_5
    invoke-direct {p0, p1}, Lcom/android/server/AlarmManagerService$DeliveryTracker;->removeLocked(Landroid/os/IBinder;)Lcom/android/server/AlarmManagerService$InFlight;

    move-result-object v1

    .line 4661
    if-eqz v1, :cond_14

    .line 4666
    invoke-direct {p0, v1}, Lcom/android/server/AlarmManagerService$DeliveryTracker;->updateTrackingLocked(Lcom/android/server/AlarmManagerService$InFlight;)V

    .line 4667
    iget-object p1, p0, Lcom/android/server/AlarmManagerService$DeliveryTracker;->this$0:Lcom/android/server/AlarmManagerService;

    invoke-static {p1}, Lcom/android/server/AlarmManagerService;->access$2908(Lcom/android/server/AlarmManagerService;)I

    goto :goto_2c

    .line 4672
    :cond_14
    iget-object v1, p0, Lcom/android/server/AlarmManagerService$DeliveryTracker;->this$0:Lcom/android/server/AlarmManagerService;

    iget-object v1, v1, Lcom/android/server/AlarmManagerService;->mLog:Lcom/android/internal/util/LocalLog;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Spurious timeout of listener "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/android/internal/util/LocalLog;->w(Ljava/lang/String;)V

    .line 4674
    :goto_2c
    monitor-exit v0

    .line 4675
    return-void

    .line 4674
    :catchall_2e
    move-exception p1

    monitor-exit v0
    :try_end_30
    .catchall {:try_start_5 .. :try_end_30} :catchall_2e

    throw p1
.end method

.method public deliverLocked(Lcom/android/server/AlarmManagerService$Alarm;JZ)V
    .registers 22
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 4682
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-wide/from16 v3, p2

    .line 4683
    invoke-static/range {p1 .. p1}, Lcom/android/server/AlarmManagerService;->access$3100(Lcom/android/server/AlarmManagerService$Alarm;)I

    move-result v0

    .line 4682
    invoke-static {v0}, Landroid/os/ThreadLocalWorkSource;->setUid(I)J

    move-result-wide v5

    .line 4685
    :try_start_e
    iget-object v0, v2, Lcom/android/server/AlarmManagerService$Alarm;->operation:Landroid/app/PendingIntent;

    const/4 v7, 0x0

    if-eqz v0, :cond_61

    .line 4687
    iget-object v0, v1, Lcom/android/server/AlarmManagerService$DeliveryTracker;->this$0:Lcom/android/server/AlarmManagerService;

    invoke-static {v0}, Lcom/android/server/AlarmManagerService;->access$3208(Lcom/android/server/AlarmManagerService;)I
    :try_end_18
    .catchall {:try_start_e .. :try_end_18} :catchall_1ac

    .line 4690
    const/4 v8, 0x0

    :try_start_19
    iget-object v9, v2, Lcom/android/server/AlarmManagerService$Alarm;->operation:Landroid/app/PendingIntent;

    iget-object v0, v1, Lcom/android/server/AlarmManagerService$DeliveryTracker;->this$0:Lcom/android/server/AlarmManagerService;

    invoke-virtual {v0}, Lcom/android/server/AlarmManagerService;->getContext()Landroid/content/Context;

    move-result-object v10

    const/4 v11, 0x0

    iget-object v0, v1, Lcom/android/server/AlarmManagerService$DeliveryTracker;->this$0:Lcom/android/server/AlarmManagerService;

    .line 4691
    invoke-static {v0}, Lcom/android/server/AlarmManagerService;->access$3300(Lcom/android/server/AlarmManagerService;)Landroid/content/Intent;

    move-result-object v0

    const-string v12, "android.intent.extra.ALARM_COUNT"

    iget v13, v2, Lcom/android/server/AlarmManagerService$Alarm;->count:I

    invoke-virtual {v0, v12, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v12

    iget-object v0, v1, Lcom/android/server/AlarmManagerService$DeliveryTracker;->this$0:Lcom/android/server/AlarmManagerService;

    iget-object v13, v0, Lcom/android/server/AlarmManagerService;->mDeliveryTracker:Lcom/android/server/AlarmManagerService$DeliveryTracker;

    iget-object v0, v1, Lcom/android/server/AlarmManagerService$DeliveryTracker;->this$0:Lcom/android/server/AlarmManagerService;

    iget-object v14, v0, Lcom/android/server/AlarmManagerService;->mHandler:Lcom/android/server/AlarmManagerService$AlarmHandler;

    const/4 v15, 0x0

    .line 4694
    if-eqz p4, :cond_42

    iget-object v0, v1, Lcom/android/server/AlarmManagerService$DeliveryTracker;->this$0:Lcom/android/server/AlarmManagerService;

    iget-object v0, v0, Lcom/android/server/AlarmManagerService;->mIdleOptions:Landroid/os/Bundle;

    move-object/from16 v16, v0

    goto :goto_44

    :cond_42
    move-object/from16 v16, v8

    .line 4690
    :goto_44
    invoke-virtual/range {v9 .. v16}, Landroid/app/PendingIntent;->send(Landroid/content/Context;ILandroid/content/Intent;Landroid/app/PendingIntent$OnFinished;Landroid/os/Handler;Ljava/lang/String;Landroid/os/Bundle;)V
    :try_end_47
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_19 .. :try_end_47} :catch_48
    .catchall {:try_start_19 .. :try_end_47} :catchall_1ac

    .line 4707
    goto :goto_ad

    .line 4695
    :catch_48
    move-exception v0

    .line 4696
    :try_start_49
    iget-wide v3, v2, Lcom/android/server/AlarmManagerService$Alarm;->repeatInterval:J

    const-wide/16 v9, 0x0

    cmp-long v0, v3, v9

    if-lez v0, :cond_58

    .line 4699
    iget-object v0, v1, Lcom/android/server/AlarmManagerService$DeliveryTracker;->this$0:Lcom/android/server/AlarmManagerService;

    iget-object v2, v2, Lcom/android/server/AlarmManagerService$Alarm;->operation:Landroid/app/PendingIntent;

    invoke-virtual {v0, v2, v8}, Lcom/android/server/AlarmManagerService;->removeImpl(Landroid/app/PendingIntent;Landroid/app/IAlarmListener;)V

    .line 4705
    :cond_58
    iget-object v0, v1, Lcom/android/server/AlarmManagerService$DeliveryTracker;->this$0:Lcom/android/server/AlarmManagerService;

    invoke-static {v0}, Lcom/android/server/AlarmManagerService;->access$3008(Lcom/android/server/AlarmManagerService;)I
    :try_end_5d
    .catchall {:try_start_49 .. :try_end_5d} :catchall_1ac

    .line 4745
    invoke-static {v5, v6}, Landroid/os/ThreadLocalWorkSource;->restore(J)V

    .line 4706
    return-void

    .line 4710
    :cond_61
    :try_start_61
    iget-object v0, v1, Lcom/android/server/AlarmManagerService$DeliveryTracker;->this$0:Lcom/android/server/AlarmManagerService;

    invoke-static {v0}, Lcom/android/server/AlarmManagerService;->access$3408(Lcom/android/server/AlarmManagerService;)I

    .line 4713
    iget-object v0, v2, Lcom/android/server/AlarmManagerService$Alarm;->listener:Landroid/app/IAlarmListener;

    iget-object v8, v1, Lcom/android/server/AlarmManagerService$DeliveryTracker;->this$0:Lcom/android/server/AlarmManagerService;

    iget-object v8, v8, Lcom/android/server/AlarmManagerService;->mTimeTickTrigger:Landroid/app/IAlarmListener;

    if-ne v0, v8, :cond_8b

    .line 4714
    iget-object v0, v1, Lcom/android/server/AlarmManagerService$DeliveryTracker;->this$0:Lcom/android/server/AlarmManagerService;

    invoke-static {v0}, Lcom/android/server/AlarmManagerService;->access$3500(Lcom/android/server/AlarmManagerService;)[J

    move-result-object v0

    iget-object v8, v1, Lcom/android/server/AlarmManagerService$DeliveryTracker;->this$0:Lcom/android/server/AlarmManagerService;

    invoke-static {v8}, Lcom/android/server/AlarmManagerService;->access$3608(Lcom/android/server/AlarmManagerService;)I

    move-result v8

    aput-wide v3, v0, v8

    .line 4715
    iget-object v0, v1, Lcom/android/server/AlarmManagerService$DeliveryTracker;->this$0:Lcom/android/server/AlarmManagerService;

    invoke-static {v0}, Lcom/android/server/AlarmManagerService;->access$3600(Lcom/android/server/AlarmManagerService;)I

    move-result v0

    const/16 v8, 0xa

    if-lt v0, v8, :cond_8b

    .line 4716
    iget-object v0, v1, Lcom/android/server/AlarmManagerService$DeliveryTracker;->this$0:Lcom/android/server/AlarmManagerService;

    invoke-static {v0, v7}, Lcom/android/server/AlarmManagerService;->access$3602(Lcom/android/server/AlarmManagerService;I)I
    :try_end_8b
    .catchall {:try_start_61 .. :try_end_8b} :catchall_1ac

    .line 4726
    :cond_8b
    :try_start_8b
    iget-object v0, v2, Lcom/android/server/AlarmManagerService$Alarm;->listener:Landroid/app/IAlarmListener;

    invoke-interface {v0, v1}, Landroid/app/IAlarmListener;->doAlarm(Landroid/app/IAlarmCompleteListener;)V

    .line 4727
    iget-object v0, v1, Lcom/android/server/AlarmManagerService$DeliveryTracker;->this$0:Lcom/android/server/AlarmManagerService;

    iget-object v0, v0, Lcom/android/server/AlarmManagerService;->mHandler:Lcom/android/server/AlarmManagerService$AlarmHandler;

    iget-object v8, v1, Lcom/android/server/AlarmManagerService$DeliveryTracker;->this$0:Lcom/android/server/AlarmManagerService;

    iget-object v8, v8, Lcom/android/server/AlarmManagerService;->mHandler:Lcom/android/server/AlarmManagerService$AlarmHandler;

    const/4 v9, 0x3

    iget-object v10, v2, Lcom/android/server/AlarmManagerService$Alarm;->listener:Landroid/app/IAlarmListener;

    .line 4729
    invoke-interface {v10}, Landroid/app/IAlarmListener;->asBinder()Landroid/os/IBinder;

    move-result-object v10

    .line 4728
    invoke-virtual {v8, v9, v10}, Lcom/android/server/AlarmManagerService$AlarmHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v8

    iget-object v9, v1, Lcom/android/server/AlarmManagerService$DeliveryTracker;->this$0:Lcom/android/server/AlarmManagerService;

    iget-object v9, v9, Lcom/android/server/AlarmManagerService;->mConstants:Lcom/android/server/AlarmManagerService$Constants;

    iget-wide v9, v9, Lcom/android/server/AlarmManagerService$Constants;->LISTENER_TIMEOUT:J

    .line 4727
    invoke-virtual {v0, v8, v9, v10}, Lcom/android/server/AlarmManagerService$AlarmHandler;->sendMessageDelayed(Landroid/os/Message;J)Z
    :try_end_ac
    .catch Ljava/lang/Exception; {:try_start_8b .. :try_end_ac} :catch_1a2
    .catchall {:try_start_8b .. :try_end_ac} :catchall_1ac

    .line 4742
    nop

    .line 4745
    :goto_ad
    invoke-static {v5, v6}, Landroid/os/ThreadLocalWorkSource;->restore(J)V

    .line 4746
    nop

    .line 4752
    iget-object v0, v1, Lcom/android/server/AlarmManagerService$DeliveryTracker;->this$0:Lcom/android/server/AlarmManagerService;

    iget v0, v0, Lcom/android/server/AlarmManagerService;->mBroadcastRefCount:I

    const/4 v5, 0x1

    if-nez v0, :cond_da

    .line 4753
    iget-object v0, v1, Lcom/android/server/AlarmManagerService$DeliveryTracker;->this$0:Lcom/android/server/AlarmManagerService;

    iget-object v6, v2, Lcom/android/server/AlarmManagerService$Alarm;->workSource:Landroid/os/WorkSource;

    iget v8, v2, Lcom/android/server/AlarmManagerService$Alarm;->creatorUid:I

    iget-object v9, v2, Lcom/android/server/AlarmManagerService$Alarm;->statsTag:Ljava/lang/String;

    invoke-virtual {v0, v6, v8, v9, v5}, Lcom/android/server/AlarmManagerService;->setWakelockWorkSource(Landroid/os/WorkSource;ILjava/lang/String;Z)V

    .line 4754
    iget-object v0, v1, Lcom/android/server/AlarmManagerService$DeliveryTracker;->this$0:Lcom/android/server/AlarmManagerService;

    iget-object v0, v0, Lcom/android/server/AlarmManagerService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 4755
    iget-object v0, v1, Lcom/android/server/AlarmManagerService$DeliveryTracker;->this$0:Lcom/android/server/AlarmManagerService;

    iget-object v0, v0, Lcom/android/server/AlarmManagerService;->mHandler:Lcom/android/server/AlarmManagerService$AlarmHandler;

    const/4 v6, 0x4

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v0, v6, v8}, Lcom/android/server/AlarmManagerService$AlarmHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 4757
    :cond_da
    new-instance v0, Lcom/android/server/AlarmManagerService$InFlight;

    iget-object v6, v1, Lcom/android/server/AlarmManagerService$DeliveryTracker;->this$0:Lcom/android/server/AlarmManagerService;

    invoke-direct {v0, v6, v2, v3, v4}, Lcom/android/server/AlarmManagerService$InFlight;-><init>(Lcom/android/server/AlarmManagerService;Lcom/android/server/AlarmManagerService$Alarm;J)V

    .line 4758
    iget-object v6, v1, Lcom/android/server/AlarmManagerService$DeliveryTracker;->this$0:Lcom/android/server/AlarmManagerService;

    iget-object v6, v6, Lcom/android/server/AlarmManagerService;->mInFlight:Ljava/util/ArrayList;

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4759
    iget-object v6, v1, Lcom/android/server/AlarmManagerService$DeliveryTracker;->this$0:Lcom/android/server/AlarmManagerService;

    iget v8, v6, Lcom/android/server/AlarmManagerService;->mBroadcastRefCount:I

    add-int/2addr v8, v5

    iput v8, v6, Lcom/android/server/AlarmManagerService;->mBroadcastRefCount:I

    .line 4760
    invoke-virtual {v0}, Lcom/android/server/AlarmManagerService$InFlight;->isBroadcast()Z

    move-result v6

    if-eqz v6, :cond_fc

    .line 4761
    iget-object v6, v1, Lcom/android/server/AlarmManagerService$DeliveryTracker;->this$0:Lcom/android/server/AlarmManagerService;

    iget v8, v2, Lcom/android/server/AlarmManagerService$Alarm;->uid:I

    invoke-static {v6, v8}, Lcom/android/server/AlarmManagerService;->access$3700(Lcom/android/server/AlarmManagerService;I)V

    .line 4763
    :cond_fc
    if-eqz p4, :cond_131

    .line 4765
    iget-object v6, v1, Lcom/android/server/AlarmManagerService$DeliveryTracker;->this$0:Lcom/android/server/AlarmManagerService;

    iget-object v6, v6, Lcom/android/server/AlarmManagerService;->mLastAllowWhileIdleDispatch:Landroid/util/SparseLongArray;

    iget v8, v2, Lcom/android/server/AlarmManagerService$Alarm;->creatorUid:I

    invoke-virtual {v6, v8, v3, v4}, Landroid/util/SparseLongArray;->put(IJ)V

    .line 4766
    iget-object v6, v1, Lcom/android/server/AlarmManagerService$DeliveryTracker;->this$0:Lcom/android/server/AlarmManagerService;

    invoke-static {v6}, Lcom/android/server/AlarmManagerService;->access$1200(Lcom/android/server/AlarmManagerService;)Lcom/android/server/AppStateTracker;

    move-result-object v6

    if-eqz v6, :cond_128

    iget-object v6, v1, Lcom/android/server/AlarmManagerService$DeliveryTracker;->this$0:Lcom/android/server/AlarmManagerService;

    .line 4767
    invoke-static {v6}, Lcom/android/server/AlarmManagerService;->access$1200(Lcom/android/server/AlarmManagerService;)Lcom/android/server/AppStateTracker;

    move-result-object v6

    iget v8, v2, Lcom/android/server/AlarmManagerService$Alarm;->creatorUid:I

    invoke-virtual {v6, v8}, Lcom/android/server/AppStateTracker;->isUidInForeground(I)Z

    move-result v6

    if-eqz v6, :cond_11e

    goto :goto_128

    .line 4770
    :cond_11e
    iget-object v6, v1, Lcom/android/server/AlarmManagerService$DeliveryTracker;->this$0:Lcom/android/server/AlarmManagerService;

    iget-object v6, v6, Lcom/android/server/AlarmManagerService;->mUseAllowWhileIdleShortTime:Landroid/util/SparseBooleanArray;

    iget v8, v2, Lcom/android/server/AlarmManagerService$Alarm;->creatorUid:I

    invoke-virtual {v6, v8, v7}, Landroid/util/SparseBooleanArray;->put(IZ)V

    goto :goto_131

    .line 4768
    :cond_128
    :goto_128
    iget-object v6, v1, Lcom/android/server/AlarmManagerService$DeliveryTracker;->this$0:Lcom/android/server/AlarmManagerService;

    iget-object v6, v6, Lcom/android/server/AlarmManagerService;->mUseAllowWhileIdleShortTime:Landroid/util/SparseBooleanArray;

    iget v7, v2, Lcom/android/server/AlarmManagerService$Alarm;->creatorUid:I

    invoke-virtual {v6, v7, v5}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 4782
    :cond_131
    :goto_131
    iget-object v6, v1, Lcom/android/server/AlarmManagerService$DeliveryTracker;->this$0:Lcom/android/server/AlarmManagerService;

    invoke-static {v6, v2}, Lcom/android/server/AlarmManagerService;->access$2400(Lcom/android/server/AlarmManagerService;Lcom/android/server/AlarmManagerService$Alarm;)Z

    move-result v6

    if-nez v6, :cond_157

    .line 4783
    iget-object v6, v2, Lcom/android/server/AlarmManagerService$Alarm;->sourcePackage:Ljava/lang/String;

    iget v7, v2, Lcom/android/server/AlarmManagerService$Alarm;->creatorUid:I

    .line 4784
    invoke-static {v7}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    .line 4783
    invoke-static {v6, v7}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    .line 4785
    iget-object v1, v1, Lcom/android/server/AlarmManagerService$DeliveryTracker;->this$0:Lcom/android/server/AlarmManagerService;

    iget-object v1, v1, Lcom/android/server/AlarmManagerService;->mAppWakeupHistory:Lcom/android/server/AlarmManagerService$AppWakeupHistory;

    iget-object v6, v2, Lcom/android/server/AlarmManagerService$Alarm;->sourcePackage:Ljava/lang/String;

    iget v7, v2, Lcom/android/server/AlarmManagerService$Alarm;->creatorUid:I

    .line 4786
    invoke-static {v7}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v7

    .line 4785
    invoke-virtual {v1, v6, v7, v3, v4}, Lcom/android/server/AlarmManagerService$AppWakeupHistory;->recordAlarmForPackage(Ljava/lang/String;IJ)V

    .line 4788
    :cond_157
    iget-object v1, v0, Lcom/android/server/AlarmManagerService$InFlight;->mBroadcastStats:Lcom/android/server/AlarmManagerService$BroadcastStats;

    .line 4789
    iget v6, v1, Lcom/android/server/AlarmManagerService$BroadcastStats;->count:I

    add-int/2addr v6, v5

    iput v6, v1, Lcom/android/server/AlarmManagerService$BroadcastStats;->count:I

    .line 4790
    iget v6, v1, Lcom/android/server/AlarmManagerService$BroadcastStats;->nesting:I

    if-nez v6, :cond_167

    .line 4791
    iput v5, v1, Lcom/android/server/AlarmManagerService$BroadcastStats;->nesting:I

    .line 4792
    iput-wide v3, v1, Lcom/android/server/AlarmManagerService$BroadcastStats;->startTime:J

    goto :goto_16c

    .line 4794
    :cond_167
    iget v6, v1, Lcom/android/server/AlarmManagerService$BroadcastStats;->nesting:I

    add-int/2addr v6, v5

    iput v6, v1, Lcom/android/server/AlarmManagerService$BroadcastStats;->nesting:I

    .line 4796
    :goto_16c
    iget-object v0, v0, Lcom/android/server/AlarmManagerService$InFlight;->mFilterStats:Lcom/android/server/AlarmManagerService$FilterStats;

    .line 4797
    iget v6, v0, Lcom/android/server/AlarmManagerService$FilterStats;->count:I

    add-int/2addr v6, v5

    iput v6, v0, Lcom/android/server/AlarmManagerService$FilterStats;->count:I

    .line 4798
    iget v6, v0, Lcom/android/server/AlarmManagerService$FilterStats;->nesting:I

    if-nez v6, :cond_17c

    .line 4799
    iput v5, v0, Lcom/android/server/AlarmManagerService$FilterStats;->nesting:I

    .line 4800
    iput-wide v3, v0, Lcom/android/server/AlarmManagerService$FilterStats;->startTime:J

    goto :goto_181

    .line 4802
    :cond_17c
    iget v3, v0, Lcom/android/server/AlarmManagerService$FilterStats;->nesting:I

    add-int/2addr v3, v5

    iput v3, v0, Lcom/android/server/AlarmManagerService$FilterStats;->nesting:I

    .line 4804
    :goto_181
    iget v3, v2, Lcom/android/server/AlarmManagerService$Alarm;->type:I

    const/4 v4, 0x2

    if-eq v3, v4, :cond_18a

    iget v3, v2, Lcom/android/server/AlarmManagerService$Alarm;->type:I

    if-nez v3, :cond_1a1

    .line 4806
    :cond_18a
    iget v3, v1, Lcom/android/server/AlarmManagerService$BroadcastStats;->numWakeup:I

    add-int/2addr v3, v5

    iput v3, v1, Lcom/android/server/AlarmManagerService$BroadcastStats;->numWakeup:I

    .line 4807
    iget v1, v0, Lcom/android/server/AlarmManagerService$FilterStats;->numWakeup:I

    add-int/2addr v1, v5

    iput v1, v0, Lcom/android/server/AlarmManagerService$FilterStats;->numWakeup:I

    .line 4808
    iget-object v0, v2, Lcom/android/server/AlarmManagerService$Alarm;->operation:Landroid/app/PendingIntent;

    iget-object v1, v2, Lcom/android/server/AlarmManagerService$Alarm;->workSource:Landroid/os/WorkSource;

    iget v3, v2, Lcom/android/server/AlarmManagerService$Alarm;->uid:I

    iget-object v4, v2, Lcom/android/server/AlarmManagerService$Alarm;->packageName:Ljava/lang/String;

    iget-object v2, v2, Lcom/android/server/AlarmManagerService$Alarm;->statsTag:Ljava/lang/String;

    invoke-static {v0, v1, v3, v4, v2}, Landroid/app/ActivityManager;->noteWakeupAlarm(Landroid/app/PendingIntent;Landroid/os/WorkSource;ILjava/lang/String;Ljava/lang/String;)V

    .line 4812
    :cond_1a1
    return-void

    .line 4731
    :catch_1a2
    move-exception v0

    .line 4740
    :try_start_1a3
    iget-object v0, v1, Lcom/android/server/AlarmManagerService$DeliveryTracker;->this$0:Lcom/android/server/AlarmManagerService;

    invoke-static {v0}, Lcom/android/server/AlarmManagerService;->access$2908(Lcom/android/server/AlarmManagerService;)I
    :try_end_1a8
    .catchall {:try_start_1a3 .. :try_end_1a8} :catchall_1ac

    .line 4745
    invoke-static {v5, v6}, Landroid/os/ThreadLocalWorkSource;->restore(J)V

    .line 4741
    return-void

    .line 4745
    :catchall_1ac
    move-exception v0

    invoke-static {v5, v6}, Landroid/os/ThreadLocalWorkSource;->restore(J)V

    throw v0
.end method

.method public onSendFinished(Landroid/app/PendingIntent;Landroid/content/Intent;ILjava/lang/String;Landroid/os/Bundle;)V
    .registers 6

    .line 4649
    iget-object p3, p0, Lcom/android/server/AlarmManagerService$DeliveryTracker;->this$0:Lcom/android/server/AlarmManagerService;

    iget-object p3, p3, Lcom/android/server/AlarmManagerService;->mLock:Ljava/lang/Object;

    monitor-enter p3

    .line 4650
    :try_start_5
    iget-object p4, p0, Lcom/android/server/AlarmManagerService$DeliveryTracker;->this$0:Lcom/android/server/AlarmManagerService;

    invoke-static {p4}, Lcom/android/server/AlarmManagerService;->access$3008(Lcom/android/server/AlarmManagerService;)I

    .line 4651
    invoke-direct {p0, p1, p2}, Lcom/android/server/AlarmManagerService$DeliveryTracker;->removeLocked(Landroid/app/PendingIntent;Landroid/content/Intent;)Lcom/android/server/AlarmManagerService$InFlight;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/server/AlarmManagerService$DeliveryTracker;->updateTrackingLocked(Lcom/android/server/AlarmManagerService$InFlight;)V

    .line 4652
    monitor-exit p3

    .line 4653
    return-void

    .line 4652
    :catchall_13
    move-exception p1

    monitor-exit p3
    :try_end_15
    .catchall {:try_start_5 .. :try_end_15} :catchall_13

    throw p1
.end method
