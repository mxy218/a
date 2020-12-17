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
    .param p0, "obj"  # Landroid/os/IBinder;

    .line 74
    if-nez p0, :cond_4

    .line 75
    const/4 v0, 0x0

    return-object v0

    .line 77
    :cond_4
    const-string v0, "android.net.INetworkMonitor"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 78
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Landroid/net/INetworkMonitor;

    if-eqz v1, :cond_14

    .line 79
    move-object v1, v0

    check-cast v1, Landroid/net/INetworkMonitor;

    return-object v1

    .line 81
    :cond_14
    new-instance v1, Landroid/net/INetworkMonitor$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/net/INetworkMonitor$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static getDefaultImpl()Landroid/net/INetworkMonitor;
    .registers 1

    .line 475
    sget-object v0, Landroid/net/INetworkMonitor$Stub$Proxy;->sDefaultImpl:Landroid/net/INetworkMonitor;

    return-object v0
.end method

.method public static setDefaultImpl(Landroid/net/INetworkMonitor;)Z
    .registers 2
    .param p0, "impl"  # Landroid/net/INetworkMonitor;

    .line 468
    sget-object v0, Landroid/net/INetworkMonitor$Stub$Proxy;->sDefaultImpl:Landroid/net/INetworkMonitor;

    if-nez v0, :cond_a

    if-eqz p0, :cond_a

    .line 469
    sput-object p0, Landroid/net/INetworkMonitor$Stub$Proxy;->sDefaultImpl:Landroid/net/INetworkMonitor;

    .line 470
    const/4 v0, 0x1

    return v0

    .line 472
    :cond_a
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 1

    .line 85
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

    .line 89
    const-string v0, "android.net.INetworkMonitor"

    .line 90
    .local v0, "descriptor":Ljava/lang/String;
    const v1, 0xffffff

    const/4 v2, 0x1

    if-eq p1, v1, :cond_c2

    const v1, 0x5f4e5446

    if-eq p1, v1, :cond_be

    packed-switch p1, :pswitch_data_d0

    .line 213
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 193
    :pswitch_15  #0xb
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 195
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_27

    .line 196
    sget-object v1, Landroid/net/NetworkCapabilities;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/NetworkCapabilities;

    .local v1, "_arg0":Landroid/net/NetworkCapabilities;
    goto :goto_28

    .line 199
    .end local v1  # "_arg0":Landroid/net/NetworkCapabilities;
    :cond_27
    const/4 v1, 0x0

    .line 201
    .restart local v1  # "_arg0":Landroid/net/NetworkCapabilities;
    :goto_28
    invoke-virtual {p0, v1}, Landroid/net/INetworkMonitor$Stub;->notifyNetworkCapabilitiesChanged(Landroid/net/NetworkCapabilities;)V

    .line 202
    return v2

    .line 180
    .end local v1  # "_arg0":Landroid/net/NetworkCapabilities;
    :pswitch_2c  #0xa
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 182
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_3e

    .line 183
    sget-object v1, Landroid/net/LinkProperties;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/LinkProperties;

    .local v1, "_arg0":Landroid/net/LinkProperties;
    goto :goto_3f

    .line 186
    .end local v1  # "_arg0":Landroid/net/LinkProperties;
    :cond_3e
    const/4 v1, 0x0

    .line 188
    .restart local v1  # "_arg0":Landroid/net/LinkProperties;
    :goto_3f
    invoke-virtual {p0, v1}, Landroid/net/INetworkMonitor$Stub;->notifyLinkPropertiesChanged(Landroid/net/LinkProperties;)V

    .line 189
    return v2

    .line 174
    .end local v1  # "_arg0":Landroid/net/LinkProperties;
    :pswitch_43  #0x9
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 175
    invoke-virtual {p0}, Landroid/net/INetworkMonitor$Stub;->notifyNetworkDisconnected()V

    .line 176
    return v2

    .line 154
    :pswitch_4a  #0x8
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 156
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_5c

    .line 157
    sget-object v1, Landroid/net/LinkProperties;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/LinkProperties;

    .restart local v1  # "_arg0":Landroid/net/LinkProperties;
    goto :goto_5d

    .line 160
    .end local v1  # "_arg0":Landroid/net/LinkProperties;
    :cond_5c
    const/4 v1, 0x0

    .line 163
    .restart local v1  # "_arg0":Landroid/net/LinkProperties;
    :goto_5d
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_6c

    .line 164
    sget-object v3, Landroid/net/NetworkCapabilities;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/NetworkCapabilities;

    .local v3, "_arg1":Landroid/net/NetworkCapabilities;
    goto :goto_6d

    .line 167
    .end local v3  # "_arg1":Landroid/net/NetworkCapabilities;
    :cond_6c
    const/4 v3, 0x0

    .line 169
    .restart local v3  # "_arg1":Landroid/net/NetworkCapabilities;
    :goto_6d
    invoke-virtual {p0, v1, v3}, Landroid/net/INetworkMonitor$Stub;->notifyNetworkConnected(Landroid/net/LinkProperties;Landroid/net/NetworkCapabilities;)V

    .line 170
    return v2

    .line 146
    .end local v1  # "_arg0":Landroid/net/LinkProperties;
    .end local v3  # "_arg1":Landroid/net/NetworkCapabilities;
    :pswitch_71  #0x7
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 148
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 149
    .local v1, "_arg0":I
    invoke-virtual {p0, v1}, Landroid/net/INetworkMonitor$Stub;->notifyDnsResponse(I)V

    .line 150
    return v2

    .line 133
    .end local v1  # "_arg0":I
    :pswitch_7c  #0x6
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 135
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_8e

    .line 136
    sget-object v1, Landroid/net/PrivateDnsConfigParcel;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/PrivateDnsConfigParcel;

    .local v1, "_arg0":Landroid/net/PrivateDnsConfigParcel;
    goto :goto_8f

    .line 139
    .end local v1  # "_arg0":Landroid/net/PrivateDnsConfigParcel;
    :cond_8e
    const/4 v1, 0x0

    .line 141
    .restart local v1  # "_arg0":Landroid/net/PrivateDnsConfigParcel;
    :goto_8f
    invoke-virtual {p0, v1}, Landroid/net/INetworkMonitor$Stub;->notifyPrivateDnsChanged(Landroid/net/PrivateDnsConfigParcel;)V

    .line 142
    return v2

    .line 125
    .end local v1  # "_arg0":Landroid/net/PrivateDnsConfigParcel;
    :pswitch_93  #0x5
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 127
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 128
    .local v1, "_arg0":I
    invoke-virtual {p0, v1}, Landroid/net/INetworkMonitor$Stub;->forceReevaluation(I)V

    .line 129
    return v2

    .line 119
    .end local v1  # "_arg0":I
    :pswitch_9e  #0x4
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 120
    invoke-virtual {p0}, Landroid/net/INetworkMonitor$Stub;->setAcceptPartialConnectivity()V

    .line 121
    return v2

    .line 111
    :pswitch_a5  #0x3
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 113
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 114
    .restart local v1  # "_arg0":I
    invoke-virtual {p0, v1}, Landroid/net/INetworkMonitor$Stub;->notifyCaptivePortalAppFinished(I)V

    .line 115
    return v2

    .line 105
    .end local v1  # "_arg0":I
    :pswitch_b0  #0x2
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 106
    invoke-virtual {p0}, Landroid/net/INetworkMonitor$Stub;->launchCaptivePortalApp()V

    .line 107
    return v2

    .line 99
    :pswitch_b7  #0x1
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 100
    invoke-virtual {p0}, Landroid/net/INetworkMonitor$Stub;->start()V

    .line 101
    return v2

    .line 94
    :cond_be
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 95
    return v2

    .line 206
    :cond_c2
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 207
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 208
    invoke-virtual {p0}, Landroid/net/INetworkMonitor$Stub;->getInterfaceVersion()I

    move-result v1

    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 209
    return v2

    :pswitch_data_d0
    .packed-switch 0x1
        :pswitch_b7  #00000001
        :pswitch_b0  #00000002
        :pswitch_a5  #00000003
        :pswitch_9e  #00000004
        :pswitch_93  #00000005
        :pswitch_7c  #00000006
        :pswitch_71  #00000007
        :pswitch_4a  #00000008
        :pswitch_43  #00000009
        :pswitch_2c  #0000000a
        :pswitch_15  #0000000b
    .end packed-switch
.end method
