.class Lcom/android/server/net/NetworkPolicyManagerService$13;
.super Landroid/net/ConnectivityManager$NetworkCallback;
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

    .line 1104
    iput-object p1, p0, Lcom/android/server/net/NetworkPolicyManagerService$13;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    invoke-direct {p0}, Landroid/net/ConnectivityManager$NetworkCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onCapabilitiesChanged(Landroid/net/Network;Landroid/net/NetworkCapabilities;)V
    .registers 9

    .line 1108
    if-eqz p1, :cond_4e

    if-nez p2, :cond_5

    goto :goto_4e

    .line 1110
    :cond_5
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService$13;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkPoliciesSecondLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1111
    const/16 v1, 0xb

    .line 1112
    :try_start_c
    invoke-virtual {p2, v1}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v1, :cond_16

    move v1, v2

    goto :goto_17

    :cond_16
    move v1, v3

    .line 1113
    :goto_17
    iget-object v4, p0, Lcom/android/server/net/NetworkPolicyManagerService$13;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    .line 1114
    invoke-static {v4}, Lcom/android/server/net/NetworkPolicyManagerService;->access$1300(Lcom/android/server/net/NetworkPolicyManagerService;)Landroid/util/SparseBooleanArray;

    move-result-object v4

    .line 1113
    invoke-static {v4, v1, p1}, Lcom/android/server/net/NetworkPolicyManagerService;->access$1400(Landroid/util/SparseBooleanArray;ZLandroid/net/Network;)Z

    move-result v4

    .line 1116
    const/16 v5, 0x12

    .line 1117
    invoke-virtual {p2, v5}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    move-result p2

    if-nez p2, :cond_2a

    goto :goto_2b

    :cond_2a
    move v2, v3

    .line 1118
    :goto_2b
    iget-object p2, p0, Lcom/android/server/net/NetworkPolicyManagerService$13;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    .line 1119
    invoke-static {p2}, Lcom/android/server/net/NetworkPolicyManagerService;->access$1500(Lcom/android/server/net/NetworkPolicyManagerService;)Landroid/util/SparseBooleanArray;

    move-result-object p2

    .line 1118
    invoke-static {p2, v2, p1}, Lcom/android/server/net/NetworkPolicyManagerService;->access$1400(Landroid/util/SparseBooleanArray;ZLandroid/net/Network;)Z

    move-result p2

    .line 1121
    if-nez v4, :cond_39

    if-eqz p2, :cond_49

    .line 1122
    :cond_39
    iget-object p2, p0, Lcom/android/server/net/NetworkPolicyManagerService$13;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    invoke-static {p2}, Lcom/android/server/net/NetworkPolicyManagerService;->access$1600(Lcom/android/server/net/NetworkPolicyManagerService;)Lcom/android/server/net/NetworkPolicyLogger;

    move-result-object p2

    iget p1, p1, Landroid/net/Network;->netId:I

    invoke-virtual {p2, p1, v1}, Lcom/android/server/net/NetworkPolicyLogger;->meterednessChanged(IZ)V

    .line 1123
    iget-object p1, p0, Lcom/android/server/net/NetworkPolicyManagerService$13;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    invoke-virtual {p1}, Lcom/android/server/net/NetworkPolicyManagerService;->updateNetworkRulesNL()V

    .line 1125
    :cond_49
    monitor-exit v0

    .line 1126
    return-void

    .line 1125
    :catchall_4b
    move-exception p1

    monitor-exit v0
    :try_end_4d
    .catchall {:try_start_c .. :try_end_4d} :catchall_4b

    throw p1

    .line 1108
    :cond_4e
    :goto_4e
    return-void
.end method
