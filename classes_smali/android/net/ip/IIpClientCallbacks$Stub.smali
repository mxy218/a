.class public abstract Landroid/net/ip/IIpClientCallbacks$Stub;
.super Landroid/os/Binder;
.source "IIpClientCallbacks.java"

# interfaces
.implements Landroid/net/ip/IIpClientCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/ip/IIpClientCallbacks;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/ip/IIpClientCallbacks$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.net.ip.IIpClientCallbacks"

.field static final TRANSACTION_getInterfaceVersion:I = 0xffffff

.field static final TRANSACTION_installPacketFilter:I = 0xa

.field static final TRANSACTION_onIpClientCreated:I = 0x1

.field static final TRANSACTION_onLinkPropertiesChange:I = 0x7

.field static final TRANSACTION_onNewDhcpResults:I = 0x4

.field static final TRANSACTION_onPostDhcpAction:I = 0x3

.field static final TRANSACTION_onPreDhcpAction:I = 0x2

.field static final TRANSACTION_onProvisioningFailure:I = 0x6

.field static final TRANSACTION_onProvisioningSuccess:I = 0x5

.field static final TRANSACTION_onQuit:I = 0x9

.field static final TRANSACTION_onReachabilityLost:I = 0x8

.field static final TRANSACTION_setFallbackMulticastFilter:I = 0xc

.field static final TRANSACTION_setNeighborDiscoveryOffload:I = 0xd

.field static final TRANSACTION_startReadPacketFilter:I = 0xb


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 71
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 72
    const-string v0, "android.net.ip.IIpClientCallbacks"

    invoke-virtual {p0, p0, v0}, Landroid/net/ip/IIpClientCallbacks$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 73
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/net/ip/IIpClientCallbacks;
    .registers 3

    .line 80
    if-nez p0, :cond_4

    .line 81
    const/4 p0, 0x0

    return-object p0

    .line 83
    :cond_4
    const-string v0, "android.net.ip.IIpClientCallbacks"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 84
    if-eqz v0, :cond_13

    instance-of v1, v0, Landroid/net/ip/IIpClientCallbacks;

    if-eqz v1, :cond_13

    .line 85
    check-cast v0, Landroid/net/ip/IIpClientCallbacks;

    return-object v0

    .line 87
    :cond_13
    new-instance v0, Landroid/net/ip/IIpClientCallbacks$Stub$Proxy;

    invoke-direct {v0, p0}, Landroid/net/ip/IIpClientCallbacks$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method

.method public static getDefaultImpl()Landroid/net/ip/IIpClientCallbacks;
    .registers 1

    .line 517
    sget-object v0, Landroid/net/ip/IIpClientCallbacks$Stub$Proxy;->sDefaultImpl:Landroid/net/ip/IIpClientCallbacks;

    return-object v0
.end method

.method public static setDefaultImpl(Landroid/net/ip/IIpClientCallbacks;)Z
    .registers 2

    .line 510
    sget-object v0, Landroid/net/ip/IIpClientCallbacks$Stub$Proxy;->sDefaultImpl:Landroid/net/ip/IIpClientCallbacks;

    if-nez v0, :cond_a

    if-eqz p0, :cond_a

    .line 511
    sput-object p0, Landroid/net/ip/IIpClientCallbacks$Stub$Proxy;->sDefaultImpl:Landroid/net/ip/IIpClientCallbacks;

    .line 512
    const/4 p0, 0x1

    return p0

    .line 514
    :cond_a
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 1

    .line 91
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 95
    nop

    .line 96
    const v0, 0xffffff

    const/4 v1, 0x1

    const-string v2, "android.net.ip.IIpClientCallbacks"

    if-eq p1, v0, :cond_d9

    const v0, 0x5f4e5446

    if-eq p1, v0, :cond_d5

    const/4 v0, 0x0

    const/4 v3, 0x0

    packed-switch p1, :pswitch_data_e8

    .line 228
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1

    return p1

    .line 213
    :pswitch_18  #0xd
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 215
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_22

    move v0, v1

    .line 216
    :cond_22
    invoke-virtual {p0, v0}, Landroid/net/ip/IIpClientCallbacks$Stub;->setNeighborDiscoveryOffload(Z)V

    .line 217
    return v1

    .line 205
    :pswitch_26  #0xc
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 207
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_30

    move v0, v1

    .line 208
    :cond_30
    invoke-virtual {p0, v0}, Landroid/net/ip/IIpClientCallbacks$Stub;->setFallbackMulticastFilter(Z)V

    .line 209
    return v1

    .line 199
    :pswitch_34  #0xb
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 200
    invoke-virtual {p0}, Landroid/net/ip/IIpClientCallbacks$Stub;->startReadPacketFilter()V

    .line 201
    return v1

    .line 191
    :pswitch_3b  #0xa
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 193
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object p1

    .line 194
    invoke-virtual {p0, p1}, Landroid/net/ip/IIpClientCallbacks$Stub;->installPacketFilter([B)V

    .line 195
    return v1

    .line 185
    :pswitch_46  #0x9
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 186
    invoke-virtual {p0}, Landroid/net/ip/IIpClientCallbacks$Stub;->onQuit()V

    .line 187
    return v1

    .line 177
    :pswitch_4d  #0x8
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 179
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 180
    invoke-virtual {p0, p1}, Landroid/net/ip/IIpClientCallbacks$Stub;->onReachabilityLost(Ljava/lang/String;)V

    .line 181
    return v1

    .line 164
    :pswitch_58  #0x7
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 166
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_6b

    .line 167
    sget-object p1, Landroid/net/LinkProperties;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    move-object v3, p1

    check-cast v3, Landroid/net/LinkProperties;

    goto :goto_6c

    .line 170
    :cond_6b
    nop

    .line 172
    :goto_6c
    invoke-virtual {p0, v3}, Landroid/net/ip/IIpClientCallbacks$Stub;->onLinkPropertiesChange(Landroid/net/LinkProperties;)V

    .line 173
    return v1

    .line 151
    :pswitch_70  #0x6
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 153
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_83

    .line 154
    sget-object p1, Landroid/net/LinkProperties;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    move-object v3, p1

    check-cast v3, Landroid/net/LinkProperties;

    goto :goto_84

    .line 157
    :cond_83
    nop

    .line 159
    :goto_84
    invoke-virtual {p0, v3}, Landroid/net/ip/IIpClientCallbacks$Stub;->onProvisioningFailure(Landroid/net/LinkProperties;)V

    .line 160
    return v1

    .line 138
    :pswitch_88  #0x5
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 140
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_9b

    .line 141
    sget-object p1, Landroid/net/LinkProperties;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    move-object v3, p1

    check-cast v3, Landroid/net/LinkProperties;

    goto :goto_9c

    .line 144
    :cond_9b
    nop

    .line 146
    :goto_9c
    invoke-virtual {p0, v3}, Landroid/net/ip/IIpClientCallbacks$Stub;->onProvisioningSuccess(Landroid/net/LinkProperties;)V

    .line 147
    return v1

    .line 125
    :pswitch_a0  #0x4
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 127
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_b3

    .line 128
    sget-object p1, Landroid/net/DhcpResultsParcelable;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    move-object v3, p1

    check-cast v3, Landroid/net/DhcpResultsParcelable;

    goto :goto_b4

    .line 131
    :cond_b3
    nop

    .line 133
    :goto_b4
    invoke-virtual {p0, v3}, Landroid/net/ip/IIpClientCallbacks$Stub;->onNewDhcpResults(Landroid/net/DhcpResultsParcelable;)V

    .line 134
    return v1

    .line 119
    :pswitch_b8  #0x3
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 120
    invoke-virtual {p0}, Landroid/net/ip/IIpClientCallbacks$Stub;->onPostDhcpAction()V

    .line 121
    return v1

    .line 113
    :pswitch_bf  #0x2
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 114
    invoke-virtual {p0}, Landroid/net/ip/IIpClientCallbacks$Stub;->onPreDhcpAction()V

    .line 115
    return v1

    .line 105
    :pswitch_c6  #0x1
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 107
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Landroid/net/ip/IIpClient$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/ip/IIpClient;

    move-result-object p1

    .line 108
    invoke-virtual {p0, p1}, Landroid/net/ip/IIpClientCallbacks$Stub;->onIpClientCreated(Landroid/net/ip/IIpClient;)V

    .line 109
    return v1

    .line 100
    :cond_d5
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 101
    return v1

    .line 221
    :cond_d9
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 222
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 223
    invoke-virtual {p0}, Landroid/net/ip/IIpClientCallbacks$Stub;->getInterfaceVersion()I

    move-result p1

    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 224
    return v1

    nop

    :pswitch_data_e8
    .packed-switch 0x1
        :pswitch_c6  #00000001
        :pswitch_bf  #00000002
        :pswitch_b8  #00000003
        :pswitch_a0  #00000004
        :pswitch_88  #00000005
        :pswitch_70  #00000006
        :pswitch_58  #00000007
        :pswitch_4d  #00000008
        :pswitch_46  #00000009
        :pswitch_3b  #0000000a
        :pswitch_34  #0000000b
        :pswitch_26  #0000000c
        :pswitch_18  #0000000d
    .end packed-switch
.end method
