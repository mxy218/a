.class public abstract Landroid/hardware/biometrics/face/V1_0/IBiometricsFace$Stub;
.super Landroid/os/HwBinder;
.source "IBiometricsFace.java"

# interfaces
.implements Landroid/hardware/biometrics/face/V1_0/IBiometricsFace;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/biometrics/face/V1_0/IBiometricsFace;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 829
    invoke-direct {p0}, Landroid/os/HwBinder;-><init>()V

    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IHwBinder;
    .registers 1

    .line 832
    return-object p0
.end method

.method public debug(Landroid/os/NativeHandle;Ljava/util/ArrayList;)V
    .registers 3
    .param p1, "fd"  # Landroid/os/NativeHandle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/NativeHandle;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 845
    .local p2, "options":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    return-void
.end method

.method public final getDebugInfo()Landroid/hidl/base/V1_0/DebugInfo;
    .registers 4

    .line 882
    new-instance v0, Landroid/hidl/base/V1_0/DebugInfo;

    invoke-direct {v0}, Landroid/hidl/base/V1_0/DebugInfo;-><init>()V

    .line 883
    .local v0, "info":Landroid/hidl/base/V1_0/DebugInfo;
    invoke-static {}, Landroid/os/HidlSupport;->getPidIfSharable()I

    move-result v1

    iput v1, v0, Landroid/hidl/base/V1_0/DebugInfo;->pid:I

    .line 884
    const-wide/16 v1, 0x0

    iput-wide v1, v0, Landroid/hidl/base/V1_0/DebugInfo;->ptr:J

    .line 885
    const/4 v1, 0x0

    iput v1, v0, Landroid/hidl/base/V1_0/DebugInfo;->arch:I

    .line 886
    return-object v0
.end method

.method public final getHashChain()Ljava/util/ArrayList;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "[B>;"
        }
    .end annotation

    .line 857
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x2

    new-array v1, v1, [[B

    const/16 v2, 0x20

    new-array v3, v2, [B

    fill-array-data v3, :array_20

    const/4 v4, 0x0

    aput-object v3, v1, v4

    new-array v2, v2, [B

    fill-array-data v2, :array_34

    const/4 v3, 0x1

    aput-object v2, v1, v3

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0

    nop

    :array_20
    .array-data 1
        -0x1ft
        -0x71t
        -0xdt
        0x18t
        -0xdt
        -0x4t
        0x43t
        -0x25t
        0x37t
        -0xbt
        0x54t
        0x69t
        0x6dt
        -0x3ct
        -0x1bt
        0x51t
        -0x55t
        -0x47t
        -0x4ft
        0x19t
        -0x43t
        -0x1bt
        0x39t
        0x50t
        -0x9t
        0x3et
        0x28t
        -0x32t
        0x33t
        -0x57t
        0x7at
        0x40t
    .end array-data

    :array_34
    .array-data 1
        -0x14t
        0x7ft
        -0x29t
        -0x62t
        -0x30t
        0x2dt
        -0x6t
        -0x7bt
        -0x44t
        0x49t
        -0x6ct
        0x26t
        -0x53t
        -0x52t
        0x3et
        -0x42t
        0x23t
        -0x11t
        0x5t
        0x24t
        -0xdt
        -0x33t
        0x69t
        0x57t
        0x13t
        -0x6dt
        0x24t
        -0x48t
        0x3bt
        0x18t
        -0x36t
        0x4ct
    .end array-data
.end method

.method public final interfaceChain()Ljava/util/ArrayList;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 837
    new-instance v0, Ljava/util/ArrayList;

    const-string v1, "android.hardware.biometrics.face@1.0::IBiometricsFace"

    const-string v2, "android.hidl.base@1.0::IBase"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public final interfaceDescriptor()Ljava/lang/String;
    .registers 2

    .line 851
    const-string v0, "android.hardware.biometrics.face@1.0::IBiometricsFace"

    return-object v0
.end method

.method public final linkToDeath(Landroid/os/IHwBinder$DeathRecipient;J)Z
    .registers 5
    .param p1, "recipient"  # Landroid/os/IHwBinder$DeathRecipient;
    .param p2, "cookie"  # J

    .line 870
    const/4 v0, 0x1

    return v0
.end method

.method public final notifySyspropsChanged()V
    .registers 1

    .line 892
    invoke-static {}, Landroid/os/HwBinder;->enableInstrumentation()V

    .line 894
    return-void
.end method

.method public onTransact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V
    .registers 16
    .param p1, "_hidl_code"  # I
    .param p2, "_hidl_request"  # Landroid/os/HwParcel;
    .param p3, "_hidl_reply"  # Landroid/os/HwParcel;
    .param p4, "_hidl_flags"  # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 922
    const-string v0, "android.hardware.biometrics.face@1.0::IBiometricsFace"

    const/high16 v1, -0x80000000

    const/4 v2, 0x0

    const/4 v3, 0x1

    packed-switch p1, :pswitch_data_388

    const-string v0, "android.hidl.base@1.0::IBase"

    sparse-switch p1, :sswitch_data_3a8

    goto/16 :goto_387

    .line 1320
    :sswitch_10
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_15

    move v2, v3

    :cond_15
    move v0, v2

    .line 1321
    .local v0, "_hidl_is_oneway":Z
    if-eqz v0, :cond_387

    .line 1322
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1323
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1324
    goto/16 :goto_387

    .line 1307
    .end local v0  # "_hidl_is_oneway":Z
    :sswitch_20
    and-int/lit8 v4, p4, 0x1

    if-eqz v4, :cond_25

    move v2, v3

    .line 1308
    .local v2, "_hidl_is_oneway":Z
    :cond_25
    if-eq v2, v3, :cond_2f

    .line 1309
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1310
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1311
    goto/16 :goto_387

    .line 1312
    :cond_2f
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1314
    invoke-virtual {p0}, Landroid/hardware/biometrics/face/V1_0/IBiometricsFace$Stub;->notifySyspropsChanged()V

    .line 1315
    goto/16 :goto_387

    .line 1291
    .end local v2  # "_hidl_is_oneway":Z
    :sswitch_37
    and-int/lit8 v4, p4, 0x1

    if-eqz v4, :cond_3c

    goto :goto_3d

    :cond_3c
    move v3, v2

    .line 1292
    .local v3, "_hidl_is_oneway":Z
    :goto_3d
    if-eqz v3, :cond_47

    .line 1293
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1294
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1295
    goto/16 :goto_387

    .line 1296
    :cond_47
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1298
    invoke-virtual {p0}, Landroid/hardware/biometrics/face/V1_0/IBiometricsFace$Stub;->getDebugInfo()Landroid/hidl/base/V1_0/DebugInfo;

    move-result-object v0

    .line 1299
    .local v0, "_hidl_out_info":Landroid/hidl/base/V1_0/DebugInfo;
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1300
    invoke-virtual {v0, p3}, Landroid/hidl/base/V1_0/DebugInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 1301
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1302
    goto/16 :goto_387

    .line 1276
    .end local v0  # "_hidl_out_info":Landroid/hidl/base/V1_0/DebugInfo;
    .end local v3  # "_hidl_is_oneway":Z
    :sswitch_59
    and-int/lit8 v4, p4, 0x1

    if-eqz v4, :cond_5e

    goto :goto_5f

    :cond_5e
    move v3, v2

    .line 1277
    .restart local v3  # "_hidl_is_oneway":Z
    :goto_5f
    if-eqz v3, :cond_69

    .line 1278
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1279
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1280
    goto/16 :goto_387

    .line 1281
    :cond_69
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1283
    invoke-virtual {p0}, Landroid/hardware/biometrics/face/V1_0/IBiometricsFace$Stub;->ping()V

    .line 1284
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1285
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1286
    goto/16 :goto_387

    .line 1266
    .end local v3  # "_hidl_is_oneway":Z
    :sswitch_77
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_7c

    move v2, v3

    :cond_7c
    move v0, v2

    .line 1267
    .local v0, "_hidl_is_oneway":Z
    if-eqz v0, :cond_387

    .line 1268
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1269
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1270
    goto/16 :goto_387

    .line 1253
    .end local v0  # "_hidl_is_oneway":Z
    :sswitch_87
    and-int/lit8 v4, p4, 0x1

    if-eqz v4, :cond_8c

    move v2, v3

    .line 1254
    .restart local v2  # "_hidl_is_oneway":Z
    :cond_8c
    if-eq v2, v3, :cond_96

    .line 1255
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1256
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1257
    goto/16 :goto_387

    .line 1258
    :cond_96
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1260
    invoke-virtual {p0}, Landroid/hardware/biometrics/face/V1_0/IBiometricsFace$Stub;->setHALInstrumentation()V

    .line 1261
    goto/16 :goto_387

    .line 1214
    .end local v2  # "_hidl_is_oneway":Z
    :sswitch_9e
    and-int/lit8 v4, p4, 0x1

    if-eqz v4, :cond_a3

    goto :goto_a4

    :cond_a3
    move v3, v2

    .line 1215
    .restart local v3  # "_hidl_is_oneway":Z
    :goto_a4
    if-eqz v3, :cond_ae

    .line 1216
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1217
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1218
    goto/16 :goto_387

    .line 1219
    :cond_ae
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1221
    invoke-virtual {p0}, Landroid/hardware/biometrics/face/V1_0/IBiometricsFace$Stub;->getHashChain()Ljava/util/ArrayList;

    move-result-object v0

    .line 1222
    .local v0, "_hidl_out_hashchain":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1224
    new-instance v1, Landroid/os/HwBlob;

    const/16 v4, 0x10

    invoke-direct {v1, v4}, Landroid/os/HwBlob;-><init>(I)V

    .line 1226
    .local v1, "_hidl_blob":Landroid/os/HwBlob;
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 1227
    .local v4, "_hidl_vec_size":I
    const-wide/16 v5, 0x8

    invoke-virtual {v1, v5, v6, v4}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 1228
    const-wide/16 v5, 0xc

    invoke-virtual {v1, v5, v6, v2}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 1229
    new-instance v2, Landroid/os/HwBlob;

    mul-int/lit8 v5, v4, 0x20

    invoke-direct {v2, v5}, Landroid/os/HwBlob;-><init>(I)V

    .line 1230
    .local v2, "childBlob":Landroid/os/HwBlob;
    const/4 v5, 0x0

    .local v5, "_hidl_index_0":I
    :goto_d5
    if-ge v5, v4, :cond_f6

    .line 1232
    mul-int/lit8 v6, v5, 0x20

    int-to-long v6, v6

    .line 1233
    .local v6, "_hidl_array_offset_1":J
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [B

    .line 1235
    .local v8, "_hidl_array_item_1":[B
    if-eqz v8, :cond_ee

    array-length v9, v8

    const/16 v10, 0x20

    if-ne v9, v10, :cond_ee

    .line 1239
    invoke-virtual {v2, v6, v7, v8}, Landroid/os/HwBlob;->putInt8Array(J[B)V

    .line 1240
    nop

    .line 1230
    .end local v6  # "_hidl_array_offset_1":J
    .end local v8  # "_hidl_array_item_1":[B
    add-int/lit8 v5, v5, 0x1

    goto :goto_d5

    .line 1236
    .restart local v6  # "_hidl_array_offset_1":J
    .restart local v8  # "_hidl_array_item_1":[B
    :cond_ee
    new-instance v9, Ljava/lang/IllegalArgumentException;

    const-string v10, "Array element is not of the expected length"

    invoke-direct {v9, v10}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 1243
    .end local v5  # "_hidl_index_0":I
    .end local v6  # "_hidl_array_offset_1":J
    .end local v8  # "_hidl_array_item_1":[B
    :cond_f6
    const-wide/16 v5, 0x0

    invoke-virtual {v1, v5, v6, v2}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    .line 1245
    .end local v2  # "childBlob":Landroid/os/HwBlob;
    .end local v4  # "_hidl_vec_size":I
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    .line 1247
    .end local v1  # "_hidl_blob":Landroid/os/HwBlob;
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1248
    goto/16 :goto_387

    .line 1198
    .end local v0  # "_hidl_out_hashchain":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    .end local v3  # "_hidl_is_oneway":Z
    :sswitch_103
    and-int/lit8 v4, p4, 0x1

    if-eqz v4, :cond_108

    goto :goto_109

    :cond_108
    move v3, v2

    .line 1199
    .restart local v3  # "_hidl_is_oneway":Z
    :goto_109
    if-eqz v3, :cond_113

    .line 1200
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1201
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1202
    goto/16 :goto_387

    .line 1203
    :cond_113
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1205
    invoke-virtual {p0}, Landroid/hardware/biometrics/face/V1_0/IBiometricsFace$Stub;->interfaceDescriptor()Ljava/lang/String;

    move-result-object v0

    .line 1206
    .local v0, "_hidl_out_descriptor":Ljava/lang/String;
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1207
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 1208
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1209
    goto/16 :goto_387

    .line 1181
    .end local v0  # "_hidl_out_descriptor":Ljava/lang/String;
    .end local v3  # "_hidl_is_oneway":Z
    :sswitch_125
    and-int/lit8 v4, p4, 0x1

    if-eqz v4, :cond_12a

    goto :goto_12b

    :cond_12a
    move v3, v2

    .line 1182
    .restart local v3  # "_hidl_is_oneway":Z
    :goto_12b
    if-eqz v3, :cond_135

    .line 1183
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1184
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1185
    goto/16 :goto_387

    .line 1186
    :cond_135
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1188
    invoke-virtual {p2}, Landroid/os/HwParcel;->readNativeHandle()Landroid/os/NativeHandle;

    move-result-object v0

    .line 1189
    .local v0, "fd":Landroid/os/NativeHandle;
    invoke-virtual {p2}, Landroid/os/HwParcel;->readStringVector()Ljava/util/ArrayList;

    move-result-object v1

    .line 1190
    .local v1, "options":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {p0, v0, v1}, Landroid/hardware/biometrics/face/V1_0/IBiometricsFace$Stub;->debug(Landroid/os/NativeHandle;Ljava/util/ArrayList;)V

    .line 1191
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1192
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1193
    goto/16 :goto_387

    .line 1165
    .end local v0  # "fd":Landroid/os/NativeHandle;
    .end local v1  # "options":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v3  # "_hidl_is_oneway":Z
    :sswitch_14b
    and-int/lit8 v4, p4, 0x1

    if-eqz v4, :cond_150

    goto :goto_151

    :cond_150
    move v3, v2

    .line 1166
    .restart local v3  # "_hidl_is_oneway":Z
    :goto_151
    if-eqz v3, :cond_15b

    .line 1167
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1168
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1169
    goto/16 :goto_387

    .line 1170
    :cond_15b
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1172
    invoke-virtual {p0}, Landroid/hardware/biometrics/face/V1_0/IBiometricsFace$Stub;->interfaceChain()Ljava/util/ArrayList;

    move-result-object v0

    .line 1173
    .local v0, "_hidl_out_descriptors":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1174
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStringVector(Ljava/util/ArrayList;)V

    .line 1175
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1176
    goto/16 :goto_387

    .line 1148
    .end local v0  # "_hidl_out_descriptors":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v3  # "_hidl_is_oneway":Z
    :pswitch_16d  #0xe
    and-int/lit8 v4, p4, 0x1

    if-eqz v4, :cond_172

    goto :goto_173

    :cond_172
    move v3, v2

    .line 1149
    .restart local v3  # "_hidl_is_oneway":Z
    :goto_173
    if-eqz v3, :cond_17d

    .line 1150
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1151
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1152
    goto/16 :goto_387

    .line 1153
    :cond_17d
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1155
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt8Vector()Ljava/util/ArrayList;

    move-result-object v0

    .line 1156
    .local v0, "hat":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    invoke-virtual {p0, v0}, Landroid/hardware/biometrics/face/V1_0/IBiometricsFace$Stub;->resetLockout(Ljava/util/ArrayList;)I

    move-result v1

    .line 1157
    .local v1, "_hidl_out_status":I
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1158
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 1159
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1160
    goto/16 :goto_387

    .line 1132
    .end local v0  # "hat":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    .end local v1  # "_hidl_out_status":I
    .end local v3  # "_hidl_is_oneway":Z
    :pswitch_193  #0xd
    and-int/lit8 v4, p4, 0x1

    if-eqz v4, :cond_198

    goto :goto_199

    :cond_198
    move v3, v2

    .line 1133
    .restart local v3  # "_hidl_is_oneway":Z
    :goto_199
    if-eqz v3, :cond_1a3

    .line 1134
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1135
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1136
    goto/16 :goto_387

    .line 1137
    :cond_1a3
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1139
    invoke-virtual {p0}, Landroid/hardware/biometrics/face/V1_0/IBiometricsFace$Stub;->userActivity()I

    move-result v0

    .line 1140
    .local v0, "_hidl_out_status":I
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1141
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 1142
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1143
    goto/16 :goto_387

    .line 1115
    .end local v0  # "_hidl_out_status":I
    .end local v3  # "_hidl_is_oneway":Z
    :pswitch_1b5  #0xc
    and-int/lit8 v4, p4, 0x1

    if-eqz v4, :cond_1ba

    goto :goto_1bb

    :cond_1ba
    move v3, v2

    .line 1116
    .restart local v3  # "_hidl_is_oneway":Z
    :goto_1bb
    if-eqz v3, :cond_1c5

    .line 1117
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1118
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1119
    goto/16 :goto_387

    .line 1120
    :cond_1c5
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1122
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt64()J

    move-result-wide v0

    .line 1123
    .local v0, "operationId":J
    invoke-virtual {p0, v0, v1}, Landroid/hardware/biometrics/face/V1_0/IBiometricsFace$Stub;->authenticate(J)I

    move-result v4

    .line 1124
    .local v4, "_hidl_out_status":I
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1125
    invoke-virtual {p3, v4}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 1126
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1127
    goto/16 :goto_387

    .line 1098
    .end local v0  # "operationId":J
    .end local v3  # "_hidl_is_oneway":Z
    .end local v4  # "_hidl_out_status":I
    :pswitch_1db  #0xb
    and-int/lit8 v4, p4, 0x1

    if-eqz v4, :cond_1e0

    goto :goto_1e1

    :cond_1e0
    move v3, v2

    .line 1099
    .restart local v3  # "_hidl_is_oneway":Z
    :goto_1e1
    if-eqz v3, :cond_1eb

    .line 1100
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1101
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1102
    goto/16 :goto_387

    .line 1103
    :cond_1eb
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1105
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 1106
    .local v0, "faceId":I
    invoke-virtual {p0, v0}, Landroid/hardware/biometrics/face/V1_0/IBiometricsFace$Stub;->remove(I)I

    move-result v1

    .line 1107
    .restart local v1  # "_hidl_out_status":I
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1108
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 1109
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1110
    goto/16 :goto_387

    .line 1082
    .end local v0  # "faceId":I
    .end local v1  # "_hidl_out_status":I
    .end local v3  # "_hidl_is_oneway":Z
    :pswitch_201  #0xa
    and-int/lit8 v4, p4, 0x1

    if-eqz v4, :cond_206

    goto :goto_207

    :cond_206
    move v3, v2

    .line 1083
    .restart local v3  # "_hidl_is_oneway":Z
    :goto_207
    if-eqz v3, :cond_211

    .line 1084
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1085
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1086
    goto/16 :goto_387

    .line 1087
    :cond_211
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1089
    invoke-virtual {p0}, Landroid/hardware/biometrics/face/V1_0/IBiometricsFace$Stub;->enumerate()I

    move-result v0

    .line 1090
    .local v0, "_hidl_out_status":I
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1091
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 1092
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1093
    goto/16 :goto_387

    .line 1066
    .end local v0  # "_hidl_out_status":I
    .end local v3  # "_hidl_is_oneway":Z
    :pswitch_223  #0x9
    and-int/lit8 v4, p4, 0x1

    if-eqz v4, :cond_228

    goto :goto_229

    :cond_228
    move v3, v2

    .line 1067
    .restart local v3  # "_hidl_is_oneway":Z
    :goto_229
    if-eqz v3, :cond_233

    .line 1068
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1069
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1070
    goto/16 :goto_387

    .line 1071
    :cond_233
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1073
    invoke-virtual {p0}, Landroid/hardware/biometrics/face/V1_0/IBiometricsFace$Stub;->cancel()I

    move-result v0

    .line 1074
    .restart local v0  # "_hidl_out_status":I
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1075
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 1076
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1077
    goto/16 :goto_387

    .line 1050
    .end local v0  # "_hidl_out_status":I
    .end local v3  # "_hidl_is_oneway":Z
    :pswitch_245  #0x8
    and-int/lit8 v4, p4, 0x1

    if-eqz v4, :cond_24a

    goto :goto_24b

    :cond_24a
    move v3, v2

    .line 1051
    .restart local v3  # "_hidl_is_oneway":Z
    :goto_24b
    if-eqz v3, :cond_255

    .line 1052
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1053
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1054
    goto/16 :goto_387

    .line 1055
    :cond_255
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1057
    invoke-virtual {p0}, Landroid/hardware/biometrics/face/V1_0/IBiometricsFace$Stub;->getAuthenticatorId()Landroid/hardware/biometrics/face/V1_0/OptionalUint64;

    move-result-object v0

    .line 1058
    .local v0, "_hidl_out_result":Landroid/hardware/biometrics/face/V1_0/OptionalUint64;
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1059
    invoke-virtual {v0, p3}, Landroid/hardware/biometrics/face/V1_0/OptionalUint64;->writeToParcel(Landroid/os/HwParcel;)V

    .line 1060
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1061
    goto/16 :goto_387

    .line 1032
    .end local v0  # "_hidl_out_result":Landroid/hardware/biometrics/face/V1_0/OptionalUint64;
    .end local v3  # "_hidl_is_oneway":Z
    :pswitch_267  #0x7
    and-int/lit8 v4, p4, 0x1

    if-eqz v4, :cond_26c

    goto :goto_26d

    :cond_26c
    move v3, v2

    .line 1033
    .restart local v3  # "_hidl_is_oneway":Z
    :goto_26d
    if-eqz v3, :cond_277

    .line 1034
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1035
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1036
    goto/16 :goto_387

    .line 1037
    :cond_277
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1039
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 1040
    .local v0, "feature":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 1041
    .local v1, "faceId":I
    invoke-virtual {p0, v0, v1}, Landroid/hardware/biometrics/face/V1_0/IBiometricsFace$Stub;->getFeature(II)Landroid/hardware/biometrics/face/V1_0/OptionalBool;

    move-result-object v4

    .line 1042
    .local v4, "_hidl_out_result":Landroid/hardware/biometrics/face/V1_0/OptionalBool;
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1043
    invoke-virtual {v4, p3}, Landroid/hardware/biometrics/face/V1_0/OptionalBool;->writeToParcel(Landroid/os/HwParcel;)V

    .line 1044
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1045
    goto/16 :goto_387

    .line 1012
    .end local v0  # "feature":I
    .end local v1  # "faceId":I
    .end local v3  # "_hidl_is_oneway":Z
    .end local v4  # "_hidl_out_result":Landroid/hardware/biometrics/face/V1_0/OptionalBool;
    :pswitch_291  #0x6
    and-int/lit8 v4, p4, 0x1

    if-eqz v4, :cond_296

    goto :goto_297

    :cond_296
    move v3, v2

    .line 1013
    .restart local v3  # "_hidl_is_oneway":Z
    :goto_297
    if-eqz v3, :cond_2a1

    .line 1014
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1015
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1016
    goto/16 :goto_387

    .line 1017
    :cond_2a1
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1019
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 1020
    .restart local v0  # "feature":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v1

    .line 1021
    .local v1, "enabled":Z
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt8Vector()Ljava/util/ArrayList;

    move-result-object v4

    .line 1022
    .local v4, "hat":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v5

    .line 1023
    .local v5, "faceId":I
    invoke-virtual {p0, v0, v1, v4, v5}, Landroid/hardware/biometrics/face/V1_0/IBiometricsFace$Stub;->setFeature(IZLjava/util/ArrayList;I)I

    move-result v6

    .line 1024
    .local v6, "_hidl_out_status":I
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1025
    invoke-virtual {p3, v6}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 1026
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1027
    goto/16 :goto_387

    .line 996
    .end local v0  # "feature":I
    .end local v1  # "enabled":Z
    .end local v3  # "_hidl_is_oneway":Z
    .end local v4  # "hat":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    .end local v5  # "faceId":I
    .end local v6  # "_hidl_out_status":I
    :pswitch_2c3  #0x5
    and-int/lit8 v4, p4, 0x1

    if-eqz v4, :cond_2c8

    goto :goto_2c9

    :cond_2c8
    move v3, v2

    .line 997
    .restart local v3  # "_hidl_is_oneway":Z
    :goto_2c9
    if-eqz v3, :cond_2d3

    .line 998
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 999
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1000
    goto/16 :goto_387

    .line 1001
    :cond_2d3
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1003
    invoke-virtual {p0}, Landroid/hardware/biometrics/face/V1_0/IBiometricsFace$Stub;->revokeChallenge()I

    move-result v0

    .line 1004
    .local v0, "_hidl_out_status":I
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1005
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 1006
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1007
    goto/16 :goto_387

    .line 977
    .end local v0  # "_hidl_out_status":I
    .end local v3  # "_hidl_is_oneway":Z
    :pswitch_2e5  #0x4
    and-int/lit8 v4, p4, 0x1

    if-eqz v4, :cond_2ea

    goto :goto_2eb

    :cond_2ea
    move v3, v2

    .line 978
    .restart local v3  # "_hidl_is_oneway":Z
    :goto_2eb
    if-eqz v3, :cond_2f5

    .line 979
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 980
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 981
    goto/16 :goto_387

    .line 982
    :cond_2f5
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 984
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt8Vector()Ljava/util/ArrayList;

    move-result-object v0

    .line 985
    .local v0, "hat":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 986
    .local v1, "timeoutSec":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32Vector()Ljava/util/ArrayList;

    move-result-object v4

    .line 987
    .local v4, "disabledFeatures":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-virtual {p0, v0, v1, v4}, Landroid/hardware/biometrics/face/V1_0/IBiometricsFace$Stub;->enroll(Ljava/util/ArrayList;ILjava/util/ArrayList;)I

    move-result v5

    .line 988
    .local v5, "_hidl_out_status":I
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 989
    invoke-virtual {p3, v5}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 990
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 991
    goto/16 :goto_387

    .line 960
    .end local v0  # "hat":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    .end local v1  # "timeoutSec":I
    .end local v3  # "_hidl_is_oneway":Z
    .end local v4  # "disabledFeatures":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .end local v5  # "_hidl_out_status":I
    :pswitch_313  #0x3
    and-int/lit8 v4, p4, 0x1

    if-eqz v4, :cond_318

    goto :goto_319

    :cond_318
    move v3, v2

    .line 961
    .restart local v3  # "_hidl_is_oneway":Z
    :goto_319
    if-eqz v3, :cond_322

    .line 962
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 963
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 964
    goto :goto_387

    .line 965
    :cond_322
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 967
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 968
    .local v0, "challengeTimeoutSec":I
    invoke-virtual {p0, v0}, Landroid/hardware/biometrics/face/V1_0/IBiometricsFace$Stub;->generateChallenge(I)Landroid/hardware/biometrics/face/V1_0/OptionalUint64;

    move-result-object v1

    .line 969
    .local v1, "_hidl_out_result":Landroid/hardware/biometrics/face/V1_0/OptionalUint64;
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 970
    invoke-virtual {v1, p3}, Landroid/hardware/biometrics/face/V1_0/OptionalUint64;->writeToParcel(Landroid/os/HwParcel;)V

    .line 971
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 972
    goto :goto_387

    .line 942
    .end local v0  # "challengeTimeoutSec":I
    .end local v1  # "_hidl_out_result":Landroid/hardware/biometrics/face/V1_0/OptionalUint64;
    .end local v3  # "_hidl_is_oneway":Z
    :pswitch_337  #0x2
    and-int/lit8 v4, p4, 0x1

    if-eqz v4, :cond_33c

    goto :goto_33d

    :cond_33c
    move v3, v2

    .line 943
    .restart local v3  # "_hidl_is_oneway":Z
    :goto_33d
    if-eqz v3, :cond_346

    .line 944
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 945
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 946
    goto :goto_387

    .line 947
    :cond_346
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 949
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 950
    .local v0, "userId":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 951
    .local v1, "storePath":Ljava/lang/String;
    invoke-virtual {p0, v0, v1}, Landroid/hardware/biometrics/face/V1_0/IBiometricsFace$Stub;->setActiveUser(ILjava/lang/String;)I

    move-result v4

    .line 952
    .local v4, "_hidl_out_status":I
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 953
    invoke-virtual {p3, v4}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 954
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 955
    goto :goto_387

    .line 925
    .end local v0  # "userId":I
    .end local v1  # "storePath":Ljava/lang/String;
    .end local v3  # "_hidl_is_oneway":Z
    .end local v4  # "_hidl_out_status":I
    :pswitch_35f  #0x1
    and-int/lit8 v4, p4, 0x1

    if-eqz v4, :cond_364

    goto :goto_365

    :cond_364
    move v3, v2

    .line 926
    .restart local v3  # "_hidl_is_oneway":Z
    :goto_365
    if-eqz v3, :cond_36e

    .line 927
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 928
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 929
    goto :goto_387

    .line 930
    :cond_36e
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 932
    invoke-virtual {p2}, Landroid/os/HwParcel;->readStrongBinder()Landroid/os/IHwBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/hardware/biometrics/face/V1_0/IBiometricsFaceClientCallback;->asInterface(Landroid/os/IHwBinder;)Landroid/hardware/biometrics/face/V1_0/IBiometricsFaceClientCallback;

    move-result-object v0

    .line 933
    .local v0, "clientCallback":Landroid/hardware/biometrics/face/V1_0/IBiometricsFaceClientCallback;
    invoke-virtual {p0, v0}, Landroid/hardware/biometrics/face/V1_0/IBiometricsFace$Stub;->setCallback(Landroid/hardware/biometrics/face/V1_0/IBiometricsFaceClientCallback;)Landroid/hardware/biometrics/face/V1_0/OptionalUint64;

    move-result-object v1

    .line 934
    .local v1, "_hidl_out_result":Landroid/hardware/biometrics/face/V1_0/OptionalUint64;
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 935
    invoke-virtual {v1, p3}, Landroid/hardware/biometrics/face/V1_0/OptionalUint64;->writeToParcel(Landroid/os/HwParcel;)V

    .line 936
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 937
    nop

    .line 1329
    .end local v0  # "clientCallback":Landroid/hardware/biometrics/face/V1_0/IBiometricsFaceClientCallback;
    .end local v1  # "_hidl_out_result":Landroid/hardware/biometrics/face/V1_0/OptionalUint64;
    .end local v3  # "_hidl_is_oneway":Z
    :cond_387
    :goto_387
    return-void

    :pswitch_data_388
    .packed-switch 0x1
        :pswitch_35f  #00000001
        :pswitch_337  #00000002
        :pswitch_313  #00000003
        :pswitch_2e5  #00000004
        :pswitch_2c3  #00000005
        :pswitch_291  #00000006
        :pswitch_267  #00000007
        :pswitch_245  #00000008
        :pswitch_223  #00000009
        :pswitch_201  #0000000a
        :pswitch_1db  #0000000b
        :pswitch_1b5  #0000000c
        :pswitch_193  #0000000d
        :pswitch_16d  #0000000e
    .end packed-switch

    :sswitch_data_3a8
    .sparse-switch
        0xf43484e -> :sswitch_14b
        0xf444247 -> :sswitch_125
        0xf445343 -> :sswitch_103
        0xf485348 -> :sswitch_9e
        0xf494e54 -> :sswitch_87
        0xf4c5444 -> :sswitch_77
        0xf504e47 -> :sswitch_59
        0xf524546 -> :sswitch_37
        0xf535953 -> :sswitch_20
        0xf555444 -> :sswitch_10
    .end sparse-switch
.end method

.method public final ping()V
    .registers 1

    .line 876
    return-void
.end method

.method public queryLocalInterface(Ljava/lang/String;)Landroid/os/IHwInterface;
    .registers 3
    .param p1, "descriptor"  # Ljava/lang/String;

    .line 904
    const-string v0, "android.hardware.biometrics.face@1.0::IBiometricsFace"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 905
    return-object p0

    .line 907
    :cond_9
    const/4 v0, 0x0

    return-object v0
.end method

.method public registerAsService(Ljava/lang/String;)V
    .registers 2
    .param p1, "serviceName"  # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 911
    invoke-virtual {p0, p1}, Landroid/hardware/biometrics/face/V1_0/IBiometricsFace$Stub;->registerService(Ljava/lang/String;)V

    .line 912
    return-void
.end method

.method public final setHALInstrumentation()V
    .registers 1

    .line 866
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 916
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/hardware/biometrics/face/V1_0/IBiometricsFace$Stub;->interfaceDescriptor()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "@Stub"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final unlinkToDeath(Landroid/os/IHwBinder$DeathRecipient;)Z
    .registers 3
    .param p1, "recipient"  # Landroid/os/IHwBinder$DeathRecipient;

    .line 898
    const/4 v0, 0x1

    return v0
.end method
