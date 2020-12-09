.class final Lcom/android/server/job/controllers/QuotaController$ChargingTracker;
.super Landroid/content/BroadcastReceiver;
.source "QuotaController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/job/controllers/QuotaController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ChargingTracker"
.end annotation


# instance fields
.field private mCharging:Z

.field final synthetic this$0:Lcom/android/server/job/controllers/QuotaController;


# direct methods
.method constructor <init>(Lcom/android/server/job/controllers/QuotaController;)V
    .registers 2

    .line 1452
    iput-object p1, p0, Lcom/android/server/job/controllers/QuotaController$ChargingTracker;->this$0:Lcom/android/server/job/controllers/QuotaController;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 1453
    return-void
.end method


# virtual methods
.method public isCharging()Z
    .registers 2

    .line 1470
    iget-boolean v0, p0, Lcom/android/server/job/controllers/QuotaController$ChargingTracker;->mCharging:Z

    return v0
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 6

    .line 1475
    iget-object p1, p0, Lcom/android/server/job/controllers/QuotaController$ChargingTracker;->this$0:Lcom/android/server/job/controllers/QuotaController;

    iget-object p1, p1, Lcom/android/server/job/controllers/QuotaController;->mLock:Ljava/lang/Object;

    monitor-enter p1

    .line 1476
    :try_start_5
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p2

    .line 1477
    const-string v0, "android.os.action.CHARGING"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3c

    .line 1478
    invoke-static {}, Lcom/android/server/job/controllers/QuotaController;->access$1100()Z

    move-result p2

    if-eqz p2, :cond_33

    .line 1479
    const-string p2, "JobScheduler.Quota"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Received charging intent, fired @ "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/android/server/job/JobSchedulerService;->sElapsedRealtimeClock:Ljava/time/Clock;

    .line 1480
    invoke-virtual {v1}, Ljava/time/Clock;->millis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1479
    invoke-static {p2, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1482
    :cond_33
    const/4 p2, 0x1

    iput-boolean p2, p0, Lcom/android/server/job/controllers/QuotaController$ChargingTracker;->mCharging:Z

    .line 1483
    iget-object p2, p0, Lcom/android/server/job/controllers/QuotaController$ChargingTracker;->this$0:Lcom/android/server/job/controllers/QuotaController;

    invoke-static {p2}, Lcom/android/server/job/controllers/QuotaController;->access$1200(Lcom/android/server/job/controllers/QuotaController;)V

    goto :goto_59

    .line 1484
    :cond_3c
    const-string v0, "android.os.action.DISCHARGING"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_59

    .line 1485
    invoke-static {}, Lcom/android/server/job/controllers/QuotaController;->access$1100()Z

    move-result p2

    if-eqz p2, :cond_51

    .line 1486
    const-string p2, "JobScheduler.Quota"

    const-string v0, "Disconnected from power."

    invoke-static {p2, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1488
    :cond_51
    const/4 p2, 0x0

    iput-boolean p2, p0, Lcom/android/server/job/controllers/QuotaController$ChargingTracker;->mCharging:Z

    .line 1489
    iget-object p2, p0, Lcom/android/server/job/controllers/QuotaController$ChargingTracker;->this$0:Lcom/android/server/job/controllers/QuotaController;

    invoke-static {p2}, Lcom/android/server/job/controllers/QuotaController;->access$1200(Lcom/android/server/job/controllers/QuotaController;)V

    .line 1491
    :cond_59
    :goto_59
    monitor-exit p1

    .line 1492
    return-void

    .line 1491
    :catchall_5b
    move-exception p2

    monitor-exit p1
    :try_end_5d
    .catchall {:try_start_5 .. :try_end_5d} :catchall_5b

    throw p2
.end method

.method public startTracking()V
    .registers 3

    .line 1456
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 1459
    const-string v1, "android.os.action.CHARGING"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1460
    const-string v1, "android.os.action.DISCHARGING"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1461
    iget-object v1, p0, Lcom/android/server/job/controllers/QuotaController$ChargingTracker;->this$0:Lcom/android/server/job/controllers/QuotaController;

    iget-object v1, v1, Lcom/android/server/job/controllers/QuotaController;->mContext:Landroid/content/Context;

    invoke-virtual {v1, p0, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1464
    const-class v0, Landroid/os/BatteryManagerInternal;

    .line 1465
    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/BatteryManagerInternal;

    .line 1466
    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Landroid/os/BatteryManagerInternal;->isPowered(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/job/controllers/QuotaController$ChargingTracker;->mCharging:Z

    .line 1467
    return-void
.end method
