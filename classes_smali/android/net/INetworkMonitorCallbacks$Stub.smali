.class public abstract Landroid/net/INetworkMonitorCallbacks$Stub;
.super Landroid/os/Binder;
.source "INetworkMonitorCallbacks.java"

# interfaces
.implements Landroid/net/INetworkMonitorCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/INetworkMonitorCallbacks;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/INetworkMonitorCallbacks$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.net.INetworkMonitorCallbacks"

.field static final TRANSACTION_getInterfaceVersion:I = 0xffffff

.field static final TRANSACTION_hideProvisioningNotification:I = 0x5

.field static final TRANSACTION_notifyNetworkTested:I = 0x2

.field static final TRANSACTION_notifyPrivateDnsConfigResolved:I = 0x3

.field static final TRANSACTION_onNetworkMonitorCreated:I = 0x1

.field static final TRANSACTION_showProvisioningNotification:I = 0x4


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 47
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 48
    const-string v0, "android.net.INetworkMonitorCallbacks"

    invoke-virtual {p0, p0, v0}, Landroid/net/INetworkMonitorCallbacks$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 49
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/net/INetworkMonitorCallbacks;
    .registers 3

    .line 56
    if-nez p0, :cond_4

    .line 57
    const/4 p0, 0x0

    return-object p0

    .line 59
    :cond_4
    const-string v0, "android.net.INetworkMonitorCallbacks"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 60
    if-eqz v0, :cond_13

    instance-of v1, v0, Landroid/net/INetworkMonitorCallbacks;

    if-eqz v1, :cond_13

    .line 61
    check-cast v0, Landroid/net/INetworkMonitorCallbacks;

    return-object v0

    .line 63
    :cond_13
    new-instance v0, Landroid/net/INetworkMonitorCallbacks$Stub$Proxy;

    invoke-direct {v0, p0}, Landroid/net/INetworkMonitorCallbacks$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method

.method public static getDefaultImpl()Landroid/net/INetworkMonitorCallbacks;
    .registers 1

    .line 275
    sget-object v0, Landroid/net/INetworkMonitorCallbacks$Stub$Proxy;->sDefaultImpl:Landroid/net/INetworkMonitorCallbacks;

    return-object v0
.end method

.method public static setDefaultImpl(Landroid/net/INetworkMonitorCallbacks;)Z
    .registers 2

    .line 268
    sget-object v0, Landroid/net/INetworkMonitorCallbacks$Stub$Proxy;->sDefaultImpl:Landroid/net/INetworkMonitorCallbacks;

    if-nez v0, :cond_a

    if-eqz p0, :cond_a

    .line 269
    sput-object p0, Landroid/net/INetworkMonitorCallbacks$Stub$Proxy;->sDefaultImpl:Landroid/net/INetworkMonitorCallbacks;

    .line 270
    const/4 p0, 0x1

    return p0

    .line 272
    :cond_a
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 1

    .line 67
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 71
    nop

    .line 72
    const/4 v0, 0x1

    const-string v1, "android.net.INetworkMonitorCallbacks"

    if-eq p1, v0, :cond_6f

    const/4 v2, 0x2

    if-eq p1, v2, :cond_60

    const/4 v2, 0x3

    if-eq p1, v2, :cond_49

    const/4 v2, 0x4

    if-eq p1, v2, :cond_3a

    const/4 v2, 0x5

    if-eq p1, v2, :cond_33

    const v2, 0xffffff

    if-eq p1, v2, :cond_25

    const v2, 0x5f4e5446

    if-eq p1, v2, :cond_21

    .line 135
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1

    return p1

    .line 76
    :cond_21
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 77
    return v0

    .line 128
    :cond_25
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 129
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 130
    invoke-virtual {p0}, Landroid/net/INetworkMonitorCallbacks$Stub;->getInterfaceVersion()I

    move-result p1

    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 131
    return v0

    .line 122
    :cond_33
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 123
    invoke-virtual {p0}, Landroid/net/INetworkMonitorCallbacks$Stub;->hideProvisioningNotification()V

    .line 124
    return v0

    .line 112
    :cond_3a
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 114
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 116
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p2

    .line 117
    invoke-virtual {p0, p1, p2}, Landroid/net/INetworkMonitorCallbacks$Stub;->showProvisioningNotification(Ljava/lang/String;Ljava/lang/String;)V

    .line 118
    return v0

    .line 99
    :cond_49
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 101
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_5b

    .line 102
    sget-object p1, Landroid/net/PrivateDnsConfigParcel;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/net/PrivateDnsConfigParcel;

    goto :goto_5c

    .line 105
    :cond_5b
    const/4 p1, 0x0

    .line 107
    :goto_5c
    invoke-virtual {p0, p1}, Landroid/net/INetworkMonitorCallbacks$Stub;->notifyPrivateDnsConfigResolved(Landroid/net/PrivateDnsConfigParcel;)V

    .line 108
    return v0

    .line 89
    :cond_60
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 91
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 93
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p2

    .line 94
    invoke-virtual {p0, p1, p2}, Landroid/net/INetworkMonitorCallbacks$Stub;->notifyNetworkTested(ILjava/lang/String;)V

    .line 95
    return v0

    .line 81
    :cond_6f
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 83
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Landroid/net/INetworkMonitor$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/INetworkMonitor;

    move-result-object p1

    .line 84
    invoke-virtual {p0, p1}, Landroid/net/INetworkMonitorCallbacks$Stub;->onNetworkMonitorCreated(Landroid/net/INetworkMonitor;)V

    .line 85
    return v0
.end method
