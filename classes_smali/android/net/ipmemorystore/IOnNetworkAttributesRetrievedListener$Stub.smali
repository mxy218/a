.class public abstract Landroid/net/ipmemorystore/IOnNetworkAttributesRetrievedListener$Stub;
.super Landroid/os/Binder;
.source "IOnNetworkAttributesRetrievedListener.java"

# interfaces
.implements Landroid/net/ipmemorystore/IOnNetworkAttributesRetrievedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/ipmemorystore/IOnNetworkAttributesRetrievedListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/ipmemorystore/IOnNetworkAttributesRetrievedListener$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.net.ipmemorystore.IOnNetworkAttributesRetrievedListener"

.field static final TRANSACTION_getInterfaceVersion:I = 0xffffff

.field static final TRANSACTION_onNetworkAttributesRetrieved:I = 0x1


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 35
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 36
    const-string v0, "android.net.ipmemorystore.IOnNetworkAttributesRetrievedListener"

    invoke-virtual {p0, p0, v0}, Landroid/net/ipmemorystore/IOnNetworkAttributesRetrievedListener$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 37
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/net/ipmemorystore/IOnNetworkAttributesRetrievedListener;
    .registers 3

    .line 44
    if-nez p0, :cond_4

    .line 45
    const/4 p0, 0x0

    return-object p0

    .line 47
    :cond_4
    const-string v0, "android.net.ipmemorystore.IOnNetworkAttributesRetrievedListener"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 48
    if-eqz v0, :cond_13

    instance-of v1, v0, Landroid/net/ipmemorystore/IOnNetworkAttributesRetrievedListener;

    if-eqz v1, :cond_13

    .line 49
    check-cast v0, Landroid/net/ipmemorystore/IOnNetworkAttributesRetrievedListener;

    return-object v0

    .line 51
    :cond_13
    new-instance v0, Landroid/net/ipmemorystore/IOnNetworkAttributesRetrievedListener$Stub$Proxy;

    invoke-direct {v0, p0}, Landroid/net/ipmemorystore/IOnNetworkAttributesRetrievedListener$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method

.method public static getDefaultImpl()Landroid/net/ipmemorystore/IOnNetworkAttributesRetrievedListener;
    .registers 1

    .line 177
    sget-object v0, Landroid/net/ipmemorystore/IOnNetworkAttributesRetrievedListener$Stub$Proxy;->sDefaultImpl:Landroid/net/ipmemorystore/IOnNetworkAttributesRetrievedListener;

    return-object v0
.end method

.method public static setDefaultImpl(Landroid/net/ipmemorystore/IOnNetworkAttributesRetrievedListener;)Z
    .registers 2

    .line 170
    sget-object v0, Landroid/net/ipmemorystore/IOnNetworkAttributesRetrievedListener$Stub$Proxy;->sDefaultImpl:Landroid/net/ipmemorystore/IOnNetworkAttributesRetrievedListener;

    if-nez v0, :cond_a

    if-eqz p0, :cond_a

    .line 171
    sput-object p0, Landroid/net/ipmemorystore/IOnNetworkAttributesRetrievedListener$Stub$Proxy;->sDefaultImpl:Landroid/net/ipmemorystore/IOnNetworkAttributesRetrievedListener;

    .line 172
    const/4 p0, 0x1

    return p0

    .line 174
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

    const-string v1, "android.net.ipmemorystore.IOnNetworkAttributesRetrievedListener"

    if-eq p1, v0, :cond_27

    const v2, 0xffffff

    if-eq p1, v2, :cond_19

    const v2, 0x5f4e5446

    if-eq p1, v2, :cond_15

    .line 98
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1

    return p1

    .line 64
    :cond_15
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 65
    return v0

    .line 91
    :cond_19
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 92
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 93
    invoke-virtual {p0}, Landroid/net/ipmemorystore/IOnNetworkAttributesRetrievedListener$Stub;->getInterfaceVersion()I

    move-result p1

    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 94
    return v0

    .line 69
    :cond_27
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 71
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    const/4 p3, 0x0

    if-eqz p1, :cond_3a

    .line 72
    sget-object p1, Landroid/net/ipmemorystore/StatusParcelable;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/net/ipmemorystore/StatusParcelable;

    goto :goto_3b

    .line 75
    :cond_3a
    move-object p1, p3

    .line 78
    :goto_3b
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p4

    .line 80
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_4f

    .line 81
    sget-object p3, Landroid/net/ipmemorystore/NetworkAttributesParcelable;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p3, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p2

    move-object p3, p2

    check-cast p3, Landroid/net/ipmemorystore/NetworkAttributesParcelable;

    goto :goto_50

    .line 84
    :cond_4f
    nop

    .line 86
    :goto_50
    invoke-virtual {p0, p1, p4, p3}, Landroid/net/ipmemorystore/IOnNetworkAttributesRetrievedListener$Stub;->onNetworkAttributesRetrieved(Landroid/net/ipmemorystore/StatusParcelable;Ljava/lang/String;Landroid/net/ipmemorystore/NetworkAttributesParcelable;)V

    .line 87
    return v0
.end method
