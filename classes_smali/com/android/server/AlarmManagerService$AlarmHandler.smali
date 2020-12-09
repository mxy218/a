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

.field public static final REMOVE_FOR_CANCELED:I = 0x8

.field public static final REMOVE_FOR_STOPPED:I = 0x7

.field public static final REPORT_ALARMS_ACTIVE:I = 0x4

.field public static final SEND_NEXT_ALARM_CLOCK_CHANGED:I = 0x2


# instance fields
.field final synthetic this$0:Lcom/android/server/AlarmManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/AlarmManagerService;)V
    .registers 2

    .line 4152
    iput-object p1, p0, Lcom/android/server/AlarmManagerService$AlarmHandler;->this$0:Lcom/android/server/AlarmManagerService;

    .line 4153
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object p1

    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 4154
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 10

    .line 4162
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x1

    packed-switch v0, :pswitch_data_104

    goto/16 :goto_102

    .line 4234
    :pswitch_a  #0x8
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/app/PendingIntent;

    .line 4235
    iget-object v0, p0, Lcom/android/server/AlarmManagerService$AlarmHandler;->this$0:Lcom/android/server/AlarmManagerService;

    iget-object v0, v0, Lcom/android/server/AlarmManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 4236
    :try_start_13
    iget-object v1, p0, Lcom/android/server/AlarmManagerService$AlarmHandler;->this$0:Lcom/android/server/AlarmManagerService;

    invoke-virtual {v1, p1, v2}, Lcom/android/server/AlarmManagerService;->removeLocked(Landroid/app/PendingIntent;Landroid/app/IAlarmListener;)V

    .line 4237
    monitor-exit v0

    .line 4238
    goto/16 :goto_102

    .line 4237
    :catchall_1b
    move-exception p1

    monitor-exit v0
    :try_end_1d
    .catchall {:try_start_13 .. :try_end_1d} :catchall_1b

    throw p1

    .line 4228
    :pswitch_1e  #0x7
    iget-object v0, p0, Lcom/android/server/AlarmManagerService$AlarmHandler;->this$0:Lcom/android/server/AlarmManagerService;

    iget-object v0, v0, Lcom/android/server/AlarmManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 4229
    :try_start_23
    iget-object v1, p0, Lcom/android/server/AlarmManagerService$AlarmHandler;->this$0:Lcom/android/server/AlarmManagerService;

    iget p1, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v1, p1}, Lcom/android/server/AlarmManagerService;->removeForStoppedLocked(I)V

    .line 4230
    monitor-exit v0

    .line 4231
    goto/16 :goto_102

    .line 4230
    :catchall_2d
    move-exception p1

    monitor-exit v0
    :try_end_2f
    .catchall {:try_start_23 .. :try_end_2f} :catchall_2d

    throw p1

    .line 4207
    :pswitch_30  #0x6
    iget-object v0, p0, Lcom/android/server/AlarmManagerService$AlarmHandler;->this$0:Lcom/android/server/AlarmManagerService;

    iget-object v0, v0, Lcom/android/server/AlarmManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 4208
    :try_start_35
    iget-object v1, p0, Lcom/android/server/AlarmManagerService$AlarmHandler;->this$0:Lcom/android/server/AlarmManagerService;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-static {v1, p1}, Lcom/android/server/AlarmManagerService;->access$2602(Lcom/android/server/AlarmManagerService;Z)Z

    .line 4209
    iget-object p1, p0, Lcom/android/server/AlarmManagerService$AlarmHandler;->this$0:Lcom/android/server/AlarmManagerService;

    invoke-virtual {p1, v2}, Lcom/android/server/AlarmManagerService;->reorderAlarmsBasedOnStandbyBuckets(Landroid/util/ArraySet;)Z

    move-result p1

    if-eqz p1, :cond_54

    .line 4210
    iget-object p1, p0, Lcom/android/server/AlarmManagerService$AlarmHandler;->this$0:Lcom/android/server/AlarmManagerService;

    invoke-virtual {p1}, Lcom/android/server/AlarmManagerService;->rescheduleKernelAlarmsLocked()V

    .line 4211
    iget-object p1, p0, Lcom/android/server/AlarmManagerService$AlarmHandler;->this$0:Lcom/android/server/AlarmManagerService;

    invoke-static {p1}, Lcom/android/server/AlarmManagerService;->access$2300(Lcom/android/server/AlarmManagerService;)V

    .line 4213
    :cond_54
    monitor-exit v0

    .line 4214
    goto/16 :goto_102

    .line 4213
    :catchall_57
    move-exception p1

    monitor-exit v0
    :try_end_59
    .catchall {:try_start_35 .. :try_end_59} :catchall_57

    throw p1

    .line 4217
    :pswitch_5a  #0x5
    iget-object v0, p0, Lcom/android/server/AlarmManagerService$AlarmHandler;->this$0:Lcom/android/server/AlarmManagerService;

    iget-object v0, v0, Lcom/android/server/AlarmManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 4218
    :try_start_5f
    new-instance v1, Landroid/util/ArraySet;

    invoke-direct {v1}, Landroid/util/ArraySet;-><init>()V

    .line 4219
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    iget p1, p1, Landroid/os/Message;->arg1:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 4220
    iget-object p1, p0, Lcom/android/server/AlarmManagerService$AlarmHandler;->this$0:Lcom/android/server/AlarmManagerService;

    invoke-virtual {p1, v1}, Lcom/android/server/AlarmManagerService;->reorderAlarmsBasedOnStandbyBuckets(Landroid/util/ArraySet;)Z

    move-result p1

    if-eqz p1, :cond_87

    .line 4221
    iget-object p1, p0, Lcom/android/server/AlarmManagerService$AlarmHandler;->this$0:Lcom/android/server/AlarmManagerService;

    invoke-virtual {p1}, Lcom/android/server/AlarmManagerService;->rescheduleKernelAlarmsLocked()V

    .line 4222
    iget-object p1, p0, Lcom/android/server/AlarmManagerService$AlarmHandler;->this$0:Lcom/android/server/AlarmManagerService;

    invoke-static {p1}, Lcom/android/server/AlarmManagerService;->access$2300(Lcom/android/server/AlarmManagerService;)V

    .line 4224
    :cond_87
    monitor-exit v0

    .line 4225
    goto/16 :goto_102

    .line 4224
    :catchall_8a
    move-exception p1

    monitor-exit v0
    :try_end_8c
    .catchall {:try_start_5f .. :try_end_8c} :catchall_8a

    throw p1

    .line 4201
    :pswitch_8d  #0x4
    iget-object v0, p0, Lcom/android/server/AlarmManagerService$AlarmHandler;->this$0:Lcom/android/server/AlarmManagerService;

    iget-object v0, v0, Lcom/android/server/AlarmManagerService;->mLocalDeviceIdleController:Lcom/android/server/DeviceIdleController$LocalService;

    if-eqz v0, :cond_102

    .line 4202
    iget-object v0, p0, Lcom/android/server/AlarmManagerService$AlarmHandler;->this$0:Lcom/android/server/AlarmManagerService;

    iget-object v0, v0, Lcom/android/server/AlarmManagerService;->mLocalDeviceIdleController:Lcom/android/server/DeviceIdleController$LocalService;

    iget p1, p1, Landroid/os/Message;->arg1:I

    if-eqz p1, :cond_9c

    move v1, v3

    :cond_9c
    invoke-virtual {v0, v1}, Lcom/android/server/DeviceIdleController$LocalService;->setAlarmsActive(Z)V

    goto :goto_102

    .line 4197
    :pswitch_a0  #0x3
    iget-object v0, p0, Lcom/android/server/AlarmManagerService$AlarmHandler;->this$0:Lcom/android/server/AlarmManagerService;

    iget-object v0, v0, Lcom/android/server/AlarmManagerService;->mDeliveryTracker:Lcom/android/server/AlarmManagerService$DeliveryTracker;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/os/IBinder;

    invoke-virtual {v0, p1}, Lcom/android/server/AlarmManagerService$DeliveryTracker;->alarmTimedOut(Landroid/os/IBinder;)V

    .line 4198
    goto :goto_102

    .line 4193
    :pswitch_ac  #0x2
    iget-object p1, p0, Lcom/android/server/AlarmManagerService$AlarmHandler;->this$0:Lcom/android/server/AlarmManagerService;

    invoke-static {p1}, Lcom/android/server/AlarmManagerService;->access$2500(Lcom/android/server/AlarmManagerService;)V

    .line 4194
    goto :goto_102

    .line 4168
    :pswitch_b2  #0x1
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 4169
    iget-object v0, p0, Lcom/android/server/AlarmManagerService$AlarmHandler;->this$0:Lcom/android/server/AlarmManagerService;

    iget-object v0, v0, Lcom/android/server/AlarmManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 4170
    :try_start_bc
    iget-object v4, p0, Lcom/android/server/AlarmManagerService$AlarmHandler;->this$0:Lcom/android/server/AlarmManagerService;

    invoke-static {v4}, Lcom/android/server/AlarmManagerService;->access$100(Lcom/android/server/AlarmManagerService;)Lcom/android/server/AlarmManagerService$Injector;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/server/AlarmManagerService$Injector;->getElapsedRealtime()J

    move-result-wide v4

    .line 4171
    iget-object v6, p0, Lcom/android/server/AlarmManagerService$AlarmHandler;->this$0:Lcom/android/server/AlarmManagerService;

    invoke-virtual {v6, p1, v4, v5}, Lcom/android/server/AlarmManagerService;->triggerAlarmsLocked(Ljava/util/ArrayList;J)Z

    .line 4172
    iget-object v4, p0, Lcom/android/server/AlarmManagerService$AlarmHandler;->this$0:Lcom/android/server/AlarmManagerService;

    invoke-static {v4}, Lcom/android/server/AlarmManagerService;->access$2300(Lcom/android/server/AlarmManagerService;)V

    .line 4173
    monitor-exit v0
    :try_end_d1
    .catchall {:try_start_bc .. :try_end_d1} :catchall_ff

    .line 4176
    nop

    :goto_d2
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_fe

    .line 4177
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/AlarmManagerService$Alarm;

    .line 4179
    :try_start_de
    iget-object v4, v0, Lcom/android/server/AlarmManagerService$Alarm;->operation:Landroid/app/PendingIntent;

    invoke-virtual {v4}, Landroid/app/PendingIntent;->send()V
    :try_end_e3
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_de .. :try_end_e3} :catch_e4

    .line 4186
    goto :goto_f4

    .line 4180
    :catch_e4
    move-exception v4

    .line 4181
    iget-wide v4, v0, Lcom/android/server/AlarmManagerService$Alarm;->repeatInterval:J

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-lez v4, :cond_f4

    .line 4184
    iget-object v4, p0, Lcom/android/server/AlarmManagerService$AlarmHandler;->this$0:Lcom/android/server/AlarmManagerService;

    iget-object v5, v0, Lcom/android/server/AlarmManagerService$Alarm;->operation:Landroid/app/PendingIntent;

    invoke-virtual {v4, v5, v2}, Lcom/android/server/AlarmManagerService;->removeImpl(Landroid/app/PendingIntent;Landroid/app/IAlarmListener;)V

    .line 4187
    :cond_f4
    :goto_f4
    iget-object v4, p0, Lcom/android/server/AlarmManagerService$AlarmHandler;->this$0:Lcom/android/server/AlarmManagerService;

    iget v0, v0, Lcom/android/server/AlarmManagerService$Alarm;->uid:I

    invoke-static {v4, v0, v3}, Lcom/android/server/AlarmManagerService;->access$200(Lcom/android/server/AlarmManagerService;II)V

    .line 4176
    add-int/lit8 v1, v1, 0x1

    goto :goto_d2

    .line 4189
    :cond_fe
    goto :goto_102

    .line 4173
    :catchall_ff
    move-exception p1

    :try_start_100
    monitor-exit v0
    :try_end_101
    .catchall {:try_start_100 .. :try_end_101} :catchall_ff

    throw p1

    .line 4244
    :cond_102
    :goto_102
    return-void

    nop

    :pswitch_data_104
    .packed-switch 0x1
        :pswitch_b2  #00000001
        :pswitch_ac  #00000002
        :pswitch_a0  #00000003
        :pswitch_8d  #00000004
        :pswitch_5a  #00000005
        :pswitch_30  #00000006
        :pswitch_1e  #00000007
        :pswitch_a  #00000008
    .end packed-switch
.end method

.method public postRemoveForStopped(I)V
    .registers 4

    .line 4157
    const/4 v0, 0x7

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Lcom/android/server/AlarmManagerService$AlarmHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 4158
    return-void
.end method
