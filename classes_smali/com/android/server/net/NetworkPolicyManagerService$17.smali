.class Lcom/android/server/net/NetworkPolicyManagerService$17;
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
    .param p1, "this$0"  # Lcom/android/server/net/NetworkPolicyManagerService;

    .line 1852
    iput-object p1, p0, Lcom/android/server/net/NetworkPolicyManagerService$17;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 10
    .param p1, "context"  # Landroid/content/Context;
    .param p2, "intent"  # Landroid/content/Intent;

    .line 1858
    const-string/jumbo v0, "subscription"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_a

    .line 1859
    return-void

    .line 1861
    :cond_a
    const/4 v0, -0x1

    const-string/jumbo v1, "subscription"

    invoke-virtual {p2, v1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 1865
    .local v0, "subId":I
    iget-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService$17;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    invoke-virtual {v1}, Lcom/android/server/net/NetworkPolicyManagerService;->updateSubscriptions()V

    .line 1867
    iget-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService$17;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    iget-object v1, v1, Lcom/android/server/net/NetworkPolicyManagerService;->mUidRulesFirstLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1868
    :try_start_1c
    iget-object v2, p0, Lcom/android/server/net/NetworkPolicyManagerService$17;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    iget-object v2, v2, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkPoliciesSecondLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_21
    .catchall {:try_start_1c .. :try_end_21} :catchall_5d

    .line 1869
    :try_start_21
    iget-object v3, p0, Lcom/android/server/net/NetworkPolicyManagerService$17;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    invoke-static {v3}, Lcom/android/server/net/NetworkPolicyManagerService;->access$1500(Lcom/android/server/net/NetworkPolicyManagerService;)Landroid/util/SparseArray;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v0, v4}, Landroid/util/SparseArray;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 1870
    .local v3, "subscriberId":Ljava/lang/String;
    if-eqz v3, :cond_3b

    .line 1871
    iget-object v4, p0, Lcom/android/server/net/NetworkPolicyManagerService$17;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    invoke-static {v4, v0, v3}, Lcom/android/server/net/NetworkPolicyManagerService;->access$1600(Lcom/android/server/net/NetworkPolicyManagerService;ILjava/lang/String;)Z

    .line 1872
    iget-object v4, p0, Lcom/android/server/net/NetworkPolicyManagerService$17;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    invoke-static {v4, v0, v3}, Lcom/android/server/net/NetworkPolicyManagerService;->access$1700(Lcom/android/server/net/NetworkPolicyManagerService;ILjava/lang/String;)Z

    goto :goto_51

    .line 1874
    :cond_3b
    const-string v4, "NetworkPolicy"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Missing subscriberId for subId "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 1879
    :goto_51
    iget-object v4, p0, Lcom/android/server/net/NetworkPolicyManagerService$17;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Lcom/android/server/net/NetworkPolicyManagerService;->handleNetworkPoliciesUpdateAL(Z)V

    .line 1880
    .end local v3  # "subscriberId":Ljava/lang/String;
    monitor-exit v2
    :try_end_58
    .catchall {:try_start_21 .. :try_end_58} :catchall_5a

    .line 1881
    :try_start_58
    monitor-exit v1
    :try_end_59
    .catchall {:try_start_58 .. :try_end_59} :catchall_5d

    .line 1882
    return-void

    .line 1880
    :catchall_5a
    move-exception v3

    :try_start_5b
    monitor-exit v2
    :try_end_5c
    .catchall {:try_start_5b .. :try_end_5c} :catchall_5a

    .end local v0  # "subId":I
    .end local p0  # "this":Lcom/android/server/net/NetworkPolicyManagerService$17;
    .end local p1  # "context":Landroid/content/Context;
    .end local p2  # "intent":Landroid/content/Intent;
    :try_start_5c
    throw v3

    .line 1881
    .restart local v0  # "subId":I
    .restart local p0  # "this":Lcom/android/server/net/NetworkPolicyManagerService$17;
    .restart local p1  # "context":Landroid/content/Context;
    .restart local p2  # "intent":Landroid/content/Intent;
    :catchall_5d
    move-exception v2

    monitor-exit v1
    :try_end_5f
    .catchall {:try_start_5c .. :try_end_5f} :catchall_5d

    throw v2
.end method
