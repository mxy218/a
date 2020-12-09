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

    .line 3673
    iput-object p1, p0, Lcom/android/server/ConnectivityService$CaptivePortalImpl;->this$0:Lcom/android/server/ConnectivityService;

    invoke-direct {p0}, Landroid/net/ICaptivePortal$Stub;-><init>()V

    .line 3674
    iput-object p2, p0, Lcom/android/server/ConnectivityService$CaptivePortalImpl;->mNetwork:Landroid/net/Network;

    .line 3675
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/ConnectivityService;Landroid/net/Network;Lcom/android/server/ConnectivityService$1;)V
    .registers 4

    .line 3670
    invoke-direct {p0, p1, p2}, Lcom/android/server/ConnectivityService$CaptivePortalImpl;-><init>(Lcom/android/server/ConnectivityService;Landroid/net/Network;)V

    return-void
.end method


# virtual methods
.method public appResponse(I)V
    .registers 4

    .line 3679
    const/4 v0, 0x2

    if-ne p1, v0, :cond_8

    .line 3680
    iget-object v0, p0, Lcom/android/server/ConnectivityService$CaptivePortalImpl;->this$0:Lcom/android/server/ConnectivityService;

    invoke-static {v0}, Lcom/android/server/ConnectivityService;->access$3600(Lcom/android/server/ConnectivityService;)V

    .line 3684
    :cond_8
    iget-object v0, p0, Lcom/android/server/ConnectivityService$CaptivePortalImpl;->this$0:Lcom/android/server/ConnectivityService;

    iget-object v1, p0, Lcom/android/server/ConnectivityService$CaptivePortalImpl;->mNetwork:Landroid/net/Network;

    invoke-virtual {v0, v1}, Lcom/android/server/ConnectivityService;->getNetworkAgentInfoForNetwork(Landroid/net/Network;)Lcom/android/server/connectivity/NetworkAgentInfo;

    move-result-object v0

    .line 3685
    if-nez v0, :cond_13

    return-void

    .line 3688
    :cond_13
    invoke-virtual {v0}, Lcom/android/server/connectivity/NetworkAgentInfo;->networkMonitor()Landroid/net/NetworkMonitorManager;

    move-result-object v0

    .line 3689
    if-nez v0, :cond_1a

    return-void

    .line 3690
    :cond_1a
    invoke-virtual {v0, p1}, Landroid/net/NetworkMonitorManager;->notifyCaptivePortalAppFinished(I)Z

    .line 3691
    return-void
.end method

.method public logEvent(ILjava/lang/String;)V
    .registers 4

    .line 3695
    iget-object v0, p0, Lcom/android/server/ConnectivityService$CaptivePortalImpl;->this$0:Lcom/android/server/ConnectivityService;

    invoke-static {v0}, Lcom/android/server/ConnectivityService;->access$3600(Lcom/android/server/ConnectivityService;)V

    .line 3697
    new-instance v0, Lcom/android/internal/logging/MetricsLogger;

    invoke-direct {v0}, Lcom/android/internal/logging/MetricsLogger;-><init>()V

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/logging/MetricsLogger;->action(ILjava/lang/String;)V

    .line 3698
    return-void
.end method
