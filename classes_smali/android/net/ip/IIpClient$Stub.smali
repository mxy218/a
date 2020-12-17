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
    .param p0, "obj"  # Landroid/os/IBinder;

    .line 80
    if-nez p0, :cond_4

    .line 81
    const/4 v0, 0x0

    return-object v0

    .line 83
    :cond_4
    const-string v0, "android.net.ip.IIpClient"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 84
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Landroid/net/ip/IIpClient;

    if-eqz v1, :cond_14

    .line 85
    move-object v1, v0

    check-cast v1, Landroid/net/ip/IIpClient;

    return-object v1

    .line 87
    :cond_14
    new-instance v1, Landroid/net/ip/IIpClient$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/net/ip/IIpClient$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static getDefaultImpl()Landroid/net/ip/IIpClient;
    .registers 1

    .line 526
    sget-object v0, Landroid/net/ip/IIpClient$Stub$Proxy;->sDefaultImpl:Landroid/net/ip/IIpClient;

    return-object v0
.end method

.method public static setDefaultImpl(Landroid/net/ip/IIpClient;)Z
    .registers 2
    .param p0, "impl"  # Landroid/net/ip/IIpClient;

    .line 519
    sget-object v0, Landroid/net/ip/IIpClient$Stub$Proxy;->sDefaultImpl:Landroid/net/ip/IIpClient;

    if-nez v0, :cond_a

    if-eqz p0, :cond_a

    .line 520
    sput-object p0, Landroid/net/ip/IIpClient$Stub$Proxy;->sDefaultImpl:Landroid/net/ip/IIpClient;

    .line 521
    const/4 v0, 0x1

    return v0

    .line 523
    :cond_a
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 1

    .line 91
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

    .line 95
    const-string v0, "android.net.ip.IIpClient"

    .line 96
    .local v0, "descriptor":Ljava/lang/String;
    const v1, 0xffffff

    const/4 v2, 0x1

    if-eq p1, v1, :cond_d9

    const v1, 0x5f4e5446

    if-eq p1, v1, :cond_d5

    packed-switch p1, :pswitch_data_e8

    .line 234
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 212
    :pswitch_15  #0xd
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 214
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 216
    .local v1, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_2b

    .line 217
    sget-object v3, Landroid/net/NattKeepalivePacketDataParcelable;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/NattKeepalivePacketDataParcelable;

    .local v3, "_arg1":Landroid/net/NattKeepalivePacketDataParcelable;
    goto :goto_2c

    .line 220
    .end local v3  # "_arg1":Landroid/net/NattKeepalivePacketDataParcelable;
    :cond_2b
    const/4 v3, 0x0

    .line 222
    .restart local v3  # "_arg1":Landroid/net/NattKeepalivePacketDataParcelable;
    :goto_2c
    invoke-virtual {p0, v1, v3}, Landroid/net/ip/IIpClient$Stub;->addNattKeepalivePacketFilter(ILandroid/net/NattKeepalivePacketDataParcelable;)V

    .line 223
    return v2

    .line 202
    .end local v1  # "_arg0":I
    .end local v3  # "_arg1":Landroid/net/NattKeepalivePacketDataParcelable;
    :pswitch_30  #0xc
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 204
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 206
    .local v1, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 207
    .local v3, "_arg1":Ljava/lang/String;
    invoke-virtual {p0, v1, v3}, Landroid/net/ip/IIpClient$Stub;->setL2KeyAndGroupHint(Ljava/lang/String;Ljava/lang/String;)V

    .line 208
    return v2

    .line 194
    .end local v1  # "_arg0":Ljava/lang/String;
    .end local v3  # "_arg1":Ljava/lang/String;
    :pswitch_3f  #0xb
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 196
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 197
    .local v1, "_arg0":I
    invoke-virtual {p0, v1}, Landroid/net/ip/IIpClient$Stub;->removeKeepalivePacketFilter(I)V

    .line 198
    return v2

    .line 179
    .end local v1  # "_arg0":I
    :pswitch_4a  #0xa
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 181
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 183
    .restart local v1  # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_60

    .line 184
    sget-object v3, Landroid/net/TcpKeepalivePacketDataParcelable;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/TcpKeepalivePacketDataParcelable;

    .local v3, "_arg1":Landroid/net/TcpKeepalivePacketDataParcelable;
    goto :goto_61

    .line 187
    .end local v3  # "_arg1":Landroid/net/TcpKeepalivePacketDataParcelable;
    :cond_60
    const/4 v3, 0x0

    .line 189
    .restart local v3  # "_arg1":Landroid/net/TcpKeepalivePacketDataParcelable;
    :goto_61
    invoke-virtual {p0, v1, v3}, Landroid/net/ip/IIpClient$Stub;->addKeepalivePacketFilter(ILandroid/net/TcpKeepalivePacketDataParcelable;)V

    .line 190
    return v2

    .line 171
    .end local v1  # "_arg0":I
    .end local v3  # "_arg1":Landroid/net/TcpKeepalivePacketDataParcelable;
    :pswitch_65  #0x9
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 173
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_70

    move v1, v2

    goto :goto_71

    :cond_70
    const/4 v1, 0x0

    .line 174
    .local v1, "_arg0":Z
    :goto_71
    invoke-virtual {p0, v1}, Landroid/net/ip/IIpClient$Stub;->setMulticastFilter(Z)V

    .line 175
    return v2

    .line 158
    .end local v1  # "_arg0":Z
    :pswitch_75  #0x8
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 160
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_87

    .line 161
    sget-object v1, Landroid/net/ProxyInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ProxyInfo;

    .local v1, "_arg0":Landroid/net/ProxyInfo;
    goto :goto_88

    .line 164
    .end local v1  # "_arg0":Landroid/net/ProxyInfo;
    :cond_87
    const/4 v1, 0x0

    .line 166
    .restart local v1  # "_arg0":Landroid/net/ProxyInfo;
    :goto_88
    invoke-virtual {p0, v1}, Landroid/net/ip/IIpClient$Stub;->setHttpProxy(Landroid/net/ProxyInfo;)V

    .line 167
    return v2

    .line 150
    .end local v1  # "_arg0":Landroid/net/ProxyInfo;
    :pswitch_8c  #0x7
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 152
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 153
    .local v1, "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v1}, Landroid/net/ip/IIpClient$Stub;->setTcpBufferSizes(Ljava/lang/String;)V

    .line 154
    return v2

    .line 144
    .end local v1  # "_arg0":Ljava/lang/String;
    :pswitch_97  #0x6
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 145
    invoke-virtual {p0}, Landroid/net/ip/IIpClient$Stub;->stop()V

    .line 146
    return v2

    .line 131
    :pswitch_9e  #0x5
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 133
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_b0

    .line 134
    sget-object v1, Landroid/net/ProvisioningConfigurationParcelable;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ProvisioningConfigurationParcelable;

    .local v1, "_arg0":Landroid/net/ProvisioningConfigurationParcelable;
    goto :goto_b1

    .line 137
    .end local v1  # "_arg0":Landroid/net/ProvisioningConfigurationParcelable;
    :cond_b0
    const/4 v1, 0x0

    .line 139
    .restart local v1  # "_arg0":Landroid/net/ProvisioningConfigurationParcelable;
    :goto_b1
    invoke-virtual {p0, v1}, Landroid/net/ip/IIpClient$Stub;->startProvisioning(Landroid/net/ProvisioningConfigurationParcelable;)V

    .line 140
    return v2

    .line 125
    .end local v1  # "_arg0":Landroid/net/ProvisioningConfigurationParcelable;
    :pswitch_b5  #0x4
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 126
    invoke-virtual {p0}, Landroid/net/ip/IIpClient$Stub;->shutdown()V

    .line 127
    return v2

    .line 117
    :pswitch_bc  #0x3
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 119
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v1

    .line 120
    .local v1, "_arg0":[B
    invoke-virtual {p0, v1}, Landroid/net/ip/IIpClient$Stub;->readPacketFilterComplete([B)V

    .line 121
    return v2

    .line 111
    .end local v1  # "_arg0":[B
    :pswitch_c7  #0x2
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 112
    invoke-virtual {p0}, Landroid/net/ip/IIpClient$Stub;->confirmConfiguration()V

    .line 113
    return v2

    .line 105
    :pswitch_ce  #0x1
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 106
    invoke-virtual {p0}, Landroid/net/ip/IIpClient$Stub;->completedPreDhcpAction()V

    .line 107
    return v2

    .line 100
    :cond_d5
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 101
    return v2

    .line 227
    :cond_d9
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 228
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 229
    invoke-virtual {p0}, Landroid/net/ip/IIpClient$Stub;->getInterfaceVersion()I

    move-result v1

    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 230
    return v2

    nop

    :pswitch_data_e8
    .packed-switch 0x1
        :pswitch_ce  #00000001
        :pswitch_c7  #00000002
        :pswitch_bc  #00000003
        :pswitch_b5  #00000004
        :pswitch_9e  #00000005
        :pswitch_97  #00000006
        :pswitch_8c  #00000007
        :pswitch_75  #00000008
        :pswitch_65  #00000009
        :pswitch_4a  #0000000a
        :pswitch_3f  #0000000b
        :pswitch_30  #0000000c
        :pswitch_15  #0000000d
    .end packed-switch
.end method
