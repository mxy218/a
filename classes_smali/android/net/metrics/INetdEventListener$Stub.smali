.class public abstract Landroid/net/metrics/INetdEventListener$Stub;
.super Landroid/os/Binder;
.source "INetdEventListener.java"

# interfaces
.implements Landroid/net/metrics/INetdEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/metrics/INetdEventListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/metrics/INetdEventListener$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.net.metrics.INetdEventListener"

.field static final TRANSACTION_getInterfaceVersion:I = 0xffffff

.field static final TRANSACTION_onConnectEvent:I = 0x3

.field static final TRANSACTION_onDnsEvent:I = 0x1

.field static final TRANSACTION_onNat64PrefixEvent:I = 0x6

.field static final TRANSACTION_onPrivateDnsValidationEvent:I = 0x2

.field static final TRANSACTION_onTcpSocketStatsEvent:I = 0x5

.field static final TRANSACTION_onWakeupEvent:I = 0x4


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 129
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 130
    const-string v0, "android.net.metrics.INetdEventListener"

    invoke-virtual {p0, p0, v0}, Landroid/net/metrics/INetdEventListener$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 131
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/net/metrics/INetdEventListener;
    .registers 3

    .line 138
    if-nez p0, :cond_4

    .line 139
    const/4 p0, 0x0

    return-object p0

    .line 141
    :cond_4
    const-string v0, "android.net.metrics.INetdEventListener"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 142
    if-eqz v0, :cond_13

    instance-of v1, v0, Landroid/net/metrics/INetdEventListener;

    if-eqz v1, :cond_13

    .line 143
    check-cast v0, Landroid/net/metrics/INetdEventListener;

    return-object v0

    .line 145
    :cond_13
    new-instance v0, Landroid/net/metrics/INetdEventListener$Stub$Proxy;

    invoke-direct {v0, p0}, Landroid/net/metrics/INetdEventListener$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method

.method public static getDefaultImpl()Landroid/net/metrics/INetdEventListener;
    .registers 1

    .line 535
    sget-object v0, Landroid/net/metrics/INetdEventListener$Stub$Proxy;->sDefaultImpl:Landroid/net/metrics/INetdEventListener;

    return-object v0
.end method

.method public static setDefaultImpl(Landroid/net/metrics/INetdEventListener;)Z
    .registers 2

    .line 528
    sget-object v0, Landroid/net/metrics/INetdEventListener$Stub$Proxy;->sDefaultImpl:Landroid/net/metrics/INetdEventListener;

    if-nez v0, :cond_a

    if-eqz p0, :cond_a

    .line 529
    sput-object p0, Landroid/net/metrics/INetdEventListener$Stub$Proxy;->sDefaultImpl:Landroid/net/metrics/INetdEventListener;

    .line 530
    const/4 p0, 0x1

    return p0

    .line 532
    :cond_a
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 1

    .line 149
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 20
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 153
    move-object v0, p0

    move/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    .line 154
    const v4, 0xffffff

    const/4 v12, 0x1

    const-string v5, "android.net.metrics.INetdEventListener"

    if-eq v1, v4, :cond_102

    const v4, 0x5f4e5446

    if-eq v1, v4, :cond_fe

    const/4 v4, 0x0

    packed-switch v1, :pswitch_data_110

    .line 280
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    return v0

    .line 259
    :pswitch_1d  #0x6
    invoke-virtual {v2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 261
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 263
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_2b

    move v4, v12

    .line 265
    :cond_2b
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 267
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 268
    invoke-virtual {p0, v1, v4, v3, v2}, Landroid/net/metrics/INetdEventListener$Stub;->onNat64PrefixEvent(IZLjava/lang/String;I)V

    .line 269
    return v12

    .line 243
    :pswitch_37  #0x5
    invoke-virtual {v2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 245
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v1

    .line 247
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v3

    .line 249
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v4

    .line 251
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v5

    .line 253
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v6

    .line 254
    move-object v0, p0

    move-object v2, v3

    move-object v3, v4

    move-object v4, v5

    move-object v5, v6

    invoke-virtual/range {v0 .. v5}, Landroid/net/metrics/INetdEventListener$Stub;->onTcpSocketStatsEvent([I[I[I[I[I)V

    .line 255
    return v12

    .line 217
    :pswitch_57  #0x4
    invoke-virtual {v2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 219
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 221
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 223
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 225
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 227
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v6

    .line 229
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 231
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 233
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .line 235
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    .line 237
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v13

    .line 238
    move-object v0, p0

    move v2, v3

    move v3, v4

    move v4, v5

    move-object v5, v6

    move-object v6, v7

    move-object v7, v8

    move v8, v9

    move v9, v10

    move-wide v10, v13

    invoke-virtual/range {v0 .. v11}, Landroid/net/metrics/INetdEventListener$Stub;->onWakeupEvent(Ljava/lang/String;III[BLjava/lang/String;Ljava/lang/String;IIJ)V

    .line 239
    return v12

    .line 199
    :pswitch_90  #0x3
    invoke-virtual {v2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 201
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 203
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 205
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 207
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 209
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 211
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 212
    move-object v0, p0

    move v2, v3

    move v3, v4

    move-object v4, v5

    move v5, v6

    move v6, v7

    invoke-virtual/range {v0 .. v6}, Landroid/net/metrics/INetdEventListener$Stub;->onConnectEvent(IIILjava/lang/String;II)V

    .line 213
    return v12

    .line 185
    :pswitch_b5  #0x2
    invoke-virtual {v2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 187
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 189
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 191
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 193
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_cb

    move v4, v12

    .line 194
    :cond_cb
    invoke-virtual {p0, v1, v3, v5, v4}, Landroid/net/metrics/INetdEventListener$Stub;->onPrivateDnsValidationEvent(ILjava/lang/String;Ljava/lang/String;Z)V

    .line 195
    return v12

    .line 163
    :pswitch_cf  #0x1
    invoke-virtual {v2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 165
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 167
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 169
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 171
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 173
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 175
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v7

    .line 177
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 179
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .line 180
    move-object v0, p0

    move v2, v3

    move v3, v4

    move v4, v5

    move-object v5, v6

    move-object v6, v7

    move v7, v8

    move v8, v9

    invoke-virtual/range {v0 .. v8}, Landroid/net/metrics/INetdEventListener$Stub;->onDnsEvent(IIIILjava/lang/String;[Ljava/lang/String;II)V

    .line 181
    return v12

    .line 158
    :cond_fe
    invoke-virtual {v3, v5}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 159
    return v12

    .line 273
    :cond_102
    invoke-virtual {v2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 274
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 275
    invoke-virtual {p0}, Landroid/net/metrics/INetdEventListener$Stub;->getInterfaceVersion()I

    move-result v0

    invoke-virtual {v3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 276
    return v12

    :pswitch_data_110
    .packed-switch 0x1
        :pswitch_cf  #00000001
        :pswitch_b5  #00000002
        :pswitch_90  #00000003
        :pswitch_57  #00000004
        :pswitch_37  #00000005
        :pswitch_1d  #00000006
    .end packed-switch
.end method
