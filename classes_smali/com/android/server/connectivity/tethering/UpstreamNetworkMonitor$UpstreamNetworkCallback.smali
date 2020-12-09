.class Lcom/android/server/connectivity/tethering/UpstreamNetworkMonitor$UpstreamNetworkCallback;
.super Landroid/net/ConnectivityManager$NetworkCallback;
.source "UpstreamNetworkMonitor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/connectivity/tethering/UpstreamNetworkMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "UpstreamNetworkCallback"
.end annotation


# instance fields
.field private final mCallbackType:I

.field final synthetic this$0:Lcom/android/server/connectivity/tethering/UpstreamNetworkMonitor;


# direct methods
.method constructor <init>(Lcom/android/server/connectivity/tethering/UpstreamNetworkMonitor;I)V
    .registers 3

    .line 429
    iput-object p1, p0, Lcom/android/server/connectivity/tethering/UpstreamNetworkMonitor$UpstreamNetworkCallback;->this$0:Lcom/android/server/connectivity/tethering/UpstreamNetworkMonitor;

    invoke-direct {p0}, Landroid/net/ConnectivityManager$NetworkCallback;-><init>()V

    .line 430
    iput p2, p0, Lcom/android/server/connectivity/tethering/UpstreamNetworkMonitor$UpstreamNetworkCallback;->mCallbackType:I

    .line 431
    return-void
.end method


# virtual methods
.method public onAvailable(Landroid/net/Network;)V
    .registers 3

    .line 435
    iget-object v0, p0, Lcom/android/server/connectivity/tethering/UpstreamNetworkMonitor$UpstreamNetworkCallback;->this$0:Lcom/android/server/connectivity/tethering/UpstreamNetworkMonitor;

    invoke-static {v0, p1}, Lcom/android/server/connectivity/tethering/UpstreamNetworkMonitor;->access$000(Lcom/android/server/connectivity/tethering/UpstreamNetworkMonitor;Landroid/net/Network;)V

    .line 436
    return-void
.end method

.method public onCapabilitiesChanged(Landroid/net/Network;Landroid/net/NetworkCapabilities;)V
    .registers 5

    .line 440
    iget v0, p0, Lcom/android/server/connectivity/tethering/UpstreamNetworkMonitor$UpstreamNetworkCallback;->mCallbackType:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_25

    .line 441
    iget-object v0, p0, Lcom/android/server/connectivity/tethering/UpstreamNetworkMonitor$UpstreamNetworkCallback;->this$0:Lcom/android/server/connectivity/tethering/UpstreamNetworkMonitor;

    invoke-static {v0, p1}, Lcom/android/server/connectivity/tethering/UpstreamNetworkMonitor;->access$102(Lcom/android/server/connectivity/tethering/UpstreamNetworkMonitor;Landroid/net/Network;)Landroid/net/Network;

    .line 442
    invoke-static {p2}, Lcom/android/server/connectivity/tethering/UpstreamNetworkMonitor;->access$200(Landroid/net/NetworkCapabilities;)Z

    move-result p1

    .line 443
    iget-object p2, p0, Lcom/android/server/connectivity/tethering/UpstreamNetworkMonitor$UpstreamNetworkCallback;->this$0:Lcom/android/server/connectivity/tethering/UpstreamNetworkMonitor;

    invoke-static {p2}, Lcom/android/server/connectivity/tethering/UpstreamNetworkMonitor;->access$300(Lcom/android/server/connectivity/tethering/UpstreamNetworkMonitor;)Z

    move-result p2

    if-eq p2, p1, :cond_24

    .line 444
    iget-object p2, p0, Lcom/android/server/connectivity/tethering/UpstreamNetworkMonitor$UpstreamNetworkCallback;->this$0:Lcom/android/server/connectivity/tethering/UpstreamNetworkMonitor;

    invoke-static {p2, p1}, Lcom/android/server/connectivity/tethering/UpstreamNetworkMonitor;->access$302(Lcom/android/server/connectivity/tethering/UpstreamNetworkMonitor;Z)Z

    .line 445
    iget-object p2, p0, Lcom/android/server/connectivity/tethering/UpstreamNetworkMonitor$UpstreamNetworkCallback;->this$0:Lcom/android/server/connectivity/tethering/UpstreamNetworkMonitor;

    invoke-static {p2}, Lcom/android/server/connectivity/tethering/UpstreamNetworkMonitor;->access$400(Lcom/android/server/connectivity/tethering/UpstreamNetworkMonitor;)Lcom/android/server/connectivity/tethering/EntitlementManager;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/android/server/connectivity/tethering/EntitlementManager;->notifyUpstream(Z)V

    .line 447
    :cond_24
    return-void

    .line 450
    :cond_25
    iget-object v0, p0, Lcom/android/server/connectivity/tethering/UpstreamNetworkMonitor$UpstreamNetworkCallback;->this$0:Lcom/android/server/connectivity/tethering/UpstreamNetworkMonitor;

    invoke-static {v0, p1, p2}, Lcom/android/server/connectivity/tethering/UpstreamNetworkMonitor;->access$500(Lcom/android/server/connectivity/tethering/UpstreamNetworkMonitor;Landroid/net/Network;Landroid/net/NetworkCapabilities;)V

    .line 451
    return-void
.end method

.method public onLinkPropertiesChanged(Landroid/net/Network;Landroid/net/LinkProperties;)V
    .registers 5

    .line 455
    iget v0, p0, Lcom/android/server/connectivity/tethering/UpstreamNetworkMonitor$UpstreamNetworkCallback;->mCallbackType:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_6

    return-void

    .line 457
    :cond_6
    iget-object v0, p0, Lcom/android/server/connectivity/tethering/UpstreamNetworkMonitor$UpstreamNetworkCallback;->this$0:Lcom/android/server/connectivity/tethering/UpstreamNetworkMonitor;

    invoke-static {v0, p1, p2}, Lcom/android/server/connectivity/tethering/UpstreamNetworkMonitor;->access$600(Lcom/android/server/connectivity/tethering/UpstreamNetworkMonitor;Landroid/net/Network;Landroid/net/LinkProperties;)V

    .line 461
    iget p1, p0, Lcom/android/server/connectivity/tethering/UpstreamNetworkMonitor$UpstreamNetworkCallback;->mCallbackType:I

    const/4 p2, 0x1

    if-ne p1, p2, :cond_15

    .line 462
    iget-object p1, p0, Lcom/android/server/connectivity/tethering/UpstreamNetworkMonitor$UpstreamNetworkCallback;->this$0:Lcom/android/server/connectivity/tethering/UpstreamNetworkMonitor;

    invoke-static {p1}, Lcom/android/server/connectivity/tethering/UpstreamNetworkMonitor;->access$700(Lcom/android/server/connectivity/tethering/UpstreamNetworkMonitor;)V

    .line 464
    :cond_15
    return-void
.end method

.method public onLost(Landroid/net/Network;)V
    .registers 4

    .line 482
    iget v0, p0, Lcom/android/server/connectivity/tethering/UpstreamNetworkMonitor$UpstreamNetworkCallback;->mCallbackType:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1b

    .line 483
    iget-object p1, p0, Lcom/android/server/connectivity/tethering/UpstreamNetworkMonitor$UpstreamNetworkCallback;->this$0:Lcom/android/server/connectivity/tethering/UpstreamNetworkMonitor;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/android/server/connectivity/tethering/UpstreamNetworkMonitor;->access$102(Lcom/android/server/connectivity/tethering/UpstreamNetworkMonitor;Landroid/net/Network;)Landroid/net/Network;

    .line 484
    iget-object p1, p0, Lcom/android/server/connectivity/tethering/UpstreamNetworkMonitor$UpstreamNetworkCallback;->this$0:Lcom/android/server/connectivity/tethering/UpstreamNetworkMonitor;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/android/server/connectivity/tethering/UpstreamNetworkMonitor;->access$302(Lcom/android/server/connectivity/tethering/UpstreamNetworkMonitor;Z)Z

    .line 485
    iget-object p1, p0, Lcom/android/server/connectivity/tethering/UpstreamNetworkMonitor$UpstreamNetworkCallback;->this$0:Lcom/android/server/connectivity/tethering/UpstreamNetworkMonitor;

    invoke-static {p1}, Lcom/android/server/connectivity/tethering/UpstreamNetworkMonitor;->access$400(Lcom/android/server/connectivity/tethering/UpstreamNetworkMonitor;)Lcom/android/server/connectivity/tethering/EntitlementManager;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/android/server/connectivity/tethering/EntitlementManager;->notifyUpstream(Z)V

    .line 486
    return-void

    .line 489
    :cond_1b
    iget-object v0, p0, Lcom/android/server/connectivity/tethering/UpstreamNetworkMonitor$UpstreamNetworkCallback;->this$0:Lcom/android/server/connectivity/tethering/UpstreamNetworkMonitor;

    invoke-static {v0, p1}, Lcom/android/server/connectivity/tethering/UpstreamNetworkMonitor;->access$1000(Lcom/android/server/connectivity/tethering/UpstreamNetworkMonitor;Landroid/net/Network;)V

    .line 493
    iget p1, p0, Lcom/android/server/connectivity/tethering/UpstreamNetworkMonitor$UpstreamNetworkCallback;->mCallbackType:I

    const/4 v0, 0x1

    if-ne p1, v0, :cond_2a

    .line 494
    iget-object p1, p0, Lcom/android/server/connectivity/tethering/UpstreamNetworkMonitor$UpstreamNetworkCallback;->this$0:Lcom/android/server/connectivity/tethering/UpstreamNetworkMonitor;

    invoke-static {p1}, Lcom/android/server/connectivity/tethering/UpstreamNetworkMonitor;->access$700(Lcom/android/server/connectivity/tethering/UpstreamNetworkMonitor;)V

    .line 496
    :cond_2a
    return-void
.end method

.method public onNetworkResumed(Landroid/net/Network;)V
    .registers 4

    .line 475
    iget v0, p0, Lcom/android/server/connectivity/tethering/UpstreamNetworkMonitor$UpstreamNetworkCallback;->mCallbackType:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_a

    .line 476
    iget-object v0, p0, Lcom/android/server/connectivity/tethering/UpstreamNetworkMonitor$UpstreamNetworkCallback;->this$0:Lcom/android/server/connectivity/tethering/UpstreamNetworkMonitor;

    invoke-static {v0, p1}, Lcom/android/server/connectivity/tethering/UpstreamNetworkMonitor;->access$900(Lcom/android/server/connectivity/tethering/UpstreamNetworkMonitor;Landroid/net/Network;)V

    .line 478
    :cond_a
    return-void
.end method

.method public onNetworkSuspended(Landroid/net/Network;)V
    .registers 4

    .line 468
    iget v0, p0, Lcom/android/server/connectivity/tethering/UpstreamNetworkMonitor$UpstreamNetworkCallback;->mCallbackType:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_a

    .line 469
    iget-object v0, p0, Lcom/android/server/connectivity/tethering/UpstreamNetworkMonitor$UpstreamNetworkCallback;->this$0:Lcom/android/server/connectivity/tethering/UpstreamNetworkMonitor;

    invoke-static {v0, p1}, Lcom/android/server/connectivity/tethering/UpstreamNetworkMonitor;->access$800(Lcom/android/server/connectivity/tethering/UpstreamNetworkMonitor;Landroid/net/Network;)V

    .line 471
    :cond_a
    return-void
.end method
