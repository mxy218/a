.class public final Lcom/android/server/stats/StatsCompanionService$AnomalyAlarmListener;
.super Ljava/lang/Object;
.source "StatsCompanionService.java"

# interfaces
.implements Landroid/app/AlarmManager$OnAlarmListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/stats/StatsCompanionService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "AnomalyAlarmListener"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 591
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAlarm()V
    .registers 5

    .line 594
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "StatsCompanionService believes an anomaly has occurred at time "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 595
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "ms."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 594
    const-string v1, "StatsCompanionService"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 596
    invoke-static {}, Lcom/android/server/stats/StatsCompanionService;->access$100()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 597
    :try_start_25
    invoke-static {}, Lcom/android/server/stats/StatsCompanionService;->access$200()Landroid/os/IStatsManager;

    move-result-object v1

    if-nez v1, :cond_34

    .line 598
    const-string v1, "StatsCompanionService"

    const-string v2, "Could not access statsd to inform it of anomaly alarm firing"

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 599
    monitor-exit v0
    :try_end_33
    .catchall {:try_start_25 .. :try_end_33} :catchall_46

    return-void

    .line 603
    :cond_34
    :try_start_34
    invoke-static {}, Lcom/android/server/stats/StatsCompanionService;->access$200()Landroid/os/IStatsManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/os/IStatsManager;->informAnomalyAlarmFired()V
    :try_end_3b
    .catch Landroid/os/RemoteException; {:try_start_34 .. :try_end_3b} :catch_3c
    .catchall {:try_start_34 .. :try_end_3b} :catchall_46

    .line 606
    goto :goto_44

    .line 604
    :catch_3c
    move-exception v1

    .line 605
    .local v1, "e":Landroid/os/RemoteException;
    :try_start_3d
    const-string v2, "StatsCompanionService"

    const-string v3, "Failed to inform statsd of anomaly alarm firing"

    invoke-static {v2, v3, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 607
    .end local v1  # "e":Landroid/os/RemoteException;
    :goto_44
    monitor-exit v0

    .line 609
    return-void

    .line 607
    :catchall_46
    move-exception v1

    monitor-exit v0
    :try_end_48
    .catchall {:try_start_3d .. :try_end_48} :catchall_46

    throw v1
.end method
