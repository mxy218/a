.class Lcom/android/server/NetworkManagementService$NetdUnsolicitedEventListener;
.super Landroid/net/INetdUnsolicitedEventListener$Stub;
.source "NetworkManagementService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/NetworkManagementService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "NetdUnsolicitedEventListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/NetworkManagementService;


# direct methods
.method private constructor <init>(Lcom/android/server/NetworkManagementService;)V
    .registers 2

    .line 777
    iput-object p1, p0, Lcom/android/server/NetworkManagementService$NetdUnsolicitedEventListener;->this$0:Lcom/android/server/NetworkManagementService;

    invoke-direct {p0}, Landroid/net/INetdUnsolicitedEventListener$Stub;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/NetworkManagementService;Lcom/android/server/NetworkManagementService$1;)V
    .registers 3

    .line 777
    invoke-direct {p0, p1}, Lcom/android/server/NetworkManagementService$NetdUnsolicitedEventListener;-><init>(Lcom/android/server/NetworkManagementService;)V

    return-void
.end method


# virtual methods
.method public getInterfaceVersion()I
    .registers 2

    .line 858
    const/4 v0, 0x2

    return v0
.end method

.method public synthetic lambda$onInterfaceAdded$5$NetworkManagementService$NetdUnsolicitedEventListener(Ljava/lang/String;)V
    .registers 3

    .line 819
    iget-object v0, p0, Lcom/android/server/NetworkManagementService$NetdUnsolicitedEventListener;->this$0:Lcom/android/server/NetworkManagementService;

    invoke-static {v0, p1}, Lcom/android/server/NetworkManagementService;->access$1000(Lcom/android/server/NetworkManagementService;Ljava/lang/String;)V

    return-void
.end method

.method public synthetic lambda$onInterfaceAddressRemoved$4$NetworkManagementService$NetdUnsolicitedEventListener(Ljava/lang/String;Landroid/net/LinkAddress;)V
    .registers 4

    .line 814
    iget-object v0, p0, Lcom/android/server/NetworkManagementService$NetdUnsolicitedEventListener;->this$0:Lcom/android/server/NetworkManagementService;

    invoke-static {v0, p1, p2}, Lcom/android/server/NetworkManagementService;->access$1100(Lcom/android/server/NetworkManagementService;Ljava/lang/String;Landroid/net/LinkAddress;)V

    return-void
.end method

.method public synthetic lambda$onInterfaceAddressUpdated$3$NetworkManagementService$NetdUnsolicitedEventListener(Ljava/lang/String;Landroid/net/LinkAddress;)V
    .registers 4

    .line 807
    iget-object v0, p0, Lcom/android/server/NetworkManagementService$NetdUnsolicitedEventListener;->this$0:Lcom/android/server/NetworkManagementService;

    invoke-static {v0, p1, p2}, Lcom/android/server/NetworkManagementService;->access$1200(Lcom/android/server/NetworkManagementService;Ljava/lang/String;Landroid/net/LinkAddress;)V

    return-void
.end method

.method public synthetic lambda$onInterfaceChanged$7$NetworkManagementService$NetdUnsolicitedEventListener(Ljava/lang/String;Z)V
    .registers 4

    .line 830
    iget-object v0, p0, Lcom/android/server/NetworkManagementService$NetdUnsolicitedEventListener;->this$0:Lcom/android/server/NetworkManagementService;

    invoke-static {v0, p1, p2}, Lcom/android/server/NetworkManagementService;->access$800(Lcom/android/server/NetworkManagementService;Ljava/lang/String;Z)V

    return-void
.end method

.method public synthetic lambda$onInterfaceClassActivityChanged$0$NetworkManagementService$NetdUnsolicitedEventListener(IZJI)V
    .registers 13

    .line 788
    iget-object v0, p0, Lcom/android/server/NetworkManagementService$NetdUnsolicitedEventListener;->this$0:Lcom/android/server/NetworkManagementService;

    const/4 v6, 0x0

    move v1, p1

    move v2, p2

    move-wide v3, p3

    move v5, p5

    invoke-static/range {v0 .. v6}, Lcom/android/server/NetworkManagementService;->access$1500(Lcom/android/server/NetworkManagementService;IZJIZ)V

    return-void
.end method

.method public synthetic lambda$onInterfaceDnsServerInfo$2$NetworkManagementService$NetdUnsolicitedEventListener(Ljava/lang/String;J[Ljava/lang/String;)V
    .registers 6

    .line 800
    iget-object v0, p0, Lcom/android/server/NetworkManagementService$NetdUnsolicitedEventListener;->this$0:Lcom/android/server/NetworkManagementService;

    invoke-static {v0, p1, p2, p3, p4}, Lcom/android/server/NetworkManagementService;->access$1300(Lcom/android/server/NetworkManagementService;Ljava/lang/String;J[Ljava/lang/String;)V

    return-void
.end method

.method public synthetic lambda$onInterfaceLinkStateChanged$8$NetworkManagementService$NetdUnsolicitedEventListener(Ljava/lang/String;Z)V
    .registers 4

    .line 836
    iget-object v0, p0, Lcom/android/server/NetworkManagementService$NetdUnsolicitedEventListener;->this$0:Lcom/android/server/NetworkManagementService;

    invoke-static {v0, p1, p2}, Lcom/android/server/NetworkManagementService;->access$700(Lcom/android/server/NetworkManagementService;Ljava/lang/String;Z)V

    return-void
.end method

.method public synthetic lambda$onInterfaceRemoved$6$NetworkManagementService$NetdUnsolicitedEventListener(Ljava/lang/String;)V
    .registers 3

    .line 824
    iget-object v0, p0, Lcom/android/server/NetworkManagementService$NetdUnsolicitedEventListener;->this$0:Lcom/android/server/NetworkManagementService;

    invoke-static {v0, p1}, Lcom/android/server/NetworkManagementService;->access$900(Lcom/android/server/NetworkManagementService;Ljava/lang/String;)V

    return-void
.end method

.method public synthetic lambda$onQuotaLimitReached$1$NetworkManagementService$NetdUnsolicitedEventListener(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    .line 794
    iget-object v0, p0, Lcom/android/server/NetworkManagementService$NetdUnsolicitedEventListener;->this$0:Lcom/android/server/NetworkManagementService;

    invoke-static {v0, p1, p2}, Lcom/android/server/NetworkManagementService;->access$1400(Lcom/android/server/NetworkManagementService;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public synthetic lambda$onRouteChanged$9$NetworkManagementService$NetdUnsolicitedEventListener(ZLandroid/net/RouteInfo;)V
    .registers 4

    .line 845
    iget-object v0, p0, Lcom/android/server/NetworkManagementService$NetdUnsolicitedEventListener;->this$0:Lcom/android/server/NetworkManagementService;

    invoke-static {v0, p1, p2}, Lcom/android/server/NetworkManagementService;->access$600(Lcom/android/server/NetworkManagementService;ZLandroid/net/RouteInfo;)V

    return-void
.end method

.method public onInterfaceAdded(Ljava/lang/String;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 819
    iget-object v0, p0, Lcom/android/server/NetworkManagementService$NetdUnsolicitedEventListener;->this$0:Lcom/android/server/NetworkManagementService;

    invoke-static {v0}, Lcom/android/server/NetworkManagementService;->access$400(Lcom/android/server/NetworkManagementService;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/server/-$$Lambda$NetworkManagementService$NetdUnsolicitedEventListener$ne4qDQiQuX7-WNuF8Q_c7HnWnG0;

    invoke-direct {v1, p0, p1}, Lcom/android/server/-$$Lambda$NetworkManagementService$NetdUnsolicitedEventListener$ne4qDQiQuX7-WNuF8Q_c7HnWnG0;-><init>(Lcom/android/server/NetworkManagementService$NetdUnsolicitedEventListener;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 820
    return-void
.end method

.method public onInterfaceAddressRemoved(Ljava/lang/String;Ljava/lang/String;II)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 813
    new-instance v0, Landroid/net/LinkAddress;

    invoke-direct {v0, p1, p3, p4}, Landroid/net/LinkAddress;-><init>(Ljava/lang/String;II)V

    .line 814
    iget-object p1, p0, Lcom/android/server/NetworkManagementService$NetdUnsolicitedEventListener;->this$0:Lcom/android/server/NetworkManagementService;

    invoke-static {p1}, Lcom/android/server/NetworkManagementService;->access$400(Lcom/android/server/NetworkManagementService;)Landroid/os/Handler;

    move-result-object p1

    new-instance p3, Lcom/android/server/-$$Lambda$NetworkManagementService$NetdUnsolicitedEventListener$KpFpi2qBs2OPscTclZ3JRRr-G-g;

    invoke-direct {p3, p0, p2, v0}, Lcom/android/server/-$$Lambda$NetworkManagementService$NetdUnsolicitedEventListener$KpFpi2qBs2OPscTclZ3JRRr-G-g;-><init>(Lcom/android/server/NetworkManagementService$NetdUnsolicitedEventListener;Ljava/lang/String;Landroid/net/LinkAddress;)V

    invoke-virtual {p1, p3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 815
    return-void
.end method

.method public onInterfaceAddressUpdated(Ljava/lang/String;Ljava/lang/String;II)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 806
    new-instance v0, Landroid/net/LinkAddress;

    invoke-direct {v0, p1, p3, p4}, Landroid/net/LinkAddress;-><init>(Ljava/lang/String;II)V

    .line 807
    iget-object p1, p0, Lcom/android/server/NetworkManagementService$NetdUnsolicitedEventListener;->this$0:Lcom/android/server/NetworkManagementService;

    invoke-static {p1}, Lcom/android/server/NetworkManagementService;->access$400(Lcom/android/server/NetworkManagementService;)Landroid/os/Handler;

    move-result-object p1

    new-instance p3, Lcom/android/server/-$$Lambda$NetworkManagementService$NetdUnsolicitedEventListener$praKgcnQG9FTHNMGfCVPTVY8mK8;

    invoke-direct {p3, p0, p2, v0}, Lcom/android/server/-$$Lambda$NetworkManagementService$NetdUnsolicitedEventListener$praKgcnQG9FTHNMGfCVPTVY8mK8;-><init>(Lcom/android/server/NetworkManagementService$NetdUnsolicitedEventListener;Ljava/lang/String;Landroid/net/LinkAddress;)V

    invoke-virtual {p1, p3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 808
    return-void
.end method

.method public onInterfaceChanged(Ljava/lang/String;Z)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 830
    iget-object v0, p0, Lcom/android/server/NetworkManagementService$NetdUnsolicitedEventListener;->this$0:Lcom/android/server/NetworkManagementService;

    invoke-static {v0}, Lcom/android/server/NetworkManagementService;->access$400(Lcom/android/server/NetworkManagementService;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/server/-$$Lambda$NetworkManagementService$NetdUnsolicitedEventListener$CY9DSIbzpOaZKmi1MIGhBkJBJV0;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/server/-$$Lambda$NetworkManagementService$NetdUnsolicitedEventListener$CY9DSIbzpOaZKmi1MIGhBkJBJV0;-><init>(Lcom/android/server/NetworkManagementService$NetdUnsolicitedEventListener;Ljava/lang/String;Z)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 831
    return-void
.end method

.method public onInterfaceClassActivityChanged(ZIJI)V
    .registers 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 782
    const-wide/16 v0, 0x0

    cmp-long v0, p3, v0

    if-gtz v0, :cond_c

    .line 783
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    move-result-wide p3

    move-wide v4, p3

    goto :goto_d

    .line 785
    :cond_c
    move-wide v4, p3

    .line 787
    :goto_d
    iget-object p3, p0, Lcom/android/server/NetworkManagementService$NetdUnsolicitedEventListener;->this$0:Lcom/android/server/NetworkManagementService;

    invoke-static {p3}, Lcom/android/server/NetworkManagementService;->access$400(Lcom/android/server/NetworkManagementService;)Landroid/os/Handler;

    move-result-object p3

    new-instance p4, Lcom/android/server/-$$Lambda$NetworkManagementService$NetdUnsolicitedEventListener$0xWa9DGxTnoGVHppsM-nng2PygE;

    move-object v0, p4

    move-object v1, p0

    move v2, p2

    move v3, p1

    move v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/android/server/-$$Lambda$NetworkManagementService$NetdUnsolicitedEventListener$0xWa9DGxTnoGVHppsM-nng2PygE;-><init>(Lcom/android/server/NetworkManagementService$NetdUnsolicitedEventListener;IZJI)V

    invoke-virtual {p3, p4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 789
    return-void
.end method

.method public onInterfaceDnsServerInfo(Ljava/lang/String;J[Ljava/lang/String;)V
    .registers 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 800
    iget-object v0, p0, Lcom/android/server/NetworkManagementService$NetdUnsolicitedEventListener;->this$0:Lcom/android/server/NetworkManagementService;

    invoke-static {v0}, Lcom/android/server/NetworkManagementService;->access$400(Lcom/android/server/NetworkManagementService;)Landroid/os/Handler;

    move-result-object v0

    new-instance v7, Lcom/android/server/-$$Lambda$NetworkManagementService$NetdUnsolicitedEventListener$hh3pIkVnnzeRGeDRAOOmVvc6VxE;

    move-object v1, v7

    move-object v2, p0

    move-object v3, p1

    move-wide v4, p2

    move-object v6, p4

    invoke-direct/range {v1 .. v6}, Lcom/android/server/-$$Lambda$NetworkManagementService$NetdUnsolicitedEventListener$hh3pIkVnnzeRGeDRAOOmVvc6VxE;-><init>(Lcom/android/server/NetworkManagementService$NetdUnsolicitedEventListener;Ljava/lang/String;J[Ljava/lang/String;)V

    invoke-virtual {v0, v7}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 801
    return-void
.end method

.method public onInterfaceLinkStateChanged(Ljava/lang/String;Z)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 836
    iget-object v0, p0, Lcom/android/server/NetworkManagementService$NetdUnsolicitedEventListener;->this$0:Lcom/android/server/NetworkManagementService;

    invoke-static {v0}, Lcom/android/server/NetworkManagementService;->access$400(Lcom/android/server/NetworkManagementService;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/server/-$$Lambda$NetworkManagementService$NetdUnsolicitedEventListener$pOV71EYm5PphEVG1PGQnV_c6XiA;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/server/-$$Lambda$NetworkManagementService$NetdUnsolicitedEventListener$pOV71EYm5PphEVG1PGQnV_c6XiA;-><init>(Lcom/android/server/NetworkManagementService$NetdUnsolicitedEventListener;Ljava/lang/String;Z)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 837
    return-void
.end method

.method public onInterfaceRemoved(Ljava/lang/String;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 824
    iget-object v0, p0, Lcom/android/server/NetworkManagementService$NetdUnsolicitedEventListener;->this$0:Lcom/android/server/NetworkManagementService;

    invoke-static {v0}, Lcom/android/server/NetworkManagementService;->access$400(Lcom/android/server/NetworkManagementService;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/server/-$$Lambda$NetworkManagementService$NetdUnsolicitedEventListener$h2iz-IbnHpQ97mlJ7G62W2mmanw;

    invoke-direct {v1, p0, p1}, Lcom/android/server/-$$Lambda$NetworkManagementService$NetdUnsolicitedEventListener$h2iz-IbnHpQ97mlJ7G62W2mmanw;-><init>(Lcom/android/server/NetworkManagementService$NetdUnsolicitedEventListener;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 825
    return-void
.end method

.method public onQuotaLimitReached(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 794
    iget-object v0, p0, Lcom/android/server/NetworkManagementService$NetdUnsolicitedEventListener;->this$0:Lcom/android/server/NetworkManagementService;

    invoke-static {v0}, Lcom/android/server/NetworkManagementService;->access$400(Lcom/android/server/NetworkManagementService;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/server/-$$Lambda$NetworkManagementService$NetdUnsolicitedEventListener$L7i_Z-ii6zMptHCt2_Igy3iBvKk;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/server/-$$Lambda$NetworkManagementService$NetdUnsolicitedEventListener$L7i_Z-ii6zMptHCt2_Igy3iBvKk;-><init>(Lcom/android/server/NetworkManagementService$NetdUnsolicitedEventListener;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 795
    return-void
.end method

.method public onRouteChanged(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 842
    new-instance v0, Landroid/net/RouteInfo;

    new-instance v1, Landroid/net/IpPrefix;

    invoke-direct {v1, p2}, Landroid/net/IpPrefix;-><init>(Ljava/lang/String;)V

    .line 843
    const-string p2, ""

    invoke-virtual {p2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_11

    const/4 p2, 0x0

    goto :goto_15

    :cond_11
    invoke-static {p3}, Landroid/net/InetAddresses;->parseNumericAddress(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object p2

    :goto_15
    invoke-direct {v0, v1, p2, p4}, Landroid/net/RouteInfo;-><init>(Landroid/net/IpPrefix;Ljava/net/InetAddress;Ljava/lang/String;)V

    .line 845
    iget-object p2, p0, Lcom/android/server/NetworkManagementService$NetdUnsolicitedEventListener;->this$0:Lcom/android/server/NetworkManagementService;

    invoke-static {p2}, Lcom/android/server/NetworkManagementService;->access$400(Lcom/android/server/NetworkManagementService;)Landroid/os/Handler;

    move-result-object p2

    new-instance p3, Lcom/android/server/-$$Lambda$NetworkManagementService$NetdUnsolicitedEventListener$QjjL0oku3yfQh6xuCG2xu7lWiSM;

    invoke-direct {p3, p0, p1, v0}, Lcom/android/server/-$$Lambda$NetworkManagementService$NetdUnsolicitedEventListener$QjjL0oku3yfQh6xuCG2xu7lWiSM;-><init>(Lcom/android/server/NetworkManagementService$NetdUnsolicitedEventListener;ZLandroid/net/RouteInfo;)V

    invoke-virtual {p2, p3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 846
    return-void
.end method

.method public onStrictCleartextDetected(ILjava/lang/String;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 852
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v0

    .line 853
    invoke-static {p2}, Lcom/android/internal/util/HexDump;->hexStringToByteArray(Ljava/lang/String;)[B

    move-result-object p2

    .line 852
    invoke-interface {v0, p1, p2}, Landroid/app/IActivityManager;->notifyCleartextNetwork(I[B)V

    .line 854
    return-void
.end method
