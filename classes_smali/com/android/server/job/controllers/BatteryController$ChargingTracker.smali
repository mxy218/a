.class public final Lcom/android/server/job/controllers/BatteryController$ChargingTracker;
.super Landroid/content/BroadcastReceiver;
.source "BatteryController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/job/controllers/BatteryController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "ChargingTracker"
.end annotation


# instance fields
.field private mBatteryHealthy:Z

.field private mCharging:Z

.field private mLastBatterySeq:I

.field private mMonitor:Landroid/content/BroadcastReceiver;

.field final synthetic this$0:Lcom/android/server/job/controllers/BatteryController;


# direct methods
.method public constructor <init>(Lcom/android/server/job/controllers/BatteryController;)V
    .registers 2

    .line 123
    iput-object p1, p0, Lcom/android/server/job/controllers/BatteryController$ChargingTracker;->this$0:Lcom/android/server/job/controllers/BatteryController;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 119
    const/4 p1, -0x1

    iput p1, p0, Lcom/android/server/job/controllers/BatteryController$ChargingTracker;->mLastBatterySeq:I

    .line 124
    return-void
.end method


# virtual methods
.method public getSeq()I
    .registers 2

    .line 177
    iget v0, p0, Lcom/android/server/job/controllers/BatteryController$ChargingTracker;->mLastBatterySeq:I

    return v0
.end method

.method public isBatteryNotLow()Z
    .registers 2

    .line 169
    iget-boolean v0, p0, Lcom/android/server/job/controllers/BatteryController$ChargingTracker;->mBatteryHealthy:Z

    return v0
.end method

.method public isMonitoring()Z
    .registers 2

    .line 173
    iget-object v0, p0, Lcom/android/server/job/controllers/BatteryController$ChargingTracker;->mMonitor:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method public isOnStablePower()Z
    .registers 2

    .line 165
    iget-boolean v0, p0, Lcom/android/server/job/controllers/BatteryController$ChargingTracker;->mCharging:Z

    if-eqz v0, :cond_a

    iget-boolean v0, p0, Lcom/android/server/job/controllers/BatteryController$ChargingTracker;->mBatteryHealthy:Z

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 3

    .line 182
    invoke-virtual {p0, p2}, Lcom/android/server/job/controllers/BatteryController$ChargingTracker;->onReceiveInternal(Landroid/content/Intent;)V

    .line 183
    return-void
.end method

.method public onReceiveInternal(Landroid/content/Intent;)V
    .registers 9
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 187
    iget-object v0, p0, Lcom/android/server/job/controllers/BatteryController$ChargingTracker;->this$0:Lcom/android/server/job/controllers/BatteryController;

    iget-object v0, v0, Lcom/android/server/job/controllers/BatteryController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 188
    :try_start_5
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    .line 189
    const-string v2, "android.intent.action.BATTERY_LOW"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_3d

    .line 190
    invoke-static {}, Lcom/android/server/job/controllers/BatteryController;->access$000()Z

    move-result v1

    if-eqz v1, :cond_34

    .line 191
    const-string v1, "JobScheduler.Battery"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Battery life too low to do work. @ "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v4, Lcom/android/server/job/JobSchedulerService;->sElapsedRealtimeClock:Ljava/time/Clock;

    .line 192
    invoke-virtual {v4}, Ljava/time/Clock;->millis()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 191
    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 197
    :cond_34
    iput-boolean v3, p0, Lcom/android/server/job/controllers/BatteryController$ChargingTracker;->mBatteryHealthy:Z

    .line 198
    iget-object v1, p0, Lcom/android/server/job/controllers/BatteryController$ChargingTracker;->this$0:Lcom/android/server/job/controllers/BatteryController;

    invoke-static {v1}, Lcom/android/server/job/controllers/BatteryController;->access$100(Lcom/android/server/job/controllers/BatteryController;)V

    goto/16 :goto_be

    .line 199
    :cond_3d
    const-string v2, "android.intent.action.BATTERY_OKAY"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v4, 0x1

    if-eqz v2, :cond_70

    .line 200
    invoke-static {}, Lcom/android/server/job/controllers/BatteryController;->access$000()Z

    move-result v1

    if-eqz v1, :cond_68

    .line 201
    const-string v1, "JobScheduler.Battery"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Battery life healthy enough to do work. @ "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Lcom/android/server/job/JobSchedulerService;->sElapsedRealtimeClock:Ljava/time/Clock;

    .line 202
    invoke-virtual {v3}, Ljava/time/Clock;->millis()J

    move-result-wide v5

    invoke-virtual {v2, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 201
    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 204
    :cond_68
    iput-boolean v4, p0, Lcom/android/server/job/controllers/BatteryController$ChargingTracker;->mBatteryHealthy:Z

    .line 205
    iget-object v1, p0, Lcom/android/server/job/controllers/BatteryController$ChargingTracker;->this$0:Lcom/android/server/job/controllers/BatteryController;

    invoke-static {v1}, Lcom/android/server/job/controllers/BatteryController;->access$100(Lcom/android/server/job/controllers/BatteryController;)V

    goto :goto_be

    .line 206
    :cond_70
    const-string v2, "android.os.action.CHARGING"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a2

    .line 207
    invoke-static {}, Lcom/android/server/job/controllers/BatteryController;->access$000()Z

    move-result v1

    if-eqz v1, :cond_9a

    .line 208
    const-string v1, "JobScheduler.Battery"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Received charging intent, fired @ "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Lcom/android/server/job/JobSchedulerService;->sElapsedRealtimeClock:Ljava/time/Clock;

    .line 209
    invoke-virtual {v3}, Ljava/time/Clock;->millis()J

    move-result-wide v5

    invoke-virtual {v2, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 208
    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 211
    :cond_9a
    iput-boolean v4, p0, Lcom/android/server/job/controllers/BatteryController$ChargingTracker;->mCharging:Z

    .line 212
    iget-object v1, p0, Lcom/android/server/job/controllers/BatteryController$ChargingTracker;->this$0:Lcom/android/server/job/controllers/BatteryController;

    invoke-static {v1}, Lcom/android/server/job/controllers/BatteryController;->access$100(Lcom/android/server/job/controllers/BatteryController;)V

    goto :goto_be

    .line 213
    :cond_a2
    const-string v2, "android.os.action.DISCHARGING"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_be

    .line 214
    invoke-static {}, Lcom/android/server/job/controllers/BatteryController;->access$000()Z

    move-result v1

    if-eqz v1, :cond_b7

    .line 215
    const-string v1, "JobScheduler.Battery"

    const-string v2, "Disconnected from power."

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 217
    :cond_b7
    iput-boolean v3, p0, Lcom/android/server/job/controllers/BatteryController$ChargingTracker;->mCharging:Z

    .line 218
    iget-object v1, p0, Lcom/android/server/job/controllers/BatteryController$ChargingTracker;->this$0:Lcom/android/server/job/controllers/BatteryController;

    invoke-static {v1}, Lcom/android/server/job/controllers/BatteryController;->access$100(Lcom/android/server/job/controllers/BatteryController;)V

    .line 220
    :cond_be
    :goto_be
    const-string/jumbo v1, "seq"

    iget v2, p0, Lcom/android/server/job/controllers/BatteryController$ChargingTracker;->mLastBatterySeq:I

    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/android/server/job/controllers/BatteryController$ChargingTracker;->mLastBatterySeq:I

    .line 222
    monitor-exit v0

    .line 223
    return-void

    .line 222
    :catchall_cb
    move-exception p1

    monitor-exit v0
    :try_end_cd
    .catchall {:try_start_5 .. :try_end_cd} :catchall_cb

    throw p1
.end method

.method public setMonitorBatteryLocked(Z)V
    .registers 4

    .line 145
    if-eqz p1, :cond_21

    .line 146
    iget-object p1, p0, Lcom/android/server/job/controllers/BatteryController$ChargingTracker;->mMonitor:Landroid/content/BroadcastReceiver;

    if-nez p1, :cond_31

    .line 147
    new-instance p1, Lcom/android/server/job/controllers/BatteryController$ChargingTracker$1;

    invoke-direct {p1, p0}, Lcom/android/server/job/controllers/BatteryController$ChargingTracker$1;-><init>(Lcom/android/server/job/controllers/BatteryController$ChargingTracker;)V

    iput-object p1, p0, Lcom/android/server/job/controllers/BatteryController$ChargingTracker;->mMonitor:Landroid/content/BroadcastReceiver;

    .line 152
    new-instance p1, Landroid/content/IntentFilter;

    invoke-direct {p1}, Landroid/content/IntentFilter;-><init>()V

    .line 153
    const-string v0, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 154
    iget-object v0, p0, Lcom/android/server/job/controllers/BatteryController$ChargingTracker;->this$0:Lcom/android/server/job/controllers/BatteryController;

    iget-object v0, v0, Lcom/android/server/job/controllers/BatteryController;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/job/controllers/BatteryController$ChargingTracker;->mMonitor:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1, p1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 155
    goto :goto_31

    .line 157
    :cond_21
    iget-object p1, p0, Lcom/android/server/job/controllers/BatteryController$ChargingTracker;->mMonitor:Landroid/content/BroadcastReceiver;

    if-eqz p1, :cond_31

    .line 158
    iget-object p1, p0, Lcom/android/server/job/controllers/BatteryController$ChargingTracker;->this$0:Lcom/android/server/job/controllers/BatteryController;

    iget-object p1, p1, Lcom/android/server/job/controllers/BatteryController;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/android/server/job/controllers/BatteryController$ChargingTracker;->mMonitor:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 159
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/server/job/controllers/BatteryController$ChargingTracker;->mMonitor:Landroid/content/BroadcastReceiver;

    .line 162
    :cond_31
    :goto_31
    return-void
.end method

.method public startTracking()V
    .registers 3

    .line 127
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 130
    const-string v1, "android.intent.action.BATTERY_LOW"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 131
    const-string v1, "android.intent.action.BATTERY_OKAY"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 133
    const-string v1, "android.os.action.CHARGING"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 134
    const-string v1, "android.os.action.DISCHARGING"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 135
    iget-object v1, p0, Lcom/android/server/job/controllers/BatteryController$ChargingTracker;->this$0:Lcom/android/server/job/controllers/BatteryController;

    iget-object v1, v1, Lcom/android/server/job/controllers/BatteryController;->mContext:Landroid/content/Context;

    invoke-virtual {v1, p0, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 138
    const-class v0, Landroid/os/BatteryManagerInternal;

    .line 139
    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/BatteryManagerInternal;

    .line 140
    invoke-virtual {v0}, Landroid/os/BatteryManagerInternal;->getBatteryLevelLow()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/job/controllers/BatteryController$ChargingTracker;->mBatteryHealthy:Z

    .line 141
    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Landroid/os/BatteryManagerInternal;->isPowered(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/job/controllers/BatteryController$ChargingTracker;->mCharging:Z

    .line 142
    return-void
.end method
