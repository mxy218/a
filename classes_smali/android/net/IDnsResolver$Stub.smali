.class public abstract Landroid/net/IDnsResolver$Stub;
.super Landroid/os/Binder;
.source "IDnsResolver.java"

# interfaces
.implements Landroid/net/IDnsResolver;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/IDnsResolver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/IDnsResolver$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.net.IDnsResolver"

.field static final TRANSACTION_createNetworkCache:I = 0x8

.field static final TRANSACTION_destroyNetworkCache:I = 0x9

.field static final TRANSACTION_getInterfaceVersion:I = 0xffffff

.field static final TRANSACTION_getPrefix64:I = 0x7

.field static final TRANSACTION_getResolverInfo:I = 0x4

.field static final TRANSACTION_isAlive:I = 0x1

.field static final TRANSACTION_registerEventListener:I = 0x2

.field static final TRANSACTION_setLogSeverity:I = 0xa

.field static final TRANSACTION_setResolverConfiguration:I = 0x3

.field static final TRANSACTION_startPrefix64Discovery:I = 0x5

.field static final TRANSACTION_stopPrefix64Discovery:I = 0x6


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 64
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 65
    const-string v0, "android.net.IDnsResolver"

    invoke-virtual {p0, p0, v0}, Landroid/net/IDnsResolver$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 66
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/net/IDnsResolver;
    .registers 3

    .line 73
    if-nez p0, :cond_4

    .line 74
    const/4 p0, 0x0

    return-object p0

    .line 76
    :cond_4
    const-string v0, "android.net.IDnsResolver"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 77
    if-eqz v0, :cond_13

    instance-of v1, v0, Landroid/net/IDnsResolver;

    if-eqz v1, :cond_13

    .line 78
    check-cast v0, Landroid/net/IDnsResolver;

    return-object v0

    .line 80
    :cond_13
    new-instance v0, Landroid/net/IDnsResolver$Stub$Proxy;

    invoke-direct {v0, p0}, Landroid/net/IDnsResolver$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method

.method public static getDefaultImpl()Landroid/net/IDnsResolver;
    .registers 1

    .line 553
    sget-object v0, Landroid/net/IDnsResolver$Stub$Proxy;->sDefaultImpl:Landroid/net/IDnsResolver;

    return-object v0
.end method

.method public static setDefaultImpl(Landroid/net/IDnsResolver;)Z
    .registers 2

    .line 546
    sget-object v0, Landroid/net/IDnsResolver$Stub$Proxy;->sDefaultImpl:Landroid/net/IDnsResolver;

    if-nez v0, :cond_a

    if-eqz p0, :cond_a

    .line 547
    sput-object p0, Landroid/net/IDnsResolver$Stub$Proxy;->sDefaultImpl:Landroid/net/IDnsResolver;

    .line 548
    const/4 p0, 0x1

    return p0

    .line 550
    :cond_a
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 1

    .line 84
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 21
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 88
    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v8, p3

    .line 89
    const v3, 0xffffff

    const/4 v9, 0x1

    const-string v4, "android.net.IDnsResolver"

    if-eq v1, v3, :cond_11f

    const v3, 0x5f4e5446

    if-eq v1, v3, :cond_11b

    const/4 v3, 0x0

    packed-switch v1, :pswitch_data_12e

    .line 254
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    return v0

    .line 238
    :pswitch_1e  #0xa
    invoke-virtual {v2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 240
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 241
    invoke-virtual {v0, v1}, Landroid/net/IDnsResolver$Stub;->setLogSeverity(I)V

    .line 242
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 243
    return v9

    .line 229
    :pswitch_2c  #0x9
    invoke-virtual {v2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 231
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 232
    invoke-virtual {v0, v1}, Landroid/net/IDnsResolver$Stub;->destroyNetworkCache(I)V

    .line 233
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 234
    return v9

    .line 220
    :pswitch_3a  #0x8
    invoke-virtual {v2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 222
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 223
    invoke-virtual {v0, v1}, Landroid/net/IDnsResolver$Stub;->createNetworkCache(I)V

    .line 224
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 225
    return v9

    .line 210
    :pswitch_48  #0x7
    invoke-virtual {v2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 212
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 213
    invoke-virtual {v0, v1}, Landroid/net/IDnsResolver$Stub;->getPrefix64(I)Ljava/lang/String;

    move-result-object v0

    .line 214
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 215
    invoke-virtual {v8, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 216
    return v9

    .line 201
    :pswitch_5a  #0x6
    invoke-virtual {v2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 203
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 204
    invoke-virtual {v0, v1}, Landroid/net/IDnsResolver$Stub;->stopPrefix64Discovery(I)V

    .line 205
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 206
    return v9

    .line 192
    :pswitch_68  #0x5
    invoke-virtual {v2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 194
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 195
    invoke-virtual {v0, v1}, Landroid/net/IDnsResolver$Stub;->startPrefix64Discovery(I)V

    .line 196
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 197
    return v9

    .line 129
    :pswitch_76  #0x4
    invoke-virtual {v2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 131
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 133
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 134
    if-gez v4, :cond_85

    .line 135
    move-object v10, v3

    goto :goto_88

    .line 138
    :cond_85
    new-array v4, v4, [Ljava/lang/String;

    move-object v10, v4

    .line 141
    :goto_88
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 142
    if-gez v4, :cond_90

    .line 143
    move-object v11, v3

    goto :goto_93

    .line 146
    :cond_90
    new-array v4, v4, [Ljava/lang/String;

    move-object v11, v4

    .line 149
    :goto_93
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 150
    if-gez v4, :cond_9b

    .line 151
    move-object v12, v3

    goto :goto_9e

    .line 154
    :cond_9b
    new-array v4, v4, [Ljava/lang/String;

    move-object v12, v4

    .line 157
    :goto_9e
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 158
    if-gez v4, :cond_a6

    .line 159
    move-object v13, v3

    goto :goto_a9

    .line 162
    :cond_a6
    new-array v4, v4, [I

    move-object v13, v4

    .line 165
    :goto_a9
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 166
    if-gez v4, :cond_b1

    .line 167
    move-object v14, v3

    goto :goto_b4

    .line 170
    :cond_b1
    new-array v4, v4, [I

    move-object v14, v4

    .line 173
    :goto_b4
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 174
    if-gez v2, :cond_bc

    .line 175
    move-object v15, v3

    goto :goto_bf

    .line 178
    :cond_bc
    new-array v2, v2, [I

    move-object v15, v2

    .line 180
    :goto_bf
    move-object/from16 v0, p0

    move-object v2, v10

    move-object v3, v11

    move-object v4, v12

    move-object v5, v13

    move-object v6, v14

    move-object v7, v15

    invoke-virtual/range {v0 .. v7}, Landroid/net/IDnsResolver$Stub;->getResolverInfo(I[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[I[I[I)V

    .line 181
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 182
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 183
    invoke-virtual {v8, v11}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 184
    invoke-virtual {v8, v12}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 185
    invoke-virtual {v8, v13}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 186
    invoke-virtual {v8, v14}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 187
    invoke-virtual {v8, v15}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 188
    return v9

    .line 115
    :pswitch_e0  #0x3
    invoke-virtual {v2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 117
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_f3

    .line 118
    sget-object v1, Landroid/net/ResolverParamsParcel;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, v2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Landroid/net/ResolverParamsParcel;

    goto :goto_f4

    .line 121
    :cond_f3
    nop

    .line 123
    :goto_f4
    invoke-virtual {v0, v3}, Landroid/net/IDnsResolver$Stub;->setResolverConfiguration(Landroid/net/ResolverParamsParcel;)V

    .line 124
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 125
    return v9

    .line 106
    :pswitch_fb  #0x2
    invoke-virtual {v2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 108
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/net/metrics/INetdEventListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/metrics/INetdEventListener;

    move-result-object v1

    .line 109
    invoke-virtual {v0, v1}, Landroid/net/IDnsResolver$Stub;->registerEventListener(Landroid/net/metrics/INetdEventListener;)V

    .line 110
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 111
    return v9

    .line 98
    :pswitch_10d  #0x1
    invoke-virtual {v2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 99
    invoke-virtual/range {p0 .. p0}, Landroid/net/IDnsResolver$Stub;->isAlive()Z

    move-result v0

    .line 100
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 101
    invoke-virtual {v8, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 102
    return v9

    .line 93
    :cond_11b
    invoke-virtual {v8, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 94
    return v9

    .line 247
    :cond_11f
    invoke-virtual {v2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 248
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 249
    invoke-virtual/range {p0 .. p0}, Landroid/net/IDnsResolver$Stub;->getInterfaceVersion()I

    move-result v0

    invoke-virtual {v8, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 250
    return v9

    nop

    :pswitch_data_12e
    .packed-switch 0x1
        :pswitch_10d  #00000001
        :pswitch_fb  #00000002
        :pswitch_e0  #00000003
        :pswitch_76  #00000004
        :pswitch_68  #00000005
        :pswitch_5a  #00000006
        :pswitch_48  #00000007
        :pswitch_3a  #00000008
        :pswitch_2c  #00000009
        :pswitch_1e  #0000000a
    .end packed-switch
.end method
