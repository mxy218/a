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
    .param p1, "this$0"  # Lcom/android/server/AlarmManagerService;

    .line 4785
    iput-object p1, p0, Lcom/android/server/AlarmManagerService$DeliveryTracker;->this$0:Lcom/android/server/AlarmManagerService;

    invoke-direct {p0}, Landroid/app/IAlarmCompleteListener$Stub;-><init>()V

    return-void
.end method

.method private removeLocked(Landroid/app/PendingIntent;Landroid/content/Intent;)Lcom/android/server/AlarmManagerService$InFlight;
    .registers 7
    .param p1, "pi"  # Landroid/app/PendingIntent;
    .param p2, "intent"  # Landroid/content/Intent;

    .line 4788
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v1, p0, Lcom/android/server/AlarmManagerService$DeliveryTracker;->this$0:Lcom/android/server/AlarmManagerService;

    iget-object v1, v1, Lcom/android/server/AlarmManagerService;->mInFlight:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_34

    .line 4789
    iget-object v1, p0, Lcom/android/server/AlarmManagerService$DeliveryTracker;->this$0:Lcom/android/server/AlarmManagerService;

    iget-object v1, v1, Lcom/android/server/AlarmManagerService;->mInFlight:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/AlarmManagerService$InFlight;

    .line 4790
    .local v1, "inflight":Lcom/android/server/AlarmManagerService$InFlight;
    iget-object v2, v1, Lcom/android/server/AlarmManagerService$InFlight;->mPendingIntent:Landroid/app/PendingIntent;

    if-ne v2, p1, :cond_31

    .line 4791
    invoke-virtual {p1}, Landroid/app/PendingIntent;->isBroadcast()Z

    move-result v2

    if-eqz v2, :cond_26

    .line 4792
    iget-object v2, p0, Lcom/android/server/AlarmManagerService$DeliveryTracker;->this$0:Lcom/android/server/AlarmManagerService;

    iget v3, v1, Lcom/android/server/AlarmManagerService$InFlight;->mUid:I

    invoke-static {v2, v3}, Lcom/android/server/AlarmManagerService;->access$3200(Lcom/android/server/AlarmManagerService;I)V

    .line 4794
    :cond_26
    iget-object v2, p0, Lcom/android/server/AlarmManagerService$DeliveryTracker;->this$0:Lcom/android/server/AlarmManagerService;

    iget-object v2, v2, Lcom/android/server/AlarmManagerService;->mInFlight:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/AlarmManagerService$InFlight;

    return-object v2

    .line 4788
    .end local v1  # "inflight":Lcom/android/server/AlarmManagerService$InFlight;
    :cond_31
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 4797
    .end local v0  # "i":I
    :cond_34
    iget-object v0, p0, Lcom/android/server/AlarmManagerService$DeliveryTracker;->this$0:Lcom/android/server/AlarmManagerService;

    iget-object v0, v0, Lcom/android/server/AlarmManagerService;->mLog:Lcom/android/internal/util/LocalLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No in-flight alarm for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/util/LocalLog;->w(Ljava/lang/String;)V

    .line 4798
    const/4 v0, 0x0

    return-object v0
.end method

.method private removeLocked(Landroid/os/IBinder;)Lcom/android/server/AlarmManagerService$InFlight;
    .registers 5
    .param p1, "listener"  # Landroid/os/IBinder;

    .line 4802
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v1, p0, Lcom/android/server/AlarmManagerService$DeliveryTracker;->this$0:Lcom/android/server/AlarmManagerService;

    iget-object v1, v1, Lcom/android/server/AlarmManagerService;->mInFlight:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_27

    .line 4803
    iget-object v1, p0, Lcom/android/server/AlarmManagerService$DeliveryTracker;->this$0:Lcom/android/server/AlarmManagerService;

    iget-object v1, v1, Lcom/android/server/AlarmManagerService;->mInFlight:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/AlarmManagerService$InFlight;

    iget-object v1, v1, Lcom/android/server/AlarmManagerService$InFlight;->mListener:Landroid/os/IBinder;

    if-ne v1, p1, :cond_24

    .line 4804
    iget-object v1, p0, Lcom/android/server/AlarmManagerService$DeliveryTracker;->this$0:Lcom/android/server/AlarmManagerService;

    iget-object v1, v1, Lcom/android/server/AlarmManagerService;->mInFlight:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/AlarmManagerService$InFlight;

    return-object v1

    .line 4802
    :cond_24
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 4807
    .end local v0  # "i":I
    :cond_27
    iget-object v0, p0, Lcom/android/server/AlarmManagerService$DeliveryTracker;->this$0:Lcom/android/server/AlarmManagerService;

    iget-object v0, v0, Lcom/android/server/AlarmManagerService;->mLog:Lcom/android/internal/util/LocalLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No in-flight alarm for listener "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/util/LocalLog;->w(Ljava/lang/String;)V

    .line 4808
    const/4 v0, 0x0

    return-object v0
.end method

.method private updateStatsLocked(Lcom/android/server/AlarmManagerService$InFlight;)V
    .registers 11
    .param p1, "inflight"  # Lcom/android/server/AlarmManagerService$InFlight;

    .line 4812
    iget-object v0, p0, Lcom/android/server/AlarmManagerService$DeliveryTracker;->this$0:Lcom/android/server/AlarmManagerService;

    invoke-static {v0}, Lcom/android/server/AlarmManagerService;->access$100(Lcom/android/server/AlarmManagerService;)Lcom/android/server/AlarmManagerService$Injector;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/AlarmManagerService$Injector;->getElapsedRealtime()J

    move-result-wide v0

    .line 4813
    .local v0, "nowELAPSED":J
    iget-object v2, p1, Lcom/android/server/AlarmManagerService$InFlight;->mBroadcastStats:Lcom/android/server/AlarmManagerService$BroadcastStats;

    .line 4814
    .local v2, "bs":Lcom/android/server/AlarmManagerService$BroadcastStats;
    iget v3, v2, Lcom/android/server/AlarmManagerService$BroadcastStats;->nesting:I

    add-int/lit8 v3, v3, -0x1

    iput v3, v2, Lcom/android/server/AlarmManagerService$BroadcastStats;->nesting:I

    .line 4815
    iget v3, v2, Lcom/android/server/AlarmManagerService$BroadcastStats;->nesting:I

    const/4 v4, 0x0

    if-gtz v3, :cond_22

    .line 4816
    iput v4, v2, Lcom/android/server/AlarmManagerService$BroadcastStats;->nesting:I

    .line 4817
    iget-wide v5, v2, Lcom/android/server/AlarmManagerService$BroadcastStats;->aggregateTime:J

    iget-wide v7, v2, Lcom/android/server/AlarmManagerService$BroadcastStats;->startTime:J

    sub-long v7, v0, v7

    add-long/2addr v5, v7

    iput-wide v5, v2, Lcom/android/server/AlarmManagerService$BroadcastStats;->aggregateTime:J

    .line 4819
    :cond_22
    iget-object v3, p1, Lcom/android/server/AlarmManagerService$InFlight;->mFilterStats:Lcom/android/server/AlarmManagerService$FilterStats;

    .line 4820
    .local v3, "fs":Lcom/android/server/AlarmManagerService$FilterStats;
    iget v5, v3, Lcom/android/server/AlarmManagerService$FilterStats;->nesting:I

    add-int/lit8 v5, v5, -0x1

    iput v5, v3, Lcom/android/server/AlarmManagerService$FilterStats;->nesting:I

    .line 4821
    iget v5, v3, Lcom/android/server/AlarmManagerService$FilterStats;->nesting:I

    if-gtz v5, :cond_39

    .line 4822
    iput v4, v3, Lcom/android/server/AlarmManagerService$FilterStats;->nesting:I

    .line 4823
    iget-wide v4, v3, Lcom/android/server/AlarmManagerService$FilterStats;->aggregateTime:J

    iget-wide v6, v3, Lcom/android/server/AlarmManagerService$FilterStats;->startTime:J

    sub-long v6, v0, v6

    add-long/2addr v4, v6

    iput-wide v4, v3, Lcom/android/server/AlarmManagerService$FilterStats;->aggregateTime:J

    .line 4826
    :cond_39
    iget-object v4, p1, Lcom/android/server/AlarmManagerService$InFlight;->mPendingIntent:Landroid/app/PendingIntent;

    iget-object v5, p1, Lcom/android/server/AlarmManagerService$InFlight;->mWorkSource:Landroid/os/WorkSource;

    iget v6, p1, Lcom/android/server/AlarmManagerService$InFlight;->mUid:I

    iget-object v7, p1, Lcom/android/server/AlarmManagerService$InFlight;->mTag:Ljava/lang/String;

    invoke-static {v4, v5, v6, v7}, Landroid/app/ActivityManager;->noteAlarmFinish(Landroid/app/PendingIntent;Landroid/os/WorkSource;ILjava/lang/String;)V

    .line 4829
    return-void
.end method

.method private updateTrackingLocked(Lcom/android/server/AlarmManagerService$InFlight;)V
    .registers 8
    .param p1, "inflight"  # Lcom/android/server/AlarmManagerService$InFlight;

    .line 4832
    if-eqz p1, :cond_5

    .line 4833
    invoke-direct {p0, p1}, Lcom/android/server/AlarmManagerService$DeliveryTracker;->updateStatsLocked(Lcom/android/server/AlarmManagerService$InFlight;)V

    .line 4835
    :cond_5
    iget-object v0, p0, Lcom/android/server/AlarmManagerService$DeliveryTracker;->this$0:Lcom/android/server/AlarmManagerService;

    iget v1, v0, Lcom/android/server/AlarmManagerService;->mBroadcastRefCount:I

    add-int/lit8 v1, v1, -0x1

    iput v1, v0, Lcom/android/server/AlarmManagerService;->mBroadcastRefCount:I

    .line 4839
    iget-object v0, p0, Lcom/android/server/AlarmManagerService$DeliveryTracker;->this$0:Lcom/android/server/AlarmManagerService;

    iget v0, v0, Lcom/android/server/AlarmManagerService;->mBroadcastRefCount:I

    const/4 v1, 0x0

    if-nez v0, :cond_98

    .line 4840
    iget-object v0, p0, Lcom/android/server/AlarmManagerService$DeliveryTracker;->this$0:Lcom/android/server/AlarmManagerService;

    iget-object v0, v0, Lcom/android/server/AlarmManagerService;->mHandler:Lcom/android/server/AlarmManagerService$AlarmHandler;

    const/4 v2, 0x4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Lcom/android/server/AlarmManagerService$AlarmHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 4841
    iget-object v0, p0, Lcom/android/server/AlarmManagerService$DeliveryTracker;->this$0:Lcom/android/server/AlarmManagerService;

    iget-object v0, v0, Lcom/android/server/AlarmManagerService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 4842
    iget-object v0, p0, Lcom/android/server/AlarmManagerService$DeliveryTracker;->this$0:Lcom/android/server/AlarmManagerService;

    iget-object v0, v0, Lcom/android/server/AlarmManagerService;->mInFlight:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_c9

    .line 4843
    iget-object v0, p0, Lcom/android/server/AlarmManagerService$DeliveryTracker;->this$0:Lcom/android/server/AlarmManagerService;

    iget-object v0, v0, Lcom/android/server/AlarmManagerService;->mLog:Lcom/android/internal/util/LocalLog;

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

    invoke-virtual {v0, v1}, Lcom/android/internal/util/LocalLog;->w(Ljava/lang/String;)V

    .line 4845
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_5b
    iget-object v1, p0, Lcom/android/server/AlarmManagerService$DeliveryTracker;->this$0:Lcom/android/server/AlarmManagerService;

    iget-object v1, v1, Lcom/android/server/AlarmManagerService;->mInFlight:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_90

    .line 4846
    iget-object v1, p0, Lcom/android/server/AlarmManagerService$DeliveryTracker;->this$0:Lcom/android/server/AlarmManagerService;

    iget-object v1, v1, Lcom/android/server/AlarmManagerService;->mLog:Lcom/android/internal/util/LocalLog;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "  Remaining #"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/AlarmManagerService$DeliveryTracker;->this$0:Lcom/android/server/AlarmManagerService;

    iget-object v3, v3, Lcom/android/server/AlarmManagerService;->mInFlight:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/internal/util/LocalLog;->w(Ljava/lang/String;)V

    .line 4845
    add-int/lit8 v0, v0, 0x1

    goto :goto_5b

    .line 4848
    .end local v0  # "i":I
    :cond_90
    iget-object v0, p0, Lcom/android/server/AlarmManagerService$DeliveryTracker;->this$0:Lcom/android/server/AlarmManagerService;

    iget-object v0, v0, Lcom/android/server/AlarmManagerService;->mInFlight:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    goto :goto_c9

    .line 4852
    :cond_98
    iget-object v0, p0, Lcom/android/server/AlarmManagerService$DeliveryTracker;->this$0:Lcom/android/server/AlarmManagerService;

    iget-object v0, v0, Lcom/android/server/AlarmManagerService;->mInFlight:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_b8

    .line 4853
    iget-object v0, p0, Lcom/android/server/AlarmManagerService$DeliveryTracker;->this$0:Lcom/android/server/AlarmManagerService;

    iget-object v0, v0, Lcom/android/server/AlarmManagerService;->mInFlight:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/AlarmManagerService$InFlight;

    .line 4854
    .local v0, "inFlight":Lcom/android/server/AlarmManagerService$InFlight;
    iget-object v2, p0, Lcom/android/server/AlarmManagerService$DeliveryTracker;->this$0:Lcom/android/server/AlarmManagerService;

    iget-object v3, v0, Lcom/android/server/AlarmManagerService$InFlight;->mWorkSource:Landroid/os/WorkSource;

    iget v4, v0, Lcom/android/server/AlarmManagerService$InFlight;->mCreatorUid:I

    iget-object v5, v0, Lcom/android/server/AlarmManagerService$InFlight;->mTag:Ljava/lang/String;

    invoke-virtual {v2, v3, v4, v5, v1}, Lcom/android/server/AlarmManagerService;->setWakelockWorkSource(Landroid/os/WorkSource;ILjava/lang/String;Z)V

    .line 4856
    .end local v0  # "inFlight":Lcom/android/server/AlarmManagerService$InFlight;
    goto :goto_c9

    .line 4858
    :cond_b8
    iget-object v0, p0, Lcom/android/server/AlarmManagerService$DeliveryTracker;->this$0:Lcom/android/server/AlarmManagerService;

    iget-object v0, v0, Lcom/android/server/AlarmManagerService;->mLog:Lcom/android/internal/util/LocalLog;

    const-string v1, "Alarm wakelock still held but sent queue empty"

    invoke-virtual {v0, v1}, Lcom/android/internal/util/LocalLog;->w(Ljava/lang/String;)V

    .line 4859
    iget-object v0, p0, Lcom/android/server/AlarmManagerService$DeliveryTracker;->this$0:Lcom/android/server/AlarmManagerService;

    iget-object v0, v0, Lcom/android/server/AlarmManagerService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/PowerManager$WakeLock;->setWorkSource(Landroid/os/WorkSource;)V

    .line 4862
    :cond_c9
    :goto_c9
    return-void
.end method


# virtual methods
.method public alarmComplete(Landroid/os/IBinder;)V
    .registers 7
    .param p1, "who"  # Landroid/os/IBinder;

    .line 4869
    if-nez p1, :cond_2b

    .line 4870
    iget-object v0, p0, Lcom/android/server/AlarmManagerService$DeliveryTracker;->this$0:Lcom/android/server/AlarmManagerService;

    iget-object v0, v0, Lcom/android/server/AlarmManagerService;->mLog:Lcom/android/internal/util/LocalLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid alarmComplete: uid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " pid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4871
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 4870
    invoke-virtual {v0, v1}, Lcom/android/internal/util/LocalLog;->w(Ljava/lang/String;)V

    .line 4872
    return-void

    .line 4875
    :cond_2b
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 4877
    .local v0, "ident":J
    :try_start_2f
    iget-object v2, p0, Lcom/android/server/AlarmManagerService$DeliveryTracker;->this$0:Lcom/android/server/AlarmManagerService;

    iget-object v2, v2, Lcom/android/server/AlarmManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_34
    .catchall {:try_start_2f .. :try_end_34} :catchall_53

    .line 4878
    :try_start_34
    iget-object v3, p0, Lcom/android/server/AlarmManagerService$DeliveryTracker;->this$0:Lcom/android/server/AlarmManagerService;

    iget-object v3, v3, Lcom/android/server/AlarmManagerService;->mHandler:Lcom/android/server/AlarmManagerService$AlarmHandler;

    const/4 v4, 0x3

    invoke-virtual {v3, v4, p1}, Lcom/android/server/AlarmManagerService$AlarmHandler;->removeMessages(ILjava/lang/Object;)V

    .line 4879
    invoke-direct {p0, p1}, Lcom/android/server/AlarmManagerService$DeliveryTracker;->removeLocked(Landroid/os/IBinder;)Lcom/android/server/AlarmManagerService$InFlight;

    move-result-object v3

    .line 4880
    .local v3, "inflight":Lcom/android/server/AlarmManagerService$InFlight;
    if-eqz v3, :cond_4a

    .line 4884
    invoke-direct {p0, v3}, Lcom/android/server/AlarmManagerService$DeliveryTracker;->updateTrackingLocked(Lcom/android/server/AlarmManagerService$InFlight;)V

    .line 4885
    iget-object v4, p0, Lcom/android/server/AlarmManagerService$DeliveryTracker;->this$0:Lcom/android/server/AlarmManagerService;

    invoke-static {v4}, Lcom/android/server/AlarmManagerService;->access$3308(Lcom/android/server/AlarmManagerService;)I

    .line 4893
    .end local v3  # "inflight":Lcom/android/server/AlarmManagerService$InFlight;
    :cond_4a
    monitor-exit v2
    :try_end_4b
    .catchall {:try_start_34 .. :try_end_4b} :catchall_50

    .line 4895
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4896
    nop

    .line 4897
    return-void

    .line 4893
    :catchall_50
    move-exception v3

    :try_start_51
    monitor-exit v2
    :try_end_52
    .catchall {:try_start_51 .. :try_end_52} :catchall_50

    .end local v0  # "ident":J
    .end local p0  # "this":Lcom/android/server/AlarmManagerService$DeliveryTracker;
    .end local p1  # "who":Landroid/os/IBinder;
    :try_start_52
    throw v3
    :try_end_53
    .catchall {:try_start_52 .. :try_end_53} :catchall_53

    .line 4895
    .restart local v0  # "ident":J
    .restart local p0  # "this":Lcom/android/server/AlarmManagerService$DeliveryTracker;
    .restart local p1  # "who":Landroid/os/IBinder;
    :catchall_53
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method public alarmTimedOut(Landroid/os/IBinder;)V
    .registers 7
    .param p1, "who"  # Landroid/os/IBinder;

    .line 4915
    iget-object v0, p0, Lcom/android/server/AlarmManagerService$DeliveryTracker;->this$0:Lcom/android/server/AlarmManagerService;

    iget-object v0, v0, Lcom/android/server/AlarmManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 4916
    :try_start_5
    invoke-direct {p0, p1}, Lcom/android/server/AlarmManagerService$DeliveryTracker;->removeLocked(Landroid/os/IBinder;)Lcom/android/server/AlarmManagerService$InFlight;

    move-result-object v1

    .line 4917
    .local v1, "inflight":Lcom/android/server/AlarmManagerService$InFlight;
    if-eqz v1, :cond_14

    .line 4922
    invoke-direct {p0, v1}, Lcom/android/server/AlarmManagerService$DeliveryTracker;->updateTrackingLocked(Lcom/android/server/AlarmManagerService$InFlight;)V

    .line 4923
    iget-object v2, p0, Lcom/android/server/AlarmManagerService$DeliveryTracker;->this$0:Lcom/android/server/AlarmManagerService;

    invoke-static {v2}, Lcom/android/server/AlarmManagerService;->access$3308(Lcom/android/server/AlarmManagerService;)I

    goto :goto_2c

    .line 4928
    :cond_14
    iget-object v2, p0, Lcom/android/server/AlarmManagerService$DeliveryTracker;->this$0:Lcom/android/server/AlarmManagerService;

    iget-object v2, v2, Lcom/android/server/AlarmManagerService;->mLog:Lcom/android/internal/util/LocalLog;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Spurious timeout of listener "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/internal/util/LocalLog;->w(Ljava/lang/String;)V

    .line 4930
    .end local v1  # "inflight":Lcom/android/server/AlarmManagerService$InFlight;
    :goto_2c
    monitor-exit v0

    .line 4931
    return-void

    .line 4930
    :catchall_2e
    move-exception v1

    monitor-exit v0
    :try_end_30
    .catchall {:try_start_5 .. :try_end_30} :catchall_2e

    throw v1
.end method

.method public deliverLocked(Lcom/android/server/AlarmManagerService$Alarm;JZ)V
    .registers 24
    .param p1, "alarm"  # Lcom/android/server/AlarmManagerService$Alarm;
    .param p2, "nowELAPSED"  # J
    .param p4, "allowWhileIdle"  # Z
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 4938
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-wide/from16 v3, p2

    .line 4939
    invoke-static/range {p1 .. p1}, Lcom/android/server/AlarmManagerService;->access$3500(Lcom/android/server/AlarmManagerService$Alarm;)I

    move-result v0

    .line 4938
    invoke-static {v0}, Landroid/os/ThreadLocalWorkSource;->setUid(I)J

    move-result-wide v5

    .line 4941
    .local v5, "workSourceToken":J
    :try_start_e
    iget-object v0, v2, Lcom/android/server/AlarmManagerService$Alarm;->operation:Landroid/app/PendingIntent;

    if-eqz v0, :cond_78

    .line 4943
    iget-object v0, v1, Lcom/android/server/AlarmManagerService$DeliveryTracker;->this$0:Lcom/android/server/AlarmManagerService;

    invoke-static {v0}, Lcom/android/server/AlarmManagerService;->access$3608(Lcom/android/server/AlarmManagerService;)I
    :try_end_17
    .catchall {:try_start_e .. :try_end_17} :catchall_1cd

    .line 4946
    const/4 v8, 0x0

    const-wide/16 v9, 0x0

    :try_start_1a
    iget-object v11, v2, Lcom/android/server/AlarmManagerService$Alarm;->operation:Landroid/app/PendingIntent;

    iget-object v0, v1, Lcom/android/server/AlarmManagerService$DeliveryTracker;->this$0:Lcom/android/server/AlarmManagerService;

    invoke-virtual {v0}, Lcom/android/server/AlarmManagerService;->getContext()Landroid/content/Context;

    move-result-object v12

    const/4 v13, 0x0

    iget-object v0, v1, Lcom/android/server/AlarmManagerService$DeliveryTracker;->this$0:Lcom/android/server/AlarmManagerService;

    .line 4947
    invoke-static {v0}, Lcom/android/server/AlarmManagerService;->access$3700(Lcom/android/server/AlarmManagerService;)Landroid/content/Intent;

    move-result-object v0

    const-string v14, "android.intent.extra.ALARM_COUNT"

    iget v15, v2, Lcom/android/server/AlarmManagerService$Alarm;->count:I

    invoke-virtual {v0, v14, v15}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v14

    iget-object v0, v1, Lcom/android/server/AlarmManagerService$DeliveryTracker;->this$0:Lcom/android/server/AlarmManagerService;

    iget-object v15, v0, Lcom/android/server/AlarmManagerService;->mDeliveryTracker:Lcom/android/server/AlarmManagerService$DeliveryTracker;

    iget-object v0, v1, Lcom/android/server/AlarmManagerService$DeliveryTracker;->this$0:Lcom/android/server/AlarmManagerService;

    iget-object v0, v0, Lcom/android/server/AlarmManagerService;->mHandler:Lcom/android/server/AlarmManagerService$AlarmHandler;

    const/16 v17, 0x0

    .line 4950
    if-eqz p4, :cond_44

    iget-object v7, v1, Lcom/android/server/AlarmManagerService$DeliveryTracker;->this$0:Lcom/android/server/AlarmManagerService;

    iget-object v7, v7, Lcom/android/server/AlarmManagerService;->mIdleOptions:Landroid/os/Bundle;

    move-object/from16 v18, v7

    goto :goto_46

    :cond_44
    move-object/from16 v18, v8

    .line 4946
    :goto_46
    move-object/from16 v16, v0

    invoke-virtual/range {v11 .. v18}, Landroid/app/PendingIntent;->send(Landroid/content/Context;ILandroid/content/Intent;Landroid/app/PendingIntent$OnFinished;Landroid/os/Handler;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 4951
    iget-wide v11, v2, Lcom/android/server/AlarmManagerService$Alarm;->repeatInterval:J

    cmp-long v0, v11, v9

    if-nez v0, :cond_60

    .line 4953
    iget-object v0, v1, Lcom/android/server/AlarmManagerService$DeliveryTracker;->this$0:Lcom/android/server/AlarmManagerService;

    iget-object v0, v0, Lcom/android/server/AlarmManagerService;->mHandler:Lcom/android/server/AlarmManagerService$AlarmHandler;

    const/16 v7, 0x8

    iget-object v11, v2, Lcom/android/server/AlarmManagerService$Alarm;->operation:Landroid/app/PendingIntent;

    invoke-virtual {v0, v7, v11}, Lcom/android/server/AlarmManagerService$AlarmHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 4954
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V
    :try_end_60
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_1a .. :try_end_60} :catch_61
    .catchall {:try_start_1a .. :try_end_60} :catchall_1cd

    .line 4968
    :cond_60
    goto :goto_c5

    .line 4956
    :catch_61
    move-exception v0

    .line 4957
    .local v0, "e":Landroid/app/PendingIntent$CanceledException;
    :try_start_62
    iget-wide v11, v2, Lcom/android/server/AlarmManagerService$Alarm;->repeatInterval:J

    cmp-long v7, v11, v9

    if-lez v7, :cond_6f

    .line 4960
    iget-object v7, v1, Lcom/android/server/AlarmManagerService$DeliveryTracker;->this$0:Lcom/android/server/AlarmManagerService;

    iget-object v9, v2, Lcom/android/server/AlarmManagerService$Alarm;->operation:Landroid/app/PendingIntent;

    invoke-virtual {v7, v9, v8}, Lcom/android/server/AlarmManagerService;->removeImpl(Landroid/app/PendingIntent;Landroid/app/IAlarmListener;)V

    .line 4966
    :cond_6f
    iget-object v7, v1, Lcom/android/server/AlarmManagerService$DeliveryTracker;->this$0:Lcom/android/server/AlarmManagerService;

    invoke-static {v7}, Lcom/android/server/AlarmManagerService;->access$3408(Lcom/android/server/AlarmManagerService;)I
    :try_end_74
    .catchall {:try_start_62 .. :try_end_74} :catchall_1cd

    .line 5006
    invoke-static {v5, v6}, Landroid/os/ThreadLocalWorkSource;->restore(J)V

    .line 4967
    return-void

    .line 4971
    .end local v0  # "e":Landroid/app/PendingIntent$CanceledException;
    :cond_78
    :try_start_78
    iget-object v0, v1, Lcom/android/server/AlarmManagerService$DeliveryTracker;->this$0:Lcom/android/server/AlarmManagerService;

    invoke-static {v0}, Lcom/android/server/AlarmManagerService;->access$3808(Lcom/android/server/AlarmManagerService;)I

    .line 4974
    iget-object v0, v2, Lcom/android/server/AlarmManagerService$Alarm;->listener:Landroid/app/IAlarmListener;

    iget-object v7, v1, Lcom/android/server/AlarmManagerService$DeliveryTracker;->this$0:Lcom/android/server/AlarmManagerService;

    iget-object v7, v7, Lcom/android/server/AlarmManagerService;->mTimeTickTrigger:Landroid/app/IAlarmListener;

    if-ne v0, v7, :cond_a3

    .line 4975
    iget-object v0, v1, Lcom/android/server/AlarmManagerService$DeliveryTracker;->this$0:Lcom/android/server/AlarmManagerService;

    invoke-static {v0}, Lcom/android/server/AlarmManagerService;->access$3900(Lcom/android/server/AlarmManagerService;)[J

    move-result-object v0

    iget-object v7, v1, Lcom/android/server/AlarmManagerService$DeliveryTracker;->this$0:Lcom/android/server/AlarmManagerService;

    invoke-static {v7}, Lcom/android/server/AlarmManagerService;->access$4008(Lcom/android/server/AlarmManagerService;)I

    move-result v7

    aput-wide v3, v0, v7

    .line 4976
    iget-object v0, v1, Lcom/android/server/AlarmManagerService$DeliveryTracker;->this$0:Lcom/android/server/AlarmManagerService;

    invoke-static {v0}, Lcom/android/server/AlarmManagerService;->access$4000(Lcom/android/server/AlarmManagerService;)I

    move-result v0

    const/16 v7, 0xa

    if-lt v0, v7, :cond_a3

    .line 4977
    iget-object v0, v1, Lcom/android/server/AlarmManagerService$DeliveryTracker;->this$0:Lcom/android/server/AlarmManagerService;

    const/4 v7, 0x0

    invoke-static {v0, v7}, Lcom/android/server/AlarmManagerService;->access$4002(Lcom/android/server/AlarmManagerService;I)I
    :try_end_a3
    .catchall {:try_start_78 .. :try_end_a3} :catchall_1cd

    .line 4987
    :cond_a3
    :try_start_a3
    iget-object v0, v2, Lcom/android/server/AlarmManagerService$Alarm;->listener:Landroid/app/IAlarmListener;

    invoke-interface {v0, v1}, Landroid/app/IAlarmListener;->doAlarm(Landroid/app/IAlarmCompleteListener;)V

    .line 4988
    iget-object v0, v1, Lcom/android/server/AlarmManagerService$DeliveryTracker;->this$0:Lcom/android/server/AlarmManagerService;

    iget-object v0, v0, Lcom/android/server/AlarmManagerService;->mHandler:Lcom/android/server/AlarmManagerService$AlarmHandler;

    iget-object v7, v1, Lcom/android/server/AlarmManagerService$DeliveryTracker;->this$0:Lcom/android/server/AlarmManagerService;

    iget-object v7, v7, Lcom/android/server/AlarmManagerService;->mHandler:Lcom/android/server/AlarmManagerService$AlarmHandler;

    const/4 v8, 0x3

    iget-object v9, v2, Lcom/android/server/AlarmManagerService$Alarm;->listener:Landroid/app/IAlarmListener;

    .line 4990
    invoke-interface {v9}, Landroid/app/IAlarmListener;->asBinder()Landroid/os/IBinder;

    move-result-object v9

    .line 4989
    invoke-virtual {v7, v8, v9}, Lcom/android/server/AlarmManagerService$AlarmHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v7

    iget-object v8, v1, Lcom/android/server/AlarmManagerService$DeliveryTracker;->this$0:Lcom/android/server/AlarmManagerService;

    iget-object v8, v8, Lcom/android/server/AlarmManagerService;->mConstants:Lcom/android/server/AlarmManagerService$Constants;

    iget-wide v8, v8, Lcom/android/server/AlarmManagerService$Constants;->LISTENER_TIMEOUT:J

    .line 4988
    invoke-virtual {v0, v7, v8, v9}, Lcom/android/server/AlarmManagerService$AlarmHandler;->sendMessageDelayed(Landroid/os/Message;J)Z
    :try_end_c4
    .catch Ljava/lang/Exception; {:try_start_a3 .. :try_end_c4} :catch_1c3
    .catchall {:try_start_a3 .. :try_end_c4} :catchall_1cd

    .line 5003
    nop

    .line 5006
    :goto_c5
    invoke-static {v5, v6}, Landroid/os/ThreadLocalWorkSource;->restore(J)V

    .line 5007
    nop

    .line 5013
    iget-object v0, v1, Lcom/android/server/AlarmManagerService$DeliveryTracker;->this$0:Lcom/android/server/AlarmManagerService;

    iget v0, v0, Lcom/android/server/AlarmManagerService;->mBroadcastRefCount:I

    const/4 v7, 0x1

    if-nez v0, :cond_f4

    .line 5014
    iget-object v0, v1, Lcom/android/server/AlarmManagerService$DeliveryTracker;->this$0:Lcom/android/server/AlarmManagerService;

    iget-object v8, v2, Lcom/android/server/AlarmManagerService$Alarm;->workSource:Landroid/os/WorkSource;

    iget v9, v2, Lcom/android/server/AlarmManagerService$Alarm;->creatorUid:I

    iget-object v10, v2, Lcom/android/server/AlarmManagerService$Alarm;->statsTag:Ljava/lang/String;

    invoke-virtual {v0, v8, v9, v10, v7}, Lcom/android/server/AlarmManagerService;->setWakelockWorkSource(Landroid/os/WorkSource;ILjava/lang/String;Z)V

    .line 5016
    iget-object v0, v1, Lcom/android/server/AlarmManagerService$DeliveryTracker;->this$0:Lcom/android/server/AlarmManagerService;

    iget-object v0, v0, Lcom/android/server/AlarmManagerService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    const-wide/16 v8, 0x3e8

    invoke-virtual {v0, v8, v9}, Landroid/os/PowerManager$WakeLock;->acquire(J)V

    .line 5018
    iget-object v0, v1, Lcom/android/server/AlarmManagerService$DeliveryTracker;->this$0:Lcom/android/server/AlarmManagerService;

    iget-object v0, v0, Lcom/android/server/AlarmManagerService;->mHandler:Lcom/android/server/AlarmManagerService$AlarmHandler;

    const/4 v8, 0x4

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v0, v8, v9}, Lcom/android/server/AlarmManagerService$AlarmHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 5020
    :cond_f4
    new-instance v0, Lcom/android/server/AlarmManagerService$InFlight;

    iget-object v8, v1, Lcom/android/server/AlarmManagerService$DeliveryTracker;->this$0:Lcom/android/server/AlarmManagerService;

    invoke-direct {v0, v8, v2, v3, v4}, Lcom/android/server/AlarmManagerService$InFlight;-><init>(Lcom/android/server/AlarmManagerService;Lcom/android/server/AlarmManagerService$Alarm;J)V

    .line 5021
    .local v0, "inflight":Lcom/android/server/AlarmManagerService$InFlight;
    iget-object v8, v1, Lcom/android/server/AlarmManagerService$DeliveryTracker;->this$0:Lcom/android/server/AlarmManagerService;

    iget-object v8, v8, Lcom/android/server/AlarmManagerService;->mInFlight:Ljava/util/ArrayList;

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5022
    iget-object v8, v1, Lcom/android/server/AlarmManagerService$DeliveryTracker;->this$0:Lcom/android/server/AlarmManagerService;

    iget v9, v8, Lcom/android/server/AlarmManagerService;->mBroadcastRefCount:I

    add-int/2addr v9, v7

    iput v9, v8, Lcom/android/server/AlarmManagerService;->mBroadcastRefCount:I

    .line 5023
    invoke-virtual {v0}, Lcom/android/server/AlarmManagerService$InFlight;->isBroadcast()Z

    move-result v8

    if-eqz v8, :cond_116

    .line 5024
    iget-object v8, v1, Lcom/android/server/AlarmManagerService$DeliveryTracker;->this$0:Lcom/android/server/AlarmManagerService;

    iget v9, v2, Lcom/android/server/AlarmManagerService$Alarm;->uid:I

    invoke-static {v8, v9}, Lcom/android/server/AlarmManagerService;->access$4100(Lcom/android/server/AlarmManagerService;I)V

    .line 5026
    :cond_116
    if-eqz p4, :cond_14c

    .line 5028
    iget-object v8, v1, Lcom/android/server/AlarmManagerService$DeliveryTracker;->this$0:Lcom/android/server/AlarmManagerService;

    iget-object v8, v8, Lcom/android/server/AlarmManagerService;->mLastAllowWhileIdleDispatch:Landroid/util/SparseLongArray;

    iget v9, v2, Lcom/android/server/AlarmManagerService$Alarm;->creatorUid:I

    invoke-virtual {v8, v9, v3, v4}, Landroid/util/SparseLongArray;->put(IJ)V

    .line 5029
    iget-object v8, v1, Lcom/android/server/AlarmManagerService$DeliveryTracker;->this$0:Lcom/android/server/AlarmManagerService;

    invoke-static {v8}, Lcom/android/server/AlarmManagerService;->access$1200(Lcom/android/server/AlarmManagerService;)Lcom/android/server/AppStateTracker;

    move-result-object v8

    if-eqz v8, :cond_143

    iget-object v8, v1, Lcom/android/server/AlarmManagerService$DeliveryTracker;->this$0:Lcom/android/server/AlarmManagerService;

    .line 5030
    invoke-static {v8}, Lcom/android/server/AlarmManagerService;->access$1200(Lcom/android/server/AlarmManagerService;)Lcom/android/server/AppStateTracker;

    move-result-object v8

    iget v9, v2, Lcom/android/server/AlarmManagerService$Alarm;->creatorUid:I

    invoke-virtual {v8, v9}, Lcom/android/server/AppStateTracker;->isUidInForeground(I)Z

    move-result v8

    if-eqz v8, :cond_138

    goto :goto_143

    .line 5033
    :cond_138
    iget-object v8, v1, Lcom/android/server/AlarmManagerService$DeliveryTracker;->this$0:Lcom/android/server/AlarmManagerService;

    iget-object v8, v8, Lcom/android/server/AlarmManagerService;->mUseAllowWhileIdleShortTime:Landroid/util/SparseBooleanArray;

    iget v9, v2, Lcom/android/server/AlarmManagerService$Alarm;->creatorUid:I

    const/4 v10, 0x0

    invoke-virtual {v8, v9, v10}, Landroid/util/SparseBooleanArray;->put(IZ)V

    goto :goto_14c

    .line 5031
    :cond_143
    :goto_143
    iget-object v8, v1, Lcom/android/server/AlarmManagerService$DeliveryTracker;->this$0:Lcom/android/server/AlarmManagerService;

    iget-object v8, v8, Lcom/android/server/AlarmManagerService;->mUseAllowWhileIdleShortTime:Landroid/util/SparseBooleanArray;

    iget v9, v2, Lcom/android/server/AlarmManagerService$Alarm;->creatorUid:I

    invoke-virtual {v8, v9, v7}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 5045
    :cond_14c
    :goto_14c
    iget-object v8, v1, Lcom/android/server/AlarmManagerService$DeliveryTracker;->this$0:Lcom/android/server/AlarmManagerService;

    invoke-static {v8, v2}, Lcom/android/server/AlarmManagerService;->access$2800(Lcom/android/server/AlarmManagerService;Lcom/android/server/AlarmManagerService$Alarm;)Z

    move-result v8

    if-nez v8, :cond_173

    .line 5046
    iget-object v8, v2, Lcom/android/server/AlarmManagerService$Alarm;->sourcePackage:Ljava/lang/String;

    iget v9, v2, Lcom/android/server/AlarmManagerService$Alarm;->creatorUid:I

    .line 5047
    invoke-static {v9}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    .line 5046
    invoke-static {v8, v9}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v8

    .line 5048
    .local v8, "packageUser":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/lang/Integer;>;"
    iget-object v9, v1, Lcom/android/server/AlarmManagerService$DeliveryTracker;->this$0:Lcom/android/server/AlarmManagerService;

    iget-object v9, v9, Lcom/android/server/AlarmManagerService;->mAppWakeupHistory:Lcom/android/server/AlarmManagerService$AppWakeupHistory;

    iget-object v10, v2, Lcom/android/server/AlarmManagerService$Alarm;->sourcePackage:Ljava/lang/String;

    iget v11, v2, Lcom/android/server/AlarmManagerService$Alarm;->creatorUid:I

    .line 5049
    invoke-static {v11}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v11

    .line 5048
    invoke-virtual {v9, v10, v11, v3, v4}, Lcom/android/server/AlarmManagerService$AppWakeupHistory;->recordAlarmForPackage(Ljava/lang/String;IJ)V

    .line 5051
    .end local v8  # "packageUser":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/lang/Integer;>;"
    :cond_173
    iget-object v8, v0, Lcom/android/server/AlarmManagerService$InFlight;->mBroadcastStats:Lcom/android/server/AlarmManagerService$BroadcastStats;

    .line 5052
    .local v8, "bs":Lcom/android/server/AlarmManagerService$BroadcastStats;
    iget v9, v8, Lcom/android/server/AlarmManagerService$BroadcastStats;->count:I

    add-int/2addr v9, v7

    iput v9, v8, Lcom/android/server/AlarmManagerService$BroadcastStats;->count:I

    .line 5053
    iget v9, v8, Lcom/android/server/AlarmManagerService$BroadcastStats;->nesting:I

    if-nez v9, :cond_183

    .line 5054
    iput v7, v8, Lcom/android/server/AlarmManagerService$BroadcastStats;->nesting:I

    .line 5055
    iput-wide v3, v8, Lcom/android/server/AlarmManagerService$BroadcastStats;->startTime:J

    goto :goto_188

    .line 5057
    :cond_183
    iget v9, v8, Lcom/android/server/AlarmManagerService$BroadcastStats;->nesting:I

    add-int/2addr v9, v7

    iput v9, v8, Lcom/android/server/AlarmManagerService$BroadcastStats;->nesting:I

    .line 5059
    :goto_188
    iget-object v9, v0, Lcom/android/server/AlarmManagerService$InFlight;->mFilterStats:Lcom/android/server/AlarmManagerService$FilterStats;

    .line 5060
    .local v9, "fs":Lcom/android/server/AlarmManagerService$FilterStats;
    iget v10, v9, Lcom/android/server/AlarmManagerService$FilterStats;->count:I

    add-int/2addr v10, v7

    iput v10, v9, Lcom/android/server/AlarmManagerService$FilterStats;->count:I

    .line 5061
    iget v10, v9, Lcom/android/server/AlarmManagerService$FilterStats;->nesting:I

    if-nez v10, :cond_198

    .line 5062
    iput v7, v9, Lcom/android/server/AlarmManagerService$FilterStats;->nesting:I

    .line 5063
    iput-wide v3, v9, Lcom/android/server/AlarmManagerService$FilterStats;->startTime:J

    goto :goto_19d

    .line 5065
    :cond_198
    iget v10, v9, Lcom/android/server/AlarmManagerService$FilterStats;->nesting:I

    add-int/2addr v10, v7

    iput v10, v9, Lcom/android/server/AlarmManagerService$FilterStats;->nesting:I

    .line 5067
    :goto_19d
    iget v10, v2, Lcom/android/server/AlarmManagerService$Alarm;->type:I

    const/4 v11, 0x2

    if-eq v10, v11, :cond_1ab

    iget v10, v2, Lcom/android/server/AlarmManagerService$Alarm;->type:I

    if-eqz v10, :cond_1ab

    iget v10, v2, Lcom/android/server/AlarmManagerService$Alarm;->type:I

    const/4 v11, 0x5

    if-ne v10, v11, :cond_1c2

    .line 5069
    :cond_1ab
    iget v10, v8, Lcom/android/server/AlarmManagerService$BroadcastStats;->numWakeup:I

    add-int/2addr v10, v7

    iput v10, v8, Lcom/android/server/AlarmManagerService$BroadcastStats;->numWakeup:I

    .line 5070
    iget v10, v9, Lcom/android/server/AlarmManagerService$FilterStats;->numWakeup:I

    add-int/2addr v10, v7

    iput v10, v9, Lcom/android/server/AlarmManagerService$FilterStats;->numWakeup:I

    .line 5071
    iget-object v7, v2, Lcom/android/server/AlarmManagerService$Alarm;->operation:Landroid/app/PendingIntent;

    iget-object v10, v2, Lcom/android/server/AlarmManagerService$Alarm;->workSource:Landroid/os/WorkSource;

    iget v11, v2, Lcom/android/server/AlarmManagerService$Alarm;->uid:I

    iget-object v12, v2, Lcom/android/server/AlarmManagerService$Alarm;->packageName:Ljava/lang/String;

    iget-object v13, v2, Lcom/android/server/AlarmManagerService$Alarm;->statsTag:Ljava/lang/String;

    invoke-static {v7, v10, v11, v12, v13}, Landroid/app/ActivityManager;->noteWakeupAlarm(Landroid/app/PendingIntent;Landroid/os/WorkSource;ILjava/lang/String;Ljava/lang/String;)V

    .line 5075
    :cond_1c2
    return-void

    .line 4992
    .end local v0  # "inflight":Lcom/android/server/AlarmManagerService$InFlight;
    .end local v8  # "bs":Lcom/android/server/AlarmManagerService$BroadcastStats;
    .end local v9  # "fs":Lcom/android/server/AlarmManagerService$FilterStats;
    :catch_1c3
    move-exception v0

    .line 5001
    .local v0, "e":Ljava/lang/Exception;
    :try_start_1c4
    iget-object v7, v1, Lcom/android/server/AlarmManagerService$DeliveryTracker;->this$0:Lcom/android/server/AlarmManagerService;

    invoke-static {v7}, Lcom/android/server/AlarmManagerService;->access$3308(Lcom/android/server/AlarmManagerService;)I
    :try_end_1c9
    .catchall {:try_start_1c4 .. :try_end_1c9} :catchall_1cd

    .line 5006
    invoke-static {v5, v6}, Landroid/os/ThreadLocalWorkSource;->restore(J)V

    .line 5002
    return-void

    .line 5006
    .end local v0  # "e":Ljava/lang/Exception;
    :catchall_1cd
    move-exception v0

    invoke-static {v5, v6}, Landroid/os/ThreadLocalWorkSource;->restore(J)V

    throw v0
.end method

.method public onSendFinished(Landroid/app/PendingIntent;Landroid/content/Intent;ILjava/lang/String;Landroid/os/Bundle;)V
    .registers 8
    .param p1, "pi"  # Landroid/app/PendingIntent;
    .param p2, "intent"  # Landroid/content/Intent;
    .param p3, "resultCode"  # I
    .param p4, "resultData"  # Ljava/lang/String;
    .param p5, "resultExtras"  # Landroid/os/Bundle;

    .line 4905
    iget-object v0, p0, Lcom/android/server/AlarmManagerService$DeliveryTracker;->this$0:Lcom/android/server/AlarmManagerService;

    iget-object v0, v0, Lcom/android/server/AlarmManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 4906
    :try_start_5
    iget-object v1, p0, Lcom/android/server/AlarmManagerService$DeliveryTracker;->this$0:Lcom/android/server/AlarmManagerService;

    invoke-static {v1}, Lcom/android/server/AlarmManagerService;->access$3408(Lcom/android/server/AlarmManagerService;)I

    .line 4907
    invoke-direct {p0, p1, p2}, Lcom/android/server/AlarmManagerService$DeliveryTracker;->removeLocked(Landroid/app/PendingIntent;Landroid/content/Intent;)Lcom/android/server/AlarmManagerService$InFlight;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/server/AlarmManagerService$DeliveryTracker;->updateTrackingLocked(Lcom/android/server/AlarmManagerService$InFlight;)V

    .line 4908
    monitor-exit v0

    .line 4909
    return-void

    .line 4908
    :catchall_13
    move-exception v1

    monitor-exit v0
    :try_end_15
    .catchall {:try_start_5 .. :try_end_15} :catchall_13

    throw v1
.end method
