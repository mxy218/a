.class Lcom/android/server/ConnectivityService$CaptivePortalImpl;
.super Landroid/net/ICaptivePortal$Stub;
.source "ConnectivityService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/ConnectivityService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CaptivePortalImpl"
.end annotation


# instance fields
.field private final mNetwork:Landroid/net/Network;

.field final synthetic this$0:Lcom/android/server/ConnectivityService;


# direct methods
.method private constructor <init>(Lcom/android/server/ConnectivityService;Landroid/net/Network;)V
    .registers 3
    .param p2, "network"  # Landroid/net/Network;

    .line 3663
    iput-object p1, p0, Lcom/android/server/ConnectivityService$CaptivePortalImpl;->this$0:Lcom/android/server/ConnectivityService;

    invoke-direct {p0}, Landroid/net/ICaptivePortal$Stub;-><init>()V

    .line 3664
    iput-object p2, p0, Lcom/android/server/ConnectivityService$CaptivePortalImpl;->mNetwork:Landroid/net/Network;

    .line 3665
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/ConnectivityService;Landroid/net/Network;Lcom/android/server/ConnectivityService$1;)V
    .registers 4
    .param p1, "x0"  # Lcom/android/server/ConnectivityService;
    .param p2, "x1"  # Landroid/net/Network;
    .param p3, "x2"  # Lcom/android/server/ConnectivityService$1;

    .line 3660
    invoke-direct {p0, p1, p2}, Lcom/android/server/ConnectivityService$CaptivePortalImpl;-><init>(Lcom/android/server/ConnectivityService;Landroid/net/Network;)V

    return-void
.end method


# virtual methods
.method public appResponse(I)V
    .registers 4
    .param p1, "response"  # I

    .line 3669
    const/4 v0, 0x2

    if-ne p1, v0, :cond_8

    .line 3670
    iget-object v0, p0, Lcom/android/server/ConnectivityService$CaptivePortalImpl;->this$0:Lcom/android/server/ConnectivityService;

    invoke-static {v0}, Lcom/android/server/ConnectivityService;->access$3800(Lcom/android/server/ConnectivityService;)V

    .line 3674
    :cond_8
    iget-object v0, p0, Lcom/android/server/ConnectivityService$CaptivePortalImpl;->this$0:Lcom/android/server/ConnectivityService;

    iget-object v1, p0, Lcom/android/server/ConnectivityService$CaptivePortalImpl;->mNetwork:Landroid/net/Network;

    invoke-virtual {v0, v1}, Lcom/android/server/ConnectivityService;->getNetworkAgentInfoForNetwork(Landroid/net/Network;)Lcom/android/server/connectivity/NetworkAgentInfo;

    move-result-object v0

    .line 3675
    .local v0, "nai":Lcom/android/server/connectivity/NetworkAgentInfo;
    if-nez v0, :cond_13

    return-void

    .line 3678
    :cond_13
    invoke-virtual {v0}, Lcom/android/server/connectivity/NetworkAgentInfo;->networkMonitor()Landroid/net/NetworkMonitorManager;

    move-result-object v1

    .line 3679
    .local v1, "nm":Landroid/net/NetworkMonitorManager;
    if-nez v1, :cond_1a

    return-void

    .line 3680
    :cond_1a
    invoke-virtual {v1, p1}, Landroid/net/NetworkMonitorManager;->notifyCaptivePortalAppFinished(I)Z

    .line 3681
    return-void
.end method

.method public logEvent(ILjava/lang/String;)V
    .registers 4
    .param p1, "eventId"  # I
    .param p2, "packageName"  # Ljava/lang/String;

    .line 3685
    iget-object v0, p0, Lcom/android/server/ConnectivityService$CaptivePortalImpl;->this$0:Lcom/android/server/ConnectivityService;

    invoke-static {v0}, Lcom/android/server/ConnectivityService;->access$3800(Lcom/android/server/ConnectivityService;)V

    .line 3687
    new-instance v0, Lcom/android/internal/logging/MetricsLogger;

    invoke-direct {v0}, Lcom/android/internal/logging/MetricsLogger;-><init>()V

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/logging/MetricsLogger;->action(ILjava/lang/String;)V

    .line 3688
    return-void
.end method
