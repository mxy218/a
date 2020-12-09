.class public abstract Landroid/net/INetworkMonitor$Stub;
.super Landroid/os/Binder;
.source "INetworkMonitor.java"

# interfaces
.implements Landroid/net/INetworkMonitor;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/INetworkMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/INetworkMonitor$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.net.INetworkMonitor"

.field static final TRANSACTION_forceReevaluation:I = 0x5

.field static final TRANSACTION_getInterfaceVersion:I = 0xffffff

.field static final TRANSACTION_launchCaptivePortalApp:I = 0x2

.field static final TRANSACTION_notifyCaptivePortalAppFinished:I = 0x3

.field static final TRANSACTION_notifyDnsResponse:I = 0x7

.field static final TRANSACTION_notifyLinkPropertiesChanged:I = 0xa

.field static final TRANSACTION_notifyNetworkCapabilitiesChanged:I = 0xb

.field static final TRANSACTION_notifyNetworkConnected:I = 0x8

.field static final TRANSACTION_notifyNetworkDisconnected:I = 0x9

.field static final TRANSACTION_notifyPrivateDnsChanged:I = 0x6

.field static final TRANSACTION_setAcceptPartialConnectivity:I = 0x4

.field static final TRANSACTION_start:I = 0x1


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 65
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 66
    const-string v0, "android.net.INetworkMonitor"

    invoke-virtual {p0, p0, v0}, Landroid/net/INetworkMonitor$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 67
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/net/INetworkMonitor;
    .registers 3

    .line 74
    if-nez p0, :cond_4

    .line 75
    const/4 p0, 0x0

    return-object p0

    .line 77
    :cond_4
    const-string v0, "android.net.INetworkMonitor"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 78
    if-eqz v0, :cond_13

    instance-of v1, v0, Landroid/net/INetworkMonitor;

    if-eqz v1, :cond_13

    .line 79
    check-cast v0, Landroid/net/INetworkMonitor;

    return-object v0

    .line 81
    :cond_13
    new-instance v0, Landroid/net/INetworkMonitor$Stub$Proxy;

    invoke-direct {v0, p0}, Landroid/net/INetworkMonitor$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method

.method public static getDefaultImpl()Landroid/net/INetworkMonitor;
    .registers 1

    .line 475
    sget-object v0, Landroid/net/INetworkMonitor$Stub$Proxy;->sDefaultImpl:Landroid/net/INetworkMonitor;

    return-object v0
.end method

.method public static setDefaultImpl(Landroid/net/INetworkMonitor;)Z
    .registers 2

    .line 468
    sget-object v0, Landroid/net/INetworkMonitor$Stub$Proxy;->sDefaultImpl:Landroid/net/INetworkMonitor;

    if-nez v0, :cond_a

    if-eqz p0, :cond_a

    .line 469
    sput-object p0, Landroid/net/INetworkMonitor$Stub$Proxy;->sDefaultImpl:Landroid/net/INetworkMonitor;

    .line 470
    const/4 p0, 0x1

    return p0

    .line 472
    :cond_a
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 1

    .line 85
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 89
    nop

    .line 90
    const v0, 0xffffff

    const/4 v1, 0x1

    const-string v2, "android.net.INetworkMonitor"

    if-eq p1, v0, :cond_c8

    const v0, 0x5f4e5446

    if-eq p1, v0, :cond_c4

    const/4 v0, 0x0

    packed-switch p1, :pswitch_data_d6

    .line 213
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1

    return p1

    .line 193
    :pswitch_17  #0xb
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 195
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_2a

    .line 196
    sget-object p1, Landroid/net/NetworkCapabilities;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    move-object v0, p1

    check-cast v0, Landroid/net/NetworkCapabilities;

    goto :goto_2b

    .line 199
    :cond_2a
    nop

    .line 201
    :goto_2b
    invoke-virtual {p0, v0}, Landroid/net/INetworkMonitor$Stub;->notifyNetworkCapabilitiesChanged(Landroid/net/NetworkCapabilities;)V

    .line 202
    return v1

    .line 180
    :pswitch_2f  #0xa
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 182
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_42

    .line 183
    sget-object p1, Landroid/net/LinkProperties;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    move-object v0, p1

    check-cast v0, Landroid/net/LinkProperties;

    goto :goto_43

    .line 186
    :cond_42
    nop

    .line 188
    :goto_43
    invoke-virtual {p0, v0}, Landroid/net/INetworkMonitor$Stub;->notifyLinkPropertiesChanged(Landroid/net/LinkProperties;)V

    .line 189
    return v1

    .line 174
    :pswitch_47  #0x9
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 175
    invoke-virtual {p0}, Landroid/net/INetworkMonitor$Stub;->notifyNetworkDisconnected()V

    .line 176
    return v1

    .line 154
    :pswitch_4e  #0x8
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 156
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_60

    .line 157
    sget-object p1, Landroid/net/LinkProperties;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/net/LinkProperties;

    goto :goto_61

    .line 160
    :cond_60
    move-object p1, v0

    .line 163
    :goto_61
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p3

    if-eqz p3, :cond_71

    .line 164
    sget-object p3, Landroid/net/NetworkCapabilities;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p3, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p2

    move-object v0, p2

    check-cast v0, Landroid/net/NetworkCapabilities;

    goto :goto_72

    .line 167
    :cond_71
    nop

    .line 169
    :goto_72
    invoke-virtual {p0, p1, v0}, Landroid/net/INetworkMonitor$Stub;->notifyNetworkConnected(Landroid/net/LinkProperties;Landroid/net/NetworkCapabilities;)V

    .line 170
    return v1

    .line 146
    :pswitch_76  #0x7
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 148
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 149
    invoke-virtual {p0, p1}, Landroid/net/INetworkMonitor$Stub;->notifyDnsResponse(I)V

    .line 150
    return v1

    .line 133
    :pswitch_81  #0x6
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 135
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_94

    .line 136
    sget-object p1, Landroid/net/PrivateDnsConfigParcel;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    move-object v0, p1

    check-cast v0, Landroid/net/PrivateDnsConfigParcel;

    goto :goto_95

    .line 139
    :cond_94
    nop

    .line 141
    :goto_95
    invoke-virtual {p0, v0}, Landroid/net/INetworkMonitor$Stub;->notifyPrivateDnsChanged(Landroid/net/PrivateDnsConfigParcel;)V

    .line 142
    return v1

    .line 125
    :pswitch_99  #0x5
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 127
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 128
    invoke-virtual {p0, p1}, Landroid/net/INetworkMonitor$Stub;->forceReevaluation(I)V

    .line 129
    return v1

    .line 119
    :pswitch_a4  #0x4
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 120
    invoke-virtual {p0}, Landroid/net/INetworkMonitor$Stub;->setAcceptPartialConnectivity()V

    .line 121
    return v1

    .line 111
    :pswitch_ab  #0x3
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 113
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 114
    invoke-virtual {p0, p1}, Landroid/net/INetworkMonitor$Stub;->notifyCaptivePortalAppFinished(I)V

    .line 115
    return v1

    .line 105
    :pswitch_b6  #0x2
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 106
    invoke-virtual {p0}, Landroid/net/INetworkMonitor$Stub;->launchCaptivePortalApp()V

    .line 107
    return v1

    .line 99
    :pswitch_bd  #0x1
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 100
    invoke-virtual {p0}, Landroid/net/INetworkMonitor$Stub;->start()V

    .line 101
    return v1

    .line 94
    :cond_c4
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 95
    return v1

    .line 206
    :cond_c8
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 207
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 208
    invoke-virtual {p0}, Landroid/net/INetworkMonitor$Stub;->getInterfaceVersion()I

    move-result p1

    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 209
    return v1

    :pswitch_data_d6
    .packed-switch 0x1
        :pswitch_bd  #00000001
        :pswitch_b6  #00000002
        :pswitch_ab  #00000003
        :pswitch_a4  #00000004
        :pswitch_99  #00000005
        :pswitch_81  #00000006
        :pswitch_76  #00000007
        :pswitch_4e  #00000008
        :pswitch_47  #00000009
        :pswitch_2f  #0000000a
        :pswitch_17  #0000000b
    .end packed-switch
.end method
