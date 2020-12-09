.class Landroid/net/dhcp/IDhcpServerCallbacks$Stub$Proxy;
.super Ljava/lang/Object;
.source "IDhcpServerCallbacks.java"

# interfaces
.implements Landroid/net/dhcp/IDhcpServerCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/dhcp/IDhcpServerCallbacks$Stub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Proxy"
.end annotation


# static fields
.field public static sDefaultImpl:Landroid/net/dhcp/IDhcpServerCallbacks;


# instance fields
.field private mCachedVersion:I

.field private mRemote:Landroid/os/IBinder;


# direct methods
.method constructor <init>(Landroid/os/IBinder;)V
    .registers 3

    .line 94
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 97
    const/4 v0, -0x1

    iput v0, p0, Landroid/net/dhcp/IDhcpServerCallbacks$Stub$Proxy;->mCachedVersion:I

    .line 95
    iput-object p1, p0, Landroid/net/dhcp/IDhcpServerCallbacks$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    .line 96
    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 2

    .line 100
    iget-object v0, p0, Landroid/net/dhcp/IDhcpServerCallbacks$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-object v0
.end method

.method public getInterfaceDescriptor()Ljava/lang/String;
    .registers 2

    .line 104
    const-string v0, "android.net.dhcp.IDhcpServerCallbacks"

    return-object v0
.end method

.method public getInterfaceVersion()I
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 125
    iget v0, p0, Landroid/net/dhcp/IDhcpServerCallbacks$Stub$Proxy;->mCachedVersion:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_33

    .line 126
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 127
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 129
    :try_start_d
    const-string v2, "android.net.dhcp.IDhcpServerCallbacks"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 130
    iget-object v2, p0, Landroid/net/dhcp/IDhcpServerCallbacks$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const v3, 0xffffff

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 131
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 132
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Landroid/net/dhcp/IDhcpServerCallbacks$Stub$Proxy;->mCachedVersion:I
    :try_end_24
    .catchall {:try_start_d .. :try_end_24} :catchall_2b

    .line 134
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 135
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 136
    goto :goto_33

    .line 134
    :catchall_2b
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 135
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v2

    .line 138
    :cond_33
    :goto_33
    iget v0, p0, Landroid/net/dhcp/IDhcpServerCallbacks$Stub$Proxy;->mCachedVersion:I

    return v0
.end method

.method public onDhcpServerCreated(ILandroid/net/dhcp/IDhcpServer;)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 108
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 110
    :try_start_4
    const-string v1, "android.net.dhcp.IDhcpServerCallbacks"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 111
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 112
    const/4 v1, 0x0

    if-eqz p2, :cond_14

    invoke-interface {p2}, Landroid/net/dhcp/IDhcpServer;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    goto :goto_15

    :cond_14
    move-object v2, v1

    :goto_15
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 113
    iget-object v2, p0, Landroid/net/dhcp/IDhcpServerCallbacks$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x1

    invoke-interface {v2, v3, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    .line 114
    if-nez v1, :cond_32

    invoke-static {}, Landroid/net/dhcp/IDhcpServerCallbacks$Stub;->getDefaultImpl()Landroid/net/dhcp/IDhcpServerCallbacks;

    move-result-object v1

    if-eqz v1, :cond_32

    .line 115
    invoke-static {}, Landroid/net/dhcp/IDhcpServerCallbacks$Stub;->getDefaultImpl()Landroid/net/dhcp/IDhcpServerCallbacks;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Landroid/net/dhcp/IDhcpServerCallbacks;->onDhcpServerCreated(ILandroid/net/dhcp/IDhcpServer;)V
    :try_end_2e
    .catchall {:try_start_4 .. :try_end_2e} :catchall_37

    .line 120
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 116
    return-void

    .line 120
    :cond_32
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 121
    nop

    .line 122
    return-void

    .line 120
    :catchall_37
    move-exception p1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw p1
.end method
