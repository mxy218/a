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
    .param p0, "obj"  # Landroid/os/IBinder;

    .line 73
    if-nez p0, :cond_4

    .line 74
    const/4 v0, 0x0

    return-object v0

    .line 76
    :cond_4
    const-string v0, "android.net.IDnsResolver"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 77
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Landroid/net/IDnsResolver;

    if-eqz v1, :cond_14

    .line 78
    move-object v1, v0

    check-cast v1, Landroid/net/IDnsResolver;

    return-object v1

    .line 80
    :cond_14
    new-instance v1, Landroid/net/IDnsResolver$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/net/IDnsResolver$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static getDefaultImpl()Landroid/net/IDnsResolver;
    .registers 1

    .line 553
    sget-object v0, Landroid/net/IDnsResolver$Stub$Proxy;->sDefaultImpl:Landroid/net/IDnsResolver;

    return-object v0
.end method

.method public static setDefaultImpl(Landroid/net/IDnsResolver;)Z
    .registers 2
    .param p0, "impl"  # Landroid/net/IDnsResolver;

    .line 546
    sget-object v0, Landroid/net/IDnsResolver$Stub$Proxy;->sDefaultImpl:Landroid/net/IDnsResolver;

    if-nez v0, :cond_a

    if-eqz p0, :cond_a

    .line 547
    sput-object p0, Landroid/net/IDnsResolver$Stub$Proxy;->sDefaultImpl:Landroid/net/IDnsResolver;

    .line 548
    const/4 v0, 0x1

    return v0

    .line 550
    :cond_a
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 1

    .line 84
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 32
    .param p1, "code"  # I
    .param p2, "data"  # Landroid/os/Parcel;
    .param p3, "reply"  # Landroid/os/Parcel;
    .param p4, "flags"  # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 88
    move-object/from16 v8, p0

    move/from16 v9, p1

    move-object/from16 v10, p2

    move-object/from16 v11, p3

    const-string v12, "android.net.IDnsResolver"

    .line 89
    .local v12, "descriptor":Ljava/lang/String;
    const v0, 0xffffff

    const/4 v13, 0x1

    if-eq v9, v0, :cond_14c

    const v0, 0x5f4e5446

    if-eq v9, v0, :cond_147

    packed-switch v9, :pswitch_data_15c

    .line 254
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    return v0

    .line 238
    :pswitch_1d  #0xa
    invoke-virtual {v10, v12}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 240
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 241
    .local v0, "_arg0":I
    invoke-virtual {v8, v0}, Landroid/net/IDnsResolver$Stub;->setLogSeverity(I)V

    .line 242
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 243
    return v13

    .line 229
    .end local v0  # "_arg0":I
    :pswitch_2b  #0x9
    invoke-virtual {v10, v12}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 231
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 232
    .restart local v0  # "_arg0":I
    invoke-virtual {v8, v0}, Landroid/net/IDnsResolver$Stub;->destroyNetworkCache(I)V

    .line 233
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 234
    return v13

    .line 220
    .end local v0  # "_arg0":I
    :pswitch_39  #0x8
    invoke-virtual {v10, v12}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 222
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 223
    .restart local v0  # "_arg0":I
    invoke-virtual {v8, v0}, Landroid/net/IDnsResolver$Stub;->createNetworkCache(I)V

    .line 224
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 225
    return v13

    .line 210
    .end local v0  # "_arg0":I
    :pswitch_47  #0x7
    invoke-virtual {v10, v12}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 212
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 213
    .restart local v0  # "_arg0":I
    invoke-virtual {v8, v0}, Landroid/net/IDnsResolver$Stub;->getPrefix64(I)Ljava/lang/String;

    move-result-object v1

    .line 214
    .local v1, "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 215
    invoke-virtual {v11, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 216
    return v13

    .line 201
    .end local v0  # "_arg0":I
    .end local v1  # "_result":Ljava/lang/String;
    :pswitch_59  #0x6
    invoke-virtual {v10, v12}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 203
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 204
    .restart local v0  # "_arg0":I
    invoke-virtual {v8, v0}, Landroid/net/IDnsResolver$Stub;->stopPrefix64Discovery(I)V

    .line 205
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 206
    return v13

    .line 192
    .end local v0  # "_arg0":I
    :pswitch_67  #0x5
    invoke-virtual {v10, v12}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 194
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 195
    .restart local v0  # "_arg0":I
    invoke-virtual {v8, v0}, Landroid/net/IDnsResolver$Stub;->startPrefix64Discovery(I)V

    .line 196
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 197
    return v13

    .line 129
    .end local v0  # "_arg0":I
    :pswitch_75  #0x4
    invoke-virtual {v10, v12}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 131
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v14

    .line 133
    .local v14, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v15

    .line 134
    .local v15, "_arg1_length":I
    if-gez v15, :cond_85

    .line 135
    const/4 v0, 0x0

    move-object v7, v0

    .local v0, "_arg1":[Ljava/lang/String;
    goto :goto_88

    .line 138
    .end local v0  # "_arg1":[Ljava/lang/String;
    :cond_85
    new-array v0, v15, [Ljava/lang/String;

    move-object v7, v0

    .line 141
    .local v7, "_arg1":[Ljava/lang/String;
    :goto_88
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 142
    .local v6, "_arg2_length":I
    if-gez v6, :cond_91

    .line 143
    const/4 v0, 0x0

    move-object v5, v0

    .local v0, "_arg2":[Ljava/lang/String;
    goto :goto_94

    .line 146
    .end local v0  # "_arg2":[Ljava/lang/String;
    :cond_91
    new-array v0, v6, [Ljava/lang/String;

    move-object v5, v0

    .line 149
    .local v5, "_arg2":[Ljava/lang/String;
    :goto_94
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 150
    .local v4, "_arg3_length":I
    if-gez v4, :cond_9d

    .line 151
    const/4 v0, 0x0

    move-object v3, v0

    .local v0, "_arg3":[Ljava/lang/String;
    goto :goto_a0

    .line 154
    .end local v0  # "_arg3":[Ljava/lang/String;
    :cond_9d
    new-array v0, v4, [Ljava/lang/String;

    move-object v3, v0

    .line 157
    .local v3, "_arg3":[Ljava/lang/String;
    :goto_a0
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 158
    .local v2, "_arg4_length":I
    if-gez v2, :cond_a9

    .line 159
    const/4 v0, 0x0

    move-object v1, v0

    .local v0, "_arg4":[I
    goto :goto_ac

    .line 162
    .end local v0  # "_arg4":[I
    :cond_a9
    new-array v0, v2, [I

    move-object v1, v0

    .line 165
    .local v1, "_arg4":[I
    :goto_ac
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 166
    .local v0, "_arg5_length":I
    if-gez v0, :cond_b7

    .line 167
    const/16 v16, 0x0

    move-object/from16 v13, v16

    .local v16, "_arg5":[I
    goto :goto_b9

    .line 170
    .end local v16  # "_arg5":[I
    :cond_b7
    new-array v13, v0, [I

    .line 173
    .local v13, "_arg5":[I
    :goto_b9
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .line 174
    .local v9, "_arg6_length":I
    if-gez v9, :cond_c8

    .line 175
    const/16 v17, 0x0

    move-object/from16 v26, v17

    move/from16 v17, v0

    move-object/from16 v0, v26

    .local v17, "_arg6":[I
    goto :goto_cc

    .line 178
    .end local v17  # "_arg6":[I
    :cond_c8
    move/from16 v17, v0

    .end local v0  # "_arg5_length":I
    .local v17, "_arg5_length":I
    new-array v0, v9, [I

    .line 180
    .local v0, "_arg6":[I
    :goto_cc
    move-object/from16 v18, v0

    .end local v0  # "_arg6":[I
    .local v18, "_arg6":[I
    move-object/from16 v0, p0

    move-object/from16 v19, v1

    .end local v1  # "_arg4":[I
    .local v19, "_arg4":[I
    move v1, v14

    move/from16 v20, v2

    .end local v2  # "_arg4_length":I
    .local v20, "_arg4_length":I
    move-object v2, v7

    move-object/from16 v21, v3

    .end local v3  # "_arg3":[Ljava/lang/String;
    .local v21, "_arg3":[Ljava/lang/String;
    move-object v3, v5

    move/from16 v22, v4

    .end local v4  # "_arg3_length":I
    .local v22, "_arg3_length":I
    move-object/from16 v4, v21

    move/from16 v23, v9

    move-object v9, v5

    .end local v5  # "_arg2":[Ljava/lang/String;
    .local v9, "_arg2":[Ljava/lang/String;
    .local v23, "_arg6_length":I
    move-object/from16 v5, v19

    move/from16 v24, v6

    .end local v6  # "_arg2_length":I
    .local v24, "_arg2_length":I
    move-object v6, v13

    move/from16 v25, v14

    move-object v14, v7

    .end local v7  # "_arg1":[Ljava/lang/String;
    .local v14, "_arg1":[Ljava/lang/String;
    .local v25, "_arg0":I
    move-object/from16 v7, v18

    invoke-virtual/range {v0 .. v7}, Landroid/net/IDnsResolver$Stub;->getResolverInfo(I[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[I[I[I)V

    .line 181
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 182
    invoke-virtual {v11, v14}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 183
    invoke-virtual {v11, v9}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 184
    move-object/from16 v0, v21

    .end local v21  # "_arg3":[Ljava/lang/String;
    .local v0, "_arg3":[Ljava/lang/String;
    invoke-virtual {v11, v0}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 185
    move-object/from16 v1, v19

    .end local v19  # "_arg4":[I
    .restart local v1  # "_arg4":[I
    invoke-virtual {v11, v1}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 186
    invoke-virtual {v11, v13}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 187
    move-object/from16 v2, v18

    .end local v18  # "_arg6":[I
    .local v2, "_arg6":[I
    invoke-virtual {v11, v2}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 188
    const/4 v3, 0x1

    return v3

    .line 115
    .end local v0  # "_arg3":[Ljava/lang/String;
    .end local v1  # "_arg4":[I
    .end local v2  # "_arg6":[I
    .end local v9  # "_arg2":[Ljava/lang/String;
    .end local v13  # "_arg5":[I
    .end local v14  # "_arg1":[Ljava/lang/String;
    .end local v15  # "_arg1_length":I
    .end local v17  # "_arg5_length":I
    .end local v20  # "_arg4_length":I
    .end local v22  # "_arg3_length":I
    .end local v23  # "_arg6_length":I
    .end local v24  # "_arg2_length":I
    .end local v25  # "_arg0":I
    :pswitch_10a  #0x3
    invoke-virtual {v10, v12}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 117
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_11c

    .line 118
    sget-object v0, Landroid/net/ResolverParamsParcel;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v10}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ResolverParamsParcel;

    .local v0, "_arg0":Landroid/net/ResolverParamsParcel;
    goto :goto_11d

    .line 121
    .end local v0  # "_arg0":Landroid/net/ResolverParamsParcel;
    :cond_11c
    const/4 v0, 0x0

    .line 123
    .restart local v0  # "_arg0":Landroid/net/ResolverParamsParcel;
    :goto_11d
    invoke-virtual {v8, v0}, Landroid/net/IDnsResolver$Stub;->setResolverConfiguration(Landroid/net/ResolverParamsParcel;)V

    .line 124
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 125
    const/4 v1, 0x1

    return v1

    .line 106
    .end local v0  # "_arg0":Landroid/net/ResolverParamsParcel;
    :pswitch_125  #0x2
    move v1, v13

    invoke-virtual {v10, v12}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 108
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/net/metrics/INetdEventListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/metrics/INetdEventListener;

    move-result-object v0

    .line 109
    .local v0, "_arg0":Landroid/net/metrics/INetdEventListener;
    invoke-virtual {v8, v0}, Landroid/net/IDnsResolver$Stub;->registerEventListener(Landroid/net/metrics/INetdEventListener;)V

    .line 110
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 111
    return v1

    .line 98
    .end local v0  # "_arg0":Landroid/net/metrics/INetdEventListener;
    :pswitch_138  #0x1
    invoke-virtual {v10, v12}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 99
    invoke-virtual/range {p0 .. p0}, Landroid/net/IDnsResolver$Stub;->isAlive()Z

    move-result v0

    .line 100
    .local v0, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 101
    invoke-virtual {v11, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 102
    const/4 v1, 0x1

    return v1

    .line 93
    .end local v0  # "_result":Z
    :cond_147
    move v1, v13

    invoke-virtual {v11, v12}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 94
    return v1

    .line 247
    :cond_14c
    move v1, v13

    invoke-virtual {v10, v12}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 248
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 249
    invoke-virtual/range {p0 .. p0}, Landroid/net/IDnsResolver$Stub;->getInterfaceVersion()I

    move-result v0

    invoke-virtual {v11, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 250
    return v1

    nop

    :pswitch_data_15c
    .packed-switch 0x1
        :pswitch_138  #00000001
        :pswitch_125  #00000002
        :pswitch_10a  #00000003
        :pswitch_75  #00000004
        :pswitch_67  #00000005
        :pswitch_59  #00000006
        :pswitch_47  #00000007
        :pswitch_39  #00000008
        :pswitch_2b  #00000009
        :pswitch_1d  #0000000a
    .end packed-switch
.end method
