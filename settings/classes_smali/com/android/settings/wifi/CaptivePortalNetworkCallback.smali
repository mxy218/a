.class final Lcom/android/settings/wifi/CaptivePortalNetworkCallback;
.super Landroid/net/ConnectivityManager$NetworkCallback;
.source "CaptivePortalNetworkCallback.java"


# instance fields
.field private final mConnectedApPreference:Lcom/android/settings/wifi/ConnectedAccessPointPreference;

.field private mIsCaptivePortal:Z

.field private final mNetwork:Landroid/net/Network;


# direct methods
.method constructor <init>(Landroid/net/Network;Lcom/android/settings/wifi/ConnectedAccessPointPreference;)V
    .registers 3

    .line 33
    invoke-direct {p0}, Landroid/net/ConnectivityManager$NetworkCallback;-><init>()V

    .line 34
    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/net/Network;

    iput-object p1, p0, Lcom/android/settings/wifi/CaptivePortalNetworkCallback;->mNetwork:Landroid/net/Network;

    .line 35
    invoke-static {p2}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/settings/wifi/ConnectedAccessPointPreference;

    iput-object p1, p0, Lcom/android/settings/wifi/CaptivePortalNetworkCallback;->mConnectedApPreference:Lcom/android/settings/wifi/ConnectedAccessPointPreference;

    return-void
.end method


# virtual methods
.method public getNetwork()Landroid/net/Network;
    .registers 1

    .line 72
    iget-object p0, p0, Lcom/android/settings/wifi/CaptivePortalNetworkCallback;->mNetwork:Landroid/net/Network;

    return-object p0
.end method

.method public isCaptivePortal()Z
    .registers 1

    .line 67
    iget-boolean p0, p0, Lcom/android/settings/wifi/CaptivePortalNetworkCallback;->mIsCaptivePortal:Z

    return p0
.end method

.method public isSameNetworkAndPreference(Landroid/net/Network;Lcom/android/settings/wifi/ConnectedAccessPointPreference;)Z
    .registers 4

    .line 59
    iget-object v0, p0, Lcom/android/settings/wifi/CaptivePortalNetworkCallback;->mNetwork:Landroid/net/Network;

    invoke-virtual {v0, p1}, Landroid/net/Network;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_e

    iget-object p0, p0, Lcom/android/settings/wifi/CaptivePortalNetworkCallback;->mConnectedApPreference:Lcom/android/settings/wifi/ConnectedAccessPointPreference;

    if-ne p0, p2, :cond_e

    const/4 p0, 0x1

    goto :goto_f

    :cond_e
    const/4 p0, 0x0

    :goto_f
    return p0
.end method

.method public onCapabilitiesChanged(Landroid/net/Network;Landroid/net/NetworkCapabilities;)V
    .registers 4

    .line 47
    iget-object v0, p0, Lcom/android/settings/wifi/CaptivePortalNetworkCallback;->mNetwork:Landroid/net/Network;

    invoke-virtual {v0, p1}, Landroid/net/Network;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_15

    .line 48
    invoke-static {p2}, Lcom/android/settings/wifi/WifiUtils;->canSignIntoNetwork(Landroid/net/NetworkCapabilities;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/settings/wifi/CaptivePortalNetworkCallback;->mIsCaptivePortal:Z

    .line 49
    iget-object p1, p0, Lcom/android/settings/wifi/CaptivePortalNetworkCallback;->mConnectedApPreference:Lcom/android/settings/wifi/ConnectedAccessPointPreference;

    iget-boolean p0, p0, Lcom/android/settings/wifi/CaptivePortalNetworkCallback;->mIsCaptivePortal:Z

    invoke-virtual {p1, p0}, Lcom/android/settings/wifi/ConnectedAccessPointPreference;->setCaptivePortal(Z)V

    :cond_15
    return-void
.end method

.method public onLost(Landroid/net/Network;)V
    .registers 3

    .line 40
    iget-object v0, p0, Lcom/android/settings/wifi/CaptivePortalNetworkCallback;->mNetwork:Landroid/net/Network;

    invoke-virtual {v0, p1}, Landroid/net/Network;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_b

    const/4 p1, 0x0

    .line 41
    iput-boolean p1, p0, Lcom/android/settings/wifi/CaptivePortalNetworkCallback;->mIsCaptivePortal:Z

    :cond_b
    return-void
.end method
