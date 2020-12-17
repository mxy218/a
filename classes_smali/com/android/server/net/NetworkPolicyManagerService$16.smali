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
    .param p1, "this$0"  # Lcom/android/server/net/NetworkPolicyManagerService;

    .line 1676
    iput-object p1, p0, Lcom/android/server/net/NetworkPolicyManagerService$16;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 9
    .param p1, "context"  # Landroid/content/Context;
    .param p2, "intent"  # Landroid/content/Intent;

    .line 1681
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService$16;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    invoke-static {v0}, Lcom/android/server/net/NetworkPolicyManagerService;->access$300(Lcom/android/server/net/NetworkPolicyManagerService;)V

    .line 1683
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 1685
    .local v0, "action":Ljava/lang/String;
    const-string v1, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4f

    .line 1686
    const-string/jumbo v1, "networkInfo"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getExtra(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/NetworkInfo;

    .line 1687
    .local v1, "info":Landroid/net/NetworkInfo;
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getType()I

    move-result v2

    const-string v3, "NetworkPolicy"

    const/16 v4, 0x11

    if-ne v4, v2, :cond_37

    sget-object v2, Landroid/net/NetworkInfo$State;->DISCONNECTED:Landroid/net/NetworkInfo$State;

    .line 1688
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v5

    if-ne v2, v5, :cond_37

    .line 1689
    const-string v2, "handle vpn disconnect event."

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1690
    iget-object v2, p0, Lcom/android/server/net/NetworkPolicyManagerService$16;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    invoke-virtual {v2}, Lcom/android/server/net/NetworkPolicyManagerService;->handleVpnDisconnectEvent()V

    goto :goto_4f

    .line 1691
    :cond_37
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getType()I

    move-result v2

    if-ne v4, v2, :cond_4f

    sget-object v2, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;

    .line 1692
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v4

    if-ne v2, v4, :cond_4f

    .line 1693
    const-string v2, "handle vpn connect event."

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1694
    iget-object v2, p0, Lcom/android/server/net/NetworkPolicyManagerService$16;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    invoke-virtual {v2}, Lcom/android/server/net/NetworkPolicyManagerService;->handleVpnConnectEvent()V

    .line 1698
    .end local v1  # "info":Landroid/net/NetworkInfo;
    :cond_4f
    :goto_4f
    return-void
.end method
