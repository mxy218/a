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

.field static final TRANSACTION_notifyPortalLoginTimeout:I = 0x6

.field static final TRANSACTION_notifyPrivateDnsConfigResolved:I = 0x3

.field static final TRANSACTION_onNetworkMonitorCreated:I = 0x1

.field static final TRANSACTION_showProvisioningNotification:I = 0x4


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 50
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 51
    const-string v0, "android.net.INetworkMonitorCallbacks"

    invoke-virtual {p0, p0, v0}, Landroid/net/INetworkMonitorCallbacks$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 52
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/net/INetworkMonitorCallbacks;
    .registers 3
    .param p0, "obj"  # Landroid/os/IBinder;

    .line 59
    if-nez p0, :cond_4

    .line 60
    const/4 v0, 0x0

    return-object v0

    .line 62
    :cond_4
    const-string v0, "android.net.INetworkMonitorCallbacks"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 63
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Landroid/net/INetworkMonitorCallbacks;

    if-eqz v1, :cond_14

    .line 64
    move-object v1, v0

    check-cast v1, Landroid/net/INetworkMonitorCallbacks;

    return-object v1

    .line 66
    :cond_14
    new-instance v1, Landroid/net/INetworkMonitorCallbacks$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/net/INetworkMonitorCallbacks$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static getDefaultImpl()Landroid/net/INetworkMonitorCallbacks;
    .registers 1

    .line 300
    sget-object v0, Landroid/net/INetworkMonitorCallbacks$Stub$Proxy;->sDefaultImpl:Landroid/net/INetworkMonitorCallbacks;

    return-object v0
.end method

.method public static setDefaultImpl(Landroid/net/INetworkMonitorCallbacks;)Z
    .registers 2
    .param p0, "impl"  # Landroid/net/INetworkMonitorCallbacks;

    .line 293
    sget-object v0, Landroid/net/INetworkMonitorCallbacks$Stub$Proxy;->sDefaultImpl:Landroid/net/INetworkMonitorCallbacks;

    if-nez v0, :cond_a

    if-eqz p0, :cond_a

    .line 294
    sput-object p0, Landroid/net/INetworkMonitorCallbacks$Stub$Proxy;->sDefaultImpl:Landroid/net/INetworkMonitorCallbacks;

    .line 295
    const/4 v0, 0x1

    return v0

    .line 297
    :cond_a
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 1

    .line 70
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

    .line 74
    const-string v0, "android.net.INetworkMonitorCallbacks"

    .line 75
    .local v0, "descriptor":Ljava/lang/String;
    const v1, 0xffffff

    const/4 v2, 0x1

    if-eq p1, v1, :cond_6b

    const v1, 0x5f4e5446

    if-eq p1, v1, :cond_67

    packed-switch p1, :pswitch_data_7a

    .line 144
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 131
    :pswitch_15  #0x6
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 132
    invoke-virtual {p0}, Landroid/net/INetworkMonitorCallbacks$Stub;->notifyPortalLoginTimeout()V

    .line 133
    return v2

    .line 125
    :pswitch_1c  #0x5
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 126
    invoke-virtual {p0}, Landroid/net/INetworkMonitorCallbacks$Stub;->hideProvisioningNotification()V

    .line 127
    return v2

    .line 115
    :pswitch_23  #0x4
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 117
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 119
    .local v1, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 120
    .local v3, "_arg1":Ljava/lang/String;
    invoke-virtual {p0, v1, v3}, Landroid/net/INetworkMonitorCallbacks$Stub;->showProvisioningNotification(Ljava/lang/String;Ljava/lang/String;)V

    .line 121
    return v2

    .line 102
    .end local v1  # "_arg0":Ljava/lang/String;
    .end local v3  # "_arg1":Ljava/lang/String;
    :pswitch_32  #0x3
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 104
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_44

    .line 105
    sget-object v1, Landroid/net/PrivateDnsConfigParcel;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/PrivateDnsConfigParcel;

    .local v1, "_arg0":Landroid/net/PrivateDnsConfigParcel;
    goto :goto_45

    .line 108
    .end local v1  # "_arg0":Landroid/net/PrivateDnsConfigParcel;
    :cond_44
    const/4 v1, 0x0

    .line 110
    .restart local v1  # "_arg0":Landroid/net/PrivateDnsConfigParcel;
    :goto_45
    invoke-virtual {p0, v1}, Landroid/net/INetworkMonitorCallbacks$Stub;->notifyPrivateDnsConfigResolved(Landroid/net/PrivateDnsConfigParcel;)V

    .line 111
    return v2

    .line 92
    .end local v1  # "_arg0":Landroid/net/PrivateDnsConfigParcel;
    :pswitch_49  #0x2
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 94
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 96
    .local v1, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 97
    .restart local v3  # "_arg1":Ljava/lang/String;
    invoke-virtual {p0, v1, v3}, Landroid/net/INetworkMonitorCallbacks$Stub;->notifyNetworkTested(ILjava/lang/String;)V

    .line 98
    return v2

    .line 84
    .end local v1  # "_arg0":I
    .end local v3  # "_arg1":Ljava/lang/String;
    :pswitch_58  #0x1
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 86
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/net/INetworkMonitor$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/INetworkMonitor;

    move-result-object v1

    .line 87
    .local v1, "_arg0":Landroid/net/INetworkMonitor;
    invoke-virtual {p0, v1}, Landroid/net/INetworkMonitorCallbacks$Stub;->onNetworkMonitorCreated(Landroid/net/INetworkMonitor;)V

    .line 88
    return v2

    .line 79
    .end local v1  # "_arg0":Landroid/net/INetworkMonitor;
    :cond_67
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 80
    return v2

    .line 137
    :cond_6b
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 138
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 139
    invoke-virtual {p0}, Landroid/net/INetworkMonitorCallbacks$Stub;->getInterfaceVersion()I

    move-result v1

    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 140
    return v2

    nop

    :pswitch_data_7a
    .packed-switch 0x1
        :pswitch_58  #00000001
        :pswitch_49  #00000002
        :pswitch_32  #00000003
        :pswitch_23  #00000004
        :pswitch_1c  #00000005
        :pswitch_15  #00000006
    .end packed-switch
.end method
