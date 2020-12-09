.class public final Lcom/android/server/stats/StatsCompanionService$ShutdownEventReceiver;
.super Landroid/content/BroadcastReceiver;
.source "StatsCompanionService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/stats/StatsCompanionService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ShutdownEventReceiver"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 657
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 5

    .line 663
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "android.intent.action.REBOOT"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_22

    .line 664
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "android.intent.action.ACTION_SHUTDOWN"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_21

    .line 665
    invoke-virtual {p2}, Landroid/content/Intent;->getFlags()I

    move-result p1

    const/high16 p2, 0x10000000

    and-int/2addr p1, p2

    if-nez p1, :cond_22

    .line 666
    :cond_21
    return-void

    .line 669
    :cond_22
    const-string p1, "StatsCompanionService"

    const-string p2, "StatsCompanionService noticed a shutdown."

    invoke-static {p1, p2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 670
    invoke-static {}, Lcom/android/server/stats/StatsCompanionService;->access$100()Ljava/lang/Object;

    move-result-object p1

    monitor-enter p1

    .line 671
    :try_start_2e
    invoke-static {}, Lcom/android/server/stats/StatsCompanionService;->access$200()Landroid/os/IStatsManager;

    move-result-object p2

    if-nez p2, :cond_3d

    .line 672
    const-string p2, "StatsCompanionService"

    const-string v0, "Could not access statsd to inform it of a shutdown event."

    invoke-static {p2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 673
    monitor-exit p1
    :try_end_3c
    .catchall {:try_start_2e .. :try_end_3c} :catchall_4f

    return-void

    .line 676
    :cond_3d
    :try_start_3d
    invoke-static {}, Lcom/android/server/stats/StatsCompanionService;->access$200()Landroid/os/IStatsManager;

    move-result-object p2

    invoke-interface {p2}, Landroid/os/IStatsManager;->informDeviceShutdown()V
    :try_end_44
    .catch Ljava/lang/Exception; {:try_start_3d .. :try_end_44} :catch_45
    .catchall {:try_start_3d .. :try_end_44} :catchall_4f

    .line 679
    goto :goto_4d

    .line 677
    :catch_45
    move-exception p2

    .line 678
    :try_start_46
    const-string v0, "StatsCompanionService"

    const-string v1, "Failed to inform statsd of a shutdown event."

    invoke-static {v0, v1, p2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 680
    :goto_4d
    monitor-exit p1

    .line 681
    return-void

    .line 680
    :catchall_4f
    move-exception p2

    monitor-exit p1
    :try_end_51
    .catchall {:try_start_46 .. :try_end_51} :catchall_4f

    throw p2
.end method
