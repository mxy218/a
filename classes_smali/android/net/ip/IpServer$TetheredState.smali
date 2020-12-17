.class Landroid/net/ip/IpServer$TetheredState;
.super Landroid/net/ip/IpServer$BaseServingState;
.source "IpServer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/ip/IpServer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "TetheredState"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/net/ip/IpServer;


# direct methods
.method constructor <init>(Landroid/net/ip/IpServer;)V
    .registers 2
    .param p1, "this$0"  # Landroid/net/ip/IpServer;

    .line 874
    iput-object p1, p0, Landroid/net/ip/IpServer$TetheredState;->this$0:Landroid/net/ip/IpServer;

    invoke-direct {p0, p1}, Landroid/net/ip/IpServer$BaseServingState;-><init>(Landroid/net/ip/IpServer;)V

    return-void
.end method

.method private cleanupUpstream()V
    .registers 3

    .line 899
    iget-object v0, p0, Landroid/net/ip/IpServer$TetheredState;->this$0:Landroid/net/ip/IpServer;

    invoke-static {v0}, Landroid/net/ip/IpServer;->access$2400(Landroid/net/ip/IpServer;)Landroid/net/util/InterfaceSet;

    move-result-object v0

    if-nez v0, :cond_9

    return-void

    .line 901
    :cond_9
    iget-object v0, p0, Landroid/net/ip/IpServer$TetheredState;->this$0:Landroid/net/ip/IpServer;

    invoke-static {v0}, Landroid/net/ip/IpServer;->access$2400(Landroid/net/ip/IpServer;)Landroid/net/util/InterfaceSet;

    move-result-object v0

    iget-object v0, v0, Landroid/net/util/InterfaceSet;->ifnames:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_15
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_25

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .local v1, "ifname":Ljava/lang/String;
    invoke-direct {p0, v1}, Landroid/net/ip/IpServer$TetheredState;->cleanupUpstreamInterface(Ljava/lang/String;)V

    .end local v1  # "ifname":Ljava/lang/String;
    goto :goto_15

    .line 902
    :cond_25
    iget-object v0, p0, Landroid/net/ip/IpServer$TetheredState;->this$0:Landroid/net/ip/IpServer;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/net/ip/IpServer;->access$2402(Landroid/net/ip/IpServer;Landroid/net/util/InterfaceSet;)Landroid/net/util/InterfaceSet;

    .line 903
    return-void
.end method

.method private cleanupUpstreamInterface(Ljava/lang/String;)V
    .registers 4
    .param p1, "upstreamIface"  # Ljava/lang/String;

    .line 912
    :try_start_0
    iget-object v0, p0, Landroid/net/ip/IpServer$TetheredState;->this$0:Landroid/net/ip/IpServer;

    invoke-static {v0}, Landroid/net/ip/IpServer;->access$2500(Landroid/net/ip/IpServer;)Landroid/net/INetworkStatsService;

    move-result-object v0

    invoke-interface {v0}, Landroid/net/INetworkStatsService;->forceUpdate()V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_9} :catch_a

    .line 915
    goto :goto_b

    .line 913
    :catch_a
    move-exception v0

    .line 917
    :goto_b
    :try_start_b
    iget-object v0, p0, Landroid/net/ip/IpServer$TetheredState;->this$0:Landroid/net/ip/IpServer;

    invoke-static {v0}, Landroid/net/ip/IpServer;->access$1700(Landroid/net/ip/IpServer;)Landroid/os/INetworkManagementService;

    move-result-object v0

    iget-object v1, p0, Landroid/net/ip/IpServer$TetheredState;->this$0:Landroid/net/ip/IpServer;

    invoke-static {v1}, Landroid/net/ip/IpServer;->access$1500(Landroid/net/ip/IpServer;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Landroid/os/INetworkManagementService;->stopInterfaceForwarding(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1a
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_1a} :catch_1b

    .line 920
    goto :goto_1c

    .line 918
    :catch_1b
    move-exception v0

    .line 922
    :goto_1c
    :try_start_1c
    iget-object v0, p0, Landroid/net/ip/IpServer$TetheredState;->this$0:Landroid/net/ip/IpServer;

    invoke-static {v0}, Landroid/net/ip/IpServer;->access$1700(Landroid/net/ip/IpServer;)Landroid/os/INetworkManagementService;

    move-result-object v0

    iget-object v1, p0, Landroid/net/ip/IpServer$TetheredState;->this$0:Landroid/net/ip/IpServer;

    invoke-static {v1}, Landroid/net/ip/IpServer;->access$1500(Landroid/net/ip/IpServer;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Landroid/os/INetworkManagementService;->disableNat(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2b
    .catch Ljava/lang/Exception; {:try_start_1c .. :try_end_2b} :catch_2c

    .line 925
    goto :goto_2d

    .line 923
    :catch_2c
    move-exception v0

    .line 926
    :goto_2d
    return-void
.end method

.method private noChangeInUpstreamIfaceSet(Landroid/net/util/InterfaceSet;)Z
    .registers 3
    .param p1, "newIfaces"  # Landroid/net/util/InterfaceSet;

    .line 983
    iget-object v0, p0, Landroid/net/ip/IpServer$TetheredState;->this$0:Landroid/net/ip/IpServer;

    invoke-static {v0}, Landroid/net/ip/IpServer;->access$2400(Landroid/net/ip/IpServer;)Landroid/net/util/InterfaceSet;

    move-result-object v0

    if-nez v0, :cond_c

    if-nez p1, :cond_c

    const/4 v0, 0x1

    return v0

    .line 984
    :cond_c
    iget-object v0, p0, Landroid/net/ip/IpServer$TetheredState;->this$0:Landroid/net/ip/IpServer;

    invoke-static {v0}, Landroid/net/ip/IpServer;->access$2400(Landroid/net/ip/IpServer;)Landroid/net/util/InterfaceSet;

    move-result-object v0

    if-eqz v0, :cond_21

    if-eqz p1, :cond_21

    .line 985
    iget-object v0, p0, Landroid/net/ip/IpServer$TetheredState;->this$0:Landroid/net/ip/IpServer;

    invoke-static {v0}, Landroid/net/ip/IpServer;->access$2400(Landroid/net/ip/IpServer;)Landroid/net/util/InterfaceSet;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/net/util/InterfaceSet;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0

    .line 987
    :cond_21
    const/4 v0, 0x0

    return v0
.end method

.method private upstreamInterfacesAdd(Landroid/net/util/InterfaceSet;)Ljava/util/Set;
    .registers 4
    .param p1, "newIfaces"  # Landroid/net/util/InterfaceSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/util/InterfaceSet;",
            ")",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 999
    new-instance v0, Ljava/util/HashSet;

    iget-object v1, p1, Landroid/net/util/InterfaceSet;->ifnames:Ljava/util/Set;

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 1000
    .local v0, "added":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    iget-object v1, p0, Landroid/net/ip/IpServer$TetheredState;->this$0:Landroid/net/ip/IpServer;

    invoke-static {v1}, Landroid/net/ip/IpServer;->access$2400(Landroid/net/ip/IpServer;)Landroid/net/util/InterfaceSet;

    move-result-object v1

    if-eqz v1, :cond_1a

    iget-object v1, p0, Landroid/net/ip/IpServer$TetheredState;->this$0:Landroid/net/ip/IpServer;

    invoke-static {v1}, Landroid/net/ip/IpServer;->access$2400(Landroid/net/ip/IpServer;)Landroid/net/util/InterfaceSet;

    move-result-object v1

    iget-object v1, v1, Landroid/net/util/InterfaceSet;->ifnames:Ljava/util/Set;

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->removeAll(Ljava/util/Collection;)Z

    .line 1001
    :cond_1a
    return-object v0
.end method

.method private upstreamInterfacesRemoved(Landroid/net/util/InterfaceSet;)Ljava/util/Set;
    .registers 4
    .param p1, "newIfaces"  # Landroid/net/util/InterfaceSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/util/InterfaceSet;",
            ")",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 991
    iget-object v0, p0, Landroid/net/ip/IpServer$TetheredState;->this$0:Landroid/net/ip/IpServer;

    invoke-static {v0}, Landroid/net/ip/IpServer;->access$2400(Landroid/net/ip/IpServer;)Landroid/net/util/InterfaceSet;

    move-result-object v0

    if-nez v0, :cond_e

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    return-object v0

    .line 993
    :cond_e
    new-instance v0, Ljava/util/HashSet;

    iget-object v1, p0, Landroid/net/ip/IpServer$TetheredState;->this$0:Landroid/net/ip/IpServer;

    invoke-static {v1}, Landroid/net/ip/IpServer;->access$2400(Landroid/net/ip/IpServer;)Landroid/net/util/InterfaceSet;

    move-result-object v1

    iget-object v1, v1, Landroid/net/util/InterfaceSet;->ifnames:Ljava/util/Set;

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 994
    .local v0, "removed":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    iget-object v1, p1, Landroid/net/util/InterfaceSet;->ifnames:Ljava/util/Set;

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->removeAll(Ljava/util/Collection;)Z

    .line 995
    return-object v0
.end method


# virtual methods
.method public enter()V
    .registers 3

    .line 877
    invoke-super {p0}, Landroid/net/ip/IpServer$BaseServingState;->enter()V

    .line 878
    iget-object v0, p0, Landroid/net/ip/IpServer$TetheredState;->this$0:Landroid/net/ip/IpServer;

    invoke-static {v0}, Landroid/net/ip/IpServer;->access$000(Landroid/net/ip/IpServer;)I

    move-result v0

    if-eqz v0, :cond_14

    .line 879
    iget-object v0, p0, Landroid/net/ip/IpServer$TetheredState;->this$0:Landroid/net/ip/IpServer;

    invoke-static {v0}, Landroid/net/ip/IpServer;->access$100(Landroid/net/ip/IpServer;)Lcom/android/internal/util/State;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/ip/IpServer;->transitionTo(Lcom/android/internal/util/IState;)V

    .line 883
    :cond_14
    iget-object v0, p0, Landroid/net/ip/IpServer$TetheredState;->this$0:Landroid/net/ip/IpServer;

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/net/ip/IpServer;->access$800(Landroid/net/ip/IpServer;I)V

    .line 884
    return-void
.end method

.method public exit()V
    .registers 4

    .line 889
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "exit Enabling NAT: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/net/ip/IpServer$TetheredState;->this$0:Landroid/net/ip/IpServer;

    invoke-static {v1}, Landroid/net/ip/IpServer;->access$2300(Landroid/net/ip/IpServer;)Landroid/net/ip/IpServer$Callback;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/ip/IpServer$Callback;->shouldEnableNat()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "IpServer"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 890
    iget-object v0, p0, Landroid/net/ip/IpServer$TetheredState;->this$0:Landroid/net/ip/IpServer;

    invoke-static {v0}, Landroid/net/ip/IpServer;->access$2300(Landroid/net/ip/IpServer;)Landroid/net/ip/IpServer$Callback;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/ip/IpServer$Callback;->shouldEnableNat()Z

    move-result v0

    if-eqz v0, :cond_2f

    .line 891
    invoke-direct {p0}, Landroid/net/ip/IpServer$TetheredState;->cleanupUpstream()V

    .line 894
    :cond_2f
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "["

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Landroid/net/ip/IpServer$TetheredState;->this$0:Landroid/net/ip/IpServer;

    invoke-static {v2}, Landroid/net/ip/IpServer;->access$1500(Landroid/net/ip/IpServer;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "] TetheredState exit"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 895
    invoke-super {p0}, Landroid/net/ip/IpServer$BaseServingState;->exit()V

    .line 896
    return-void
.end method

.method public processMessage(Landroid/os/Message;)Z
    .registers 10
    .param p1, "message"  # Landroid/os/Message;

    .line 930
    invoke-super {p0, p1}, Landroid/net/ip/IpServer$BaseServingState;->processMessage(Landroid/os/Message;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_8

    return v1

    .line 932
    :cond_8
    iget-object v0, p0, Landroid/net/ip/IpServer$TetheredState;->this$0:Landroid/net/ip/IpServer;

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-static {v0, p0, v2}, Landroid/net/ip/IpServer;->access$900(Landroid/net/ip/IpServer;Lcom/android/internal/util/State;I)V

    .line 933
    iget v0, p1, Landroid/os/Message;->what:I

    const v2, 0x50066

    if-eq v0, v2, :cond_de

    const v2, 0x50070

    if-eq v0, v2, :cond_1d

    .line 977
    const/4 v0, 0x0

    return v0

    .line 938
    :cond_1d
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/net/util/InterfaceSet;

    .line 939
    .local v0, "newUpstreamIfaceSet":Landroid/net/util/InterfaceSet;
    invoke-direct {p0, v0}, Landroid/net/ip/IpServer$TetheredState;->noChangeInUpstreamIfaceSet(Landroid/net/util/InterfaceSet;)Z

    move-result v2

    if-eqz v2, :cond_29

    .line 941
    goto/16 :goto_ea

    .line 944
    :cond_29
    if-nez v0, :cond_30

    .line 945
    invoke-direct {p0}, Landroid/net/ip/IpServer$TetheredState;->cleanupUpstream()V

    .line 946
    goto/16 :goto_ea

    .line 949
    :cond_30
    invoke-direct {p0, v0}, Landroid/net/ip/IpServer$TetheredState;->upstreamInterfacesRemoved(Landroid/net/util/InterfaceSet;)Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_38
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_48

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 950
    .local v3, "removed":Ljava/lang/String;
    invoke-direct {p0, v3}, Landroid/net/ip/IpServer$TetheredState;->cleanupUpstreamInterface(Ljava/lang/String;)V

    .line 951
    .end local v3  # "removed":Ljava/lang/String;
    goto :goto_38

    .line 953
    :cond_48
    invoke-direct {p0, v0}, Landroid/net/ip/IpServer$TetheredState;->upstreamInterfacesAdd(Landroid/net/util/InterfaceSet;)Ljava/util/Set;

    move-result-object v2

    .line 956
    .local v2, "added":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    iget-object v3, p0, Landroid/net/ip/IpServer$TetheredState;->this$0:Landroid/net/ip/IpServer;

    invoke-static {v3, v0}, Landroid/net/ip/IpServer;->access$2402(Landroid/net/ip/IpServer;Landroid/net/util/InterfaceSet;)Landroid/net/util/InterfaceSet;

    .line 958
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_55
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_dd

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 960
    .local v4, "ifname":Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Enabling NAT: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Landroid/net/ip/IpServer$TetheredState;->this$0:Landroid/net/ip/IpServer;

    invoke-static {v6}, Landroid/net/ip/IpServer;->access$2300(Landroid/net/ip/IpServer;)Landroid/net/ip/IpServer$Callback;

    move-result-object v6

    invoke-virtual {v6}, Landroid/net/ip/IpServer$Callback;->shouldEnableNat()Z

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "IpServer"

    invoke-static {v6, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 961
    iget-object v5, p0, Landroid/net/ip/IpServer$TetheredState;->this$0:Landroid/net/ip/IpServer;

    invoke-static {v5}, Landroid/net/ip/IpServer;->access$2300(Landroid/net/ip/IpServer;)Landroid/net/ip/IpServer$Callback;

    move-result-object v5

    invoke-virtual {v5}, Landroid/net/ip/IpServer$Callback;->shouldEnableNat()Z

    move-result v5

    if-eqz v5, :cond_db

    .line 964
    :try_start_8d
    iget-object v5, p0, Landroid/net/ip/IpServer$TetheredState;->this$0:Landroid/net/ip/IpServer;

    invoke-static {v5}, Landroid/net/ip/IpServer;->access$1700(Landroid/net/ip/IpServer;)Landroid/os/INetworkManagementService;

    move-result-object v5

    iget-object v6, p0, Landroid/net/ip/IpServer$TetheredState;->this$0:Landroid/net/ip/IpServer;

    invoke-static {v6}, Landroid/net/ip/IpServer;->access$1500(Landroid/net/ip/IpServer;)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6, v4}, Landroid/os/INetworkManagementService;->enableNat(Ljava/lang/String;Ljava/lang/String;)V

    .line 965
    iget-object v5, p0, Landroid/net/ip/IpServer$TetheredState;->this$0:Landroid/net/ip/IpServer;

    invoke-static {v5}, Landroid/net/ip/IpServer;->access$1700(Landroid/net/ip/IpServer;)Landroid/os/INetworkManagementService;

    move-result-object v5

    iget-object v6, p0, Landroid/net/ip/IpServer$TetheredState;->this$0:Landroid/net/ip/IpServer;

    invoke-static {v6}, Landroid/net/ip/IpServer;->access$1500(Landroid/net/ip/IpServer;)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6, v4}, Landroid/os/INetworkManagementService;->startInterfaceForwarding(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_ab
    .catch Ljava/lang/Exception; {:try_start_8d .. :try_end_ab} :catch_ac

    .line 972
    goto :goto_db

    .line 966
    :catch_ac
    move-exception v3

    .line 967
    .local v3, "e":Ljava/lang/Exception;
    iget-object v5, p0, Landroid/net/ip/IpServer$TetheredState;->this$0:Landroid/net/ip/IpServer;

    invoke-static {v5}, Landroid/net/ip/IpServer;->access$300(Landroid/net/ip/IpServer;)Landroid/net/util/SharedLog;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Exception enabling NAT: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/net/util/SharedLog;->e(Ljava/lang/String;)V

    .line 968
    invoke-direct {p0}, Landroid/net/ip/IpServer$TetheredState;->cleanupUpstream()V

    .line 969
    iget-object v5, p0, Landroid/net/ip/IpServer$TetheredState;->this$0:Landroid/net/ip/IpServer;

    const/16 v6, 0x8

    invoke-static {v5, v6}, Landroid/net/ip/IpServer;->access$002(Landroid/net/ip/IpServer;I)I

    .line 970
    iget-object v5, p0, Landroid/net/ip/IpServer$TetheredState;->this$0:Landroid/net/ip/IpServer;

    invoke-static {v5}, Landroid/net/ip/IpServer;->access$100(Landroid/net/ip/IpServer;)Lcom/android/internal/util/State;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/net/ip/IpServer;->transitionTo(Lcom/android/internal/util/IState;)V

    .line 971
    return v1

    .line 974
    .end local v3  # "e":Ljava/lang/Exception;
    .end local v4  # "ifname":Ljava/lang/String;
    :cond_db
    :goto_db
    goto/16 :goto_55

    .line 975
    :cond_dd
    goto :goto_ea

    .line 935
    .end local v0  # "newUpstreamIfaceSet":Landroid/net/util/InterfaceSet;
    .end local v2  # "added":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_de
    iget-object v0, p0, Landroid/net/ip/IpServer$TetheredState;->this$0:Landroid/net/ip/IpServer;

    invoke-static {v0}, Landroid/net/ip/IpServer;->access$300(Landroid/net/ip/IpServer;)Landroid/net/util/SharedLog;

    move-result-object v0

    const-string v2, "CMD_TETHER_REQUESTED while already tethering."

    invoke-virtual {v0, v2}, Landroid/net/util/SharedLog;->e(Ljava/lang/String;)V

    .line 936
    nop

    .line 979
    :goto_ea
    return v1
.end method
