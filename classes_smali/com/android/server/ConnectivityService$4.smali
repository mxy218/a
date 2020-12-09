.class Lcom/android/server/ConnectivityService$4;
.super Lcom/android/server/net/BaseNetdEventCallback;
.source "ConnectivityService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/ConnectivityService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/ConnectivityService;


# direct methods
.method constructor <init>(Lcom/android/server/ConnectivityService;)V
    .registers 2

    .line 1785
    iput-object p1, p0, Lcom/android/server/ConnectivityService$4;->this$0:Lcom/android/server/ConnectivityService;

    invoke-direct {p0}, Lcom/android/server/net/BaseNetdEventCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic lambda$onNat64PrefixEvent$0$ConnectivityService$4(IZLjava/lang/String;I)V
    .registers 6

    .line 1821
    iget-object v0, p0, Lcom/android/server/ConnectivityService$4;->this$0:Lcom/android/server/ConnectivityService;

    invoke-static {v0, p1, p2, p3, p4}, Lcom/android/server/ConnectivityService;->access$800(Lcom/android/server/ConnectivityService;IZLjava/lang/String;I)V

    return-void
.end method

.method public onDnsEvent(IIILjava/lang/String;[Ljava/lang/String;IJI)V
    .registers 10

    .line 1803
    iget-object p2, p0, Lcom/android/server/ConnectivityService$4;->this$0:Lcom/android/server/ConnectivityService;

    invoke-static {p2, p1}, Lcom/android/server/ConnectivityService;->access$700(Lcom/android/server/ConnectivityService;I)Lcom/android/server/connectivity/NetworkAgentInfo;

    move-result-object p1

    .line 1813
    if-eqz p1, :cond_1b

    iget-object p2, p0, Lcom/android/server/ConnectivityService$4;->this$0:Lcom/android/server/ConnectivityService;

    invoke-static {p2}, Lcom/android/server/ConnectivityService;->access$300(Lcom/android/server/ConnectivityService;)Landroid/net/NetworkRequest;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/android/server/connectivity/NetworkAgentInfo;->satisfies(Landroid/net/NetworkRequest;)Z

    move-result p2

    if-eqz p2, :cond_1b

    .line 1814
    invoke-virtual {p1}, Lcom/android/server/connectivity/NetworkAgentInfo;->networkMonitor()Landroid/net/NetworkMonitorManager;

    move-result-object p1

    invoke-virtual {p1, p3}, Landroid/net/NetworkMonitorManager;->notifyDnsResponse(I)Z

    .line 1816
    :cond_1b
    return-void
.end method

.method public onNat64PrefixEvent(IZLjava/lang/String;I)V
    .registers 13

    .line 1821
    iget-object v0, p0, Lcom/android/server/ConnectivityService$4;->this$0:Lcom/android/server/ConnectivityService;

    invoke-static {v0}, Lcom/android/server/ConnectivityService;->access$500(Lcom/android/server/ConnectivityService;)Lcom/android/server/ConnectivityService$InternalHandler;

    move-result-object v0

    new-instance v7, Lcom/android/server/-$$Lambda$ConnectivityService$4$kjr9gauOtOpxwsI0DG7Gt6Wd1hI;

    move-object v1, v7

    move-object v2, p0

    move v3, p1

    move v4, p2

    move-object v5, p3

    move v6, p4

    invoke-direct/range {v1 .. v6}, Lcom/android/server/-$$Lambda$ConnectivityService$4$kjr9gauOtOpxwsI0DG7Gt6Wd1hI;-><init>(Lcom/android/server/ConnectivityService$4;IZLjava/lang/String;I)V

    invoke-virtual {v0, v7}, Lcom/android/server/ConnectivityService$InternalHandler;->post(Ljava/lang/Runnable;)Z

    .line 1822
    return-void
.end method

.method public onPrivateDnsValidationEvent(ILjava/lang/String;Ljava/lang/String;Z)V
    .registers 9

    .line 1790
    :try_start_0
    iget-object v0, p0, Lcom/android/server/ConnectivityService$4;->this$0:Lcom/android/server/ConnectivityService;

    invoke-static {v0}, Lcom/android/server/ConnectivityService;->access$500(Lcom/android/server/ConnectivityService;)Lcom/android/server/ConnectivityService$InternalHandler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/ConnectivityService$4;->this$0:Lcom/android/server/ConnectivityService;

    invoke-static {v1}, Lcom/android/server/ConnectivityService;->access$500(Lcom/android/server/ConnectivityService;)Lcom/android/server/ConnectivityService$InternalHandler;

    move-result-object v1

    const/16 v2, 0x26

    new-instance v3, Lcom/android/server/connectivity/DnsManager$PrivateDnsValidationUpdate;

    .line 1793
    invoke-static {p2}, Ljava/net/InetAddress;->parseNumericAddress(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object p2

    invoke-direct {v3, p1, p2, p3, p4}, Lcom/android/server/connectivity/DnsManager$PrivateDnsValidationUpdate;-><init>(ILjava/net/InetAddress;Ljava/lang/String;Z)V

    .line 1790
    invoke-virtual {v1, v2, v3}, Lcom/android/server/ConnectivityService$InternalHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/android/server/ConnectivityService$InternalHandler;->sendMessage(Landroid/os/Message;)Z
    :try_end_1e
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_1e} :catch_1f

    .line 1797
    goto :goto_25

    .line 1795
    :catch_1f
    move-exception p1

    .line 1796
    const-string p1, "Error parsing ip address in validation event"

    invoke-static {p1}, Lcom/android/server/ConnectivityService;->access$600(Ljava/lang/String;)V

    .line 1798
    :goto_25
    return-void
.end method
