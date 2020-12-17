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

    .line 768
    .local p2, "options":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    return-void
.end method

.method public final getDebugInfo()Landroid/hidl/base/V1_0/DebugInfo;
    .registers 4

    .line 805
    new-instance v0, Landroid/hidl/base/V1_0/DebugInfo;

    invoke-direct {v0}, Landroid/hidl/base/V1_0/DebugInfo;-><init>()V

    .line 806
    .local v0, "info":Landroid/hidl/base/V1_0/DebugInfo;
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
    .registers 5
    .param p1, "recipient"  # Landroid/os/IHwBinder$DeathRecipient;
    .param p2, "cookie"  # J

    .line 793
    const/4 v0, 0x1

    return v0
.end method

.method public final notifySyspropsChanged()V
    .registers 1

    .line 815
    invoke-static {}, Landroid/os/HwBinder;->enableInstrumentation()V

    .line 817
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

    .line 845
    const-string v0, "android.hardware.health@2.0::IHealth"

    const/high16 v1, -0x80000000

    const/4 v2, 0x0

    const/4 v3, 0x1

    packed-switch p1, :pswitch_data_2da

    const-string v0, "android.hidl.base@1.0::IBase"

    sparse-switch p1, :sswitch_data_2f6

    goto/16 :goto_2d9

    .line 1233
    :sswitch_10
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_15

    move v2, v3

    :cond_15
    move v0, v2

    .line 1234
    .local v0, "_hidl_is_oneway":Z
    if-eqz v0, :cond_2d9

    .line 1235
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1236
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1237
    goto/16 :goto_2d9

    .line 1220
    .end local v0  # "_hidl_is_oneway":Z
    :sswitch_20
    and-int/lit8 v4, p4, 0x1

    if-eqz v4, :cond_25

    move v2, v3

    .line 1221
    .local v2, "_hidl_is_oneway":Z
    :cond_25
    if-eq v2, v3, :cond_2f

    .line 1222
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1223
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1224
    goto/16 :goto_2d9

    .line 1225
    :cond_2f
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1227
    invoke-virtual {p0}, Landroid/hardware/health/V2_0/IHealth$Stub;->notifySyspropsChanged()V

    .line 1228
    goto/16 :goto_2d9

    .line 1204
    .end local v2  # "_hidl_is_oneway":Z
    :sswitch_37
    and-int/lit8 v4, p4, 0x1

    if-eqz v4, :cond_3c

    goto :goto_3d

    :cond_3c
    move v3, v2

    .line 1205
    .local v3, "_hidl_is_oneway":Z
    :goto_3d
    if-eqz v3, :cond_47

    .line 1206
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1207
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1208
    goto/16 :goto_2d9

    .line 1209
    :cond_47
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1211
    invoke-virtual {p0}, Landroid/hardware/health/V2_0/IHealth$Stub;->getDebugInfo()Landroid/hidl/base/V1_0/DebugInfo;

    move-result-object v0

    .line 1212
    .local v0, "_hidl_out_info":Landroid/hidl/base/V1_0/DebugInfo;
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1213
    invoke-virtual {v0, p3}, Landroid/hidl/base/V1_0/DebugInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 1214
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1215
    goto/16 :goto_2d9

    .line 1189
    .end local v0  # "_hidl_out_info":Landroid/hidl/base/V1_0/DebugInfo;
    .end local v3  # "_hidl_is_oneway":Z
    :sswitch_59
    and-int/lit8 v4, p4, 0x1

    if-eqz v4, :cond_5e

    goto :goto_5f

    :cond_5e
    move v3, v2

    .line 1190
    .restart local v3  # "_hidl_is_oneway":Z
    :goto_5f
    if-eqz v3, :cond_69

    .line 1191
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1192
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1193
    goto/16 :goto_2d9

    .line 1194
    :cond_69
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1196
    invoke-virtual {p0}, Landroid/hardware/health/V2_0/IHealth$Stub;->ping()V

    .line 1197
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1198
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1199
    goto/16 :goto_2d9

    .line 1179
    .end local v3  # "_hidl_is_oneway":Z
    :sswitch_77
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_7c

    move v2, v3

    :cond_7c
    move v0, v2

    .line 1180
    .local v0, "_hidl_is_oneway":Z
    if-eqz v0, :cond_2d9

    .line 1181
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1182
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1183
    goto/16 :goto_2d9

    .line 1166
    .end local v0  # "_hidl_is_oneway":Z
    :sswitch_87
    and-int/lit8 v4, p4, 0x1

    if-eqz v4, :cond_8c

    move v2, v3

    .line 1167
    .restart local v2  # "_hidl_is_oneway":Z
    :cond_8c
    if-eq v2, v3, :cond_96

    .line 1168
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1169
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1170
    goto/16 :goto_2d9

    .line 1171
    :cond_96
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1173
    invoke-virtual {p0}, Landroid/hardware/health/V2_0/IHealth$Stub;->setHALInstrumentation()V

    .line 1174
    goto/16 :goto_2d9

    .line 1127
    .end local v2  # "_hidl_is_oneway":Z
    :sswitch_9e
    and-int/lit8 v4, p4, 0x1

    if-eqz v4, :cond_a3

    goto :goto_a4

    :cond_a3
    move v3, v2

    .line 1128
    .restart local v3  # "_hidl_is_oneway":Z
    :goto_a4
    if-eqz v3, :cond_ae

    .line 1129
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1130
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1131
    goto/16 :goto_2d9

    .line 1132
    :cond_ae
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1134
    invoke-virtual {p0}, Landroid/hardware/health/V2_0/IHealth$Stub;->getHashChain()Ljava/util/ArrayList;

    move-result-object v0

    .line 1135
    .local v0, "_hidl_out_hashchain":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1137
    new-instance v1, Landroid/os/HwBlob;

    const/16 v4, 0x10

    invoke-direct {v1, v4}, Landroid/os/HwBlob;-><init>(I)V

    .line 1139
    .local v1, "_hidl_blob":Landroid/os/HwBlob;
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 1140
    .local v4, "_hidl_vec_size":I
    const-wide/16 v5, 0x8

    invoke-virtual {v1, v5, v6, v4}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 1141
    const-wide/16 v5, 0xc

    invoke-virtual {v1, v5, v6, v2}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 1142
    new-instance v2, Landroid/os/HwBlob;

    mul-int/lit8 v5, v4, 0x20

    invoke-direct {v2, v5}, Landroid/os/HwBlob;-><init>(I)V

    .line 1143
    .local v2, "childBlob":Landroid/os/HwBlob;
    const/4 v5, 0x0

    .local v5, "_hidl_index_0":I
    :goto_d5
    if-ge v5, v4, :cond_f6

    .line 1145
    mul-int/lit8 v6, v5, 0x20

    int-to-long v6, v6

    .line 1146
    .local v6, "_hidl_array_offset_1":J
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [B

    .line 1148
    .local v8, "_hidl_array_item_1":[B
    if-eqz v8, :cond_ee

    array-length v9, v8

    const/16 v10, 0x20

    if-ne v9, v10, :cond_ee

    .line 1152
    invoke-virtual {v2, v6, v7, v8}, Landroid/os/HwBlob;->putInt8Array(J[B)V

    .line 1153
    nop

    .line 1143
    .end local v6  # "_hidl_array_offset_1":J
    .end local v8  # "_hidl_array_item_1":[B
    add-int/lit8 v5, v5, 0x1

    goto :goto_d5

    .line 1149
    .restart local v6  # "_hidl_array_offset_1":J
    .restart local v8  # "_hidl_array_item_1":[B
    :cond_ee
    new-instance v9, Ljava/lang/IllegalArgumentException;

    const-string v10, "Array element is not of the expected length"

    invoke-direct {v9, v10}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 1156
    .end local v5  # "_hidl_index_0":I
    .end local v6  # "_hidl_array_offset_1":J
    .end local v8  # "_hidl_array_item_1":[B
    :cond_f6
    const-wide/16 v5, 0x0

    invoke-virtual {v1, v5, v6, v2}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    .line 1158
    .end local v2  # "childBlob":Landroid/os/HwBlob;
    .end local v4  # "_hidl_vec_size":I
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    .line 1160
    .end local v1  # "_hidl_blob":Landroid/os/HwBlob;
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1161
    goto/16 :goto_2d9

    .line 1111
    .end local v0  # "_hidl_out_hashchain":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    .end local v3  # "_hidl_is_oneway":Z
    :sswitch_103
    and-int/lit8 v4, p4, 0x1

    if-eqz v4, :cond_108

    goto :goto_109

    :cond_108
    move v3, v2

    .line 1112
    .restart local v3  # "_hidl_is_oneway":Z
    :goto_109
    if-eqz v3, :cond_113

    .line 1113
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1114
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1115
    goto/16 :goto_2d9

    .line 1116
    :cond_113
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1118
    invoke-virtual {p0}, Landroid/hardware/health/V2_0/IHealth$Stub;->interfaceDescriptor()Ljava/lang/String;

    move-result-object v0

    .line 1119
    .local v0, "_hidl_out_descriptor":Ljava/lang/String;
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1120
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 1121
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1122
    goto/16 :goto_2d9

    .line 1094
    .end local v0  # "_hidl_out_descriptor":Ljava/lang/String;
    .end local v3  # "_hidl_is_oneway":Z
    :sswitch_125
    and-int/lit8 v4, p4, 0x1

    if-eqz v4, :cond_12a

    goto :goto_12b

    :cond_12a
    move v3, v2

    .line 1095
    .restart local v3  # "_hidl_is_oneway":Z
    :goto_12b
    if-eqz v3, :cond_135

    .line 1096
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1097
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1098
    goto/16 :goto_2d9

    .line 1099
    :cond_135
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1101
    invoke-virtual {p2}, Landroid/os/HwParcel;->readNativeHandle()Landroid/os/NativeHandle;

    move-result-object v0

    .line 1102
    .local v0, "fd":Landroid/os/NativeHandle;
    invoke-virtual {p2}, Landroid/os/HwParcel;->readStringVector()Ljava/util/ArrayList;

    move-result-object v1

    .line 1103
    .local v1, "options":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {p0, v0, v1}, Landroid/hardware/health/V2_0/IHealth$Stub;->debug(Landroid/os/NativeHandle;Ljava/util/ArrayList;)V

    .line 1104
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1105
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1106
    goto/16 :goto_2d9

    .line 1078
    .end local v0  # "fd":Landroid/os/NativeHandle;
    .end local v1  # "options":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v3  # "_hidl_is_oneway":Z
    :sswitch_14b
    and-int/lit8 v4, p4, 0x1

    if-eqz v4, :cond_150

    goto :goto_151

    :cond_150
    move v3, v2

    .line 1079
    .restart local v3  # "_hidl_is_oneway":Z
    :goto_151
    if-eqz v3, :cond_15b

    .line 1080
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1081
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1082
    goto/16 :goto_2d9

    .line 1083
    :cond_15b
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1085
    invoke-virtual {p0}, Landroid/hardware/health/V2_0/IHealth$Stub;->interfaceChain()Ljava/util/ArrayList;

    move-result-object v0

    .line 1086
    .local v0, "_hidl_out_descriptors":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1087
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStringVector(Ljava/util/ArrayList;)V

    .line 1088
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1089
    goto/16 :goto_2d9

    .line 1058
    .end local v0  # "_hidl_out_descriptors":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v3  # "_hidl_is_oneway":Z
    :pswitch_16d  #0xc
    and-int/lit8 v4, p4, 0x1

    if-eqz v4, :cond_172

    move v2, v3

    .line 1059
    .local v2, "_hidl_is_oneway":Z
    :cond_172
    if-eqz v2, :cond_17c

    .line 1060
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1061
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1062
    goto/16 :goto_2d9

    .line 1063
    :cond_17c
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1065
    new-instance v0, Landroid/hardware/health/V2_0/IHealth$Stub$9;

    invoke-direct {v0, p0, p3}, Landroid/hardware/health/V2_0/IHealth$Stub$9;-><init>(Landroid/hardware/health/V2_0/IHealth$Stub;Landroid/os/HwParcel;)V

    invoke-virtual {p0, v0}, Landroid/hardware/health/V2_0/IHealth$Stub;->getHealthInfo(Landroid/hardware/health/V2_0/IHealth$getHealthInfoCallback;)V

    .line 1073
    goto/16 :goto_2d9

    .line 1038
    .end local v2  # "_hidl_is_oneway":Z
    :pswitch_189  #0xb
    and-int/lit8 v4, p4, 0x1

    if-eqz v4, :cond_18e

    move v2, v3

    .line 1039
    .restart local v2  # "_hidl_is_oneway":Z
    :cond_18e
    if-eqz v2, :cond_198

    .line 1040
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1041
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1042
    goto/16 :goto_2d9

    .line 1043
    :cond_198
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1045
    new-instance v0, Landroid/hardware/health/V2_0/IHealth$Stub$8;

    invoke-direct {v0, p0, p3}, Landroid/hardware/health/V2_0/IHealth$Stub$8;-><init>(Landroid/hardware/health/V2_0/IHealth$Stub;Landroid/os/HwParcel;)V

    invoke-virtual {p0, v0}, Landroid/hardware/health/V2_0/IHealth$Stub;->getDiskStats(Landroid/hardware/health/V2_0/IHealth$getDiskStatsCallback;)V

    .line 1053
    goto/16 :goto_2d9

    .line 1018
    .end local v2  # "_hidl_is_oneway":Z
    :pswitch_1a5  #0xa
    and-int/lit8 v4, p4, 0x1

    if-eqz v4, :cond_1aa

    move v2, v3

    .line 1019
    .restart local v2  # "_hidl_is_oneway":Z
    :cond_1aa
    if-eqz v2, :cond_1b4

    .line 1020
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1021
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1022
    goto/16 :goto_2d9

    .line 1023
    :cond_1b4
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1025
    new-instance v0, Landroid/hardware/health/V2_0/IHealth$Stub$7;

    invoke-direct {v0, p0, p3}, Landroid/hardware/health/V2_0/IHealth$Stub$7;-><init>(Landroid/hardware/health/V2_0/IHealth$Stub;Landroid/os/HwParcel;)V

    invoke-virtual {p0, v0}, Landroid/hardware/health/V2_0/IHealth$Stub;->getStorageInfo(Landroid/hardware/health/V2_0/IHealth$getStorageInfoCallback;)V

    .line 1033
    goto/16 :goto_2d9

    .line 998
    .end local v2  # "_hidl_is_oneway":Z
    :pswitch_1c1  #0x9
    and-int/lit8 v4, p4, 0x1

    if-eqz v4, :cond_1c6

    move v2, v3

    .line 999
    .restart local v2  # "_hidl_is_oneway":Z
    :cond_1c6
    if-eqz v2, :cond_1d0

    .line 1000
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1001
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1002
    goto/16 :goto_2d9

    .line 1003
    :cond_1d0
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1005
    new-instance v0, Landroid/hardware/health/V2_0/IHealth$Stub$6;

    invoke-direct {v0, p0, p3}, Landroid/hardware/health/V2_0/IHealth$Stub$6;-><init>(Landroid/hardware/health/V2_0/IHealth$Stub;Landroid/os/HwParcel;)V

    invoke-virtual {p0, v0}, Landroid/hardware/health/V2_0/IHealth$Stub;->getChargeStatus(Landroid/hardware/health/V2_0/IHealth$getChargeStatusCallback;)V

    .line 1013
    goto/16 :goto_2d9

    .line 978
    .end local v2  # "_hidl_is_oneway":Z
    :pswitch_1dd  #0x8
    and-int/lit8 v4, p4, 0x1

    if-eqz v4, :cond_1e2

    move v2, v3

    .line 979
    .restart local v2  # "_hidl_is_oneway":Z
    :cond_1e2
    if-eqz v2, :cond_1ec

    .line 980
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 981
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 982
    goto/16 :goto_2d9

    .line 983
    :cond_1ec
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 985
    new-instance v0, Landroid/hardware/health/V2_0/IHealth$Stub$5;

    invoke-direct {v0, p0, p3}, Landroid/hardware/health/V2_0/IHealth$Stub$5;-><init>(Landroid/hardware/health/V2_0/IHealth$Stub;Landroid/os/HwParcel;)V

    invoke-virtual {p0, v0}, Landroid/hardware/health/V2_0/IHealth$Stub;->getEnergyCounter(Landroid/hardware/health/V2_0/IHealth$getEnergyCounterCallback;)V

    .line 993
    goto/16 :goto_2d9

    .line 958
    .end local v2  # "_hidl_is_oneway":Z
    :pswitch_1f9  #0x7
    and-int/lit8 v4, p4, 0x1

    if-eqz v4, :cond_1fe

    move v2, v3

    .line 959
    .restart local v2  # "_hidl_is_oneway":Z
    :cond_1fe
    if-eqz v2, :cond_208

    .line 960
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 961
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 962
    goto/16 :goto_2d9

    .line 963
    :cond_208
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 965
    new-instance v0, Landroid/hardware/health/V2_0/IHealth$Stub$4;

    invoke-direct {v0, p0, p3}, Landroid/hardware/health/V2_0/IHealth$Stub$4;-><init>(Landroid/hardware/health/V2_0/IHealth$Stub;Landroid/os/HwParcel;)V

    invoke-virtual {p0, v0}, Landroid/hardware/health/V2_0/IHealth$Stub;->getCapacity(Landroid/hardware/health/V2_0/IHealth$getCapacityCallback;)V

    .line 973
    goto/16 :goto_2d9

    .line 938
    .end local v2  # "_hidl_is_oneway":Z
    :pswitch_215  #0x6
    and-int/lit8 v4, p4, 0x1

    if-eqz v4, :cond_21a

    move v2, v3

    .line 939
    .restart local v2  # "_hidl_is_oneway":Z
    :cond_21a
    if-eqz v2, :cond_224

    .line 940
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 941
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 942
    goto/16 :goto_2d9

    .line 943
    :cond_224
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 945
    new-instance v0, Landroid/hardware/health/V2_0/IHealth$Stub$3;

    invoke-direct {v0, p0, p3}, Landroid/hardware/health/V2_0/IHealth$Stub$3;-><init>(Landroid/hardware/health/V2_0/IHealth$Stub;Landroid/os/HwParcel;)V

    invoke-virtual {p0, v0}, Landroid/hardware/health/V2_0/IHealth$Stub;->getCurrentAverage(Landroid/hardware/health/V2_0/IHealth$getCurrentAverageCallback;)V

    .line 953
    goto/16 :goto_2d9

    .line 918
    .end local v2  # "_hidl_is_oneway":Z
    :pswitch_231  #0x5
    and-int/lit8 v4, p4, 0x1

    if-eqz v4, :cond_236

    move v2, v3

    .line 919
    .restart local v2  # "_hidl_is_oneway":Z
    :cond_236
    if-eqz v2, :cond_240

    .line 920
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 921
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 922
    goto/16 :goto_2d9

    .line 923
    :cond_240
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 925
    new-instance v0, Landroid/hardware/health/V2_0/IHealth$Stub$2;

    invoke-direct {v0, p0, p3}, Landroid/hardware/health/V2_0/IHealth$Stub$2;-><init>(Landroid/hardware/health/V2_0/IHealth$Stub;Landroid/os/HwParcel;)V

    invoke-virtual {p0, v0}, Landroid/hardware/health/V2_0/IHealth$Stub;->getCurrentNow(Landroid/hardware/health/V2_0/IHealth$getCurrentNowCallback;)V

    .line 933
    goto/16 :goto_2d9

    .line 898
    .end local v2  # "_hidl_is_oneway":Z
    :pswitch_24d  #0x4
    and-int/lit8 v4, p4, 0x1

    if-eqz v4, :cond_252

    move v2, v3

    .line 899
    .restart local v2  # "_hidl_is_oneway":Z
    :cond_252
    if-eqz v2, :cond_25c

    .line 900
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 901
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 902
    goto/16 :goto_2d9

    .line 903
    :cond_25c
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 905
    new-instance v0, Landroid/hardware/health/V2_0/IHealth$Stub$1;

    invoke-direct {v0, p0, p3}, Landroid/hardware/health/V2_0/IHealth$Stub$1;-><init>(Landroid/hardware/health/V2_0/IHealth$Stub;Landroid/os/HwParcel;)V

    invoke-virtual {p0, v0}, Landroid/hardware/health/V2_0/IHealth$Stub;->getChargeCounter(Landroid/hardware/health/V2_0/IHealth$getChargeCounterCallback;)V

    .line 913
    goto/16 :goto_2d9

    .line 882
    .end local v2  # "_hidl_is_oneway":Z
    :pswitch_269  #0x3
    and-int/lit8 v4, p4, 0x1

    if-eqz v4, :cond_26e

    goto :goto_26f

    :cond_26e
    move v3, v2

    .line 883
    .restart local v3  # "_hidl_is_oneway":Z
    :goto_26f
    if-eqz v3, :cond_278

    .line 884
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 885
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 886
    goto :goto_2d9

    .line 887
    :cond_278
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 889
    invoke-virtual {p0}, Landroid/hardware/health/V2_0/IHealth$Stub;->update()I

    move-result v0

    .line 890
    .local v0, "_hidl_out_result":I
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 891
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 892
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 893
    goto :goto_2d9

    .line 865
    .end local v0  # "_hidl_out_result":I
    .end local v3  # "_hidl_is_oneway":Z
    :pswitch_289  #0x2
    and-int/lit8 v4, p4, 0x1

    if-eqz v4, :cond_28e

    goto :goto_28f

    :cond_28e
    move v3, v2

    .line 866
    .restart local v3  # "_hidl_is_oneway":Z
    :goto_28f
    if-eqz v3, :cond_298

    .line 867
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 868
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 869
    goto :goto_2d9

    .line 870
    :cond_298
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 872
    invoke-virtual {p2}, Landroid/os/HwParcel;->readStrongBinder()Landroid/os/IHwBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/hardware/health/V2_0/IHealthInfoCallback;->asInterface(Landroid/os/IHwBinder;)Landroid/hardware/health/V2_0/IHealthInfoCallback;

    move-result-object v0

    .line 873
    .local v0, "callback":Landroid/hardware/health/V2_0/IHealthInfoCallback;
    invoke-virtual {p0, v0}, Landroid/hardware/health/V2_0/IHealth$Stub;->unregisterCallback(Landroid/hardware/health/V2_0/IHealthInfoCallback;)I

    move-result v1

    .line 874
    .local v1, "_hidl_out_result":I
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 875
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 876
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 877
    goto :goto_2d9

    .line 848
    .end local v0  # "callback":Landroid/hardware/health/V2_0/IHealthInfoCallback;
    .end local v1  # "_hidl_out_result":I
    .end local v3  # "_hidl_is_oneway":Z
    :pswitch_2b1  #0x1
    and-int/lit8 v4, p4, 0x1

    if-eqz v4, :cond_2b6

    goto :goto_2b7

    :cond_2b6
    move v3, v2

    .line 849
    .restart local v3  # "_hidl_is_oneway":Z
    :goto_2b7
    if-eqz v3, :cond_2c0

    .line 850
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 851
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 852
    goto :goto_2d9

    .line 853
    :cond_2c0
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 855
    invoke-virtual {p2}, Landroid/os/HwParcel;->readStrongBinder()Landroid/os/IHwBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/hardware/health/V2_0/IHealthInfoCallback;->asInterface(Landroid/os/IHwBinder;)Landroid/hardware/health/V2_0/IHealthInfoCallback;

    move-result-object v0

    .line 856
    .restart local v0  # "callback":Landroid/hardware/health/V2_0/IHealthInfoCallback;
    invoke-virtual {p0, v0}, Landroid/hardware/health/V2_0/IHealth$Stub;->registerCallback(Landroid/hardware/health/V2_0/IHealthInfoCallback;)I

    move-result v1

    .line 857
    .restart local v1  # "_hidl_out_result":I
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 858
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 859
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 860
    nop

    .line 1242
    .end local v0  # "callback":Landroid/hardware/health/V2_0/IHealthInfoCallback;
    .end local v1  # "_hidl_out_result":I
    .end local v3  # "_hidl_is_oneway":Z
    :cond_2d9
    :goto_2d9
    return-void

    :pswitch_data_2da
    .packed-switch 0x1
        :pswitch_2b1  #00000001
        :pswitch_289  #00000002
        :pswitch_269  #00000003
        :pswitch_24d  #00000004
        :pswitch_231  #00000005
        :pswitch_215  #00000006
        :pswitch_1f9  #00000007
        :pswitch_1dd  #00000008
        :pswitch_1c1  #00000009
        :pswitch_1a5  #0000000a
        :pswitch_189  #0000000b
        :pswitch_16d  #0000000c
    .end packed-switch

    :sswitch_data_2f6
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

    .line 799
    return-void
.end method

.method public queryLocalInterface(Ljava/lang/String;)Landroid/os/IHwInterface;
    .registers 3
    .param p1, "descriptor"  # Ljava/lang/String;

    .line 827
    const-string v0, "android.hardware.health@2.0::IHealth"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 828
    return-object p0

    .line 830
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
    .registers 3
    .param p1, "recipient"  # Landroid/os/IHwBinder$DeathRecipient;

    .line 821
    const/4 v0, 0x1

    return v0
.end method
