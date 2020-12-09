.class Lcom/android/server/net/NetworkStatsService$6;
.super Landroid/content/BroadcastReceiver;
.source "NetworkStatsService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/net/NetworkStatsService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/net/NetworkStatsService;


# direct methods
.method constructor <init>(Lcom/android/server/net/NetworkStatsService;)V
    .registers 2

    .line 1103
    iput-object p1, p0, Lcom/android/server/net/NetworkStatsService$6;->this$0:Lcom/android/server/net/NetworkStatsService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 3

    .line 1107
    iget-object p1, p0, Lcom/android/server/net/NetworkStatsService$6;->this$0:Lcom/android/server/net/NetworkStatsService;

    invoke-static {p1}, Lcom/android/server/net/NetworkStatsService;->access$300(Lcom/android/server/net/NetworkStatsService;)Ljava/lang/Object;

    move-result-object p1

    monitor-enter p1

    .line 1108
    :try_start_7
    iget-object p2, p0, Lcom/android/server/net/NetworkStatsService$6;->this$0:Lcom/android/server/net/NetworkStatsService;

    invoke-static {p2}, Lcom/android/server/net/NetworkStatsService;->access$1300(Lcom/android/server/net/NetworkStatsService;)V

    .line 1109
    monitor-exit p1

    .line 1110
    return-void

    .line 1109
    :catchall_e
    move-exception p2

    monitor-exit p1
    :try_end_10
    .catchall {:try_start_7 .. :try_end_10} :catchall_e

    throw p2
.end method
