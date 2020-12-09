.class public abstract Landroid/net/ipmemorystore/IOnStatusListener$Stub;
.super Landroid/os/Binder;
.source "IOnStatusListener.java"

# interfaces
.implements Landroid/net/ipmemorystore/IOnStatusListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/ipmemorystore/IOnStatusListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/ipmemorystore/IOnStatusListener$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.net.ipmemorystore.IOnStatusListener"

.field static final TRANSACTION_getInterfaceVersion:I = 0xffffff

.field static final TRANSACTION_onComplete:I = 0x1


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 35
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 36
    const-string v0, "android.net.ipmemorystore.IOnStatusListener"

    invoke-virtual {p0, p0, v0}, Landroid/net/ipmemorystore/IOnStatusListener$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 37
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/net/ipmemorystore/IOnStatusListener;
    .registers 3

    .line 44
    if-nez p0, :cond_4

    .line 45
    const/4 p0, 0x0

    return-object p0

    .line 47
    :cond_4
    const-string v0, "android.net.ipmemorystore.IOnStatusListener"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 48
    if-eqz v0, :cond_13

    instance-of v1, v0, Landroid/net/ipmemorystore/IOnStatusListener;

    if-eqz v1, :cond_13

    .line 49
    check-cast v0, Landroid/net/ipmemorystore/IOnStatusListener;

    return-object v0

    .line 51
    :cond_13
    new-instance v0, Landroid/net/ipmemorystore/IOnStatusListener$Stub$Proxy;

    invoke-direct {v0, p0}, Landroid/net/ipmemorystore/IOnStatusListener$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method

.method public static getDefaultImpl()Landroid/net/ipmemorystore/IOnStatusListener;
    .registers 1

    .line 160
    sget-object v0, Landroid/net/ipmemorystore/IOnStatusListener$Stub$Proxy;->sDefaultImpl:Landroid/net/ipmemorystore/IOnStatusListener;

    return-object v0
.end method

.method public static setDefaultImpl(Landroid/net/ipmemorystore/IOnStatusListener;)Z
    .registers 2

    .line 153
    sget-object v0, Landroid/net/ipmemorystore/IOnStatusListener$Stub$Proxy;->sDefaultImpl:Landroid/net/ipmemorystore/IOnStatusListener;

    if-nez v0, :cond_a

    if-eqz p0, :cond_a

    .line 154
    sput-object p0, Landroid/net/ipmemorystore/IOnStatusListener$Stub$Proxy;->sDefaultImpl:Landroid/net/ipmemorystore/IOnStatusListener;

    .line 155
    const/4 p0, 0x1

    return p0

    .line 157
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

    const-string v1, "android.net.ipmemorystore.IOnStatusListener"

    if-eq p1, v0, :cond_27

    const v2, 0xffffff

    if-eq p1, v2, :cond_19

    const v2, 0x5f4e5446

    if-eq p1, v2, :cond_15

    .line 89
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1

    return p1

    .line 64
    :cond_15
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 65
    return v0

    .line 82
    :cond_19
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 83
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 84
    invoke-virtual {p0}, Landroid/net/ipmemorystore/IOnStatusListener$Stub;->getInterfaceVersion()I

    move-result p1

    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 85
    return v0

    .line 69
    :cond_27
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 71
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_39

    .line 72
    sget-object p1, Landroid/net/ipmemorystore/StatusParcelable;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/net/ipmemorystore/StatusParcelable;

    goto :goto_3a

    .line 75
    :cond_39
    const/4 p1, 0x0

    .line 77
    :goto_3a
    invoke-virtual {p0, p1}, Landroid/net/ipmemorystore/IOnStatusListener$Stub;->onComplete(Landroid/net/ipmemorystore/StatusParcelable;)V

    .line 78
    return v0
.end method
