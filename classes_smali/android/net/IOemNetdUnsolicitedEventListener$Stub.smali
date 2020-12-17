.class public abstract Landroid/net/IOemNetdUnsolicitedEventListener$Stub;
.super Landroid/os/Binder;
.source "IOemNetdUnsolicitedEventListener.java"

# interfaces
.implements Landroid/net/IOemNetdUnsolicitedEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/IOemNetdUnsolicitedEventListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/IOemNetdUnsolicitedEventListener$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.net.IOemNetdUnsolicitedEventListener"

.field static final TRANSACTION_getInterfaceVersion:I = 0xffffff

.field static final TRANSACTION_onAppNetworkPolicyRequested:I = 0x2

.field static final TRANSACTION_onRegistered:I = 0x1


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 39
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 40
    const-string v0, "android.net.IOemNetdUnsolicitedEventListener"

    invoke-virtual {p0, p0, v0}, Landroid/net/IOemNetdUnsolicitedEventListener$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 41
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/net/IOemNetdUnsolicitedEventListener;
    .registers 3
    .param p0, "obj"  # Landroid/os/IBinder;

    .line 48
    if-nez p0, :cond_4

    .line 49
    const/4 v0, 0x0

    return-object v0

    .line 51
    :cond_4
    const-string v0, "android.net.IOemNetdUnsolicitedEventListener"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 52
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Landroid/net/IOemNetdUnsolicitedEventListener;

    if-eqz v1, :cond_14

    .line 53
    move-object v1, v0

    check-cast v1, Landroid/net/IOemNetdUnsolicitedEventListener;

    return-object v1

    .line 55
    :cond_14
    new-instance v1, Landroid/net/IOemNetdUnsolicitedEventListener$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/net/IOemNetdUnsolicitedEventListener$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static getDefaultImpl()Landroid/net/IOemNetdUnsolicitedEventListener;
    .registers 1

    .line 186
    sget-object v0, Landroid/net/IOemNetdUnsolicitedEventListener$Stub$Proxy;->sDefaultImpl:Landroid/net/IOemNetdUnsolicitedEventListener;

    return-object v0
.end method

.method public static setDefaultImpl(Landroid/net/IOemNetdUnsolicitedEventListener;)Z
    .registers 2
    .param p0, "impl"  # Landroid/net/IOemNetdUnsolicitedEventListener;

    .line 179
    sget-object v0, Landroid/net/IOemNetdUnsolicitedEventListener$Stub$Proxy;->sDefaultImpl:Landroid/net/IOemNetdUnsolicitedEventListener;

    if-nez v0, :cond_a

    if-eqz p0, :cond_a

    .line 180
    sput-object p0, Landroid/net/IOemNetdUnsolicitedEventListener$Stub$Proxy;->sDefaultImpl:Landroid/net/IOemNetdUnsolicitedEventListener;

    .line 181
    const/4 v0, 0x1

    return v0

    .line 183
    :cond_a
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 1

    .line 59
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 9
    .param p1, "code"  # I
    .param p2, "data"  # Landroid/os/Parcel;
    .param p3, "reply"  # Landroid/os/Parcel;
    .param p4, "flags"  # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 63
    const-string v0, "android.net.IOemNetdUnsolicitedEventListener"

    .line 64
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    if-eq p1, v1, :cond_3b

    const/4 v2, 0x2

    if-eq p1, v2, :cond_29

    const v2, 0xffffff

    if-eq p1, v2, :cond_1b

    const v2, 0x5f4e5446

    if-eq p1, v2, :cond_17

    .line 97
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 68
    :cond_17
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 69
    return v1

    .line 90
    :cond_1b
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 91
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 92
    invoke-virtual {p0}, Landroid/net/IOemNetdUnsolicitedEventListener$Stub;->getInterfaceVersion()I

    move-result v2

    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 93
    return v1

    .line 80
    :cond_29
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 82
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 83
    .local v2, "_arg0":I
    invoke-virtual {p0, v2}, Landroid/net/IOemNetdUnsolicitedEventListener$Stub;->onAppNetworkPolicyRequested(I)I

    move-result v3

    .line 84
    .local v3, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 85
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 86
    return v1

    .line 73
    .end local v2  # "_arg0":I
    .end local v3  # "_result":I
    :cond_3b
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 74
    invoke-virtual {p0}, Landroid/net/IOemNetdUnsolicitedEventListener$Stub;->onRegistered()V

    .line 75
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 76
    return v1
.end method
