.class Lcom/android/server/AlarmManagerService$2;
.super Landroid/app/IAlarmListener$Stub;
.source "AlarmManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/AlarmManagerService;->onStart()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/AlarmManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/AlarmManagerService;)V
    .registers 2
    .param p1, "this$0"  # Lcom/android/server/AlarmManagerService;

    .line 1613
    iput-object p1, p0, Lcom/android/server/AlarmManagerService$2;->this$0:Lcom/android/server/AlarmManagerService;

    invoke-direct {p0}, Landroid/app/IAlarmListener$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public doAlarm(Landroid/app/IAlarmCompleteListener;)V
    .registers 6
    .param p1, "callback"  # Landroid/app/IAlarmCompleteListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1623
    iget-object v0, p0, Lcom/android/server/AlarmManagerService$2;->this$0:Lcom/android/server/AlarmManagerService;

    iget-object v0, v0, Lcom/android/server/AlarmManagerService;->mHandler:Lcom/android/server/AlarmManagerService$AlarmHandler;

    new-instance v1, Lcom/android/server/-$$Lambda$AlarmManagerService$2$Eo-D98J-N9R2METkD-12gPs320c;

    invoke-direct {v1, p0, p1}, Lcom/android/server/-$$Lambda$AlarmManagerService$2$Eo-D98J-N9R2METkD-12gPs320c;-><init>(Lcom/android/server/AlarmManagerService$2;Landroid/app/IAlarmCompleteListener;)V

    invoke-virtual {v0, v1}, Lcom/android/server/AlarmManagerService$AlarmHandler;->post(Ljava/lang/Runnable;)Z

    .line 1631
    iget-object v0, p0, Lcom/android/server/AlarmManagerService$2;->this$0:Lcom/android/server/AlarmManagerService;

    iget-object v0, v0, Lcom/android/server/AlarmManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1632
    :try_start_11
    iget-object v1, p0, Lcom/android/server/AlarmManagerService$2;->this$0:Lcom/android/server/AlarmManagerService;

    iget-object v2, p0, Lcom/android/server/AlarmManagerService$2;->this$0:Lcom/android/server/AlarmManagerService;

    invoke-static {v2}, Lcom/android/server/AlarmManagerService;->access$100(Lcom/android/server/AlarmManagerService;)Lcom/android/server/AlarmManagerService$Injector;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/AlarmManagerService$Injector;->getCurrentTimeMillis()J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Lcom/android/server/AlarmManagerService;->access$702(Lcom/android/server/AlarmManagerService;J)J

    .line 1633
    monitor-exit v0
    :try_end_21
    .catchall {:try_start_11 .. :try_end_21} :catchall_29

    .line 1634
    iget-object v0, p0, Lcom/android/server/AlarmManagerService$2;->this$0:Lcom/android/server/AlarmManagerService;

    iget-object v0, v0, Lcom/android/server/AlarmManagerService;->mClockReceiver:Lcom/android/server/AlarmManagerService$ClockReceiver;

    invoke-virtual {v0}, Lcom/android/server/AlarmManagerService$ClockReceiver;->scheduleTimeTickEvent()V

    .line 1635
    return-void

    .line 1633
    :catchall_29
    move-exception v1

    :try_start_2a
    monitor-exit v0
    :try_end_2b
    .catchall {:try_start_2a .. :try_end_2b} :catchall_29

    throw v1
.end method

.method public synthetic lambda$doAlarm$0$AlarmManagerService$2(Landroid/app/IAlarmCompleteListener;)V
    .registers 5
    .param p1, "callback"  # Landroid/app/IAlarmCompleteListener;

    .line 1624
    iget-object v0, p0, Lcom/android/server/AlarmManagerService$2;->this$0:Lcom/android/server/AlarmManagerService;

    invoke-virtual {v0}, Lcom/android/server/AlarmManagerService;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/AlarmManagerService$2;->this$0:Lcom/android/server/AlarmManagerService;

    iget-object v1, v1, Lcom/android/server/AlarmManagerService;->mTimeTickIntent:Landroid/content/Intent;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 1627
    :try_start_f
    invoke-interface {p1, p0}, Landroid/app/IAlarmCompleteListener;->alarmComplete(Landroid/os/IBinder;)V
    :try_end_12
    .catch Landroid/os/RemoteException; {:try_start_f .. :try_end_12} :catch_13

    .line 1628
    :goto_12
    goto :goto_15

    :catch_13
    move-exception v0

    goto :goto_12

    .line 1629
    :goto_15
    return-void
.end method
