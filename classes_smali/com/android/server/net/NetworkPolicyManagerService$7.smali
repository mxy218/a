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

    .line 973
    iput-object p1, p0, Lcom/android/server/net/NetworkPolicyManagerService$7;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 4

    .line 978
    const/4 p1, -0x1

    const-string v0, "android.intent.extra.UID"

    invoke-virtual {p2, v0, p1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p2

    .line 979
    if-ne p2, p1, :cond_a

    return-void

    .line 982
    :cond_a
    invoke-static {}, Lcom/android/server/net/NetworkPolicyManagerService;->access$500()Z

    move-result p1

    if-eqz p1, :cond_26

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "ACTION_UID_REMOVED for uid="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "NetworkPolicy"

    invoke-static {v0, p1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 983
    :cond_26
    iget-object p1, p0, Lcom/android/server/net/NetworkPolicyManagerService$7;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    iget-object p1, p1, Lcom/android/server/net/NetworkPolicyManagerService;->mUidRulesFirstLock:Ljava/lang/Object;

    monitor-enter p1

    .line 984
    :try_start_2b
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService$7;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    invoke-static {v0, p2}, Lcom/android/server/net/NetworkPolicyManagerService;->access$700(Lcom/android/server/net/NetworkPolicyManagerService;I)V

    .line 985
    iget-object p2, p0, Lcom/android/server/net/NetworkPolicyManagerService$7;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    iget-object p2, p2, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkPoliciesSecondLock:Ljava/lang/Object;

    monitor-enter p2
    :try_end_35
    .catchall {:try_start_2b .. :try_end_35} :catchall_40

    .line 986
    :try_start_35
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService$7;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    invoke-virtual {v0}, Lcom/android/server/net/NetworkPolicyManagerService;->writePolicyAL()V

    .line 987
    monitor-exit p2
    :try_end_3b
    .catchall {:try_start_35 .. :try_end_3b} :catchall_3d

    .line 988
    :try_start_3b
    monitor-exit p1
    :try_end_3c
    .catchall {:try_start_3b .. :try_end_3c} :catchall_40

    .line 989
    return-void

    .line 987
    :catchall_3d
    move-exception v0

    :try_start_3e
    monitor-exit p2
    :try_end_3f
    .catchall {:try_start_3e .. :try_end_3f} :catchall_3d

    :try_start_3f
    throw v0

    .line 988
    :catchall_40
    move-exception p2

    monitor-exit p1
    :try_end_42
    .catchall {:try_start_3f .. :try_end_42} :catchall_40

    throw p2
.end method
