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
    .param p1, "this$0"  # Lcom/android/server/stats/StatsCompanionService;

    .line 315
    iput-object p1, p0, Lcom/android/server/stats/StatsCompanionService$1;->this$0:Lcom/android/server/stats/StatsCompanionService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 7
    .param p1, "context"  # Landroid/content/Context;
    .param p2, "intent"  # Landroid/content/Intent;

    .line 318
    invoke-static {}, Lcom/android/server/stats/StatsCompanionService;->access$100()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 319
    :try_start_5
    invoke-static {}, Lcom/android/server/stats/StatsCompanionService;->access$300()Landroid/os/IStatsManager;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/stats/StatsCompanionService;->access$202(Landroid/os/IStatsManager;)Landroid/os/IStatsManager;

    .line 320
    invoke-static {}, Lcom/android/server/stats/StatsCompanionService;->access$200()Landroid/os/IStatsManager;

    move-result-object v1

    if-nez v1, :cond_1b

    .line 321
    const-string v1, "StatsCompanionService"

    const-string v2, "Could not access statsd for UserUpdateReceiver"

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 322
    monitor-exit v0
    :try_end_1a
    .catchall {:try_start_5 .. :try_end_1a} :catchall_30

    return-void

    .line 327
    :cond_1b
    :try_start_1b
    iget-object v1, p0, Lcom/android/server/stats/StatsCompanionService$1;->this$0:Lcom/android/server/stats/StatsCompanionService;

    invoke-static {v1, p1}, Lcom/android/server/stats/StatsCompanionService;->access$400(Lcom/android/server/stats/StatsCompanionService;Landroid/content/Context;)V
    :try_end_20
    .catch Landroid/os/RemoteException; {:try_start_1b .. :try_end_20} :catch_21
    .catchall {:try_start_1b .. :try_end_20} :catchall_30

    .line 331
    goto :goto_2e

    .line 328
    :catch_21
    move-exception v1

    .line 329
    .local v1, "e":Landroid/os/RemoteException;
    :try_start_22
    const-string v2, "StatsCompanionService"

    const-string v3, "Failed to inform statsd latest update of all apps"

    invoke-static {v2, v3, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 330
    iget-object v2, p0, Lcom/android/server/stats/StatsCompanionService$1;->this$0:Lcom/android/server/stats/StatsCompanionService;

    invoke-static {v2}, Lcom/android/server/stats/StatsCompanionService;->access$500(Lcom/android/server/stats/StatsCompanionService;)V

    .line 332
    .end local v1  # "e":Landroid/os/RemoteException;
    :goto_2e
    monitor-exit v0

    .line 333
    return-void

    .line 332
    :catchall_30
    move-exception v1

    monitor-exit v0
    :try_end_32
    .catchall {:try_start_22 .. :try_end_32} :catchall_30

    throw v1
.end method
