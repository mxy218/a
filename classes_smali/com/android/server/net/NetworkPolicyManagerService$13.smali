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
    .param p1, "this$0"  # Lcom/android/server/net/NetworkPolicyManagerService;

    .line 1177
    iput-object p1, p0, Lcom/android/server/net/NetworkPolicyManagerService$13;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    invoke-direct {p0}, Landroid/net/ConnectivityManager$NetworkCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onCapabilitiesChanged(Landroid/net/Network;Landroid/net/NetworkCapabilities;)V
    .registers 10
    .param p1, "network"  # Landroid/net/Network;
    .param p2, "networkCapabilities"  # Landroid/net/NetworkCapabilities;

    .line 1181
    if-eqz p1, :cond_4e

    if-nez p2, :cond_5

    goto :goto_4e

    .line 1183
    :cond_5
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService$13;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkPoliciesSecondLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1184
    const/16 v1, 0xb

    .line 1185
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

    .line 1186
    .local v1, "newMetered":Z
    :goto_17
    iget-object v4, p0, Lcom/android/server/net/NetworkPolicyManagerService$13;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    .line 1187
    invoke-static {v4}, Lcom/android/server/net/NetworkPolicyManagerService;->access$1100(Lcom/android/server/net/NetworkPolicyManagerService;)Landroid/util/SparseBooleanArray;

    move-result-object v4

    .line 1186
    invoke-static {v4, v1, p1}, Lcom/android/server/net/NetworkPolicyManagerService;->access$1200(Landroid/util/SparseBooleanArray;ZLandroid/net/Network;)Z

    move-result v4

    .line 1189
    .local v4, "meteredChanged":Z
    const/16 v5, 0x12

    .line 1190
    invoke-virtual {p2, v5}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    move-result v5

    if-nez v5, :cond_2a

    goto :goto_2b

    :cond_2a
    move v2, v3

    .line 1191
    .local v2, "newRoaming":Z
    :goto_2b
    iget-object v3, p0, Lcom/android/server/net/NetworkPolicyManagerService$13;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    .line 1192
    invoke-static {v3}, Lcom/android/server/net/NetworkPolicyManagerService;->access$1300(Lcom/android/server/net/NetworkPolicyManagerService;)Landroid/util/SparseBooleanArray;

    move-result-object v3

    .line 1191
    invoke-static {v3, v2, p1}, Lcom/android/server/net/NetworkPolicyManagerService;->access$1200(Landroid/util/SparseBooleanArray;ZLandroid/net/Network;)Z

    move-result v3

    .line 1194
    .local v3, "roamingChanged":Z
    if-nez v4, :cond_39

    if-eqz v3, :cond_49

    .line 1195
    :cond_39
    iget-object v5, p0, Lcom/android/server/net/NetworkPolicyManagerService$13;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    invoke-static {v5}, Lcom/android/server/net/NetworkPolicyManagerService;->access$1400(Lcom/android/server/net/NetworkPolicyManagerService;)Lcom/android/server/net/NetworkPolicyLogger;

    move-result-object v5

    iget v6, p1, Landroid/net/Network;->netId:I

    invoke-virtual {v5, v6, v1}, Lcom/android/server/net/NetworkPolicyLogger;->meterednessChanged(IZ)V

    .line 1196
    iget-object v5, p0, Lcom/android/server/net/NetworkPolicyManagerService$13;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    invoke-virtual {v5}, Lcom/android/server/net/NetworkPolicyManagerService;->updateNetworkRulesNL()V

    .line 1198
    .end local v1  # "newMetered":Z
    .end local v2  # "newRoaming":Z
    .end local v3  # "roamingChanged":Z
    .end local v4  # "meteredChanged":Z
    :cond_49
    monitor-exit v0

    .line 1199
    return-void

    .line 1198
    :catchall_4b
    move-exception v1

    monitor-exit v0
    :try_end_4d
    .catchall {:try_start_c .. :try_end_4d} :catchall_4b

    throw v1

    .line 1181
    :cond_4e
    :goto_4e
    return-void
.end method
