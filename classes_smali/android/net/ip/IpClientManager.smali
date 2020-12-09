.class public Landroid/net/ip/IpClientManager;
.super Ljava/lang/Object;
.source "IpClientManager.java"


# instance fields
.field private final mIpClient:Landroid/net/ip/IIpClient;

.field private final mTag:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/net/ip/IIpClient;)V
    .registers 3

    .line 51
    const-class v0, Landroid/net/ip/IpClientManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Landroid/net/ip/IpClientManager;-><init>(Landroid/net/ip/IIpClient;Ljava/lang/String;)V

    .line 52
    return-void
.end method

.method public constructor <init>(Landroid/net/ip/IIpClient;Ljava/lang/String;)V
    .registers 3

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    iput-object p1, p0, Landroid/net/ip/IpClientManager;->mIpClient:Landroid/net/ip/IIpClient;

    .line 47
    iput-object p2, p0, Landroid/net/ip/IpClientManager;->mTag:Ljava/lang/String;

    .line 48
    return-void
.end method

.method private log(Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 4

    .line 55
    iget-object v0, p0, Landroid/net/ip/IpClientManager;->mTag:Ljava/lang/String;

    invoke-static {v0, p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 56
    return-void
.end method


# virtual methods
.method public addKeepalivePacketFilter(ILandroid/net/NattKeepalivePacketData;)Z
    .registers 6

    .line 231
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 233
    :try_start_4
    iget-object v2, p0, Landroid/net/ip/IpClientManager;->mIpClient:Landroid/net/ip/IIpClient;

    .line 234
    invoke-static {p2}, Landroid/net/util/KeepalivePacketDataUtil;->toStableParcelable(Landroid/net/NattKeepalivePacketData;)Landroid/net/NattKeepalivePacketDataParcelable;

    move-result-object p2

    .line 233
    invoke-interface {v2, p1, p2}, Landroid/net/ip/IIpClient;->addNattKeepalivePacketFilter(ILandroid/net/NattKeepalivePacketDataParcelable;)V
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_d} :catch_14
    .catchall {:try_start_4 .. :try_end_d} :catchall_12

    .line 235
    const/4 p1, 0x1

    .line 240
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 235
    return p1

    .line 240
    :catchall_12
    move-exception p1

    goto :goto_1f

    .line 236
    :catch_14
    move-exception p1

    .line 237
    :try_start_15
    const-string p2, "Error adding Keepalive Packet Filter "

    invoke-direct {p0, p2, p1}, Landroid/net/ip/IpClientManager;->log(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1a
    .catchall {:try_start_15 .. :try_end_1a} :catchall_12

    .line 238
    const/4 p1, 0x0

    .line 240
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 238
    return p1

    .line 240
    :goto_1f
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p1
.end method

.method public addKeepalivePacketFilter(ILandroid/net/TcpKeepalivePacketData;)Z
    .registers 6

    .line 215
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 217
    :try_start_4
    iget-object v2, p0, Landroid/net/ip/IpClientManager;->mIpClient:Landroid/net/ip/IIpClient;

    invoke-virtual {p2}, Landroid/net/TcpKeepalivePacketData;->toStableParcelable()Landroid/net/TcpKeepalivePacketDataParcelable;

    move-result-object p2

    invoke-interface {v2, p1, p2}, Landroid/net/ip/IIpClient;->addKeepalivePacketFilter(ILandroid/net/TcpKeepalivePacketDataParcelable;)V
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_d} :catch_14
    .catchall {:try_start_4 .. :try_end_d} :catchall_12

    .line 218
    const/4 p1, 0x1

    .line 223
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 218
    return p1

    .line 223
    :catchall_12
    move-exception p1

    goto :goto_1f

    .line 219
    :catch_14
    move-exception p1

    .line 220
    :try_start_15
    const-string p2, "Error adding Keepalive Packet Filter "

    invoke-direct {p0, p2, p1}, Landroid/net/ip/IpClientManager;->log(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1a
    .catchall {:try_start_15 .. :try_end_1a} :catchall_12

    .line 221
    const/4 p1, 0x0

    .line 223
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 221
    return p1

    .line 223
    :goto_1f
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p1
.end method

.method public completedPreDhcpAction()Z
    .registers 5

    .line 64
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 66
    :try_start_4
    iget-object v2, p0, Landroid/net/ip/IpClientManager;->mIpClient:Landroid/net/ip/IIpClient;

    invoke-interface {v2}, Landroid/net/ip/IIpClient;->completedPreDhcpAction()V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_9} :catch_10
    .catchall {:try_start_4 .. :try_end_9} :catchall_e

    .line 67
    const/4 v2, 0x1

    .line 72
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 67
    return v2

    .line 72
    :catchall_e
    move-exception v2

    goto :goto_1b

    .line 68
    :catch_10
    move-exception v2

    .line 69
    :try_start_11
    const-string v3, "Error completing PreDhcpAction"

    invoke-direct {p0, v3, v2}, Landroid/net/ip/IpClientManager;->log(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_16
    .catchall {:try_start_11 .. :try_end_16} :catchall_e

    .line 70
    const/4 v2, 0x0

    .line 72
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 70
    return v2

    .line 72
    :goto_1b
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method public confirmConfiguration()Z
    .registers 3

    .line 80
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 82
    :try_start_3
    iget-object v0, p0, Landroid/net/ip/IpClientManager;->mIpClient:Landroid/net/ip/IIpClient;

    invoke-interface {v0}, Landroid/net/ip/IIpClient;->confirmConfiguration()V
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_8} :catch_a

    .line 83
    const/4 v0, 0x1

    return v0

    .line 84
    :catch_a
    move-exception v0

    .line 85
    const-string v1, "Error confirming IpClient configuration"

    invoke-direct {p0, v1, v0}, Landroid/net/ip/IpClientManager;->log(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 86
    const/4 v0, 0x0

    return v0
.end method

.method public readPacketFilterComplete([B)Z
    .registers 5

    .line 94
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 96
    :try_start_4
    iget-object v2, p0, Landroid/net/ip/IpClientManager;->mIpClient:Landroid/net/ip/IIpClient;

    invoke-interface {v2, p1}, Landroid/net/ip/IIpClient;->readPacketFilterComplete([B)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_9} :catch_10
    .catchall {:try_start_4 .. :try_end_9} :catchall_e

    .line 97
    const/4 p1, 0x1

    .line 102
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 97
    return p1

    .line 102
    :catchall_e
    move-exception p1

    goto :goto_1b

    .line 98
    :catch_10
    move-exception p1

    .line 99
    :try_start_11
    const-string v2, "Error notifying IpClient of packet filter read"

    invoke-direct {p0, v2, p1}, Landroid/net/ip/IpClientManager;->log(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_16
    .catchall {:try_start_11 .. :try_end_16} :catchall_e

    .line 100
    const/4 p1, 0x0

    .line 102
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 100
    return p1

    .line 102
    :goto_1b
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p1
.end method

.method public removeKeepalivePacketFilter(I)Z
    .registers 5

    .line 248
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 250
    :try_start_4
    iget-object v2, p0, Landroid/net/ip/IpClientManager;->mIpClient:Landroid/net/ip/IIpClient;

    invoke-interface {v2, p1}, Landroid/net/ip/IIpClient;->removeKeepalivePacketFilter(I)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_9} :catch_10
    .catchall {:try_start_4 .. :try_end_9} :catchall_e

    .line 251
    const/4 p1, 0x1

    .line 256
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 251
    return p1

    .line 256
    :catchall_e
    move-exception p1

    goto :goto_1b

    .line 252
    :catch_10
    move-exception p1

    .line 253
    :try_start_11
    const-string v2, "Error removing Keepalive Packet Filter "

    invoke-direct {p0, v2, p1}, Landroid/net/ip/IpClientManager;->log(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_16
    .catchall {:try_start_11 .. :try_end_16} :catchall_e

    .line 254
    const/4 p1, 0x0

    .line 256
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 254
    return p1

    .line 256
    :goto_1b
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p1
.end method

.method public setHttpProxy(Landroid/net/ProxyInfo;)Z
    .registers 5

    .line 182
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 184
    :try_start_4
    iget-object v2, p0, Landroid/net/ip/IpClientManager;->mIpClient:Landroid/net/ip/IIpClient;

    invoke-interface {v2, p1}, Landroid/net/ip/IIpClient;->setHttpProxy(Landroid/net/ProxyInfo;)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_9} :catch_10
    .catchall {:try_start_4 .. :try_end_9} :catchall_e

    .line 185
    const/4 p1, 0x1

    .line 190
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 185
    return p1

    .line 190
    :catchall_e
    move-exception p1

    goto :goto_1b

    .line 186
    :catch_10
    move-exception p1

    .line 187
    :try_start_11
    const-string v2, "Error setting IpClient proxy"

    invoke-direct {p0, v2, p1}, Landroid/net/ip/IpClientManager;->log(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_16
    .catchall {:try_start_11 .. :try_end_16} :catchall_e

    .line 188
    const/4 p1, 0x0

    .line 190
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 188
    return p1

    .line 190
    :goto_1b
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p1
.end method

.method public setL2KeyAndGroupHint(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 6

    .line 264
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 266
    :try_start_4
    iget-object v2, p0, Landroid/net/ip/IpClientManager;->mIpClient:Landroid/net/ip/IIpClient;

    invoke-interface {v2, p1, p2}, Landroid/net/ip/IIpClient;->setL2KeyAndGroupHint(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_9} :catch_10
    .catchall {:try_start_4 .. :try_end_9} :catchall_e

    .line 267
    const/4 p1, 0x1

    .line 272
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 267
    return p1

    .line 272
    :catchall_e
    move-exception p1

    goto :goto_1b

    .line 268
    :catch_10
    move-exception p1

    .line 269
    :try_start_11
    const-string p2, "Failed setL2KeyAndGroupHint"

    invoke-direct {p0, p2, p1}, Landroid/net/ip/IpClientManager;->log(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_16
    .catchall {:try_start_11 .. :try_end_16} :catchall_e

    .line 270
    const/4 p1, 0x0

    .line 272
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 270
    return p1

    .line 272
    :goto_1b
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p1
.end method

.method public setMulticastFilter(Z)Z
    .registers 5

    .line 199
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 201
    :try_start_4
    iget-object v2, p0, Landroid/net/ip/IpClientManager;->mIpClient:Landroid/net/ip/IIpClient;

    invoke-interface {v2, p1}, Landroid/net/ip/IIpClient;->setMulticastFilter(Z)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_9} :catch_10
    .catchall {:try_start_4 .. :try_end_9} :catchall_e

    .line 202
    const/4 p1, 0x1

    .line 207
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 202
    return p1

    .line 207
    :catchall_e
    move-exception p1

    goto :goto_1b

    .line 203
    :catch_10
    move-exception p1

    .line 204
    :try_start_11
    const-string v2, "Error setting multicast filter"

    invoke-direct {p0, v2, p1}, Landroid/net/ip/IpClientManager;->log(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_16
    .catchall {:try_start_11 .. :try_end_16} :catchall_e

    .line 205
    const/4 p1, 0x0

    .line 207
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 205
    return p1

    .line 207
    :goto_1b
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p1
.end method

.method public setTcpBufferSizes(Ljava/lang/String;)Z
    .registers 5

    .line 163
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 165
    :try_start_4
    iget-object v2, p0, Landroid/net/ip/IpClientManager;->mIpClient:Landroid/net/ip/IIpClient;

    invoke-interface {v2, p1}, Landroid/net/ip/IIpClient;->setTcpBufferSizes(Ljava/lang/String;)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_9} :catch_10
    .catchall {:try_start_4 .. :try_end_9} :catchall_e

    .line 166
    const/4 p1, 0x1

    .line 171
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 166
    return p1

    .line 171
    :catchall_e
    move-exception p1

    goto :goto_1b

    .line 167
    :catch_10
    move-exception p1

    .line 168
    :try_start_11
    const-string v2, "Error setting IpClient TCP buffer sizes"

    invoke-direct {p0, v2, p1}, Landroid/net/ip/IpClientManager;->log(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_16
    .catchall {:try_start_11 .. :try_end_16} :catchall_e

    .line 169
    const/4 p1, 0x0

    .line 171
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 169
    return p1

    .line 171
    :goto_1b
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p1
.end method

.method public shutdown()Z
    .registers 5

    .line 110
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 112
    :try_start_4
    iget-object v2, p0, Landroid/net/ip/IpClientManager;->mIpClient:Landroid/net/ip/IIpClient;

    invoke-interface {v2}, Landroid/net/ip/IIpClient;->shutdown()V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_9} :catch_10
    .catchall {:try_start_4 .. :try_end_9} :catchall_e

    .line 113
    const/4 v2, 0x1

    .line 118
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 113
    return v2

    .line 118
    :catchall_e
    move-exception v2

    goto :goto_1b

    .line 114
    :catch_10
    move-exception v2

    .line 115
    :try_start_11
    const-string v3, "Error shutting down IpClient"

    invoke-direct {p0, v3, v2}, Landroid/net/ip/IpClientManager;->log(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_16
    .catchall {:try_start_11 .. :try_end_16} :catchall_e

    .line 116
    const/4 v2, 0x0

    .line 118
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 116
    return v2

    .line 118
    :goto_1b
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method public startProvisioning(Landroid/net/shared/ProvisioningConfiguration;)Z
    .registers 5

    .line 126
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 128
    :try_start_4
    iget-object v2, p0, Landroid/net/ip/IpClientManager;->mIpClient:Landroid/net/ip/IIpClient;

    invoke-virtual {p1}, Landroid/net/shared/ProvisioningConfiguration;->toStableParcelable()Landroid/net/ProvisioningConfigurationParcelable;

    move-result-object p1

    invoke-interface {v2, p1}, Landroid/net/ip/IIpClient;->startProvisioning(Landroid/net/ProvisioningConfigurationParcelable;)V
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_d} :catch_14
    .catchall {:try_start_4 .. :try_end_d} :catchall_12

    .line 129
    const/4 p1, 0x1

    .line 134
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 129
    return p1

    .line 134
    :catchall_12
    move-exception p1

    goto :goto_1f

    .line 130
    :catch_14
    move-exception p1

    .line 131
    :try_start_15
    const-string v2, "Error starting IpClient provisioning"

    invoke-direct {p0, v2, p1}, Landroid/net/ip/IpClientManager;->log(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1a
    .catchall {:try_start_15 .. :try_end_1a} :catchall_12

    .line 132
    const/4 p1, 0x0

    .line 134
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 132
    return p1

    .line 134
    :goto_1f
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p1
.end method

.method public stop()Z
    .registers 5

    .line 144
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 146
    :try_start_4
    iget-object v2, p0, Landroid/net/ip/IpClientManager;->mIpClient:Landroid/net/ip/IIpClient;

    invoke-interface {v2}, Landroid/net/ip/IIpClient;->stop()V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_9} :catch_10
    .catchall {:try_start_4 .. :try_end_9} :catchall_e

    .line 147
    const/4 v2, 0x1

    .line 152
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 147
    return v2

    .line 152
    :catchall_e
    move-exception v2

    goto :goto_1b

    .line 148
    :catch_10
    move-exception v2

    .line 149
    :try_start_11
    const-string v3, "Error stopping IpClient"

    invoke-direct {p0, v3, v2}, Landroid/net/ip/IpClientManager;->log(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_16
    .catchall {:try_start_11 .. :try_end_16} :catchall_e

    .line 150
    const/4 v2, 0x0

    .line 152
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 150
    return v2

    .line 152
    :goto_1b
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method
