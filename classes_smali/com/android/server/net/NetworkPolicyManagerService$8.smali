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
    .param p1, "this$0"  # Lcom/android/server/net/NetworkPolicyManagerService;

    .line 1065
    iput-object p1, p0, Lcom/android/server/net/NetworkPolicyManagerService$8;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 9
    .param p1, "context"  # Landroid/content/Context;
    .param p2, "intent"  # Landroid/content/Intent;

    .line 1071
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 1072
    .local v0, "action":Ljava/lang/String;
    const/4 v1, -0x1

    const-string v2, "android.intent.extra.user_handle"

    invoke-virtual {p2, v2, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 1073
    .local v2, "userId":I
    if-ne v2, v1, :cond_e

    return-void

    .line 1075
    :cond_e
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v3

    const v4, -0x7ad942ef  # -7.8400085E-36f

    const/4 v5, 0x1

    if-eq v3, v4, :cond_28

    const v4, 0x42dd01f1

    if-eq v3, v4, :cond_1e

    :cond_1d
    goto :goto_31

    :cond_1e
    const-string v3, "android.intent.action.USER_ADDED"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1d

    move v1, v5

    goto :goto_31

    :cond_28
    const-string v3, "android.intent.action.USER_REMOVED"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1d

    const/4 v1, 0x0

    :goto_31
    if-eqz v1, :cond_36

    if-eq v1, v5, :cond_36

    goto :goto_5e

    .line 1078
    :cond_36
    iget-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService$8;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    iget-object v1, v1, Lcom/android/server/net/NetworkPolicyManagerService;->mUidRulesFirstLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1081
    :try_start_3b
    iget-object v3, p0, Lcom/android/server/net/NetworkPolicyManagerService$8;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    invoke-virtual {v3, v2, v5}, Lcom/android/server/net/NetworkPolicyManagerService;->removeUserStateUL(IZ)Z

    .line 1084
    iget-object v3, p0, Lcom/android/server/net/NetworkPolicyManagerService$8;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    invoke-static {v3}, Lcom/android/server/net/NetworkPolicyManagerService;->access$600(Lcom/android/server/net/NetworkPolicyManagerService;)Landroid/util/SparseArray;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->remove(I)V

    .line 1085
    const-string v3, "android.intent.action.USER_ADDED"

    if-ne v0, v3, :cond_52

    .line 1087
    iget-object v3, p0, Lcom/android/server/net/NetworkPolicyManagerService$8;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    invoke-static {v3, v2}, Lcom/android/server/net/NetworkPolicyManagerService;->access$700(Lcom/android/server/net/NetworkPolicyManagerService;I)Z

    .line 1090
    :cond_52
    iget-object v3, p0, Lcom/android/server/net/NetworkPolicyManagerService$8;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    iget-object v3, v3, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkPoliciesSecondLock:Ljava/lang/Object;

    monitor-enter v3
    :try_end_57
    .catchall {:try_start_3b .. :try_end_57} :catchall_62

    .line 1091
    :try_start_57
    iget-object v4, p0, Lcom/android/server/net/NetworkPolicyManagerService$8;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    invoke-static {v4, v5}, Lcom/android/server/net/NetworkPolicyManagerService;->access$800(Lcom/android/server/net/NetworkPolicyManagerService;Z)V

    .line 1092
    monitor-exit v3
    :try_end_5d
    .catchall {:try_start_57 .. :try_end_5d} :catchall_5f

    .line 1093
    :try_start_5d
    monitor-exit v1
    :try_end_5e
    .catchall {:try_start_5d .. :try_end_5e} :catchall_62

    .line 1096
    :goto_5e
    return-void

    .line 1092
    :catchall_5f
    move-exception v4

    :try_start_60
    monitor-exit v3
    :try_end_61
    .catchall {:try_start_60 .. :try_end_61} :catchall_5f

    .end local v0  # "action":Ljava/lang/String;
    .end local v2  # "userId":I
    .end local p0  # "this":Lcom/android/server/net/NetworkPolicyManagerService$8;
    .end local p1  # "context":Landroid/content/Context;
    .end local p2  # "intent":Landroid/content/Intent;
    :try_start_61
    throw v4

    .line 1093
    .restart local v0  # "action":Ljava/lang/String;
    .restart local v2  # "userId":I
    .restart local p0  # "this":Lcom/android/server/net/NetworkPolicyManagerService$8;
    .restart local p1  # "context":Landroid/content/Context;
    .restart local p2  # "intent":Landroid/content/Intent;
    :catchall_62
    move-exception v3

    monitor-exit v1
    :try_end_64
    .catchall {:try_start_61 .. :try_end_64} :catchall_62

    throw v3
.end method
