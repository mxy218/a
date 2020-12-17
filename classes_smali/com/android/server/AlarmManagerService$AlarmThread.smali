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

    .line 4195
    iput-object p1, p0, Lcom/android/server/AlarmManagerService$AlarmThread;->this$0:Lcom/android/server/AlarmManagerService;

    .line 4196
    const-string p1, "AlarmManager"

    invoke-direct {p0, p1}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    .line 4197
    const/4 p1, 0x0

    iput p1, p0, Lcom/android/server/AlarmManagerService$AlarmThread;->mFalseWakeups:I

    .line 4198
    const/16 p1, 0x64

    iput p1, p0, Lcom/android/server/AlarmManagerService$AlarmThread;->mWtfThreshold:I

    .line 4199
    return-void
.end method


# virtual methods
.method public run()V
    .registers 22

    .line 4203
    move-object/from16 v1, p0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v2, v0

    .line 4207
    .local v2, "triggerList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AlarmManagerService$Alarm;>;"
    :goto_8
    iget-object v0, v1, Lcom/android/server/AlarmManagerService$AlarmThread;->this$0:Lcom/android/server/AlarmManagerService;

    invoke-static {v0}, Lcom/android/server/AlarmManagerService;->access$100(Lcom/android/server/AlarmManagerService;)Lcom/android/server/AlarmManagerService$Injector;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/AlarmManagerService$Injector;->waitForAlarm()I

    move-result v3

    .line 4208
    .local v3, "result":I
    iget-object v0, v1, Lcom/android/server/AlarmManagerService$AlarmThread;->this$0:Lcom/android/server/AlarmManagerService;

    invoke-static {v0}, Lcom/android/server/AlarmManagerService;->access$100(Lcom/android/server/AlarmManagerService;)Lcom/android/server/AlarmManagerService$Injector;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/AlarmManagerService$Injector;->getCurrentTimeMillis()J

    move-result-wide v4

    .line 4209
    .local v4, "nowRTC":J
    iget-object v0, v1, Lcom/android/server/AlarmManagerService$AlarmThread;->this$0:Lcom/android/server/AlarmManagerService;

    invoke-static {v0}, Lcom/android/server/AlarmManagerService;->access$100(Lcom/android/server/AlarmManagerService;)Lcom/android/server/AlarmManagerService$Injector;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/AlarmManagerService$Injector;->getElapsedRealtime()J

    move-result-wide v6

    .line 4210
    .local v6, "nowELAPSED":J
    iget-object v0, v1, Lcom/android/server/AlarmManagerService$AlarmThread;->this$0:Lcom/android/server/AlarmManagerService;

    iget-object v8, v0, Lcom/android/server/AlarmManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v8

    .line 4211
    :try_start_2b
    iget-object v0, v1, Lcom/android/server/AlarmManagerService$AlarmThread;->this$0:Lcom/android/server/AlarmManagerService;

    invoke-static {v0, v6, v7}, Lcom/android/server/AlarmManagerService;->access$2502(Lcom/android/server/AlarmManagerService;J)J

    .line 4212
    monitor-exit v8
    :try_end_31
    .catchall {:try_start_2b .. :try_end_31} :catchall_251

    .line 4213
    if-nez v3, :cond_52

    .line 4214
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "waitForAlarm returned 0, nowRTC = "

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v8, ", nowElapsed = "

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v8, "AlarmManager"

    invoke-static {v8, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 4217
    :cond_52
    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 4222
    const-wide/16 v8, 0x0

    .line 4223
    .local v8, "lastTimeChangeClockTime":J
    const-wide/16 v10, 0x0

    .line 4225
    .local v10, "expectedClockTime":J
    const/high16 v0, 0x10000

    and-int v12, v3, v0

    const-wide/16 v15, 0x1388

    if-eqz v12, :cond_eb

    .line 4226
    iget-object v12, v1, Lcom/android/server/AlarmManagerService$AlarmThread;->this$0:Lcom/android/server/AlarmManagerService;

    iget-object v12, v12, Lcom/android/server/AlarmManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v12

    .line 4227
    :try_start_66
    iget-object v0, v1, Lcom/android/server/AlarmManagerService$AlarmThread;->this$0:Lcom/android/server/AlarmManagerService;

    iget-wide v13, v0, Lcom/android/server/AlarmManagerService;->mLastTimeChangeClockTime:J

    move-wide v8, v13

    .line 4228
    iget-object v0, v1, Lcom/android/server/AlarmManagerService$AlarmThread;->this$0:Lcom/android/server/AlarmManagerService;

    iget-wide v13, v0, Lcom/android/server/AlarmManagerService;->mLastTimeChangeRealtime:J

    sub-long v13, v6, v13

    add-long v10, v8, v13

    .line 4230
    monitor-exit v12
    :try_end_74
    .catchall {:try_start_66 .. :try_end_74} :catchall_e8

    .line 4233
    const-wide/16 v12, 0x0

    cmp-long v0, v8, v12

    if-eqz v0, :cond_8b

    sub-long v12, v10, v15

    cmp-long v0, v4, v12

    if-ltz v0, :cond_8b

    add-long v12, v10, v15

    cmp-long v0, v4, v12

    if-lez v0, :cond_87

    goto :goto_8b

    :cond_87
    move-wide v12, v10

    move-wide v10, v8

    move v9, v3

    goto :goto_ee

    .line 4242
    :cond_8b
    :goto_8b
    const/16 v0, 0x2d

    invoke-static {v0, v4, v5}, Landroid/util/StatsLog;->write(IJ)I

    .line 4243
    iget-object v0, v1, Lcom/android/server/AlarmManagerService$AlarmThread;->this$0:Lcom/android/server/AlarmManagerService;

    iget-object v12, v0, Lcom/android/server/AlarmManagerService;->mTimeTickTrigger:Landroid/app/IAlarmListener;

    const/4 v13, 0x0

    invoke-virtual {v0, v13, v12}, Lcom/android/server/AlarmManagerService;->removeImpl(Landroid/app/PendingIntent;Landroid/app/IAlarmListener;)V

    .line 4244
    iget-object v0, v1, Lcom/android/server/AlarmManagerService$AlarmThread;->this$0:Lcom/android/server/AlarmManagerService;

    iget-object v12, v0, Lcom/android/server/AlarmManagerService;->mDateChangeSender:Landroid/app/PendingIntent;

    invoke-virtual {v0, v12, v13}, Lcom/android/server/AlarmManagerService;->removeImpl(Landroid/app/PendingIntent;Landroid/app/IAlarmListener;)V

    .line 4245
    iget-object v0, v1, Lcom/android/server/AlarmManagerService$AlarmThread;->this$0:Lcom/android/server/AlarmManagerService;

    invoke-virtual {v0}, Lcom/android/server/AlarmManagerService;->rebatchAllAlarms()V

    .line 4246
    iget-object v0, v1, Lcom/android/server/AlarmManagerService$AlarmThread;->this$0:Lcom/android/server/AlarmManagerService;

    iget-object v0, v0, Lcom/android/server/AlarmManagerService;->mClockReceiver:Lcom/android/server/AlarmManagerService$ClockReceiver;

    invoke-virtual {v0}, Lcom/android/server/AlarmManagerService$ClockReceiver;->scheduleTimeTickEvent()V

    .line 4247
    iget-object v0, v1, Lcom/android/server/AlarmManagerService$AlarmThread;->this$0:Lcom/android/server/AlarmManagerService;

    iget-object v0, v0, Lcom/android/server/AlarmManagerService;->mClockReceiver:Lcom/android/server/AlarmManagerService$ClockReceiver;

    invoke-virtual {v0}, Lcom/android/server/AlarmManagerService$ClockReceiver;->scheduleDateChangedEvent()V

    .line 4248
    iget-object v0, v1, Lcom/android/server/AlarmManagerService$AlarmThread;->this$0:Lcom/android/server/AlarmManagerService;

    iget-object v13, v0, Lcom/android/server/AlarmManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v13

    .line 4249
    :try_start_b7
    iget-object v0, v1, Lcom/android/server/AlarmManagerService$AlarmThread;->this$0:Lcom/android/server/AlarmManagerService;

    iget v12, v0, Lcom/android/server/AlarmManagerService;->mNumTimeChanged:I

    add-int/lit8 v12, v12, 0x1

    iput v12, v0, Lcom/android/server/AlarmManagerService;->mNumTimeChanged:I

    .line 4250
    iget-object v0, v1, Lcom/android/server/AlarmManagerService$AlarmThread;->this$0:Lcom/android/server/AlarmManagerService;

    iput-wide v4, v0, Lcom/android/server/AlarmManagerService;->mLastTimeChangeClockTime:J

    .line 4251
    iget-object v0, v1, Lcom/android/server/AlarmManagerService$AlarmThread;->this$0:Lcom/android/server/AlarmManagerService;

    iput-wide v6, v0, Lcom/android/server/AlarmManagerService;->mLastTimeChangeRealtime:J

    .line 4252
    monitor-exit v13
    :try_end_c8
    .catchall {:try_start_b7 .. :try_end_c8} :catchall_e5

    .line 4253
    new-instance v0, Landroid/content/Intent;

    const-string v12, "android.intent.action.TIME_SET"

    invoke-direct {v0, v12}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 4254
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v12, 0x25200000

    invoke-virtual {v0, v12}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 4258
    iget-object v12, v1, Lcom/android/server/AlarmManagerService$AlarmThread;->this$0:Lcom/android/server/AlarmManagerService;

    invoke-virtual {v12}, Lcom/android/server/AlarmManagerService;->getContext()Landroid/content/Context;

    move-result-object v12

    sget-object v13, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v12, v0, v13}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 4262
    or-int/lit8 v3, v3, 0x5

    move-wide v12, v10

    move-wide v10, v8

    move v9, v3

    goto :goto_ee

    .line 4252
    .end local v0  # "intent":Landroid/content/Intent;
    :catchall_e5
    move-exception v0

    :try_start_e6
    monitor-exit v13
    :try_end_e7
    .catchall {:try_start_e6 .. :try_end_e7} :catchall_e5

    throw v0

    .line 4230
    :catchall_e8
    move-exception v0

    :try_start_e9
    monitor-exit v12
    :try_end_ea
    .catchall {:try_start_e9 .. :try_end_ea} :catchall_e8

    throw v0

    .line 4225
    :cond_eb
    move-wide v12, v10

    move-wide v10, v8

    move v9, v3

    .line 4266
    .end local v3  # "result":I
    .end local v8  # "lastTimeChangeClockTime":J
    .local v9, "result":I
    .local v10, "lastTimeChangeClockTime":J
    .local v12, "expectedClockTime":J
    :goto_ee
    const/high16 v0, 0x10000

    if-eq v9, v0, :cond_22e

    .line 4269
    iget-object v0, v1, Lcom/android/server/AlarmManagerService$AlarmThread;->this$0:Lcom/android/server/AlarmManagerService;

    iget-object v3, v0, Lcom/android/server/AlarmManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 4290
    :try_start_f7
    iget-object v0, v1, Lcom/android/server/AlarmManagerService$AlarmThread;->this$0:Lcom/android/server/AlarmManagerService;

    invoke-static {v0, v6, v7}, Lcom/android/server/AlarmManagerService;->access$2602(Lcom/android/server/AlarmManagerService;J)J

    .line 4291
    iget-object v0, v1, Lcom/android/server/AlarmManagerService$AlarmThread;->this$0:Lcom/android/server/AlarmManagerService;

    invoke-virtual {v0, v2, v6, v7}, Lcom/android/server/AlarmManagerService;->triggerAlarmsLocked(Ljava/util/ArrayList;J)Z

    move-result v0
    :try_end_102
    .catchall {:try_start_f7 .. :try_end_102} :catchall_227

    .line 4292
    .local v0, "hasWakeup":Z
    if-nez v0, :cond_152

    :try_start_104
    iget-object v8, v1, Lcom/android/server/AlarmManagerService$AlarmThread;->this$0:Lcom/android/server/AlarmManagerService;

    invoke-virtual {v8, v6, v7}, Lcom/android/server/AlarmManagerService;->checkAllowNonWakeupDelayLocked(J)Z

    move-result v8

    if-eqz v8, :cond_152

    .line 4295
    iget-object v8, v1, Lcom/android/server/AlarmManagerService$AlarmThread;->this$0:Lcom/android/server/AlarmManagerService;

    iget-object v8, v8, Lcom/android/server/AlarmManagerService;->mPendingNonWakeupAlarms:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-nez v8, :cond_12d

    .line 4296
    iget-object v8, v1, Lcom/android/server/AlarmManagerService$AlarmThread;->this$0:Lcom/android/server/AlarmManagerService;

    iput-wide v6, v8, Lcom/android/server/AlarmManagerService;->mStartCurrentDelayTime:J

    .line 4297
    iget-object v8, v1, Lcom/android/server/AlarmManagerService$AlarmThread;->this$0:Lcom/android/server/AlarmManagerService;

    iget-object v14, v1, Lcom/android/server/AlarmManagerService$AlarmThread;->this$0:Lcom/android/server/AlarmManagerService;

    .line 4298
    invoke-virtual {v14, v6, v7}, Lcom/android/server/AlarmManagerService;->currentNonWakeupFuzzLocked(J)J

    move-result-wide v14

    const-wide/16 v16, 0x3

    mul-long v14, v14, v16

    const-wide/16 v16, 0x2

    div-long v14, v14, v16

    add-long/2addr v14, v6

    iput-wide v14, v8, Lcom/android/server/AlarmManagerService;->mNextNonWakeupDeliveryTime:J

    .line 4300
    :cond_12d
    iget-object v8, v1, Lcom/android/server/AlarmManagerService$AlarmThread;->this$0:Lcom/android/server/AlarmManagerService;

    iget-object v8, v8, Lcom/android/server/AlarmManagerService;->mPendingNonWakeupAlarms:Ljava/util/ArrayList;

    invoke-virtual {v8, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 4301
    iget-object v8, v1, Lcom/android/server/AlarmManagerService$AlarmThread;->this$0:Lcom/android/server/AlarmManagerService;

    iget v14, v8, Lcom/android/server/AlarmManagerService;->mNumDelayedAlarms:I

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v15

    add-int/2addr v14, v15

    iput v14, v8, Lcom/android/server/AlarmManagerService;->mNumDelayedAlarms:I

    .line 4302
    iget-object v8, v1, Lcom/android/server/AlarmManagerService$AlarmThread;->this$0:Lcom/android/server/AlarmManagerService;

    invoke-virtual {v8}, Lcom/android/server/AlarmManagerService;->rescheduleKernelAlarmsLocked()V

    .line 4303
    iget-object v8, v1, Lcom/android/server/AlarmManagerService$AlarmThread;->this$0:Lcom/android/server/AlarmManagerService;

    invoke-static {v8}, Lcom/android/server/AlarmManagerService;->access$2700(Lcom/android/server/AlarmManagerService;)V
    :try_end_149
    .catchall {:try_start_104 .. :try_end_149} :catchall_14d

    move-wide/from16 v19, v4

    goto/16 :goto_225

    .line 4345
    .end local v0  # "hasWakeup":Z
    :catchall_14d
    move-exception v0

    move-wide/from16 v19, v4

    goto/16 :goto_22a

    .line 4309
    .restart local v0  # "hasWakeup":Z
    :cond_152
    :try_start_152
    iget-object v8, v1, Lcom/android/server/AlarmManagerService$AlarmThread;->this$0:Lcom/android/server/AlarmManagerService;

    iget-object v8, v8, Lcom/android/server/AlarmManagerService;->mPendingNonWakeupAlarms:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-lez v8, :cond_196

    .line 4310
    iget-object v8, v1, Lcom/android/server/AlarmManagerService$AlarmThread;->this$0:Lcom/android/server/AlarmManagerService;

    iget-object v14, v1, Lcom/android/server/AlarmManagerService$AlarmThread;->this$0:Lcom/android/server/AlarmManagerService;

    iget-object v14, v14, Lcom/android/server/AlarmManagerService;->mPendingNonWakeupAlarms:Ljava/util/ArrayList;

    invoke-virtual {v8, v14}, Lcom/android/server/AlarmManagerService;->calculateDeliveryPriorities(Ljava/util/ArrayList;)V

    .line 4311
    iget-object v8, v1, Lcom/android/server/AlarmManagerService$AlarmThread;->this$0:Lcom/android/server/AlarmManagerService;

    iget-object v8, v8, Lcom/android/server/AlarmManagerService;->mPendingNonWakeupAlarms:Ljava/util/ArrayList;

    invoke-virtual {v2, v8}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 4312
    iget-object v8, v1, Lcom/android/server/AlarmManagerService$AlarmThread;->this$0:Lcom/android/server/AlarmManagerService;

    iget-object v8, v8, Lcom/android/server/AlarmManagerService;->mAlarmDispatchComparator:Ljava/util/Comparator;

    invoke-static {v2, v8}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 4313
    iget-object v8, v1, Lcom/android/server/AlarmManagerService$AlarmThread;->this$0:Lcom/android/server/AlarmManagerService;

    iget-wide v14, v8, Lcom/android/server/AlarmManagerService;->mStartCurrentDelayTime:J

    sub-long v14, v6, v14

    .line 4314
    .local v14, "thisDelayTime":J
    iget-object v8, v1, Lcom/android/server/AlarmManagerService$AlarmThread;->this$0:Lcom/android/server/AlarmManagerService;
    :try_end_17b
    .catchall {:try_start_152 .. :try_end_17b} :catchall_227

    move-wide/from16 v19, v4

    .end local v4  # "nowRTC":J
    .local v19, "nowRTC":J
    :try_start_17d
    iget-wide v4, v8, Lcom/android/server/AlarmManagerService;->mTotalDelayTime:J

    add-long/2addr v4, v14

    iput-wide v4, v8, Lcom/android/server/AlarmManagerService;->mTotalDelayTime:J

    .line 4315
    iget-object v4, v1, Lcom/android/server/AlarmManagerService$AlarmThread;->this$0:Lcom/android/server/AlarmManagerService;

    iget-wide v4, v4, Lcom/android/server/AlarmManagerService;->mMaxDelayTime:J

    cmp-long v4, v4, v14

    if-gez v4, :cond_18e

    .line 4316
    iget-object v4, v1, Lcom/android/server/AlarmManagerService$AlarmThread;->this$0:Lcom/android/server/AlarmManagerService;

    iput-wide v14, v4, Lcom/android/server/AlarmManagerService;->mMaxDelayTime:J

    .line 4318
    :cond_18e
    iget-object v4, v1, Lcom/android/server/AlarmManagerService$AlarmThread;->this$0:Lcom/android/server/AlarmManagerService;

    iget-object v4, v4, Lcom/android/server/AlarmManagerService;->mPendingNonWakeupAlarms:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    goto :goto_198

    .line 4309
    .end local v14  # "thisDelayTime":J
    .end local v19  # "nowRTC":J
    .restart local v4  # "nowRTC":J
    :cond_196
    move-wide/from16 v19, v4

    .line 4320
    .end local v4  # "nowRTC":J
    .restart local v19  # "nowRTC":J
    :goto_198
    iget-object v4, v1, Lcom/android/server/AlarmManagerService$AlarmThread;->this$0:Lcom/android/server/AlarmManagerService;

    iget-wide v4, v4, Lcom/android/server/AlarmManagerService;->mLastTimeChangeRealtime:J

    cmp-long v4, v4, v6

    const/4 v5, 0x0

    if-eqz v4, :cond_1e1

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_1e1

    .line 4321
    iget v4, v1, Lcom/android/server/AlarmManagerService$AlarmThread;->mFalseWakeups:I

    add-int/lit8 v4, v4, 0x1

    iput v4, v1, Lcom/android/server/AlarmManagerService$AlarmThread;->mFalseWakeups:I

    iget v8, v1, Lcom/android/server/AlarmManagerService$AlarmThread;->mWtfThreshold:I

    if-lt v4, v8, :cond_1e1

    .line 4322
    const-string v4, "AlarmManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Too many ("

    invoke-virtual {v8, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v14, v1, Lcom/android/server/AlarmManagerService$AlarmThread;->mFalseWakeups:I

    invoke-virtual {v8, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v14, ") false wakeups, nowElapsed="

    invoke-virtual {v8, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v4, v8}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 4324
    iget v4, v1, Lcom/android/server/AlarmManagerService$AlarmThread;->mWtfThreshold:I

    const v8, 0x186a0

    if-ge v4, v8, :cond_1df

    .line 4325
    iget v4, v1, Lcom/android/server/AlarmManagerService$AlarmThread;->mWtfThreshold:I

    mul-int/lit8 v4, v4, 0xa

    iput v4, v1, Lcom/android/server/AlarmManagerService$AlarmThread;->mWtfThreshold:I

    goto :goto_1e1

    .line 4327
    :cond_1df
    iput v5, v1, Lcom/android/server/AlarmManagerService$AlarmThread;->mFalseWakeups:I

    .line 4331
    :cond_1e1
    :goto_1e1
    new-instance v4, Landroid/util/ArraySet;

    invoke-direct {v4}, Landroid/util/ArraySet;-><init>()V

    .line 4333
    .local v4, "triggerPackages":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Landroid/util/Pair<Ljava/lang/String;Ljava/lang/Integer;>;>;"
    nop

    .local v5, "i":I
    :goto_1e7
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-ge v5, v8, :cond_211

    .line 4334
    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/AlarmManagerService$Alarm;

    .line 4335
    .local v8, "a":Lcom/android/server/AlarmManagerService$Alarm;
    iget-object v14, v1, Lcom/android/server/AlarmManagerService$AlarmThread;->this$0:Lcom/android/server/AlarmManagerService;

    invoke-static {v14, v8}, Lcom/android/server/AlarmManagerService;->access$2800(Lcom/android/server/AlarmManagerService;Lcom/android/server/AlarmManagerService$Alarm;)Z

    move-result v14

    if-nez v14, :cond_20e

    .line 4336
    iget-object v14, v8, Lcom/android/server/AlarmManagerService$Alarm;->sourcePackage:Ljava/lang/String;

    iget v15, v8, Lcom/android/server/AlarmManagerService$Alarm;->creatorUid:I

    .line 4337
    invoke-static {v15}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v15

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    .line 4336
    invoke-static {v14, v15}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v14

    invoke-virtual {v4, v14}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 4333
    .end local v8  # "a":Lcom/android/server/AlarmManagerService$Alarm;
    :cond_20e
    add-int/lit8 v5, v5, 0x1

    goto :goto_1e7

    .line 4340
    .end local v5  # "i":I
    :cond_211
    iget-object v5, v1, Lcom/android/server/AlarmManagerService$AlarmThread;->this$0:Lcom/android/server/AlarmManagerService;

    invoke-virtual {v5, v2, v6, v7}, Lcom/android/server/AlarmManagerService;->deliverAlarmsLocked(Ljava/util/ArrayList;J)V

    .line 4341
    iget-object v5, v1, Lcom/android/server/AlarmManagerService$AlarmThread;->this$0:Lcom/android/server/AlarmManagerService;

    invoke-virtual {v5, v4}, Lcom/android/server/AlarmManagerService;->reorderAlarmsBasedOnStandbyBuckets(Landroid/util/ArraySet;)Z

    .line 4342
    iget-object v5, v1, Lcom/android/server/AlarmManagerService$AlarmThread;->this$0:Lcom/android/server/AlarmManagerService;

    invoke-virtual {v5}, Lcom/android/server/AlarmManagerService;->rescheduleKernelAlarmsLocked()V

    .line 4343
    iget-object v5, v1, Lcom/android/server/AlarmManagerService$AlarmThread;->this$0:Lcom/android/server/AlarmManagerService;

    invoke-static {v5}, Lcom/android/server/AlarmManagerService;->access$2700(Lcom/android/server/AlarmManagerService;)V

    .line 4345
    .end local v0  # "hasWakeup":Z
    .end local v4  # "triggerPackages":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Landroid/util/Pair<Ljava/lang/String;Ljava/lang/Integer;>;>;"
    :goto_225
    monitor-exit v3

    goto :goto_24c

    .end local v19  # "nowRTC":J
    .local v4, "nowRTC":J
    :catchall_227
    move-exception v0

    move-wide/from16 v19, v4

    .end local v4  # "nowRTC":J
    .restart local v19  # "nowRTC":J
    :goto_22a
    monitor-exit v3
    :try_end_22b
    .catchall {:try_start_17d .. :try_end_22b} :catchall_22c

    throw v0

    :catchall_22c
    move-exception v0

    goto :goto_22a

    .line 4350
    .end local v19  # "nowRTC":J
    .restart local v4  # "nowRTC":J
    :cond_22e
    move-wide/from16 v19, v4

    .end local v4  # "nowRTC":J
    .restart local v19  # "nowRTC":J
    iget-object v0, v1, Lcom/android/server/AlarmManagerService$AlarmThread;->this$0:Lcom/android/server/AlarmManagerService;

    iget-object v4, v0, Lcom/android/server/AlarmManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v4

    .line 4353
    const-wide/16 v17, 0x0

    cmp-long v0, v10, v17

    if-eqz v0, :cond_246

    sub-long v17, v12, v15

    cmp-long v0, v19, v17

    if-ltz v0, :cond_246

    add-long/2addr v15, v12

    cmp-long v0, v19, v15

    if-lez v0, :cond_24b

    .line 4356
    :cond_246
    :try_start_246
    iget-object v0, v1, Lcom/android/server/AlarmManagerService$AlarmThread;->this$0:Lcom/android/server/AlarmManagerService;

    invoke-virtual {v0}, Lcom/android/server/AlarmManagerService;->rescheduleKernelAlarmsLocked()V

    .line 4358
    :cond_24b
    monitor-exit v4

    .line 4360
    .end local v6  # "nowELAPSED":J
    .end local v9  # "result":I
    .end local v10  # "lastTimeChangeClockTime":J
    .end local v12  # "expectedClockTime":J
    .end local v19  # "nowRTC":J
    :goto_24c
    goto/16 :goto_8

    .line 4358
    .restart local v6  # "nowELAPSED":J
    .restart local v9  # "result":I
    .restart local v10  # "lastTimeChangeClockTime":J
    .restart local v12  # "expectedClockTime":J
    .restart local v19  # "nowRTC":J
    :catchall_24e
    move-exception v0

    monitor-exit v4
    :try_end_250
    .catchall {:try_start_246 .. :try_end_250} :catchall_24e

    throw v0

    .line 4212
    .end local v9  # "result":I
    .end local v10  # "lastTimeChangeClockTime":J
    .end local v12  # "expectedClockTime":J
    .end local v19  # "nowRTC":J
    .restart local v3  # "result":I
    .restart local v4  # "nowRTC":J
    :catchall_251
    move-exception v0

    move-wide/from16 v19, v4

    .end local v4  # "nowRTC":J
    .restart local v19  # "nowRTC":J
    :goto_254
    :try_start_254
    monitor-exit v8
    :try_end_255
    .catchall {:try_start_254 .. :try_end_255} :catchall_256

    throw v0

    :catchall_256
    move-exception v0

    goto :goto_254
.end method
