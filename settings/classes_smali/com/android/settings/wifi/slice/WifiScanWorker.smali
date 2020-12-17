.class public Lcom/android/settings/wifi/slice/WifiScanWorker;
.super Lcom/android/settings/slices/SliceBackgroundWorker;
.source "WifiScanWorker.java"

# interfaces
.implements Lcom/android/settingslib/wifi/WifiTracker$WifiListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/wifi/slice/WifiScanWorker$WifiNetworkCallback;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/settings/slices/SliceBackgroundWorker<",
        "Lcom/android/settingslib/wifi/AccessPoint;",
        ">;",
        "Lcom/android/settingslib/wifi/WifiTracker$WifiListener;"
    }
.end annotation


# static fields
.field private static sClickedWifiSsid:Ljava/lang/String;


# instance fields
.field private final mConnectivityManager:Landroid/net/ConnectivityManager;

.field private final mContext:Landroid/content/Context;

.field mNetworkCallback:Lcom/android/settings/wifi/slice/WifiScanWorker$WifiNetworkCallback;
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field private final mWifiTracker:Lcom/android/settingslib/wifi/WifiTracker;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/net/Uri;)V
    .registers 4

    .line 70
    invoke-direct {p0, p1, p2}, Lcom/android/settings/slices/SliceBackgroundWorker;-><init>(Landroid/content/Context;Landroid/net/Uri;)V

    .line 71
    iput-object p1, p0, Lcom/android/settings/wifi/slice/WifiScanWorker;->mContext:Landroid/content/Context;

    .line 72
    const-class p2, Landroid/net/ConnectivityManager;

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/net/ConnectivityManager;

    iput-object p1, p0, Lcom/android/settings/wifi/slice/WifiScanWorker;->mConnectivityManager:Landroid/net/ConnectivityManager;

    .line 73
    new-instance p1, Lcom/android/settingslib/wifi/WifiTracker;

    iget-object p2, p0, Lcom/android/settings/wifi/slice/WifiScanWorker;->mContext:Landroid/content/Context;

    const/4 v0, 0x1

    invoke-direct {p1, p2, p0, v0, v0}, Lcom/android/settingslib/wifi/WifiTracker;-><init>(Landroid/content/Context;Lcom/android/settingslib/wifi/WifiTracker$WifiListener;ZZ)V

    iput-object p1, p0, Lcom/android/settings/wifi/slice/WifiScanWorker;->mWifiTracker:Lcom/android/settingslib/wifi/WifiTracker;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/wifi/slice/WifiScanWorker;)V
    .registers 1

    .line 55
    invoke-virtual {p0}, Lcom/android/settings/slices/SliceBackgroundWorker;->notifySliceChange()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/settings/wifi/slice/WifiScanWorker;)Lcom/android/settingslib/wifi/WifiTracker;
    .registers 1

    .line 55
    iget-object p0, p0, Lcom/android/settings/wifi/slice/WifiScanWorker;->mWifiTracker:Lcom/android/settingslib/wifi/WifiTracker;

    return-object p0
.end method

.method static synthetic access$200(Lcom/android/settings/wifi/slice/WifiScanWorker;)Landroid/content/Context;
    .registers 1

    .line 55
    iget-object p0, p0, Lcom/android/settings/wifi/slice/WifiScanWorker;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static clearClickedWifi()V
    .registers 1

    const/4 v0, 0x0

    .line 152
    sput-object v0, Lcom/android/settings/wifi/slice/WifiScanWorker;->sClickedWifiSsid:Ljava/lang/String;

    return-void
.end method

.method private clone(Lcom/android/settingslib/wifi/AccessPoint;)Lcom/android/settingslib/wifi/AccessPoint;
    .registers 3

    .line 126
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 127
    invoke-virtual {p1, v0}, Lcom/android/settingslib/wifi/AccessPoint;->saveWifiState(Landroid/os/Bundle;)V

    .line 128
    new-instance p1, Lcom/android/settingslib/wifi/AccessPoint;

    iget-object p0, p0, Lcom/android/settings/wifi/slice/WifiScanWorker;->mContext:Landroid/content/Context;

    invoke-direct {p1, p0, v0}, Lcom/android/settingslib/wifi/AccessPoint;-><init>(Landroid/content/Context;Landroid/os/Bundle;)V

    return-object p1
.end method

.method static isWifiClicked(Landroid/net/wifi/WifiInfo;)Z
    .registers 2

    .line 156
    invoke-virtual {p0}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/net/wifi/WifiInfo;->removeDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 157
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_18

    sget-object v0, Lcom/android/settings/wifi/slice/WifiScanWorker;->sClickedWifiSsid:Ljava/lang/String;

    invoke-static {p0, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_18

    const/4 p0, 0x1

    goto :goto_19

    :cond_18
    const/4 p0, 0x0

    :goto_19
    return p0
.end method

.method static saveClickedWifi(Lcom/android/settingslib/wifi/AccessPoint;)V
    .registers 1

    .line 148
    invoke-virtual {p0}, Lcom/android/settingslib/wifi/AccessPoint;->getSsidStr()Ljava/lang/String;

    move-result-object p0

    sput-object p0, Lcom/android/settings/wifi/slice/WifiScanWorker;->sClickedWifiSsid:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method protected areListsTheSame(Ljava/util/List;Ljava/util/List;)Z
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/settingslib/wifi/AccessPoint;",
            ">;",
            "Ljava/util/List<",
            "Lcom/android/settingslib/wifi/AccessPoint;",
            ">;)Z"
        }
    .end annotation

    .line 133
    invoke-interface {p1, p2}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result p0

    const/4 v0, 0x0

    if-nez p0, :cond_8

    return v0

    .line 138
    :cond_8
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p0

    move v1, v0

    :goto_d
    if-ge v1, p0, :cond_29

    .line 140
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/settingslib/wifi/AccessPoint;

    invoke-virtual {v2}, Lcom/android/settingslib/wifi/AccessPoint;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v2

    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/settingslib/wifi/AccessPoint;

    invoke-virtual {v3}, Lcom/android/settingslib/wifi/AccessPoint;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v3

    if-eq v2, v3, :cond_26

    return v0

    :cond_26
    add-int/lit8 v1, v1, 0x1

    goto :goto_d

    :cond_29
    const/4 p0, 0x1

    return p0
.end method

.method protected clearClickedWifiOnSliceUnpinned()V
    .registers 1

    .line 161
    invoke-static {}, Lcom/android/settings/wifi/slice/WifiScanWorker;->clearClickedWifi()V

    return-void
.end method

.method public close()V
    .registers 1

    .line 92
    iget-object p0, p0, Lcom/android/settings/wifi/slice/WifiScanWorker;->mWifiTracker:Lcom/android/settingslib/wifi/WifiTracker;

    invoke-virtual {p0}, Lcom/android/settingslib/wifi/WifiTracker;->onDestroy()V

    return-void
.end method

.method protected isSessionValid()Z
    .registers 1

    const/4 p0, 0x1

    return p0
.end method

.method public onAccessPointsChanged()V
    .registers 5

    .line 107
    iget-object v0, p0, Lcom/android/settings/wifi/slice/WifiScanWorker;->mWifiTracker:Lcom/android/settingslib/wifi/WifiTracker;

    invoke-virtual {v0}, Lcom/android/settingslib/wifi/WifiTracker;->getManager()Landroid/net/wifi/WifiManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v0

    if-nez v0, :cond_11

    const/4 v0, 0x0

    .line 108
    invoke-virtual {p0, v0}, Lcom/android/settings/slices/SliceBackgroundWorker;->updateResults(Ljava/util/List;)V

    return-void

    .line 112
    :cond_11
    iget-object v0, p0, Lcom/android/settings/wifi/slice/WifiScanWorker;->mWifiTracker:Lcom/android/settingslib/wifi/WifiTracker;

    invoke-virtual {v0}, Lcom/android/settingslib/wifi/WifiTracker;->getAccessPoints()Ljava/util/List;

    move-result-object v0

    .line 113
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 114
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_20
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_40

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/settingslib/wifi/AccessPoint;

    .line 115
    invoke-virtual {v2}, Lcom/android/settingslib/wifi/AccessPoint;->isReachable()Z

    move-result v3

    if-eqz v3, :cond_20

    .line 116
    invoke-direct {p0, v2}, Lcom/android/settings/wifi/slice/WifiScanWorker;->clone(Lcom/android/settingslib/wifi/AccessPoint;)Lcom/android/settingslib/wifi/AccessPoint;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 117
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x3

    if-lt v2, v3, :cond_20

    .line 122
    :cond_40
    invoke-virtual {p0, v1}, Lcom/android/settings/slices/SliceBackgroundWorker;->updateResults(Ljava/util/List;)V

    return-void
.end method

.method public onConnectedChanged()V
    .registers 1

    return-void
.end method

.method protected onSlicePinned()V
    .registers 2

    .line 79
    iget-object v0, p0, Lcom/android/settings/wifi/slice/WifiScanWorker;->mWifiTracker:Lcom/android/settingslib/wifi/WifiTracker;

    invoke-virtual {v0}, Lcom/android/settingslib/wifi/WifiTracker;->onStart()V

    .line 80
    invoke-virtual {p0}, Lcom/android/settings/wifi/slice/WifiScanWorker;->onAccessPointsChanged()V

    return-void
.end method

.method protected onSliceUnpinned()V
    .registers 2

    .line 85
    iget-object v0, p0, Lcom/android/settings/wifi/slice/WifiScanWorker;->mWifiTracker:Lcom/android/settingslib/wifi/WifiTracker;

    invoke-virtual {v0}, Lcom/android/settingslib/wifi/WifiTracker;->onStop()V

    .line 86
    invoke-virtual {p0}, Lcom/android/settings/wifi/slice/WifiScanWorker;->unregisterNetworkCallback()V

    .line 87
    invoke-virtual {p0}, Lcom/android/settings/wifi/slice/WifiScanWorker;->clearClickedWifiOnSliceUnpinned()V

    return-void
.end method

.method public onWifiStateChanged(I)V
    .registers 2

    .line 97
    invoke-virtual {p0}, Lcom/android/settings/slices/SliceBackgroundWorker;->notifySliceChange()V

    return-void
.end method

.method public registerNetworkCallback(Landroid/net/Network;)V
    .registers 5

    if-nez p1, :cond_3

    return-void

    .line 173
    :cond_3
    iget-object v0, p0, Lcom/android/settings/wifi/slice/WifiScanWorker;->mNetworkCallback:Lcom/android/settings/wifi/slice/WifiScanWorker$WifiNetworkCallback;

    if-eqz v0, :cond_e

    invoke-virtual {v0, p1}, Lcom/android/settings/wifi/slice/WifiScanWorker$WifiNetworkCallback;->isSameNetwork(Landroid/net/Network;)Z

    move-result v0

    if-eqz v0, :cond_e

    return-void

    .line 177
    :cond_e
    invoke-virtual {p0}, Lcom/android/settings/wifi/slice/WifiScanWorker;->unregisterNetworkCallback()V

    .line 179
    new-instance v0, Lcom/android/settings/wifi/slice/WifiScanWorker$WifiNetworkCallback;

    invoke-direct {v0, p0, p1}, Lcom/android/settings/wifi/slice/WifiScanWorker$WifiNetworkCallback;-><init>(Lcom/android/settings/wifi/slice/WifiScanWorker;Landroid/net/Network;)V

    iput-object v0, p0, Lcom/android/settings/wifi/slice/WifiScanWorker;->mNetworkCallback:Lcom/android/settings/wifi/slice/WifiScanWorker$WifiNetworkCallback;

    .line 180
    iget-object p1, p0, Lcom/android/settings/wifi/slice/WifiScanWorker;->mConnectivityManager:Landroid/net/ConnectivityManager;

    new-instance v0, Landroid/net/NetworkRequest$Builder;

    invoke-direct {v0}, Landroid/net/NetworkRequest$Builder;-><init>()V

    .line 182
    invoke-virtual {v0}, Landroid/net/NetworkRequest$Builder;->clearCapabilities()Landroid/net/NetworkRequest$Builder;

    move-result-object v0

    const/4 v1, 0x1

    .line 183
    invoke-virtual {v0, v1}, Landroid/net/NetworkRequest$Builder;->addTransportType(I)Landroid/net/NetworkRequest$Builder;

    move-result-object v0

    .line 184
    invoke-virtual {v0}, Landroid/net/NetworkRequest$Builder;->build()Landroid/net/NetworkRequest;

    move-result-object v0

    iget-object p0, p0, Lcom/android/settings/wifi/slice/WifiScanWorker;->mNetworkCallback:Lcom/android/settings/wifi/slice/WifiScanWorker$WifiNetworkCallback;

    new-instance v1, Landroid/os/Handler;

    .line 186
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 180
    invoke-virtual {p1, v0, p0, v1}, Landroid/net/ConnectivityManager;->registerNetworkCallback(Landroid/net/NetworkRequest;Landroid/net/ConnectivityManager$NetworkCallback;Landroid/os/Handler;)V

    return-void
.end method

.method public unregisterNetworkCallback()V
    .registers 4

    .line 190
    iget-object v0, p0, Lcom/android/settings/wifi/slice/WifiScanWorker;->mNetworkCallback:Lcom/android/settings/wifi/slice/WifiScanWorker$WifiNetworkCallback;

    if-eqz v0, :cond_15

    .line 192
    :try_start_4
    iget-object v1, p0, Lcom/android/settings/wifi/slice/WifiScanWorker;->mConnectivityManager:Landroid/net/ConnectivityManager;

    invoke-virtual {v1, v0}, Landroid/net/ConnectivityManager;->unregisterNetworkCallback(Landroid/net/ConnectivityManager$NetworkCallback;)V
    :try_end_9
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_9} :catch_a

    goto :goto_12

    :catch_a
    move-exception v0

    const-string v1, "WifiScanWorker"

    const-string v2, "Unregistering CaptivePortalNetworkCallback failed."

    .line 194
    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_12
    const/4 v0, 0x0

    .line 196
    iput-object v0, p0, Lcom/android/settings/wifi/slice/WifiScanWorker;->mNetworkCallback:Lcom/android/settings/wifi/slice/WifiScanWorker$WifiNetworkCallback;

    :cond_15
    return-void
.end method
