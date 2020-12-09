.class public abstract Landroid/hardware/health/V2_0/IHealth$Stub;
.super Landroid/os/HwBinder;
.source "IHealth.java"

# interfaces
.implements Landroid/hardware/health/V2_0/IHealth;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/health/V2_0/IHealth;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 752
    invoke-direct {p0}, Landroid/os/HwBinder;-><init>()V

    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IHwBinder;
    .registers 1

    .line 755
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

    .line 768
    return-void
.end method

.method public final getDebugInfo()Landroid/hidl/base/V1_0/DebugInfo;
    .registers 4

    .line 805
    new-instance v0, Landroid/hidl/base/V1_0/DebugInfo;

    invoke-direct {v0}, Landroid/hidl/base/V1_0/DebugInfo;-><init>()V

    .line 806
    invoke-static {}, Landroid/os/HidlSupport;->getPidIfSharable()I

    move-result v1

    iput v1, v0, Landroid/hidl/base/V1_0/DebugInfo;->pid:I

    .line 807
    const-wide/16 v1, 0x0

    iput-wide v1, v0, Landroid/hidl/base/V1_0/DebugInfo;->ptr:J

    .line 808
    const/4 v1, 0x0

    iput v1, v0, Landroid/hidl/base/V1_0/DebugInfo;->arch:I

    .line 809
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

    .line 780
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
        0x67t
        0x56t
        -0x7et
        -0x23t
        0x30t
        0x7t
        -0x80t
        0x5ct
        -0x68t
        0x5et
        -0x56t
        -0x14t
        -0x6ft
        0x61t
        0x2at
        -0x44t
        -0x78t
        -0xct
        -0x3et
        0x5bt
        0x34t
        0x31t
        -0x5t
        -0x7ct
        0x7t
        0xbt
        0x75t
        -0x7ct
        -0x5ft
        -0x59t
        0x41t
        -0x5t
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

    .line 760
    new-instance v0, Ljava/util/ArrayList;

    const-string v1, "android.hardware.health@2.0::IHealth"

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

    .line 774
    const-string v0, "android.hardware.health@2.0::IHealth"

    return-object v0
.end method

.method public final linkToDeath(Landroid/os/IHwBinder$DeathRecipient;J)Z
    .registers 4

    .line 793
    const/4 p1, 0x1

    return p1
.end method

.method public final notifySyspropsChanged()V
    .registers 1

    .line 815
    invoke-static {}, Landroid/os/HwBinder;->enableInstrumentation()V

    .line 817
    return-void
.end method

.method public onTransact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V
    .registers 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 845
    const-string v0, "android.hardware.health@2.0::IHealth"

    const/high16 v1, -0x80000000

    const/4 v2, 0x0

    const/4 v3, 0x1

    packed-switch p1, :pswitch_data_2d8

    const-string v0, "android.hidl.base@1.0::IBase"

    sparse-switch p1, :sswitch_data_2f4

    goto/16 :goto_2d7

    .line 1233
    :sswitch_10
    and-int/lit8 p1, p4, 0x1

    if-eqz p1, :cond_15

    move v2, v3

    .line 1234
    :cond_15
    if-eqz v2, :cond_2d7

    .line 1235
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1236
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1237
    goto/16 :goto_2d7

    .line 1220
    :sswitch_1f
    and-int/lit8 p1, p4, 0x1

    if-eqz p1, :cond_24

    move v2, v3

    .line 1221
    :cond_24
    if-eq v2, v3, :cond_2e

    .line 1222
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1223
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1224
    goto/16 :goto_2d7

    .line 1225
    :cond_2e
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1227
    invoke-virtual {p0}, Landroid/hardware/health/V2_0/IHealth$Stub;->notifySyspropsChanged()V

    .line 1228
    goto/16 :goto_2d7

    .line 1204
    :sswitch_36
    and-int/lit8 p1, p4, 0x1

    if-eqz p1, :cond_3b

    goto :goto_3c

    :cond_3b
    move v3, v2

    .line 1205
    :goto_3c
    if-eqz v3, :cond_46

    .line 1206
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1207
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1208
    goto/16 :goto_2d7

    .line 1209
    :cond_46
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1211
    invoke-virtual {p0}, Landroid/hardware/health/V2_0/IHealth$Stub;->getDebugInfo()Landroid/hidl/base/V1_0/DebugInfo;

    move-result-object p1

    .line 1212
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1213
    invoke-virtual {p1, p3}, Landroid/hidl/base/V1_0/DebugInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 1214
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1215
    goto/16 :goto_2d7

    .line 1189
    :sswitch_58
    and-int/lit8 p1, p4, 0x1

    if-eqz p1, :cond_5d

    goto :goto_5e

    :cond_5d
    move v3, v2

    .line 1190
    :goto_5e
    if-eqz v3, :cond_68

    .line 1191
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1192
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1193
    goto/16 :goto_2d7

    .line 1194
    :cond_68
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1196
    invoke-virtual {p0}, Landroid/hardware/health/V2_0/IHealth$Stub;->ping()V

    .line 1197
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1198
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1199
    goto/16 :goto_2d7

    .line 1179
    :sswitch_76
    and-int/lit8 p1, p4, 0x1

    if-eqz p1, :cond_7b

    move v2, v3

    .line 1180
    :cond_7b
    if-eqz v2, :cond_2d7

    .line 1181
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1182
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1183
    goto/16 :goto_2d7

    .line 1166
    :sswitch_85
    and-int/lit8 p1, p4, 0x1

    if-eqz p1, :cond_8a

    move v2, v3

    .line 1167
    :cond_8a
    if-eq v2, v3, :cond_94

    .line 1168
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1169
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1170
    goto/16 :goto_2d7

    .line 1171
    :cond_94
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1173
    invoke-virtual {p0}, Landroid/hardware/health/V2_0/IHealth$Stub;->setHALInstrumentation()V

    .line 1174
    goto/16 :goto_2d7

    .line 1127
    :sswitch_9c
    and-int/lit8 p1, p4, 0x1

    if-eqz p1, :cond_a1

    goto :goto_a2

    :cond_a1
    move v3, v2

    .line 1128
    :goto_a2
    if-eqz v3, :cond_ac

    .line 1129
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1130
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1131
    goto/16 :goto_2d7

    .line 1132
    :cond_ac
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1134
    invoke-virtual {p0}, Landroid/hardware/health/V2_0/IHealth$Stub;->getHashChain()Ljava/util/ArrayList;

    move-result-object p1

    .line 1135
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1137
    new-instance p2, Landroid/os/HwBlob;

    const/16 p4, 0x10

    invoke-direct {p2, p4}, Landroid/os/HwBlob;-><init>(I)V

    .line 1139
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p4

    .line 1140
    const-wide/16 v0, 0x8

    invoke-virtual {p2, v0, v1, p4}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 1141
    const-wide/16 v0, 0xc

    invoke-virtual {p2, v0, v1, v2}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 1142
    new-instance v0, Landroid/os/HwBlob;

    mul-int/lit8 v1, p4, 0x20

    invoke-direct {v0, v1}, Landroid/os/HwBlob;-><init>(I)V

    .line 1143
    nop

    :goto_d3
    if-ge v2, p4, :cond_f4

    .line 1145
    mul-int/lit8 v1, v2, 0x20

    int-to-long v3, v1

    .line 1146
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    .line 1148
    if-eqz v1, :cond_ec

    array-length v5, v1

    const/16 v6, 0x20

    if-ne v5, v6, :cond_ec

    .line 1152
    invoke-virtual {v0, v3, v4, v1}, Landroid/os/HwBlob;->putInt8Array(J[B)V

    .line 1153
    nop

    .line 1143
    add-int/lit8 v2, v2, 0x1

    goto :goto_d3

    .line 1149
    :cond_ec
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Array element is not of the expected length"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1156
    :cond_f4
    const-wide/16 v1, 0x0

    invoke-virtual {p2, v1, v2, v0}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    .line 1158
    invoke-virtual {p3, p2}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    .line 1160
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1161
    goto/16 :goto_2d7

    .line 1111
    :sswitch_101
    and-int/lit8 p1, p4, 0x1

    if-eqz p1, :cond_106

    goto :goto_107

    :cond_106
    move v3, v2

    .line 1112
    :goto_107
    if-eqz v3, :cond_111

    .line 1113
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1114
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1115
    goto/16 :goto_2d7

    .line 1116
    :cond_111
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1118
    invoke-virtual {p0}, Landroid/hardware/health/V2_0/IHealth$Stub;->interfaceDescriptor()Ljava/lang/String;

    move-result-object p1

    .line 1119
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1120
    invoke-virtual {p3, p1}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 1121
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1122
    goto/16 :goto_2d7

    .line 1094
    :sswitch_123
    and-int/lit8 p1, p4, 0x1

    if-eqz p1, :cond_128

    goto :goto_129

    :cond_128
    move v3, v2

    .line 1095
    :goto_129
    if-eqz v3, :cond_133

    .line 1096
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1097
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1098
    goto/16 :goto_2d7

    .line 1099
    :cond_133
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1101
    invoke-virtual {p2}, Landroid/os/HwParcel;->readNativeHandle()Landroid/os/NativeHandle;

    move-result-object p1

    .line 1102
    invoke-virtual {p2}, Landroid/os/HwParcel;->readStringVector()Ljava/util/ArrayList;

    move-result-object p2

    .line 1103
    invoke-virtual {p0, p1, p2}, Landroid/hardware/health/V2_0/IHealth$Stub;->debug(Landroid/os/NativeHandle;Ljava/util/ArrayList;)V

    .line 1104
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1105
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1106
    goto/16 :goto_2d7

    .line 1078
    :sswitch_149
    and-int/lit8 p1, p4, 0x1

    if-eqz p1, :cond_14e

    goto :goto_14f

    :cond_14e
    move v3, v2

    .line 1079
    :goto_14f
    if-eqz v3, :cond_159

    .line 1080
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1081
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1082
    goto/16 :goto_2d7

    .line 1083
    :cond_159
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1085
    invoke-virtual {p0}, Landroid/hardware/health/V2_0/IHealth$Stub;->interfaceChain()Ljava/util/ArrayList;

    move-result-object p1

    .line 1086
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1087
    invoke-virtual {p3, p1}, Landroid/os/HwParcel;->writeStringVector(Ljava/util/ArrayList;)V

    .line 1088
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1089
    goto/16 :goto_2d7

    .line 1058
    :pswitch_16b  #0xc
    and-int/lit8 p1, p4, 0x1

    if-eqz p1, :cond_170

    move v2, v3

    .line 1059
    :cond_170
    if-eqz v2, :cond_17a

    .line 1060
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1061
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1062
    goto/16 :goto_2d7

    .line 1063
    :cond_17a
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1065
    new-instance p1, Landroid/hardware/health/V2_0/IHealth$Stub$9;

    invoke-direct {p1, p0, p3}, Landroid/hardware/health/V2_0/IHealth$Stub$9;-><init>(Landroid/hardware/health/V2_0/IHealth$Stub;Landroid/os/HwParcel;)V

    invoke-virtual {p0, p1}, Landroid/hardware/health/V2_0/IHealth$Stub;->getHealthInfo(Landroid/hardware/health/V2_0/IHealth$getHealthInfoCallback;)V

    .line 1073
    goto/16 :goto_2d7

    .line 1038
    :pswitch_187  #0xb
    and-int/lit8 p1, p4, 0x1

    if-eqz p1, :cond_18c

    move v2, v3

    .line 1039
    :cond_18c
    if-eqz v2, :cond_196

    .line 1040
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1041
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1042
    goto/16 :goto_2d7

    .line 1043
    :cond_196
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1045
    new-instance p1, Landroid/hardware/health/V2_0/IHealth$Stub$8;

    invoke-direct {p1, p0, p3}, Landroid/hardware/health/V2_0/IHealth$Stub$8;-><init>(Landroid/hardware/health/V2_0/IHealth$Stub;Landroid/os/HwParcel;)V

    invoke-virtual {p0, p1}, Landroid/hardware/health/V2_0/IHealth$Stub;->getDiskStats(Landroid/hardware/health/V2_0/IHealth$getDiskStatsCallback;)V

    .line 1053
    goto/16 :goto_2d7

    .line 1018
    :pswitch_1a3  #0xa
    and-int/lit8 p1, p4, 0x1

    if-eqz p1, :cond_1a8

    move v2, v3

    .line 1019
    :cond_1a8
    if-eqz v2, :cond_1b2

    .line 1020
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1021
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1022
    goto/16 :goto_2d7

    .line 1023
    :cond_1b2
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1025
    new-instance p1, Landroid/hardware/health/V2_0/IHealth$Stub$7;

    invoke-direct {p1, p0, p3}, Landroid/hardware/health/V2_0/IHealth$Stub$7;-><init>(Landroid/hardware/health/V2_0/IHealth$Stub;Landroid/os/HwParcel;)V

    invoke-virtual {p0, p1}, Landroid/hardware/health/V2_0/IHealth$Stub;->getStorageInfo(Landroid/hardware/health/V2_0/IHealth$getStorageInfoCallback;)V

    .line 1033
    goto/16 :goto_2d7

    .line 998
    :pswitch_1bf  #0x9
    and-int/lit8 p1, p4, 0x1

    if-eqz p1, :cond_1c4

    move v2, v3

    .line 999
    :cond_1c4
    if-eqz v2, :cond_1ce

    .line 1000
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1001
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1002
    goto/16 :goto_2d7

    .line 1003
    :cond_1ce
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1005
    new-instance p1, Landroid/hardware/health/V2_0/IHealth$Stub$6;

    invoke-direct {p1, p0, p3}, Landroid/hardware/health/V2_0/IHealth$Stub$6;-><init>(Landroid/hardware/health/V2_0/IHealth$Stub;Landroid/os/HwParcel;)V

    invoke-virtual {p0, p1}, Landroid/hardware/health/V2_0/IHealth$Stub;->getChargeStatus(Landroid/hardware/health/V2_0/IHealth$getChargeStatusCallback;)V

    .line 1013
    goto/16 :goto_2d7

    .line 978
    :pswitch_1db  #0x8
    and-int/lit8 p1, p4, 0x1

    if-eqz p1, :cond_1e0

    move v2, v3

    .line 979
    :cond_1e0
    if-eqz v2, :cond_1ea

    .line 980
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 981
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 982
    goto/16 :goto_2d7

    .line 983
    :cond_1ea
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 985
    new-instance p1, Landroid/hardware/health/V2_0/IHealth$Stub$5;

    invoke-direct {p1, p0, p3}, Landroid/hardware/health/V2_0/IHealth$Stub$5;-><init>(Landroid/hardware/health/V2_0/IHealth$Stub;Landroid/os/HwParcel;)V

    invoke-virtual {p0, p1}, Landroid/hardware/health/V2_0/IHealth$Stub;->getEnergyCounter(Landroid/hardware/health/V2_0/IHealth$getEnergyCounterCallback;)V

    .line 993
    goto/16 :goto_2d7

    .line 958
    :pswitch_1f7  #0x7
    and-int/lit8 p1, p4, 0x1

    if-eqz p1, :cond_1fc

    move v2, v3

    .line 959
    :cond_1fc
    if-eqz v2, :cond_206

    .line 960
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 961
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 962
    goto/16 :goto_2d7

    .line 963
    :cond_206
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 965
    new-instance p1, Landroid/hardware/health/V2_0/IHealth$Stub$4;

    invoke-direct {p1, p0, p3}, Landroid/hardware/health/V2_0/IHealth$Stub$4;-><init>(Landroid/hardware/health/V2_0/IHealth$Stub;Landroid/os/HwParcel;)V

    invoke-virtual {p0, p1}, Landroid/hardware/health/V2_0/IHealth$Stub;->getCapacity(Landroid/hardware/health/V2_0/IHealth$getCapacityCallback;)V

    .line 973
    goto/16 :goto_2d7

    .line 938
    :pswitch_213  #0x6
    and-int/lit8 p1, p4, 0x1

    if-eqz p1, :cond_218

    move v2, v3

    .line 939
    :cond_218
    if-eqz v2, :cond_222

    .line 940
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 941
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 942
    goto/16 :goto_2d7

    .line 943
    :cond_222
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 945
    new-instance p1, Landroid/hardware/health/V2_0/IHealth$Stub$3;

    invoke-direct {p1, p0, p3}, Landroid/hardware/health/V2_0/IHealth$Stub$3;-><init>(Landroid/hardware/health/V2_0/IHealth$Stub;Landroid/os/HwParcel;)V

    invoke-virtual {p0, p1}, Landroid/hardware/health/V2_0/IHealth$Stub;->getCurrentAverage(Landroid/hardware/health/V2_0/IHealth$getCurrentAverageCallback;)V

    .line 953
    goto/16 :goto_2d7

    .line 918
    :pswitch_22f  #0x5
    and-int/lit8 p1, p4, 0x1

    if-eqz p1, :cond_234

    move v2, v3

    .line 919
    :cond_234
    if-eqz v2, :cond_23e

    .line 920
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 921
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 922
    goto/16 :goto_2d7

    .line 923
    :cond_23e
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 925
    new-instance p1, Landroid/hardware/health/V2_0/IHealth$Stub$2;

    invoke-direct {p1, p0, p3}, Landroid/hardware/health/V2_0/IHealth$Stub$2;-><init>(Landroid/hardware/health/V2_0/IHealth$Stub;Landroid/os/HwParcel;)V

    invoke-virtual {p0, p1}, Landroid/hardware/health/V2_0/IHealth$Stub;->getCurrentNow(Landroid/hardware/health/V2_0/IHealth$getCurrentNowCallback;)V

    .line 933
    goto/16 :goto_2d7

    .line 898
    :pswitch_24b  #0x4
    and-int/lit8 p1, p4, 0x1

    if-eqz p1, :cond_250

    move v2, v3

    .line 899
    :cond_250
    if-eqz v2, :cond_25a

    .line 900
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 901
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 902
    goto/16 :goto_2d7

    .line 903
    :cond_25a
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 905
    new-instance p1, Landroid/hardware/health/V2_0/IHealth$Stub$1;

    invoke-direct {p1, p0, p3}, Landroid/hardware/health/V2_0/IHealth$Stub$1;-><init>(Landroid/hardware/health/V2_0/IHealth$Stub;Landroid/os/HwParcel;)V

    invoke-virtual {p0, p1}, Landroid/hardware/health/V2_0/IHealth$Stub;->getChargeCounter(Landroid/hardware/health/V2_0/IHealth$getChargeCounterCallback;)V

    .line 913
    goto/16 :goto_2d7

    .line 882
    :pswitch_267  #0x3
    and-int/lit8 p1, p4, 0x1

    if-eqz p1, :cond_26c

    goto :goto_26d

    :cond_26c
    move v3, v2

    .line 883
    :goto_26d
    if-eqz v3, :cond_276

    .line 884
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 885
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 886
    goto :goto_2d7

    .line 887
    :cond_276
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 889
    invoke-virtual {p0}, Landroid/hardware/health/V2_0/IHealth$Stub;->update()I

    move-result p1

    .line 890
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 891
    invoke-virtual {p3, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 892
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 893
    goto :goto_2d7

    .line 865
    :pswitch_287  #0x2
    and-int/lit8 p1, p4, 0x1

    if-eqz p1, :cond_28c

    goto :goto_28d

    :cond_28c
    move v3, v2

    .line 866
    :goto_28d
    if-eqz v3, :cond_296

    .line 867
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 868
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 869
    goto :goto_2d7

    .line 870
    :cond_296
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 872
    invoke-virtual {p2}, Landroid/os/HwParcel;->readStrongBinder()Landroid/os/IHwBinder;

    move-result-object p1

    invoke-static {p1}, Landroid/hardware/health/V2_0/IHealthInfoCallback;->asInterface(Landroid/os/IHwBinder;)Landroid/hardware/health/V2_0/IHealthInfoCallback;

    move-result-object p1

    .line 873
    invoke-virtual {p0, p1}, Landroid/hardware/health/V2_0/IHealth$Stub;->unregisterCallback(Landroid/hardware/health/V2_0/IHealthInfoCallback;)I

    move-result p1

    .line 874
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 875
    invoke-virtual {p3, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 876
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 877
    goto :goto_2d7

    .line 848
    :pswitch_2af  #0x1
    and-int/lit8 p1, p4, 0x1

    if-eqz p1, :cond_2b4

    goto :goto_2b5

    :cond_2b4
    move v3, v2

    .line 849
    :goto_2b5
    if-eqz v3, :cond_2be

    .line 850
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 851
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 852
    goto :goto_2d7

    .line 853
    :cond_2be
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 855
    invoke-virtual {p2}, Landroid/os/HwParcel;->readStrongBinder()Landroid/os/IHwBinder;

    move-result-object p1

    invoke-static {p1}, Landroid/hardware/health/V2_0/IHealthInfoCallback;->asInterface(Landroid/os/IHwBinder;)Landroid/hardware/health/V2_0/IHealthInfoCallback;

    move-result-object p1

    .line 856
    invoke-virtual {p0, p1}, Landroid/hardware/health/V2_0/IHealth$Stub;->registerCallback(Landroid/hardware/health/V2_0/IHealthInfoCallback;)I

    move-result p1

    .line 857
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 858
    invoke-virtual {p3, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 859
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 860
    nop

    .line 1242
    :cond_2d7
    :goto_2d7
    return-void

    :pswitch_data_2d8
    .packed-switch 0x1
        :pswitch_2af  #00000001
        :pswitch_287  #00000002
        :pswitch_267  #00000003
        :pswitch_24b  #00000004
        :pswitch_22f  #00000005
        :pswitch_213  #00000006
        :pswitch_1f7  #00000007
        :pswitch_1db  #00000008
        :pswitch_1bf  #00000009
        :pswitch_1a3  #0000000a
        :pswitch_187  #0000000b
        :pswitch_16b  #0000000c
    .end packed-switch

    :sswitch_data_2f4
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

    .line 799
    return-void
.end method

.method public queryLocalInterface(Ljava/lang/String;)Landroid/os/IHwInterface;
    .registers 3

    .line 827
    const-string v0, "android.hardware.health@2.0::IHealth"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_9

    .line 828
    return-object p0

    .line 830
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

    .line 834
    invoke-virtual {p0, p1}, Landroid/hardware/health/V2_0/IHealth$Stub;->registerService(Ljava/lang/String;)V

    .line 835
    return-void
.end method

.method public final setHALInstrumentation()V
    .registers 1

    .line 789
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 839
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/hardware/health/V2_0/IHealth$Stub;->interfaceDescriptor()Ljava/lang/String;

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

    .line 821
    const/4 p1, 0x1

    return p1
.end method
