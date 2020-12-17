.class public Lcom/android/server/net/LockdownVpnTracker;
.super Ljava/lang/Object;
.source "LockdownVpnTracker.java"


# static fields
.field private static final ACTION_LOCKDOWN_RESET:Ljava/lang/String; = "com.android.server.action.LOCKDOWN_RESET"

.field private static final MAX_ERROR_COUNT:I = 0x4

.field private static final TAG:Ljava/lang/String; = "LockdownVpnTracker"


# instance fields
.field private mAcceptedEgressIface:Ljava/lang/String;

.field private mAcceptedIface:Ljava/lang/String;

.field private mAcceptedSourceAddr:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/net/LinkAddress;",
            ">;"
        }
    .end annotation
.end field

.field private final mConfigIntent:Landroid/app/PendingIntent;

.field private final mConnService:Lcom/android/server/ConnectivityService;

.field private final mContext:Landroid/content/Context;

.field private mErrorCount:I

.field private final mHandler:Landroid/os/Handler;

.field private final mProfile:Lcom/android/internal/net/VpnProfile;

.field private final mResetIntent:Landroid/app/PendingIntent;

.field private mResetReceiver:Landroid/content/BroadcastReceiver;

.field private final mStateLock:Ljava/lang/Object;

.field private final mVpn:Lcom/android/server/connectivity/Vpn;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/server/ConnectivityService;Landroid/os/Handler;Lcom/android/server/connectivity/Vpn;Lcom/android/internal/net/VpnProfile;)V
    .registers 10
    .param p1, "context"  # Landroid/content/Context;
    .param p2, "connService"  # Lcom/android/server/ConnectivityService;
    .param p3, "handler"  # Landroid/os/Handler;
    .param p4, "vpn"  # Lcom/android/server/connectivity/Vpn;
    .param p5, "profile"  # Lcom/android/internal/net/VpnProfile;

    .line 94
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/net/LockdownVpnTracker;->mStateLock:Ljava/lang/Object;

    .line 109
    new-instance v0, Lcom/android/server/net/LockdownVpnTracker$1;

    invoke-direct {v0, p0}, Lcom/android/server/net/LockdownVpnTracker$1;-><init>(Lcom/android/server/net/LockdownVpnTracker;)V

    iput-object v0, p0, Lcom/android/server/net/LockdownVpnTracker;->mResetReceiver:Landroid/content/BroadcastReceiver;

    .line 95
    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    iput-object v0, p0, Lcom/android/server/net/LockdownVpnTracker;->mContext:Landroid/content/Context;

    .line 96
    invoke-static {p2}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/ConnectivityService;

    iput-object v0, p0, Lcom/android/server/net/LockdownVpnTracker;->mConnService:Lcom/android/server/ConnectivityService;

    .line 97
    invoke-static {p3}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Handler;

    iput-object v0, p0, Lcom/android/server/net/LockdownVpnTracker;->mHandler:Landroid/os/Handler;

    .line 98
    invoke-static {p4}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/connectivity/Vpn;

    iput-object v0, p0, Lcom/android/server/net/LockdownVpnTracker;->mVpn:Lcom/android/server/connectivity/Vpn;

    .line 99
    invoke-static {p5}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/net/VpnProfile;

    iput-object v0, p0, Lcom/android/server/net/LockdownVpnTracker;->mProfile:Lcom/android/internal/net/VpnProfile;

    .line 101
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.VPN_SETTINGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 102
    .local v0, "configIntent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/android/server/net/LockdownVpnTracker;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    invoke-static {v1, v2, v0, v2}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/net/LockdownVpnTracker;->mConfigIntent:Landroid/app/PendingIntent;

    .line 104
    new-instance v1, Landroid/content/Intent;

    const-string v3, "com.android.server.action.LOCKDOWN_RESET"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 105
    .local v1, "resetIntent":Landroid/content/Intent;
    const/high16 v3, 0x40000000  # 2.0f

    invoke-virtual {v1, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 106
    iget-object v3, p0, Lcom/android/server/net/LockdownVpnTracker;->mContext:Landroid/content/Context;

    invoke-static {v3, v2, v1, v2}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/net/LockdownVpnTracker;->mResetIntent:Landroid/app/PendingIntent;

    .line 107
    return-void
.end method

.method private handleStateChangedLocked()V
    .registers 17

    .line 122
    move-object/from16 v1, p0

    iget-object v0, v1, Lcom/android/server/net/LockdownVpnTracker;->mConnService:Lcom/android/server/ConnectivityService;

    invoke-virtual {v0}, Lcom/android/server/ConnectivityService;->getActiveNetworkInfoUnfiltered()Landroid/net/NetworkInfo;

    move-result-object v2

    .line 123
    .local v2, "egressInfo":Landroid/net/NetworkInfo;
    iget-object v0, v1, Lcom/android/server/net/LockdownVpnTracker;->mConnService:Lcom/android/server/ConnectivityService;

    invoke-virtual {v0}, Lcom/android/server/ConnectivityService;->getActiveLinkProperties()Landroid/net/LinkProperties;

    move-result-object v3

    .line 125
    .local v3, "egressProp":Landroid/net/LinkProperties;
    iget-object v0, v1, Lcom/android/server/net/LockdownVpnTracker;->mVpn:Lcom/android/server/connectivity/Vpn;

    invoke-virtual {v0}, Lcom/android/server/connectivity/Vpn;->getNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v4

    .line 126
    .local v4, "vpnInfo":Landroid/net/NetworkInfo;
    iget-object v0, v1, Lcom/android/server/net/LockdownVpnTracker;->mVpn:Lcom/android/server/connectivity/Vpn;

    invoke-virtual {v0}, Lcom/android/server/connectivity/Vpn;->getLegacyVpnConfig()Lcom/android/internal/net/VpnConfig;

    move-result-object v5

    .line 129
    .local v5, "vpnConfig":Lcom/android/internal/net/VpnConfig;
    const/4 v0, 0x0

    const/4 v6, 0x1

    if-eqz v2, :cond_2d

    sget-object v7, Landroid/net/NetworkInfo$State;->DISCONNECTED:Landroid/net/NetworkInfo$State;

    .line 130
    invoke-virtual {v2}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/net/NetworkInfo$State;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2b

    goto :goto_2d

    :cond_2b
    move v7, v0

    goto :goto_2e

    :cond_2d
    :goto_2d
    move v7, v6

    .line 131
    .local v7, "egressDisconnected":Z
    :goto_2e
    if-eqz v3, :cond_3c

    iget-object v8, v1, Lcom/android/server/net/LockdownVpnTracker;->mAcceptedEgressIface:Ljava/lang/String;

    .line 132
    invoke-virtual {v3}, Landroid/net/LinkProperties;->getInterfaceName()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_3d

    :cond_3c
    move v0, v6

    :cond_3d
    move v6, v0

    .line 134
    .local v6, "egressChanged":Z
    const/4 v8, 0x0

    if-nez v2, :cond_43

    .line 135
    move-object v0, v8

    goto :goto_4b

    :cond_43
    invoke-virtual {v2}, Landroid/net/NetworkInfo;->getType()I

    move-result v0

    invoke-static {v0}, Landroid/net/ConnectivityManager;->getNetworkTypeName(I)Ljava/lang/String;

    move-result-object v0

    :goto_4b
    move-object v9, v0

    .line 136
    .local v9, "egressTypeName":Ljava/lang/String;
    if-nez v3, :cond_50

    .line 137
    move-object v0, v8

    goto :goto_54

    :cond_50
    invoke-virtual {v3}, Landroid/net/LinkProperties;->getInterfaceName()Ljava/lang/String;

    move-result-object v0

    :goto_54
    move-object v10, v0

    .line 138
    .local v10, "egressIface":Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "handleStateChanged: egress="

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, " "

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v11, v1, Lcom/android/server/net/LockdownVpnTracker;->mAcceptedEgressIface:Ljava/lang/String;

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, "->"

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v11, "LockdownVpnTracker"

    invoke-static {v11, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 141
    if-nez v7, :cond_81

    if-eqz v6, :cond_88

    .line 142
    :cond_81
    iput-object v8, v1, Lcom/android/server/net/LockdownVpnTracker;->mAcceptedEgressIface:Ljava/lang/String;

    .line 143
    iget-object v0, v1, Lcom/android/server/net/LockdownVpnTracker;->mVpn:Lcom/android/server/connectivity/Vpn;

    invoke-virtual {v0}, Lcom/android/server/connectivity/Vpn;->stopLegacyVpnPrivileged()V

    .line 145
    :cond_88
    if-eqz v7, :cond_8e

    .line 146
    invoke-direct/range {p0 .. p0}, Lcom/android/server/net/LockdownVpnTracker;->hideNotification()V

    .line 147
    return-void

    .line 150
    :cond_8e
    invoke-virtual {v2}, Landroid/net/NetworkInfo;->getType()I

    move-result v12

    .line 151
    .local v12, "egressType":I
    invoke-virtual {v4}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v0

    sget-object v13, Landroid/net/NetworkInfo$DetailedState;->FAILED:Landroid/net/NetworkInfo$DetailedState;

    if-ne v0, v13, :cond_9d

    .line 152
    invoke-static {v12}, Lcom/android/server/EventLogTags;->writeLockdownVpnError(I)V

    .line 155
    :cond_9d
    iget v0, v1, Lcom/android/server/net/LockdownVpnTracker;->mErrorCount:I

    const/4 v13, 0x4

    const v14, 0x1040748

    const v15, 0x10808f0

    if-le v0, v13, :cond_ad

    .line 156
    invoke-direct {v1, v14, v15}, Lcom/android/server/net/LockdownVpnTracker;->showNotification(II)V

    goto/16 :goto_150

    .line 158
    :cond_ad
    invoke-virtual {v2}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_fa

    invoke-virtual {v4}, Landroid/net/NetworkInfo;->isConnectedOrConnecting()Z

    move-result v0

    if-nez v0, :cond_fa

    .line 159
    iget-object v0, v1, Lcom/android/server/net/LockdownVpnTracker;->mProfile:Lcom/android/internal/net/VpnProfile;

    invoke-virtual {v0}, Lcom/android/internal/net/VpnProfile;->isValidLockdownProfile()Z

    move-result v0

    if-eqz v0, :cond_f0

    .line 160
    const-string v0, "Active network connected; starting VPN"

    invoke-static {v11, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 161
    invoke-static {v12}, Lcom/android/server/EventLogTags;->writeLockdownVpnConnecting(I)V

    .line 162
    const v0, 0x1040746

    invoke-direct {v1, v0, v15}, Lcom/android/server/net/LockdownVpnTracker;->showNotification(II)V

    .line 164
    invoke-virtual {v3}, Landroid/net/LinkProperties;->getInterfaceName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/android/server/net/LockdownVpnTracker;->mAcceptedEgressIface:Ljava/lang/String;

    .line 168
    :try_start_d5
    iget-object v0, v1, Lcom/android/server/net/LockdownVpnTracker;->mVpn:Lcom/android/server/connectivity/Vpn;

    iget-object v13, v1, Lcom/android/server/net/LockdownVpnTracker;->mProfile:Lcom/android/internal/net/VpnProfile;

    invoke-static {}, Landroid/security/KeyStore;->getInstance()Landroid/security/KeyStore;

    move-result-object v14

    invoke-virtual {v0, v13, v14, v3}, Lcom/android/server/connectivity/Vpn;->startLegacyVpnPrivileged(Lcom/android/internal/net/VpnProfile;Landroid/security/KeyStore;Landroid/net/LinkProperties;)V
    :try_end_e0
    .catch Ljava/lang/IllegalStateException; {:try_start_d5 .. :try_end_e0} :catch_e1

    goto :goto_ef

    .line 169
    :catch_e1
    move-exception v0

    .line 170
    .local v0, "e":Ljava/lang/IllegalStateException;
    iput-object v8, v1, Lcom/android/server/net/LockdownVpnTracker;->mAcceptedEgressIface:Ljava/lang/String;

    .line 171
    const-string v8, "Failed to start VPN"

    invoke-static {v11, v8, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 172
    const v8, 0x1040748

    invoke-direct {v1, v8, v15}, Lcom/android/server/net/LockdownVpnTracker;->showNotification(II)V

    .line 173
    .end local v0  # "e":Ljava/lang/IllegalStateException;
    :goto_ef
    goto :goto_150

    .line 175
    :cond_f0
    move v8, v14

    const-string v0, "Invalid VPN profile; requires IP-based server and DNS"

    invoke-static {v11, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 176
    invoke-direct {v1, v8, v15}, Lcom/android/server/net/LockdownVpnTracker;->showNotification(II)V

    goto :goto_150

    .line 179
    :cond_fa
    invoke-virtual {v4}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_150

    if-eqz v5, :cond_150

    .line 180
    iget-object v0, v5, Lcom/android/internal/net/VpnConfig;->interfaze:Ljava/lang/String;

    .line 181
    .local v0, "iface":Ljava/lang/String;
    iget-object v8, v5, Lcom/android/internal/net/VpnConfig;->addresses:Ljava/util/List;

    .line 183
    .local v8, "sourceAddrs":Ljava/util/List;, "Ljava/util/List<Landroid/net/LinkAddress;>;"
    iget-object v13, v1, Lcom/android/server/net/LockdownVpnTracker;->mAcceptedIface:Ljava/lang/String;

    invoke-static {v0, v13}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v13

    if-eqz v13, :cond_117

    iget-object v13, v1, Lcom/android/server/net/LockdownVpnTracker;->mAcceptedSourceAddr:Ljava/util/List;

    .line 184
    invoke-interface {v8, v13}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_117

    .line 185
    return-void

    .line 188
    :cond_117
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "VPN connected using iface="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v14, ", sourceAddr="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 189
    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    .line 188
    invoke-static {v11, v13}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 190
    invoke-static {v12}, Lcom/android/server/EventLogTags;->writeLockdownVpnConnected(I)V

    .line 191
    const v11, 0x1040745

    const v13, 0x10808ef

    invoke-direct {v1, v11, v13}, Lcom/android/server/net/LockdownVpnTracker;->showNotification(II)V

    .line 193
    new-instance v11, Landroid/net/NetworkInfo;

    invoke-direct {v11, v2}, Landroid/net/NetworkInfo;-><init>(Landroid/net/NetworkInfo;)V

    .line 194
    .local v11, "clone":Landroid/net/NetworkInfo;
    invoke-virtual {v1, v11}, Lcom/android/server/net/LockdownVpnTracker;->augmentNetworkInfo(Landroid/net/NetworkInfo;)V

    .line 195
    iget-object v13, v1, Lcom/android/server/net/LockdownVpnTracker;->mConnService:Lcom/android/server/ConnectivityService;

    invoke-virtual {v13, v11}, Lcom/android/server/ConnectivityService;->sendConnectedBroadcast(Landroid/net/NetworkInfo;)V

    .line 197
    .end local v0  # "iface":Ljava/lang/String;
    .end local v8  # "sourceAddrs":Ljava/util/List;, "Ljava/util/List<Landroid/net/LinkAddress;>;"
    .end local v11  # "clone":Landroid/net/NetworkInfo;
    :cond_150
    :goto_150
    return-void
.end method

.method private hideNotification()V
    .registers 4

    .line 288
    iget-object v0, p0, Lcom/android/server/net/LockdownVpnTracker;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/app/NotificationManager;->from(Landroid/content/Context;)Landroid/app/NotificationManager;

    move-result-object v0

    const/4 v1, 0x0

    const/16 v2, 0x14

    invoke-virtual {v0, v1, v2}, Landroid/app/NotificationManager;->cancel(Ljava/lang/String;I)V

    .line 289
    return-void
.end method

.method private initLocked()V
    .registers 6

    .line 206
    const-string v0, "LockdownVpnTracker"

    const-string/jumbo v1, "initLocked()"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 208
    iget-object v0, p0, Lcom/android/server/net/LockdownVpnTracker;->mVpn:Lcom/android/server/connectivity/Vpn;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/server/connectivity/Vpn;->setEnableTeardown(Z)V

    .line 209
    iget-object v0, p0, Lcom/android/server/net/LockdownVpnTracker;->mVpn:Lcom/android/server/connectivity/Vpn;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/server/connectivity/Vpn;->setLockdown(Z)V

    .line 211
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "com.android.server.action.LOCKDOWN_RESET"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 212
    .local v0, "resetFilter":Landroid/content/IntentFilter;
    iget-object v1, p0, Lcom/android/server/net/LockdownVpnTracker;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/net/LockdownVpnTracker;->mResetReceiver:Landroid/content/BroadcastReceiver;

    iget-object v3, p0, Lcom/android/server/net/LockdownVpnTracker;->mHandler:Landroid/os/Handler;

    const-string v4, "android.permission.CONNECTIVITY_INTERNAL"

    invoke-virtual {v1, v2, v0, v4, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 214
    invoke-direct {p0}, Lcom/android/server/net/LockdownVpnTracker;->handleStateChangedLocked()V

    .line 215
    return-void
.end method

.method public static isEnabled()Z
    .registers 2

    .line 87
    invoke-static {}, Landroid/security/KeyStore;->getInstance()Landroid/security/KeyStore;

    move-result-object v0

    const-string v1, "LOCKDOWN_VPN"

    invoke-virtual {v0, v1}, Landroid/security/KeyStore;->contains(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private showNotification(II)V
    .registers 8
    .param p1, "titleRes"  # I
    .param p2, "iconRes"  # I

    .line 270
    new-instance v0, Landroid/app/Notification$Builder;

    iget-object v1, p0, Lcom/android/server/net/LockdownVpnTracker;->mContext:Landroid/content/Context;

    sget-object v2, Lcom/android/internal/notification/SystemNotificationChannels;->VPN:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 272
    const-wide/16 v1, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/Notification$Builder;->setWhen(J)Landroid/app/Notification$Builder;

    move-result-object v0

    .line 273
    invoke-virtual {v0, p2}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/net/LockdownVpnTracker;->mContext:Landroid/content/Context;

    .line 274
    invoke-virtual {v1, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/net/LockdownVpnTracker;->mContext:Landroid/content/Context;

    .line 275
    const v2, 0x1040744

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/net/LockdownVpnTracker;->mConfigIntent:Landroid/app/PendingIntent;

    .line 276
    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v0

    .line 277
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setOngoing(Z)Landroid/app/Notification$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/net/LockdownVpnTracker;->mContext:Landroid/content/Context;

    .line 278
    const v2, 0x1040622

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/net/LockdownVpnTracker;->mResetIntent:Landroid/app/PendingIntent;

    const v3, 0x10804ba

    invoke-virtual {v0, v3, v1, v2}, Landroid/app/Notification$Builder;->addAction(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/net/LockdownVpnTracker;->mContext:Landroid/content/Context;

    .line 280
    const v2, 0x106001c

    invoke-virtual {v1, v2}, Landroid/content/Context;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setColor(I)Landroid/app/Notification$Builder;

    move-result-object v0

    .line 283
    .local v0, "builder":Landroid/app/Notification$Builder;
    iget-object v1, p0, Lcom/android/server/net/LockdownVpnTracker;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/app/NotificationManager;->from(Landroid/content/Context;)Landroid/app/NotificationManager;

    move-result-object v1

    .line 284
    invoke-virtual {v0}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v2

    .line 283
    const/4 v3, 0x0

    const/16 v4, 0x14

    invoke-virtual {v1, v3, v4, v2}, Landroid/app/NotificationManager;->notify(Ljava/lang/String;ILandroid/app/Notification;)V

    .line 285
    return-void
.end method

.method private shutdownLocked()V
    .registers 3

    .line 224
    const-string v0, "LockdownVpnTracker"

    const-string/jumbo v1, "shutdownLocked()"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 226
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/net/LockdownVpnTracker;->mAcceptedEgressIface:Ljava/lang/String;

    .line 227
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/net/LockdownVpnTracker;->mErrorCount:I

    .line 229
    iget-object v1, p0, Lcom/android/server/net/LockdownVpnTracker;->mVpn:Lcom/android/server/connectivity/Vpn;

    invoke-virtual {v1}, Lcom/android/server/connectivity/Vpn;->stopLegacyVpnPrivileged()V

    .line 230
    iget-object v1, p0, Lcom/android/server/net/LockdownVpnTracker;->mVpn:Lcom/android/server/connectivity/Vpn;

    invoke-virtual {v1, v0}, Lcom/android/server/connectivity/Vpn;->setLockdown(Z)V

    .line 231
    invoke-direct {p0}, Lcom/android/server/net/LockdownVpnTracker;->hideNotification()V

    .line 233
    iget-object v0, p0, Lcom/android/server/net/LockdownVpnTracker;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/net/LockdownVpnTracker;->mResetReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 234
    iget-object v0, p0, Lcom/android/server/net/LockdownVpnTracker;->mVpn:Lcom/android/server/connectivity/Vpn;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/server/connectivity/Vpn;->setEnableTeardown(Z)V

    .line 235
    return-void
.end method


# virtual methods
.method public augmentNetworkInfo(Landroid/net/NetworkInfo;)V
    .registers 6
    .param p1, "info"  # Landroid/net/NetworkInfo;

    .line 263
    invoke-virtual {p1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_18

    .line 264
    iget-object v0, p0, Lcom/android/server/net/LockdownVpnTracker;->mVpn:Lcom/android/server/connectivity/Vpn;

    invoke-virtual {v0}, Lcom/android/server/connectivity/Vpn;->getNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    .line 265
    .local v0, "vpnInfo":Landroid/net/NetworkInfo;
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v1

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getReason()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {p1, v1, v2, v3}, Landroid/net/NetworkInfo;->setDetailedState(Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;Ljava/lang/String;)V

    .line 267
    .end local v0  # "vpnInfo":Landroid/net/NetworkInfo;
    :cond_18
    return-void
.end method

.method public init()V
    .registers 3

    .line 200
    iget-object v0, p0, Lcom/android/server/net/LockdownVpnTracker;->mStateLock:Ljava/lang/Object;

    monitor-enter v0

    .line 201
    :try_start_3
    invoke-direct {p0}, Lcom/android/server/net/LockdownVpnTracker;->initLocked()V

    .line 202
    monitor-exit v0

    .line 203
    return-void

    .line 202
    :catchall_8
    move-exception v1

    monitor-exit v0
    :try_end_a
    .catchall {:try_start_3 .. :try_end_a} :catchall_8

    throw v1
.end method

.method public onNetworkInfoChanged()V
    .registers 3

    .line 248
    iget-object v0, p0, Lcom/android/server/net/LockdownVpnTracker;->mStateLock:Ljava/lang/Object;

    monitor-enter v0

    .line 249
    :try_start_3
    invoke-direct {p0}, Lcom/android/server/net/LockdownVpnTracker;->handleStateChangedLocked()V

    .line 250
    monitor-exit v0

    .line 251
    return-void

    .line 250
    :catchall_8
    move-exception v1

    monitor-exit v0
    :try_end_a
    .catchall {:try_start_3 .. :try_end_a} :catchall_8

    throw v1
.end method

.method public onVpnStateChanged(Landroid/net/NetworkInfo;)V
    .registers 4
    .param p1, "info"  # Landroid/net/NetworkInfo;

    .line 254
    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v0

    sget-object v1, Landroid/net/NetworkInfo$DetailedState;->FAILED:Landroid/net/NetworkInfo$DetailedState;

    if-ne v0, v1, :cond_e

    .line 255
    iget v0, p0, Lcom/android/server/net/LockdownVpnTracker;->mErrorCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/server/net/LockdownVpnTracker;->mErrorCount:I

    .line 257
    :cond_e
    iget-object v0, p0, Lcom/android/server/net/LockdownVpnTracker;->mStateLock:Ljava/lang/Object;

    monitor-enter v0

    .line 258
    :try_start_11
    invoke-direct {p0}, Lcom/android/server/net/LockdownVpnTracker;->handleStateChangedLocked()V

    .line 259
    monitor-exit v0

    .line 260
    return-void

    .line 259
    :catchall_16
    move-exception v1

    monitor-exit v0
    :try_end_18
    .catchall {:try_start_11 .. :try_end_18} :catchall_16

    throw v1
.end method

.method public reset()V
    .registers 3

    .line 238
    const-string v0, "LockdownVpnTracker"

    const-string/jumbo v1, "reset()"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 239
    iget-object v0, p0, Lcom/android/server/net/LockdownVpnTracker;->mStateLock:Ljava/lang/Object;

    monitor-enter v0

    .line 241
    :try_start_b
    invoke-direct {p0}, Lcom/android/server/net/LockdownVpnTracker;->shutdownLocked()V

    .line 242
    invoke-direct {p0}, Lcom/android/server/net/LockdownVpnTracker;->initLocked()V

    .line 243
    invoke-direct {p0}, Lcom/android/server/net/LockdownVpnTracker;->handleStateChangedLocked()V

    .line 244
    monitor-exit v0

    .line 245
    return-void

    .line 244
    :catchall_16
    move-exception v1

    monitor-exit v0
    :try_end_18
    .catchall {:try_start_b .. :try_end_18} :catchall_16

    throw v1
.end method

.method public shutdown()V
    .registers 3

    .line 218
    iget-object v0, p0, Lcom/android/server/net/LockdownVpnTracker;->mStateLock:Ljava/lang/Object;

    monitor-enter v0

    .line 219
    :try_start_3
    invoke-direct {p0}, Lcom/android/server/net/LockdownVpnTracker;->shutdownLocked()V

    .line 220
    monitor-exit v0

    .line 221
    return-void

    .line 220
    :catchall_8
    move-exception v1

    monitor-exit v0
    :try_end_a
    .catchall {:try_start_3 .. :try_end_a} :catchall_8

    throw v1
.end method
