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
    return-void
.end method

.method public final getDebugInfo()Landroid/hidl/base/V1_0/DebugInfo;
    .registers 4

    .line 882
    new-instance v0, Landroid/hidl/base/V1_0/DebugInfo;

    invoke-direct {v0}, Landroid/hidl/base/V1_0/DebugInfo;-><init>()V

    .line 883
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
    .registers 4

    .line 870
    const/4 p1, 0x1

    return p1
.end method

.method public final notifySyspropsChanged()V
    .registers 1

    .line 892
    invoke-static {}, Landroid/os/HwBinder;->enableInstrumentation()V

    .line 894
    return-void
.end method

.method public onTransact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V
    .registers 12
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

    packed-switch p1, :pswitch_data_386

    const-string v0, "android.hidl.base@1.0::IBase"

    sparse-switch p1, :sswitch_data_3a6

    goto/16 :goto_385

    .line 1320
    :sswitch_10
    and-int/lit8 p1, p4, 0x1

    if-eqz p1, :cond_15

    move v2, v3

    .line 1321
    :cond_15
    if-eqz v2, :cond_385

    .line 1322
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1323
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1324
    goto/16 :goto_385

    .line 1307
    :sswitch_1f
    and-int/lit8 p1, p4, 0x1

    if-eqz p1, :cond_24

    move v2, v3

    .line 1308
    :cond_24
    if-eq v2, v3, :cond_2e

    .line 1309
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1310
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1311
    goto/16 :goto_385

    .line 1312
    :cond_2e
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1314
    invoke-virtual {p0}, Landroid/hardware/biometrics/face/V1_0/IBiometricsFace$Stub;->notifySyspropsChanged()V

    .line 1315
    goto/16 :goto_385

    .line 1291
    :sswitch_36
    and-int/lit8 p1, p4, 0x1

    if-eqz p1, :cond_3b

    goto :goto_3c

    :cond_3b
    move v3, v2

    .line 1292
    :goto_3c
    if-eqz v3, :cond_46

    .line 1293
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1294
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1295
    goto/16 :goto_385

    .line 1296
    :cond_46
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1298
    invoke-virtual {p0}, Landroid/hardware/biometrics/face/V1_0/IBiometricsFace$Stub;->getDebugInfo()Landroid/hidl/base/V1_0/DebugInfo;

    move-result-object p1

    .line 1299
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1300
    invoke-virtual {p1, p3}, Landroid/hidl/base/V1_0/DebugInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 1301
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1302
    goto/16 :goto_385

    .line 1276
    :sswitch_58
    and-int/lit8 p1, p4, 0x1

    if-eqz p1, :cond_5d

    goto :goto_5e

    :cond_5d
    move v3, v2

    .line 1277
    :goto_5e
    if-eqz v3, :cond_68

    .line 1278
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1279
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1280
    goto/16 :goto_385

    .line 1281
    :cond_68
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1283
    invoke-virtual {p0}, Landroid/hardware/biometrics/face/V1_0/IBiometricsFace$Stub;->ping()V

    .line 1284
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1285
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1286
    goto/16 :goto_385

    .line 1266
    :sswitch_76
    and-int/lit8 p1, p4, 0x1

    if-eqz p1, :cond_7b

    move v2, v3

    .line 1267
    :cond_7b
    if-eqz v2, :cond_385

    .line 1268
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1269
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1270
    goto/16 :goto_385

    .line 1253
    :sswitch_85
    and-int/lit8 p1, p4, 0x1

    if-eqz p1, :cond_8a

    move v2, v3

    .line 1254
    :cond_8a
    if-eq v2, v3, :cond_94

    .line 1255
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1256
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1257
    goto/16 :goto_385

    .line 1258
    :cond_94
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1260
    invoke-virtual {p0}, Landroid/hardware/biometrics/face/V1_0/IBiometricsFace$Stub;->setHALInstrumentation()V

    .line 1261
    goto/16 :goto_385

    .line 1214
    :sswitch_9c
    and-int/lit8 p1, p4, 0x1

    if-eqz p1, :cond_a1

    goto :goto_a2

    :cond_a1
    move v3, v2

    .line 1215
    :goto_a2
    if-eqz v3, :cond_ac

    .line 1216
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1217
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1218
    goto/16 :goto_385

    .line 1219
    :cond_ac
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1221
    invoke-virtual {p0}, Landroid/hardware/biometrics/face/V1_0/IBiometricsFace$Stub;->getHashChain()Ljava/util/ArrayList;

    move-result-object p1

    .line 1222
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1224
    new-instance p2, Landroid/os/HwBlob;

    const/16 p4, 0x10

    invoke-direct {p2, p4}, Landroid/os/HwBlob;-><init>(I)V

    .line 1226
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p4

    .line 1227
    const-wide/16 v0, 0x8

    invoke-virtual {p2, v0, v1, p4}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 1228
    const-wide/16 v0, 0xc

    invoke-virtual {p2, v0, v1, v2}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 1229
    new-instance v0, Landroid/os/HwBlob;

    mul-int/lit8 v1, p4, 0x20

    invoke-direct {v0, v1}, Landroid/os/HwBlob;-><init>(I)V

    .line 1230
    nop

    :goto_d3
    if-ge v2, p4, :cond_f4

    .line 1232
    mul-int/lit8 v1, v2, 0x20

    int-to-long v3, v1

    .line 1233
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    .line 1235
    if-eqz v1, :cond_ec

    array-length v5, v1

    const/16 v6, 0x20

    if-ne v5, v6, :cond_ec

    .line 1239
    invoke-virtual {v0, v3, v4, v1}, Landroid/os/HwBlob;->putInt8Array(J[B)V

    .line 1240
    nop

    .line 1230
    add-int/lit8 v2, v2, 0x1

    goto :goto_d3

    .line 1236
    :cond_ec
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Array element is not of the expected length"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1243
    :cond_f4
    const-wide/16 v1, 0x0

    invoke-virtual {p2, v1, v2, v0}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    .line 1245
    invoke-virtual {p3, p2}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    .line 1247
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1248
    goto/16 :goto_385

    .line 1198
    :sswitch_101
    and-int/lit8 p1, p4, 0x1

    if-eqz p1, :cond_106

    goto :goto_107

    :cond_106
    move v3, v2

    .line 1199
    :goto_107
    if-eqz v3, :cond_111

    .line 1200
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1201
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1202
    goto/16 :goto_385

    .line 1203
    :cond_111
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1205
    invoke-virtual {p0}, Landroid/hardware/biometrics/face/V1_0/IBiometricsFace$Stub;->interfaceDescriptor()Ljava/lang/String;

    move-result-object p1

    .line 1206
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1207
    invoke-virtual {p3, p1}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 1208
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1209
    goto/16 :goto_385

    .line 1181
    :sswitch_123
    and-int/lit8 p1, p4, 0x1

    if-eqz p1, :cond_128

    goto :goto_129

    :cond_128
    move v3, v2

    .line 1182
    :goto_129
    if-eqz v3, :cond_133

    .line 1183
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1184
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1185
    goto/16 :goto_385

    .line 1186
    :cond_133
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1188
    invoke-virtual {p2}, Landroid/os/HwParcel;->readNativeHandle()Landroid/os/NativeHandle;

    move-result-object p1

    .line 1189
    invoke-virtual {p2}, Landroid/os/HwParcel;->readStringVector()Ljava/util/ArrayList;

    move-result-object p2

    .line 1190
    invoke-virtual {p0, p1, p2}, Landroid/hardware/biometrics/face/V1_0/IBiometricsFace$Stub;->debug(Landroid/os/NativeHandle;Ljava/util/ArrayList;)V

    .line 1191
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1192
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1193
    goto/16 :goto_385

    .line 1165
    :sswitch_149
    and-int/lit8 p1, p4, 0x1

    if-eqz p1, :cond_14e

    goto :goto_14f

    :cond_14e
    move v3, v2

    .line 1166
    :goto_14f
    if-eqz v3, :cond_159

    .line 1167
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1168
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1169
    goto/16 :goto_385

    .line 1170
    :cond_159
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1172
    invoke-virtual {p0}, Landroid/hardware/biometrics/face/V1_0/IBiometricsFace$Stub;->interfaceChain()Ljava/util/ArrayList;

    move-result-object p1

    .line 1173
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1174
    invoke-virtual {p3, p1}, Landroid/os/HwParcel;->writeStringVector(Ljava/util/ArrayList;)V

    .line 1175
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1176
    goto/16 :goto_385

    .line 1148
    :pswitch_16b  #0xe
    and-int/lit8 p1, p4, 0x1

    if-eqz p1, :cond_170

    goto :goto_171

    :cond_170
    move v3, v2

    .line 1149
    :goto_171
    if-eqz v3, :cond_17b

    .line 1150
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1151
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1152
    goto/16 :goto_385

    .line 1153
    :cond_17b
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1155
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt8Vector()Ljava/util/ArrayList;

    move-result-object p1

    .line 1156
    invoke-virtual {p0, p1}, Landroid/hardware/biometrics/face/V1_0/IBiometricsFace$Stub;->resetLockout(Ljava/util/ArrayList;)I

    move-result p1

    .line 1157
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1158
    invoke-virtual {p3, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 1159
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1160
    goto/16 :goto_385

    .line 1132
    :pswitch_191  #0xd
    and-int/lit8 p1, p4, 0x1

    if-eqz p1, :cond_196

    goto :goto_197

    :cond_196
    move v3, v2

    .line 1133
    :goto_197
    if-eqz v3, :cond_1a1

    .line 1134
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1135
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1136
    goto/16 :goto_385

    .line 1137
    :cond_1a1
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1139
    invoke-virtual {p0}, Landroid/hardware/biometrics/face/V1_0/IBiometricsFace$Stub;->userActivity()I

    move-result p1

    .line 1140
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1141
    invoke-virtual {p3, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 1142
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1143
    goto/16 :goto_385

    .line 1115
    :pswitch_1b3  #0xc
    and-int/lit8 p1, p4, 0x1

    if-eqz p1, :cond_1b8

    goto :goto_1b9

    :cond_1b8
    move v3, v2

    .line 1116
    :goto_1b9
    if-eqz v3, :cond_1c3

    .line 1117
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1118
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1119
    goto/16 :goto_385

    .line 1120
    :cond_1c3
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1122
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt64()J

    move-result-wide p1

    .line 1123
    invoke-virtual {p0, p1, p2}, Landroid/hardware/biometrics/face/V1_0/IBiometricsFace$Stub;->authenticate(J)I

    move-result p1

    .line 1124
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1125
    invoke-virtual {p3, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 1126
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1127
    goto/16 :goto_385

    .line 1098
    :pswitch_1d9  #0xb
    and-int/lit8 p1, p4, 0x1

    if-eqz p1, :cond_1de

    goto :goto_1df

    :cond_1de
    move v3, v2

    .line 1099
    :goto_1df
    if-eqz v3, :cond_1e9

    .line 1100
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1101
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1102
    goto/16 :goto_385

    .line 1103
    :cond_1e9
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1105
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p1

    .line 1106
    invoke-virtual {p0, p1}, Landroid/hardware/biometrics/face/V1_0/IBiometricsFace$Stub;->remove(I)I

    move-result p1

    .line 1107
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1108
    invoke-virtual {p3, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 1109
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1110
    goto/16 :goto_385

    .line 1082
    :pswitch_1ff  #0xa
    and-int/lit8 p1, p4, 0x1

    if-eqz p1, :cond_204

    goto :goto_205

    :cond_204
    move v3, v2

    .line 1083
    :goto_205
    if-eqz v3, :cond_20f

    .line 1084
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1085
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1086
    goto/16 :goto_385

    .line 1087
    :cond_20f
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1089
    invoke-virtual {p0}, Landroid/hardware/biometrics/face/V1_0/IBiometricsFace$Stub;->enumerate()I

    move-result p1

    .line 1090
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1091
    invoke-virtual {p3, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 1092
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1093
    goto/16 :goto_385

    .line 1066
    :pswitch_221  #0x9
    and-int/lit8 p1, p4, 0x1

    if-eqz p1, :cond_226

    goto :goto_227

    :cond_226
    move v3, v2

    .line 1067
    :goto_227
    if-eqz v3, :cond_231

    .line 1068
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1069
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1070
    goto/16 :goto_385

    .line 1071
    :cond_231
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1073
    invoke-virtual {p0}, Landroid/hardware/biometrics/face/V1_0/IBiometricsFace$Stub;->cancel()I

    move-result p1

    .line 1074
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1075
    invoke-virtual {p3, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 1076
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1077
    goto/16 :goto_385

    .line 1050
    :pswitch_243  #0x8
    and-int/lit8 p1, p4, 0x1

    if-eqz p1, :cond_248

    goto :goto_249

    :cond_248
    move v3, v2

    .line 1051
    :goto_249
    if-eqz v3, :cond_253

    .line 1052
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1053
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1054
    goto/16 :goto_385

    .line 1055
    :cond_253
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1057
    invoke-virtual {p0}, Landroid/hardware/biometrics/face/V1_0/IBiometricsFace$Stub;->getAuthenticatorId()Landroid/hardware/biometrics/face/V1_0/OptionalUint64;

    move-result-object p1

    .line 1058
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1059
    invoke-virtual {p1, p3}, Landroid/hardware/biometrics/face/V1_0/OptionalUint64;->writeToParcel(Landroid/os/HwParcel;)V

    .line 1060
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1061
    goto/16 :goto_385

    .line 1032
    :pswitch_265  #0x7
    and-int/lit8 p1, p4, 0x1

    if-eqz p1, :cond_26a

    goto :goto_26b

    :cond_26a
    move v3, v2

    .line 1033
    :goto_26b
    if-eqz v3, :cond_275

    .line 1034
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1035
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1036
    goto/16 :goto_385

    .line 1037
    :cond_275
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1039
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p1

    .line 1040
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p2

    .line 1041
    invoke-virtual {p0, p1, p2}, Landroid/hardware/biometrics/face/V1_0/IBiometricsFace$Stub;->getFeature(II)Landroid/hardware/biometrics/face/V1_0/OptionalBool;

    move-result-object p1

    .line 1042
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1043
    invoke-virtual {p1, p3}, Landroid/hardware/biometrics/face/V1_0/OptionalBool;->writeToParcel(Landroid/os/HwParcel;)V

    .line 1044
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1045
    goto/16 :goto_385

    .line 1012
    :pswitch_28f  #0x6
    and-int/lit8 p1, p4, 0x1

    if-eqz p1, :cond_294

    goto :goto_295

    :cond_294
    move v3, v2

    .line 1013
    :goto_295
    if-eqz v3, :cond_29f

    .line 1014
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1015
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1016
    goto/16 :goto_385

    .line 1017
    :cond_29f
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1019
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p1

    .line 1020
    invoke-virtual {p2}, Landroid/os/HwParcel;->readBool()Z

    move-result p4

    .line 1021
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt8Vector()Ljava/util/ArrayList;

    move-result-object v0

    .line 1022
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p2

    .line 1023
    invoke-virtual {p0, p1, p4, v0, p2}, Landroid/hardware/biometrics/face/V1_0/IBiometricsFace$Stub;->setFeature(IZLjava/util/ArrayList;I)I

    move-result p1

    .line 1024
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1025
    invoke-virtual {p3, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 1026
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1027
    goto/16 :goto_385

    .line 996
    :pswitch_2c1  #0x5
    and-int/lit8 p1, p4, 0x1

    if-eqz p1, :cond_2c6

    goto :goto_2c7

    :cond_2c6
    move v3, v2

    .line 997
    :goto_2c7
    if-eqz v3, :cond_2d1

    .line 998
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 999
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1000
    goto/16 :goto_385

    .line 1001
    :cond_2d1
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1003
    invoke-virtual {p0}, Landroid/hardware/biometrics/face/V1_0/IBiometricsFace$Stub;->revokeChallenge()I

    move-result p1

    .line 1004
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1005
    invoke-virtual {p3, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 1006
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1007
    goto/16 :goto_385

    .line 977
    :pswitch_2e3  #0x4
    and-int/lit8 p1, p4, 0x1

    if-eqz p1, :cond_2e8

    goto :goto_2e9

    :cond_2e8
    move v3, v2

    .line 978
    :goto_2e9
    if-eqz v3, :cond_2f3

    .line 979
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 980
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 981
    goto/16 :goto_385

    .line 982
    :cond_2f3
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 984
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt8Vector()Ljava/util/ArrayList;

    move-result-object p1

    .line 985
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p4

    .line 986
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32Vector()Ljava/util/ArrayList;

    move-result-object p2

    .line 987
    invoke-virtual {p0, p1, p4, p2}, Landroid/hardware/biometrics/face/V1_0/IBiometricsFace$Stub;->enroll(Ljava/util/ArrayList;ILjava/util/ArrayList;)I

    move-result p1

    .line 988
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 989
    invoke-virtual {p3, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 990
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 991
    goto/16 :goto_385

    .line 960
    :pswitch_311  #0x3
    and-int/lit8 p1, p4, 0x1

    if-eqz p1, :cond_316

    goto :goto_317

    :cond_316
    move v3, v2

    .line 961
    :goto_317
    if-eqz v3, :cond_320

    .line 962
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 963
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 964
    goto :goto_385

    .line 965
    :cond_320
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 967
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p1

    .line 968
    invoke-virtual {p0, p1}, Landroid/hardware/biometrics/face/V1_0/IBiometricsFace$Stub;->generateChallenge(I)Landroid/hardware/biometrics/face/V1_0/OptionalUint64;

    move-result-object p1

    .line 969
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 970
    invoke-virtual {p1, p3}, Landroid/hardware/biometrics/face/V1_0/OptionalUint64;->writeToParcel(Landroid/os/HwParcel;)V

    .line 971
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 972
    goto :goto_385

    .line 942
    :pswitch_335  #0x2
    and-int/lit8 p1, p4, 0x1

    if-eqz p1, :cond_33a

    goto :goto_33b

    :cond_33a
    move v3, v2

    .line 943
    :goto_33b
    if-eqz v3, :cond_344

    .line 944
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 945
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 946
    goto :goto_385

    .line 947
    :cond_344
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 949
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p1

    .line 950
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object p2

    .line 951
    invoke-virtual {p0, p1, p2}, Landroid/hardware/biometrics/face/V1_0/IBiometricsFace$Stub;->setActiveUser(ILjava/lang/String;)I

    move-result p1

    .line 952
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 953
    invoke-virtual {p3, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 954
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 955
    goto :goto_385

    .line 925
    :pswitch_35d  #0x1
    and-int/lit8 p1, p4, 0x1

    if-eqz p1, :cond_362

    goto :goto_363

    :cond_362
    move v3, v2

    .line 926
    :goto_363
    if-eqz v3, :cond_36c

    .line 927
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 928
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 929
    goto :goto_385

    .line 930
    :cond_36c
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 932
    invoke-virtual {p2}, Landroid/os/HwParcel;->readStrongBinder()Landroid/os/IHwBinder;

    move-result-object p1

    invoke-static {p1}, Landroid/hardware/biometrics/face/V1_0/IBiometricsFaceClientCallback;->asInterface(Landroid/os/IHwBinder;)Landroid/hardware/biometrics/face/V1_0/IBiometricsFaceClientCallback;

    move-result-object p1

    .line 933
    invoke-virtual {p0, p1}, Landroid/hardware/biometrics/face/V1_0/IBiometricsFace$Stub;->setCallback(Landroid/hardware/biometrics/face/V1_0/IBiometricsFaceClientCallback;)Landroid/hardware/biometrics/face/V1_0/OptionalUint64;

    move-result-object p1

    .line 934
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 935
    invoke-virtual {p1, p3}, Landroid/hardware/biometrics/face/V1_0/OptionalUint64;->writeToParcel(Landroid/os/HwParcel;)V

    .line 936
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 937
    nop

    .line 1329
    :cond_385
    :goto_385
    return-void

    :pswitch_data_386
    .packed-switch 0x1
        :pswitch_35d  #00000001
        :pswitch_335  #00000002
        :pswitch_311  #00000003
        :pswitch_2e3  #00000004
        :pswitch_2c1  #00000005
        :pswitch_28f  #00000006
        :pswitch_265  #00000007
        :pswitch_243  #00000008
        :pswitch_221  #00000009
        :pswitch_1ff  #0000000a
        :pswitch_1d9  #0000000b
        :pswitch_1b3  #0000000c
        :pswitch_191  #0000000d
        :pswitch_16b  #0000000e
    .end packed-switch

    :sswitch_data_3a6
    .sparse-switch
        0xf43484e -> :sswitch_149
        0xf444247 -> :sswitch_123
        0xf445343 -> :sswitch_101
        0xf485348 -> :sswitch_9c
        0xf494e54 -> :sswitch_85
        0xf4c5444 -> :sswitch_76
        0xf504e47 -> :sswitch_58
        0xf524546 -> :sswitch_36
        0xf535953 -> :sswitch_1f
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

    .line 904
    const-string v0, "android.hardware.biometrics.face@1.0::IBiometricsFace"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_9

    .line 905
    return-object p0

    .line 907
    :cond_9
    const/4 p1, 0x0

    return-object p1
.end method

.method public registerAsService(Ljava/lang/String;)V
    .registers 2
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
    .registers 2

    .line 898
    const/4 p1, 0x1

    return p1
.end method
