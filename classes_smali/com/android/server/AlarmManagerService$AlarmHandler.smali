.class Lcom/android/server/AlarmManagerService$AlarmHandler;
.super Landroid/os/Handler;
.source "AlarmManagerService.java"


# annotations
.annotation build Lcom/android/internal/annotations/VisibleForTesting;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/AlarmManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "AlarmHandler"
.end annotation


# static fields
.field public static final ALARM_EVENT:I = 0x1

.field public static final APP_STANDBY_BUCKET_CHANGED:I = 0x5

.field public static final APP_STANDBY_PAROLE_CHANGED:I = 0x6

.field public static final LISTENER_TIMEOUT:I = 0x3

.field public static final REMOVE_FOR_STOPPED:I = 0x7

.field public static final REPORT_ALARMS_ACTIVE:I = 0x4

.field public static final SEND_NEXT_ALARM_CLOCK_CHANGED:I = 0x2

.field public static final UNREGISTER_CANCEL_LISTENER:I = 0x8


# instance fields
.field final synthetic this$0:Lcom/android/server/AlarmManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/AlarmManagerService;)V
    .registers 3
    .param p1, "this$0"  # Lcom/android/server/AlarmManagerService;

    .line 4408
    iput-object p1, p0, Lcom/android/server/AlarmManagerService$AlarmHandler;->this$0:Lcom/android/server/AlarmManagerService;

    .line 4409
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 4410
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 12
    .param p1, "msg"  # Landroid/os/Message;

    .line 4418
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    packed-switch v0, :pswitch_data_fe

    goto/16 :goto_fd

    .line 4490
    :pswitch_9  #0x8
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/app/PendingIntent;

    .line 4491
    .local v0, "pi":Landroid/app/PendingIntent;
    if-eqz v0, :cond_fd

    .line 4492
    iget-object v1, p0, Lcom/android/server/AlarmManagerService$AlarmHandler;->this$0:Lcom/android/server/AlarmManagerService;

    iget-object v1, v1, Lcom/android/server/AlarmManagerService;->mOperationCancelListener:Landroid/app/PendingIntent$CancelListener;

    invoke-virtual {v0, v1}, Landroid/app/PendingIntent;->unregisterCancelListener(Landroid/app/PendingIntent$CancelListener;)V

    goto/16 :goto_fd

    .line 4484
    .end local v0  # "pi":Landroid/app/PendingIntent;
    :pswitch_18  #0x7
    iget-object v0, p0, Lcom/android/server/AlarmManagerService$AlarmHandler;->this$0:Lcom/android/server/AlarmManagerService;

    iget-object v0, v0, Lcom/android/server/AlarmManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 4485
    :try_start_1d
    iget-object v1, p0, Lcom/android/server/AlarmManagerService$AlarmHandler;->this$0:Lcom/android/server/AlarmManagerService;

    iget v2, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v1, v2}, Lcom/android/server/AlarmManagerService;->removeForStoppedLocked(I)V

    .line 4486
    monitor-exit v0

    .line 4487
    goto/16 :goto_fd

    .line 4486
    :catchall_27
    move-exception v1

    monitor-exit v0
    :try_end_29
    .catchall {:try_start_1d .. :try_end_29} :catchall_27

    throw v1

    .line 4463
    :pswitch_2a  #0x6
    iget-object v0, p0, Lcom/android/server/AlarmManagerService$AlarmHandler;->this$0:Lcom/android/server/AlarmManagerService;

    iget-object v0, v0, Lcom/android/server/AlarmManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 4464
    :try_start_2f
    iget-object v2, p0, Lcom/android/server/AlarmManagerService$AlarmHandler;->this$0:Lcom/android/server/AlarmManagerService;

    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    invoke-static {v2, v3}, Lcom/android/server/AlarmManagerService;->access$3002(Lcom/android/server/AlarmManagerService;Z)Z

    .line 4465
    iget-object v2, p0, Lcom/android/server/AlarmManagerService$AlarmHandler;->this$0:Lcom/android/server/AlarmManagerService;

    invoke-virtual {v2, v1}, Lcom/android/server/AlarmManagerService;->reorderAlarmsBasedOnStandbyBuckets(Landroid/util/ArraySet;)Z

    move-result v1

    if-eqz v1, :cond_4e

    .line 4466
    iget-object v1, p0, Lcom/android/server/AlarmManagerService$AlarmHandler;->this$0:Lcom/android/server/AlarmManagerService;

    invoke-virtual {v1}, Lcom/android/server/AlarmManagerService;->rescheduleKernelAlarmsLocked()V

    .line 4467
    iget-object v1, p0, Lcom/android/server/AlarmManagerService$AlarmHandler;->this$0:Lcom/android/server/AlarmManagerService;

    invoke-static {v1}, Lcom/android/server/AlarmManagerService;->access$2700(Lcom/android/server/AlarmManagerService;)V

    .line 4469
    :cond_4e
    monitor-exit v0

    .line 4470
    goto/16 :goto_fd

    .line 4469
    :catchall_51
    move-exception v1

    monitor-exit v0
    :try_end_53
    .catchall {:try_start_2f .. :try_end_53} :catchall_51

    throw v1

    .line 4473
    :pswitch_54  #0x5
    iget-object v0, p0, Lcom/android/server/AlarmManagerService$AlarmHandler;->this$0:Lcom/android/server/AlarmManagerService;

    iget-object v0, v0, Lcom/android/server/AlarmManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 4474
    :try_start_59
    new-instance v1, Landroid/util/ArraySet;

    invoke-direct {v1}, Landroid/util/ArraySet;-><init>()V

    .line 4475
    .local v1, "filterPackages":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Landroid/util/Pair<Ljava/lang/String;Ljava/lang/Integer;>;>;"
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    iget v3, p1, Landroid/os/Message;->arg1:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 4476
    iget-object v2, p0, Lcom/android/server/AlarmManagerService$AlarmHandler;->this$0:Lcom/android/server/AlarmManagerService;

    invoke-virtual {v2, v1}, Lcom/android/server/AlarmManagerService;->reorderAlarmsBasedOnStandbyBuckets(Landroid/util/ArraySet;)Z

    move-result v2

    if-eqz v2, :cond_81

    .line 4477
    iget-object v2, p0, Lcom/android/server/AlarmManagerService$AlarmHandler;->this$0:Lcom/android/server/AlarmManagerService;

    invoke-virtual {v2}, Lcom/android/server/AlarmManagerService;->rescheduleKernelAlarmsLocked()V

    .line 4478
    iget-object v2, p0, Lcom/android/server/AlarmManagerService$AlarmHandler;->this$0:Lcom/android/server/AlarmManagerService;

    invoke-static {v2}, Lcom/android/server/AlarmManagerService;->access$2700(Lcom/android/server/AlarmManagerService;)V

    .line 4480
    .end local v1  # "filterPackages":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Landroid/util/Pair<Ljava/lang/String;Ljava/lang/Integer;>;>;"
    :cond_81
    monitor-exit v0

    .line 4481
    goto/16 :goto_fd

    .line 4480
    :catchall_84
    move-exception v1

    monitor-exit v0
    :try_end_86
    .catchall {:try_start_59 .. :try_end_86} :catchall_84

    throw v1

    .line 4457
    :pswitch_87  #0x4
    iget-object v0, p0, Lcom/android/server/AlarmManagerService$AlarmHandler;->this$0:Lcom/android/server/AlarmManagerService;

    iget-object v0, v0, Lcom/android/server/AlarmManagerService;->mLocalDeviceIdleController:Lcom/android/server/DeviceIdleController$LocalService;

    if-eqz v0, :cond_fd

    .line 4458
    iget-object v0, p0, Lcom/android/server/AlarmManagerService$AlarmHandler;->this$0:Lcom/android/server/AlarmManagerService;

    iget-object v0, v0, Lcom/android/server/AlarmManagerService;->mLocalDeviceIdleController:Lcom/android/server/DeviceIdleController$LocalService;

    iget v1, p1, Landroid/os/Message;->arg1:I

    if-eqz v1, :cond_96

    goto :goto_97

    :cond_96
    const/4 v2, 0x0

    :goto_97
    invoke-virtual {v0, v2}, Lcom/android/server/DeviceIdleController$LocalService;->setAlarmsActive(Z)V

    goto :goto_fd

    .line 4453
    :pswitch_9b  #0x3
    iget-object v0, p0, Lcom/android/server/AlarmManagerService$AlarmHandler;->this$0:Lcom/android/server/AlarmManagerService;

    iget-object v0, v0, Lcom/android/server/AlarmManagerService;->mDeliveryTracker:Lcom/android/server/AlarmManagerService$DeliveryTracker;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/IBinder;

    invoke-virtual {v0, v1}, Lcom/android/server/AlarmManagerService$DeliveryTracker;->alarmTimedOut(Landroid/os/IBinder;)V

    .line 4454
    goto :goto_fd

    .line 4449
    :pswitch_a7  #0x2
    iget-object v0, p0, Lcom/android/server/AlarmManagerService$AlarmHandler;->this$0:Lcom/android/server/AlarmManagerService;

    invoke-static {v0}, Lcom/android/server/AlarmManagerService;->access$2900(Lcom/android/server/AlarmManagerService;)V

    .line 4450
    goto :goto_fd

    .line 4424
    :pswitch_ad  #0x1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4425
    .local v0, "triggerList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AlarmManagerService$Alarm;>;"
    iget-object v3, p0, Lcom/android/server/AlarmManagerService$AlarmHandler;->this$0:Lcom/android/server/AlarmManagerService;

    iget-object v3, v3, Lcom/android/server/AlarmManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 4426
    :try_start_b7
    iget-object v4, p0, Lcom/android/server/AlarmManagerService$AlarmHandler;->this$0:Lcom/android/server/AlarmManagerService;

    invoke-static {v4}, Lcom/android/server/AlarmManagerService;->access$100(Lcom/android/server/AlarmManagerService;)Lcom/android/server/AlarmManagerService$Injector;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/server/AlarmManagerService$Injector;->getElapsedRealtime()J

    move-result-wide v4

    .line 4427
    .local v4, "nowELAPSED":J
    iget-object v6, p0, Lcom/android/server/AlarmManagerService$AlarmHandler;->this$0:Lcom/android/server/AlarmManagerService;

    invoke-virtual {v6, v0, v4, v5}, Lcom/android/server/AlarmManagerService;->triggerAlarmsLocked(Ljava/util/ArrayList;J)Z

    .line 4428
    iget-object v6, p0, Lcom/android/server/AlarmManagerService$AlarmHandler;->this$0:Lcom/android/server/AlarmManagerService;

    invoke-static {v6}, Lcom/android/server/AlarmManagerService;->access$2700(Lcom/android/server/AlarmManagerService;)V

    .line 4429
    .end local v4  # "nowELAPSED":J
    monitor-exit v3
    :try_end_cc
    .catchall {:try_start_b7 .. :try_end_cc} :catchall_fa

    .line 4432
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_cd
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v3, v4, :cond_f9

    .line 4433
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/AlarmManagerService$Alarm;

    .line 4435
    .local v4, "alarm":Lcom/android/server/AlarmManagerService$Alarm;
    :try_start_d9
    iget-object v5, v4, Lcom/android/server/AlarmManagerService$Alarm;->operation:Landroid/app/PendingIntent;

    invoke-virtual {v5}, Landroid/app/PendingIntent;->send()V
    :try_end_de
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_d9 .. :try_end_de} :catch_df

    .line 4442
    goto :goto_ef

    .line 4436
    :catch_df
    move-exception v5

    .line 4437
    .local v5, "e":Landroid/app/PendingIntent$CanceledException;
    iget-wide v6, v4, Lcom/android/server/AlarmManagerService$Alarm;->repeatInterval:J

    const-wide/16 v8, 0x0

    cmp-long v6, v6, v8

    if-lez v6, :cond_ef

    .line 4440
    iget-object v6, p0, Lcom/android/server/AlarmManagerService$AlarmHandler;->this$0:Lcom/android/server/AlarmManagerService;

    iget-object v7, v4, Lcom/android/server/AlarmManagerService$Alarm;->operation:Landroid/app/PendingIntent;

    invoke-virtual {v6, v7, v1}, Lcom/android/server/AlarmManagerService;->removeImpl(Landroid/app/PendingIntent;Landroid/app/IAlarmListener;)V

    .line 4443
    .end local v5  # "e":Landroid/app/PendingIntent$CanceledException;
    :cond_ef
    :goto_ef
    iget-object v5, p0, Lcom/android/server/AlarmManagerService$AlarmHandler;->this$0:Lcom/android/server/AlarmManagerService;

    iget v6, v4, Lcom/android/server/AlarmManagerService$Alarm;->uid:I

    invoke-static {v5, v6, v2}, Lcom/android/server/AlarmManagerService;->access$200(Lcom/android/server/AlarmManagerService;II)V

    .line 4432
    .end local v4  # "alarm":Lcom/android/server/AlarmManagerService$Alarm;
    add-int/lit8 v3, v3, 0x1

    goto :goto_cd

    .line 4445
    .end local v3  # "i":I
    :cond_f9
    goto :goto_fd

    .line 4429
    :catchall_fa
    move-exception v1

    :try_start_fb
    monitor-exit v3
    :try_end_fc
    .catchall {:try_start_fb .. :try_end_fc} :catchall_fa

    throw v1

    .line 4500
    .end local v0  # "triggerList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AlarmManagerService$Alarm;>;"
    :cond_fd
    :goto_fd
    return-void

    :pswitch_data_fe
    .packed-switch 0x1
        :pswitch_ad  #00000001
        :pswitch_a7  #00000002
        :pswitch_9b  #00000003
        :pswitch_87  #00000004
        :pswitch_54  #00000005
        :pswitch_2a  #00000006
        :pswitch_18  #00000007
        :pswitch_9  #00000008
    .end packed-switch
.end method

.method public postRemoveForStopped(I)V
    .registers 4
    .param p1, "uid"  # I

    .line 4413
    const/4 v0, 0x7

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Lcom/android/server/AlarmManagerService$AlarmHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 4414
    return-void
.end method
