.class Lcom/android/server/net/NetworkPolicyManagerService$16;
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

    .line 1649
    iput-object p1, p0, Lcom/android/server/net/NetworkPolicyManagerService$16;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 7

    .line 1655
    const-string/jumbo p1, "subscription"

    invoke-virtual {p2, p1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_a

    .line 1656
    return-void

    .line 1658
    :cond_a
    const/4 p1, -0x1

    const-string/jumbo v0, "subscription"

    invoke-virtual {p2, v0, p1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    .line 1662
    iget-object p2, p0, Lcom/android/server/net/NetworkPolicyManagerService$16;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    invoke-virtual {p2}, Lcom/android/server/net/NetworkPolicyManagerService;->updateSubscriptions()V

    .line 1664
    iget-object p2, p0, Lcom/android/server/net/NetworkPolicyManagerService$16;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    iget-object p2, p2, Lcom/android/server/net/NetworkPolicyManagerService;->mUidRulesFirstLock:Ljava/lang/Object;

    monitor-enter p2

    .line 1665
    :try_start_1c
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService$16;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkPoliciesSecondLock:Ljava/lang/Object;

    monitor-enter v0
    :try_end_21
    .catchall {:try_start_1c .. :try_end_21} :catchall_5d

    .line 1666
    :try_start_21
    iget-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService$16;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    invoke-static {v1}, Lcom/android/server/net/NetworkPolicyManagerService;->access$1700(Lcom/android/server/net/NetworkPolicyManagerService;)Landroid/util/SparseArray;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2}, Landroid/util/SparseArray;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 1667
    if-eqz v1, :cond_3b

    .line 1668
    iget-object v2, p0, Lcom/android/server/net/NetworkPolicyManagerService$16;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    invoke-static {v2, p1, v1}, Lcom/android/server/net/NetworkPolicyManagerService;->access$1800(Lcom/android/server/net/NetworkPolicyManagerService;ILjava/lang/String;)Z

    .line 1669
    iget-object v2, p0, Lcom/android/server/net/NetworkPolicyManagerService$16;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    invoke-static {v2, p1, v1}, Lcom/android/server/net/NetworkPolicyManagerService;->access$1900(Lcom/android/server/net/NetworkPolicyManagerService;ILjava/lang/String;)Z

    goto :goto_51

    .line 1671
    :cond_3b
    const-string v1, "NetworkPolicy"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Missing subscriberId for subId "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 1676
    :goto_51
    iget-object p1, p0, Lcom/android/server/net/NetworkPolicyManagerService$16;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Lcom/android/server/net/NetworkPolicyManagerService;->handleNetworkPoliciesUpdateAL(Z)V

    .line 1677
    monitor-exit v0
    :try_end_58
    .catchall {:try_start_21 .. :try_end_58} :catchall_5a

    .line 1678
    :try_start_58
    monitor-exit p2
    :try_end_59
    .catchall {:try_start_58 .. :try_end_59} :catchall_5d

    .line 1679
    return-void

    .line 1677
    :catchall_5a
    move-exception p1

    :try_start_5b
    monitor-exit v0
    :try_end_5c
    .catchall {:try_start_5b .. :try_end_5c} :catchall_5a

    :try_start_5c
    throw p1

    .line 1678
    :catchall_5d
    move-exception p1

    monitor-exit p2
    :try_end_5f
    .catchall {:try_start_5c .. :try_end_5f} :catchall_5d

    throw p1
.end method
