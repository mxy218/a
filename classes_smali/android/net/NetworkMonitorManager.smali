.class public Landroid/net/NetworkMonitorManager;
.super Ljava/lang/Object;
.source "NetworkMonitorManager.java"


# instance fields
.field private final mNetworkMonitor:Landroid/net/INetworkMonitor;

.field private final mTag:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/net/INetworkMonitor;)V
    .registers 3

    .line 48
    const-class v0, Landroid/net/NetworkMonitorManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Landroid/net/NetworkMonitorManager;-><init>(Landroid/net/INetworkMonitor;Ljava/lang/String;)V

    .line 49
    return-void
.end method

.method public constructor <init>(Landroid/net/INetworkMonitor;Ljava/lang/String;)V
    .registers 3

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput-object p1, p0, Landroid/net/NetworkMonitorManager;->mNetworkMonitor:Landroid/net/INetworkMonitor;

    .line 44
    iput-object p2, p0, Landroid/net/NetworkMonitorManager;->mTag:Ljava/lang/String;

    .line 45
    return-void
.end method

.method private log(Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 4

    .line 52
    iget-object v0, p0, Landroid/net/NetworkMonitorManager;->mTag:Ljava/lang/String;

    invoke-static {v0, p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 53
    return-void
.end method


# virtual methods
.method public forceReevaluation(I)Z
    .registers 5

    .line 110
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 112
    :try_start_4
    iget-object v2, p0, Landroid/net/NetworkMonitorManager;->mNetworkMonitor:Landroid/net/INetworkMonitor;

    invoke-interface {v2, p1}, Landroid/net/INetworkMonitor;->forceReevaluation(I)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_9} :catch_10
    .catchall {:try_start_4 .. :try_end_9} :catchall_e

    .line 113
    const/4 p1, 0x1

    .line 118
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 113
    return p1

    .line 118
    :catchall_e
    move-exception p1

    goto :goto_1b

    .line 114
    :catch_10
    move-exception p1

    .line 115
    :try_start_11
    const-string v2, "Error in forceReevaluation"

    invoke-direct {p0, v2, p1}, Landroid/net/NetworkMonitorManager;->log(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_16
    .catchall {:try_start_11 .. :try_end_16} :catchall_e

    .line 116
    const/4 p1, 0x0

    .line 118
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 116
    return p1

    .line 118
    :goto_1b
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p1
.end method

.method public launchCaptivePortalApp()Z
    .registers 5

    .line 71
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 73
    :try_start_4
    iget-object v2, p0, Landroid/net/NetworkMonitorManager;->mNetworkMonitor:Landroid/net/INetworkMonitor;

    invoke-interface {v2}, Landroid/net/INetworkMonitor;->launchCaptivePortalApp()V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_9} :catch_10
    .catchall {:try_start_4 .. :try_end_9} :catchall_e

    .line 74
    const/4 v2, 0x1

    .line 79
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 74
    return v2

    .line 79
    :catchall_e
    move-exception v2

    goto :goto_1b

    .line 75
    :catch_10
    move-exception v2

    .line 76
    :try_start_11
    const-string v3, "Error in launchCaptivePortalApp"

    invoke-direct {p0, v3, v2}, Landroid/net/NetworkMonitorManager;->log(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_16
    .catchall {:try_start_11 .. :try_end_16} :catchall_e

    .line 77
    const/4 v2, 0x0

    .line 79
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 77
    return v2

    .line 79
    :goto_1b
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method public notifyCaptivePortalAppFinished(I)Z
    .registers 5

    .line 84
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 86
    :try_start_4
    iget-object v2, p0, Landroid/net/NetworkMonitorManager;->mNetworkMonitor:Landroid/net/INetworkMonitor;

    invoke-interface {v2, p1}, Landroid/net/INetworkMonitor;->notifyCaptivePortalAppFinished(I)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_9} :catch_10
    .catchall {:try_start_4 .. :try_end_9} :catchall_e

    .line 87
    const/4 p1, 0x1

    .line 92
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 87
    return p1

    .line 92
    :catchall_e
    move-exception p1

    goto :goto_1b

    .line 88
    :catch_10
    move-exception p1

    .line 89
    :try_start_11
    const-string v2, "Error in notifyCaptivePortalAppFinished"

    invoke-direct {p0, v2, p1}, Landroid/net/NetworkMonitorManager;->log(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_16
    .catchall {:try_start_11 .. :try_end_16} :catchall_e

    .line 90
    const/4 p1, 0x0

    .line 92
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 90
    return p1

    .line 92
    :goto_1b
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p1
.end method

.method public notifyDnsResponse(I)Z
    .registers 5

    .line 136
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 138
    :try_start_4
    iget-object v2, p0, Landroid/net/NetworkMonitorManager;->mNetworkMonitor:Landroid/net/INetworkMonitor;

    invoke-interface {v2, p1}, Landroid/net/INetworkMonitor;->notifyDnsResponse(I)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_9} :catch_10
    .catchall {:try_start_4 .. :try_end_9} :catchall_e

    .line 139
    const/4 p1, 0x1

    .line 144
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 139
    return p1

    .line 144
    :catchall_e
    move-exception p1

    goto :goto_1b

    .line 140
    :catch_10
    move-exception p1

    .line 141
    :try_start_11
    const-string v2, "Error in notifyDnsResponse"

    invoke-direct {p0, v2, p1}, Landroid/net/NetworkMonitorManager;->log(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_16
    .catchall {:try_start_11 .. :try_end_16} :catchall_e

    .line 142
    const/4 p1, 0x0

    .line 144
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 142
    return p1

    .line 144
    :goto_1b
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p1
.end method

.method public notifyLinkPropertiesChanged(Landroid/net/LinkProperties;)Z
    .registers 5

    .line 175
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 177
    :try_start_4
    iget-object v2, p0, Landroid/net/NetworkMonitorManager;->mNetworkMonitor:Landroid/net/INetworkMonitor;

    invoke-interface {v2, p1}, Landroid/net/INetworkMonitor;->notifyLinkPropertiesChanged(Landroid/net/LinkProperties;)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_9} :catch_10
    .catchall {:try_start_4 .. :try_end_9} :catchall_e

    .line 178
    const/4 p1, 0x1

    .line 183
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 178
    return p1

    .line 183
    :catchall_e
    move-exception p1

    goto :goto_1b

    .line 179
    :catch_10
    move-exception p1

    .line 180
    :try_start_11
    const-string v2, "Error in notifyLinkPropertiesChanged"

    invoke-direct {p0, v2, p1}, Landroid/net/NetworkMonitorManager;->log(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_16
    .catchall {:try_start_11 .. :try_end_16} :catchall_e

    .line 181
    const/4 p1, 0x0

    .line 183
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 181
    return p1

    .line 183
    :goto_1b
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p1
.end method

.method public notifyNetworkCapabilitiesChanged(Landroid/net/NetworkCapabilities;)Z
    .registers 5

    .line 188
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 190
    :try_start_4
    iget-object v2, p0, Landroid/net/NetworkMonitorManager;->mNetworkMonitor:Landroid/net/INetworkMonitor;

    invoke-interface {v2, p1}, Landroid/net/INetworkMonitor;->notifyNetworkCapabilitiesChanged(Landroid/net/NetworkCapabilities;)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_9} :catch_10
    .catchall {:try_start_4 .. :try_end_9} :catchall_e

    .line 191
    const/4 p1, 0x1

    .line 196
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 191
    return p1

    .line 196
    :catchall_e
    move-exception p1

    goto :goto_1b

    .line 192
    :catch_10
    move-exception p1

    .line 193
    :try_start_11
    const-string v2, "Error in notifyNetworkCapabilitiesChanged"

    invoke-direct {p0, v2, p1}, Landroid/net/NetworkMonitorManager;->log(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_16
    .catchall {:try_start_11 .. :try_end_16} :catchall_e

    .line 194
    const/4 p1, 0x0

    .line 196
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 194
    return p1

    .line 196
    :goto_1b
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p1
.end method

.method public notifyNetworkConnected(Landroid/net/LinkProperties;Landroid/net/NetworkCapabilities;)Z
    .registers 6

    .line 149
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 151
    :try_start_4
    iget-object v2, p0, Landroid/net/NetworkMonitorManager;->mNetworkMonitor:Landroid/net/INetworkMonitor;

    invoke-interface {v2, p1, p2}, Landroid/net/INetworkMonitor;->notifyNetworkConnected(Landroid/net/LinkProperties;Landroid/net/NetworkCapabilities;)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_9} :catch_10
    .catchall {:try_start_4 .. :try_end_9} :catchall_e

    .line 152
    const/4 p1, 0x1

    .line 157
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 152
    return p1

    .line 157
    :catchall_e
    move-exception p1

    goto :goto_1b

    .line 153
    :catch_10
    move-exception p1

    .line 154
    :try_start_11
    const-string p2, "Error in notifyNetworkConnected"

    invoke-direct {p0, p2, p1}, Landroid/net/NetworkMonitorManager;->log(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_16
    .catchall {:try_start_11 .. :try_end_16} :catchall_e

    .line 155
    const/4 p1, 0x0

    .line 157
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 155
    return p1

    .line 157
    :goto_1b
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p1
.end method

.method public notifyNetworkDisconnected()Z
    .registers 5

    .line 162
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 164
    :try_start_4
    iget-object v2, p0, Landroid/net/NetworkMonitorManager;->mNetworkMonitor:Landroid/net/INetworkMonitor;

    invoke-interface {v2}, Landroid/net/INetworkMonitor;->notifyNetworkDisconnected()V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_9} :catch_10
    .catchall {:try_start_4 .. :try_end_9} :catchall_e

    .line 165
    const/4 v2, 0x1

    .line 170
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 165
    return v2

    .line 170
    :catchall_e
    move-exception v2

    goto :goto_1b

    .line 166
    :catch_10
    move-exception v2

    .line 167
    :try_start_11
    const-string v3, "Error in notifyNetworkDisconnected"

    invoke-direct {p0, v3, v2}, Landroid/net/NetworkMonitorManager;->log(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_16
    .catchall {:try_start_11 .. :try_end_16} :catchall_e

    .line 168
    const/4 v2, 0x0

    .line 170
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 168
    return v2

    .line 170
    :goto_1b
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method public notifyPrivateDnsChanged(Landroid/net/PrivateDnsConfigParcel;)Z
    .registers 5

    .line 123
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 125
    :try_start_4
    iget-object v2, p0, Landroid/net/NetworkMonitorManager;->mNetworkMonitor:Landroid/net/INetworkMonitor;

    invoke-interface {v2, p1}, Landroid/net/INetworkMonitor;->notifyPrivateDnsChanged(Landroid/net/PrivateDnsConfigParcel;)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_9} :catch_10
    .catchall {:try_start_4 .. :try_end_9} :catchall_e

    .line 126
    const/4 p1, 0x1

    .line 131
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 126
    return p1

    .line 131
    :catchall_e
    move-exception p1

    goto :goto_1b

    .line 127
    :catch_10
    move-exception p1

    .line 128
    :try_start_11
    const-string v2, "Error in notifyPrivateDnsChanged"

    invoke-direct {p0, v2, p1}, Landroid/net/NetworkMonitorManager;->log(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_16
    .catchall {:try_start_11 .. :try_end_16} :catchall_e

    .line 129
    const/4 p1, 0x0

    .line 131
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 129
    return p1

    .line 131
    :goto_1b
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p1
.end method

.method public setAcceptPartialConnectivity()Z
    .registers 5

    .line 97
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 99
    :try_start_4
    iget-object v2, p0, Landroid/net/NetworkMonitorManager;->mNetworkMonitor:Landroid/net/INetworkMonitor;

    invoke-interface {v2}, Landroid/net/INetworkMonitor;->setAcceptPartialConnectivity()V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_9} :catch_10
    .catchall {:try_start_4 .. :try_end_9} :catchall_e

    .line 100
    const/4 v2, 0x1

    .line 105
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 100
    return v2

    .line 105
    :catchall_e
    move-exception v2

    goto :goto_1b

    .line 101
    :catch_10
    move-exception v2

    .line 102
    :try_start_11
    const-string v3, "Error in setAcceptPartialConnectivity"

    invoke-direct {p0, v3, v2}, Landroid/net/NetworkMonitorManager;->log(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_16
    .catchall {:try_start_11 .. :try_end_16} :catchall_e

    .line 103
    const/4 v2, 0x0

    .line 105
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 103
    return v2

    .line 105
    :goto_1b
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method public start()Z
    .registers 5

    .line 58
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 60
    :try_start_4
    iget-object v2, p0, Landroid/net/NetworkMonitorManager;->mNetworkMonitor:Landroid/net/INetworkMonitor;

    invoke-interface {v2}, Landroid/net/INetworkMonitor;->start()V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_9} :catch_10
    .catchall {:try_start_4 .. :try_end_9} :catchall_e

    .line 61
    const/4 v2, 0x1

    .line 66
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 61
    return v2

    .line 66
    :catchall_e
    move-exception v2

    goto :goto_1b

    .line 62
    :catch_10
    move-exception v2

    .line 63
    :try_start_11
    const-string v3, "Error in start"

    invoke-direct {p0, v3, v2}, Landroid/net/NetworkMonitorManager;->log(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_16
    .catchall {:try_start_11 .. :try_end_16} :catchall_e

    .line 64
    const/4 v2, 0x0

    .line 66
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 64
    return v2

    .line 66
    :goto_1b
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method
