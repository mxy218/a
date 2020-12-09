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

    .line 838
    iput-object p1, p0, Landroid/net/ip/IpServer$TetheredState;->this$0:Landroid/net/ip/IpServer;

    invoke-direct {p0, p1}, Landroid/net/ip/IpServer$BaseServingState;-><init>(Landroid/net/ip/IpServer;)V

    return-void
.end method

.method private cleanupUpstream()V
    .registers 3

    .line 857
    iget-object v0, p0, Landroid/net/ip/IpServer$TetheredState;->this$0:Landroid/net/ip/IpServer;

    invoke-static {v0}, Landroid/net/ip/IpServer;->access$2200(Landroid/net/ip/IpServer;)Landroid/net/util/InterfaceSet;

    move-result-object v0

    if-nez v0, :cond_9

    return-void

    .line 859
    :cond_9
    iget-object v0, p0, Landroid/net/ip/IpServer$TetheredState;->this$0:Landroid/net/ip/IpServer;

    invoke-static {v0}, Landroid/net/ip/IpServer;->access$2200(Landroid/net/ip/IpServer;)Landroid/net/util/InterfaceSet;

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

    invoke-direct {p0, v1}, Landroid/net/ip/IpServer$TetheredState;->cleanupUpstreamInterface(Ljava/lang/String;)V

    goto :goto_15

    .line 860
    :cond_25
    iget-object v0, p0, Landroid/net/ip/IpServer$TetheredState;->this$0:Landroid/net/ip/IpServer;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/net/ip/IpServer;->access$2202(Landroid/net/ip/IpServer;Landroid/net/util/InterfaceSet;)Landroid/net/util/InterfaceSet;

    .line 861
    return-void
.end method

.method private cleanupUpstreamInterface(Ljava/lang/String;)V
    .registers 4

    .line 870
    :try_start_0
    iget-object v0, p0, Landroid/net/ip/IpServer$TetheredState;->this$0:Landroid/net/ip/IpServer;

    invoke-static {v0}, Landroid/net/ip/IpServer;->access$2300(Landroid/net/ip/IpServer;)Landroid/net/INetworkStatsService;

    move-result-object v0

    invoke-interface {v0}, Landroid/net/INetworkStatsService;->forceUpdate()V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_9} :catch_a

    .line 873
    goto :goto_b

    .line 871
    :catch_a
    move-exception v0

    .line 875
    :goto_b
    :try_start_b
    iget-object v0, p0, Landroid/net/ip/IpServer$TetheredState;->this$0:Landroid/net/ip/IpServer;

    invoke-static {v0}, Landroid/net/ip/IpServer;->access$1600(Landroid/net/ip/IpServer;)Landroid/os/INetworkManagementService;

    move-result-object v0

    iget-object v1, p0, Landroid/net/ip/IpServer$TetheredState;->this$0:Landroid/net/ip/IpServer;

    invoke-static {v1}, Landroid/net/ip/IpServer;->access$1500(Landroid/net/ip/IpServer;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Landroid/os/INetworkManagementService;->stopInterfaceForwarding(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1a
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_1a} :catch_1b

    .line 878
    goto :goto_1c

    .line 876
    :catch_1b
    move-exception v0

    .line 880
    :goto_1c
    :try_start_1c
    iget-object v0, p0, Landroid/net/ip/IpServer$TetheredState;->this$0:Landroid/net/ip/IpServer;

    invoke-static {v0}, Landroid/net/ip/IpServer;->access$1600(Landroid/net/ip/IpServer;)Landroid/os/INetworkManagementService;

    move-result-object v0

    iget-object v1, p0, Landroid/net/ip/IpServer$TetheredState;->this$0:Landroid/net/ip/IpServer;

    invoke-static {v1}, Landroid/net/ip/IpServer;->access$1500(Landroid/net/ip/IpServer;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Landroid/os/INetworkManagementService;->disableNat(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2b
    .catch Ljava/lang/Exception; {:try_start_1c .. :try_end_2b} :catch_2c

    .line 883
    goto :goto_2d

    .line 881
    :catch_2c
    move-exception p1

    .line 884
    :goto_2d
    return-void
.end method

.method private noChangeInUpstreamIfaceSet(Landroid/net/util/InterfaceSet;)Z
    .registers 3

    .line 936
    iget-object v0, p0, Landroid/net/ip/IpServer$TetheredState;->this$0:Landroid/net/ip/IpServer;

    invoke-static {v0}, Landroid/net/ip/IpServer;->access$2200(Landroid/net/ip/IpServer;)Landroid/net/util/InterfaceSet;

    move-result-object v0

    if-nez v0, :cond_c

    if-nez p1, :cond_c

    const/4 p1, 0x1

    return p1

    .line 937
    :cond_c
    iget-object v0, p0, Landroid/net/ip/IpServer$TetheredState;->this$0:Landroid/net/ip/IpServer;

    invoke-static {v0}, Landroid/net/ip/IpServer;->access$2200(Landroid/net/ip/IpServer;)Landroid/net/util/InterfaceSet;

    move-result-object v0

    if-eqz v0, :cond_21

    if-eqz p1, :cond_21

    .line 938
    iget-object v0, p0, Landroid/net/ip/IpServer$TetheredState;->this$0:Landroid/net/ip/IpServer;

    invoke-static {v0}, Landroid/net/ip/IpServer;->access$2200(Landroid/net/ip/IpServer;)Landroid/net/util/InterfaceSet;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/net/util/InterfaceSet;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    .line 940
    :cond_21
    const/4 p1, 0x0

    return p1
.end method

.method private upstreamInterfacesAdd(Landroid/net/util/InterfaceSet;)Ljava/util/Set;
    .registers 3
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

    .line 952
    new-instance v0, Ljava/util/HashSet;

    iget-object p1, p1, Landroid/net/util/InterfaceSet;->ifnames:Ljava/util/Set;

    invoke-direct {v0, p1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 953
    iget-object p1, p0, Landroid/net/ip/IpServer$TetheredState;->this$0:Landroid/net/ip/IpServer;

    invoke-static {p1}, Landroid/net/ip/IpServer;->access$2200(Landroid/net/ip/IpServer;)Landroid/net/util/InterfaceSet;

    move-result-object p1

    if-eqz p1, :cond_1a

    iget-object p1, p0, Landroid/net/ip/IpServer$TetheredState;->this$0:Landroid/net/ip/IpServer;

    invoke-static {p1}, Landroid/net/ip/IpServer;->access$2200(Landroid/net/ip/IpServer;)Landroid/net/util/InterfaceSet;

    move-result-object p1

    iget-object p1, p1, Landroid/net/util/InterfaceSet;->ifnames:Ljava/util/Set;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->removeAll(Ljava/util/Collection;)Z

    .line 954
    :cond_1a
    return-object v0
.end method

.method private upstreamInterfacesRemoved(Landroid/net/util/InterfaceSet;)Ljava/util/Set;
    .registers 4
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

    .line 944
    iget-object v0, p0, Landroid/net/ip/IpServer$TetheredState;->this$0:Landroid/net/ip/IpServer;

    invoke-static {v0}, Landroid/net/ip/IpServer;->access$2200(Landroid/net/ip/IpServer;)Landroid/net/util/InterfaceSet;

    move-result-object v0

    if-nez v0, :cond_e

    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    return-object p1

    .line 946
    :cond_e
    new-instance v0, Ljava/util/HashSet;

    iget-object v1, p0, Landroid/net/ip/IpServer$TetheredState;->this$0:Landroid/net/ip/IpServer;

    invoke-static {v1}, Landroid/net/ip/IpServer;->access$2200(Landroid/net/ip/IpServer;)Landroid/net/util/InterfaceSet;

    move-result-object v1

    iget-object v1, v1, Landroid/net/util/InterfaceSet;->ifnames:Ljava/util/Set;

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 947
    iget-object p1, p1, Landroid/net/util/InterfaceSet;->ifnames:Ljava/util/Set;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->removeAll(Ljava/util/Collection;)Z

    .line 948
    return-object v0
.end method


# virtual methods
.method public enter()V
    .registers 3

    .line 841
    invoke-super {p0}, Landroid/net/ip/IpServer$BaseServingState;->enter()V

    .line 842
    iget-object v0, p0, Landroid/net/ip/IpServer$TetheredState;->this$0:Landroid/net/ip/IpServer;

    invoke-static {v0}, Landroid/net/ip/IpServer;->access$000(Landroid/net/ip/IpServer;)I

    move-result v0

    if-eqz v0, :cond_14

    .line 843
    iget-object v0, p0, Landroid/net/ip/IpServer$TetheredState;->this$0:Landroid/net/ip/IpServer;

    invoke-static {v0}, Landroid/net/ip/IpServer;->access$100(Landroid/net/ip/IpServer;)Lcom/android/internal/util/State;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/ip/IpServer;->transitionTo(Lcom/android/internal/util/IState;)V

    .line 847
    :cond_14
    iget-object v0, p0, Landroid/net/ip/IpServer$TetheredState;->this$0:Landroid/net/ip/IpServer;

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/net/ip/IpServer;->access$800(Landroid/net/ip/IpServer;I)V

    .line 848
    return-void
.end method

.method public exit()V
    .registers 1

    .line 852
    invoke-direct {p0}, Landroid/net/ip/IpServer$TetheredState;->cleanupUpstream()V

    .line 853
    invoke-super {p0}, Landroid/net/ip/IpServer$BaseServingState;->exit()V

    .line 854
    return-void
.end method

.method public processMessage(Landroid/os/Message;)Z
    .registers 6

    .line 888
    invoke-super {p0, p1}, Landroid/net/ip/IpServer$BaseServingState;->processMessage(Landroid/os/Message;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_8

    return v1

    .line 890
    :cond_8
    iget-object v0, p0, Landroid/net/ip/IpServer$TetheredState;->this$0:Landroid/net/ip/IpServer;

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-static {v0, p0, v2}, Landroid/net/ip/IpServer;->access$900(Landroid/net/ip/IpServer;Lcom/android/internal/util/State;I)V

    .line 891
    iget v0, p1, Landroid/os/Message;->what:I

    const v2, 0x50066

    if-eq v0, v2, :cond_b1

    const v2, 0x50070

    if-eq v0, v2, :cond_1d

    .line 930
    const/4 p1, 0x0

    return p1

    .line 896
    :cond_1d
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/net/util/InterfaceSet;

    .line 897
    invoke-direct {p0, p1}, Landroid/net/ip/IpServer$TetheredState;->noChangeInUpstreamIfaceSet(Landroid/net/util/InterfaceSet;)Z

    move-result v0

    if-eqz v0, :cond_29

    .line 899
    goto/16 :goto_bd

    .line 902
    :cond_29
    if-nez p1, :cond_30

    .line 903
    invoke-direct {p0}, Landroid/net/ip/IpServer$TetheredState;->cleanupUpstream()V

    .line 904
    goto/16 :goto_bd

    .line 907
    :cond_30
    invoke-direct {p0, p1}, Landroid/net/ip/IpServer$TetheredState;->upstreamInterfacesRemoved(Landroid/net/util/InterfaceSet;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_38
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_48

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 908
    invoke-direct {p0, v2}, Landroid/net/ip/IpServer$TetheredState;->cleanupUpstreamInterface(Ljava/lang/String;)V

    .line 909
    goto :goto_38

    .line 911
    :cond_48
    invoke-direct {p0, p1}, Landroid/net/ip/IpServer$TetheredState;->upstreamInterfacesAdd(Landroid/net/util/InterfaceSet;)Ljava/util/Set;

    move-result-object v0

    .line 914
    iget-object v2, p0, Landroid/net/ip/IpServer$TetheredState;->this$0:Landroid/net/ip/IpServer;

    invoke-static {v2, p1}, Landroid/net/ip/IpServer;->access$2202(Landroid/net/ip/IpServer;Landroid/net/util/InterfaceSet;)Landroid/net/util/InterfaceSet;

    .line 916
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_55
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_b0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 918
    :try_start_61
    iget-object v2, p0, Landroid/net/ip/IpServer$TetheredState;->this$0:Landroid/net/ip/IpServer;

    invoke-static {v2}, Landroid/net/ip/IpServer;->access$1600(Landroid/net/ip/IpServer;)Landroid/os/INetworkManagementService;

    move-result-object v2

    iget-object v3, p0, Landroid/net/ip/IpServer$TetheredState;->this$0:Landroid/net/ip/IpServer;

    invoke-static {v3}, Landroid/net/ip/IpServer;->access$1500(Landroid/net/ip/IpServer;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3, v0}, Landroid/os/INetworkManagementService;->enableNat(Ljava/lang/String;Ljava/lang/String;)V

    .line 919
    iget-object v2, p0, Landroid/net/ip/IpServer$TetheredState;->this$0:Landroid/net/ip/IpServer;

    invoke-static {v2}, Landroid/net/ip/IpServer;->access$1600(Landroid/net/ip/IpServer;)Landroid/os/INetworkManagementService;

    move-result-object v2

    iget-object v3, p0, Landroid/net/ip/IpServer$TetheredState;->this$0:Landroid/net/ip/IpServer;

    invoke-static {v3}, Landroid/net/ip/IpServer;->access$1500(Landroid/net/ip/IpServer;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3, v0}, Landroid/os/INetworkManagementService;->startInterfaceForwarding(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_7f
    .catch Ljava/lang/Exception; {:try_start_61 .. :try_end_7f} :catch_81

    .line 926
    nop

    .line 927
    goto :goto_55

    .line 920
    :catch_81
    move-exception p1

    .line 921
    iget-object v0, p0, Landroid/net/ip/IpServer$TetheredState;->this$0:Landroid/net/ip/IpServer;

    invoke-static {v0}, Landroid/net/ip/IpServer;->access$300(Landroid/net/ip/IpServer;)Landroid/net/util/SharedLog;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception enabling NAT: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/net/util/SharedLog;->e(Ljava/lang/String;)V

    .line 922
    invoke-direct {p0}, Landroid/net/ip/IpServer$TetheredState;->cleanupUpstream()V

    .line 923
    iget-object p1, p0, Landroid/net/ip/IpServer$TetheredState;->this$0:Landroid/net/ip/IpServer;

    const/16 v0, 0x8

    invoke-static {p1, v0}, Landroid/net/ip/IpServer;->access$002(Landroid/net/ip/IpServer;I)I

    .line 924
    iget-object p1, p0, Landroid/net/ip/IpServer$TetheredState;->this$0:Landroid/net/ip/IpServer;

    invoke-static {p1}, Landroid/net/ip/IpServer;->access$100(Landroid/net/ip/IpServer;)Lcom/android/internal/util/State;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/net/ip/IpServer;->transitionTo(Lcom/android/internal/util/IState;)V

    .line 925
    return v1

    .line 928
    :cond_b0
    goto :goto_bd

    .line 893
    :cond_b1
    iget-object p1, p0, Landroid/net/ip/IpServer$TetheredState;->this$0:Landroid/net/ip/IpServer;

    invoke-static {p1}, Landroid/net/ip/IpServer;->access$300(Landroid/net/ip/IpServer;)Landroid/net/util/SharedLog;

    move-result-object p1

    const-string v0, "CMD_TETHER_REQUESTED while already tethering."

    invoke-virtual {p1, v0}, Landroid/net/util/SharedLog;->e(Ljava/lang/String;)V

    .line 894
    nop

    .line 932
    :goto_bd
    return v1
.end method
