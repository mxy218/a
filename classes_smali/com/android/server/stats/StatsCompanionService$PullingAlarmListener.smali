.class public final Lcom/android/server/stats/StatsCompanionService$PullingAlarmListener;
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
    name = "PullingAlarmListener"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 612
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAlarm()V
    .registers 5

    .line 618
    invoke-static {}, Lcom/android/server/stats/StatsCompanionService;->access$100()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 619
    :try_start_5
    invoke-static {}, Lcom/android/server/stats/StatsCompanionService;->access$200()Landroid/os/IStatsManager;

    move-result-object v1

    if-nez v1, :cond_14

    .line 620
    const-string v1, "StatsCompanionService"

    const-string v2, "Could not access statsd to inform it of pulling alarm firing."

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 621
    monitor-exit v0
    :try_end_13
    .catchall {:try_start_5 .. :try_end_13} :catchall_26

    return-void

    .line 625
    :cond_14
    :try_start_14
    invoke-static {}, Lcom/android/server/stats/StatsCompanionService;->access$200()Landroid/os/IStatsManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/os/IStatsManager;->informPollAlarmFired()V
    :try_end_1b
    .catch Landroid/os/RemoteException; {:try_start_14 .. :try_end_1b} :catch_1c
    .catchall {:try_start_14 .. :try_end_1b} :catchall_26

    .line 628
    goto :goto_24

    .line 626
    :catch_1c
    move-exception v1

    .line 627
    .local v1, "e":Landroid/os/RemoteException;
    :try_start_1d
    const-string v2, "StatsCompanionService"

    const-string v3, "Failed to inform statsd of pulling alarm firing."

    invoke-static {v2, v3, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 629
    .end local v1  # "e":Landroid/os/RemoteException;
    :goto_24
    monitor-exit v0

    .line 630
    return-void

    .line 629
    :catchall_26
    move-exception v1

    monitor-exit v0
    :try_end_28
    .catchall {:try_start_1d .. :try_end_28} :catchall_26

    throw v1
.end method
