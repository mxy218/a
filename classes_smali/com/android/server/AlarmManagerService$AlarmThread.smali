.class Lcom/android/server/AlarmManagerService$AlarmThread;
.super Ljava/lang/Thread;
.source "AlarmManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/AlarmManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AlarmThread"
.end annotation


# instance fields
.field private mFalseWakeups:I

.field private mWtfThreshold:I

.field final synthetic this$0:Lcom/android/server/AlarmManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/AlarmManagerService;)V
    .registers 2

    .line 3950
    iput-object p1, p0, Lcom/android/server/AlarmManagerService$AlarmThread;->this$0:Lcom/android/server/AlarmManagerService;

    .line 3951
    const-string p1, "AlarmManager"

    invoke-direct {p0, p1}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    .line 3952
    const/4 p1, 0x0

    iput p1, p0, Lcom/android/server/AlarmManagerService$AlarmThread;->mFalseWakeups:I

    .line 3953
    const/16 p1, 0x64

    iput p1, p0, Lcom/android/server/AlarmManagerService$AlarmThread;->mWtfThreshold:I

    .line 3954
    return-void
.end method


# virtual methods
.method public run()V
    .registers 15

    .line 3958
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 3962
    :goto_5
    iget-object v1, p0, Lcom/android/server/AlarmManagerService$AlarmThread;->this$0:Lcom/android/server/AlarmManagerService;

    invoke-static {v1}, Lcom/android/server/AlarmManagerService;->access$100(Lcom/android/server/AlarmManagerService;)Lcom/android/server/AlarmManagerService$Injector;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/AlarmManagerService$Injector;->waitForAlarm()I

    move-result v1

    .line 3963
    iget-object v2, p0, Lcom/android/server/AlarmManagerService$AlarmThread;->this$0:Lcom/android/server/AlarmManagerService;

    invoke-static {v2}, Lcom/android/server/AlarmManagerService;->access$100(Lcom/android/server/AlarmManagerService;)Lcom/android/server/AlarmManagerService$Injector;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/AlarmManagerService$Injector;->getCurrentTimeMillis()J

    move-result-wide v2

    .line 3964
    iget-object v4, p0, Lcom/android/server/AlarmManagerService$AlarmThread;->this$0:Lcom/android/server/AlarmManagerService;

    invoke-static {v4}, Lcom/android/server/AlarmManagerService;->access$100(Lcom/android/server/AlarmManagerService;)Lcom/android/server/AlarmManagerService$Injector;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/server/AlarmManagerService$Injector;->getElapsedRealtime()J

    move-result-wide v4

    .line 3965
    iget-object v6, p0, Lcom/android/server/AlarmManagerService$AlarmThread;->this$0:Lcom/android/server/AlarmManagerService;

    iget-object v6, v6, Lcom/android/server/AlarmManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v6

    .line 3966
    :try_start_28
    iget-object v7, p0, Lcom/android/server/AlarmManagerService$AlarmThread;->this$0:Lcom/android/server/AlarmManagerService;

    invoke-static {v7, v4, v5}, Lcom/android/server/AlarmManagerService;->access$2102(Lcom/android/server/AlarmManagerService;J)J

    .line 3967
    monitor-exit v6
    :try_end_2e
    .catchall {:try_start_28 .. :try_end_2e} :catchall_215

    .line 3968
    if-nez v1, :cond_4f

    .line 3969
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "waitForAlarm returned 0, nowRTC = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v7, ", nowElapsed = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v7, "AlarmManager"

    invoke-static {v7, v6}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 3972
    :cond_4f
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 3974
    const/high16 v6, 0x10000

    and-int v7, v1, v6

    if-eqz v7, :cond_d9

    .line 3979
    iget-object v7, p0, Lcom/android/server/AlarmManagerService$AlarmThread;->this$0:Lcom/android/server/AlarmManagerService;

    iget-object v7, v7, Lcom/android/server/AlarmManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v7

    .line 3980
    :try_start_5d
    iget-object v8, p0, Lcom/android/server/AlarmManagerService$AlarmThread;->this$0:Lcom/android/server/AlarmManagerService;

    iget-wide v8, v8, Lcom/android/server/AlarmManagerService;->mLastTimeChangeClockTime:J

    .line 3981
    iget-object v10, p0, Lcom/android/server/AlarmManagerService$AlarmThread;->this$0:Lcom/android/server/AlarmManagerService;

    iget-wide v10, v10, Lcom/android/server/AlarmManagerService;->mLastTimeChangeRealtime:J

    sub-long v10, v4, v10

    add-long/2addr v10, v8

    .line 3983
    monitor-exit v7
    :try_end_69
    .catchall {:try_start_5d .. :try_end_69} :catchall_d6

    .line 3984
    const-wide/16 v12, 0x0

    cmp-long v7, v8, v12

    if-eqz v7, :cond_7c

    const-wide/16 v7, 0x3e8

    sub-long v12, v10, v7

    cmp-long v9, v2, v12

    if-ltz v9, :cond_7c

    add-long/2addr v10, v7

    cmp-long v7, v2, v10

    if-lez v7, :cond_d9

    .line 3992
    :cond_7c
    const/16 v7, 0x2d

    invoke-static {v7, v2, v3}, Landroid/util/StatsLog;->write(IJ)I

    .line 3993
    iget-object v7, p0, Lcom/android/server/AlarmManagerService$AlarmThread;->this$0:Lcom/android/server/AlarmManagerService;

    iget-object v8, v7, Lcom/android/server/AlarmManagerService;->mTimeTickTrigger:Landroid/app/IAlarmListener;

    const/4 v9, 0x0

    invoke-virtual {v7, v9, v8}, Lcom/android/server/AlarmManagerService;->removeImpl(Landroid/app/PendingIntent;Landroid/app/IAlarmListener;)V

    .line 3994
    iget-object v7, p0, Lcom/android/server/AlarmManagerService$AlarmThread;->this$0:Lcom/android/server/AlarmManagerService;

    iget-object v8, v7, Lcom/android/server/AlarmManagerService;->mDateChangeSender:Landroid/app/PendingIntent;

    invoke-virtual {v7, v8, v9}, Lcom/android/server/AlarmManagerService;->removeImpl(Landroid/app/PendingIntent;Landroid/app/IAlarmListener;)V

    .line 3995
    iget-object v7, p0, Lcom/android/server/AlarmManagerService$AlarmThread;->this$0:Lcom/android/server/AlarmManagerService;

    invoke-virtual {v7}, Lcom/android/server/AlarmManagerService;->rebatchAllAlarms()V

    .line 3996
    iget-object v7, p0, Lcom/android/server/AlarmManagerService$AlarmThread;->this$0:Lcom/android/server/AlarmManagerService;

    iget-object v7, v7, Lcom/android/server/AlarmManagerService;->mClockReceiver:Lcom/android/server/AlarmManagerService$ClockReceiver;

    invoke-virtual {v7}, Lcom/android/server/AlarmManagerService$ClockReceiver;->scheduleTimeTickEvent()V

    .line 3997
    iget-object v7, p0, Lcom/android/server/AlarmManagerService$AlarmThread;->this$0:Lcom/android/server/AlarmManagerService;

    iget-object v7, v7, Lcom/android/server/AlarmManagerService;->mClockReceiver:Lcom/android/server/AlarmManagerService$ClockReceiver;

    invoke-virtual {v7}, Lcom/android/server/AlarmManagerService$ClockReceiver;->scheduleDateChangedEvent()V

    .line 3998
    iget-object v7, p0, Lcom/android/server/AlarmManagerService$AlarmThread;->this$0:Lcom/android/server/AlarmManagerService;

    iget-object v8, v7, Lcom/android/server/AlarmManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v8

    .line 3999
    :try_start_a8
    iget-object v7, p0, Lcom/android/server/AlarmManagerService$AlarmThread;->this$0:Lcom/android/server/AlarmManagerService;

    iget v9, v7, Lcom/android/server/AlarmManagerService;->mNumTimeChanged:I

    add-int/lit8 v9, v9, 0x1

    iput v9, v7, Lcom/android/server/AlarmManagerService;->mNumTimeChanged:I

    .line 4000
    iget-object v7, p0, Lcom/android/server/AlarmManagerService$AlarmThread;->this$0:Lcom/android/server/AlarmManagerService;

    iput-wide v2, v7, Lcom/android/server/AlarmManagerService;->mLastTimeChangeClockTime:J

    .line 4001
    iget-object v2, p0, Lcom/android/server/AlarmManagerService$AlarmThread;->this$0:Lcom/android/server/AlarmManagerService;

    iput-wide v4, v2, Lcom/android/server/AlarmManagerService;->mLastTimeChangeRealtime:J

    .line 4002
    monitor-exit v8
    :try_end_b9
    .catchall {:try_start_a8 .. :try_end_b9} :catchall_d3

    .line 4003
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.TIME_SET"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 4004
    const/high16 v3, 0x25200000

    invoke-virtual {v2, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 4008
    iget-object v3, p0, Lcom/android/server/AlarmManagerService$AlarmThread;->this$0:Lcom/android/server/AlarmManagerService;

    invoke-virtual {v3}, Lcom/android/server/AlarmManagerService;->getContext()Landroid/content/Context;

    move-result-object v3

    sget-object v7, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v3, v2, v7}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 4012
    or-int/lit8 v1, v1, 0x5

    goto :goto_d9

    .line 4002
    :catchall_d3
    move-exception v0

    :try_start_d4
    monitor-exit v8
    :try_end_d5
    .catchall {:try_start_d4 .. :try_end_d5} :catchall_d3

    throw v0

    .line 3983
    :catchall_d6
    move-exception v0

    :try_start_d7
    monitor-exit v7
    :try_end_d8
    .catchall {:try_start_d7 .. :try_end_d8} :catchall_d6

    throw v0

    .line 4016
    :cond_d9
    :goto_d9
    if-eq v1, v6, :cond_205

    .line 4019
    iget-object v1, p0, Lcom/android/server/AlarmManagerService$AlarmThread;->this$0:Lcom/android/server/AlarmManagerService;

    iget-object v1, v1, Lcom/android/server/AlarmManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 4040
    :try_start_e0
    iget-object v2, p0, Lcom/android/server/AlarmManagerService$AlarmThread;->this$0:Lcom/android/server/AlarmManagerService;

    invoke-static {v2, v4, v5}, Lcom/android/server/AlarmManagerService;->access$2202(Lcom/android/server/AlarmManagerService;J)J

    .line 4041
    iget-object v2, p0, Lcom/android/server/AlarmManagerService$AlarmThread;->this$0:Lcom/android/server/AlarmManagerService;

    invoke-virtual {v2, v0, v4, v5}, Lcom/android/server/AlarmManagerService;->triggerAlarmsLocked(Ljava/util/ArrayList;J)Z

    move-result v2

    .line 4042
    if-nez v2, :cond_132

    iget-object v2, p0, Lcom/android/server/AlarmManagerService$AlarmThread;->this$0:Lcom/android/server/AlarmManagerService;

    invoke-virtual {v2, v4, v5}, Lcom/android/server/AlarmManagerService;->checkAllowNonWakeupDelayLocked(J)Z

    move-result v2

    if-eqz v2, :cond_132

    .line 4045
    iget-object v2, p0, Lcom/android/server/AlarmManagerService$AlarmThread;->this$0:Lcom/android/server/AlarmManagerService;

    iget-object v2, v2, Lcom/android/server/AlarmManagerService;->mPendingNonWakeupAlarms:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-nez v2, :cond_114

    .line 4046
    iget-object v2, p0, Lcom/android/server/AlarmManagerService$AlarmThread;->this$0:Lcom/android/server/AlarmManagerService;

    iput-wide v4, v2, Lcom/android/server/AlarmManagerService;->mStartCurrentDelayTime:J

    .line 4047
    iget-object v2, p0, Lcom/android/server/AlarmManagerService$AlarmThread;->this$0:Lcom/android/server/AlarmManagerService;

    iget-object v3, p0, Lcom/android/server/AlarmManagerService$AlarmThread;->this$0:Lcom/android/server/AlarmManagerService;

    .line 4048
    invoke-virtual {v3, v4, v5}, Lcom/android/server/AlarmManagerService;->currentNonWakeupFuzzLocked(J)J

    move-result-wide v6

    const-wide/16 v8, 0x3

    mul-long/2addr v6, v8

    const-wide/16 v8, 0x2

    div-long/2addr v6, v8

    add-long/2addr v4, v6

    iput-wide v4, v2, Lcom/android/server/AlarmManagerService;->mNextNonWakeupDeliveryTime:J

    .line 4050
    :cond_114
    iget-object v2, p0, Lcom/android/server/AlarmManagerService$AlarmThread;->this$0:Lcom/android/server/AlarmManagerService;

    iget-object v2, v2, Lcom/android/server/AlarmManagerService;->mPendingNonWakeupAlarms:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 4051
    iget-object v2, p0, Lcom/android/server/AlarmManagerService$AlarmThread;->this$0:Lcom/android/server/AlarmManagerService;

    iget v3, v2, Lcom/android/server/AlarmManagerService;->mNumDelayedAlarms:I

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/2addr v3, v4

    iput v3, v2, Lcom/android/server/AlarmManagerService;->mNumDelayedAlarms:I

    .line 4052
    iget-object v2, p0, Lcom/android/server/AlarmManagerService$AlarmThread;->this$0:Lcom/android/server/AlarmManagerService;

    invoke-virtual {v2}, Lcom/android/server/AlarmManagerService;->rescheduleKernelAlarmsLocked()V

    .line 4053
    iget-object v2, p0, Lcom/android/server/AlarmManagerService$AlarmThread;->this$0:Lcom/android/server/AlarmManagerService;

    invoke-static {v2}, Lcom/android/server/AlarmManagerService;->access$2300(Lcom/android/server/AlarmManagerService;)V

    goto/16 :goto_200

    .line 4059
    :cond_132
    iget-object v2, p0, Lcom/android/server/AlarmManagerService$AlarmThread;->this$0:Lcom/android/server/AlarmManagerService;

    iget-object v2, v2, Lcom/android/server/AlarmManagerService;->mPendingNonWakeupAlarms:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_173

    .line 4060
    iget-object v2, p0, Lcom/android/server/AlarmManagerService$AlarmThread;->this$0:Lcom/android/server/AlarmManagerService;

    iget-object v3, p0, Lcom/android/server/AlarmManagerService$AlarmThread;->this$0:Lcom/android/server/AlarmManagerService;

    iget-object v3, v3, Lcom/android/server/AlarmManagerService;->mPendingNonWakeupAlarms:Ljava/util/ArrayList;

    invoke-virtual {v2, v3}, Lcom/android/server/AlarmManagerService;->calculateDeliveryPriorities(Ljava/util/ArrayList;)V

    .line 4061
    iget-object v2, p0, Lcom/android/server/AlarmManagerService$AlarmThread;->this$0:Lcom/android/server/AlarmManagerService;

    iget-object v2, v2, Lcom/android/server/AlarmManagerService;->mPendingNonWakeupAlarms:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 4062
    iget-object v2, p0, Lcom/android/server/AlarmManagerService$AlarmThread;->this$0:Lcom/android/server/AlarmManagerService;

    iget-object v2, v2, Lcom/android/server/AlarmManagerService;->mAlarmDispatchComparator:Ljava/util/Comparator;

    invoke-static {v0, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 4063
    iget-object v2, p0, Lcom/android/server/AlarmManagerService$AlarmThread;->this$0:Lcom/android/server/AlarmManagerService;

    iget-wide v2, v2, Lcom/android/server/AlarmManagerService;->mStartCurrentDelayTime:J

    sub-long v2, v4, v2

    .line 4064
    iget-object v6, p0, Lcom/android/server/AlarmManagerService$AlarmThread;->this$0:Lcom/android/server/AlarmManagerService;

    iget-wide v7, v6, Lcom/android/server/AlarmManagerService;->mTotalDelayTime:J

    add-long/2addr v7, v2

    iput-wide v7, v6, Lcom/android/server/AlarmManagerService;->mTotalDelayTime:J

    .line 4065
    iget-object v6, p0, Lcom/android/server/AlarmManagerService$AlarmThread;->this$0:Lcom/android/server/AlarmManagerService;

    iget-wide v6, v6, Lcom/android/server/AlarmManagerService;->mMaxDelayTime:J

    cmp-long v6, v6, v2

    if-gez v6, :cond_16c

    .line 4066
    iget-object v6, p0, Lcom/android/server/AlarmManagerService$AlarmThread;->this$0:Lcom/android/server/AlarmManagerService;

    iput-wide v2, v6, Lcom/android/server/AlarmManagerService;->mMaxDelayTime:J

    .line 4068
    :cond_16c
    iget-object v2, p0, Lcom/android/server/AlarmManagerService$AlarmThread;->this$0:Lcom/android/server/AlarmManagerService;

    iget-object v2, v2, Lcom/android/server/AlarmManagerService;->mPendingNonWakeupAlarms:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 4070
    :cond_173
    iget-object v2, p0, Lcom/android/server/AlarmManagerService$AlarmThread;->this$0:Lcom/android/server/AlarmManagerService;

    iget-wide v2, v2, Lcom/android/server/AlarmManagerService;->mLastTimeChangeRealtime:J

    cmp-long v2, v2, v4

    const/4 v3, 0x0

    if-eqz v2, :cond_1bc

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1bc

    .line 4071
    iget v2, p0, Lcom/android/server/AlarmManagerService$AlarmThread;->mFalseWakeups:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/android/server/AlarmManagerService$AlarmThread;->mFalseWakeups:I

    iget v6, p0, Lcom/android/server/AlarmManagerService$AlarmThread;->mWtfThreshold:I

    if-lt v2, v6, :cond_1bc

    .line 4072
    const-string v2, "AlarmManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Too many ("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, p0, Lcom/android/server/AlarmManagerService$AlarmThread;->mFalseWakeups:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ") false wakeups, nowElapsed="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 4074
    iget v2, p0, Lcom/android/server/AlarmManagerService$AlarmThread;->mWtfThreshold:I

    const v6, 0x186a0

    if-ge v2, v6, :cond_1ba

    .line 4075
    iget v2, p0, Lcom/android/server/AlarmManagerService$AlarmThread;->mWtfThreshold:I

    mul-int/lit8 v2, v2, 0xa

    iput v2, p0, Lcom/android/server/AlarmManagerService$AlarmThread;->mWtfThreshold:I

    goto :goto_1bc

    .line 4077
    :cond_1ba
    iput v3, p0, Lcom/android/server/AlarmManagerService$AlarmThread;->mFalseWakeups:I

    .line 4081
    :cond_1bc
    :goto_1bc
    new-instance v2, Landroid/util/ArraySet;

    invoke-direct {v2}, Landroid/util/ArraySet;-><init>()V

    .line 4083
    nop

    :goto_1c2
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v3, v6, :cond_1ec

    .line 4084
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/AlarmManagerService$Alarm;

    .line 4085
    iget-object v7, p0, Lcom/android/server/AlarmManagerService$AlarmThread;->this$0:Lcom/android/server/AlarmManagerService;

    invoke-static {v7, v6}, Lcom/android/server/AlarmManagerService;->access$2400(Lcom/android/server/AlarmManagerService;Lcom/android/server/AlarmManagerService$Alarm;)Z

    move-result v7

    if-nez v7, :cond_1e9

    .line 4086
    iget-object v7, v6, Lcom/android/server/AlarmManagerService$Alarm;->sourcePackage:Ljava/lang/String;

    iget v6, v6, Lcom/android/server/AlarmManagerService$Alarm;->creatorUid:I

    .line 4087
    invoke-static {v6}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    .line 4086
    invoke-static {v7, v6}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v6

    invoke-virtual {v2, v6}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 4083
    :cond_1e9
    add-int/lit8 v3, v3, 0x1

    goto :goto_1c2

    .line 4090
    :cond_1ec
    iget-object v3, p0, Lcom/android/server/AlarmManagerService$AlarmThread;->this$0:Lcom/android/server/AlarmManagerService;

    invoke-virtual {v3, v0, v4, v5}, Lcom/android/server/AlarmManagerService;->deliverAlarmsLocked(Ljava/util/ArrayList;J)V

    .line 4091
    iget-object v3, p0, Lcom/android/server/AlarmManagerService$AlarmThread;->this$0:Lcom/android/server/AlarmManagerService;

    invoke-virtual {v3, v2}, Lcom/android/server/AlarmManagerService;->reorderAlarmsBasedOnStandbyBuckets(Landroid/util/ArraySet;)Z

    .line 4092
    iget-object v2, p0, Lcom/android/server/AlarmManagerService$AlarmThread;->this$0:Lcom/android/server/AlarmManagerService;

    invoke-virtual {v2}, Lcom/android/server/AlarmManagerService;->rescheduleKernelAlarmsLocked()V

    .line 4093
    iget-object v2, p0, Lcom/android/server/AlarmManagerService$AlarmThread;->this$0:Lcom/android/server/AlarmManagerService;

    invoke-static {v2}, Lcom/android/server/AlarmManagerService;->access$2300(Lcom/android/server/AlarmManagerService;)V

    .line 4095
    :goto_200
    monitor-exit v1

    goto :goto_210

    :catchall_202
    move-exception v0

    monitor-exit v1
    :try_end_204
    .catchall {:try_start_e0 .. :try_end_204} :catchall_202

    throw v0

    .line 4100
    :cond_205
    iget-object v1, p0, Lcom/android/server/AlarmManagerService$AlarmThread;->this$0:Lcom/android/server/AlarmManagerService;

    iget-object v1, v1, Lcom/android/server/AlarmManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 4101
    :try_start_20a
    iget-object v2, p0, Lcom/android/server/AlarmManagerService$AlarmThread;->this$0:Lcom/android/server/AlarmManagerService;

    invoke-virtual {v2}, Lcom/android/server/AlarmManagerService;->rescheduleKernelAlarmsLocked()V

    .line 4102
    monitor-exit v1

    .line 4104
    :goto_210
    goto/16 :goto_5

    .line 4102
    :catchall_212
    move-exception v0

    monitor-exit v1
    :try_end_214
    .catchall {:try_start_20a .. :try_end_214} :catchall_212

    throw v0

    .line 3967
    :catchall_215
    move-exception v0

    :try_start_216
    monitor-exit v6
    :try_end_217
    .catchall {:try_start_216 .. :try_end_217} :catchall_215

    throw v0
.end method
