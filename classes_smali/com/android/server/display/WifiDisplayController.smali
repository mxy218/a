.class final Lcom/android/server/display/WifiDisplayController;
.super Ljava/lang/Object;
.source "WifiDisplayController.java"

# interfaces
.implements Lcom/android/internal/util/DumpUtils$Dump;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/display/WifiDisplayController$Listener;
    }
.end annotation


# static fields
.field private static final CONNECTION_TIMEOUT_SECONDS:I = 0x1e

.field private static final CONNECT_MAX_RETRIES:I = 0x3

.field private static final CONNECT_RETRY_DELAY_MILLIS:I = 0x1f4

.field private static final DEBUG:Z = true

.field private static final DEBUGV:Z = true

.field private static final DEFAULT_CONTROL_PORT:I = 0x1c44

.field private static final DISCOVER_PEERS_INTERVAL_MILLIS:I = 0x2710

.field private static final MAX_THROUGHPUT:I = 0x32

.field private static final RTSP_TIMEOUT_SECONDS:I = 0x1e

.field private static final RTSP_TIMEOUT_SECONDS_CERT_MODE:I = 0x78

.field private static final TAG:Ljava/lang/String; = "WifiDisplayController"

.field private static final WFD_WIFIP2P_EXCLUDED_DIALOG:I = 0x1


# instance fields
.field private mAdvertisedDisplay:Landroid/hardware/display/WifiDisplay;

.field private mAdvertisedDisplayFlags:I

.field private mAdvertisedDisplayHeight:I

.field private mAdvertisedDisplaySurface:Landroid/view/Surface;

.field private mAdvertisedDisplayWidth:I

.field private final mAvailableWifiDisplayPeers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/net/wifi/p2p/WifiP2pDevice;",
            ">;"
        }
    .end annotation
.end field

.field private mCancelingDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

.field protected mConnectFailBusy:I

.field private mConnectedDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

.field private mConnectedDeviceGroup:Landroid/net/wifi/p2p/WifiP2pGroup;

.field private mConnectedDeviceGroupInfo:Landroid/net/wifi/p2p/WifiP2pGroup;

.field private mConnectingDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

.field private mConnectionRetriesLeft:I

.field private final mConnectionTimeout:Ljava/lang/Runnable;

.field private final mContext:Landroid/content/Context;

.field private mDesiredDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

.field private mDisconnectingDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

.field private final mDiscoverPeers:Ljava/lang/Runnable;

.field private mDiscoverPeersInProgress:Z

.field private final mEnableWifiDelay:Ljava/lang/Runnable;

.field private mExtRemoteDisplay:Ljava/lang/Object;

.field private final mHandler:Landroid/os/Handler;

.field private mIsConnectedOtherP2p:Z

.field private final mListener:Lcom/android/server/display/WifiDisplayController$Listener;

.field private mNetworkInfo:Landroid/net/NetworkInfo;

.field private mP2pGroupInfo:Landroid/net/wifi/p2p/WifiP2pGroup;

.field private mRemoteDisplay:Landroid/media/RemoteDisplay;

.field private mRemoteDisplayConnected:Z

.field private mRemoteDisplayInterface:Ljava/lang/String;

.field private final mRtspTimeout:Ljava/lang/Runnable;

.field private mScanRequested:Z

.field private mThisDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

.field private mWfdEnabled:Z

.field private mWfdEnabling:Z

.field private mWifiDirectExcludeDialog:Landroid/app/AlertDialog;

.field private mWifiDisplayCertMode:Z

.field private mWifiDisplayOnSetting:Z

.field private mWifiDisplayWpsConfig:I

.field private mWifiManager:Landroid/net/wifi/WifiManager;

.field private mWifiP2pChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

.field private mWifiP2pEnabled:Z

.field private final mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

.field private final mWifiP2pReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;Lcom/android/server/display/WifiDisplayController$Listener;)V
    .registers 9
    .param p1, "context"  # Landroid/content/Context;
    .param p2, "handler"  # Landroid/os/Handler;
    .param p3, "listener"  # Lcom/android/server/display/WifiDisplayController$Listener;

    .line 202
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 122
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/display/WifiDisplayController;->mAvailableWifiDisplayPeers:Ljava/util/ArrayList;

    .line 179
    const/4 v0, 0x4

    iput v0, p0, Lcom/android/server/display/WifiDisplayController;->mWifiDisplayWpsConfig:I

    .line 187
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/display/WifiDisplayController;->mConnectFailBusy:I

    .line 196
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/display/WifiDisplayController;->mConnectedDeviceGroup:Landroid/net/wifi/p2p/WifiP2pGroup;

    .line 1282
    new-instance v2, Lcom/android/server/display/WifiDisplayController$24;

    invoke-direct {v2, p0}, Lcom/android/server/display/WifiDisplayController$24;-><init>(Lcom/android/server/display/WifiDisplayController;)V

    iput-object v2, p0, Lcom/android/server/display/WifiDisplayController;->mDiscoverPeers:Ljava/lang/Runnable;

    .line 1289
    new-instance v2, Lcom/android/server/display/WifiDisplayController$25;

    invoke-direct {v2, p0}, Lcom/android/server/display/WifiDisplayController$25;-><init>(Lcom/android/server/display/WifiDisplayController;)V

    iput-object v2, p0, Lcom/android/server/display/WifiDisplayController;->mConnectionTimeout:Ljava/lang/Runnable;

    .line 1301
    new-instance v2, Lcom/android/server/display/WifiDisplayController$26;

    invoke-direct {v2, p0}, Lcom/android/server/display/WifiDisplayController$26;-><init>(Lcom/android/server/display/WifiDisplayController;)V

    iput-object v2, p0, Lcom/android/server/display/WifiDisplayController;->mRtspTimeout:Ljava/lang/Runnable;

    .line 1481
    new-instance v2, Lcom/android/server/display/WifiDisplayController$30;

    invoke-direct {v2, p0}, Lcom/android/server/display/WifiDisplayController$30;-><init>(Lcom/android/server/display/WifiDisplayController;)V

    iput-object v2, p0, Lcom/android/server/display/WifiDisplayController;->mWifiP2pReceiver:Landroid/content/BroadcastReceiver;

    .line 1580
    new-instance v2, Lcom/android/server/display/WifiDisplayController$31;

    invoke-direct {v2, p0}, Lcom/android/server/display/WifiDisplayController$31;-><init>(Lcom/android/server/display/WifiDisplayController;)V

    iput-object v2, p0, Lcom/android/server/display/WifiDisplayController;->mEnableWifiDelay:Ljava/lang/Runnable;

    .line 203
    iput-object p1, p0, Lcom/android/server/display/WifiDisplayController;->mContext:Landroid/content/Context;

    .line 204
    iput-object p2, p0, Lcom/android/server/display/WifiDisplayController;->mHandler:Landroid/os/Handler;

    .line 205
    iput-object p3, p0, Lcom/android/server/display/WifiDisplayController;->mListener:Lcom/android/server/display/WifiDisplayController$Listener;

    .line 207
    const-string/jumbo v2, "wifip2p"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/wifi/p2p/WifiP2pManager;

    iput-object v2, p0, Lcom/android/server/display/WifiDisplayController;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    .line 210
    iget-object v2, p0, Lcom/android/server/display/WifiDisplayController;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "wifi"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/wifi/WifiManager;

    iput-object v2, p0, Lcom/android/server/display/WifiDisplayController;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 213
    new-instance v2, Landroid/content/IntentFilter;

    invoke-direct {v2}, Landroid/content/IntentFilter;-><init>()V

    .line 214
    .local v2, "intentFilter":Landroid/content/IntentFilter;
    const-string v3, "android.net.wifi.p2p.STATE_CHANGED"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 215
    const-string v3, "android.net.wifi.p2p.PEERS_CHANGED"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 216
    const-string v3, "android.net.wifi.p2p.CONNECTION_STATE_CHANGE"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 217
    const-string v3, "android.net.wifi.p2p.THIS_DEVICE_CHANGED"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 218
    iget-object v3, p0, Lcom/android/server/display/WifiDisplayController;->mWifiP2pReceiver:Landroid/content/BroadcastReceiver;

    iget-object v4, p0, Lcom/android/server/display/WifiDisplayController;->mHandler:Landroid/os/Handler;

    invoke-virtual {p1, v3, v2, v1, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 220
    new-instance v1, Lcom/android/server/display/WifiDisplayController$1;

    iget-object v3, p0, Lcom/android/server/display/WifiDisplayController;->mHandler:Landroid/os/Handler;

    invoke-direct {v1, p0, v3}, Lcom/android/server/display/WifiDisplayController$1;-><init>(Lcom/android/server/display/WifiDisplayController;Landroid/os/Handler;)V

    .line 227
    .local v1, "settingsObserver":Landroid/database/ContentObserver;
    iget-object v3, p0, Lcom/android/server/display/WifiDisplayController;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 228
    .local v3, "resolver":Landroid/content/ContentResolver;
    const-string/jumbo v4, "wifi_display_on"

    invoke-static {v4}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v3, v4, v0, v1}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 230
    const-string/jumbo v4, "wifi_display_certification_on"

    invoke-static {v4}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v3, v4, v0, v1}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 232
    const-string/jumbo v4, "wifi_display_wps_config"

    invoke-static {v4}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v3, v4, v0, v1}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 234
    invoke-direct {p0}, Lcom/android/server/display/WifiDisplayController;->updateSettings()V

    .line 235
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/display/WifiDisplayController;)V
    .registers 1
    .param p0, "x0"  # Lcom/android/server/display/WifiDisplayController;

    .line 85
    invoke-direct {p0}, Lcom/android/server/display/WifiDisplayController;->updateSettings()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/server/display/WifiDisplayController;)Z
    .registers 2
    .param p0, "x0"  # Lcom/android/server/display/WifiDisplayController;

    .line 85
    iget-boolean v0, p0, Lcom/android/server/display/WifiDisplayController;->mWfdEnabling:Z

    return v0
.end method

.method static synthetic access$1000(Landroid/net/wifi/p2p/WifiP2pDevice;)Z
    .registers 2
    .param p0, "x0"  # Landroid/net/wifi/p2p/WifiP2pDevice;

    .line 85
    invoke-static {p0}, Lcom/android/server/display/WifiDisplayController;->isWifiDisplay(Landroid/net/wifi/p2p/WifiP2pDevice;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$102(Lcom/android/server/display/WifiDisplayController;Z)Z
    .registers 2
    .param p0, "x0"  # Lcom/android/server/display/WifiDisplayController;
    .param p1, "x1"  # Z

    .line 85
    iput-boolean p1, p0, Lcom/android/server/display/WifiDisplayController;->mWfdEnabling:Z

    return p1
.end method

.method static synthetic access$1100(Lcom/android/server/display/WifiDisplayController;)V
    .registers 1
    .param p0, "x0"  # Lcom/android/server/display/WifiDisplayController;

    .line 85
    invoke-direct {p0}, Lcom/android/server/display/WifiDisplayController;->handleScanResults()V

    return-void
.end method

.method static synthetic access$1200(Lcom/android/server/display/WifiDisplayController;)Landroid/net/wifi/p2p/WifiP2pDevice;
    .registers 2
    .param p0, "x0"  # Lcom/android/server/display/WifiDisplayController;

    .line 85
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController;->mDisconnectingDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    return-object v0
.end method

.method static synthetic access$1202(Lcom/android/server/display/WifiDisplayController;Landroid/net/wifi/p2p/WifiP2pDevice;)Landroid/net/wifi/p2p/WifiP2pDevice;
    .registers 2
    .param p0, "x0"  # Lcom/android/server/display/WifiDisplayController;
    .param p1, "x1"  # Landroid/net/wifi/p2p/WifiP2pDevice;

    .line 85
    iput-object p1, p0, Lcom/android/server/display/WifiDisplayController;->mDisconnectingDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    return-object p1
.end method

.method static synthetic access$1300(Lcom/android/server/display/WifiDisplayController;)V
    .registers 1
    .param p0, "x0"  # Lcom/android/server/display/WifiDisplayController;

    .line 85
    invoke-direct {p0}, Lcom/android/server/display/WifiDisplayController;->updateConnection()V

    return-void
.end method

.method static synthetic access$1400(Lcom/android/server/display/WifiDisplayController;)Landroid/net/wifi/p2p/WifiP2pDevice;
    .registers 2
    .param p0, "x0"  # Lcom/android/server/display/WifiDisplayController;

    .line 85
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController;->mCancelingDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    return-object v0
.end method

.method static synthetic access$1402(Lcom/android/server/display/WifiDisplayController;Landroid/net/wifi/p2p/WifiP2pDevice;)Landroid/net/wifi/p2p/WifiP2pDevice;
    .registers 2
    .param p0, "x0"  # Lcom/android/server/display/WifiDisplayController;
    .param p1, "x1"  # Landroid/net/wifi/p2p/WifiP2pDevice;

    .line 85
    iput-object p1, p0, Lcom/android/server/display/WifiDisplayController;->mCancelingDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    return-object p1
.end method

.method static synthetic access$1500(Lcom/android/server/display/WifiDisplayController;)Landroid/net/wifi/p2p/WifiP2pDevice;
    .registers 2
    .param p0, "x0"  # Lcom/android/server/display/WifiDisplayController;

    .line 85
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController;->mConnectedDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    return-object v0
.end method

.method static synthetic access$1502(Lcom/android/server/display/WifiDisplayController;Landroid/net/wifi/p2p/WifiP2pDevice;)Landroid/net/wifi/p2p/WifiP2pDevice;
    .registers 2
    .param p0, "x0"  # Lcom/android/server/display/WifiDisplayController;
    .param p1, "x1"  # Landroid/net/wifi/p2p/WifiP2pDevice;

    .line 85
    iput-object p1, p0, Lcom/android/server/display/WifiDisplayController;->mConnectedDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    return-object p1
.end method

.method static synthetic access$1600(Lcom/android/server/display/WifiDisplayController;)Z
    .registers 2
    .param p0, "x0"  # Lcom/android/server/display/WifiDisplayController;

    .line 85
    iget-boolean v0, p0, Lcom/android/server/display/WifiDisplayController;->mRemoteDisplayConnected:Z

    return v0
.end method

.method static synthetic access$1602(Lcom/android/server/display/WifiDisplayController;Z)Z
    .registers 2
    .param p0, "x0"  # Lcom/android/server/display/WifiDisplayController;
    .param p1, "x1"  # Z

    .line 85
    iput-boolean p1, p0, Lcom/android/server/display/WifiDisplayController;->mRemoteDisplayConnected:Z

    return p1
.end method

.method static synthetic access$1700(Lcom/android/server/display/WifiDisplayController;)Ljava/lang/Runnable;
    .registers 2
    .param p0, "x0"  # Lcom/android/server/display/WifiDisplayController;

    .line 85
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController;->mRtspTimeout:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/android/server/display/WifiDisplayController;)Landroid/os/Handler;
    .registers 2
    .param p0, "x0"  # Lcom/android/server/display/WifiDisplayController;

    .line 85
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/android/server/display/WifiDisplayController;)Z
    .registers 2
    .param p0, "x0"  # Lcom/android/server/display/WifiDisplayController;

    .line 85
    iget-boolean v0, p0, Lcom/android/server/display/WifiDisplayController;->mWifiDisplayCertMode:Z

    return v0
.end method

.method static synthetic access$2000(Lcom/android/server/display/WifiDisplayController;)Landroid/net/wifi/p2p/WifiP2pGroup;
    .registers 2
    .param p0, "x0"  # Lcom/android/server/display/WifiDisplayController;

    .line 85
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController;->mConnectedDeviceGroupInfo:Landroid/net/wifi/p2p/WifiP2pGroup;

    return-object v0
.end method

.method static synthetic access$2002(Lcom/android/server/display/WifiDisplayController;Landroid/net/wifi/p2p/WifiP2pGroup;)Landroid/net/wifi/p2p/WifiP2pGroup;
    .registers 2
    .param p0, "x0"  # Lcom/android/server/display/WifiDisplayController;
    .param p1, "x1"  # Landroid/net/wifi/p2p/WifiP2pGroup;

    .line 85
    iput-object p1, p0, Lcom/android/server/display/WifiDisplayController;->mConnectedDeviceGroupInfo:Landroid/net/wifi/p2p/WifiP2pGroup;

    return-object p1
.end method

.method static synthetic access$202(Lcom/android/server/display/WifiDisplayController;Z)Z
    .registers 2
    .param p0, "x0"  # Lcom/android/server/display/WifiDisplayController;
    .param p1, "x1"  # Z

    .line 85
    iput-boolean p1, p0, Lcom/android/server/display/WifiDisplayController;->mWfdEnabled:Z

    return p1
.end method

.method static synthetic access$2100(Lcom/android/server/display/WifiDisplayController;Landroid/net/wifi/p2p/WifiP2pGroup;I)Landroid/hardware/display/WifiDisplaySessionInfo;
    .registers 4
    .param p0, "x0"  # Lcom/android/server/display/WifiDisplayController;
    .param p1, "x1"  # Landroid/net/wifi/p2p/WifiP2pGroup;
    .param p2, "x2"  # I

    .line 85
    invoke-direct {p0, p1, p2}, Lcom/android/server/display/WifiDisplayController;->getSessionInfo(Landroid/net/wifi/p2p/WifiP2pGroup;I)Landroid/hardware/display/WifiDisplaySessionInfo;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2200(Landroid/net/wifi/p2p/WifiP2pDevice;)Landroid/hardware/display/WifiDisplay;
    .registers 2
    .param p0, "x0"  # Landroid/net/wifi/p2p/WifiP2pDevice;

    .line 85
    invoke-static {p0}, Lcom/android/server/display/WifiDisplayController;->createWifiDisplay(Landroid/net/wifi/p2p/WifiP2pDevice;)Landroid/hardware/display/WifiDisplay;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2300(Lcom/android/server/display/WifiDisplayController;Landroid/hardware/display/WifiDisplay;Landroid/view/Surface;III)V
    .registers 6
    .param p0, "x0"  # Lcom/android/server/display/WifiDisplayController;
    .param p1, "x1"  # Landroid/hardware/display/WifiDisplay;
    .param p2, "x2"  # Landroid/view/Surface;
    .param p3, "x3"  # I
    .param p4, "x4"  # I
    .param p5, "x5"  # I

    .line 85
    invoke-direct/range {p0 .. p5}, Lcom/android/server/display/WifiDisplayController;->advertiseDisplay(Landroid/hardware/display/WifiDisplay;Landroid/view/Surface;III)V

    return-void
.end method

.method static synthetic access$2400(Lcom/android/server/display/WifiDisplayController;)V
    .registers 1
    .param p0, "x0"  # Lcom/android/server/display/WifiDisplayController;

    .line 85
    invoke-direct {p0}, Lcom/android/server/display/WifiDisplayController;->disconnect()V

    return-void
.end method

.method static synthetic access$2500(Lcom/android/server/display/WifiDisplayController;Z)V
    .registers 2
    .param p0, "x0"  # Lcom/android/server/display/WifiDisplayController;
    .param p1, "x1"  # Z

    .line 85
    invoke-direct {p0, p1}, Lcom/android/server/display/WifiDisplayController;->handleConnectionFailure(Z)V

    return-void
.end method

.method static synthetic access$2600(Lcom/android/server/display/WifiDisplayController;)Ljava/lang/Runnable;
    .registers 2
    .param p0, "x0"  # Lcom/android/server/display/WifiDisplayController;

    .line 85
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController;->mConnectionTimeout:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$2700(Lcom/android/server/display/WifiDisplayController;)Landroid/net/wifi/p2p/WifiP2pDevice;
    .registers 2
    .param p0, "x0"  # Lcom/android/server/display/WifiDisplayController;

    .line 85
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController;->mConnectingDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    return-object v0
.end method

.method static synthetic access$2702(Lcom/android/server/display/WifiDisplayController;Landroid/net/wifi/p2p/WifiP2pDevice;)Landroid/net/wifi/p2p/WifiP2pDevice;
    .registers 2
    .param p0, "x0"  # Lcom/android/server/display/WifiDisplayController;
    .param p1, "x1"  # Landroid/net/wifi/p2p/WifiP2pDevice;

    .line 85
    iput-object p1, p0, Lcom/android/server/display/WifiDisplayController;->mConnectingDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    return-object p1
.end method

.method static synthetic access$2800(Lcom/android/server/display/WifiDisplayController;)Landroid/net/wifi/p2p/WifiP2pManager$Channel;
    .registers 2
    .param p0, "x0"  # Lcom/android/server/display/WifiDisplayController;

    .line 85
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController;->mWifiP2pChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    return-object v0
.end method

.method static synthetic access$2900(Lcom/android/server/display/WifiDisplayController;)Landroid/net/wifi/p2p/WifiP2pManager;
    .registers 2
    .param p0, "x0"  # Lcom/android/server/display/WifiDisplayController;

    .line 85
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/server/display/WifiDisplayController;)V
    .registers 1
    .param p0, "x0"  # Lcom/android/server/display/WifiDisplayController;

    .line 85
    invoke-direct {p0}, Lcom/android/server/display/WifiDisplayController;->reportFeatureState()V

    return-void
.end method

.method static synthetic access$3000(Lcom/android/server/display/WifiDisplayController;)V
    .registers 1
    .param p0, "x0"  # Lcom/android/server/display/WifiDisplayController;

    .line 85
    invoke-direct {p0}, Lcom/android/server/display/WifiDisplayController;->chooseNoWifiDirectExcludeDialog()V

    return-void
.end method

.method static synthetic access$3102(Lcom/android/server/display/WifiDisplayController;Z)Z
    .registers 2
    .param p0, "x0"  # Lcom/android/server/display/WifiDisplayController;
    .param p1, "x1"  # Z

    .line 85
    iput-boolean p1, p0, Lcom/android/server/display/WifiDisplayController;->mIsConnectedOtherP2p:Z

    return p1
.end method

.method static synthetic access$3200(Lcom/android/server/display/WifiDisplayController;)Landroid/net/wifi/p2p/WifiP2pGroup;
    .registers 2
    .param p0, "x0"  # Lcom/android/server/display/WifiDisplayController;

    .line 85
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController;->mP2pGroupInfo:Landroid/net/wifi/p2p/WifiP2pGroup;

    return-object v0
.end method

.method static synthetic access$3202(Lcom/android/server/display/WifiDisplayController;Landroid/net/wifi/p2p/WifiP2pGroup;)Landroid/net/wifi/p2p/WifiP2pGroup;
    .registers 2
    .param p0, "x0"  # Lcom/android/server/display/WifiDisplayController;
    .param p1, "x1"  # Landroid/net/wifi/p2p/WifiP2pGroup;

    .line 85
    iput-object p1, p0, Lcom/android/server/display/WifiDisplayController;->mP2pGroupInfo:Landroid/net/wifi/p2p/WifiP2pGroup;

    return-object p1
.end method

.method static synthetic access$3300(Lcom/android/server/display/WifiDisplayController;)Landroid/net/wifi/p2p/WifiP2pManager$Channel;
    .registers 2
    .param p0, "x0"  # Lcom/android/server/display/WifiDisplayController;

    .line 85
    invoke-direct {p0}, Lcom/android/server/display/WifiDisplayController;->getWifiP2pChannel()Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$3400(Landroid/net/wifi/p2p/WifiP2pGroup;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"  # Landroid/net/wifi/p2p/WifiP2pGroup;

    .line 85
    invoke-static {p0}, Lcom/android/server/display/WifiDisplayController;->describeWifiP2pGroup(Landroid/net/wifi/p2p/WifiP2pGroup;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$3500(Lcom/android/server/display/WifiDisplayController;)Landroid/net/wifi/p2p/WifiP2pDevice;
    .registers 2
    .param p0, "x0"  # Lcom/android/server/display/WifiDisplayController;

    .line 85
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController;->mDesiredDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    return-object v0
.end method

.method static synthetic access$3502(Lcom/android/server/display/WifiDisplayController;Landroid/net/wifi/p2p/WifiP2pDevice;)Landroid/net/wifi/p2p/WifiP2pDevice;
    .registers 2
    .param p0, "x0"  # Lcom/android/server/display/WifiDisplayController;
    .param p1, "x1"  # Landroid/net/wifi/p2p/WifiP2pDevice;

    .line 85
    iput-object p1, p0, Lcom/android/server/display/WifiDisplayController;->mDesiredDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    return-object p1
.end method

.method static synthetic access$3600(Lcom/android/server/display/WifiDisplayController;)Landroid/net/wifi/p2p/WifiP2pDevice;
    .registers 2
    .param p0, "x0"  # Lcom/android/server/display/WifiDisplayController;

    .line 85
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController;->mThisDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    return-object v0
.end method

.method static synthetic access$3602(Lcom/android/server/display/WifiDisplayController;Landroid/net/wifi/p2p/WifiP2pDevice;)Landroid/net/wifi/p2p/WifiP2pDevice;
    .registers 2
    .param p0, "x0"  # Lcom/android/server/display/WifiDisplayController;
    .param p1, "x1"  # Landroid/net/wifi/p2p/WifiP2pDevice;

    .line 85
    iput-object p1, p0, Lcom/android/server/display/WifiDisplayController;->mThisDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    return-object p1
.end method

.method static synthetic access$3702(Lcom/android/server/display/WifiDisplayController;Landroid/net/wifi/p2p/WifiP2pGroup;)Landroid/net/wifi/p2p/WifiP2pGroup;
    .registers 2
    .param p0, "x0"  # Lcom/android/server/display/WifiDisplayController;
    .param p1, "x1"  # Landroid/net/wifi/p2p/WifiP2pGroup;

    .line 85
    iput-object p1, p0, Lcom/android/server/display/WifiDisplayController;->mConnectedDeviceGroup:Landroid/net/wifi/p2p/WifiP2pGroup;

    return-object p1
.end method

.method static synthetic access$3800(Lcom/android/server/display/WifiDisplayController;)V
    .registers 1
    .param p0, "x0"  # Lcom/android/server/display/WifiDisplayController;

    .line 85
    invoke-direct {p0}, Lcom/android/server/display/WifiDisplayController;->tryDiscoverPeers()V

    return-void
.end method

.method static synthetic access$3900(Lcom/android/server/display/WifiDisplayController;)Landroid/media/RemoteDisplay;
    .registers 2
    .param p0, "x0"  # Lcom/android/server/display/WifiDisplayController;

    .line 85
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController;->mRemoteDisplay:Landroid/media/RemoteDisplay;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/server/display/WifiDisplayController;)V
    .registers 1
    .param p0, "x0"  # Lcom/android/server/display/WifiDisplayController;

    .line 85
    invoke-direct {p0}, Lcom/android/server/display/WifiDisplayController;->updateScanState()V

    return-void
.end method

.method static synthetic access$4000(Lcom/android/server/display/WifiDisplayController;)Ljava/lang/Object;
    .registers 2
    .param p0, "x0"  # Lcom/android/server/display/WifiDisplayController;

    .line 85
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController;->mExtRemoteDisplay:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$4100(Lcom/android/server/display/WifiDisplayController;)I
    .registers 2
    .param p0, "x0"  # Lcom/android/server/display/WifiDisplayController;

    .line 85
    iget v0, p0, Lcom/android/server/display/WifiDisplayController;->mConnectionRetriesLeft:I

    return v0
.end method

.method static synthetic access$4120(Lcom/android/server/display/WifiDisplayController;I)I
    .registers 3
    .param p0, "x0"  # Lcom/android/server/display/WifiDisplayController;
    .param p1, "x1"  # I

    .line 85
    iget v0, p0, Lcom/android/server/display/WifiDisplayController;->mConnectionRetriesLeft:I

    sub-int/2addr v0, p1

    iput v0, p0, Lcom/android/server/display/WifiDisplayController;->mConnectionRetriesLeft:I

    return v0
.end method

.method static synthetic access$4200(Lcom/android/server/display/WifiDisplayController;)V
    .registers 1
    .param p0, "x0"  # Lcom/android/server/display/WifiDisplayController;

    .line 85
    invoke-direct {p0}, Lcom/android/server/display/WifiDisplayController;->retryConnection()V

    return-void
.end method

.method static synthetic access$4300(Lcom/android/server/display/WifiDisplayController;)Landroid/net/NetworkInfo;
    .registers 2
    .param p0, "x0"  # Lcom/android/server/display/WifiDisplayController;

    .line 85
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController;->mNetworkInfo:Landroid/net/NetworkInfo;

    return-object v0
.end method

.method static synthetic access$4400(Lcom/android/server/display/WifiDisplayController;Landroid/net/NetworkInfo;)V
    .registers 2
    .param p0, "x0"  # Lcom/android/server/display/WifiDisplayController;
    .param p1, "x1"  # Landroid/net/NetworkInfo;

    .line 85
    invoke-direct {p0, p1}, Lcom/android/server/display/WifiDisplayController;->handleConnectionChanged(Landroid/net/NetworkInfo;)V

    return-void
.end method

.method static synthetic access$4500(Lcom/android/server/display/WifiDisplayController;Z)V
    .registers 2
    .param p0, "x0"  # Lcom/android/server/display/WifiDisplayController;
    .param p1, "x1"  # Z

    .line 85
    invoke-direct {p0, p1}, Lcom/android/server/display/WifiDisplayController;->handleStateChanged(Z)V

    return-void
.end method

.method static synthetic access$4600(Lcom/android/server/display/WifiDisplayController;)V
    .registers 1
    .param p0, "x0"  # Lcom/android/server/display/WifiDisplayController;

    .line 85
    invoke-direct {p0}, Lcom/android/server/display/WifiDisplayController;->handlePeersChanged()V

    return-void
.end method

.method static synthetic access$4700(Lcom/android/server/display/WifiDisplayController;)Landroid/net/wifi/WifiManager;
    .registers 2
    .param p0, "x0"  # Lcom/android/server/display/WifiDisplayController;

    .line 85
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController;->mWifiManager:Landroid/net/wifi/WifiManager;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/server/display/WifiDisplayController;)Lcom/android/server/display/WifiDisplayController$Listener;
    .registers 2
    .param p0, "x0"  # Lcom/android/server/display/WifiDisplayController;

    .line 85
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController;->mListener:Lcom/android/server/display/WifiDisplayController$Listener;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/server/display/WifiDisplayController;)Z
    .registers 2
    .param p0, "x0"  # Lcom/android/server/display/WifiDisplayController;

    .line 85
    iget-boolean v0, p0, Lcom/android/server/display/WifiDisplayController;->mDiscoverPeersInProgress:Z

    return v0
.end method

.method static synthetic access$700(Lcom/android/server/display/WifiDisplayController;)V
    .registers 1
    .param p0, "x0"  # Lcom/android/server/display/WifiDisplayController;

    .line 85
    invoke-direct {p0}, Lcom/android/server/display/WifiDisplayController;->requestPeers()V

    return-void
.end method

.method static synthetic access$800(Lcom/android/server/display/WifiDisplayController;)Ljava/util/ArrayList;
    .registers 2
    .param p0, "x0"  # Lcom/android/server/display/WifiDisplayController;

    .line 85
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController;->mAvailableWifiDisplayPeers:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$900(Landroid/net/wifi/p2p/WifiP2pDevice;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"  # Landroid/net/wifi/p2p/WifiP2pDevice;

    .line 85
    invoke-static {p0}, Lcom/android/server/display/WifiDisplayController;->describeWifiP2pDevice(Landroid/net/wifi/p2p/WifiP2pDevice;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private advertiseDisplay(Landroid/hardware/display/WifiDisplay;Landroid/view/Surface;III)V
    .registers 23
    .param p1, "display"  # Landroid/hardware/display/WifiDisplay;
    .param p2, "surface"  # Landroid/view/Surface;
    .param p3, "width"  # I
    .param p4, "height"  # I
    .param p5, "flags"  # I

    .line 1340
    move-object/from16 v9, p0

    move-object/from16 v10, p1

    move-object/from16 v11, p2

    move/from16 v12, p3

    move/from16 v13, p4

    move/from16 v14, p5

    iget-object v0, v9, Lcom/android/server/display/WifiDisplayController;->mAdvertisedDisplay:Landroid/hardware/display/WifiDisplay;

    invoke-static {v0, v10}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_24

    iget-object v0, v9, Lcom/android/server/display/WifiDisplayController;->mAdvertisedDisplaySurface:Landroid/view/Surface;

    if-ne v0, v11, :cond_24

    iget v0, v9, Lcom/android/server/display/WifiDisplayController;->mAdvertisedDisplayWidth:I

    if-ne v0, v12, :cond_24

    iget v0, v9, Lcom/android/server/display/WifiDisplayController;->mAdvertisedDisplayHeight:I

    if-ne v0, v13, :cond_24

    iget v0, v9, Lcom/android/server/display/WifiDisplayController;->mAdvertisedDisplayFlags:I

    if-eq v0, v14, :cond_4f

    .line 1345
    :cond_24
    iget-object v15, v9, Lcom/android/server/display/WifiDisplayController;->mAdvertisedDisplay:Landroid/hardware/display/WifiDisplay;

    .line 1346
    .local v15, "oldDisplay":Landroid/hardware/display/WifiDisplay;
    iget-object v8, v9, Lcom/android/server/display/WifiDisplayController;->mAdvertisedDisplaySurface:Landroid/view/Surface;

    .line 1348
    .local v8, "oldSurface":Landroid/view/Surface;
    iput-object v10, v9, Lcom/android/server/display/WifiDisplayController;->mAdvertisedDisplay:Landroid/hardware/display/WifiDisplay;

    .line 1349
    iput-object v11, v9, Lcom/android/server/display/WifiDisplayController;->mAdvertisedDisplaySurface:Landroid/view/Surface;

    .line 1350
    iput v12, v9, Lcom/android/server/display/WifiDisplayController;->mAdvertisedDisplayWidth:I

    .line 1351
    iput v13, v9, Lcom/android/server/display/WifiDisplayController;->mAdvertisedDisplayHeight:I

    .line 1352
    iput v14, v9, Lcom/android/server/display/WifiDisplayController;->mAdvertisedDisplayFlags:I

    .line 1354
    iget-object v7, v9, Lcom/android/server/display/WifiDisplayController;->mHandler:Landroid/os/Handler;

    new-instance v6, Lcom/android/server/display/WifiDisplayController$28;

    move-object v0, v6

    move-object/from16 v1, p0

    move-object v2, v8

    move-object/from16 v3, p2

    move-object v4, v15

    move-object/from16 v5, p1

    move-object v9, v6

    move/from16 v6, p3

    move-object v10, v7

    move/from16 v7, p4

    move-object/from16 v16, v8

    .end local v8  # "oldSurface":Landroid/view/Surface;
    .local v16, "oldSurface":Landroid/view/Surface;
    move/from16 v8, p5

    invoke-direct/range {v0 .. v8}, Lcom/android/server/display/WifiDisplayController$28;-><init>(Lcom/android/server/display/WifiDisplayController;Landroid/view/Surface;Landroid/view/Surface;Landroid/hardware/display/WifiDisplay;Landroid/hardware/display/WifiDisplay;III)V

    invoke-virtual {v10, v9}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1378
    .end local v15  # "oldDisplay":Landroid/hardware/display/WifiDisplay;
    .end local v16  # "oldSurface":Landroid/view/Surface;
    :cond_4f
    return-void
.end method

.method private chooseNoWifiDirectExcludeDialog()V
    .registers 7

    .line 1062
    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/server/display/WifiDisplayController;->advertiseDisplay(Landroid/hardware/display/WifiDisplay;Landroid/view/Surface;III)V

    .line 1064
    return-void
.end method

.method private computeFeatureState()I
    .registers 4

    .line 458
    iget-boolean v0, p0, Lcom/android/server/display/WifiDisplayController;->mWifiP2pEnabled:Z

    if-nez v0, :cond_13

    .line 460
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController;->mContext:Landroid/content/Context;

    .line 461
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, 0x0

    .line 460
    const-string/jumbo v2, "wifi_display_on"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 463
    const/4 v0, 0x1

    return v0

    .line 465
    :cond_13
    iget-boolean v0, p0, Lcom/android/server/display/WifiDisplayController;->mWifiDisplayOnSetting:Z

    if-eqz v0, :cond_19

    const/4 v0, 0x3

    goto :goto_1a

    .line 466
    :cond_19
    const/4 v0, 0x2

    .line 465
    :goto_1a
    return v0
.end method

.method private connect(Landroid/net/wifi/p2p/WifiP2pDevice;)V
    .registers 5
    .param p1, "device"  # Landroid/net/wifi/p2p/WifiP2pDevice;

    .line 622
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController;->mDesiredDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    const-string v1, "WifiDisplayController"

    if-eqz v0, :cond_29

    iget-object v0, v0, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceAddress:Ljava/lang/String;

    iget-object v2, p1, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceAddress:Ljava/lang/String;

    .line 623
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_29

    .line 625
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "connect: nothing to do, already connecting to "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 626
    invoke-static {p1}, Lcom/android/server/display/WifiDisplayController;->describeWifiP2pDevice(Landroid/net/wifi/p2p/WifiP2pDevice;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 625
    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 628
    return-void

    .line 631
    :cond_29
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController;->mConnectedDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    if-eqz v0, :cond_59

    iget-object v0, v0, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceAddress:Ljava/lang/String;

    iget-object v2, p1, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceAddress:Ljava/lang/String;

    .line 632
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_59

    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController;->mDesiredDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    if-nez v0, :cond_59

    .line 635
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "connect: nothing to do, already connected to "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 636
    invoke-static {p1}, Lcom/android/server/display/WifiDisplayController;->describeWifiP2pDevice(Landroid/net/wifi/p2p/WifiP2pDevice;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " and not part way through connecting to a different device."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 635
    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 639
    return-void

    .line 642
    :cond_59
    iget-boolean v0, p0, Lcom/android/server/display/WifiDisplayController;->mWfdEnabled:Z

    if-nez v0, :cond_74

    .line 643
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Ignoring request to connect to Wifi display because the  feature is currently disabled: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p1, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 645
    return-void

    .line 648
    :cond_74
    invoke-direct {p0, p1}, Lcom/android/server/display/WifiDisplayController;->handlePreExistingConnection(Landroid/net/wifi/p2p/WifiP2pDevice;)Z

    move-result v0

    if-eqz v0, :cond_80

    .line 649
    const-string v0, "already handle the preexisting p2p connection status"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 650
    return-void

    .line 652
    :cond_80
    iput-object p1, p0, Lcom/android/server/display/WifiDisplayController;->mDesiredDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    .line 653
    const/4 v0, 0x3

    iput v0, p0, Lcom/android/server/display/WifiDisplayController;->mConnectionRetriesLeft:I

    .line 654
    invoke-direct {p0}, Lcom/android/server/display/WifiDisplayController;->updateConnection()V

    .line 655
    return-void
.end method

.method private static createWifiDisplay(Landroid/net/wifi/p2p/WifiP2pDevice;)Landroid/hardware/display/WifiDisplay;
    .registers 9
    .param p0, "device"  # Landroid/net/wifi/p2p/WifiP2pDevice;

    .line 1477
    new-instance v7, Landroid/hardware/display/WifiDisplay;

    iget-object v1, p0, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceAddress:Ljava/lang/String;

    iget-object v2, p0, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceName:Ljava/lang/String;

    iget-object v0, p0, Landroid/net/wifi/p2p/WifiP2pDevice;->wfdInfo:Landroid/net/wifi/p2p/WifiP2pWfdInfo;

    .line 1478
    invoke-virtual {v0}, Landroid/net/wifi/p2p/WifiP2pWfdInfo;->isSessionAvailable()Z

    move-result v5

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v6, 0x0

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Landroid/hardware/display/WifiDisplay;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZZ)V

    .line 1477
    return-object v7
.end method

.method private static describeWifiP2pDevice(Landroid/net/wifi/p2p/WifiP2pDevice;)Ljava/lang/String;
    .registers 4
    .param p0, "device"  # Landroid/net/wifi/p2p/WifiP2pDevice;

    .line 1469
    if-eqz p0, :cond_f

    invoke-virtual {p0}, Landroid/net/wifi/p2p/WifiP2pDevice;->toString()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0xa

    const/16 v2, 0x2c

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    goto :goto_12

    :cond_f
    const-string/jumbo v0, "null"

    :goto_12
    return-object v0
.end method

.method private static describeWifiP2pGroup(Landroid/net/wifi/p2p/WifiP2pGroup;)Ljava/lang/String;
    .registers 4
    .param p0, "group"  # Landroid/net/wifi/p2p/WifiP2pGroup;

    .line 1473
    if-eqz p0, :cond_f

    invoke-virtual {p0}, Landroid/net/wifi/p2p/WifiP2pGroup;->toString()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0xa

    const/16 v2, 0x2c

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    goto :goto_12

    :cond_f
    const-string/jumbo v0, "null"

    :goto_12
    return-object v0
.end method

.method private disconnect()V
    .registers 2

    .line 658
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/display/WifiDisplayController;->mDesiredDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    .line 659
    invoke-direct {p0}, Lcom/android/server/display/WifiDisplayController;->updateConnection()V

    .line 660
    return-void
.end method

.method private dump()V
    .registers 6

    .line 299
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mWifiDisplayOnSetting="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/display/WifiDisplayController;->mWifiDisplayOnSetting:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WifiDisplayController"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 300
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "mWifiP2pEnabled="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/server/display/WifiDisplayController;->mWifiP2pEnabled:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 301
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "mWfdEnabled="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/server/display/WifiDisplayController;->mWfdEnabled:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 302
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "mWfdEnabling="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/server/display/WifiDisplayController;->mWfdEnabling:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 303
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "mNetworkInfo="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/display/WifiDisplayController;->mNetworkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 304
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "mScanRequested="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/server/display/WifiDisplayController;->mScanRequested:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 305
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "mDiscoverPeersInProgress="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/server/display/WifiDisplayController;->mDiscoverPeersInProgress:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 306
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "mDesiredDevice="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/display/WifiDisplayController;->mDesiredDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    invoke-static {v2}, Lcom/android/server/display/WifiDisplayController;->describeWifiP2pDevice(Landroid/net/wifi/p2p/WifiP2pDevice;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 307
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "mConnectingDisplay="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/display/WifiDisplayController;->mConnectingDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    invoke-static {v2}, Lcom/android/server/display/WifiDisplayController;->describeWifiP2pDevice(Landroid/net/wifi/p2p/WifiP2pDevice;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 308
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "mDisconnectingDisplay="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/display/WifiDisplayController;->mDisconnectingDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    invoke-static {v2}, Lcom/android/server/display/WifiDisplayController;->describeWifiP2pDevice(Landroid/net/wifi/p2p/WifiP2pDevice;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 309
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "mCancelingDisplay="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/display/WifiDisplayController;->mCancelingDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    invoke-static {v2}, Lcom/android/server/display/WifiDisplayController;->describeWifiP2pDevice(Landroid/net/wifi/p2p/WifiP2pDevice;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 310
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "mConnectedDevice="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/display/WifiDisplayController;->mConnectedDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    invoke-static {v2}, Lcom/android/server/display/WifiDisplayController;->describeWifiP2pDevice(Landroid/net/wifi/p2p/WifiP2pDevice;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 311
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "mConnectionRetriesLeft="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/display/WifiDisplayController;->mConnectionRetriesLeft:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 312
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "mRemoteDisplay="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/display/WifiDisplayController;->mRemoteDisplay:Landroid/media/RemoteDisplay;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 313
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "mRemoteDisplayInterface="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/display/WifiDisplayController;->mRemoteDisplayInterface:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 314
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "mRemoteDisplayConnected="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/server/display/WifiDisplayController;->mRemoteDisplayConnected:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 315
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "mAdvertisedDisplay="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/display/WifiDisplayController;->mAdvertisedDisplay:Landroid/hardware/display/WifiDisplay;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 316
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "mAdvertisedDisplaySurface="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/display/WifiDisplayController;->mAdvertisedDisplaySurface:Landroid/view/Surface;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 317
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "mAdvertisedDisplayWidth="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/display/WifiDisplayController;->mAdvertisedDisplayWidth:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 318
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "mAdvertisedDisplayHeight="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/display/WifiDisplayController;->mAdvertisedDisplayHeight:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 319
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "mAdvertisedDisplayFlags="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/display/WifiDisplayController;->mAdvertisedDisplayFlags:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 321
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "mAvailableWifiDisplayPeers: size="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/display/WifiDisplayController;->mAvailableWifiDisplayPeers:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 322
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController;->mAvailableWifiDisplayPeers:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_21a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_23f

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/wifi/p2p/WifiP2pDevice;

    .line 323
    .local v2, "device":Landroid/net/wifi/p2p/WifiP2pDevice;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "  "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v2}, Lcom/android/server/display/WifiDisplayController;->describeWifiP2pDevice(Landroid/net/wifi/p2p/WifiP2pDevice;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 324
    .end local v2  # "device":Landroid/net/wifi/p2p/WifiP2pDevice;
    goto :goto_21a

    .line 325
    :cond_23f
    return-void
.end method

.method private enableWifiDisplay()V
    .registers 5

    .line 1566
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/display/WifiDisplayController;->mEnableWifiDelay:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1568
    iget-boolean v0, p0, Lcom/android/server/display/WifiDisplayController;->mWifiDisplayOnSetting:Z

    if-eqz v0, :cond_3c

    iget-boolean v0, p0, Lcom/android/server/display/WifiDisplayController;->mWifiP2pEnabled:Z

    if-nez v0, :cond_3c

    .line 1569
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-wide/16 v1, 0x1f4

    const-string/jumbo v3, "wifi_reenable_delay"

    invoke-static {v0, v3, v1, v2}, Landroid/provider/Settings$Global;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v0

    .line 1572
    .local v0, "delay":J
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Enable wifi with delay:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "WifiDisplayController"

    invoke-static {v3, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1573
    iget-object v2, p0, Lcom/android/server/display/WifiDisplayController;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/server/display/WifiDisplayController;->mEnableWifiDelay:Ljava/lang/Runnable;

    invoke-virtual {v2, v3, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1574
    .end local v0  # "delay":J
    goto :goto_3f

    .line 1576
    :cond_3c
    invoke-direct {p0}, Lcom/android/server/display/WifiDisplayController;->updateWfdEnableState()V

    .line 1578
    :goto_3f
    return-void
.end method

.method private getDualWifiSavedState()I
    .registers 4

    .line 1554
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "dual_wifi_saved_state"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method private getDualWifiState()I
    .registers 4

    .line 1544
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "dual_wifi_enabled"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method private static getInterfaceAddress(Landroid/net/wifi/p2p/WifiP2pGroup;)Ljava/net/Inet4Address;
    .registers 8
    .param p0, "info"  # Landroid/net/wifi/p2p/WifiP2pGroup;

    .line 1428
    const-string v0, "Could not obtain address of network interface "

    const-string v1, "WifiDisplayController"

    const/4 v2, 0x0

    :try_start_5
    invoke-virtual {p0}, Landroid/net/wifi/p2p/WifiP2pGroup;->getInterface()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/net/NetworkInterface;->getByName(Ljava/lang/String;)Ljava/net/NetworkInterface;

    move-result-object v3
    :try_end_d
    .catch Ljava/net/SocketException; {:try_start_5 .. :try_end_d} :catch_43

    .line 1433
    .local v3, "iface":Ljava/net/NetworkInterface;
    nop

    .line 1435
    invoke-virtual {v3}, Ljava/net/NetworkInterface;->getInetAddresses()Ljava/util/Enumeration;

    move-result-object v4

    .line 1436
    .local v4, "addrs":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/net/InetAddress;>;"
    :goto_12
    invoke-interface {v4}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v5

    if-eqz v5, :cond_27

    .line 1437
    invoke-interface {v4}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/net/InetAddress;

    .line 1438
    .local v5, "addr":Ljava/net/InetAddress;
    instance-of v6, v5, Ljava/net/Inet4Address;

    if-eqz v6, :cond_26

    .line 1439
    move-object v0, v5

    check-cast v0, Ljava/net/Inet4Address;

    return-object v0

    .line 1441
    .end local v5  # "addr":Ljava/net/InetAddress;
    :cond_26
    goto :goto_12

    .line 1443
    :cond_27
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1444
    invoke-virtual {p0}, Landroid/net/wifi/p2p/WifiP2pGroup;->getInterface()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " because it had no IPv4 addresses."

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1443
    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1445
    return-object v2

    .line 1429
    .end local v3  # "iface":Ljava/net/NetworkInterface;
    .end local v4  # "addrs":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/net/InetAddress;>;"
    :catch_43
    move-exception v3

    .line 1430
    .local v3, "ex":Ljava/net/SocketException;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1431
    invoke-virtual {p0}, Landroid/net/wifi/p2p/WifiP2pGroup;->getInterface()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1430
    invoke-static {v1, v0, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1432
    return-object v2
.end method

.method private static getPortNumber(Landroid/net/wifi/p2p/WifiP2pDevice;)I
    .registers 3
    .param p0, "device"  # Landroid/net/wifi/p2p/WifiP2pDevice;

    .line 1449
    iget-object v0, p0, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceName:Ljava/lang/String;

    const-string v1, "DIRECT-"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_17

    iget-object v0, p0, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceName:Ljava/lang/String;

    .line 1450
    const-string v1, "Broadcom"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_17

    .line 1452
    const/16 v0, 0x216a

    return v0

    .line 1454
    :cond_17
    const/16 v0, 0x1c44

    return v0
.end method

.method private getSessionInfo(Landroid/net/wifi/p2p/WifiP2pGroup;I)Landroid/hardware/display/WifiDisplaySessionInfo;
    .registers 11
    .param p1, "info"  # Landroid/net/wifi/p2p/WifiP2pGroup;
    .param p2, "session"  # I

    .line 1033
    if-eqz p1, :cond_5a

    invoke-virtual {p1}, Landroid/net/wifi/p2p/WifiP2pGroup;->getOwner()Landroid/net/wifi/p2p/WifiP2pDevice;

    move-result-object v0

    if-nez v0, :cond_9

    goto :goto_5a

    .line 1036
    :cond_9
    invoke-static {p1}, Lcom/android/server/display/WifiDisplayController;->getInterfaceAddress(Landroid/net/wifi/p2p/WifiP2pGroup;)Ljava/net/Inet4Address;

    move-result-object v0

    .line 1037
    .local v0, "addr":Ljava/net/Inet4Address;
    new-instance v7, Landroid/hardware/display/WifiDisplaySessionInfo;

    .line 1038
    invoke-virtual {p1}, Landroid/net/wifi/p2p/WifiP2pGroup;->getOwner()Landroid/net/wifi/p2p/WifiP2pDevice;

    move-result-object v1

    iget-object v1, v1, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceAddress:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/server/display/WifiDisplayController;->mThisDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    iget-object v2, v2, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceAddress:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    xor-int/lit8 v2, v1, 0x1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 1040
    invoke-virtual {p1}, Landroid/net/wifi/p2p/WifiP2pGroup;->getOwner()Landroid/net/wifi/p2p/WifiP2pDevice;

    move-result-object v3

    iget-object v3, v3, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceAddress:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/net/wifi/p2p/WifiP2pGroup;->getNetworkName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1041
    invoke-virtual {p1}, Landroid/net/wifi/p2p/WifiP2pGroup;->getPassphrase()Ljava/lang/String;

    move-result-object v5

    .line 1042
    if-eqz v0, :cond_48

    invoke-virtual {v0}, Ljava/net/Inet4Address;->getHostAddress()Ljava/lang/String;

    move-result-object v1

    goto :goto_4a

    :cond_48
    const-string v1, ""

    :goto_4a
    move-object v6, v1

    move-object v1, v7

    move v3, p2

    invoke-direct/range {v1 .. v6}, Landroid/hardware/display/WifiDisplaySessionInfo;-><init>(ZILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1044
    .local v1, "sessionInfo":Landroid/hardware/display/WifiDisplaySessionInfo;
    invoke-virtual {v1}, Landroid/hardware/display/WifiDisplaySessionInfo;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "WifiDisplayController"

    invoke-static {v3, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1046
    return-object v1

    .line 1034
    .end local v0  # "addr":Ljava/net/Inet4Address;
    .end local v1  # "sessionInfo":Landroid/hardware/display/WifiDisplaySessionInfo;
    :cond_5a
    :goto_5a
    const/4 v0, 0x0

    return-object v0
.end method

.method private getWifiP2pChannel()Landroid/net/wifi/p2p/WifiP2pManager$Channel;
    .registers 5

    .line 238
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController;->mWifiP2pChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    if-nez v0, :cond_1c

    .line 239
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    iget-object v1, p0, Lcom/android/server/display/WifiDisplayController;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/display/WifiDisplayController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/net/wifi/p2p/WifiP2pManager;->initialize(Landroid/content/Context;Landroid/os/Looper;Landroid/net/wifi/p2p/WifiP2pManager$ChannelListener;)Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/display/WifiDisplayController;->mWifiP2pChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    .line 241
    const-string v0, "WifiDisplayController"

    const-string v1, "Creating WifiP2pChannel"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 244
    :cond_1c
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController;->mWifiP2pChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    return-object v0
.end method

.method private handleConnectionChanged(Landroid/net/NetworkInfo;)V
    .registers 7
    .param p1, "networkInfo"  # Landroid/net/NetworkInfo;

    .line 1167
    iput-object p1, p0, Lcom/android/server/display/WifiDisplayController;->mNetworkInfo:Landroid/net/NetworkInfo;

    .line 1168
    iget-boolean v0, p0, Lcom/android/server/display/WifiDisplayController;->mWfdEnabled:Z

    const/4 v1, 0x0

    const-string v2, "WifiDisplayController"

    if-eqz v0, :cond_26

    invoke-virtual {p1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_26

    .line 1169
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController;->mDesiredDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    if-nez v0, :cond_17

    iget-boolean v0, p0, Lcom/android/server/display/WifiDisplayController;->mWifiDisplayCertMode:Z

    if-eqz v0, :cond_66

    .line 1170
    :cond_17
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    invoke-direct {p0}, Lcom/android/server/display/WifiDisplayController;->getWifiP2pChannel()Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    move-result-object v3

    new-instance v4, Lcom/android/server/display/WifiDisplayController$22;

    invoke-direct {v4, p0}, Lcom/android/server/display/WifiDisplayController$22;-><init>(Lcom/android/server/display/WifiDisplayController;)V

    invoke-virtual {v0, v3, v4}, Landroid/net/wifi/p2p/WifiP2pManager;->requestGroupInfo(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/WifiP2pManager$GroupInfoListener;)V

    goto :goto_66

    .line 1232
    :cond_26
    const-string/jumbo v0, "p2p disconnected ,so mConectionDeviceGroupInfo set to null"

    invoke-static {v2, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1233
    iput-object v1, p0, Lcom/android/server/display/WifiDisplayController;->mConnectedDeviceGroupInfo:Landroid/net/wifi/p2p/WifiP2pGroup;

    .line 1235
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController;->mConnectingDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    if-nez v0, :cond_36

    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController;->mConnectedDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    if-eqz v0, :cond_3e

    .line 1236
    :cond_36
    const-string v0, "disconnect while mConnectingDeivce or mConnectedDevice not null"

    invoke-static {v2, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1237
    invoke-direct {p0}, Lcom/android/server/display/WifiDisplayController;->disconnect()V

    .line 1240
    :cond_3e
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController;->mDesiredDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    if-eqz v0, :cond_5f

    .line 1241
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "reconnect new device: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/display/WifiDisplayController;->mDesiredDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    iget-object v1, v1, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1242
    invoke-direct {p0}, Lcom/android/server/display/WifiDisplayController;->updateConnection()V

    .line 1243
    return-void

    .line 1249
    :cond_5f
    iget-boolean v0, p0, Lcom/android/server/display/WifiDisplayController;->mWfdEnabled:Z

    if-eqz v0, :cond_66

    .line 1250
    invoke-direct {p0}, Lcom/android/server/display/WifiDisplayController;->requestPeers()V

    .line 1255
    :cond_66
    :goto_66
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController;->mDesiredDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    if-nez v0, :cond_7a

    .line 1256
    invoke-virtual {p1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/display/WifiDisplayController;->mIsConnectedOtherP2p:Z

    .line 1257
    const/4 v0, 0x1

    iget-boolean v3, p0, Lcom/android/server/display/WifiDisplayController;->mIsConnectedOtherP2p:Z

    if-ne v0, v3, :cond_7a

    .line 1258
    const-string v0, "Wifi P2p connection is connected but it does not wifidisplay trigger"

    invoke-static {v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1263
    :cond_7a
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController;->mDesiredDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    if-nez v0, :cond_99

    invoke-virtual {p1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_99

    .line 1264
    const-string/jumbo v0, "other p2p connected,save group info"

    invoke-static {v2, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1265
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    invoke-direct {p0}, Lcom/android/server/display/WifiDisplayController;->getWifiP2pChannel()Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    move-result-object v1

    new-instance v2, Lcom/android/server/display/WifiDisplayController$23;

    invoke-direct {v2, p0}, Lcom/android/server/display/WifiDisplayController$23;-><init>(Lcom/android/server/display/WifiDisplayController;)V

    invoke-virtual {v0, v1, v2}, Landroid/net/wifi/p2p/WifiP2pManager;->requestGroupInfo(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/WifiP2pManager$GroupInfoListener;)V

    goto :goto_a1

    .line 1276
    :cond_99
    const-string/jumbo v0, "wifi p2p disconected,set mP2pGroupInfo to null"

    invoke-static {v2, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1277
    iput-object v1, p0, Lcom/android/server/display/WifiDisplayController;->mP2pGroupInfo:Landroid/net/wifi/p2p/WifiP2pGroup;

    .line 1280
    :goto_a1
    return-void
.end method

.method private handleConnectionFailure(Z)V
    .registers 7
    .param p1, "timeoutOccurred"  # Z

    .line 1316
    const-string v0, "WifiDisplayController"

    const-string v1, "Wifi display connection failed!"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1318
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController;->mDesiredDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    if-eqz v0, :cond_26

    .line 1319
    iget v0, p0, Lcom/android/server/display/WifiDisplayController;->mConnectionRetriesLeft:I

    if-lez v0, :cond_23

    .line 1320
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController;->mDesiredDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    .line 1321
    .local v0, "oldDevice":Landroid/net/wifi/p2p/WifiP2pDevice;
    iget-object v1, p0, Lcom/android/server/display/WifiDisplayController;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/server/display/WifiDisplayController$27;

    invoke-direct {v2, p0, v0}, Lcom/android/server/display/WifiDisplayController$27;-><init>(Lcom/android/server/display/WifiDisplayController;Landroid/net/wifi/p2p/WifiP2pDevice;)V

    .line 1331
    if-eqz p1, :cond_1d

    const-wide/16 v3, 0x0

    goto :goto_1f

    :cond_1d
    const-wide/16 v3, 0x1f4

    .line 1321
    :goto_1f
    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1332
    .end local v0  # "oldDevice":Landroid/net/wifi/p2p/WifiP2pDevice;
    goto :goto_26

    .line 1333
    :cond_23
    invoke-direct {p0}, Lcom/android/server/display/WifiDisplayController;->disconnect()V

    .line 1336
    :cond_26
    :goto_26
    return-void
.end method

.method private handlePeersChanged()V
    .registers 1

    .line 1057
    invoke-direct {p0}, Lcom/android/server/display/WifiDisplayController;->requestPeers()V

    .line 1058
    return-void
.end method

.method private handlePreExistingConnection(Landroid/net/wifi/p2p/WifiP2pDevice;)Z
    .registers 5
    .param p1, "device"  # Landroid/net/wifi/p2p/WifiP2pDevice;

    .line 1391
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController;->mNetworkInfo:Landroid/net/NetworkInfo;

    if-eqz v0, :cond_2b

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_2b

    iget-boolean v0, p0, Lcom/android/server/display/WifiDisplayController;->mWifiDisplayCertMode:Z

    if-eqz v0, :cond_f

    goto :goto_2b

    .line 1394
    :cond_f
    const-string v0, "WifiDisplayController"

    const-string v1, "handle the preexisting p2p connection status"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1395
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    invoke-direct {p0}, Lcom/android/server/display/WifiDisplayController;->getWifiP2pChannel()Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    move-result-object v1

    new-instance v2, Lcom/android/server/display/WifiDisplayController$29;

    invoke-direct {v2, p0, p1}, Lcom/android/server/display/WifiDisplayController$29;-><init>(Lcom/android/server/display/WifiDisplayController;Landroid/net/wifi/p2p/WifiP2pDevice;)V

    invoke-virtual {v0, v1, v2}, Landroid/net/wifi/p2p/WifiP2pManager;->requestGroupInfo(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/WifiP2pManager$GroupInfoListener;)V

    .line 1420
    iput-object p1, p0, Lcom/android/server/display/WifiDisplayController;->mDesiredDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    .line 1421
    const/4 v0, 0x3

    iput v0, p0, Lcom/android/server/display/WifiDisplayController;->mConnectionRetriesLeft:I

    .line 1422
    const/4 v0, 0x1

    return v0

    .line 1392
    :cond_2b
    :goto_2b
    const/4 v0, 0x0

    return v0
.end method

.method private handleScanFinished()V
    .registers 3

    .line 596
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/display/WifiDisplayController$10;

    invoke-direct {v1, p0}, Lcom/android/server/display/WifiDisplayController$10;-><init>(Lcom/android/server/display/WifiDisplayController;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 602
    return-void
.end method

.method private handleScanResults()V
    .registers 6

    .line 579
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController;->mAvailableWifiDisplayPeers:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 580
    .local v0, "count":I
    sget-object v1, Landroid/hardware/display/WifiDisplay;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, v0}, Landroid/os/Parcelable$Creator;->newArray(I)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/hardware/display/WifiDisplay;

    .line 581
    .local v1, "displays":[Landroid/hardware/display/WifiDisplay;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_f
    if-ge v2, v0, :cond_25

    .line 582
    iget-object v3, p0, Lcom/android/server/display/WifiDisplayController;->mAvailableWifiDisplayPeers:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/wifi/p2p/WifiP2pDevice;

    .line 583
    .local v3, "device":Landroid/net/wifi/p2p/WifiP2pDevice;
    invoke-static {v3}, Lcom/android/server/display/WifiDisplayController;->createWifiDisplay(Landroid/net/wifi/p2p/WifiP2pDevice;)Landroid/hardware/display/WifiDisplay;

    move-result-object v4

    aput-object v4, v1, v2

    .line 584
    invoke-direct {p0, v3}, Lcom/android/server/display/WifiDisplayController;->updateDesiredDevice(Landroid/net/wifi/p2p/WifiP2pDevice;)V

    .line 581
    .end local v3  # "device":Landroid/net/wifi/p2p/WifiP2pDevice;
    add-int/lit8 v2, v2, 0x1

    goto :goto_f

    .line 587
    .end local v2  # "i":I
    :cond_25
    iget-object v2, p0, Lcom/android/server/display/WifiDisplayController;->mHandler:Landroid/os/Handler;

    new-instance v3, Lcom/android/server/display/WifiDisplayController$9;

    invoke-direct {v3, p0, v1}, Lcom/android/server/display/WifiDisplayController$9;-><init>(Lcom/android/server/display/WifiDisplayController;[Landroid/hardware/display/WifiDisplay;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 593
    return-void
.end method

.method private handleScanStarted()V
    .registers 3

    .line 570
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/display/WifiDisplayController$8;

    invoke-direct {v1, p0}, Lcom/android/server/display/WifiDisplayController$8;-><init>(Lcom/android/server/display/WifiDisplayController;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 576
    return-void
.end method

.method private handleStateChanged(Z)V
    .registers 2
    .param p1, "enabled"  # Z

    .line 1050
    iput-boolean p1, p0, Lcom/android/server/display/WifiDisplayController;->mWifiP2pEnabled:Z

    .line 1051
    invoke-direct {p0}, Lcom/android/server/display/WifiDisplayController;->updateWfdEnableState()V

    .line 1052
    return-void
.end method

.method private static isPrimarySinkDeviceType(I)Z
    .registers 3
    .param p0, "deviceType"  # I

    .line 1464
    const/4 v0, 0x1

    if-eq p0, v0, :cond_8

    const/4 v1, 0x3

    if-ne p0, v1, :cond_7

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    :cond_8
    :goto_8
    return v0
.end method

.method private static isWifiDisplay(Landroid/net/wifi/p2p/WifiP2pDevice;)Z
    .registers 2
    .param p0, "device"  # Landroid/net/wifi/p2p/WifiP2pDevice;

    .line 1458
    iget-object v0, p0, Landroid/net/wifi/p2p/WifiP2pDevice;->wfdInfo:Landroid/net/wifi/p2p/WifiP2pWfdInfo;

    if-eqz v0, :cond_1a

    iget-object v0, p0, Landroid/net/wifi/p2p/WifiP2pDevice;->wfdInfo:Landroid/net/wifi/p2p/WifiP2pWfdInfo;

    .line 1459
    invoke-virtual {v0}, Landroid/net/wifi/p2p/WifiP2pWfdInfo;->isWfdEnabled()Z

    move-result v0

    if-eqz v0, :cond_1a

    iget-object v0, p0, Landroid/net/wifi/p2p/WifiP2pDevice;->wfdInfo:Landroid/net/wifi/p2p/WifiP2pWfdInfo;

    .line 1460
    invoke-virtual {v0}, Landroid/net/wifi/p2p/WifiP2pWfdInfo;->getDeviceType()I

    move-result v0

    invoke-static {v0}, Lcom/android/server/display/WifiDisplayController;->isPrimarySinkDeviceType(I)Z

    move-result v0

    if-eqz v0, :cond_1a

    const/4 v0, 0x1

    goto :goto_1b

    :cond_1a
    const/4 v0, 0x0

    .line 1458
    :goto_1b
    return v0
.end method

.method private popupDialog(Landroid/app/AlertDialog;)V
    .registers 4
    .param p1, "dialog"  # Landroid/app/AlertDialog;

    .line 1152
    invoke-virtual {p1}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x7d3

    invoke-virtual {v0, v1}, Landroid/view/Window;->setType(I)V

    .line 1153
    invoke-virtual {p1}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    or-int/lit8 v1, v1, 0x10

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    .line 1155
    invoke-virtual {p1}, Landroid/app/AlertDialog;->show()V

    .line 1157
    return-void
.end method

.method private prepareDialog(I)V
    .registers 6
    .param p1, "dialogID"  # I

    .line 1067
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    .line 1068
    .local v0, "mResource":Landroid/content/res/Resources;
    const/4 v1, 0x1

    if-ne v1, p1, :cond_57

    .line 1070
    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/android/server/display/WifiDisplayController;->mContext:Landroid/content/Context;

    const/4 v3, 0x5

    invoke-direct {v1, v2, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    const v2, 0xa1001c7

    .line 1072
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0xa1001c5

    .line 1074
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/android/server/display/WifiDisplayController$21;

    invoke-direct {v3, p0}, Lcom/android/server/display/WifiDisplayController$21;-><init>(Lcom/android/server/display/WifiDisplayController;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0xa1001c6

    .line 1118
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/android/server/display/WifiDisplayController$20;

    invoke-direct {v3, p0}, Lcom/android/server/display/WifiDisplayController$20;-><init>(Lcom/android/server/display/WifiDisplayController;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    new-instance v2, Lcom/android/server/display/WifiDisplayController$19;

    invoke-direct {v2, p0}, Lcom/android/server/display/WifiDisplayController$19;-><init>(Lcom/android/server/display/WifiDisplayController;)V

    .line 1128
    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    new-instance v2, Lcom/android/server/display/WifiDisplayController$18;

    invoke-direct {v2, p0}, Lcom/android/server/display/WifiDisplayController$18;-><init>(Lcom/android/server/display/WifiDisplayController;)V

    .line 1136
    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 1145
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/display/WifiDisplayController;->mWifiDirectExcludeDialog:Landroid/app/AlertDialog;

    .line 1146
    iget-object v1, p0, Lcom/android/server/display/WifiDisplayController;->mWifiDirectExcludeDialog:Landroid/app/AlertDialog;

    invoke-direct {p0, v1}, Lcom/android/server/display/WifiDisplayController;->popupDialog(Landroid/app/AlertDialog;)V

    .line 1149
    :cond_57
    return-void
.end method

.method private putDualWifiSavedState(I)V
    .registers 4
    .param p1, "state"  # I

    .line 1559
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "dual_wifi_saved_state"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1561
    return-void
.end method

.method private putDualWifiState(I)V
    .registers 4
    .param p1, "state"  # I

    .line 1549
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "dual_wifi_enabled"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1551
    return-void
.end method

.method private readvertiseDisplay(Landroid/hardware/display/WifiDisplay;)V
    .registers 8
    .param p1, "display"  # Landroid/hardware/display/WifiDisplay;

    .line 1385
    iget-object v2, p0, Lcom/android/server/display/WifiDisplayController;->mAdvertisedDisplaySurface:Landroid/view/Surface;

    iget v3, p0, Lcom/android/server/display/WifiDisplayController;->mAdvertisedDisplayWidth:I

    iget v4, p0, Lcom/android/server/display/WifiDisplayController;->mAdvertisedDisplayHeight:I

    iget v5, p0, Lcom/android/server/display/WifiDisplayController;->mAdvertisedDisplayFlags:I

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/android/server/display/WifiDisplayController;->advertiseDisplay(Landroid/hardware/display/WifiDisplay;Landroid/view/Surface;III)V

    .line 1388
    return-void
.end method

.method private reportFeatureState()V
    .registers 4

    .line 448
    invoke-direct {p0}, Lcom/android/server/display/WifiDisplayController;->computeFeatureState()I

    move-result v0

    .line 449
    .local v0, "featureState":I
    iget-object v1, p0, Lcom/android/server/display/WifiDisplayController;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/server/display/WifiDisplayController$4;

    invoke-direct {v2, p0, v0}, Lcom/android/server/display/WifiDisplayController$4;-><init>(Lcom/android/server/display/WifiDisplayController;I)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 455
    return-void
.end method

.method private requestPeers()V
    .registers 4

    .line 544
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    invoke-direct {p0}, Lcom/android/server/display/WifiDisplayController;->getWifiP2pChannel()Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    move-result-object v1

    new-instance v2, Lcom/android/server/display/WifiDisplayController$7;

    invoke-direct {v2, p0}, Lcom/android/server/display/WifiDisplayController$7;-><init>(Lcom/android/server/display/WifiDisplayController;)V

    invoke-virtual {v0, v1, v2}, Landroid/net/wifi/p2p/WifiP2pManager;->requestPeers(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/WifiP2pManager$PeerListListener;)V

    .line 567
    return-void
.end method

.method private retryConnection()V
    .registers 3

    .line 666
    new-instance v0, Landroid/net/wifi/p2p/WifiP2pDevice;

    iget-object v1, p0, Lcom/android/server/display/WifiDisplayController;->mDesiredDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    invoke-direct {v0, v1}, Landroid/net/wifi/p2p/WifiP2pDevice;-><init>(Landroid/net/wifi/p2p/WifiP2pDevice;)V

    iput-object v0, p0, Lcom/android/server/display/WifiDisplayController;->mDesiredDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    .line 667
    invoke-direct {p0}, Lcom/android/server/display/WifiDisplayController;->updateConnection()V

    .line 668
    return-void
.end method

.method private showDialog(I)V
    .registers 2
    .param p1, "dialogID"  # I

    .line 1161
    invoke-direct {p0, p1}, Lcom/android/server/display/WifiDisplayController;->prepareDialog(I)V

    .line 1163
    return-void
.end method

.method private stopPeerDiscovery()V
    .registers 4

    .line 526
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    invoke-direct {p0}, Lcom/android/server/display/WifiDisplayController;->getWifiP2pChannel()Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    move-result-object v1

    new-instance v2, Lcom/android/server/display/WifiDisplayController$6;

    invoke-direct {v2, p0}, Lcom/android/server/display/WifiDisplayController$6;-><init>(Lcom/android/server/display/WifiDisplayController;)V

    invoke-virtual {v0, v1, v2}, Landroid/net/wifi/p2p/WifiP2pManager;->stopPeerDiscovery(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;)V

    .line 541
    return-void
.end method

.method private tryDiscoverPeers()V
    .registers 5

    .line 498
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    invoke-direct {p0}, Lcom/android/server/display/WifiDisplayController;->getWifiP2pChannel()Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    move-result-object v1

    new-instance v2, Lcom/android/server/display/WifiDisplayController$5;

    invoke-direct {v2, p0}, Lcom/android/server/display/WifiDisplayController$5;-><init>(Lcom/android/server/display/WifiDisplayController;)V

    invoke-virtual {v0, v1, v2}, Landroid/net/wifi/p2p/WifiP2pManager;->discoverPeers(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;)V

    .line 522
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/display/WifiDisplayController;->mDiscoverPeers:Ljava/lang/Runnable;

    const-wide/16 v2, 0x2710

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 523
    return-void
.end method

.method private unadvertiseDisplay()V
    .registers 7

    .line 1381
    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/server/display/WifiDisplayController;->advertiseDisplay(Landroid/hardware/display/WifiDisplay;Landroid/view/Surface;III)V

    .line 1382
    return-void
.end method

.method private updateConnection()V
    .registers 17

    .line 678
    move-object/from16 v6, p0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v0

    .line 679
    .local v0, "st":[Ljava/lang/StackTraceElement;
    const/4 v1, 0x2

    .local v1, "i":I
    :goto_b
    array-length v2, v0

    const/4 v3, 0x5

    const-string v7, "WifiDisplayController"

    if-ge v1, v2, :cond_1f

    if-ge v1, v3, :cond_1f

    .line 680
    aget-object v2, v0, v1

    invoke-virtual {v2}, Ljava/lang/StackTraceElement;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v7, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 679
    add-int/lit8 v1, v1, 0x1

    goto :goto_b

    .line 682
    .end local v1  # "i":I
    :cond_1f
    invoke-direct/range {p0 .. p0}, Lcom/android/server/display/WifiDisplayController;->dump()V

    .line 686
    .end local v0  # "st":[Ljava/lang/StackTraceElement;
    invoke-direct/range {p0 .. p0}, Lcom/android/server/display/WifiDisplayController;->updateScanState()V

    .line 690
    iget-object v0, v6, Lcom/android/server/display/WifiDisplayController;->mRemoteDisplay:Landroid/media/RemoteDisplay;

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-nez v0, :cond_2f

    iget-object v0, v6, Lcom/android/server/display/WifiDisplayController;->mExtRemoteDisplay:Ljava/lang/Object;

    if-eqz v0, :cond_35

    :cond_2f
    iget-object v0, v6, Lcom/android/server/display/WifiDisplayController;->mConnectedDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    iget-object v4, v6, Lcom/android/server/display/WifiDisplayController;->mDesiredDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    if-ne v0, v4, :cond_3d

    :cond_35
    iget-object v0, v6, Lcom/android/server/display/WifiDisplayController;->mRemoteDisplayInterface:Ljava/lang/String;

    if-eqz v0, :cond_79

    iget-object v0, v6, Lcom/android/server/display/WifiDisplayController;->mConnectedDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    if-nez v0, :cond_79

    .line 693
    :cond_3d
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Stopped listening for RTSP connection on "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v6, Lcom/android/server/display/WifiDisplayController;->mRemoteDisplayInterface:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 696
    iget-object v0, v6, Lcom/android/server/display/WifiDisplayController;->mRemoteDisplay:Landroid/media/RemoteDisplay;

    if-eqz v0, :cond_5b

    .line 697
    invoke-virtual {v0}, Landroid/media/RemoteDisplay;->dispose()V

    goto :goto_62

    .line 698
    :cond_5b
    iget-object v0, v6, Lcom/android/server/display/WifiDisplayController;->mExtRemoteDisplay:Ljava/lang/Object;

    if-eqz v0, :cond_62

    .line 699
    invoke-static {v0}, Lcom/android/server/display/ExtendedRemoteDisplayHelper;->dispose(Ljava/lang/Object;)V

    .line 703
    :cond_62
    :goto_62
    iput-boolean v2, v6, Lcom/android/server/display/WifiDisplayController;->mIsConnectedOtherP2p:Z

    .line 705
    iput-object v1, v6, Lcom/android/server/display/WifiDisplayController;->mExtRemoteDisplay:Ljava/lang/Object;

    .line 706
    iput-object v1, v6, Lcom/android/server/display/WifiDisplayController;->mRemoteDisplay:Landroid/media/RemoteDisplay;

    .line 707
    iput-object v1, v6, Lcom/android/server/display/WifiDisplayController;->mRemoteDisplayInterface:Ljava/lang/String;

    .line 708
    iget-object v0, v6, Lcom/android/server/display/WifiDisplayController;->mHandler:Landroid/os/Handler;

    iget-object v4, v6, Lcom/android/server/display/WifiDisplayController;->mRtspTimeout:Ljava/lang/Runnable;

    invoke-virtual {v0, v4}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 710
    iget-object v0, v6, Lcom/android/server/display/WifiDisplayController;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    invoke-virtual {v0, v2}, Landroid/net/wifi/p2p/WifiP2pManager;->setMiracastMode(I)V

    .line 711
    invoke-direct/range {p0 .. p0}, Lcom/android/server/display/WifiDisplayController;->unadvertiseDisplay()V

    .line 717
    :cond_79
    iget-boolean v0, v6, Lcom/android/server/display/WifiDisplayController;->mRemoteDisplayConnected:Z

    if-nez v0, :cond_2f5

    iget-object v0, v6, Lcom/android/server/display/WifiDisplayController;->mDisconnectingDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    if-eqz v0, :cond_83

    goto/16 :goto_2f5

    .line 720
    :cond_83
    iget-object v0, v6, Lcom/android/server/display/WifiDisplayController;->mConnectedDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    const/4 v4, 0x1

    if-eqz v0, :cond_ef

    iget-object v5, v6, Lcom/android/server/display/WifiDisplayController;->mDesiredDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    if-eq v0, v5, :cond_ef

    .line 721
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Disconnecting from Wifi display: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v6, Lcom/android/server/display/WifiDisplayController;->mConnectedDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    iget-object v3, v3, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceName:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 722
    iget-object v0, v6, Lcom/android/server/display/WifiDisplayController;->mConnectedDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    iput-object v0, v6, Lcom/android/server/display/WifiDisplayController;->mDisconnectingDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    .line 723
    iput-object v1, v6, Lcom/android/server/display/WifiDisplayController;->mConnectedDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    .line 724
    iput-object v1, v6, Lcom/android/server/display/WifiDisplayController;->mConnectedDeviceGroupInfo:Landroid/net/wifi/p2p/WifiP2pGroup;

    .line 726
    invoke-direct/range {p0 .. p0}, Lcom/android/server/display/WifiDisplayController;->unadvertiseDisplay()V

    .line 728
    invoke-direct/range {p0 .. p0}, Lcom/android/server/display/WifiDisplayController;->getDualWifiSavedState()I

    move-result v0

    if-ne v0, v4, :cond_c6

    .line 729
    const-string v0, "before stop wfd, need to enable dual wifi"

    invoke-static {v7, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 730
    invoke-direct/range {p0 .. p0}, Lcom/android/server/display/WifiDisplayController;->getDualWifiState()I

    move-result v0

    if-nez v0, :cond_c3

    .line 731
    invoke-direct {v6, v4}, Lcom/android/server/display/WifiDisplayController;->putDualWifiState(I)V

    .line 733
    :cond_c3
    invoke-direct {v6, v2}, Lcom/android/server/display/WifiDisplayController;->putDualWifiSavedState(I)V

    .line 737
    :cond_c6
    iget-object v0, v6, Lcom/android/server/display/WifiDisplayController;->mDisconnectingDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    .line 738
    .local v0, "oldDevice":Landroid/net/wifi/p2p/WifiP2pDevice;
    iget-object v2, v6, Lcom/android/server/display/WifiDisplayController;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    invoke-direct/range {p0 .. p0}, Lcom/android/server/display/WifiDisplayController;->getWifiP2pChannel()Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    move-result-object v3

    new-instance v4, Lcom/android/server/display/WifiDisplayController$11;

    invoke-direct {v4, v6, v0}, Lcom/android/server/display/WifiDisplayController$11;-><init>(Lcom/android/server/display/WifiDisplayController;Landroid/net/wifi/p2p/WifiP2pDevice;)V

    invoke-virtual {v2, v3, v4}, Landroid/net/wifi/p2p/WifiP2pManager;->removeGroup(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;)V

    .line 760
    iget-object v2, v6, Lcom/android/server/display/WifiDisplayController;->mConnectedDeviceGroup:Landroid/net/wifi/p2p/WifiP2pGroup;

    if-eqz v2, :cond_ee

    .line 761
    invoke-virtual {v2}, Landroid/net/wifi/p2p/WifiP2pGroup;->getNetworkId()I

    move-result v2

    .line 762
    .local v2, "id":I
    iget-object v3, v6, Lcom/android/server/display/WifiDisplayController;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    invoke-direct/range {p0 .. p0}, Lcom/android/server/display/WifiDisplayController;->getWifiP2pChannel()Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    move-result-object v4

    new-instance v5, Lcom/android/server/display/WifiDisplayController$12;

    invoke-direct {v5, v6, v2}, Lcom/android/server/display/WifiDisplayController$12;-><init>(Lcom/android/server/display/WifiDisplayController;I)V

    invoke-virtual {v3, v4, v2, v5}, Landroid/net/wifi/p2p/WifiP2pManager;->deletePersistentGroup(Landroid/net/wifi/p2p/WifiP2pManager$Channel;ILandroid/net/wifi/p2p/WifiP2pManager$ActionListener;)V

    .line 774
    iput-object v1, v6, Lcom/android/server/display/WifiDisplayController;->mConnectedDeviceGroup:Landroid/net/wifi/p2p/WifiP2pGroup;

    .line 777
    .end local v2  # "id":I
    :cond_ee
    return-void

    .line 782
    .end local v0  # "oldDevice":Landroid/net/wifi/p2p/WifiP2pDevice;
    :cond_ef
    iget-object v0, v6, Lcom/android/server/display/WifiDisplayController;->mCancelingDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    if-eqz v0, :cond_f4

    .line 783
    return-void

    .line 785
    :cond_f4
    iget-object v0, v6, Lcom/android/server/display/WifiDisplayController;->mConnectingDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    if-eqz v0, :cond_135

    iget-object v5, v6, Lcom/android/server/display/WifiDisplayController;->mDesiredDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    if-eq v0, v5, :cond_135

    .line 786
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Canceling connection to Wifi display: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v6, Lcom/android/server/display/WifiDisplayController;->mConnectingDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    iget-object v2, v2, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 787
    iget-object v0, v6, Lcom/android/server/display/WifiDisplayController;->mConnectingDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    iput-object v0, v6, Lcom/android/server/display/WifiDisplayController;->mCancelingDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    .line 788
    iput-object v1, v6, Lcom/android/server/display/WifiDisplayController;->mConnectingDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    .line 790
    invoke-direct/range {p0 .. p0}, Lcom/android/server/display/WifiDisplayController;->unadvertiseDisplay()V

    .line 791
    iget-object v0, v6, Lcom/android/server/display/WifiDisplayController;->mHandler:Landroid/os/Handler;

    iget-object v1, v6, Lcom/android/server/display/WifiDisplayController;->mConnectionTimeout:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 793
    iget-object v0, v6, Lcom/android/server/display/WifiDisplayController;->mCancelingDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    .line 794
    .restart local v0  # "oldDevice":Landroid/net/wifi/p2p/WifiP2pDevice;
    iget-object v1, v6, Lcom/android/server/display/WifiDisplayController;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    invoke-direct/range {p0 .. p0}, Lcom/android/server/display/WifiDisplayController;->getWifiP2pChannel()Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    move-result-object v2

    new-instance v3, Lcom/android/server/display/WifiDisplayController$13;

    invoke-direct {v3, v6, v0}, Lcom/android/server/display/WifiDisplayController$13;-><init>(Lcom/android/server/display/WifiDisplayController;Landroid/net/wifi/p2p/WifiP2pDevice;)V

    invoke-virtual {v1, v2, v3}, Landroid/net/wifi/p2p/WifiP2pManager;->cancelConnect(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;)V

    .line 815
    return-void

    .line 820
    .end local v0  # "oldDevice":Landroid/net/wifi/p2p/WifiP2pDevice;
    :cond_135
    iget-object v0, v6, Lcom/android/server/display/WifiDisplayController;->mDesiredDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    if-nez v0, :cond_14c

    .line 821
    iget-boolean v0, v6, Lcom/android/server/display/WifiDisplayController;->mWifiDisplayCertMode:Z

    if-eqz v0, :cond_148

    .line 822
    iget-object v0, v6, Lcom/android/server/display/WifiDisplayController;->mListener:Lcom/android/server/display/WifiDisplayController$Listener;

    iget-object v1, v6, Lcom/android/server/display/WifiDisplayController;->mConnectedDeviceGroupInfo:Landroid/net/wifi/p2p/WifiP2pGroup;

    invoke-direct {v6, v1, v2}, Lcom/android/server/display/WifiDisplayController;->getSessionInfo(Landroid/net/wifi/p2p/WifiP2pGroup;I)Landroid/hardware/display/WifiDisplaySessionInfo;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/server/display/WifiDisplayController$Listener;->onDisplaySessionInfo(Landroid/hardware/display/WifiDisplaySessionInfo;)V

    .line 824
    :cond_148
    invoke-direct/range {p0 .. p0}, Lcom/android/server/display/WifiDisplayController;->unadvertiseDisplay()V

    .line 825
    return-void

    .line 830
    :cond_14c
    iget-object v8, v6, Lcom/android/server/display/WifiDisplayController;->mDesiredDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    .line 831
    .local v8, "oldDevice":Landroid/net/wifi/p2p/WifiP2pDevice;
    new-instance v0, Lcom/android/server/display/WifiDisplayController$14;

    invoke-direct {v0, v6, v8}, Lcom/android/server/display/WifiDisplayController$14;-><init>(Lcom/android/server/display/WifiDisplayController;Landroid/net/wifi/p2p/WifiP2pDevice;)V

    move-object v9, v0

    .line 873
    .local v9, "listener":Landroid/media/RemoteDisplay$Listener;
    const-string/jumbo v0, "persist.vendor.setWFDInfo.R2"

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v10

    .line 874
    .local v10, "WFDR2Info":I
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "WFDR2info is: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 879
    const/4 v0, 0x2

    if-eq v10, v0, :cond_175

    const/4 v1, 0x3

    if-ne v10, v1, :cond_187

    .line 880
    :cond_175
    iget-object v1, v6, Lcom/android/server/display/WifiDisplayController;->mThisDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    iget-object v1, v1, Landroid/net/wifi/p2p/WifiP2pDevice;->wfdInfo:Landroid/net/wifi/p2p/WifiP2pWfdInfo;

    .line 881
    .local v1, "wfdInfo":Landroid/net/wifi/p2p/WifiP2pWfdInfo;
    iget-object v5, v6, Lcom/android/server/display/WifiDisplayController;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    invoke-direct/range {p0 .. p0}, Lcom/android/server/display/WifiDisplayController;->getWifiP2pChannel()Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    move-result-object v11

    new-instance v12, Lcom/android/server/display/WifiDisplayController$15;

    invoke-direct {v12, v6}, Lcom/android/server/display/WifiDisplayController$15;-><init>(Lcom/android/server/display/WifiDisplayController;)V

    invoke-virtual {v5, v11, v1, v12}, Landroid/net/wifi/p2p/WifiP2pManager;->setWFDR2Info(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/WifiP2pWfdInfo;Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;)V

    .line 898
    .end local v1  # "wfdInfo":Landroid/net/wifi/p2p/WifiP2pWfdInfo;
    :cond_187
    iget-object v1, v6, Lcom/android/server/display/WifiDisplayController;->mConnectedDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    const-string v11, " from Wifi display: "

    const-string v12, "Listening for RTSP connection on "

    if-nez v1, :cond_260

    iget-object v1, v6, Lcom/android/server/display/WifiDisplayController;->mConnectingDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    if-nez v1, :cond_260

    .line 899
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Connecting to Wifi display: "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v6, Lcom/android/server/display/WifiDisplayController;->mDesiredDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    iget-object v5, v5, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceName:Ljava/lang/String;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v7, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 901
    invoke-direct/range {p0 .. p0}, Lcom/android/server/display/WifiDisplayController;->getDualWifiState()I

    move-result v1

    if-ne v1, v4, :cond_1bc

    .line 902
    const-string v1, "before start wfd, need to disable dual wifi"

    invoke-static {v7, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 903
    invoke-direct {v6, v2}, Lcom/android/server/display/WifiDisplayController;->putDualWifiState(I)V

    .line 904
    invoke-direct {v6, v4}, Lcom/android/server/display/WifiDisplayController;->putDualWifiSavedState(I)V

    .line 908
    :cond_1bc
    iget-object v1, v6, Lcom/android/server/display/WifiDisplayController;->mDesiredDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    iput-object v1, v6, Lcom/android/server/display/WifiDisplayController;->mConnectingDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    .line 909
    new-instance v1, Landroid/net/wifi/p2p/WifiP2pConfig;

    invoke-direct {v1}, Landroid/net/wifi/p2p/WifiP2pConfig;-><init>()V

    move-object v13, v1

    .line 910
    .local v13, "config":Landroid/net/wifi/p2p/WifiP2pConfig;
    new-instance v1, Landroid/net/wifi/WpsInfo;

    invoke-direct {v1}, Landroid/net/wifi/WpsInfo;-><init>()V

    move-object v14, v1

    .line 911
    .local v14, "wps":Landroid/net/wifi/WpsInfo;
    iget v1, v6, Lcom/android/server/display/WifiDisplayController;->mWifiDisplayWpsConfig:I

    const/4 v5, 0x4

    if-eq v1, v5, :cond_1d4

    .line 912
    iput v1, v14, Landroid/net/wifi/WpsInfo;->setup:I

    goto :goto_1ec

    .line 913
    :cond_1d4
    iget-object v1, v6, Lcom/android/server/display/WifiDisplayController;->mConnectingDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    invoke-virtual {v1}, Landroid/net/wifi/p2p/WifiP2pDevice;->wpsPbcSupported()Z

    move-result v1

    if-eqz v1, :cond_1df

    .line 914
    iput v2, v14, Landroid/net/wifi/WpsInfo;->setup:I

    goto :goto_1ec

    .line 915
    :cond_1df
    iget-object v1, v6, Lcom/android/server/display/WifiDisplayController;->mConnectingDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    invoke-virtual {v1}, Landroid/net/wifi/p2p/WifiP2pDevice;->wpsDisplaySupported()Z

    move-result v1

    if-eqz v1, :cond_1ea

    .line 917
    iput v0, v14, Landroid/net/wifi/WpsInfo;->setup:I

    goto :goto_1ec

    .line 919
    :cond_1ea
    iput v4, v14, Landroid/net/wifi/WpsInfo;->setup:I

    .line 921
    :goto_1ec
    iput-object v14, v13, Landroid/net/wifi/p2p/WifiP2pConfig;->wps:Landroid/net/wifi/WpsInfo;

    .line 922
    iget-object v0, v6, Lcom/android/server/display/WifiDisplayController;->mConnectingDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    iget-object v0, v0, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceAddress:Ljava/lang/String;

    iput-object v0, v13, Landroid/net/wifi/p2p/WifiP2pConfig;->deviceAddress:Ljava/lang/String;

    .line 927
    iput v3, v13, Landroid/net/wifi/p2p/WifiP2pConfig;->groupOwnerIntent:I

    .line 930
    iget-object v0, v6, Lcom/android/server/display/WifiDisplayController;->mConnectingDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    invoke-static {v0}, Lcom/android/server/display/WifiDisplayController;->createWifiDisplay(Landroid/net/wifi/p2p/WifiP2pDevice;)Landroid/hardware/display/WifiDisplay;

    move-result-object v15

    .line 931
    .local v15, "display":Landroid/hardware/display/WifiDisplay;
    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object/from16 v0, p0

    move-object v1, v15

    invoke-direct/range {v0 .. v5}, Lcom/android/server/display/WifiDisplayController;->advertiseDisplay(Landroid/hardware/display/WifiDisplay;Landroid/view/Surface;III)V

    .line 933
    invoke-static {}, Lcom/android/server/display/ExtendedRemoteDisplayHelper;->isAvailable()Z

    move-result v0

    if-eqz v0, :cond_24f

    iget-object v0, v6, Lcom/android/server/display/WifiDisplayController;->mExtRemoteDisplay:Ljava/lang/Object;

    if-nez v0, :cond_24f

    .line 935
    iget-object v0, v6, Lcom/android/server/display/WifiDisplayController;->mDesiredDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    invoke-static {v0}, Lcom/android/server/display/WifiDisplayController;->getPortNumber(Landroid/net/wifi/p2p/WifiP2pDevice;)I

    move-result v0

    .line 938
    .local v0, "port":I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "255.255.255.255:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 939
    .local v1, "iface":Ljava/lang/String;
    iput-object v1, v6, Lcom/android/server/display/WifiDisplayController;->mRemoteDisplayInterface:Ljava/lang/String;

    .line 940
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v6, Lcom/android/server/display/WifiDisplayController;->mDesiredDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    iget-object v3, v3, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v7, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 942
    iget-object v2, v6, Lcom/android/server/display/WifiDisplayController;->mHandler:Landroid/os/Handler;

    iget-object v3, v6, Lcom/android/server/display/WifiDisplayController;->mContext:Landroid/content/Context;

    invoke-static {v1, v9, v2, v3}, Lcom/android/server/display/ExtendedRemoteDisplayHelper;->listen(Ljava/lang/String;Landroid/media/RemoteDisplay$Listener;Landroid/os/Handler;Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v2

    iput-object v2, v6, Lcom/android/server/display/WifiDisplayController;->mExtRemoteDisplay:Ljava/lang/Object;

    .line 946
    .end local v0  # "port":I
    .end local v1  # "iface":Ljava/lang/String;
    :cond_24f
    iget-object v0, v6, Lcom/android/server/display/WifiDisplayController;->mDesiredDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    .line 947
    .local v0, "newDevice":Landroid/net/wifi/p2p/WifiP2pDevice;
    iget-object v1, v6, Lcom/android/server/display/WifiDisplayController;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    invoke-direct/range {p0 .. p0}, Lcom/android/server/display/WifiDisplayController;->getWifiP2pChannel()Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    move-result-object v2

    new-instance v3, Lcom/android/server/display/WifiDisplayController$16;

    invoke-direct {v3, v6, v0}, Lcom/android/server/display/WifiDisplayController$16;-><init>(Lcom/android/server/display/WifiDisplayController;Landroid/net/wifi/p2p/WifiP2pDevice;)V

    invoke-virtual {v1, v2, v13, v3}, Landroid/net/wifi/p2p/WifiP2pManager;->connect(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/WifiP2pConfig;Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;)V

    .line 979
    return-void

    .line 983
    .end local v0  # "newDevice":Landroid/net/wifi/p2p/WifiP2pDevice;
    .end local v13  # "config":Landroid/net/wifi/p2p/WifiP2pConfig;
    .end local v14  # "wps":Landroid/net/wifi/WpsInfo;
    .end local v15  # "display":Landroid/hardware/display/WifiDisplay;
    :cond_260
    iget-object v0, v6, Lcom/android/server/display/WifiDisplayController;->mConnectedDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    if-eqz v0, :cond_2f4

    iget-object v0, v6, Lcom/android/server/display/WifiDisplayController;->mRemoteDisplay:Landroid/media/RemoteDisplay;

    if-nez v0, :cond_2f4

    .line 984
    iget-object v0, v6, Lcom/android/server/display/WifiDisplayController;->mConnectedDeviceGroupInfo:Landroid/net/wifi/p2p/WifiP2pGroup;

    invoke-static {v0}, Lcom/android/server/display/WifiDisplayController;->getInterfaceAddress(Landroid/net/wifi/p2p/WifiP2pGroup;)Ljava/net/Inet4Address;

    move-result-object v0

    .line 985
    .local v0, "addr":Ljava/net/Inet4Address;
    if-nez v0, :cond_28c

    .line 986
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to get local interface address for communicating with Wifi display: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v6, Lcom/android/server/display/WifiDisplayController;->mConnectedDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    iget-object v3, v3, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceName:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v7, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 988
    invoke-direct {v6, v2}, Lcom/android/server/display/WifiDisplayController;->handleConnectionFailure(Z)V

    .line 989
    return-void

    .line 992
    :cond_28c
    iget-object v1, v6, Lcom/android/server/display/WifiDisplayController;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    invoke-virtual {v1, v4}, Landroid/net/wifi/p2p/WifiP2pManager;->setMiracastMode(I)V

    .line 994
    iget-object v1, v6, Lcom/android/server/display/WifiDisplayController;->mConnectedDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    invoke-static {v1}, Lcom/android/server/display/WifiDisplayController;->getPortNumber(Landroid/net/wifi/p2p/WifiP2pDevice;)I

    move-result v1

    .line 995
    .local v1, "port":I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/net/Inet4Address;->getHostAddress()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 996
    .local v2, "iface":Ljava/lang/String;
    iput-object v2, v6, Lcom/android/server/display/WifiDisplayController;->mRemoteDisplayInterface:Ljava/lang/String;

    .line 998
    invoke-static {}, Lcom/android/server/display/ExtendedRemoteDisplayHelper;->isAvailable()Z

    move-result v3

    if-nez v3, :cond_2e1

    .line 999
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v6, Lcom/android/server/display/WifiDisplayController;->mConnectedDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    iget-object v4, v4, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v7, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1001
    iget-object v3, v6, Lcom/android/server/display/WifiDisplayController;->mHandler:Landroid/os/Handler;

    iget-object v4, v6, Lcom/android/server/display/WifiDisplayController;->mContext:Landroid/content/Context;

    .line 1002
    invoke-virtual {v4}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v4

    .line 1001
    invoke-static {v2, v9, v3, v4}, Landroid/media/RemoteDisplay;->listen(Ljava/lang/String;Landroid/media/RemoteDisplay$Listener;Landroid/os/Handler;Ljava/lang/String;)Landroid/media/RemoteDisplay;

    move-result-object v3

    iput-object v3, v6, Lcom/android/server/display/WifiDisplayController;->mRemoteDisplay:Landroid/media/RemoteDisplay;

    .line 1006
    :cond_2e1
    iget-boolean v3, v6, Lcom/android/server/display/WifiDisplayController;->mWifiDisplayCertMode:Z

    if-eqz v3, :cond_2e8

    .line 1007
    const/16 v3, 0x78

    goto :goto_2ea

    :cond_2e8
    const/16 v3, 0x1e

    .line 1009
    .local v3, "rtspTimeout":I
    :goto_2ea
    iget-object v4, v6, Lcom/android/server/display/WifiDisplayController;->mHandler:Landroid/os/Handler;

    iget-object v5, v6, Lcom/android/server/display/WifiDisplayController;->mRtspTimeout:Ljava/lang/Runnable;

    mul-int/lit16 v7, v3, 0x3e8

    int-to-long v11, v7

    invoke-virtual {v4, v5, v11, v12}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1011
    .end local v0  # "addr":Ljava/net/Inet4Address;
    .end local v1  # "port":I
    .end local v2  # "iface":Ljava/lang/String;
    .end local v3  # "rtspTimeout":I
    :cond_2f4
    return-void

    .line 718
    .end local v8  # "oldDevice":Landroid/net/wifi/p2p/WifiP2pDevice;
    .end local v9  # "listener":Landroid/media/RemoteDisplay$Listener;
    .end local v10  # "WFDR2Info":I
    :cond_2f5
    :goto_2f5
    return-void
.end method

.method private updateDesiredDevice(Landroid/net/wifi/p2p/WifiP2pDevice;)V
    .registers 5
    .param p1, "device"  # Landroid/net/wifi/p2p/WifiP2pDevice;

    .line 607
    iget-object v0, p1, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceAddress:Ljava/lang/String;

    .line 608
    .local v0, "address":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/server/display/WifiDisplayController;->mDesiredDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    if-eqz v1, :cond_45

    iget-object v1, v1, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceAddress:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_45

    .line 610
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateDesiredDevice: new information "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 611
    invoke-static {p1}, Lcom/android/server/display/WifiDisplayController;->describeWifiP2pDevice(Landroid/net/wifi/p2p/WifiP2pDevice;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 610
    const-string v2, "WifiDisplayController"

    invoke-static {v2, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 613
    iget-object v1, p0, Lcom/android/server/display/WifiDisplayController;->mDesiredDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    invoke-virtual {v1, p1}, Landroid/net/wifi/p2p/WifiP2pDevice;->update(Landroid/net/wifi/p2p/WifiP2pDevice;)V

    .line 614
    iget-object v1, p0, Lcom/android/server/display/WifiDisplayController;->mAdvertisedDisplay:Landroid/hardware/display/WifiDisplay;

    if-eqz v1, :cond_45

    .line 615
    invoke-virtual {v1}, Landroid/hardware/display/WifiDisplay;->getDeviceAddress()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_45

    .line 616
    iget-object v1, p0, Lcom/android/server/display/WifiDisplayController;->mDesiredDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    invoke-static {v1}, Lcom/android/server/display/WifiDisplayController;->createWifiDisplay(Landroid/net/wifi/p2p/WifiP2pDevice;)Landroid/hardware/display/WifiDisplay;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/server/display/WifiDisplayController;->readvertiseDisplay(Landroid/hardware/display/WifiDisplay;)V

    .line 619
    :cond_45
    return-void
.end method

.method private updateScanState()V
    .registers 4

    .line 470
    iget-boolean v0, p0, Lcom/android/server/display/WifiDisplayController;->mScanRequested:Z

    const-string v1, "WifiDisplayController"

    if-eqz v0, :cond_29

    iget-boolean v0, p0, Lcom/android/server/display/WifiDisplayController;->mWfdEnabled:Z

    if-eqz v0, :cond_29

    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController;->mDesiredDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    if-nez v0, :cond_29

    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController;->mConnectedDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    if-nez v0, :cond_29

    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController;->mDisconnectingDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    if-nez v0, :cond_29

    .line 473
    iget-boolean v0, p0, Lcom/android/server/display/WifiDisplayController;->mDiscoverPeersInProgress:Z

    if-nez v0, :cond_4a

    .line 474
    const-string v0, "Starting Wifi display scan."

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 475
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/display/WifiDisplayController;->mDiscoverPeersInProgress:Z

    .line 476
    invoke-direct {p0}, Lcom/android/server/display/WifiDisplayController;->handleScanStarted()V

    .line 477
    invoke-direct {p0}, Lcom/android/server/display/WifiDisplayController;->tryDiscoverPeers()V

    goto :goto_4a

    .line 480
    :cond_29
    iget-boolean v0, p0, Lcom/android/server/display/WifiDisplayController;->mDiscoverPeersInProgress:Z

    if-eqz v0, :cond_4a

    .line 482
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/server/display/WifiDisplayController;->mDiscoverPeers:Ljava/lang/Runnable;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 487
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController;->mDesiredDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    if-eqz v0, :cond_3c

    iget-object v2, p0, Lcom/android/server/display/WifiDisplayController;->mConnectedDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    if-ne v0, v2, :cond_4a

    .line 488
    :cond_3c
    const-string v0, "Stopping Wifi display scan."

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 489
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/display/WifiDisplayController;->mDiscoverPeersInProgress:Z

    .line 490
    invoke-direct {p0}, Lcom/android/server/display/WifiDisplayController;->stopPeerDiscovery()V

    .line 491
    invoke-direct {p0}, Lcom/android/server/display/WifiDisplayController;->handleScanFinished()V

    .line 495
    :cond_4a
    :goto_4a
    return-void
.end method

.method private updateSettings()V
    .registers 5

    .line 248
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 249
    .local v0, "resolver":Landroid/content/ContentResolver;
    const/4 v1, 0x0

    const-string/jumbo v2, "wifi_display_on"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_13

    move v2, v3

    goto :goto_14

    :cond_13
    move v2, v1

    :goto_14
    iput-boolean v2, p0, Lcom/android/server/display/WifiDisplayController;->mWifiDisplayOnSetting:Z

    .line 251
    const-string/jumbo v2, "wifi_display_certification_on"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_20

    move v1, v3

    :cond_20
    iput-boolean v1, p0, Lcom/android/server/display/WifiDisplayController;->mWifiDisplayCertMode:Z

    .line 254
    const/4 v1, 0x4

    iput v1, p0, Lcom/android/server/display/WifiDisplayController;->mWifiDisplayWpsConfig:I

    .line 255
    iget-boolean v2, p0, Lcom/android/server/display/WifiDisplayController;->mWifiDisplayCertMode:Z

    if-eqz v2, :cond_32

    .line 256
    const-string/jumbo v2, "wifi_display_wps_config"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/android/server/display/WifiDisplayController;->mWifiDisplayWpsConfig:I

    .line 262
    :cond_32
    invoke-direct {p0}, Lcom/android/server/display/WifiDisplayController;->enableWifiDisplay()V

    .line 264
    return-void
.end method

.method private updateWfdEnableState()V
    .registers 6

    .line 378
    iget-boolean v0, p0, Lcom/android/server/display/WifiDisplayController;->mWifiDisplayOnSetting:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_3b

    iget-boolean v0, p0, Lcom/android/server/display/WifiDisplayController;->mWifiP2pEnabled:Z

    if-eqz v0, :cond_3b

    .line 380
    iget-boolean v0, p0, Lcom/android/server/display/WifiDisplayController;->mWfdEnabled:Z

    if-nez v0, :cond_7b

    iget-boolean v0, p0, Lcom/android/server/display/WifiDisplayController;->mWfdEnabling:Z

    if-nez v0, :cond_7b

    .line 381
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/display/WifiDisplayController;->mWfdEnabling:Z

    .line 383
    new-instance v2, Landroid/net/wifi/p2p/WifiP2pWfdInfo;

    invoke-direct {v2}, Landroid/net/wifi/p2p/WifiP2pWfdInfo;-><init>()V

    .line 384
    .local v2, "wfdInfo":Landroid/net/wifi/p2p/WifiP2pWfdInfo;
    invoke-virtual {v2, v0}, Landroid/net/wifi/p2p/WifiP2pWfdInfo;->setWfdEnabled(Z)V

    .line 385
    invoke-virtual {v2, v1}, Landroid/net/wifi/p2p/WifiP2pWfdInfo;->setDeviceType(I)Z

    .line 386
    invoke-virtual {v2, v0}, Landroid/net/wifi/p2p/WifiP2pWfdInfo;->setSessionAvailable(Z)V

    .line 387
    const/16 v0, 0x1c44

    invoke-virtual {v2, v0}, Landroid/net/wifi/p2p/WifiP2pWfdInfo;->setControlPort(I)V

    .line 388
    const/16 v0, 0x32

    invoke-virtual {v2, v0}, Landroid/net/wifi/p2p/WifiP2pWfdInfo;->setMaxThroughput(I)V

    .line 389
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    invoke-direct {p0}, Lcom/android/server/display/WifiDisplayController;->getWifiP2pChannel()Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    move-result-object v1

    new-instance v3, Lcom/android/server/display/WifiDisplayController$2;

    invoke-direct {v3, p0}, Lcom/android/server/display/WifiDisplayController$2;-><init>(Lcom/android/server/display/WifiDisplayController;)V

    invoke-virtual {v0, v1, v2, v3}, Landroid/net/wifi/p2p/WifiP2pManager;->setWFDInfo(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/WifiP2pWfdInfo;Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;)V

    .line 411
    .end local v2  # "wfdInfo":Landroid/net/wifi/p2p/WifiP2pWfdInfo;
    goto :goto_7b

    .line 413
    :cond_3b
    iget-boolean v0, p0, Lcom/android/server/display/WifiDisplayController;->mWifiDisplayOnSetting:Z

    if-eqz v0, :cond_50

    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 414
    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getWifiState()I

    move-result v0

    const/4 v2, 0x2

    if-ne v0, v2, :cond_50

    .line 415
    const-string v0, "WifiDisplayController"

    const-string v1, "Wifi is enabling, do not update wfd state."

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 416
    return-void

    .line 420
    :cond_50
    iget-boolean v0, p0, Lcom/android/server/display/WifiDisplayController;->mWfdEnabled:Z

    if-nez v0, :cond_58

    iget-boolean v0, p0, Lcom/android/server/display/WifiDisplayController;->mWfdEnabling:Z

    if-eqz v0, :cond_6e

    .line 421
    :cond_58
    new-instance v0, Landroid/net/wifi/p2p/WifiP2pWfdInfo;

    invoke-direct {v0}, Landroid/net/wifi/p2p/WifiP2pWfdInfo;-><init>()V

    .line 422
    .local v0, "wfdInfo":Landroid/net/wifi/p2p/WifiP2pWfdInfo;
    invoke-virtual {v0, v1}, Landroid/net/wifi/p2p/WifiP2pWfdInfo;->setWfdEnabled(Z)V

    .line 423
    iget-object v2, p0, Lcom/android/server/display/WifiDisplayController;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    invoke-direct {p0}, Lcom/android/server/display/WifiDisplayController;->getWifiP2pChannel()Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    move-result-object v3

    new-instance v4, Lcom/android/server/display/WifiDisplayController$3;

    invoke-direct {v4, p0}, Lcom/android/server/display/WifiDisplayController$3;-><init>(Lcom/android/server/display/WifiDisplayController;)V

    invoke-virtual {v2, v3, v0, v4}, Landroid/net/wifi/p2p/WifiP2pManager;->setWFDInfo(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/WifiP2pWfdInfo;Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;)V

    .line 439
    .end local v0  # "wfdInfo":Landroid/net/wifi/p2p/WifiP2pWfdInfo;
    :cond_6e
    iput-boolean v1, p0, Lcom/android/server/display/WifiDisplayController;->mWfdEnabling:Z

    .line 440
    iput-boolean v1, p0, Lcom/android/server/display/WifiDisplayController;->mWfdEnabled:Z

    .line 441
    invoke-direct {p0}, Lcom/android/server/display/WifiDisplayController;->reportFeatureState()V

    .line 442
    invoke-direct {p0}, Lcom/android/server/display/WifiDisplayController;->updateScanState()V

    .line 443
    invoke-direct {p0}, Lcom/android/server/display/WifiDisplayController;->disconnect()V

    .line 445
    :cond_7b
    :goto_7b
    return-void
.end method


# virtual methods
.method protected cancelP2pConnect()V
    .registers 4

    .line 1015
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    iget-object v1, p0, Lcom/android/server/display/WifiDisplayController;->mWifiP2pChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    new-instance v2, Lcom/android/server/display/WifiDisplayController$17;

    invoke-direct {v2, p0}, Lcom/android/server/display/WifiDisplayController$17;-><init>(Lcom/android/server/display/WifiDisplayController;)V

    invoke-virtual {v0, v1, v2}, Landroid/net/wifi/p2p/WifiP2pManager;->cancelConnect(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;)V

    .line 1029
    return-void
.end method

.method public dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .registers 7
    .param p1, "pw"  # Ljava/io/PrintWriter;
    .param p2, "prefix"  # Ljava/lang/String;

    .line 268
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mWifiDisplayOnSetting="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/display/WifiDisplayController;->mWifiDisplayOnSetting:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 269
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mWifiP2pEnabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/display/WifiDisplayController;->mWifiP2pEnabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 270
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mWfdEnabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/display/WifiDisplayController;->mWfdEnabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 271
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mWfdEnabling="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/display/WifiDisplayController;->mWfdEnabling:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 272
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mNetworkInfo="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/display/WifiDisplayController;->mNetworkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 273
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mScanRequested="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/display/WifiDisplayController;->mScanRequested:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 274
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mDiscoverPeersInProgress="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/display/WifiDisplayController;->mDiscoverPeersInProgress:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 275
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mDesiredDevice="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/display/WifiDisplayController;->mDesiredDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    invoke-static {v1}, Lcom/android/server/display/WifiDisplayController;->describeWifiP2pDevice(Landroid/net/wifi/p2p/WifiP2pDevice;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 276
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mConnectingDisplay="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/display/WifiDisplayController;->mConnectingDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    invoke-static {v1}, Lcom/android/server/display/WifiDisplayController;->describeWifiP2pDevice(Landroid/net/wifi/p2p/WifiP2pDevice;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 277
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mDisconnectingDisplay="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/display/WifiDisplayController;->mDisconnectingDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    invoke-static {v1}, Lcom/android/server/display/WifiDisplayController;->describeWifiP2pDevice(Landroid/net/wifi/p2p/WifiP2pDevice;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 278
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mCancelingDisplay="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/display/WifiDisplayController;->mCancelingDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    invoke-static {v1}, Lcom/android/server/display/WifiDisplayController;->describeWifiP2pDevice(Landroid/net/wifi/p2p/WifiP2pDevice;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 279
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mConnectedDevice="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/display/WifiDisplayController;->mConnectedDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    invoke-static {v1}, Lcom/android/server/display/WifiDisplayController;->describeWifiP2pDevice(Landroid/net/wifi/p2p/WifiP2pDevice;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 280
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mConnectionRetriesLeft="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/WifiDisplayController;->mConnectionRetriesLeft:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 281
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mRemoteDisplay="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/display/WifiDisplayController;->mRemoteDisplay:Landroid/media/RemoteDisplay;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 282
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mRemoteDisplayInterface="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/display/WifiDisplayController;->mRemoteDisplayInterface:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 283
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mRemoteDisplayConnected="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/display/WifiDisplayController;->mRemoteDisplayConnected:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 284
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mAdvertisedDisplay="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/display/WifiDisplayController;->mAdvertisedDisplay:Landroid/hardware/display/WifiDisplay;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 285
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mAdvertisedDisplaySurface="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/display/WifiDisplayController;->mAdvertisedDisplaySurface:Landroid/view/Surface;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 286
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mAdvertisedDisplayWidth="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/WifiDisplayController;->mAdvertisedDisplayWidth:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 287
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mAdvertisedDisplayHeight="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/WifiDisplayController;->mAdvertisedDisplayHeight:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 288
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mAdvertisedDisplayFlags="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/WifiDisplayController;->mAdvertisedDisplayFlags:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 290
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mIsConnectedOtherP2p="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/display/WifiDisplayController;->mIsConnectedOtherP2p:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 292
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mAvailableWifiDisplayPeers: size="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/display/WifiDisplayController;->mAvailableWifiDisplayPeers:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 293
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController;->mAvailableWifiDisplayPeers:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_22f
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_254

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/p2p/WifiP2pDevice;

    .line 294
    .local v1, "device":Landroid/net/wifi/p2p/WifiP2pDevice;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Lcom/android/server/display/WifiDisplayController;->describeWifiP2pDevice(Landroid/net/wifi/p2p/WifiP2pDevice;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 295
    .end local v1  # "device":Landroid/net/wifi/p2p/WifiP2pDevice;
    goto :goto_22f

    .line 296
    :cond_254
    return-void
.end method

.method public requestConnect(Ljava/lang/String;)V
    .registers 11
    .param p1, "address"  # Ljava/lang/String;

    .line 342
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController;->mAvailableWifiDisplayPeers:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/p2p/WifiP2pDevice;

    .line 343
    .local v1, "device":Landroid/net/wifi/p2p/WifiP2pDevice;
    iget-object v2, v1, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceAddress:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3a

    .line 346
    iget-boolean v2, p0, Lcom/android/server/display/WifiDisplayController;->mIsConnectedOtherP2p:Z

    if-eqz v2, :cond_37

    .line 347
    const-string v0, "WifiDisplayController"

    const-string v2, "OtherP2P is connected! Show dialog!"

    invoke-static {v0, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 348
    invoke-static {v1}, Lcom/android/server/display/WifiDisplayController;->createWifiDisplay(Landroid/net/wifi/p2p/WifiP2pDevice;)Landroid/hardware/display/WifiDisplay;

    move-result-object v0

    .line 349
    .local v0, "display":Landroid/hardware/display/WifiDisplay;
    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v3, p0

    move-object v4, v0

    invoke-direct/range {v3 .. v8}, Lcom/android/server/display/WifiDisplayController;->advertiseDisplay(Landroid/hardware/display/WifiDisplay;Landroid/view/Surface;III)V

    .line 351
    const/4 v2, 0x1

    invoke-direct {p0, v2}, Lcom/android/server/display/WifiDisplayController;->showDialog(I)V

    .line 352
    return-void

    .line 356
    .end local v0  # "display":Landroid/hardware/display/WifiDisplay;
    :cond_37
    invoke-direct {p0, v1}, Lcom/android/server/display/WifiDisplayController;->connect(Landroid/net/wifi/p2p/WifiP2pDevice;)V

    .line 358
    .end local v1  # "device":Landroid/net/wifi/p2p/WifiP2pDevice;
    :cond_3a
    goto :goto_6

    .line 359
    :cond_3b
    return-void
.end method

.method public requestDisconnect()V
    .registers 1

    .line 374
    invoke-direct {p0}, Lcom/android/server/display/WifiDisplayController;->disconnect()V

    .line 375
    return-void
.end method

.method public requestPause()V
    .registers 2

    .line 362
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController;->mRemoteDisplay:Landroid/media/RemoteDisplay;

    if-eqz v0, :cond_7

    .line 363
    invoke-virtual {v0}, Landroid/media/RemoteDisplay;->pause()V

    .line 365
    :cond_7
    return-void
.end method

.method public requestResume()V
    .registers 2

    .line 368
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController;->mRemoteDisplay:Landroid/media/RemoteDisplay;

    if-eqz v0, :cond_7

    .line 369
    invoke-virtual {v0}, Landroid/media/RemoteDisplay;->resume()V

    .line 371
    :cond_7
    return-void
.end method

.method public requestStartScan()V
    .registers 2

    .line 328
    iget-boolean v0, p0, Lcom/android/server/display/WifiDisplayController;->mScanRequested:Z

    if-nez v0, :cond_a

    .line 329
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/display/WifiDisplayController;->mScanRequested:Z

    .line 330
    invoke-direct {p0}, Lcom/android/server/display/WifiDisplayController;->updateScanState()V

    .line 332
    :cond_a
    return-void
.end method

.method public requestStopScan()V
    .registers 2

    .line 335
    iget-boolean v0, p0, Lcom/android/server/display/WifiDisplayController;->mScanRequested:Z

    if-eqz v0, :cond_a

    .line 336
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/display/WifiDisplayController;->mScanRequested:Z

    .line 337
    invoke-direct {p0}, Lcom/android/server/display/WifiDisplayController;->updateScanState()V

    .line 339
    :cond_a
    return-void
.end method
