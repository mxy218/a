.class public abstract Lvendor/qti/hardware/servicetracker/V1_0/IServicetracker$Stub;
.super Landroid/os/HwBinder;
.source "IServicetracker.java"

# interfaces
.implements Lvendor/qti/hardware/servicetracker/V1_0/IServicetracker;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lvendor/qti/hardware/servicetracker/V1_0/IServicetracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 689
    invoke-direct {p0}, Landroid/os/HwBinder;-><init>()V

    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IHwBinder;
    .registers 1

    .line 692
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

    .line 705
    .local p2, "options":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    return-void
.end method

.method public final getDebugInfo()Landroid/hidl/base/V1_0/DebugInfo;
    .registers 4

    .line 742
    new-instance v0, Landroid/hidl/base/V1_0/DebugInfo;

    invoke-direct {v0}, Landroid/hidl/base/V1_0/DebugInfo;-><init>()V

    .line 743
    .local v0, "info":Landroid/hidl/base/V1_0/DebugInfo;
    invoke-static {}, Landroid/os/HidlSupport;->getPidIfSharable()I

    move-result v1

    iput v1, v0, Landroid/hidl/base/V1_0/DebugInfo;->pid:I

    .line 744
    const-wide/16 v1, 0x0

    iput-wide v1, v0, Landroid/hidl/base/V1_0/DebugInfo;->ptr:J

    .line 745
    const/4 v1, 0x0

    iput v1, v0, Landroid/hidl/base/V1_0/DebugInfo;->arch:I

    .line 746
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

    .line 717
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
        -0x45t
        -0x59t
        0x35t
        -0x7t
        0x59t
        -0x2bt
        -0x39t
        -0x5dt
        0x61t
        -0x6at
        -0x22t
        0x65t
        0x48t
        -0x5bt
        -0x9t
        0x40t
        -0x70t
        0x51t
        0x2bt
        -0x3ct
        -0x17t
        -0x27t
        0x2at
        -0x3et
        -0x6et
        0x79t
        -0x4et
        -0x23t
        0x78t
        0x6et
        -0x45t
        -0x76t
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

    .line 697
    new-instance v0, Ljava/util/ArrayList;

    const-string v1, "vendor.qti.hardware.servicetracker@1.0::IServicetracker"

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

    .line 711
    const-string v0, "vendor.qti.hardware.servicetracker@1.0::IServicetracker"

    return-object v0
.end method

.method public final linkToDeath(Landroid/os/IHwBinder$DeathRecipient;J)Z
    .registers 5
    .param p1, "recipient"  # Landroid/os/IHwBinder$DeathRecipient;
    .param p2, "cookie"  # J

    .line 730
    const/4 v0, 0x1

    return v0
.end method

.method public final notifySyspropsChanged()V
    .registers 1

    .line 752
    invoke-static {}, Landroid/os/HwBinder;->enableInstrumentation()V

    .line 754
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

    .line 782
    const-string v0, "vendor.qti.hardware.servicetracker@1.0::IServicetracker"

    const/high16 v1, -0x80000000

    const/4 v2, 0x0

    const/4 v3, 0x1

    packed-switch p1, :pswitch_data_30c

    const-string v0, "android.hidl.base@1.0::IBase"

    sparse-switch p1, :sswitch_data_32a

    goto/16 :goto_30a

    .line 1186
    :sswitch_10
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_15

    move v2, v3

    :cond_15
    move v0, v2

    .line 1187
    .local v0, "_hidl_is_oneway":Z
    if-eqz v0, :cond_30a

    .line 1188
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1189
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1190
    goto/16 :goto_30a

    .line 1173
    .end local v0  # "_hidl_is_oneway":Z
    :sswitch_20
    and-int/lit8 v4, p4, 0x1

    if-eqz v4, :cond_25

    move v2, v3

    .line 1174
    .local v2, "_hidl_is_oneway":Z
    :cond_25
    if-eq v2, v3, :cond_2f

    .line 1175
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1176
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1177
    goto/16 :goto_30a

    .line 1178
    :cond_2f
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1180
    invoke-virtual {p0}, Lvendor/qti/hardware/servicetracker/V1_0/IServicetracker$Stub;->notifySyspropsChanged()V

    .line 1181
    goto/16 :goto_30a

    .line 1157
    .end local v2  # "_hidl_is_oneway":Z
    :sswitch_37
    and-int/lit8 v4, p4, 0x1

    if-eqz v4, :cond_3c

    goto :goto_3d

    :cond_3c
    move v3, v2

    .line 1158
    .local v3, "_hidl_is_oneway":Z
    :goto_3d
    if-eqz v3, :cond_47

    .line 1159
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1160
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1161
    goto/16 :goto_30a

    .line 1162
    :cond_47
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1164
    invoke-virtual {p0}, Lvendor/qti/hardware/servicetracker/V1_0/IServicetracker$Stub;->getDebugInfo()Landroid/hidl/base/V1_0/DebugInfo;

    move-result-object v0

    .line 1165
    .local v0, "_hidl_out_info":Landroid/hidl/base/V1_0/DebugInfo;
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1166
    invoke-virtual {v0, p3}, Landroid/hidl/base/V1_0/DebugInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 1167
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1168
    goto/16 :goto_30a

    .line 1142
    .end local v0  # "_hidl_out_info":Landroid/hidl/base/V1_0/DebugInfo;
    .end local v3  # "_hidl_is_oneway":Z
    :sswitch_59
    and-int/lit8 v4, p4, 0x1

    if-eqz v4, :cond_5e

    goto :goto_5f

    :cond_5e
    move v3, v2

    .line 1143
    .restart local v3  # "_hidl_is_oneway":Z
    :goto_5f
    if-eqz v3, :cond_69

    .line 1144
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1145
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1146
    goto/16 :goto_30a

    .line 1147
    :cond_69
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1149
    invoke-virtual {p0}, Lvendor/qti/hardware/servicetracker/V1_0/IServicetracker$Stub;->ping()V

    .line 1150
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1151
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1152
    goto/16 :goto_30a

    .line 1132
    .end local v3  # "_hidl_is_oneway":Z
    :sswitch_77
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_7c

    move v2, v3

    :cond_7c
    move v0, v2

    .line 1133
    .local v0, "_hidl_is_oneway":Z
    if-eqz v0, :cond_30a

    .line 1134
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1135
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1136
    goto/16 :goto_30a

    .line 1119
    .end local v0  # "_hidl_is_oneway":Z
    :sswitch_87
    and-int/lit8 v4, p4, 0x1

    if-eqz v4, :cond_8c

    move v2, v3

    .line 1120
    .restart local v2  # "_hidl_is_oneway":Z
    :cond_8c
    if-eq v2, v3, :cond_96

    .line 1121
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1122
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1123
    goto/16 :goto_30a

    .line 1124
    :cond_96
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1126
    invoke-virtual {p0}, Lvendor/qti/hardware/servicetracker/V1_0/IServicetracker$Stub;->setHALInstrumentation()V

    .line 1127
    goto/16 :goto_30a

    .line 1080
    .end local v2  # "_hidl_is_oneway":Z
    :sswitch_9e
    and-int/lit8 v4, p4, 0x1

    if-eqz v4, :cond_a3

    goto :goto_a4

    :cond_a3
    move v3, v2

    .line 1081
    .restart local v3  # "_hidl_is_oneway":Z
    :goto_a4
    if-eqz v3, :cond_ae

    .line 1082
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1083
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1084
    goto/16 :goto_30a

    .line 1085
    :cond_ae
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1087
    invoke-virtual {p0}, Lvendor/qti/hardware/servicetracker/V1_0/IServicetracker$Stub;->getHashChain()Ljava/util/ArrayList;

    move-result-object v0

    .line 1088
    .local v0, "_hidl_out_hashchain":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1090
    new-instance v1, Landroid/os/HwBlob;

    const/16 v4, 0x10

    invoke-direct {v1, v4}, Landroid/os/HwBlob;-><init>(I)V

    .line 1092
    .local v1, "_hidl_blob":Landroid/os/HwBlob;
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 1093
    .local v4, "_hidl_vec_size":I
    const-wide/16 v5, 0x8

    invoke-virtual {v1, v5, v6, v4}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 1094
    const-wide/16 v5, 0xc

    invoke-virtual {v1, v5, v6, v2}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 1095
    new-instance v2, Landroid/os/HwBlob;

    mul-int/lit8 v5, v4, 0x20

    invoke-direct {v2, v5}, Landroid/os/HwBlob;-><init>(I)V

    .line 1096
    .local v2, "childBlob":Landroid/os/HwBlob;
    const/4 v5, 0x0

    .local v5, "_hidl_index_0":I
    :goto_d5
    if-ge v5, v4, :cond_f6

    .line 1098
    mul-int/lit8 v6, v5, 0x20

    int-to-long v6, v6

    .line 1099
    .local v6, "_hidl_array_offset_1":J
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [B

    .line 1101
    .local v8, "_hidl_array_item_1":[B
    if-eqz v8, :cond_ee

    array-length v9, v8

    const/16 v10, 0x20

    if-ne v9, v10, :cond_ee

    .line 1105
    invoke-virtual {v2, v6, v7, v8}, Landroid/os/HwBlob;->putInt8Array(J[B)V

    .line 1106
    nop

    .line 1096
    .end local v6  # "_hidl_array_offset_1":J
    .end local v8  # "_hidl_array_item_1":[B
    add-int/lit8 v5, v5, 0x1

    goto :goto_d5

    .line 1102
    .restart local v6  # "_hidl_array_offset_1":J
    .restart local v8  # "_hidl_array_item_1":[B
    :cond_ee
    new-instance v9, Ljava/lang/IllegalArgumentException;

    const-string v10, "Array element is not of the expected length"

    invoke-direct {v9, v10}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 1109
    .end local v5  # "_hidl_index_0":I
    .end local v6  # "_hidl_array_offset_1":J
    .end local v8  # "_hidl_array_item_1":[B
    :cond_f6
    const-wide/16 v5, 0x0

    invoke-virtual {v1, v5, v6, v2}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    .line 1111
    .end local v2  # "childBlob":Landroid/os/HwBlob;
    .end local v4  # "_hidl_vec_size":I
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    .line 1113
    .end local v1  # "_hidl_blob":Landroid/os/HwBlob;
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1114
    goto/16 :goto_30a

    .line 1064
    .end local v0  # "_hidl_out_hashchain":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    .end local v3  # "_hidl_is_oneway":Z
    :sswitch_103
    and-int/lit8 v4, p4, 0x1

    if-eqz v4, :cond_108

    goto :goto_109

    :cond_108
    move v3, v2

    .line 1065
    .restart local v3  # "_hidl_is_oneway":Z
    :goto_109
    if-eqz v3, :cond_113

    .line 1066
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1067
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1068
    goto/16 :goto_30a

    .line 1069
    :cond_113
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1071
    invoke-virtual {p0}, Lvendor/qti/hardware/servicetracker/V1_0/IServicetracker$Stub;->interfaceDescriptor()Ljava/lang/String;

    move-result-object v0

    .line 1072
    .local v0, "_hidl_out_descriptor":Ljava/lang/String;
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1073
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 1074
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1075
    goto/16 :goto_30a

    .line 1047
    .end local v0  # "_hidl_out_descriptor":Ljava/lang/String;
    .end local v3  # "_hidl_is_oneway":Z
    :sswitch_125
    and-int/lit8 v4, p4, 0x1

    if-eqz v4, :cond_12a

    goto :goto_12b

    :cond_12a
    move v3, v2

    .line 1048
    .restart local v3  # "_hidl_is_oneway":Z
    :goto_12b
    if-eqz v3, :cond_135

    .line 1049
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1050
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1051
    goto/16 :goto_30a

    .line 1052
    :cond_135
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1054
    invoke-virtual {p2}, Landroid/os/HwParcel;->readNativeHandle()Landroid/os/NativeHandle;

    move-result-object v0

    .line 1055
    .local v0, "fd":Landroid/os/NativeHandle;
    invoke-virtual {p2}, Landroid/os/HwParcel;->readStringVector()Ljava/util/ArrayList;

    move-result-object v1

    .line 1056
    .local v1, "options":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {p0, v0, v1}, Lvendor/qti/hardware/servicetracker/V1_0/IServicetracker$Stub;->debug(Landroid/os/NativeHandle;Ljava/util/ArrayList;)V

    .line 1057
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1058
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1059
    goto/16 :goto_30a

    .line 1031
    .end local v0  # "fd":Landroid/os/NativeHandle;
    .end local v1  # "options":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v3  # "_hidl_is_oneway":Z
    :sswitch_14b
    and-int/lit8 v4, p4, 0x1

    if-eqz v4, :cond_150

    goto :goto_151

    :cond_150
    move v3, v2

    .line 1032
    .restart local v3  # "_hidl_is_oneway":Z
    :goto_151
    if-eqz v3, :cond_15b

    .line 1033
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1034
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1035
    goto/16 :goto_30a

    .line 1036
    :cond_15b
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1038
    invoke-virtual {p0}, Lvendor/qti/hardware/servicetracker/V1_0/IServicetracker$Stub;->interfaceChain()Ljava/util/ArrayList;

    move-result-object v0

    .line 1039
    .local v0, "_hidl_out_descriptors":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1040
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStringVector(Ljava/util/ArrayList;)V

    .line 1041
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1042
    goto/16 :goto_30a

    .line 1010
    .end local v0  # "_hidl_out_descriptors":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v3  # "_hidl_is_oneway":Z
    :pswitch_16d  #0xd
    and-int/lit8 v4, p4, 0x1

    if-eqz v4, :cond_172

    move v2, v3

    .line 1011
    .local v2, "_hidl_is_oneway":Z
    :cond_172
    if-eqz v2, :cond_17c

    .line 1012
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1013
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1014
    goto/16 :goto_30a

    .line 1015
    :cond_17c
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1017
    new-instance v0, Lvendor/qti/hardware/servicetracker/V1_0/IServicetracker$Stub$8;

    invoke-direct {v0, p0, p3}, Lvendor/qti/hardware/servicetracker/V1_0/IServicetracker$Stub$8;-><init>(Lvendor/qti/hardware/servicetracker/V1_0/IServicetracker$Stub;Landroid/os/HwParcel;)V

    invoke-virtual {p0, v0}, Lvendor/qti/hardware/servicetracker/V1_0/IServicetracker$Stub;->getServiceBCount(Lvendor/qti/hardware/servicetracker/V1_0/IServicetracker$getServiceBCountCallback;)V

    .line 1026
    goto/16 :goto_30a

    .line 989
    .end local v2  # "_hidl_is_oneway":Z
    :pswitch_189  #0xc
    and-int/lit8 v4, p4, 0x1

    if-eqz v4, :cond_18e

    move v2, v3

    .line 990
    .restart local v2  # "_hidl_is_oneway":Z
    :cond_18e
    if-eqz v2, :cond_198

    .line 991
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 992
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 993
    goto/16 :goto_30a

    .line 994
    :cond_198
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 996
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 997
    .local v0, "serviceName":Ljava/lang/String;
    new-instance v1, Lvendor/qti/hardware/servicetracker/V1_0/IServicetracker$Stub$7;

    invoke-direct {v1, p0, p3}, Lvendor/qti/hardware/servicetracker/V1_0/IServicetracker$Stub$7;-><init>(Lvendor/qti/hardware/servicetracker/V1_0/IServicetracker$Stub;Landroid/os/HwParcel;)V

    invoke-virtual {p0, v0, v1}, Lvendor/qti/hardware/servicetracker/V1_0/IServicetracker$Stub;->isServiceB(Ljava/lang/String;Lvendor/qti/hardware/servicetracker/V1_0/IServicetracker$isServiceBCallback;)V

    .line 1005
    goto/16 :goto_30a

    .line 968
    .end local v0  # "serviceName":Ljava/lang/String;
    .end local v2  # "_hidl_is_oneway":Z
    :pswitch_1a9  #0xb
    and-int/lit8 v4, p4, 0x1

    if-eqz v4, :cond_1ae

    move v2, v3

    .line 969
    .restart local v2  # "_hidl_is_oneway":Z
    :cond_1ae
    if-eqz v2, :cond_1b8

    .line 970
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 971
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 972
    goto/16 :goto_30a

    .line 973
    :cond_1b8
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 975
    invoke-virtual {p2}, Landroid/os/HwParcel;->readStringVector()Ljava/util/ArrayList;

    move-result-object v0

    .line 976
    .local v0, "serviceList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v1, Lvendor/qti/hardware/servicetracker/V1_0/IServicetracker$Stub$6;

    invoke-direct {v1, p0, p3}, Lvendor/qti/hardware/servicetracker/V1_0/IServicetracker$Stub$6;-><init>(Lvendor/qti/hardware/servicetracker/V1_0/IServicetracker$Stub;Landroid/os/HwParcel;)V

    invoke-virtual {p0, v0, v1}, Lvendor/qti/hardware/servicetracker/V1_0/IServicetracker$Stub;->getPids(Ljava/util/ArrayList;Lvendor/qti/hardware/servicetracker/V1_0/IServicetracker$getPidsCallback;)V

    .line 984
    goto/16 :goto_30a

    .line 947
    .end local v0  # "serviceList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v2  # "_hidl_is_oneway":Z
    :pswitch_1c9  #0xa
    and-int/lit8 v4, p4, 0x1

    if-eqz v4, :cond_1ce

    move v2, v3

    .line 948
    .restart local v2  # "_hidl_is_oneway":Z
    :cond_1ce
    if-eqz v2, :cond_1d8

    .line 949
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 950
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 951
    goto/16 :goto_30a

    .line 952
    :cond_1d8
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 954
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 955
    .local v0, "processName":Ljava/lang/String;
    new-instance v1, Lvendor/qti/hardware/servicetracker/V1_0/IServicetracker$Stub$5;

    invoke-direct {v1, p0, p3}, Lvendor/qti/hardware/servicetracker/V1_0/IServicetracker$Stub$5;-><init>(Lvendor/qti/hardware/servicetracker/V1_0/IServicetracker$Stub;Landroid/os/HwParcel;)V

    invoke-virtual {p0, v0, v1}, Lvendor/qti/hardware/servicetracker/V1_0/IServicetracker$Stub;->getPid(Ljava/lang/String;Lvendor/qti/hardware/servicetracker/V1_0/IServicetracker$getPidCallback;)V

    .line 963
    goto/16 :goto_30a

    .line 926
    .end local v0  # "processName":Ljava/lang/String;
    .end local v2  # "_hidl_is_oneway":Z
    :pswitch_1e9  #0x9
    and-int/lit8 v4, p4, 0x1

    if-eqz v4, :cond_1ee

    move v2, v3

    .line 927
    .restart local v2  # "_hidl_is_oneway":Z
    :cond_1ee
    if-eqz v2, :cond_1f8

    .line 928
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 929
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 930
    goto/16 :goto_30a

    .line 931
    :cond_1f8
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 933
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 934
    .local v0, "clientName":Ljava/lang/String;
    new-instance v1, Lvendor/qti/hardware/servicetracker/V1_0/IServicetracker$Stub$4;

    invoke-direct {v1, p0, p3}, Lvendor/qti/hardware/servicetracker/V1_0/IServicetracker$Stub$4;-><init>(Lvendor/qti/hardware/servicetracker/V1_0/IServicetracker$Stub;Landroid/os/HwParcel;)V

    invoke-virtual {p0, v0, v1}, Lvendor/qti/hardware/servicetracker/V1_0/IServicetracker$Stub;->getClientConnections(Ljava/lang/String;Lvendor/qti/hardware/servicetracker/V1_0/IServicetracker$getClientConnectionsCallback;)V

    .line 942
    goto/16 :goto_30a

    .line 905
    .end local v0  # "clientName":Ljava/lang/String;
    .end local v2  # "_hidl_is_oneway":Z
    :pswitch_209  #0x8
    and-int/lit8 v4, p4, 0x1

    if-eqz v4, :cond_20e

    move v2, v3

    .line 906
    .restart local v2  # "_hidl_is_oneway":Z
    :cond_20e
    if-eqz v2, :cond_218

    .line 907
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 908
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 909
    goto/16 :goto_30a

    .line 910
    :cond_218
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 912
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 913
    .local v0, "serviceName":Ljava/lang/String;
    new-instance v1, Lvendor/qti/hardware/servicetracker/V1_0/IServicetracker$Stub$3;

    invoke-direct {v1, p0, p3}, Lvendor/qti/hardware/servicetracker/V1_0/IServicetracker$Stub$3;-><init>(Lvendor/qti/hardware/servicetracker/V1_0/IServicetracker$Stub;Landroid/os/HwParcel;)V

    invoke-virtual {p0, v0, v1}, Lvendor/qti/hardware/servicetracker/V1_0/IServicetracker$Stub;->getServiceConnections(Ljava/lang/String;Lvendor/qti/hardware/servicetracker/V1_0/IServicetracker$getServiceConnectionsCallback;)V

    .line 921
    goto/16 :goto_30a

    .line 884
    .end local v0  # "serviceName":Ljava/lang/String;
    .end local v2  # "_hidl_is_oneway":Z
    :pswitch_229  #0x7
    and-int/lit8 v4, p4, 0x1

    if-eqz v4, :cond_22e

    move v2, v3

    .line 885
    .restart local v2  # "_hidl_is_oneway":Z
    :cond_22e
    if-eqz v2, :cond_238

    .line 886
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 887
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 888
    goto/16 :goto_30a

    .line 889
    :cond_238
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 891
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 892
    .restart local v0  # "serviceName":Ljava/lang/String;
    new-instance v1, Lvendor/qti/hardware/servicetracker/V1_0/IServicetracker$Stub$2;

    invoke-direct {v1, p0, p3}, Lvendor/qti/hardware/servicetracker/V1_0/IServicetracker$Stub$2;-><init>(Lvendor/qti/hardware/servicetracker/V1_0/IServicetracker$Stub;Landroid/os/HwParcel;)V

    invoke-virtual {p0, v0, v1}, Lvendor/qti/hardware/servicetracker/V1_0/IServicetracker$Stub;->getserviceInfo(Ljava/lang/String;Lvendor/qti/hardware/servicetracker/V1_0/IServicetracker$getserviceInfoCallback;)V

    .line 900
    goto/16 :goto_30a

    .line 863
    .end local v0  # "serviceName":Ljava/lang/String;
    .end local v2  # "_hidl_is_oneway":Z
    :pswitch_249  #0x6
    and-int/lit8 v4, p4, 0x1

    if-eqz v4, :cond_24e

    move v2, v3

    .line 864
    .restart local v2  # "_hidl_is_oneway":Z
    :cond_24e
    if-eqz v2, :cond_258

    .line 865
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 866
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 867
    goto/16 :goto_30a

    .line 868
    :cond_258
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 870
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 871
    .local v0, "clientName":Ljava/lang/String;
    new-instance v1, Lvendor/qti/hardware/servicetracker/V1_0/IServicetracker$Stub$1;

    invoke-direct {v1, p0, p3}, Lvendor/qti/hardware/servicetracker/V1_0/IServicetracker$Stub$1;-><init>(Lvendor/qti/hardware/servicetracker/V1_0/IServicetracker$Stub;Landroid/os/HwParcel;)V

    invoke-virtual {p0, v0, v1}, Lvendor/qti/hardware/servicetracker/V1_0/IServicetracker$Stub;->getclientInfo(Ljava/lang/String;Lvendor/qti/hardware/servicetracker/V1_0/IServicetracker$getclientInfoCallback;)V

    .line 879
    goto/16 :goto_30a

    .line 849
    .end local v0  # "clientName":Ljava/lang/String;
    .end local v2  # "_hidl_is_oneway":Z
    :pswitch_269  #0x5
    and-int/lit8 v4, p4, 0x1

    if-eqz v4, :cond_26e

    move v2, v3

    .line 850
    .restart local v2  # "_hidl_is_oneway":Z
    :cond_26e
    if-eq v2, v3, :cond_278

    .line 851
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 852
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 853
    goto/16 :goto_30a

    .line 854
    :cond_278
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 856
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 857
    .local v0, "pid":I
    invoke-virtual {p0, v0}, Lvendor/qti/hardware/servicetracker/V1_0/IServicetracker$Stub;->killProcess(I)V

    .line 858
    goto/16 :goto_30a

    .line 834
    .end local v0  # "pid":I
    .end local v2  # "_hidl_is_oneway":Z
    :pswitch_284  #0x4
    and-int/lit8 v4, p4, 0x1

    if-eqz v4, :cond_289

    move v2, v3

    .line 835
    .restart local v2  # "_hidl_is_oneway":Z
    :cond_289
    if-eq v2, v3, :cond_293

    .line 836
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 837
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 838
    goto/16 :goto_30a

    .line 839
    :cond_293
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 841
    new-instance v0, Lvendor/qti/hardware/servicetracker/V1_0/ServiceData;

    invoke-direct {v0}, Lvendor/qti/hardware/servicetracker/V1_0/ServiceData;-><init>()V

    .line 842
    .local v0, "serviceData":Lvendor/qti/hardware/servicetracker/V1_0/ServiceData;
    invoke-virtual {v0, p2}, Lvendor/qti/hardware/servicetracker/V1_0/ServiceData;->readFromParcel(Landroid/os/HwParcel;)V

    .line 843
    invoke-virtual {p0, v0}, Lvendor/qti/hardware/servicetracker/V1_0/IServicetracker$Stub;->destroyService(Lvendor/qti/hardware/servicetracker/V1_0/ServiceData;)V

    .line 844
    goto/16 :goto_30a

    .line 817
    .end local v0  # "serviceData":Lvendor/qti/hardware/servicetracker/V1_0/ServiceData;
    .end local v2  # "_hidl_is_oneway":Z
    :pswitch_2a3  #0x3
    and-int/lit8 v4, p4, 0x1

    if-eqz v4, :cond_2a8

    move v2, v3

    .line 818
    .restart local v2  # "_hidl_is_oneway":Z
    :cond_2a8
    if-eq v2, v3, :cond_2b1

    .line 819
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 820
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 821
    goto :goto_30a

    .line 822
    :cond_2b1
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 824
    new-instance v0, Lvendor/qti/hardware/servicetracker/V1_0/ServiceData;

    invoke-direct {v0}, Lvendor/qti/hardware/servicetracker/V1_0/ServiceData;-><init>()V

    .line 825
    .restart local v0  # "serviceData":Lvendor/qti/hardware/servicetracker/V1_0/ServiceData;
    invoke-virtual {v0, p2}, Lvendor/qti/hardware/servicetracker/V1_0/ServiceData;->readFromParcel(Landroid/os/HwParcel;)V

    .line 826
    new-instance v1, Lvendor/qti/hardware/servicetracker/V1_0/ClientData;

    invoke-direct {v1}, Lvendor/qti/hardware/servicetracker/V1_0/ClientData;-><init>()V

    .line 827
    .local v1, "clientData":Lvendor/qti/hardware/servicetracker/V1_0/ClientData;
    invoke-virtual {v1, p2}, Lvendor/qti/hardware/servicetracker/V1_0/ClientData;->readFromParcel(Landroid/os/HwParcel;)V

    .line 828
    invoke-virtual {p0, v0, v1}, Lvendor/qti/hardware/servicetracker/V1_0/IServicetracker$Stub;->unbindService(Lvendor/qti/hardware/servicetracker/V1_0/ServiceData;Lvendor/qti/hardware/servicetracker/V1_0/ClientData;)V

    .line 829
    goto :goto_30a

    .line 800
    .end local v0  # "serviceData":Lvendor/qti/hardware/servicetracker/V1_0/ServiceData;
    .end local v1  # "clientData":Lvendor/qti/hardware/servicetracker/V1_0/ClientData;
    .end local v2  # "_hidl_is_oneway":Z
    :pswitch_2c8  #0x2
    and-int/lit8 v4, p4, 0x1

    if-eqz v4, :cond_2cd

    move v2, v3

    .line 801
    .restart local v2  # "_hidl_is_oneway":Z
    :cond_2cd
    if-eq v2, v3, :cond_2d6

    .line 802
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 803
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 804
    goto :goto_30a

    .line 805
    :cond_2d6
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 807
    new-instance v0, Lvendor/qti/hardware/servicetracker/V1_0/ServiceData;

    invoke-direct {v0}, Lvendor/qti/hardware/servicetracker/V1_0/ServiceData;-><init>()V

    .line 808
    .restart local v0  # "serviceData":Lvendor/qti/hardware/servicetracker/V1_0/ServiceData;
    invoke-virtual {v0, p2}, Lvendor/qti/hardware/servicetracker/V1_0/ServiceData;->readFromParcel(Landroid/os/HwParcel;)V

    .line 809
    new-instance v1, Lvendor/qti/hardware/servicetracker/V1_0/ClientData;

    invoke-direct {v1}, Lvendor/qti/hardware/servicetracker/V1_0/ClientData;-><init>()V

    .line 810
    .restart local v1  # "clientData":Lvendor/qti/hardware/servicetracker/V1_0/ClientData;
    invoke-virtual {v1, p2}, Lvendor/qti/hardware/servicetracker/V1_0/ClientData;->readFromParcel(Landroid/os/HwParcel;)V

    .line 811
    invoke-virtual {p0, v0, v1}, Lvendor/qti/hardware/servicetracker/V1_0/IServicetracker$Stub;->bindService(Lvendor/qti/hardware/servicetracker/V1_0/ServiceData;Lvendor/qti/hardware/servicetracker/V1_0/ClientData;)V

    .line 812
    goto :goto_30a

    .line 785
    .end local v0  # "serviceData":Lvendor/qti/hardware/servicetracker/V1_0/ServiceData;
    .end local v1  # "clientData":Lvendor/qti/hardware/servicetracker/V1_0/ClientData;
    .end local v2  # "_hidl_is_oneway":Z
    :pswitch_2ed  #0x1
    and-int/lit8 v4, p4, 0x1

    if-eqz v4, :cond_2f2

    move v2, v3

    .line 786
    .restart local v2  # "_hidl_is_oneway":Z
    :cond_2f2
    if-eq v2, v3, :cond_2fb

    .line 787
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 788
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 789
    goto :goto_30a

    .line 790
    :cond_2fb
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 792
    new-instance v0, Lvendor/qti/hardware/servicetracker/V1_0/ServiceData;

    invoke-direct {v0}, Lvendor/qti/hardware/servicetracker/V1_0/ServiceData;-><init>()V

    .line 793
    .restart local v0  # "serviceData":Lvendor/qti/hardware/servicetracker/V1_0/ServiceData;
    invoke-virtual {v0, p2}, Lvendor/qti/hardware/servicetracker/V1_0/ServiceData;->readFromParcel(Landroid/os/HwParcel;)V

    .line 794
    invoke-virtual {p0, v0}, Lvendor/qti/hardware/servicetracker/V1_0/IServicetracker$Stub;->startService(Lvendor/qti/hardware/servicetracker/V1_0/ServiceData;)V

    .line 795
    nop

    .line 1195
    .end local v0  # "serviceData":Lvendor/qti/hardware/servicetracker/V1_0/ServiceData;
    .end local v2  # "_hidl_is_oneway":Z
    :cond_30a
    :goto_30a
    return-void

    nop

    :pswitch_data_30c
    .packed-switch 0x1
        :pswitch_2ed  #00000001
        :pswitch_2c8  #00000002
        :pswitch_2a3  #00000003
        :pswitch_284  #00000004
        :pswitch_269  #00000005
        :pswitch_249  #00000006
        :pswitch_229  #00000007
        :pswitch_209  #00000008
        :pswitch_1e9  #00000009
        :pswitch_1c9  #0000000a
        :pswitch_1a9  #0000000b
        :pswitch_189  #0000000c
        :pswitch_16d  #0000000d
    .end packed-switch

    :sswitch_data_32a
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

    .line 736
    return-void
.end method

.method public queryLocalInterface(Ljava/lang/String;)Landroid/os/IHwInterface;
    .registers 3
    .param p1, "descriptor"  # Ljava/lang/String;

    .line 764
    const-string v0, "vendor.qti.hardware.servicetracker@1.0::IServicetracker"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 765
    return-object p0

    .line 767
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

    .line 771
    invoke-virtual {p0, p1}, Lvendor/qti/hardware/servicetracker/V1_0/IServicetracker$Stub;->registerService(Ljava/lang/String;)V

    .line 772
    return-void
.end method

.method public final setHALInstrumentation()V
    .registers 1

    .line 726
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 776
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lvendor/qti/hardware/servicetracker/V1_0/IServicetracker$Stub;->interfaceDescriptor()Ljava/lang/String;

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

    .line 758
    const/4 v0, 0x1

    return v0
.end method
