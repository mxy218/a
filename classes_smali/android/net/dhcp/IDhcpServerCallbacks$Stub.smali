.class public abstract Landroid/net/dhcp/IDhcpServerCallbacks$Stub;
.super Landroid/os/Binder;
.source "IDhcpServerCallbacks.java"

# interfaces
.implements Landroid/net/dhcp/IDhcpServerCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/dhcp/IDhcpServerCallbacks;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/dhcp/IDhcpServerCallbacks$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.net.dhcp.IDhcpServerCallbacks"

.field static final TRANSACTION_getInterfaceVersion:I = 0xffffff

.field static final TRANSACTION_onDhcpServerCreated:I = 0x1


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 35
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 36
    const-string v0, "android.net.dhcp.IDhcpServerCallbacks"

    invoke-virtual {p0, p0, v0}, Landroid/net/dhcp/IDhcpServerCallbacks$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 37
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/net/dhcp/IDhcpServerCallbacks;
    .registers 3

    .line 44
    if-nez p0, :cond_4

    .line 45
    const/4 p0, 0x0

    return-object p0

    .line 47
    :cond_4
    const-string v0, "android.net.dhcp.IDhcpServerCallbacks"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 48
    if-eqz v0, :cond_13

    instance-of v1, v0, Landroid/net/dhcp/IDhcpServerCallbacks;

    if-eqz v1, :cond_13

    .line 49
    check-cast v0, Landroid/net/dhcp/IDhcpServerCallbacks;

    return-object v0

    .line 51
    :cond_13
    new-instance v0, Landroid/net/dhcp/IDhcpServerCallbacks$Stub$Proxy;

    invoke-direct {v0, p0}, Landroid/net/dhcp/IDhcpServerCallbacks$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method

.method public static getDefaultImpl()Landroid/net/dhcp/IDhcpServerCallbacks;
    .registers 1

    .line 152
    sget-object v0, Landroid/net/dhcp/IDhcpServerCallbacks$Stub$Proxy;->sDefaultImpl:Landroid/net/dhcp/IDhcpServerCallbacks;

    return-object v0
.end method

.method public static setDefaultImpl(Landroid/net/dhcp/IDhcpServerCallbacks;)Z
    .registers 2

    .line 145
    sget-object v0, Landroid/net/dhcp/IDhcpServerCallbacks$Stub$Proxy;->sDefaultImpl:Landroid/net/dhcp/IDhcpServerCallbacks;

    if-nez v0, :cond_a

    if-eqz p0, :cond_a

    .line 146
    sput-object p0, Landroid/net/dhcp/IDhcpServerCallbacks$Stub$Proxy;->sDefaultImpl:Landroid/net/dhcp/IDhcpServerCallbacks;

    .line 147
    const/4 p0, 0x1

    return p0

    .line 149
    :cond_a
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 1

    .line 55
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 59
    nop

    .line 60
    const/4 v0, 0x1

    const-string v1, "android.net.dhcp.IDhcpServerCallbacks"

    if-eq p1, v0, :cond_27

    const v2, 0xffffff

    if-eq p1, v2, :cond_19

    const v2, 0x5f4e5446

    if-eq p1, v2, :cond_15

    .line 86
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1

    return p1

    .line 64
    :cond_15
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 65
    return v0

    .line 79
    :cond_19
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 80
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 81
    invoke-virtual {p0}, Landroid/net/dhcp/IDhcpServerCallbacks$Stub;->getInterfaceVersion()I

    move-result p1

    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 82
    return v0

    .line 69
    :cond_27
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 71
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 73
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p2

    invoke-static {p2}, Landroid/net/dhcp/IDhcpServer$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/dhcp/IDhcpServer;

    move-result-object p2

    .line 74
    invoke-virtual {p0, p1, p2}, Landroid/net/dhcp/IDhcpServerCallbacks$Stub;->onDhcpServerCreated(ILandroid/net/dhcp/IDhcpServer;)V

    .line 75
    return v0
.end method
