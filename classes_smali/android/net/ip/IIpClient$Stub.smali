.class public abstract Landroid/net/ip/IIpClient$Stub;
.super Landroid/os/Binder;
.source "IIpClient.java"

# interfaces
.implements Landroid/net/ip/IIpClient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/ip/IIpClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/ip/IIpClient$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.net.ip.IIpClient"

.field static final TRANSACTION_addKeepalivePacketFilter:I = 0xa

.field static final TRANSACTION_addNattKeepalivePacketFilter:I = 0xd

.field static final TRANSACTION_completedPreDhcpAction:I = 0x1

.field static final TRANSACTION_confirmConfiguration:I = 0x2

.field static final TRANSACTION_getInterfaceVersion:I = 0xffffff

.field static final TRANSACTION_readPacketFilterComplete:I = 0x3

.field static final TRANSACTION_removeKeepalivePacketFilter:I = 0xb

.field static final TRANSACTION_setHttpProxy:I = 0x8

.field static final TRANSACTION_setL2KeyAndGroupHint:I = 0xc

.field static final TRANSACTION_setMulticastFilter:I = 0x9

.field static final TRANSACTION_setTcpBufferSizes:I = 0x7

.field static final TRANSACTION_shutdown:I = 0x4

.field static final TRANSACTION_startProvisioning:I = 0x5

.field static final TRANSACTION_stop:I = 0x6


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 71
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 72
    const-string v0, "android.net.ip.IIpClient"

    invoke-virtual {p0, p0, v0}, Landroid/net/ip/IIpClient$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 73
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/net/ip/IIpClient;
    .registers 3

    .line 80
    if-nez p0, :cond_4

    .line 81
    const/4 p0, 0x0

    return-object p0

    .line 83
    :cond_4
    const-string v0, "android.net.ip.IIpClient"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 84
    if-eqz v0, :cond_13

    instance-of v1, v0, Landroid/net/ip/IIpClient;

    if-eqz v1, :cond_13

    .line 85
    check-cast v0, Landroid/net/ip/IIpClient;

    return-object v0

    .line 87
    :cond_13
    new-instance v0, Landroid/net/ip/IIpClient$Stub$Proxy;

    invoke-direct {v0, p0}, Landroid/net/ip/IIpClient$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method

.method public static getDefaultImpl()Landroid/net/ip/IIpClient;
    .registers 1

    .line 526
    sget-object v0, Landroid/net/ip/IIpClient$Stub$Proxy;->sDefaultImpl:Landroid/net/ip/IIpClient;

    return-object v0
.end method

.method public static setDefaultImpl(Landroid/net/ip/IIpClient;)Z
    .registers 2

    .line 519
    sget-object v0, Landroid/net/ip/IIpClient$Stub$Proxy;->sDefaultImpl:Landroid/net/ip/IIpClient;

    if-nez v0, :cond_a

    if-eqz p0, :cond_a

    .line 520
    sput-object p0, Landroid/net/ip/IIpClient$Stub$Proxy;->sDefaultImpl:Landroid/net/ip/IIpClient;

    .line 521
    const/4 p0, 0x1

    return p0

    .line 523
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
    .registers 8
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

    const-string v2, "android.net.ip.IIpClient"

    if-eq p1, v0, :cond_df

    const v0, 0x5f4e5446

    if-eq p1, v0, :cond_db

    const/4 v0, 0x0

    packed-switch p1, :pswitch_data_ee

    .line 234
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1

    return p1

    .line 212
    :pswitch_17  #0xd
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 214
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 216
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p3

    if-eqz p3, :cond_2e

    .line 217
    sget-object p3, Landroid/net/NattKeepalivePacketDataParcelable;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p3, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p2

    move-object v0, p2

    check-cast v0, Landroid/net/NattKeepalivePacketDataParcelable;

    goto :goto_2f

    .line 220
    :cond_2e
    nop

    .line 222
    :goto_2f
    invoke-virtual {p0, p1, v0}, Landroid/net/ip/IIpClient$Stub;->addNattKeepalivePacketFilter(ILandroid/net/NattKeepalivePacketDataParcelable;)V

    .line 223
    return v1

    .line 202
    :pswitch_33  #0xc
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 204
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 206
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p2

    .line 207
    invoke-virtual {p0, p1, p2}, Landroid/net/ip/IIpClient$Stub;->setL2KeyAndGroupHint(Ljava/lang/String;Ljava/lang/String;)V

    .line 208
    return v1

    .line 194
    :pswitch_42  #0xb
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 196
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 197
    invoke-virtual {p0, p1}, Landroid/net/ip/IIpClient$Stub;->removeKeepalivePacketFilter(I)V

    .line 198
    return v1

    .line 179
    :pswitch_4d  #0xa
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 181
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 183
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p3

    if-eqz p3, :cond_64

    .line 184
    sget-object p3, Landroid/net/TcpKeepalivePacketDataParcelable;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p3, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p2

    move-object v0, p2

    check-cast v0, Landroid/net/TcpKeepalivePacketDataParcelable;

    goto :goto_65

    .line 187
    :cond_64
    nop

    .line 189
    :goto_65
    invoke-virtual {p0, p1, v0}, Landroid/net/ip/IIpClient$Stub;->addKeepalivePacketFilter(ILandroid/net/TcpKeepalivePacketDataParcelable;)V

    .line 190
    return v1

    .line 171
    :pswitch_69  #0x9
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 173
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_74

    move p1, v1

    goto :goto_75

    :cond_74
    const/4 p1, 0x0

    .line 174
    :goto_75
    invoke-virtual {p0, p1}, Landroid/net/ip/IIpClient$Stub;->setMulticastFilter(Z)V

    .line 175
    return v1

    .line 158
    :pswitch_79  #0x8
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 160
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_8c

    .line 161
    sget-object p1, Landroid/net/ProxyInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    move-object v0, p1

    check-cast v0, Landroid/net/ProxyInfo;

    goto :goto_8d

    .line 164
    :cond_8c
    nop

    .line 166
    :goto_8d
    invoke-virtual {p0, v0}, Landroid/net/ip/IIpClient$Stub;->setHttpProxy(Landroid/net/ProxyInfo;)V

    .line 167
    return v1

    .line 150
    :pswitch_91  #0x7
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 152
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 153
    invoke-virtual {p0, p1}, Landroid/net/ip/IIpClient$Stub;->setTcpBufferSizes(Ljava/lang/String;)V

    .line 154
    return v1

    .line 144
    :pswitch_9c  #0x6
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 145
    invoke-virtual {p0}, Landroid/net/ip/IIpClient$Stub;->stop()V

    .line 146
    return v1

    .line 131
    :pswitch_a3  #0x5
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 133
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_b6

    .line 134
    sget-object p1, Landroid/net/ProvisioningConfigurationParcelable;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    move-object v0, p1

    check-cast v0, Landroid/net/ProvisioningConfigurationParcelable;

    goto :goto_b7

    .line 137
    :cond_b6
    nop

    .line 139
    :goto_b7
    invoke-virtual {p0, v0}, Landroid/net/ip/IIpClient$Stub;->startProvisioning(Landroid/net/ProvisioningConfigurationParcelable;)V

    .line 140
    return v1

    .line 125
    :pswitch_bb  #0x4
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 126
    invoke-virtual {p0}, Landroid/net/ip/IIpClient$Stub;->shutdown()V

    .line 127
    return v1

    .line 117
    :pswitch_c2  #0x3
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 119
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object p1

    .line 120
    invoke-virtual {p0, p1}, Landroid/net/ip/IIpClient$Stub;->readPacketFilterComplete([B)V

    .line 121
    return v1

    .line 111
    :pswitch_cd  #0x2
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 112
    invoke-virtual {p0}, Landroid/net/ip/IIpClient$Stub;->confirmConfiguration()V

    .line 113
    return v1

    .line 105
    :pswitch_d4  #0x1
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 106
    invoke-virtual {p0}, Landroid/net/ip/IIpClient$Stub;->completedPreDhcpAction()V

    .line 107
    return v1

    .line 100
    :cond_db
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 101
    return v1

    .line 227
    :cond_df
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 228
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 229
    invoke-virtual {p0}, Landroid/net/ip/IIpClient$Stub;->getInterfaceVersion()I

    move-result p1

    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 230
    return v1

    nop

    :pswitch_data_ee
    .packed-switch 0x1
        :pswitch_d4  #00000001
        :pswitch_cd  #00000002
        :pswitch_c2  #00000003
        :pswitch_bb  #00000004
        :pswitch_a3  #00000005
        :pswitch_9c  #00000006
        :pswitch_91  #00000007
        :pswitch_79  #00000008
        :pswitch_69  #00000009
        :pswitch_4d  #0000000a
        :pswitch_42  #0000000b
        :pswitch_33  #0000000c
        :pswitch_17  #0000000d
    .end packed-switch
.end method
