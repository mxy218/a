.class public abstract Landroid/net/ipmemorystore/IOnBlobRetrievedListener$Stub;
.super Landroid/os/Binder;
.source "IOnBlobRetrievedListener.java"

# interfaces
.implements Landroid/net/ipmemorystore/IOnBlobRetrievedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/ipmemorystore/IOnBlobRetrievedListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/ipmemorystore/IOnBlobRetrievedListener$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.net.ipmemorystore.IOnBlobRetrievedListener"

.field static final TRANSACTION_getInterfaceVersion:I = 0xffffff

.field static final TRANSACTION_onBlobRetrieved:I = 0x1


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 35
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 36
    const-string v0, "android.net.ipmemorystore.IOnBlobRetrievedListener"

    invoke-virtual {p0, p0, v0}, Landroid/net/ipmemorystore/IOnBlobRetrievedListener$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 37
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/net/ipmemorystore/IOnBlobRetrievedListener;
    .registers 3

    .line 44
    if-nez p0, :cond_4

    .line 45
    const/4 p0, 0x0

    return-object p0

    .line 47
    :cond_4
    const-string v0, "android.net.ipmemorystore.IOnBlobRetrievedListener"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 48
    if-eqz v0, :cond_13

    instance-of v1, v0, Landroid/net/ipmemorystore/IOnBlobRetrievedListener;

    if-eqz v1, :cond_13

    .line 49
    check-cast v0, Landroid/net/ipmemorystore/IOnBlobRetrievedListener;

    return-object v0

    .line 51
    :cond_13
    new-instance v0, Landroid/net/ipmemorystore/IOnBlobRetrievedListener$Stub$Proxy;

    invoke-direct {v0, p0}, Landroid/net/ipmemorystore/IOnBlobRetrievedListener$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method

.method public static getDefaultImpl()Landroid/net/ipmemorystore/IOnBlobRetrievedListener;
    .registers 1

    .line 180
    sget-object v0, Landroid/net/ipmemorystore/IOnBlobRetrievedListener$Stub$Proxy;->sDefaultImpl:Landroid/net/ipmemorystore/IOnBlobRetrievedListener;

    return-object v0
.end method

.method public static setDefaultImpl(Landroid/net/ipmemorystore/IOnBlobRetrievedListener;)Z
    .registers 2

    .line 173
    sget-object v0, Landroid/net/ipmemorystore/IOnBlobRetrievedListener$Stub$Proxy;->sDefaultImpl:Landroid/net/ipmemorystore/IOnBlobRetrievedListener;

    if-nez v0, :cond_a

    if-eqz p0, :cond_a

    .line 174
    sput-object p0, Landroid/net/ipmemorystore/IOnBlobRetrievedListener$Stub$Proxy;->sDefaultImpl:Landroid/net/ipmemorystore/IOnBlobRetrievedListener;

    .line 175
    const/4 p0, 0x1

    return p0

    .line 177
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

    const-string v1, "android.net.ipmemorystore.IOnBlobRetrievedListener"

    if-eq p1, v0, :cond_27

    const v2, 0xffffff

    if-eq p1, v2, :cond_19

    const v2, 0x5f4e5446

    if-eq p1, v2, :cond_15

    .line 100
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1

    return p1

    .line 64
    :cond_15
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 65
    return v0

    .line 93
    :cond_19
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 94
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 95
    invoke-virtual {p0}, Landroid/net/ipmemorystore/IOnBlobRetrievedListener$Stub;->getInterfaceVersion()I

    move-result p1

    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 96
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
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 82
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_53

    .line 83
    sget-object p3, Landroid/net/ipmemorystore/Blob;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p3, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p2

    move-object p3, p2

    check-cast p3, Landroid/net/ipmemorystore/Blob;

    goto :goto_54

    .line 86
    :cond_53
    nop

    .line 88
    :goto_54
    invoke-virtual {p0, p1, p4, v1, p3}, Landroid/net/ipmemorystore/IOnBlobRetrievedListener$Stub;->onBlobRetrieved(Landroid/net/ipmemorystore/StatusParcelable;Ljava/lang/String;Ljava/lang/String;Landroid/net/ipmemorystore/Blob;)V

    .line 89
    return v0
.end method
