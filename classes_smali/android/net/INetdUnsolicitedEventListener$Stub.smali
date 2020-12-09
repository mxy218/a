.class public abstract Landroid/net/INetdUnsolicitedEventListener$Stub;
.super Landroid/os/Binder;
.source "INetdUnsolicitedEventListener.java"

# interfaces
.implements Landroid/net/INetdUnsolicitedEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/INetdUnsolicitedEventListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/INetdUnsolicitedEventListener$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.net.INetdUnsolicitedEventListener"

.field static final TRANSACTION_getInterfaceVersion:I = 0xffffff

.field static final TRANSACTION_onInterfaceAdded:I = 0x6

.field static final TRANSACTION_onInterfaceAddressRemoved:I = 0x5

.field static final TRANSACTION_onInterfaceAddressUpdated:I = 0x4

.field static final TRANSACTION_onInterfaceChanged:I = 0x8

.field static final TRANSACTION_onInterfaceClassActivityChanged:I = 0x1

.field static final TRANSACTION_onInterfaceDnsServerInfo:I = 0x3

.field static final TRANSACTION_onInterfaceLinkStateChanged:I = 0x9

.field static final TRANSACTION_onInterfaceRemoved:I = 0x7

.field static final TRANSACTION_onQuotaLimitReached:I = 0x2

.field static final TRANSACTION_onRouteChanged:I = 0xa

.field static final TRANSACTION_onStrictCleartextDetected:I = 0xb


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 65
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 66
    const-string v0, "android.net.INetdUnsolicitedEventListener"

    invoke-virtual {p0, p0, v0}, Landroid/net/INetdUnsolicitedEventListener$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 67
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/net/INetdUnsolicitedEventListener;
    .registers 3

    .line 74
    if-nez p0, :cond_4

    .line 75
    const/4 p0, 0x0

    return-object p0

    .line 77
    :cond_4
    const-string v0, "android.net.INetdUnsolicitedEventListener"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 78
    if-eqz v0, :cond_13

    instance-of v1, v0, Landroid/net/INetdUnsolicitedEventListener;

    if-eqz v1, :cond_13

    .line 79
    check-cast v0, Landroid/net/INetdUnsolicitedEventListener;

    return-object v0

    .line 81
    :cond_13
    new-instance v0, Landroid/net/INetdUnsolicitedEventListener$Stub$Proxy;

    invoke-direct {v0, p0}, Landroid/net/INetdUnsolicitedEventListener$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method

.method public static getDefaultImpl()Landroid/net/INetdUnsolicitedEventListener;
    .registers 1

    .line 483
    sget-object v0, Landroid/net/INetdUnsolicitedEventListener$Stub$Proxy;->sDefaultImpl:Landroid/net/INetdUnsolicitedEventListener;

    return-object v0
.end method

.method public static setDefaultImpl(Landroid/net/INetdUnsolicitedEventListener;)Z
    .registers 2

    .line 476
    sget-object v0, Landroid/net/INetdUnsolicitedEventListener$Stub$Proxy;->sDefaultImpl:Landroid/net/INetdUnsolicitedEventListener;

    if-nez v0, :cond_a

    if-eqz p0, :cond_a

    .line 477
    sput-object p0, Landroid/net/INetdUnsolicitedEventListener$Stub$Proxy;->sDefaultImpl:Landroid/net/INetdUnsolicitedEventListener;

    .line 478
    const/4 p0, 0x1

    return p0

    .line 480
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
    .registers 13
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

    const-string v2, "android.net.INetdUnsolicitedEventListener"

    if-eq p1, v0, :cond_eb

    const v0, 0x5f4e5446

    if-eq p1, v0, :cond_e7

    const/4 v0, 0x0

    packed-switch p1, :pswitch_data_fa

    .line 230
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1

    return p1

    .line 213
    :pswitch_17  #0xb
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 215
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 217
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p2

    .line 218
    invoke-virtual {p0, p1, p2}, Landroid/net/INetdUnsolicitedEventListener$Stub;->onStrictCleartextDetected(ILjava/lang/String;)V

    .line 219
    return v1

    .line 199
    :pswitch_26  #0xa
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 201
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_30

    move v0, v1

    .line 203
    :cond_30
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 205
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p3

    .line 207
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p2

    .line 208
    invoke-virtual {p0, v0, p1, p3, p2}, Landroid/net/INetdUnsolicitedEventListener$Stub;->onRouteChanged(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 209
    return v1

    .line 189
    :pswitch_40  #0x9
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 191
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 193
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    if-eqz p2, :cond_4e

    move v0, v1

    .line 194
    :cond_4e
    invoke-virtual {p0, p1, v0}, Landroid/net/INetdUnsolicitedEventListener$Stub;->onInterfaceLinkStateChanged(Ljava/lang/String;Z)V

    .line 195
    return v1

    .line 179
    :pswitch_52  #0x8
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 181
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 183
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    if-eqz p2, :cond_60

    move v0, v1

    .line 184
    :cond_60
    invoke-virtual {p0, p1, v0}, Landroid/net/INetdUnsolicitedEventListener$Stub;->onInterfaceChanged(Ljava/lang/String;Z)V

    .line 185
    return v1

    .line 171
    :pswitch_64  #0x7
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 173
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 174
    invoke-virtual {p0, p1}, Landroid/net/INetdUnsolicitedEventListener$Stub;->onInterfaceRemoved(Ljava/lang/String;)V

    .line 175
    return v1

    .line 163
    :pswitch_6f  #0x6
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 165
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 166
    invoke-virtual {p0, p1}, Landroid/net/INetdUnsolicitedEventListener$Stub;->onInterfaceAdded(Ljava/lang/String;)V

    .line 167
    return v1

    .line 149
    :pswitch_7a  #0x5
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 151
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 153
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p3

    .line 155
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    .line 157
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    .line 158
    invoke-virtual {p0, p1, p3, p4, p2}, Landroid/net/INetdUnsolicitedEventListener$Stub;->onInterfaceAddressRemoved(Ljava/lang/String;Ljava/lang/String;II)V

    .line 159
    return v1

    .line 135
    :pswitch_91  #0x4
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 137
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 139
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p3

    .line 141
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    .line 143
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    .line 144
    invoke-virtual {p0, p1, p3, p4, p2}, Landroid/net/INetdUnsolicitedEventListener$Stub;->onInterfaceAddressUpdated(Ljava/lang/String;Ljava/lang/String;II)V

    .line 145
    return v1

    .line 123
    :pswitch_a8  #0x3
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 125
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 127
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide p3

    .line 129
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object p2

    .line 130
    invoke-virtual {p0, p1, p3, p4, p2}, Landroid/net/INetdUnsolicitedEventListener$Stub;->onInterfaceDnsServerInfo(Ljava/lang/String;J[Ljava/lang/String;)V

    .line 131
    return v1

    .line 113
    :pswitch_bb  #0x2
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 115
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 117
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p2

    .line 118
    invoke-virtual {p0, p1, p2}, Landroid/net/INetdUnsolicitedEventListener$Stub;->onQuotaLimitReached(Ljava/lang/String;Ljava/lang/String;)V

    .line 119
    return v1

    .line 99
    :pswitch_ca  #0x1
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 101
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_d5

    move v3, v1

    goto :goto_d6

    :cond_d5
    move v3, v0

    .line 103
    :goto_d6
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 105
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v5

    .line 107
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 108
    move-object v2, p0

    invoke-virtual/range {v2 .. v7}, Landroid/net/INetdUnsolicitedEventListener$Stub;->onInterfaceClassActivityChanged(ZIJI)V

    .line 109
    return v1

    .line 94
    :cond_e7
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 95
    return v1

    .line 223
    :cond_eb
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 224
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 225
    invoke-virtual {p0}, Landroid/net/INetdUnsolicitedEventListener$Stub;->getInterfaceVersion()I

    move-result p1

    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 226
    return v1

    nop

    :pswitch_data_fa
    .packed-switch 0x1
        :pswitch_ca  #00000001
        :pswitch_bb  #00000002
        :pswitch_a8  #00000003
        :pswitch_91  #00000004
        :pswitch_7a  #00000005
        :pswitch_6f  #00000006
        :pswitch_64  #00000007
        :pswitch_52  #00000008
        :pswitch_40  #00000009
        :pswitch_26  #0000000a
        :pswitch_17  #0000000b
    .end packed-switch
.end method
