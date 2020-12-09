.class public abstract Landroid/net/INetworkStackConnector$Stub;
.super Landroid/os/Binder;
.source "INetworkStackConnector.java"

# interfaces
.implements Landroid/net/INetworkStackConnector;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/INetworkStackConnector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/INetworkStackConnector$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.net.INetworkStackConnector"

.field static final TRANSACTION_fetchIpMemoryStore:I = 0x4

.field static final TRANSACTION_getInterfaceVersion:I = 0xffffff

.field static final TRANSACTION_makeDhcpServer:I = 0x1

.field static final TRANSACTION_makeIpClient:I = 0x3

.field static final TRANSACTION_makeNetworkMonitor:I = 0x2


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 44
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 45
    const-string v0, "android.net.INetworkStackConnector"

    invoke-virtual {p0, p0, v0}, Landroid/net/INetworkStackConnector$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 46
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/net/INetworkStackConnector;
    .registers 3

    .line 53
    if-nez p0, :cond_4

    .line 54
    const/4 p0, 0x0

    return-object p0

    .line 56
    :cond_4
    const-string v0, "android.net.INetworkStackConnector"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 57
    if-eqz v0, :cond_13

    instance-of v1, v0, Landroid/net/INetworkStackConnector;

    if-eqz v1, :cond_13

    .line 58
    check-cast v0, Landroid/net/INetworkStackConnector;

    return-object v0

    .line 60
    :cond_13
    new-instance v0, Landroid/net/INetworkStackConnector$Stub$Proxy;

    invoke-direct {v0, p0}, Landroid/net/INetworkStackConnector$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method

.method public static getDefaultImpl()Landroid/net/INetworkStackConnector;
    .registers 1

    .line 270
    sget-object v0, Landroid/net/INetworkStackConnector$Stub$Proxy;->sDefaultImpl:Landroid/net/INetworkStackConnector;

    return-object v0
.end method

.method public static setDefaultImpl(Landroid/net/INetworkStackConnector;)Z
    .registers 2

    .line 263
    sget-object v0, Landroid/net/INetworkStackConnector$Stub$Proxy;->sDefaultImpl:Landroid/net/INetworkStackConnector;

    if-nez v0, :cond_a

    if-eqz p0, :cond_a

    .line 264
    sput-object p0, Landroid/net/INetworkStackConnector$Stub$Proxy;->sDefaultImpl:Landroid/net/INetworkStackConnector;

    .line 265
    const/4 p0, 0x1

    return p0

    .line 267
    :cond_a
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 1

    .line 64
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 68
    nop

    .line 69
    const/4 v0, 0x0

    const/4 v1, 0x1

    const-string v2, "android.net.INetworkStackConnector"

    if-eq p1, v1, :cond_77

    const/4 v3, 0x2

    if-eq p1, v3, :cond_53

    const/4 v0, 0x3

    if-eq p1, v0, :cond_40

    const/4 v0, 0x4

    if-eq p1, v0, :cond_31

    const v0, 0xffffff

    if-eq p1, v0, :cond_23

    const v0, 0x5f4e5446

    if-eq p1, v0, :cond_1f

    .line 137
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1

    return p1

    .line 73
    :cond_1f
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 74
    return v1

    .line 130
    :cond_23
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 131
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 132
    invoke-virtual {p0}, Landroid/net/INetworkStackConnector$Stub;->getInterfaceVersion()I

    move-result p1

    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 133
    return v1

    .line 122
    :cond_31
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 124
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Landroid/net/IIpMemoryStoreCallbacks$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/IIpMemoryStoreCallbacks;

    move-result-object p1

    .line 125
    invoke-virtual {p0, p1}, Landroid/net/INetworkStackConnector$Stub;->fetchIpMemoryStore(Landroid/net/IIpMemoryStoreCallbacks;)V

    .line 126
    return v1

    .line 112
    :cond_40
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 114
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 116
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p2

    invoke-static {p2}, Landroid/net/ip/IIpClientCallbacks$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/ip/IIpClientCallbacks;

    move-result-object p2

    .line 117
    invoke-virtual {p0, p1, p2}, Landroid/net/INetworkStackConnector$Stub;->makeIpClient(Ljava/lang/String;Landroid/net/ip/IIpClientCallbacks;)V

    .line 118
    return v1

    .line 95
    :cond_53
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 97
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_66

    .line 98
    sget-object p1, Landroid/net/Network;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    move-object v0, p1

    check-cast v0, Landroid/net/Network;

    goto :goto_67

    .line 101
    :cond_66
    nop

    .line 104
    :goto_67
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 106
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p2

    invoke-static {p2}, Landroid/net/INetworkMonitorCallbacks$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/INetworkMonitorCallbacks;

    move-result-object p2

    .line 107
    invoke-virtual {p0, v0, p1, p2}, Landroid/net/INetworkStackConnector$Stub;->makeNetworkMonitor(Landroid/net/Network;Ljava/lang/String;Landroid/net/INetworkMonitorCallbacks;)V

    .line 108
    return v1

    .line 78
    :cond_77
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 80
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 82
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p3

    if-eqz p3, :cond_8e

    .line 83
    sget-object p3, Landroid/net/dhcp/DhcpServingParamsParcel;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p3, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p3

    move-object v0, p3

    check-cast v0, Landroid/net/dhcp/DhcpServingParamsParcel;

    goto :goto_8f

    .line 86
    :cond_8e
    nop

    .line 89
    :goto_8f
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p2

    invoke-static {p2}, Landroid/net/dhcp/IDhcpServerCallbacks$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/dhcp/IDhcpServerCallbacks;

    move-result-object p2

    .line 90
    invoke-virtual {p0, p1, v0, p2}, Landroid/net/INetworkStackConnector$Stub;->makeDhcpServer(Ljava/lang/String;Landroid/net/dhcp/DhcpServingParamsParcel;Landroid/net/dhcp/IDhcpServerCallbacks;)V

    .line 91
    return v1
.end method
