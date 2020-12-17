.class public Lcom/android/systemui/statusbar/policy/AccessPointControllerImpl;
.super Ljava/lang/Object;
.source "AccessPointControllerImpl.java"

# interfaces
.implements Lcom/android/systemui/statusbar/policy/NetworkController$AccessPointController;
.implements Lcom/android/settingslib/wifi/WifiTracker$WifiListener;


# static fields
.field private static final DEBUG:Z

.field private static final ICONS:[I


# instance fields
.field private final mCallbacks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/systemui/statusbar/policy/NetworkController$AccessPointController$AccessPointCallback;",
            ">;"
        }
    .end annotation
.end field

.field private final mConnectListener:Landroid/net/wifi/WifiManager$ActionListener;

.field private final mContext:Landroid/content/Context;

.field private mCurrentUser:I

.field private mRequestRescanAfterEnabled:Z

.field private final mUserManager:Landroid/os/UserManager;

.field private final mWifiTracker:Lcom/android/settingslib/wifi/WifiTracker;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    const/4 v0, 0x3

    const-string v1, "AccessPointController"

    .line 43
    invoke-static {v1, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    sput-boolean v1, Lcom/android/systemui/statusbar/policy/AccessPointControllerImpl;->DEBUG:Z

    new-array v0, v0, [I

    .line 228
    sget v1, Lcom/android/systemui/R$drawable;->ic_qs_wifi_signal_0:I

    const/4 v2, 0x0

    aput v1, v0, v2

    sget v1, Lcom/android/systemui/R$drawable;->ic_qs_wifi_signal_1:I

    const/4 v2, 0x1

    aput v1, v0, v2

    sget v1, Lcom/android/systemui/R$drawable;->ic_qs_wifi_signal_2:I

    const/4 v2, 0x2

    aput v1, v0, v2

    sput-object v0, Lcom/android/systemui/statusbar/policy/AccessPointControllerImpl;->ICONS:[I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 5

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/AccessPointControllerImpl;->mCallbacks:Ljava/util/ArrayList;

    .line 203
    new-instance v0, Lcom/android/systemui/statusbar/policy/AccessPointControllerImpl$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/policy/AccessPointControllerImpl$1;-><init>(Lcom/android/systemui/statusbar/policy/AccessPointControllerImpl;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/AccessPointControllerImpl;->mConnectListener:Landroid/net/wifi/WifiManager$ActionListener;

    .line 59
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/AccessPointControllerImpl;->mContext:Landroid/content/Context;

    .line 60
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/AccessPointControllerImpl;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "user"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/AccessPointControllerImpl;->mUserManager:Landroid/os/UserManager;

    .line 61
    new-instance v0, Lcom/android/settingslib/wifi/WifiTracker;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {v0, p1, p0, v1, v2}, Lcom/android/settingslib/wifi/WifiTracker;-><init>(Landroid/content/Context;Lcom/android/settingslib/wifi/WifiTracker$WifiListener;ZZ)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/AccessPointControllerImpl;->mWifiTracker:Lcom/android/settingslib/wifi/WifiTracker;

    .line 62
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result p1

    iput p1, p0, Lcom/android/systemui/statusbar/policy/AccessPointControllerImpl;->mCurrentUser:I

    return-void
.end method

.method static synthetic access$000()Z
    .registers 1

    .line 40
    sget-boolean v0, Lcom/android/systemui/statusbar/policy/AccessPointControllerImpl;->DEBUG:Z

    return v0
.end method

.method private fireAcccessPointsCallback(Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/settingslib/wifi/AccessPoint;",
            ">;)V"
        }
    .end annotation

    .line 175
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/AccessPointControllerImpl;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_6
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_16

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/policy/NetworkController$AccessPointController$AccessPointCallback;

    .line 176
    invoke-interface {v0, p1}, Lcom/android/systemui/statusbar/policy/NetworkController$AccessPointController$AccessPointCallback;->onAccessPointsChanged(Ljava/util/List;)V

    goto :goto_6

    :cond_16
    return-void
.end method

.method private fireSettingsIntentCallback(Landroid/content/Intent;)V
    .registers 3

    .line 169
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/AccessPointControllerImpl;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_6
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_16

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/policy/NetworkController$AccessPointController$AccessPointCallback;

    .line 170
    invoke-interface {v0, p1}, Lcom/android/systemui/statusbar/policy/NetworkController$AccessPointController$AccessPointCallback;->onSettingsActivityTriggered(Landroid/content/Intent;)V

    goto :goto_6

    :cond_16
    return-void
.end method

.method private rescanForAccessPoints()V
    .registers 3

    const-string v0, "AccessPointController"

    const-string v1, "re-scan!"

    .line 218
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 219
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/AccessPointControllerImpl;->mWifiTracker:Lcom/android/settingslib/wifi/WifiTracker;

    invoke-virtual {v0}, Lcom/android/settingslib/wifi/WifiTracker;->isWifiEnabled()Z

    move-result v0

    if-eqz v0, :cond_18

    .line 220
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/AccessPointControllerImpl;->mWifiTracker:Lcom/android/settingslib/wifi/WifiTracker;

    invoke-virtual {v0}, Lcom/android/settingslib/wifi/WifiTracker;->getAccessPoints()Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/policy/AccessPointControllerImpl;->fireAcccessPointsCallback(Ljava/util/List;)V

    :cond_18
    const/4 v0, 0x0

    .line 223
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/policy/AccessPointControllerImpl;->mRequestRescanAfterEnabled:Z

    return-void
.end method


# virtual methods
.method public addAccessPointCallback(Lcom/android/systemui/statusbar/policy/NetworkController$AccessPointController$AccessPointCallback;)V
    .registers 4

    if-eqz p1, :cond_38

    .line 82
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/AccessPointControllerImpl;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    goto :goto_38

    .line 83
    :cond_b
    sget-boolean v0, Lcom/android/systemui/statusbar/policy/AccessPointControllerImpl;->DEBUG:Z

    if-eqz v0, :cond_25

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "addCallback "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AccessPointController"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 84
    :cond_25
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/AccessPointControllerImpl;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 85
    iget-object p1, p0, Lcom/android/systemui/statusbar/policy/AccessPointControllerImpl;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_38

    .line 86
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/AccessPointControllerImpl;->mWifiTracker:Lcom/android/settingslib/wifi/WifiTracker;

    invoke-virtual {p0}, Lcom/android/settingslib/wifi/WifiTracker;->onStart()V

    :cond_38
    :goto_38
    return-void
.end method

.method public canConfigWifi()Z
    .registers 3

    .line 72
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/AccessPointControllerImpl;->mUserManager:Landroid/os/UserManager;

    new-instance v1, Landroid/os/UserHandle;

    iget p0, p0, Lcom/android/systemui/statusbar/policy/AccessPointControllerImpl;->mCurrentUser:I

    invoke-direct {v1, p0}, Landroid/os/UserHandle;-><init>(I)V

    const-string p0, "no_config_wifi"

    invoke-virtual {v0, p0, v1}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;Landroid/os/UserHandle;)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public connect(Lcom/android/settingslib/wifi/AccessPoint;)Z
    .registers 6

    const/4 v0, 0x0

    if-nez p1, :cond_4

    return v0

    .line 133
    :cond_4
    sget-boolean v1, Lcom/android/systemui/statusbar/policy/AccessPointControllerImpl;->DEBUG:Z

    const-string v2, "AccessPointController"

    if-eqz v1, :cond_24

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "connect networkId="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/settingslib/wifi/AccessPoint;->getConfig()Landroid/net/wifi/WifiConfiguration;

    move-result-object v3

    iget v3, v3, Landroid/net/wifi/WifiConfiguration;->networkId:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 135
    :cond_24
    invoke-virtual {p1}, Lcom/android/settingslib/wifi/AccessPoint;->isFreeWifi()Z

    move-result v1

    const/4 v3, 0x1

    if-eqz v1, :cond_74

    .line 136
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/AccessPointControllerImpl;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settingslib/wifi/WifiUtils;->isFreeWifiOnceConnected(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_38

    .line 137
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/AccessPointControllerImpl;->mWifiTracker:Lcom/android/settingslib/wifi/WifiTracker;

    invoke-virtual {v0, p1}, Lcom/android/settingslib/wifi/WifiTracker;->connect(Lcom/android/settingslib/wifi/AccessPoint;)V

    .line 139
    :cond_38
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "connect: free wifi ssid = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/settingslib/wifi/AccessPoint;->getSsidStr()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " bssid = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/settingslib/wifi/AccessPoint;->getBssid()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 140
    new-instance v0, Landroid/content/Intent;

    const-string v1, "meizu.intent.action.SETTINGS_FREE_WIFI_ACTIVITY"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 141
    invoke-virtual {p1}, Lcom/android/settingslib/wifi/AccessPoint;->getFreeWifiApInfo()Lcom/android/settingslib/wifi/FreeWifiApInfo;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/android/settingslib/wifi/FreeWifiApInfo;->getBundle(Lcom/android/settingslib/wifi/AccessPoint;)Landroid/os/Bundle;

    move-result-object p1

    const-string v1, "free_wifi_bundle"

    .line 142
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 143
    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/policy/AccessPointControllerImpl;->fireSettingsIntentCallback(Landroid/content/Intent;)V

    return v3

    .line 147
    :cond_74
    invoke-virtual {p1}, Lcom/android/settingslib/wifi/AccessPoint;->isSaved()Z

    move-result v1

    if-eqz v1, :cond_8a

    .line 150
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/AccessPointControllerImpl;->mWifiTracker:Lcom/android/settingslib/wifi/WifiTracker;

    invoke-virtual {v1}, Lcom/android/settingslib/wifi/WifiTracker;->getManager()Landroid/net/wifi/WifiManager;

    move-result-object v1

    invoke-virtual {p1}, Lcom/android/settingslib/wifi/AccessPoint;->getConfig()Landroid/net/wifi/WifiConfiguration;

    move-result-object p1

    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/AccessPointControllerImpl;->mConnectListener:Landroid/net/wifi/WifiManager$ActionListener;

    invoke-virtual {v1, p1, p0}, Landroid/net/wifi/WifiManager;->connect(Landroid/net/wifi/WifiConfiguration;Landroid/net/wifi/WifiManager$ActionListener;)V

    goto :goto_bc

    .line 154
    :cond_8a
    invoke-virtual {p1}, Lcom/android/settingslib/wifi/AccessPoint;->getSecurity()I

    move-result v1

    if-eqz v1, :cond_aa

    .line 155
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.meizu.net.wifi.PICK_WIFI_NETWORK"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 156
    invoke-virtual {p1}, Lcom/android/settingslib/wifi/AccessPoint;->getSsidStr()Ljava/lang/String;

    move-result-object p1

    const-string/jumbo v1, "wifi_start_connect_ssid"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/high16 p1, 0x10000000

    .line 157
    invoke-virtual {v0, p1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 158
    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/policy/AccessPointControllerImpl;->fireSettingsIntentCallback(Landroid/content/Intent;)V

    return v3

    .line 161
    :cond_aa
    invoke-virtual {p1}, Lcom/android/settingslib/wifi/AccessPoint;->generateOpenNetworkConfig()V

    .line 162
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/AccessPointControllerImpl;->mWifiTracker:Lcom/android/settingslib/wifi/WifiTracker;

    invoke-virtual {v1}, Lcom/android/settingslib/wifi/WifiTracker;->getManager()Landroid/net/wifi/WifiManager;

    move-result-object v1

    invoke-virtual {p1}, Lcom/android/settingslib/wifi/AccessPoint;->getConfig()Landroid/net/wifi/WifiConfiguration;

    move-result-object p1

    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/AccessPointControllerImpl;->mConnectListener:Landroid/net/wifi/WifiManager$ActionListener;

    invoke-virtual {v1, p1, p0}, Landroid/net/wifi/WifiManager;->connect(Landroid/net/wifi/WifiConfiguration;Landroid/net/wifi/WifiManager$ActionListener;)V

    :goto_bc
    return v0
.end method

.method public dump(Ljava/io/PrintWriter;)V
    .registers 2

    .line 181
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/AccessPointControllerImpl;->mWifiTracker:Lcom/android/settingslib/wifi/WifiTracker;

    invoke-virtual {p0, p1}, Lcom/android/settingslib/wifi/WifiTracker;->dump(Ljava/io/PrintWriter;)V

    return-void
.end method

.method protected finalize()V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 67
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 68
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/AccessPointControllerImpl;->mWifiTracker:Lcom/android/settingslib/wifi/WifiTracker;

    invoke-virtual {p0}, Lcom/android/settingslib/wifi/WifiTracker;->onDestroy()V

    return-void
.end method

.method public getIcon(Lcom/android/settingslib/wifi/AccessPoint;)I
    .registers 2

    .line 120
    invoke-virtual {p1}, Lcom/android/settingslib/wifi/AccessPoint;->getLevel()I

    move-result p0

    const/4 p1, 0x2

    if-lez p0, :cond_e

    if-gt p0, p1, :cond_e

    .line 122
    sget-object p1, Lcom/android/systemui/statusbar/policy/AccessPointControllerImpl;->ICONS:[I

    aget p0, p1, p0

    return p0

    :cond_e
    if-le p0, p1, :cond_15

    .line 124
    sget-object p0, Lcom/android/systemui/statusbar/policy/AccessPointControllerImpl;->ICONS:[I

    aget p0, p0, p1

    return p0

    .line 126
    :cond_15
    sget-object p0, Lcom/android/systemui/statusbar/policy/AccessPointControllerImpl;->ICONS:[I

    const/4 p1, 0x0

    aget p0, p0, p1

    return p0
.end method

.method public onAccessPointsChanged()V
    .registers 2

    .line 200
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/AccessPointControllerImpl;->mWifiTracker:Lcom/android/settingslib/wifi/WifiTracker;

    invoke-virtual {v0}, Lcom/android/settingslib/wifi/WifiTracker;->getAccessPoints()Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/policy/AccessPointControllerImpl;->fireAcccessPointsCallback(Ljava/util/List;)V

    return-void
.end method

.method public onConnectedChanged()V
    .registers 2

    .line 195
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/AccessPointControllerImpl;->mWifiTracker:Lcom/android/settingslib/wifi/WifiTracker;

    invoke-virtual {v0}, Lcom/android/settingslib/wifi/WifiTracker;->getAccessPoints()Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/policy/AccessPointControllerImpl;->fireAcccessPointsCallback(Ljava/util/List;)V

    return-void
.end method

.method public onUserSwitched(I)V
    .registers 2

    .line 77
    iput p1, p0, Lcom/android/systemui/statusbar/policy/AccessPointControllerImpl;->mCurrentUser:I

    return-void
.end method

.method public onWifiStateChanged(I)V
    .registers 3

    const/4 v0, 0x3

    if-ne v0, p1, :cond_a

    .line 187
    iget-boolean p1, p0, Lcom/android/systemui/statusbar/policy/AccessPointControllerImpl;->mRequestRescanAfterEnabled:Z

    if-eqz p1, :cond_a

    .line 188
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/AccessPointControllerImpl;->rescanForAccessPoints()V

    :cond_a
    return-void
.end method

.method public removeAccessPointCallback(Lcom/android/systemui/statusbar/policy/NetworkController$AccessPointController$AccessPointCallback;)V
    .registers 4

    if-nez p1, :cond_3

    return-void

    .line 93
    :cond_3
    sget-boolean v0, Lcom/android/systemui/statusbar/policy/AccessPointControllerImpl;->DEBUG:Z

    if-eqz v0, :cond_1d

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "removeCallback "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AccessPointController"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 94
    :cond_1d
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/AccessPointControllerImpl;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 95
    iget-object p1, p0, Lcom/android/systemui/statusbar/policy/AccessPointControllerImpl;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_2f

    .line 96
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/AccessPointControllerImpl;->mWifiTracker:Lcom/android/settingslib/wifi/WifiTracker;

    invoke-virtual {p0}, Lcom/android/settingslib/wifi/WifiTracker;->onStop()V

    :cond_2f
    return-void
.end method

.method public scanForAccessPoints()V
    .registers 3

    .line 103
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/AccessPointControllerImpl;->mWifiTracker:Lcom/android/settingslib/wifi/WifiTracker;

    invoke-virtual {v0}, Lcom/android/settingslib/wifi/WifiTracker;->isWifiEnabled()Z

    move-result v0

    if-nez v0, :cond_13

    const-string v0, "AccessPointController"

    const-string/jumbo v1, "wifi is not enabled yet, try again later"

    .line 104
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    .line 106
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/policy/AccessPointControllerImpl;->mRequestRescanAfterEnabled:Z

    .line 109
    :cond_13
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/AccessPointControllerImpl;->mWifiTracker:Lcom/android/settingslib/wifi/WifiTracker;

    invoke-virtual {v0}, Lcom/android/settingslib/wifi/WifiTracker;->getAccessPoints()Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/policy/AccessPointControllerImpl;->fireAcccessPointsCallback(Ljava/util/List;)V

    return-void
.end method
