.class Lcom/android/server/net/NetworkPolicyManagerService$12;
.super Landroid/content/BroadcastReceiver;
.source "NetworkPolicyManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/net/NetworkPolicyManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/net/NetworkPolicyManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/net/NetworkPolicyManagerService;)V
    .registers 2

    .line 1081
    iput-object p1, p0, Lcom/android/server/net/NetworkPolicyManagerService$12;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 4

    .line 1084
    iget-object p1, p0, Lcom/android/server/net/NetworkPolicyManagerService$12;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    iget-object p1, p1, Lcom/android/server/net/NetworkPolicyManagerService;->mUidRulesFirstLock:Ljava/lang/Object;

    monitor-enter p1

    .line 1085
    :try_start_5
    iget-object p2, p0, Lcom/android/server/net/NetworkPolicyManagerService$12;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    iget-object p2, p2, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkPoliciesSecondLock:Ljava/lang/Object;

    monitor-enter p2
    :try_end_a
    .catchall {:try_start_5 .. :try_end_a} :catchall_1e

    .line 1086
    :try_start_a
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService$12;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    invoke-static {v0}, Lcom/android/server/net/NetworkPolicyManagerService;->access$1100(Lcom/android/server/net/NetworkPolicyManagerService;)V

    .line 1087
    monitor-exit p2
    :try_end_10
    .catchall {:try_start_a .. :try_end_10} :catchall_1b

    .line 1088
    :try_start_10
    monitor-exit p1
    :try_end_11
    .catchall {:try_start_10 .. :try_end_11} :catchall_1e

    .line 1090
    iget-object p1, p0, Lcom/android/server/net/NetworkPolicyManagerService$12;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    invoke-static {p1}, Lcom/android/server/net/NetworkPolicyManagerService;->access$1200(Lcom/android/server/net/NetworkPolicyManagerService;)Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 1091
    return-void

    .line 1087
    :catchall_1b
    move-exception v0

    :try_start_1c
    monitor-exit p2
    :try_end_1d
    .catchall {:try_start_1c .. :try_end_1d} :catchall_1b

    :try_start_1d
    throw v0

    .line 1088
    :catchall_1e
    move-exception p2

    monitor-exit p1
    :try_end_20
    .catchall {:try_start_1d .. :try_end_20} :catchall_1e

    throw p2
.end method
