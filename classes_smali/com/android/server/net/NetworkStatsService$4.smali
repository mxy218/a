.class Lcom/android/server/net/NetworkStatsService$4;
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

    .line 1069
    iput-object p1, p0, Lcom/android/server/net/NetworkStatsService$4;->this$0:Lcom/android/server/net/NetworkStatsService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 8
    .param p1, "context"  # Landroid/content/Context;
    .param p2, "intent"  # Landroid/content/Intent;

    .line 1075
    const/4 v0, -0x1

    const-string v1, "android.intent.extra.UID"

    invoke-virtual {p2, v1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 1076
    .local v1, "uid":I
    if-ne v1, v0, :cond_a

    return-void

    .line 1078
    :cond_a
    iget-object v0, p0, Lcom/android/server/net/NetworkStatsService$4;->this$0:Lcom/android/server/net/NetworkStatsService;

    invoke-static {v0}, Lcom/android/server/net/NetworkStatsService;->access$300(Lcom/android/server/net/NetworkStatsService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 1079
    :try_start_11
    iget-object v2, p0, Lcom/android/server/net/NetworkStatsService$4;->this$0:Lcom/android/server/net/NetworkStatsService;

    invoke-static {v2}, Lcom/android/server/net/NetworkStatsService;->access$1000(Lcom/android/server/net/NetworkStatsService;)Landroid/os/PowerManager$WakeLock;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->acquire()V
    :try_end_1a
    .catchall {:try_start_11 .. :try_end_1a} :catchall_3c

    .line 1081
    :try_start_1a
    iget-object v2, p0, Lcom/android/server/net/NetworkStatsService$4;->this$0:Lcom/android/server/net/NetworkStatsService;

    const/4 v3, 0x1

    new-array v3, v3, [I

    const/4 v4, 0x0

    aput v1, v3, v4

    invoke-static {v2, v3}, Lcom/android/server/net/NetworkStatsService;->access$1100(Lcom/android/server/net/NetworkStatsService;[I)V
    :try_end_25
    .catchall {:try_start_1a .. :try_end_25} :catchall_31

    .line 1083
    :try_start_25
    iget-object v2, p0, Lcom/android/server/net/NetworkStatsService$4;->this$0:Lcom/android/server/net/NetworkStatsService;

    invoke-static {v2}, Lcom/android/server/net/NetworkStatsService;->access$1000(Lcom/android/server/net/NetworkStatsService;)Landroid/os/PowerManager$WakeLock;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 1084
    nop

    .line 1085
    monitor-exit v0

    .line 1086
    return-void

    .line 1083
    :catchall_31
    move-exception v2

    iget-object v3, p0, Lcom/android/server/net/NetworkStatsService$4;->this$0:Lcom/android/server/net/NetworkStatsService;

    invoke-static {v3}, Lcom/android/server/net/NetworkStatsService;->access$1000(Lcom/android/server/net/NetworkStatsService;)Landroid/os/PowerManager$WakeLock;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/PowerManager$WakeLock;->release()V

    .end local v1  # "uid":I
    .end local p0  # "this":Lcom/android/server/net/NetworkStatsService$4;
    .end local p1  # "context":Landroid/content/Context;
    .end local p2  # "intent":Landroid/content/Intent;
    throw v2

    .line 1085
    .restart local v1  # "uid":I
    .restart local p0  # "this":Lcom/android/server/net/NetworkStatsService$4;
    .restart local p1  # "context":Landroid/content/Context;
    .restart local p2  # "intent":Landroid/content/Intent;
    :catchall_3c
    move-exception v2

    monitor-exit v0
    :try_end_3e
    .catchall {:try_start_25 .. :try_end_3e} :catchall_3c

    throw v2
.end method
