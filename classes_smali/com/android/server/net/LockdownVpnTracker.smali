.class public Lcom/android/server/net/LockdownVpnTracker;
.super Ljava/lang/Object;
.source "LockdownVpnTracker.java"


# static fields
.field private static final ACTION_LOCKDOWN_RESET:Ljava/lang/String; = "com.android.server.action.LOCKDOWN_RESET"

.field private static final MAX_ERROR_COUNT:I = 0x4

.field private static final ROOT_UID:I = 0x0

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

.field private final mNetService:Landroid/os/INetworkManagementService;

.field private final mProfile:Lcom/android/internal/net/VpnProfile;

.field private final mResetIntent:Landroid/app/PendingIntent;

.field private mResetReceiver:Landroid/content/BroadcastReceiver;

.field private final mStateLock:Ljava/lang/Object;

.field private final mVpn:Lcom/android/server/connectivity/Vpn;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/INetworkManagementService;Lcom/android/server/ConnectivityService;Lcom/android/server/connectivity/Vpn;Lcom/android/internal/net/VpnProfile;)V
    .registers 7

    .line 90
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/net/LockdownVpnTracker;->mStateLock:Ljava/lang/Object;

    .line 105
    new-instance v0, Lcom/android/server/net/LockdownVpnTracker$1;

    invoke-direct {v0, p0}, Lcom/android/server/net/LockdownVpnTracker$1;-><init>(Lcom/android/server/net/LockdownVpnTracker;)V

    iput-object v0, p0, Lcom/android/server/net/LockdownVpnTracker;->mResetReceiver:Landroid/content/BroadcastReceiver;

    .line 91
    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/Context;

    iput-object p1, p0, Lcom/android/server/net/LockdownVpnTracker;->mContext:Landroid/content/Context;

    .line 92
    invoke-static {p2}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/INetworkManagementService;

    iput-object p1, p0, Lcom/android/server/net/LockdownVpnTracker;->mNetService:Landroid/os/INetworkManagementService;

    .line 93
    invoke-static {p3}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/ConnectivityService;

    iput-object p1, p0, Lcom/android/server/net/LockdownVpnTracker;->mConnService:Lcom/android/server/ConnectivityService;

    .line 94
    invoke-static {p4}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/connectivity/Vpn;

    iput-object p1, p0, Lcom/android/server/net/LockdownVpnTracker;->mVpn:Lcom/android/server/connectivity/Vpn;

    .line 95
    invoke-static {p5}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/internal/net/VpnProfile;

    iput-object p1, p0, Lcom/android/server/net/LockdownVpnTracker;->mProfile:Lcom/android/internal/net/VpnProfile;

    .line 97
    new-instance p1, Landroid/content/Intent;

    const-string p2, "android.settings.VPN_SETTINGS"

    invoke-direct {p1, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 98
    iget-object p2, p0, Lcom/android/server/net/LockdownVpnTracker;->mContext:Landroid/content/Context;

    const/4 p3, 0x0

    invoke-static {p2, p3, p1, p3}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/net/LockdownVpnTracker;->mConfigIntent:Landroid/app/PendingIntent;

    .line 100
    new-instance p1, Landroid/content/Intent;

    const-string p2, "com.android.server.action.LOCKDOWN_RESET"

    invoke-direct {p1, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 101
    const/high16 p2, 0x40000000  # 2.0f

    invoke-virtual {p1, p2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 102
    iget-object p2, p0, Lcom/android/server/net/LockdownVpnTracker;->mContext:Landroid/content/Context;

    invoke-static {p2, p3, p1, p3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/net/LockdownVpnTracker;->mResetIntent:Landroid/app/PendingIntent;

    .line 103
    return-void
.end method

.method private handleStateChangedLocked()V
    .registers 12

    .line 118
    iget-object v0, p0, Lcom/android/server/net/LockdownVpnTracker;->mConnService:Lcom/android/server/ConnectivityService;

    invoke-virtual {v0}, Lcom/android/server/ConnectivityService;->getActiveNetworkInfoUnfiltered()Landroid/net/NetworkInfo;

    move-result-object v0

    .line 119
    iget-object v1, p0, Lcom/android/server/net/LockdownVpnTracker;->mConnService:Lcom/android/server/ConnectivityService;

    invoke-virtual {v1}, Lcom/android/server/ConnectivityService;->getActiveLinkProperties()Landroid/net/LinkProperties;

    move-result-object v1

    .line 121
    iget-object v2, p0, Lcom/android/server/net/LockdownVpnTracker;->mVpn:Lcom/android/server/connectivity/Vpn;

    invoke-virtual {v2}, Lcom/android/server/connectivity/Vpn;->getNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v2

    .line 122
    iget-object v3, p0, Lcom/android/server/net/LockdownVpnTracker;->mVpn:Lcom/android/server/connectivity/Vpn;

    invoke-virtual {v3}, Lcom/android/server/connectivity/Vpn;->getLegacyVpnConfig()Lcom/android/internal/net/VpnConfig;

    move-result-object v3

    .line 125
    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eqz v0, :cond_2b

    sget-object v6, Landroid/net/NetworkInfo$State;->DISCONNECTED:Landroid/net/NetworkInfo$State;

    .line 126
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/net/NetworkInfo$State;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_29

    goto :goto_2b

    :cond_29
    move v6, v4

    goto :goto_2c

    :cond_2b
    :goto_2b
    move v6, v5

    .line 127
    :goto_2c
    if-eqz v1, :cond_3a

    iget-object v7, p0, Lcom/android/server/net/LockdownVpnTracker;->mAcceptedEgressIface:Ljava/lang/String;

    .line 128
    invoke-virtual {v1}, Landroid/net/LinkProperties;->getInterfaceName()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_3b

    :cond_3a
    move v4, v5

    .line 130
    :cond_3b
    const/4 v5, 0x0

    if-nez v0, :cond_40

    .line 131
    move-object v7, v5

    goto :goto_48

    :cond_40
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v7

    invoke-static {v7}, Landroid/net/ConnectivityManager;->getNetworkTypeName(I)Ljava/lang/String;

    move-result-object v7

    .line 132
    :goto_48
    if-nez v1, :cond_4c

    .line 133
    move-object v8, v5

    goto :goto_50

    :cond_4c
    invoke-virtual {v1}, Landroid/net/LinkProperties;->getInterfaceName()Ljava/lang/String;

    move-result-object v8

    .line 134
    :goto_50
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "handleStateChanged: egress="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " "

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p0, Lcom/android/server/net/LockdownVpnTracker;->mAcceptedEgressIface:Ljava/lang/String;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "->"

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const-string v8, "LockdownVpnTracker"

    invoke-static {v8, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 137
    if-nez v6, :cond_7c

    if-eqz v4, :cond_83

    .line 138
    :cond_7c
    iput-object v5, p0, Lcom/android/server/net/LockdownVpnTracker;->mAcceptedEgressIface:Ljava/lang/String;

    .line 139
    iget-object v4, p0, Lcom/android/server/net/LockdownVpnTracker;->mVpn:Lcom/android/server/connectivity/Vpn;

    invoke-virtual {v4}, Lcom/android/server/connectivity/Vpn;->stopLegacyVpnPrivileged()V

    .line 141
    :cond_83
    if-eqz v6, :cond_89

    .line 142
    invoke-direct {p0}, Lcom/android/server/net/LockdownVpnTracker;->hideNotification()V

    .line 143
    return-void

    .line 146
    :cond_89
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v4

    .line 147
    invoke-virtual {v2}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v6

    sget-object v7, Landroid/net/NetworkInfo$DetailedState;->FAILED:Landroid/net/NetworkInfo$DetailedState;

    if-ne v6, v7, :cond_98

    .line 148
    invoke-static {v4}, Lcom/android/server/EventLogTags;->writeLockdownVpnError(I)V

    .line 151
    :cond_98
    iget v6, p0, Lcom/android/server/net/LockdownVpnTracker;->mErrorCount:I

    const/4 v7, 0x4

    const v9, 0x1040748

    const v10, 0x10808e1

    if-le v6, v7, :cond_a8

    .line 152
    invoke-direct {p0, v9, v10}, Lcom/android/server/net/LockdownVpnTracker;->showNotification(II)V

    goto/16 :goto_147

    .line 154
    :cond_a8
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v6

    if-eqz v6, :cond_f1

    invoke-virtual {v2}, Landroid/net/NetworkInfo;->isConnectedOrConnecting()Z

    move-result v6

    if-nez v6, :cond_f1

    .line 155
    iget-object v0, p0, Lcom/android/server/net/LockdownVpnTracker;->mProfile:Lcom/android/internal/net/VpnProfile;

    invoke-virtual {v0}, Lcom/android/internal/net/VpnProfile;->isValidLockdownProfile()Z

    move-result v0

    if-eqz v0, :cond_e8

    .line 156
    const-string v0, "Active network connected; starting VPN"

    invoke-static {v8, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 157
    invoke-static {v4}, Lcom/android/server/EventLogTags;->writeLockdownVpnConnecting(I)V

    .line 158
    const v0, 0x1040746

    invoke-direct {p0, v0, v10}, Lcom/android/server/net/LockdownVpnTracker;->showNotification(II)V

    .line 160
    invoke-virtual {v1}, Landroid/net/LinkProperties;->getInterfaceName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/net/LockdownVpnTracker;->mAcceptedEgressIface:Ljava/lang/String;

    .line 164
    :try_start_d0
    iget-object v0, p0, Lcom/android/server/net/LockdownVpnTracker;->mVpn:Lcom/android/server/connectivity/Vpn;

    iget-object v2, p0, Lcom/android/server/net/LockdownVpnTracker;->mProfile:Lcom/android/internal/net/VpnProfile;

    invoke-static {}, Landroid/security/KeyStore;->getInstance()Landroid/security/KeyStore;

    move-result-object v3

    invoke-virtual {v0, v2, v3, v1}, Lcom/android/server/connectivity/Vpn;->startLegacyVpnPrivileged(Lcom/android/internal/net/VpnProfile;Landroid/security/KeyStore;Landroid/net/LinkProperties;)V
    :try_end_db
    .catch Ljava/lang/IllegalStateException; {:try_start_d0 .. :try_end_db} :catch_dc

    goto :goto_e7

    .line 165
    :catch_dc
    move-exception v0

    .line 166
    iput-object v5, p0, Lcom/android/server/net/LockdownVpnTracker;->mAcceptedEgressIface:Ljava/lang/String;

    .line 167
    const-string v1, "Failed to start VPN"

    invoke-static {v8, v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 168
    invoke-direct {p0, v9, v10}, Lcom/android/server/net/LockdownVpnTracker;->showNotification(II)V

    .line 169
    :goto_e7
    goto :goto_147

    .line 171
    :cond_e8
    const-string v0, "Invalid VPN profile; requires IP-based server and DNS"

    invoke-static {v8, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 172
    invoke-direct {p0, v9, v10}, Lcom/android/server/net/LockdownVpnTracker;->showNotification(II)V

    goto :goto_147

    .line 175
    :cond_f1
    invoke-virtual {v2}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v1

    if-eqz v1, :cond_147

    if-eqz v3, :cond_147

    .line 176
    iget-object v1, v3, Lcom/android/internal/net/VpnConfig;->interfaze:Ljava/lang/String;

    .line 177
    iget-object v2, v3, Lcom/android/internal/net/VpnConfig;->addresses:Ljava/util/List;

    .line 179
    iget-object v3, p0, Lcom/android/server/net/LockdownVpnTracker;->mAcceptedIface:Ljava/lang/String;

    invoke-static {v1, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_10e

    iget-object v3, p0, Lcom/android/server/net/LockdownVpnTracker;->mAcceptedSourceAddr:Ljava/util/List;

    .line 180
    invoke-interface {v2, v3}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_10e

    .line 181
    return-void

    .line 184
    :cond_10e
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "VPN connected using iface="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", sourceAddr="

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 185
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 184
    invoke-static {v8, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 186
    invoke-static {v4}, Lcom/android/server/EventLogTags;->writeLockdownVpnConnected(I)V

    .line 187
    const v1, 0x1040745

    const v2, 0x10808e0

    invoke-direct {p0, v1, v2}, Lcom/android/server/net/LockdownVpnTracker;->showNotification(II)V

    .line 189
    new-instance v1, Landroid/net/NetworkInfo;

    invoke-direct {v1, v0}, Landroid/net/NetworkInfo;-><init>(Landroid/net/NetworkInfo;)V

    .line 190
    invoke-virtual {p0, v1}, Lcom/android/server/net/LockdownVpnTracker;->augmentNetworkInfo(Landroid/net/NetworkInfo;)V

    .line 191
    iget-object v0, p0, Lcom/android/server/net/LockdownVpnTracker;->mConnService:Lcom/android/server/ConnectivityService;

    invoke-virtual {v0, v1}, Lcom/android/server/ConnectivityService;->sendConnectedBroadcast(Landroid/net/NetworkInfo;)V

    .line 193
    :cond_147
    :goto_147
    return-void
.end method

.method private hideNotification()V
    .registers 4

    .line 284
    iget-object v0, p0, Lcom/android/server/net/LockdownVpnTracker;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/app/NotificationManager;->from(Landroid/content/Context;)Landroid/app/NotificationManager;

    move-result-object v0

    const/4 v1, 0x0

    const/16 v2, 0x14

    invoke-virtual {v0, v1, v2}, Landroid/app/NotificationManager;->cancel(Ljava/lang/String;I)V

    .line 285
    return-void
.end method

.method private initLocked()V
    .registers 6

    .line 202
    const-string v0, "LockdownVpnTracker"

    const-string v1, "initLocked()"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 204
    iget-object v0, p0, Lcom/android/server/net/LockdownVpnTracker;->mVpn:Lcom/android/server/connectivity/Vpn;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/server/connectivity/Vpn;->setEnableTeardown(Z)V

    .line 205
    iget-object v0, p0, Lcom/android/server/net/LockdownVpnTracker;->mVpn:Lcom/android/server/connectivity/Vpn;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/server/connectivity/Vpn;->setLockdown(Z)V

    .line 207
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "com.android.server.action.LOCKDOWN_RESET"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 208
    iget-object v1, p0, Lcom/android/server/net/LockdownVpnTracker;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/net/LockdownVpnTracker;->mResetReceiver:Landroid/content/BroadcastReceiver;

    const-string v3, "android.permission.CONNECTIVITY_INTERNAL"

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v0, v3, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 210
    invoke-direct {p0}, Lcom/android/server/net/LockdownVpnTracker;->handleStateChangedLocked()V

    .line 211
    return-void
.end method

.method public static isEnabled()Z
    .registers 2

    .line 86
    invoke-static {}, Landroid/security/KeyStore;->getInstance()Landroid/security/KeyStore;

    move-result-object v0

    const-string v1, "LOCKDOWN_VPN"

    invoke-virtual {v0, v1}, Landroid/security/KeyStore;->contains(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private showNotification(II)V
    .registers 6

    .line 266
    new-instance v0, Landroid/app/Notification$Builder;

    iget-object v1, p0, Lcom/android/server/net/LockdownVpnTracker;->mContext:Landroid/content/Context;

    sget-object v2, Lcom/android/internal/notification/SystemNotificationChannels;->VPN:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 268
    const-wide/16 v1, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/Notification$Builder;->setWhen(J)Landroid/app/Notification$Builder;

    move-result-object v0

    .line 269
    invoke-virtual {v0, p2}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object p2

    iget-object v0, p0, Lcom/android/server/net/LockdownVpnTracker;->mContext:Landroid/content/Context;

    .line 270
    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object p1

    iget-object p2, p0, Lcom/android/server/net/LockdownVpnTracker;->mContext:Landroid/content/Context;

    .line 271
    const v0, 0x1040744

    invoke-virtual {p2, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object p1

    iget-object p2, p0, Lcom/android/server/net/LockdownVpnTracker;->mConfigIntent:Landroid/app/PendingIntent;

    .line 272
    invoke-virtual {p1, p2}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object p1

    .line 273
    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Landroid/app/Notification$Builder;->setOngoing(Z)Landroid/app/Notification$Builder;

    move-result-object p1

    iget-object p2, p0, Lcom/android/server/net/LockdownVpnTracker;->mContext:Landroid/content/Context;

    .line 274
    const v0, 0x1040627

    invoke-virtual {p2, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    iget-object v0, p0, Lcom/android/server/net/LockdownVpnTracker;->mResetIntent:Landroid/app/PendingIntent;

    const v1, 0x10804bc

    invoke-virtual {p1, v1, p2, v0}, Landroid/app/Notification$Builder;->addAction(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object p1

    iget-object p2, p0, Lcom/android/server/net/LockdownVpnTracker;->mContext:Landroid/content/Context;

    .line 276
    const v0, 0x106001c

    invoke-virtual {p2, v0}, Landroid/content/Context;->getColor(I)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/app/Notification$Builder;->setColor(I)Landroid/app/Notification$Builder;

    move-result-object p1

    .line 279
    iget-object p2, p0, Lcom/android/server/net/LockdownVpnTracker;->mContext:Landroid/content/Context;

    invoke-static {p2}, Landroid/app/NotificationManager;->from(Landroid/content/Context;)Landroid/app/NotificationManager;

    move-result-object p2

    .line 280
    invoke-virtual {p1}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object p1

    .line 279
    const/4 v0, 0x0

    const/16 v1, 0x14

    invoke-virtual {p2, v0, v1, p1}, Landroid/app/NotificationManager;->notify(Ljava/lang/String;ILandroid/app/Notification;)V

    .line 281
    return-void
.end method

.method private shutdownLocked()V
    .registers 3

    .line 220
    const-string v0, "LockdownVpnTracker"

    const-string/jumbo v1, "shutdownLocked()"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 222
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/net/LockdownVpnTracker;->mAcceptedEgressIface:Ljava/lang/String;

    .line 223
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/net/LockdownVpnTracker;->mErrorCount:I

    .line 225
    iget-object v1, p0, Lcom/android/server/net/LockdownVpnTracker;->mVpn:Lcom/android/server/connectivity/Vpn;

    invoke-virtual {v1}, Lcom/android/server/connectivity/Vpn;->stopLegacyVpnPrivileged()V

    .line 226
    iget-object v1, p0, Lcom/android/server/net/LockdownVpnTracker;->mVpn:Lcom/android/server/connectivity/Vpn;

    invoke-virtual {v1, v0}, Lcom/android/server/connectivity/Vpn;->setLockdown(Z)V

    .line 227
    invoke-direct {p0}, Lcom/android/server/net/LockdownVpnTracker;->hideNotification()V

    .line 229
    iget-object v0, p0, Lcom/android/server/net/LockdownVpnTracker;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/net/LockdownVpnTracker;->mResetReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 230
    iget-object v0, p0, Lcom/android/server/net/LockdownVpnTracker;->mVpn:Lcom/android/server/connectivity/Vpn;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/server/connectivity/Vpn;->setEnableTeardown(Z)V

    .line 231
    return-void
.end method


# virtual methods
.method public augmentNetworkInfo(Landroid/net/NetworkInfo;)V
    .registers 5

    .line 259
    invoke-virtual {p1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_18

    .line 260
    iget-object v0, p0, Lcom/android/server/net/LockdownVpnTracker;->mVpn:Lcom/android/server/connectivity/Vpn;

    invoke-virtual {v0}, Lcom/android/server/connectivity/Vpn;->getNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    .line 261
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v1

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getReason()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v0, v2}, Landroid/net/NetworkInfo;->setDetailedState(Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;Ljava/lang/String;)V

    .line 263
    :cond_18
    return-void
.end method

.method public init()V
    .registers 3

    .line 196
    iget-object v0, p0, Lcom/android/server/net/LockdownVpnTracker;->mStateLock:Ljava/lang/Object;

    monitor-enter v0

    .line 197
    :try_start_3
    invoke-direct {p0}, Lcom/android/server/net/LockdownVpnTracker;->initLocked()V

    .line 198
    monitor-exit v0

    .line 199
    return-void

    .line 198
    :catchall_8
    move-exception v1

    monitor-exit v0
    :try_end_a
    .catchall {:try_start_3 .. :try_end_a} :catchall_8

    throw v1
.end method

.method public onNetworkInfoChanged()V
    .registers 3

    .line 244
    iget-object v0, p0, Lcom/android/server/net/LockdownVpnTracker;->mStateLock:Ljava/lang/Object;

    monitor-enter v0

    .line 245
    :try_start_3
    invoke-direct {p0}, Lcom/android/server/net/LockdownVpnTracker;->handleStateChangedLocked()V

    .line 246
    monitor-exit v0

    .line 247
    return-void

    .line 246
    :catchall_8
    move-exception v1

    monitor-exit v0
    :try_end_a
    .catchall {:try_start_3 .. :try_end_a} :catchall_8

    throw v1
.end method

.method public onVpnStateChanged(Landroid/net/NetworkInfo;)V
    .registers 3

    .line 250
    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object p1

    sget-object v0, Landroid/net/NetworkInfo$DetailedState;->FAILED:Landroid/net/NetworkInfo$DetailedState;

    if-ne p1, v0, :cond_e

    .line 251
    iget p1, p0, Lcom/android/server/net/LockdownVpnTracker;->mErrorCount:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/android/server/net/LockdownVpnTracker;->mErrorCount:I

    .line 253
    :cond_e
    iget-object p1, p0, Lcom/android/server/net/LockdownVpnTracker;->mStateLock:Ljava/lang/Object;

    monitor-enter p1

    .line 254
    :try_start_11
    invoke-direct {p0}, Lcom/android/server/net/LockdownVpnTracker;->handleStateChangedLocked()V

    .line 255
    monitor-exit p1

    .line 256
    return-void

    .line 255
    :catchall_16
    move-exception v0

    monitor-exit p1
    :try_end_18
    .catchall {:try_start_11 .. :try_end_18} :catchall_16

    throw v0
.end method

.method public reset()V
    .registers 3

    .line 234
    const-string v0, "LockdownVpnTracker"

    const-string/jumbo v1, "reset()"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 235
    iget-object v0, p0, Lcom/android/server/net/LockdownVpnTracker;->mStateLock:Ljava/lang/Object;

    monitor-enter v0

    .line 237
    :try_start_b
    invoke-direct {p0}, Lcom/android/server/net/LockdownVpnTracker;->shutdownLocked()V

    .line 238
    invoke-direct {p0}, Lcom/android/server/net/LockdownVpnTracker;->initLocked()V

    .line 239
    invoke-direct {p0}, Lcom/android/server/net/LockdownVpnTracker;->handleStateChangedLocked()V

    .line 240
    monitor-exit v0

    .line 241
    return-void

    .line 240
    :catchall_16
    move-exception v1

    monitor-exit v0
    :try_end_18
    .catchall {:try_start_b .. :try_end_18} :catchall_16

    throw v1
.end method

.method public shutdown()V
    .registers 3

    .line 214
    iget-object v0, p0, Lcom/android/server/net/LockdownVpnTracker;->mStateLock:Ljava/lang/Object;

    monitor-enter v0

    .line 215
    :try_start_3
    invoke-direct {p0}, Lcom/android/server/net/LockdownVpnTracker;->shutdownLocked()V

    .line 216
    monitor-exit v0

    .line 217
    return-void

    .line 216
    :catchall_8
    move-exception v1

    monitor-exit v0
    :try_end_a
    .catchall {:try_start_3 .. :try_end_a} :catchall_8

    throw v1
.end method
