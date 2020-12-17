.class Lcom/android/server/net/NetworkStatsService$5;
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
    .param p1, "this$0"  # Lcom/android/server/net/NetworkStatsService;

    .line 1089
    iput-object p1, p0, Lcom/android/server/net/NetworkStatsService$5;->this$0:Lcom/android/server/net/NetworkStatsService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 7
    .param p1, "context"  # Landroid/content/Context;
    .param p2, "intent"  # Landroid/content/Intent;

    .line 1095
    const/4 v0, -0x1

    const-string v1, "android.intent.extra.user_handle"

    invoke-virtual {p2, v1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 1096
    .local v1, "userId":I
    if-ne v1, v0, :cond_a

    return-void

    .line 1098
    :cond_a
    iget-object v0, p0, Lcom/android/server/net/NetworkStatsService$5;->this$0:Lcom/android/server/net/NetworkStatsService;

    invoke-static {v0}, Lcom/android/server/net/NetworkStatsService;->access$300(Lcom/android/server/net/NetworkStatsService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 1099
    :try_start_11
    iget-object v2, p0, Lcom/android/server/net/NetworkStatsService$5;->this$0:Lcom/android/server/net/NetworkStatsService;

    invoke-static {v2}, Lcom/android/server/net/NetworkStatsService;->access$1000(Lcom/android/server/net/NetworkStatsService;)Landroid/os/PowerManager$WakeLock;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->acquire()V
    :try_end_1a
    .catchall {:try_start_11 .. :try_end_1a} :catchall_36

    .line 1101
    :try_start_1a
    iget-object v2, p0, Lcom/android/server/net/NetworkStatsService$5;->this$0:Lcom/android/server/net/NetworkStatsService;

    invoke-static {v2, v1}, Lcom/android/server/net/NetworkStatsService;->access$1200(Lcom/android/server/net/NetworkStatsService;I)V
    :try_end_1f
    .catchall {:try_start_1a .. :try_end_1f} :catchall_2b

    .line 1103
    :try_start_1f
    iget-object v2, p0, Lcom/android/server/net/NetworkStatsService$5;->this$0:Lcom/android/server/net/NetworkStatsService;

    invoke-static {v2}, Lcom/android/server/net/NetworkStatsService;->access$1000(Lcom/android/server/net/NetworkStatsService;)Landroid/os/PowerManager$WakeLock;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 1104
    nop

    .line 1105
    monitor-exit v0

    .line 1106
    return-void

    .line 1103
    :catchall_2b
    move-exception v2

    iget-object v3, p0, Lcom/android/server/net/NetworkStatsService$5;->this$0:Lcom/android/server/net/NetworkStatsService;

    invoke-static {v3}, Lcom/android/server/net/NetworkStatsService;->access$1000(Lcom/android/server/net/NetworkStatsService;)Landroid/os/PowerManager$WakeLock;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/PowerManager$WakeLock;->release()V

    .end local v1  # "userId":I
    .end local p0  # "this":Lcom/android/server/net/NetworkStatsService$5;
    .end local p1  # "context":Landroid/content/Context;
    .end local p2  # "intent":Landroid/content/Intent;
    throw v2

    .line 1105
    .restart local v1  # "userId":I
    .restart local p0  # "this":Lcom/android/server/net/NetworkStatsService$5;
    .restart local p1  # "context":Landroid/content/Context;
    .restart local p2  # "intent":Landroid/content/Intent;
    :catchall_36
    move-exception v2

    monitor-exit v0
    :try_end_38
    .catchall {:try_start_1f .. :try_end_38} :catchall_36

    throw v2
.end method
