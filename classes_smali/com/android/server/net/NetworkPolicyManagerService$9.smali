.class Lcom/android/server/net/NetworkPolicyManagerService$9;
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

    .line 1030
    iput-object p1, p0, Lcom/android/server/net/NetworkPolicyManagerService$9;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 3

    .line 1036
    iget-object p1, p0, Lcom/android/server/net/NetworkPolicyManagerService$9;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    iget-object p1, p1, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkPoliciesSecondLock:Ljava/lang/Object;

    monitor-enter p1

    .line 1037
    :try_start_5
    iget-object p2, p0, Lcom/android/server/net/NetworkPolicyManagerService$9;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    invoke-virtual {p2}, Lcom/android/server/net/NetworkPolicyManagerService;->updateNetworkEnabledNL()V

    .line 1038
    iget-object p2, p0, Lcom/android/server/net/NetworkPolicyManagerService$9;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    invoke-virtual {p2}, Lcom/android/server/net/NetworkPolicyManagerService;->updateNotificationsNL()V

    .line 1039
    monitor-exit p1

    .line 1040
    return-void

    .line 1039
    :catchall_11
    move-exception p2

    monitor-exit p1
    :try_end_13
    .catchall {:try_start_5 .. :try_end_13} :catchall_11

    throw p2
.end method
