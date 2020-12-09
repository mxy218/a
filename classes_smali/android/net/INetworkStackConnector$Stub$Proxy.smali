.class Landroid/net/INetworkStackConnector$Stub$Proxy;
.super Ljava/lang/Object;
.source "INetworkStackConnector.java"

# interfaces
.implements Landroid/net/INetworkStackConnector;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/INetworkStackConnector$Stub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Proxy"
.end annotation


# static fields
.field public static sDefaultImpl:Landroid/net/INetworkStackConnector;


# instance fields
.field private mCachedVersion:I

.field private mRemote:Landroid/os/IBinder;


# direct methods
.method constructor <init>(Landroid/os/IBinder;)V
    .registers 3

    .line 145
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 148
    const/4 v0, -0x1

    iput v0, p0, Landroid/net/INetworkStackConnector$Stub$Proxy;->mCachedVersion:I

    .line 146
    iput-object p1, p0, Landroid/net/INetworkStackConnector$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    .line 147
    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 2

    .line 151
    iget-object v0, p0, Landroid/net/INetworkStackConnector$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-object v0
.end method

.method public fetchIpMemoryStore(Landroid/net/IIpMemoryStoreCallbacks;)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 224
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 226
    :try_start_4
    const-string v1, "android.net.INetworkStackConnector"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 227
    const/4 v1, 0x0

    if-eqz p1, :cond_11

    invoke-interface {p1}, Landroid/net/IIpMemoryStoreCallbacks;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    goto :goto_12

    :cond_11
    move-object v2, v1

    :goto_12
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 228
    iget-object v2, p0, Landroid/net/INetworkStackConnector$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x4

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    .line 229
    if-nez v1, :cond_30

    invoke-static {}, Landroid/net/INetworkStackConnector$Stub;->getDefaultImpl()Landroid/net/INetworkStackConnector;

    move-result-object v1

    if-eqz v1, :cond_30

    .line 230
    invoke-static {}, Landroid/net/INetworkStackConnector$Stub;->getDefaultImpl()Landroid/net/INetworkStackConnector;

    move-result-object v1

    invoke-interface {v1, p1}, Landroid/net/INetworkStackConnector;->fetchIpMemoryStore(Landroid/net/IIpMemoryStoreCallbacks;)V
    :try_end_2c
    .catchall {:try_start_4 .. :try_end_2c} :catchall_35

    .line 235
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 231
    return-void

    .line 235
    :cond_30
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 236
    nop

    .line 237
    return-void

    .line 235
    :catchall_35
    move-exception p1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw p1
.end method

.method public getInterfaceDescriptor()Ljava/lang/String;
    .registers 2

    .line 155
    const-string v0, "android.net.INetworkStackConnector"

    return-object v0
.end method

.method public getInterfaceVersion()I
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 240
    iget v0, p0, Landroid/net/INetworkStackConnector$Stub$Proxy;->mCachedVersion:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_33

    .line 241
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 242
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 244
    :try_start_d
    const-string v2, "android.net.INetworkStackConnector"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 245
    iget-object v2, p0, Landroid/net/INetworkStackConnector$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const v3, 0xffffff

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 246
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 247
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Landroid/net/INetworkStackConnector$Stub$Proxy;->mCachedVersion:I
    :try_end_24
    .catchall {:try_start_d .. :try_end_24} :catchall_2b

    .line 249
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 250
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 251
    goto :goto_33

    .line 249
    :catchall_2b
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 250
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v2

    .line 253
    :cond_33
    :goto_33
    iget v0, p0, Landroid/net/INetworkStackConnector$Stub$Proxy;->mCachedVersion:I

    return v0
.end method

.method public makeDhcpServer(Ljava/lang/String;Landroid/net/dhcp/DhcpServingParamsParcel;Landroid/net/dhcp/IDhcpServerCallbacks;)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 159
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 161
    :try_start_4
    const-string v1, "android.net.INetworkStackConnector"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 162
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 163
    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz p2, :cond_17

    .line 164
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 165
    invoke-virtual {p2, v0, v1}, Landroid/net/dhcp/DhcpServingParamsParcel;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_1a

    .line 168
    :cond_17
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 170
    :goto_1a
    const/4 v1, 0x0

    if-eqz p3, :cond_22

    invoke-interface {p3}, Landroid/net/dhcp/IDhcpServerCallbacks;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    goto :goto_23

    :cond_22
    move-object v3, v1

    :goto_23
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 171
    iget-object v3, p0, Landroid/net/INetworkStackConnector$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    invoke-interface {v3, v2, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    .line 172
    if-nez v1, :cond_3f

    invoke-static {}, Landroid/net/INetworkStackConnector$Stub;->getDefaultImpl()Landroid/net/INetworkStackConnector;

    move-result-object v1

    if-eqz v1, :cond_3f

    .line 173
    invoke-static {}, Landroid/net/INetworkStackConnector$Stub;->getDefaultImpl()Landroid/net/INetworkStackConnector;

    move-result-object v1

    invoke-interface {v1, p1, p2, p3}, Landroid/net/INetworkStackConnector;->makeDhcpServer(Ljava/lang/String;Landroid/net/dhcp/DhcpServingParamsParcel;Landroid/net/dhcp/IDhcpServerCallbacks;)V
    :try_end_3b
    .catchall {:try_start_4 .. :try_end_3b} :catchall_44

    .line 178
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 174
    return-void

    .line 178
    :cond_3f
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 179
    nop

    .line 180
    return-void

    .line 178
    :catchall_44
    move-exception p1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw p1
.end method

.method public makeIpClient(Ljava/lang/String;Landroid/net/ip/IIpClientCallbacks;)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 207
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 209
    :try_start_4
    const-string v1, "android.net.INetworkStackConnector"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 210
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 211
    const/4 v1, 0x0

    if-eqz p2, :cond_14

    invoke-interface {p2}, Landroid/net/ip/IIpClientCallbacks;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    goto :goto_15

    :cond_14
    move-object v2, v1

    :goto_15
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 212
    iget-object v2, p0, Landroid/net/INetworkStackConnector$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x3

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    .line 213
    if-nez v1, :cond_33

    invoke-static {}, Landroid/net/INetworkStackConnector$Stub;->getDefaultImpl()Landroid/net/INetworkStackConnector;

    move-result-object v1

    if-eqz v1, :cond_33

    .line 214
    invoke-static {}, Landroid/net/INetworkStackConnector$Stub;->getDefaultImpl()Landroid/net/INetworkStackConnector;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Landroid/net/INetworkStackConnector;->makeIpClient(Ljava/lang/String;Landroid/net/ip/IIpClientCallbacks;)V
    :try_end_2f
    .catchall {:try_start_4 .. :try_end_2f} :catchall_38

    .line 219
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 215
    return-void

    .line 219
    :cond_33
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 220
    nop

    .line 221
    return-void

    .line 219
    :catchall_38
    move-exception p1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw p1
.end method

.method public makeNetworkMonitor(Landroid/net/Network;Ljava/lang/String;Landroid/net/INetworkMonitorCallbacks;)V
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 183
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 185
    :try_start_4
    const-string v1, "android.net.INetworkStackConnector"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 186
    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz p1, :cond_14

    .line 187
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 188
    invoke-virtual {p1, v0, v2}, Landroid/net/Network;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_17

    .line 191
    :cond_14
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 193
    :goto_17
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 194
    const/4 v2, 0x0

    if-eqz p3, :cond_22

    invoke-interface {p3}, Landroid/net/INetworkMonitorCallbacks;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    goto :goto_23

    :cond_22
    move-object v3, v2

    :goto_23
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 195
    iget-object v3, p0, Landroid/net/INetworkStackConnector$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v4, 0x2

    invoke-interface {v3, v4, v0, v2, v1}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    .line 196
    if-nez v1, :cond_40

    invoke-static {}, Landroid/net/INetworkStackConnector$Stub;->getDefaultImpl()Landroid/net/INetworkStackConnector;

    move-result-object v1

    if-eqz v1, :cond_40

    .line 197
    invoke-static {}, Landroid/net/INetworkStackConnector$Stub;->getDefaultImpl()Landroid/net/INetworkStackConnector;

    move-result-object v1

    invoke-interface {v1, p1, p2, p3}, Landroid/net/INetworkStackConnector;->makeNetworkMonitor(Landroid/net/Network;Ljava/lang/String;Landroid/net/INetworkMonitorCallbacks;)V
    :try_end_3c
    .catchall {:try_start_4 .. :try_end_3c} :catchall_45

    .line 202
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 198
    return-void

    .line 202
    :cond_40
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 203
    nop

    .line 204
    return-void

    .line 202
    :catchall_45
    move-exception p1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw p1
.end method
