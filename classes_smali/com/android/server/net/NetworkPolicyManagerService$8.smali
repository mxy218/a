.class Lcom/android/server/net/NetworkPolicyManagerService$8;
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

    .line 992
    iput-object p1, p0, Lcom/android/server/net/NetworkPolicyManagerService$8;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 7

    .line 998
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    .line 999
    const/4 v0, -0x1

    const-string v1, "android.intent.extra.user_handle"

    invoke-virtual {p2, v1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p2

    .line 1000
    if-ne p2, v0, :cond_e

    return-void

    .line 1002
    :cond_e
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v1

    const v2, -0x7ad942ef  # -7.8400085E-36f

    const/4 v3, 0x1

    if-eq v1, v2, :cond_28

    const v2, 0x42dd01f1

    if-eq v1, v2, :cond_1e

    :cond_1d
    goto :goto_31

    :cond_1e
    const-string v1, "android.intent.action.USER_ADDED"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1d

    move v0, v3

    goto :goto_31

    :cond_28
    const-string v1, "android.intent.action.USER_REMOVED"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1d

    const/4 v0, 0x0

    :goto_31
    if-eqz v0, :cond_36

    if-eq v0, v3, :cond_36

    goto :goto_5e

    .line 1005
    :cond_36
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService$8;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidRulesFirstLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1008
    :try_start_3b
    iget-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService$8;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    invoke-virtual {v1, p2, v3}, Lcom/android/server/net/NetworkPolicyManagerService;->removeUserStateUL(IZ)Z

    .line 1011
    iget-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService$8;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    invoke-static {v1}, Lcom/android/server/net/NetworkPolicyManagerService;->access$800(Lcom/android/server/net/NetworkPolicyManagerService;)Landroid/util/SparseArray;

    move-result-object v1

    invoke-virtual {v1, p2}, Landroid/util/SparseArray;->remove(I)V

    .line 1012
    const-string v1, "android.intent.action.USER_ADDED"

    if-ne p1, v1, :cond_52

    .line 1014
    iget-object p1, p0, Lcom/android/server/net/NetworkPolicyManagerService$8;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    invoke-static {p1, p2}, Lcom/android/server/net/NetworkPolicyManagerService;->access$900(Lcom/android/server/net/NetworkPolicyManagerService;I)Z

    .line 1017
    :cond_52
    iget-object p1, p0, Lcom/android/server/net/NetworkPolicyManagerService$8;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    iget-object p1, p1, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkPoliciesSecondLock:Ljava/lang/Object;

    monitor-enter p1
    :try_end_57
    .catchall {:try_start_3b .. :try_end_57} :catchall_62

    .line 1018
    :try_start_57
    iget-object p2, p0, Lcom/android/server/net/NetworkPolicyManagerService$8;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    invoke-static {p2, v3}, Lcom/android/server/net/NetworkPolicyManagerService;->access$1000(Lcom/android/server/net/NetworkPolicyManagerService;Z)V

    .line 1019
    monitor-exit p1
    :try_end_5d
    .catchall {:try_start_57 .. :try_end_5d} :catchall_5f

    .line 1020
    :try_start_5d
    monitor-exit v0
    :try_end_5e
    .catchall {:try_start_5d .. :try_end_5e} :catchall_62

    .line 1023
    :goto_5e
    return-void

    .line 1019
    :catchall_5f
    move-exception p2

    :try_start_60
    monitor-exit p1
    :try_end_61
    .catchall {:try_start_60 .. :try_end_61} :catchall_5f

    :try_start_61
    throw p2

    .line 1020
    :catchall_62
    move-exception p1

    monitor-exit v0
    :try_end_64
    .catchall {:try_start_61 .. :try_end_64} :catchall_62

    throw p1
.end method
