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

    .line 1063
    iput-object p1, p0, Lcom/android/server/net/NetworkStatsService$4;->this$0:Lcom/android/server/net/NetworkStatsService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 6

    .line 1069
    const/4 p1, -0x1

    const-string v0, "android.intent.extra.UID"

    invoke-virtual {p2, v0, p1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p2

    .line 1070
    if-ne p2, p1, :cond_a

    return-void

    .line 1072
    :cond_a
    iget-object p1, p0, Lcom/android/server/net/NetworkStatsService$4;->this$0:Lcom/android/server/net/NetworkStatsService;

    invoke-static {p1}, Lcom/android/server/net/NetworkStatsService;->access$300(Lcom/android/server/net/NetworkStatsService;)Ljava/lang/Object;

    move-result-object p1

    monitor-enter p1

    .line 1073
    :try_start_11
    iget-object v0, p0, Lcom/android/server/net/NetworkStatsService$4;->this$0:Lcom/android/server/net/NetworkStatsService;

    invoke-static {v0}, Lcom/android/server/net/NetworkStatsService;->access$1000(Lcom/android/server/net/NetworkStatsService;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V
    :try_end_1a
    .catchall {:try_start_11 .. :try_end_1a} :catchall_3c

    .line 1075
    :try_start_1a
    iget-object v0, p0, Lcom/android/server/net/NetworkStatsService$4;->this$0:Lcom/android/server/net/NetworkStatsService;

    const/4 v1, 0x1

    new-array v1, v1, [I

    const/4 v2, 0x0

    aput p2, v1, v2

    invoke-static {v0, v1}, Lcom/android/server/net/NetworkStatsService;->access$1100(Lcom/android/server/net/NetworkStatsService;[I)V
    :try_end_25
    .catchall {:try_start_1a .. :try_end_25} :catchall_31

    .line 1077
    :try_start_25
    iget-object p2, p0, Lcom/android/server/net/NetworkStatsService$4;->this$0:Lcom/android/server/net/NetworkStatsService;

    invoke-static {p2}, Lcom/android/server/net/NetworkStatsService;->access$1000(Lcom/android/server/net/NetworkStatsService;)Landroid/os/PowerManager$WakeLock;

    move-result-object p2

    invoke-virtual {p2}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 1078
    nop

    .line 1079
    monitor-exit p1

    .line 1080
    return-void

    .line 1077
    :catchall_31
    move-exception p2

    iget-object v0, p0, Lcom/android/server/net/NetworkStatsService$4;->this$0:Lcom/android/server/net/NetworkStatsService;

    invoke-static {v0}, Lcom/android/server/net/NetworkStatsService;->access$1000(Lcom/android/server/net/NetworkStatsService;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    throw p2

    .line 1079
    :catchall_3c
    move-exception p2

    monitor-exit p1
    :try_end_3e
    .catchall {:try_start_25 .. :try_end_3e} :catchall_3c

    throw p2
.end method
