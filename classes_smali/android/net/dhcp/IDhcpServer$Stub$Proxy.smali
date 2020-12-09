.class Landroid/net/dhcp/IDhcpServer$Stub$Proxy;
.super Ljava/lang/Object;
.source "IDhcpServer.java"

# interfaces
.implements Landroid/net/dhcp/IDhcpServer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/dhcp/IDhcpServer$Stub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Proxy"
.end annotation


# static fields
.field public static sDefaultImpl:Landroid/net/dhcp/IDhcpServer;


# instance fields
.field private mCachedVersion:I

.field private mRemote:Landroid/os/IBinder;


# direct methods
.method constructor <init>(Landroid/os/IBinder;)V
    .registers 3

    .line 121
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 124
    const/4 v0, -0x1

    iput v0, p0, Landroid/net/dhcp/IDhcpServer$Stub$Proxy;->mCachedVersion:I

    .line 122
    iput-object p1, p0, Landroid/net/dhcp/IDhcpServer$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    .line 123
    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 2

    .line 127
    iget-object v0, p0, Landroid/net/dhcp/IDhcpServer$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-object v0
.end method

.method public getInterfaceDescriptor()Ljava/lang/String;
    .registers 2

    .line 131
    const-string v0, "android.net.dhcp.IDhcpServer"

    return-object v0
.end method

.method public getInterfaceVersion()I
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 190
    iget v0, p0, Landroid/net/dhcp/IDhcpServer$Stub$Proxy;->mCachedVersion:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_33

    .line 191
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 192
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 194
    :try_start_d
    const-string v2, "android.net.dhcp.IDhcpServer"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 195
    iget-object v2, p0, Landroid/net/dhcp/IDhcpServer$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const v3, 0xffffff

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 196
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 197
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Landroid/net/dhcp/IDhcpServer$Stub$Proxy;->mCachedVersion:I
    :try_end_24
    .catchall {:try_start_d .. :try_end_24} :catchall_2b

    .line 199
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 200
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 201
    goto :goto_33

    .line 199
    :catchall_2b
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 200
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v2

    .line 203
    :cond_33
    :goto_33
    iget v0, p0, Landroid/net/dhcp/IDhcpServer$Stub$Proxy;->mCachedVersion:I

    return v0
.end method

.method public start(Landroid/net/INetworkStackStatusCallback;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 135
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 137
    :try_start_4
    const-string v1, "android.net.dhcp.IDhcpServer"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 138
    const/4 v1, 0x0

    if-eqz p1, :cond_11

    invoke-interface {p1}, Landroid/net/INetworkStackStatusCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    goto :goto_12

    :cond_11
    move-object v2, v1

    :goto_12
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 139
    iget-object v2, p0, Landroid/net/dhcp/IDhcpServer$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x1

    invoke-interface {v2, v3, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    .line 140
    if-nez v1, :cond_2f

    invoke-static {}, Landroid/net/dhcp/IDhcpServer$Stub;->getDefaultImpl()Landroid/net/dhcp/IDhcpServer;

    move-result-object v1

    if-eqz v1, :cond_2f

    .line 141
    invoke-static {}, Landroid/net/dhcp/IDhcpServer$Stub;->getDefaultImpl()Landroid/net/dhcp/IDhcpServer;

    move-result-object v1

    invoke-interface {v1, p1}, Landroid/net/dhcp/IDhcpServer;->start(Landroid/net/INetworkStackStatusCallback;)V
    :try_end_2b
    .catchall {:try_start_4 .. :try_end_2b} :catchall_34

    .line 146
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 142
    return-void

    .line 146
    :cond_2f
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 147
    nop

    .line 148
    return-void

    .line 146
    :catchall_34
    move-exception p1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw p1
.end method

.method public stop(Landroid/net/INetworkStackStatusCallback;)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 174
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 176
    :try_start_4
    const-string v1, "android.net.dhcp.IDhcpServer"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 177
    const/4 v1, 0x0

    if-eqz p1, :cond_11

    invoke-interface {p1}, Landroid/net/INetworkStackStatusCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    goto :goto_12

    :cond_11
    move-object v2, v1

    :goto_12
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 178
    iget-object v2, p0, Landroid/net/dhcp/IDhcpServer$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x3

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    .line 179
    if-nez v1, :cond_30

    invoke-static {}, Landroid/net/dhcp/IDhcpServer$Stub;->getDefaultImpl()Landroid/net/dhcp/IDhcpServer;

    move-result-object v1

    if-eqz v1, :cond_30

    .line 180
    invoke-static {}, Landroid/net/dhcp/IDhcpServer$Stub;->getDefaultImpl()Landroid/net/dhcp/IDhcpServer;

    move-result-object v1

    invoke-interface {v1, p1}, Landroid/net/dhcp/IDhcpServer;->stop(Landroid/net/INetworkStackStatusCallback;)V
    :try_end_2c
    .catchall {:try_start_4 .. :try_end_2c} :catchall_35

    .line 185
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 181
    return-void

    .line 185
    :cond_30
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 186
    nop

    .line 187
    return-void

    .line 185
    :catchall_35
    move-exception p1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw p1
.end method

.method public updateParams(Landroid/net/dhcp/DhcpServingParamsParcel;Landroid/net/INetworkStackStatusCallback;)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 151
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 153
    :try_start_4
    const-string v1, "android.net.dhcp.IDhcpServer"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 154
    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz p1, :cond_14

    .line 155
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 156
    invoke-virtual {p1, v0, v2}, Landroid/net/dhcp/DhcpServingParamsParcel;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_17

    .line 159
    :cond_14
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 161
    :goto_17
    const/4 v2, 0x0

    if-eqz p2, :cond_1f

    invoke-interface {p2}, Landroid/net/INetworkStackStatusCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    goto :goto_20

    :cond_1f
    move-object v3, v2

    :goto_20
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 162
    iget-object v3, p0, Landroid/net/dhcp/IDhcpServer$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v4, 0x2

    invoke-interface {v3, v4, v0, v2, v1}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    .line 163
    if-nez v1, :cond_3d

    invoke-static {}, Landroid/net/dhcp/IDhcpServer$Stub;->getDefaultImpl()Landroid/net/dhcp/IDhcpServer;

    move-result-object v1

    if-eqz v1, :cond_3d

    .line 164
    invoke-static {}, Landroid/net/dhcp/IDhcpServer$Stub;->getDefaultImpl()Landroid/net/dhcp/IDhcpServer;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Landroid/net/dhcp/IDhcpServer;->updateParams(Landroid/net/dhcp/DhcpServingParamsParcel;Landroid/net/INetworkStackStatusCallback;)V
    :try_end_39
    .catchall {:try_start_4 .. :try_end_39} :catchall_42

    .line 169
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 165
    return-void

    .line 169
    :cond_3d
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 170
    nop

    .line 171
    return-void

    .line 169
    :catchall_42
    move-exception p1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw p1
.end method
