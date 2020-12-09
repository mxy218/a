.class public abstract Landroid/net/INetworkStackStatusCallback$Stub;
.super Landroid/os/Binder;
.source "INetworkStackStatusCallback.java"

# interfaces
.implements Landroid/net/INetworkStackStatusCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/INetworkStackStatusCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/INetworkStackStatusCallback$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.net.INetworkStackStatusCallback"

.field static final TRANSACTION_getInterfaceVersion:I = 0xffffff

.field static final TRANSACTION_onStatusAvailable:I = 0x1


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 35
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 36
    const-string v0, "android.net.INetworkStackStatusCallback"

    invoke-virtual {p0, p0, v0}, Landroid/net/INetworkStackStatusCallback$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 37
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/net/INetworkStackStatusCallback;
    .registers 3

    .line 44
    if-nez p0, :cond_4

    .line 45
    const/4 p0, 0x0

    return-object p0

    .line 47
    :cond_4
    const-string v0, "android.net.INetworkStackStatusCallback"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 48
    if-eqz v0, :cond_13

    instance-of v1, v0, Landroid/net/INetworkStackStatusCallback;

    if-eqz v1, :cond_13

    .line 49
    check-cast v0, Landroid/net/INetworkStackStatusCallback;

    return-object v0

    .line 51
    :cond_13
    new-instance v0, Landroid/net/INetworkStackStatusCallback$Stub$Proxy;

    invoke-direct {v0, p0}, Landroid/net/INetworkStackStatusCallback$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method

.method public static getDefaultImpl()Landroid/net/INetworkStackStatusCallback;
    .registers 1

    .line 149
    sget-object v0, Landroid/net/INetworkStackStatusCallback$Stub$Proxy;->sDefaultImpl:Landroid/net/INetworkStackStatusCallback;

    return-object v0
.end method

.method public static setDefaultImpl(Landroid/net/INetworkStackStatusCallback;)Z
    .registers 2

    .line 142
    sget-object v0, Landroid/net/INetworkStackStatusCallback$Stub$Proxy;->sDefaultImpl:Landroid/net/INetworkStackStatusCallback;

    if-nez v0, :cond_a

    if-eqz p0, :cond_a

    .line 143
    sput-object p0, Landroid/net/INetworkStackStatusCallback$Stub$Proxy;->sDefaultImpl:Landroid/net/INetworkStackStatusCallback;

    .line 144
    const/4 p0, 0x1

    return p0

    .line 146
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

    const-string v1, "android.net.INetworkStackStatusCallback"

    if-eq p1, v0, :cond_27

    const v2, 0xffffff

    if-eq p1, v2, :cond_19

    const v2, 0x5f4e5446

    if-eq p1, v2, :cond_15

    .line 84
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1

    return p1

    .line 64
    :cond_15
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 65
    return v0

    .line 77
    :cond_19
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 78
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 79
    invoke-virtual {p0}, Landroid/net/INetworkStackStatusCallback$Stub;->getInterfaceVersion()I

    move-result p1

    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 80
    return v0

    .line 69
    :cond_27
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 71
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 72
    invoke-virtual {p0, p1}, Landroid/net/INetworkStackStatusCallback$Stub;->onStatusAvailable(I)V

    .line 73
    return v0
.end method
