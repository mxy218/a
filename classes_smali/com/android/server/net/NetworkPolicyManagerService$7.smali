.class Lcom/android/server/net/NetworkPolicyManagerService$7;
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

    .line 1046
    iput-object p1, p0, Lcom/android/server/net/NetworkPolicyManagerService$7;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 7
    .param p1, "context"  # Landroid/content/Context;
    .param p2, "intent"  # Landroid/content/Intent;

    .line 1051
    const/4 v0, -0x1

    const-string v1, "android.intent.extra.UID"

    invoke-virtual {p2, v1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 1052
    .local v1, "uid":I
    if-ne v1, v0, :cond_a

    return-void

    .line 1055
    :cond_a
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ACTION_UID_REMOVED for uid="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "NetworkPolicy"

    invoke-static {v2, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1056
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService$7;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidRulesFirstLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1057
    :try_start_25
    iget-object v2, p0, Lcom/android/server/net/NetworkPolicyManagerService$7;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    invoke-static {v2, v1}, Lcom/android/server/net/NetworkPolicyManagerService;->access$500(Lcom/android/server/net/NetworkPolicyManagerService;I)V

    .line 1058
    iget-object v2, p0, Lcom/android/server/net/NetworkPolicyManagerService$7;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    iget-object v2, v2, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkPoliciesSecondLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_2f
    .catchall {:try_start_25 .. :try_end_2f} :catchall_3a

    .line 1059
    :try_start_2f
    iget-object v3, p0, Lcom/android/server/net/NetworkPolicyManagerService$7;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    invoke-virtual {v3}, Lcom/android/server/net/NetworkPolicyManagerService;->writePolicyAL()V

    .line 1060
    monitor-exit v2
    :try_end_35
    .catchall {:try_start_2f .. :try_end_35} :catchall_37

    .line 1061
    :try_start_35
    monitor-exit v0
    :try_end_36
    .catchall {:try_start_35 .. :try_end_36} :catchall_3a

    .line 1062
    return-void

    .line 1060
    :catchall_37
    move-exception v3

    :try_start_38
    monitor-exit v2
    :try_end_39
    .catchall {:try_start_38 .. :try_end_39} :catchall_37

    .end local v1  # "uid":I
    .end local p0  # "this":Lcom/android/server/net/NetworkPolicyManagerService$7;
    .end local p1  # "context":Landroid/content/Context;
    .end local p2  # "intent":Landroid/content/Intent;
    :try_start_39
    throw v3

    .line 1061
    .restart local v1  # "uid":I
    .restart local p0  # "this":Lcom/android/server/net/NetworkPolicyManagerService$7;
    .restart local p1  # "context":Landroid/content/Context;
    .restart local p2  # "intent":Landroid/content/Intent;
    :catchall_3a
    move-exception v2

    monitor-exit v0
    :try_end_3c
    .catchall {:try_start_39 .. :try_end_3c} :catchall_3a

    throw v2
.end method
