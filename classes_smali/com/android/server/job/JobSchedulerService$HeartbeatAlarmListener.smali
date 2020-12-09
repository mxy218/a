.class Lcom/android/server/job/JobSchedulerService$HeartbeatAlarmListener;
.super Ljava/lang/Object;
.source "JobSchedulerService.java"

# interfaces
.implements Landroid/app/AlarmManager$OnAlarmListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/job/JobSchedulerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "HeartbeatAlarmListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/job/JobSchedulerService;


# direct methods
.method constructor <init>(Lcom/android/server/job/JobSchedulerService;)V
    .registers 2

    .line 2134
    iput-object p1, p0, Lcom/android/server/job/JobSchedulerService$HeartbeatAlarmListener;->this$0:Lcom/android/server/job/JobSchedulerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAlarm()V
    .registers 9

    .line 2138
    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService$HeartbeatAlarmListener;->this$0:Lcom/android/server/job/JobSchedulerService;

    iget-object v0, v0, Lcom/android/server/job/JobSchedulerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2139
    :try_start_5
    sget-object v1, Lcom/android/server/job/JobSchedulerService;->sElapsedRealtimeClock:Ljava/time/Clock;

    invoke-virtual {v1}, Ljava/time/Clock;->millis()J

    move-result-wide v1

    iget-object v3, p0, Lcom/android/server/job/JobSchedulerService$HeartbeatAlarmListener;->this$0:Lcom/android/server/job/JobSchedulerService;

    iget-wide v3, v3, Lcom/android/server/job/JobSchedulerService;->mLastHeartbeatTime:J

    sub-long/2addr v1, v3

    .line 2140
    iget-object v3, p0, Lcom/android/server/job/JobSchedulerService$HeartbeatAlarmListener;->this$0:Lcom/android/server/job/JobSchedulerService;

    iget-object v3, v3, Lcom/android/server/job/JobSchedulerService;->mConstants:Lcom/android/server/job/JobSchedulerService$Constants;

    iget-wide v3, v3, Lcom/android/server/job/JobSchedulerService$Constants;->STANDBY_HEARTBEAT_TIME:J

    div-long/2addr v1, v3

    .line 2141
    const-wide/16 v3, 0x0

    cmp-long v3, v1, v3

    if-lez v3, :cond_30

    .line 2142
    iget-object v3, p0, Lcom/android/server/job/JobSchedulerService$HeartbeatAlarmListener;->this$0:Lcom/android/server/job/JobSchedulerService;

    iget-wide v4, v3, Lcom/android/server/job/JobSchedulerService;->mLastHeartbeatTime:J

    iget-object v6, p0, Lcom/android/server/job/JobSchedulerService$HeartbeatAlarmListener;->this$0:Lcom/android/server/job/JobSchedulerService;

    iget-object v6, v6, Lcom/android/server/job/JobSchedulerService;->mConstants:Lcom/android/server/job/JobSchedulerService$Constants;

    iget-wide v6, v6, Lcom/android/server/job/JobSchedulerService$Constants;->STANDBY_HEARTBEAT_TIME:J

    mul-long/2addr v6, v1

    add-long/2addr v4, v6

    iput-wide v4, v3, Lcom/android/server/job/JobSchedulerService;->mLastHeartbeatTime:J

    .line 2143
    iget-object v3, p0, Lcom/android/server/job/JobSchedulerService$HeartbeatAlarmListener;->this$0:Lcom/android/server/job/JobSchedulerService;

    invoke-virtual {v3, v1, v2}, Lcom/android/server/job/JobSchedulerService;->advanceHeartbeatLocked(J)V

    .line 2145
    :cond_30
    monitor-exit v0
    :try_end_31
    .catchall {:try_start_5 .. :try_end_31} :catchall_37

    .line 2146
    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService$HeartbeatAlarmListener;->this$0:Lcom/android/server/job/JobSchedulerService;

    invoke-virtual {v0}, Lcom/android/server/job/JobSchedulerService;->setNextHeartbeatAlarm()V

    .line 2147
    return-void

    .line 2145
    :catchall_37
    move-exception v1

    :try_start_38
    monitor-exit v0
    :try_end_39
    .catchall {:try_start_38 .. :try_end_39} :catchall_37

    throw v1
.end method
