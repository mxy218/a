.class Lcom/android/server/stats/StatsCompanionService$1;
.super Landroid/content/BroadcastReceiver;
.source "StatsCompanionService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/stats/StatsCompanionService;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/stats/StatsCompanionService;


# direct methods
.method constructor <init>(Lcom/android/server/stats/StatsCompanionService;)V
    .registers 2

    .line 317
    iput-object p1, p0, Lcom/android/server/stats/StatsCompanionService$1;->this$0:Lcom/android/server/stats/StatsCompanionService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 5

    .line 320
    invoke-static {}, Lcom/android/server/stats/StatsCompanionService;->access$100()Ljava/lang/Object;

    move-result-object p2

    monitor-enter p2

    .line 321
    :try_start_5
    invoke-static {}, Lcom/android/server/stats/StatsCompanionService;->access$300()Landroid/os/IStatsManager;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/stats/StatsCompanionService;->access$202(Landroid/os/IStatsManager;)Landroid/os/IStatsManager;

    .line 322
    invoke-static {}, Lcom/android/server/stats/StatsCompanionService;->access$200()Landroid/os/IStatsManager;

    move-result-object v0

    if-nez v0, :cond_1b

    .line 323
    const-string p1, "StatsCompanionService"

    const-string v0, "Could not access statsd for UserUpdateReceiver"

    invoke-static {p1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 324
    monitor-exit p2
    :try_end_1a
    .catchall {:try_start_5 .. :try_end_1a} :catchall_30

    return-void

    .line 329
    :cond_1b
    :try_start_1b
    iget-object v0, p0, Lcom/android/server/stats/StatsCompanionService$1;->this$0:Lcom/android/server/stats/StatsCompanionService;

    invoke-static {v0, p1}, Lcom/android/server/stats/StatsCompanionService;->access$400(Lcom/android/server/stats/StatsCompanionService;Landroid/content/Context;)V
    :try_end_20
    .catch Landroid/os/RemoteException; {:try_start_1b .. :try_end_20} :catch_21
    .catchall {:try_start_1b .. :try_end_20} :catchall_30

    .line 333
    goto :goto_2e

    .line 330
    :catch_21
    move-exception p1

    .line 331
    :try_start_22
    const-string v0, "StatsCompanionService"

    const-string v1, "Failed to inform statsd latest update of all apps"

    invoke-static {v0, v1, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 332
    iget-object p1, p0, Lcom/android/server/stats/StatsCompanionService$1;->this$0:Lcom/android/server/stats/StatsCompanionService;

    invoke-static {p1}, Lcom/android/server/stats/StatsCompanionService;->access$500(Lcom/android/server/stats/StatsCompanionService;)V

    .line 334
    :goto_2e
    monitor-exit p2

    .line 335
    return-void

    .line 334
    :catchall_30
    move-exception p1

    monitor-exit p2
    :try_end_32
    .catchall {:try_start_22 .. :try_end_32} :catchall_30

    throw p1
.end method
