.class Lcom/android/server/AlarmManagerService$ClockReceiver;
.super Landroid/content/BroadcastReceiver;
.source "AlarmManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/AlarmManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ClockReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/AlarmManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/AlarmManagerService;)V
    .registers 4

    .line 4248
    iput-object p1, p0, Lcom/android/server/AlarmManagerService$ClockReceiver;->this$0:Lcom/android/server/AlarmManagerService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 4249
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 4250
    const-string v1, "android.intent.action.DATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 4251
    invoke-virtual {p1}, Lcom/android/server/AlarmManagerService;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1, p0, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 4252
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 5

    .line 4256
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string p2, "android.intent.action.DATE_CHANGED"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_36

    .line 4261
    const-string/jumbo p1, "persist.sys.timezone"

    invoke-static {p1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object p1

    .line 4262
    iget-object p2, p0, Lcom/android/server/AlarmManagerService$ClockReceiver;->this$0:Lcom/android/server/AlarmManagerService;

    invoke-static {p2}, Lcom/android/server/AlarmManagerService;->access$100(Lcom/android/server/AlarmManagerService;)Lcom/android/server/AlarmManagerService$Injector;

    move-result-object p2

    invoke-virtual {p2}, Lcom/android/server/AlarmManagerService$Injector;->getCurrentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Ljava/util/TimeZone;->getOffset(J)I

    move-result p1

    .line 4263
    iget-object p2, p0, Lcom/android/server/AlarmManagerService$ClockReceiver;->this$0:Lcom/android/server/AlarmManagerService;

    invoke-static {p2}, Lcom/android/server/AlarmManagerService;->access$100(Lcom/android/server/AlarmManagerService;)Lcom/android/server/AlarmManagerService$Injector;

    move-result-object p2

    const v0, 0xea60

    div-int/2addr p1, v0

    neg-int p1, p1

    invoke-virtual {p2, p1}, Lcom/android/server/AlarmManagerService$Injector;->setKernelTimezone(I)V

    .line 4264
    invoke-virtual {p0}, Lcom/android/server/AlarmManagerService$ClockReceiver;->scheduleDateChangedEvent()V

    .line 4266
    :cond_36
    return-void
.end method

.method public scheduleDateChangedEvent()V
    .registers 21

    .line 4288
    move-object/from16 v0, p0

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    .line 4289
    iget-object v2, v0, Lcom/android/server/AlarmManagerService$ClockReceiver;->this$0:Lcom/android/server/AlarmManagerService;

    invoke-static {v2}, Lcom/android/server/AlarmManagerService;->access$100(Lcom/android/server/AlarmManagerService;)Lcom/android/server/AlarmManagerService$Injector;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/AlarmManagerService$Injector;->getCurrentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 4290
    const/4 v2, 0x0

    const/16 v3, 0xb

    invoke-virtual {v1, v3, v2}, Ljava/util/Calendar;->set(II)V

    .line 4291
    const/16 v3, 0xc

    invoke-virtual {v1, v3, v2}, Ljava/util/Calendar;->set(II)V

    .line 4292
    const/16 v3, 0xd

    invoke-virtual {v1, v3, v2}, Ljava/util/Calendar;->set(II)V

    .line 4293
    const/16 v3, 0xe

    invoke-virtual {v1, v3, v2}, Ljava/util/Calendar;->set(II)V

    .line 4294
    const/4 v2, 0x5

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Ljava/util/Calendar;->add(II)V

    .line 4296
    nop

    .line 4297
    iget-object v4, v0, Lcom/android/server/AlarmManagerService$ClockReceiver;->this$0:Lcom/android/server/AlarmManagerService;

    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v6

    iget-object v0, v0, Lcom/android/server/AlarmManagerService$ClockReceiver;->this$0:Lcom/android/server/AlarmManagerService;

    iget-object v12, v0, Lcom/android/server/AlarmManagerService;->mDateChangeSender:Landroid/app/PendingIntent;

    .line 4299
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v18

    .line 4297
    const/16 v16, 0x0

    const/4 v5, 0x1

    const-wide/16 v8, 0x0

    const-wide/16 v10, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x1

    const/16 v17, 0x0

    const-string v19, "android"

    invoke-virtual/range {v4 .. v19}, Lcom/android/server/AlarmManagerService;->setImpl(IJJJLandroid/app/PendingIntent;Landroid/app/IAlarmListener;Ljava/lang/String;ILandroid/os/WorkSource;Landroid/app/AlarmManager$AlarmClockInfo;ILjava/lang/String;)V

    .line 4300
    return-void
.end method

.method public scheduleTimeTickEvent()V
    .registers 24

    .line 4269
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/AlarmManagerService$ClockReceiver;->this$0:Lcom/android/server/AlarmManagerService;

    invoke-static {v1}, Lcom/android/server/AlarmManagerService;->access$100(Lcom/android/server/AlarmManagerService;)Lcom/android/server/AlarmManagerService$Injector;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/AlarmManagerService$Injector;->getCurrentTimeMillis()J

    move-result-wide v1

    .line 4270
    const-wide/32 v3, 0xea60

    div-long v5, v1, v3

    const-wide/16 v7, 0x1

    add-long/2addr v5, v7

    mul-long/2addr v5, v3

    .line 4274
    sub-long/2addr v5, v1

    .line 4276
    nop

    .line 4277
    iget-object v7, v0, Lcom/android/server/AlarmManagerService$ClockReceiver;->this$0:Lcom/android/server/AlarmManagerService;

    invoke-static {v7}, Lcom/android/server/AlarmManagerService;->access$100(Lcom/android/server/AlarmManagerService;)Lcom/android/server/AlarmManagerService$Injector;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/AlarmManagerService$Injector;->getElapsedRealtime()J

    move-result-wide v3

    add-long v9, v3, v5

    iget-object v3, v0, Lcom/android/server/AlarmManagerService$ClockReceiver;->this$0:Lcom/android/server/AlarmManagerService;

    iget-object v3, v3, Lcom/android/server/AlarmManagerService;->mTimeTickTrigger:Landroid/app/IAlarmListener;

    .line 4279
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v21

    .line 4277
    const/16 v19, 0x0

    const/4 v8, 0x3

    const-wide/16 v11, 0x0

    const-wide/16 v13, 0x0

    const/4 v15, 0x0

    const-string v17, "TIME_TICK"

    const/16 v18, 0x1

    const/16 v20, 0x0

    const-string v22, "android"

    move-object/from16 v16, v3

    invoke-virtual/range {v7 .. v22}, Lcom/android/server/AlarmManagerService;->setImpl(IJJJLandroid/app/PendingIntent;Landroid/app/IAlarmListener;Ljava/lang/String;ILandroid/os/WorkSource;Landroid/app/AlarmManager$AlarmClockInfo;ILjava/lang/String;)V

    .line 4282
    iget-object v3, v0, Lcom/android/server/AlarmManagerService$ClockReceiver;->this$0:Lcom/android/server/AlarmManagerService;

    iget-object v3, v3, Lcom/android/server/AlarmManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 4283
    :try_start_45
    iget-object v0, v0, Lcom/android/server/AlarmManagerService$ClockReceiver;->this$0:Lcom/android/server/AlarmManagerService;

    invoke-static {v0, v1, v2}, Lcom/android/server/AlarmManagerService;->access$2702(Lcom/android/server/AlarmManagerService;J)J

    .line 4284
    monitor-exit v3

    .line 4285
    return-void

    .line 4284
    :catchall_4c
    move-exception v0

    monitor-exit v3
    :try_end_4e
    .catchall {:try_start_45 .. :try_end_4e} :catchall_4c

    throw v0
.end method
