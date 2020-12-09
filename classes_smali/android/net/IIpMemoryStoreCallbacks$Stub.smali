.class public abstract Landroid/net/IIpMemoryStoreCallbacks$Stub;
.super Landroid/os/Binder;
.source "IIpMemoryStoreCallbacks.java"

# interfaces
.implements Landroid/net/IIpMemoryStoreCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/IIpMemoryStoreCallbacks;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/IIpMemoryStoreCallbacks$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.net.IIpMemoryStoreCallbacks"

.field static final TRANSACTION_getInterfaceVersion:I = 0xffffff

.field static final TRANSACTION_onIpMemoryStoreFetched:I = 0x1


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 35
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 36
    const-string v0, "android.net.IIpMemoryStoreCallbacks"

    invoke-virtual {p0, p0, v0}, Landroid/net/IIpMemoryStoreCallbacks$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 37
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/net/IIpMemoryStoreCallbacks;
    .registers 3

    .line 44
    if-nez p0, :cond_4

    .line 45
    const/4 p0, 0x0

    return-object p0

    .line 47
    :cond_4
    const-string v0, "android.net.IIpMemoryStoreCallbacks"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 48
    if-eqz v0, :cond_13

    instance-of v1, v0, Landroid/net/IIpMemoryStoreCallbacks;

    if-eqz v1, :cond_13

    .line 49
    check-cast v0, Landroid/net/IIpMemoryStoreCallbacks;

    return-object v0

    .line 51
    :cond_13
    new-instance v0, Landroid/net/IIpMemoryStoreCallbacks$Stub$Proxy;

    invoke-direct {v0, p0}, Landroid/net/IIpMemoryStoreCallbacks$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method

.method public static getDefaultImpl()Landroid/net/IIpMemoryStoreCallbacks;
    .registers 1

    .line 149
    sget-object v0, Landroid/net/IIpMemoryStoreCallbacks$Stub$Proxy;->sDefaultImpl:Landroid/net/IIpMemoryStoreCallbacks;

    return-object v0
.end method

.method public static setDefaultImpl(Landroid/net/IIpMemoryStoreCallbacks;)Z
    .registers 2

    .line 142
    sget-object v0, Landroid/net/IIpMemoryStoreCallbacks$Stub$Proxy;->sDefaultImpl:Landroid/net/IIpMemoryStoreCallbacks;

    if-nez v0, :cond_a

    if-eqz p0, :cond_a

    .line 143
    sput-object p0, Landroid/net/IIpMemoryStoreCallbacks$Stub$Proxy;->sDefaultImpl:Landroid/net/IIpMemoryStoreCallbacks;

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

    const-string v1, "android.net.IIpMemoryStoreCallbacks"

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
    invoke-virtual {p0}, Landroid/net/IIpMemoryStoreCallbacks$Stub;->getInterfaceVersion()I

    move-result p1

    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 80
    return v0

    .line 69
    :cond_27
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 71
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Landroid/net/IIpMemoryStore$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/IIpMemoryStore;

    move-result-object p1

    .line 72
    invoke-virtual {p0, p1}, Landroid/net/IIpMemoryStoreCallbacks$Stub;->onIpMemoryStoreFetched(Landroid/net/IIpMemoryStore;)V

    .line 73
    return v0
.end method
