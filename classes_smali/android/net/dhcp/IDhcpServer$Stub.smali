.class public abstract Landroid/net/dhcp/IDhcpServer$Stub;
.super Landroid/os/Binder;
.source "IDhcpServer.java"

# interfaces
.implements Landroid/net/dhcp/IDhcpServer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/dhcp/IDhcpServer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/dhcp/IDhcpServer$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.net.dhcp.IDhcpServer"

.field static final TRANSACTION_getInterfaceVersion:I = 0xffffff

.field static final TRANSACTION_start:I = 0x1

.field static final TRANSACTION_stop:I = 0x3

.field static final TRANSACTION_updateParams:I = 0x2


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 41
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 42
    const-string v0, "android.net.dhcp.IDhcpServer"

    invoke-virtual {p0, p0, v0}, Landroid/net/dhcp/IDhcpServer$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 43
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/net/dhcp/IDhcpServer;
    .registers 3

    .line 50
    if-nez p0, :cond_4

    .line 51
    const/4 p0, 0x0

    return-object p0

    .line 53
    :cond_4
    const-string v0, "android.net.dhcp.IDhcpServer"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 54
    if-eqz v0, :cond_13

    instance-of v1, v0, Landroid/net/dhcp/IDhcpServer;

    if-eqz v1, :cond_13

    .line 55
    check-cast v0, Landroid/net/dhcp/IDhcpServer;

    return-object v0

    .line 57
    :cond_13
    new-instance v0, Landroid/net/dhcp/IDhcpServer$Stub$Proxy;

    invoke-direct {v0, p0}, Landroid/net/dhcp/IDhcpServer$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method

.method public static getDefaultImpl()Landroid/net/dhcp/IDhcpServer;
    .registers 1

    .line 219
    sget-object v0, Landroid/net/dhcp/IDhcpServer$Stub$Proxy;->sDefaultImpl:Landroid/net/dhcp/IDhcpServer;

    return-object v0
.end method

.method public static setDefaultImpl(Landroid/net/dhcp/IDhcpServer;)Z
    .registers 2

    .line 212
    sget-object v0, Landroid/net/dhcp/IDhcpServer$Stub$Proxy;->sDefaultImpl:Landroid/net/dhcp/IDhcpServer;

    if-nez v0, :cond_a

    if-eqz p0, :cond_a

    .line 213
    sput-object p0, Landroid/net/dhcp/IDhcpServer$Stub$Proxy;->sDefaultImpl:Landroid/net/dhcp/IDhcpServer;

    .line 214
    const/4 p0, 0x1

    return p0

    .line 216
    :cond_a
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 1

    .line 61
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 65
    nop

    .line 66
    const/4 v0, 0x1

    const-string v1, "android.net.dhcp.IDhcpServer"

    if-eq p1, v0, :cond_5b

    const/4 v2, 0x2

    if-eq p1, v2, :cond_3c

    const/4 v2, 0x3

    if-eq p1, v2, :cond_2d

    const v2, 0xffffff

    if-eq p1, v2, :cond_1f

    const v2, 0x5f4e5446

    if-eq p1, v2, :cond_1b

    .line 113
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1

    return p1

    .line 70
    :cond_1b
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 71
    return v0

    .line 106
    :cond_1f
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 107
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 108
    invoke-virtual {p0}, Landroid/net/dhcp/IDhcpServer$Stub;->getInterfaceVersion()I

    move-result p1

    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 109
    return v0

    .line 98
    :cond_2d
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 100
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Landroid/net/INetworkStackStatusCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/INetworkStackStatusCallback;

    move-result-object p1

    .line 101
    invoke-virtual {p0, p1}, Landroid/net/dhcp/IDhcpServer$Stub;->stop(Landroid/net/INetworkStackStatusCallback;)V

    .line 102
    return v0

    .line 83
    :cond_3c
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 85
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_4e

    .line 86
    sget-object p1, Landroid/net/dhcp/DhcpServingParamsParcel;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/net/dhcp/DhcpServingParamsParcel;

    goto :goto_4f

    .line 89
    :cond_4e
    const/4 p1, 0x0

    .line 92
    :goto_4f
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p2

    invoke-static {p2}, Landroid/net/INetworkStackStatusCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/INetworkStackStatusCallback;

    move-result-object p2

    .line 93
    invoke-virtual {p0, p1, p2}, Landroid/net/dhcp/IDhcpServer$Stub;->updateParams(Landroid/net/dhcp/DhcpServingParamsParcel;Landroid/net/INetworkStackStatusCallback;)V

    .line 94
    return v0

    .line 75
    :cond_5b
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 77
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Landroid/net/INetworkStackStatusCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/INetworkStackStatusCallback;

    move-result-object p1

    .line 78
    invoke-virtual {p0, p1}, Landroid/net/dhcp/IDhcpServer$Stub;->start(Landroid/net/INetworkStackStatusCallback;)V

    .line 79
    return v0
.end method
