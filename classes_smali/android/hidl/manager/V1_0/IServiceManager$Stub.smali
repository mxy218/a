.class public abstract Landroid/hidl/manager/V1_0/IServiceManager$Stub;
.super Landroid/os/HwBinder;
.source "IServiceManager.java"

# interfaces
.implements Landroid/hidl/manager/V1_0/IServiceManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hidl/manager/V1_0/IServiceManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 816
    invoke-direct {p0}, Landroid/os/HwBinder;-><init>()V

    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IHwBinder;
    .registers 1

    .line 819
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

    .line 832
    .local p2, "options":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    return-void
.end method

.method public final getDebugInfo()Landroid/hidl/base/V1_0/DebugInfo;
    .registers 4

    .line 869
    new-instance v0, Landroid/hidl/base/V1_0/DebugInfo;

    invoke-direct {v0}, Landroid/hidl/base/V1_0/DebugInfo;-><init>()V

    .line 870
    .local v0, "info":Landroid/hidl/base/V1_0/DebugInfo;
    invoke-static {}, Landroid/os/HidlSupport;->getPidIfSharable()I

    move-result v1

    iput v1, v0, Landroid/hidl/base/V1_0/DebugInfo;->pid:I

    .line 871
    const-wide/16 v1, 0x0

    iput-wide v1, v0, Landroid/hidl/base/V1_0/DebugInfo;->ptr:J

    .line 872
    const/4 v1, 0x0

    iput v1, v0, Landroid/hidl/base/V1_0/DebugInfo;->arch:I

    .line 873
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

    .line 844
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
        -0x7bt
        0x39t
        0x4ft
        -0x76t
        0xdt
        0x15t
        -0x19t
        -0x5t
        0x2et
        -0x1ct
        0x5ct
        0x52t
        -0x2ft
        -0x5t
        -0x75t
        -0x71t
        -0x2dt
        -0x3ft
        0x3ct
        0x33t
        0x3et
        0x63t
        -0x39t
        -0x74t
        0x4at
        -0x5ft
        -0x1t
        -0x7at
        -0x7ct
        0xct
        -0xat
        -0x24t
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

    .line 824
    new-instance v0, Ljava/util/ArrayList;

    const-string v1, "android.hidl.manager@1.0::IServiceManager"

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

    .line 838
    const-string v0, "android.hidl.manager@1.0::IServiceManager"

    return-object v0
.end method

.method public final linkToDeath(Landroid/os/IHwBinder$DeathRecipient;J)Z
    .registers 5
    .param p1, "recipient"  # Landroid/os/IHwBinder$DeathRecipient;
    .param p2, "cookie"  # J

    .line 857
    const/4 v0, 0x1

    return v0
.end method

.method public final notifySyspropsChanged()V
    .registers 1

    .line 879
    invoke-static {}, Landroid/os/HwBinder;->enableInstrumentation()V

    .line 881
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

    .line 909
    const-string v0, "android.hidl.manager@1.0::IServiceManager"

    const/high16 v1, -0x80000000

    const/4 v2, 0x0

    const/4 v3, 0x1

    packed-switch p1, :pswitch_data_2b6

    const-string v0, "android.hidl.base@1.0::IBase"

    sparse-switch p1, :sswitch_data_2ca

    goto/16 :goto_2b4

    .line 1206
    :sswitch_10
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_15

    move v2, v3

    :cond_15
    move v0, v2

    .line 1207
    .local v0, "_hidl_is_oneway":Z
    if-eqz v0, :cond_2b4

    .line 1208
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1209
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1210
    goto/16 :goto_2b4

    .line 1193
    .end local v0  # "_hidl_is_oneway":Z
    :sswitch_20
    and-int/lit8 v4, p4, 0x1

    if-eqz v4, :cond_25

    move v2, v3

    .line 1194
    .local v2, "_hidl_is_oneway":Z
    :cond_25
    if-eq v2, v3, :cond_2f

    .line 1195
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1196
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1197
    goto/16 :goto_2b4

    .line 1198
    :cond_2f
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1200
    invoke-virtual {p0}, Landroid/hidl/manager/V1_0/IServiceManager$Stub;->notifySyspropsChanged()V

    .line 1201
    goto/16 :goto_2b4

    .line 1177
    .end local v2  # "_hidl_is_oneway":Z
    :sswitch_37
    and-int/lit8 v4, p4, 0x1

    if-eqz v4, :cond_3c

    goto :goto_3d

    :cond_3c
    move v3, v2

    .line 1178
    .local v3, "_hidl_is_oneway":Z
    :goto_3d
    if-eqz v3, :cond_47

    .line 1179
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1180
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1181
    goto/16 :goto_2b4

    .line 1182
    :cond_47
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1184
    invoke-virtual {p0}, Landroid/hidl/manager/V1_0/IServiceManager$Stub;->getDebugInfo()Landroid/hidl/base/V1_0/DebugInfo;

    move-result-object v0

    .line 1185
    .local v0, "_hidl_out_info":Landroid/hidl/base/V1_0/DebugInfo;
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1186
    invoke-virtual {v0, p3}, Landroid/hidl/base/V1_0/DebugInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 1187
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1188
    goto/16 :goto_2b4

    .line 1162
    .end local v0  # "_hidl_out_info":Landroid/hidl/base/V1_0/DebugInfo;
    .end local v3  # "_hidl_is_oneway":Z
    :sswitch_59
    and-int/lit8 v4, p4, 0x1

    if-eqz v4, :cond_5e

    goto :goto_5f

    :cond_5e
    move v3, v2

    .line 1163
    .restart local v3  # "_hidl_is_oneway":Z
    :goto_5f
    if-eqz v3, :cond_69

    .line 1164
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1165
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1166
    goto/16 :goto_2b4

    .line 1167
    :cond_69
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1169
    invoke-virtual {p0}, Landroid/hidl/manager/V1_0/IServiceManager$Stub;->ping()V

    .line 1170
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1171
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1172
    goto/16 :goto_2b4

    .line 1152
    .end local v3  # "_hidl_is_oneway":Z
    :sswitch_77
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_7c

    move v2, v3

    :cond_7c
    move v0, v2

    .line 1153
    .local v0, "_hidl_is_oneway":Z
    if-eqz v0, :cond_2b4

    .line 1154
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1155
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1156
    goto/16 :goto_2b4

    .line 1139
    .end local v0  # "_hidl_is_oneway":Z
    :sswitch_87
    and-int/lit8 v4, p4, 0x1

    if-eqz v4, :cond_8c

    move v2, v3

    .line 1140
    .restart local v2  # "_hidl_is_oneway":Z
    :cond_8c
    if-eq v2, v3, :cond_96

    .line 1141
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1142
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1143
    goto/16 :goto_2b4

    .line 1144
    :cond_96
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1146
    invoke-virtual {p0}, Landroid/hidl/manager/V1_0/IServiceManager$Stub;->setHALInstrumentation()V

    .line 1147
    goto/16 :goto_2b4

    .line 1100
    .end local v2  # "_hidl_is_oneway":Z
    :sswitch_9e
    and-int/lit8 v4, p4, 0x1

    if-eqz v4, :cond_a3

    goto :goto_a4

    :cond_a3
    move v3, v2

    .line 1101
    .restart local v3  # "_hidl_is_oneway":Z
    :goto_a4
    if-eqz v3, :cond_ae

    .line 1102
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1103
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1104
    goto/16 :goto_2b4

    .line 1105
    :cond_ae
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1107
    invoke-virtual {p0}, Landroid/hidl/manager/V1_0/IServiceManager$Stub;->getHashChain()Ljava/util/ArrayList;

    move-result-object v0

    .line 1108
    .local v0, "_hidl_out_hashchain":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1110
    new-instance v1, Landroid/os/HwBlob;

    const/16 v4, 0x10

    invoke-direct {v1, v4}, Landroid/os/HwBlob;-><init>(I)V

    .line 1112
    .local v1, "_hidl_blob":Landroid/os/HwBlob;
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 1113
    .local v4, "_hidl_vec_size":I
    const-wide/16 v5, 0x8

    invoke-virtual {v1, v5, v6, v4}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 1114
    const-wide/16 v5, 0xc

    invoke-virtual {v1, v5, v6, v2}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 1115
    new-instance v2, Landroid/os/HwBlob;

    mul-int/lit8 v5, v4, 0x20

    invoke-direct {v2, v5}, Landroid/os/HwBlob;-><init>(I)V

    .line 1116
    .local v2, "childBlob":Landroid/os/HwBlob;
    const/4 v5, 0x0

    .local v5, "_hidl_index_0":I
    :goto_d5
    if-ge v5, v4, :cond_f6

    .line 1118
    mul-int/lit8 v6, v5, 0x20

    int-to-long v6, v6

    .line 1119
    .local v6, "_hidl_array_offset_1":J
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [B

    .line 1121
    .local v8, "_hidl_array_item_1":[B
    if-eqz v8, :cond_ee

    array-length v9, v8

    const/16 v10, 0x20

    if-ne v9, v10, :cond_ee

    .line 1125
    invoke-virtual {v2, v6, v7, v8}, Landroid/os/HwBlob;->putInt8Array(J[B)V

    .line 1126
    nop

    .line 1116
    .end local v6  # "_hidl_array_offset_1":J
    .end local v8  # "_hidl_array_item_1":[B
    add-int/lit8 v5, v5, 0x1

    goto :goto_d5

    .line 1122
    .restart local v6  # "_hidl_array_offset_1":J
    .restart local v8  # "_hidl_array_item_1":[B
    :cond_ee
    new-instance v9, Ljava/lang/IllegalArgumentException;

    const-string v10, "Array element is not of the expected length"

    invoke-direct {v9, v10}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 1129
    .end local v5  # "_hidl_index_0":I
    .end local v6  # "_hidl_array_offset_1":J
    .end local v8  # "_hidl_array_item_1":[B
    :cond_f6
    const-wide/16 v5, 0x0

    invoke-virtual {v1, v5, v6, v2}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    .line 1131
    .end local v2  # "childBlob":Landroid/os/HwBlob;
    .end local v4  # "_hidl_vec_size":I
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    .line 1133
    .end local v1  # "_hidl_blob":Landroid/os/HwBlob;
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1134
    goto/16 :goto_2b4

    .line 1084
    .end local v0  # "_hidl_out_hashchain":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    .end local v3  # "_hidl_is_oneway":Z
    :sswitch_103
    and-int/lit8 v4, p4, 0x1

    if-eqz v4, :cond_108

    goto :goto_109

    :cond_108
    move v3, v2

    .line 1085
    .restart local v3  # "_hidl_is_oneway":Z
    :goto_109
    if-eqz v3, :cond_113

    .line 1086
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1087
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1088
    goto/16 :goto_2b4

    .line 1089
    :cond_113
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1091
    invoke-virtual {p0}, Landroid/hidl/manager/V1_0/IServiceManager$Stub;->interfaceDescriptor()Ljava/lang/String;

    move-result-object v0

    .line 1092
    .local v0, "_hidl_out_descriptor":Ljava/lang/String;
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1093
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 1094
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1095
    goto/16 :goto_2b4

    .line 1067
    .end local v0  # "_hidl_out_descriptor":Ljava/lang/String;
    .end local v3  # "_hidl_is_oneway":Z
    :sswitch_125
    and-int/lit8 v4, p4, 0x1

    if-eqz v4, :cond_12a

    goto :goto_12b

    :cond_12a
    move v3, v2

    .line 1068
    .restart local v3  # "_hidl_is_oneway":Z
    :goto_12b
    if-eqz v3, :cond_135

    .line 1069
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1070
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1071
    goto/16 :goto_2b4

    .line 1072
    :cond_135
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1074
    invoke-virtual {p2}, Landroid/os/HwParcel;->readNativeHandle()Landroid/os/NativeHandle;

    move-result-object v0

    .line 1075
    .local v0, "fd":Landroid/os/NativeHandle;
    invoke-virtual {p2}, Landroid/os/HwParcel;->readStringVector()Ljava/util/ArrayList;

    move-result-object v1

    .line 1076
    .local v1, "options":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {p0, v0, v1}, Landroid/hidl/manager/V1_0/IServiceManager$Stub;->debug(Landroid/os/NativeHandle;Ljava/util/ArrayList;)V

    .line 1077
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1078
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1079
    goto/16 :goto_2b4

    .line 1051
    .end local v0  # "fd":Landroid/os/NativeHandle;
    .end local v1  # "options":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v3  # "_hidl_is_oneway":Z
    :sswitch_14b
    and-int/lit8 v4, p4, 0x1

    if-eqz v4, :cond_150

    goto :goto_151

    :cond_150
    move v3, v2

    .line 1052
    .restart local v3  # "_hidl_is_oneway":Z
    :goto_151
    if-eqz v3, :cond_15b

    .line 1053
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1054
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1055
    goto/16 :goto_2b4

    .line 1056
    :cond_15b
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1058
    invoke-virtual {p0}, Landroid/hidl/manager/V1_0/IServiceManager$Stub;->interfaceChain()Ljava/util/ArrayList;

    move-result-object v0

    .line 1059
    .local v0, "_hidl_out_descriptors":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1060
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStringVector(Ljava/util/ArrayList;)V

    .line 1061
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1062
    goto/16 :goto_2b4

    .line 1034
    .end local v0  # "_hidl_out_descriptors":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v3  # "_hidl_is_oneway":Z
    :pswitch_16d  #0x8
    and-int/lit8 v4, p4, 0x1

    if-eqz v4, :cond_172

    goto :goto_173

    :cond_172
    move v3, v2

    .line 1035
    .restart local v3  # "_hidl_is_oneway":Z
    :goto_173
    if-eqz v3, :cond_17d

    .line 1036
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1037
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1038
    goto/16 :goto_2b4

    .line 1039
    :cond_17d
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1041
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 1042
    .local v0, "fqName":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1043
    .local v1, "name":Ljava/lang/String;
    invoke-virtual {p0, v0, v1}, Landroid/hidl/manager/V1_0/IServiceManager$Stub;->registerPassthroughClient(Ljava/lang/String;Ljava/lang/String;)V

    .line 1044
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1045
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1046
    goto/16 :goto_2b4

    .line 1018
    .end local v0  # "fqName":Ljava/lang/String;
    .end local v1  # "name":Ljava/lang/String;
    .end local v3  # "_hidl_is_oneway":Z
    :pswitch_193  #0x7
    and-int/lit8 v4, p4, 0x1

    if-eqz v4, :cond_198

    goto :goto_199

    :cond_198
    move v3, v2

    .line 1019
    .restart local v3  # "_hidl_is_oneway":Z
    :goto_199
    if-eqz v3, :cond_1a3

    .line 1020
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1021
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1022
    goto/16 :goto_2b4

    .line 1023
    :cond_1a3
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1025
    invoke-virtual {p0}, Landroid/hidl/manager/V1_0/IServiceManager$Stub;->debugDump()Ljava/util/ArrayList;

    move-result-object v0

    .line 1026
    .local v0, "_hidl_out_info":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hidl/manager/V1_0/IServiceManager$InstanceDebugInfo;>;"
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1027
    invoke-static {p3, v0}, Landroid/hidl/manager/V1_0/IServiceManager$InstanceDebugInfo;->writeVectorToParcel(Landroid/os/HwParcel;Ljava/util/ArrayList;)V

    .line 1028
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1029
    goto/16 :goto_2b4

    .line 999
    .end local v0  # "_hidl_out_info":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hidl/manager/V1_0/IServiceManager$InstanceDebugInfo;>;"
    .end local v3  # "_hidl_is_oneway":Z
    :pswitch_1b5  #0x6
    and-int/lit8 v4, p4, 0x1

    if-eqz v4, :cond_1ba

    goto :goto_1bb

    :cond_1ba
    move v3, v2

    .line 1000
    .restart local v3  # "_hidl_is_oneway":Z
    :goto_1bb
    if-eqz v3, :cond_1c5

    .line 1001
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1002
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1003
    goto/16 :goto_2b4

    .line 1004
    :cond_1c5
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1006
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 1007
    .local v0, "fqName":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1008
    .restart local v1  # "name":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/HwParcel;->readStrongBinder()Landroid/os/IHwBinder;

    move-result-object v4

    invoke-static {v4}, Landroid/hidl/manager/V1_0/IServiceNotification;->asInterface(Landroid/os/IHwBinder;)Landroid/hidl/manager/V1_0/IServiceNotification;

    move-result-object v4

    .line 1009
    .local v4, "callback":Landroid/hidl/manager/V1_0/IServiceNotification;
    invoke-virtual {p0, v0, v1, v4}, Landroid/hidl/manager/V1_0/IServiceManager$Stub;->registerForNotifications(Ljava/lang/String;Ljava/lang/String;Landroid/hidl/manager/V1_0/IServiceNotification;)Z

    move-result v5

    .line 1010
    .local v5, "_hidl_out_success":Z
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1011
    invoke-virtual {p3, v5}, Landroid/os/HwParcel;->writeBool(Z)V

    .line 1012
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1013
    goto/16 :goto_2b4

    .line 982
    .end local v0  # "fqName":Ljava/lang/String;
    .end local v1  # "name":Ljava/lang/String;
    .end local v3  # "_hidl_is_oneway":Z
    .end local v4  # "callback":Landroid/hidl/manager/V1_0/IServiceNotification;
    .end local v5  # "_hidl_out_success":Z
    :pswitch_1e7  #0x5
    and-int/lit8 v4, p4, 0x1

    if-eqz v4, :cond_1ec

    goto :goto_1ed

    :cond_1ec
    move v3, v2

    .line 983
    .restart local v3  # "_hidl_is_oneway":Z
    :goto_1ed
    if-eqz v3, :cond_1f7

    .line 984
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 985
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 986
    goto/16 :goto_2b4

    .line 987
    :cond_1f7
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 989
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 990
    .restart local v0  # "fqName":Ljava/lang/String;
    invoke-virtual {p0, v0}, Landroid/hidl/manager/V1_0/IServiceManager$Stub;->listByInterface(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    .line 991
    .local v1, "_hidl_out_instanceNames":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 992
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStringVector(Ljava/util/ArrayList;)V

    .line 993
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 994
    goto/16 :goto_2b4

    .line 966
    .end local v0  # "fqName":Ljava/lang/String;
    .end local v1  # "_hidl_out_instanceNames":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v3  # "_hidl_is_oneway":Z
    :pswitch_20d  #0x4
    and-int/lit8 v4, p4, 0x1

    if-eqz v4, :cond_212

    goto :goto_213

    :cond_212
    move v3, v2

    .line 967
    .restart local v3  # "_hidl_is_oneway":Z
    :goto_213
    if-eqz v3, :cond_21d

    .line 968
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 969
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 970
    goto/16 :goto_2b4

    .line 971
    :cond_21d
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 973
    invoke-virtual {p0}, Landroid/hidl/manager/V1_0/IServiceManager$Stub;->list()Ljava/util/ArrayList;

    move-result-object v0

    .line 974
    .local v0, "_hidl_out_fqInstanceNames":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 975
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStringVector(Ljava/util/ArrayList;)V

    .line 976
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 977
    goto/16 :goto_2b4

    .line 948
    .end local v0  # "_hidl_out_fqInstanceNames":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v3  # "_hidl_is_oneway":Z
    :pswitch_22f  #0x3
    and-int/lit8 v4, p4, 0x1

    if-eqz v4, :cond_234

    goto :goto_235

    :cond_234
    move v3, v2

    .line 949
    .restart local v3  # "_hidl_is_oneway":Z
    :goto_235
    if-eqz v3, :cond_23f

    .line 950
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 951
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 952
    goto/16 :goto_2b4

    .line 953
    :cond_23f
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 955
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 956
    .local v0, "fqName":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 957
    .local v1, "name":Ljava/lang/String;
    invoke-virtual {p0, v0, v1}, Landroid/hidl/manager/V1_0/IServiceManager$Stub;->getTransport(Ljava/lang/String;Ljava/lang/String;)B

    move-result v4

    .line 958
    .local v4, "_hidl_out_transport":B
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 959
    invoke-virtual {p3, v4}, Landroid/os/HwParcel;->writeInt8(B)V

    .line 960
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 961
    goto :goto_2b4

    .line 930
    .end local v0  # "fqName":Ljava/lang/String;
    .end local v1  # "name":Ljava/lang/String;
    .end local v3  # "_hidl_is_oneway":Z
    .end local v4  # "_hidl_out_transport":B
    :pswitch_258  #0x2
    and-int/lit8 v4, p4, 0x1

    if-eqz v4, :cond_25d

    goto :goto_25e

    :cond_25d
    move v3, v2

    .line 931
    .restart local v3  # "_hidl_is_oneway":Z
    :goto_25e
    if-eqz v3, :cond_267

    .line 932
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 933
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 934
    goto :goto_2b4

    .line 935
    :cond_267
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 937
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 938
    .local v0, "name":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/HwParcel;->readStrongBinder()Landroid/os/IHwBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/hidl/base/V1_0/IBase;->asInterface(Landroid/os/IHwBinder;)Landroid/hidl/base/V1_0/IBase;

    move-result-object v1

    .line 939
    .local v1, "service":Landroid/hidl/base/V1_0/IBase;
    invoke-virtual {p0, v0, v1}, Landroid/hidl/manager/V1_0/IServiceManager$Stub;->add(Ljava/lang/String;Landroid/hidl/base/V1_0/IBase;)Z

    move-result v4

    .line 940
    .local v4, "_hidl_out_success":Z
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 941
    invoke-virtual {p3, v4}, Landroid/os/HwParcel;->writeBool(Z)V

    .line 942
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 943
    goto :goto_2b4

    .line 912
    .end local v0  # "name":Ljava/lang/String;
    .end local v1  # "service":Landroid/hidl/base/V1_0/IBase;
    .end local v3  # "_hidl_is_oneway":Z
    .end local v4  # "_hidl_out_success":Z
    :pswitch_284  #0x1
    and-int/lit8 v4, p4, 0x1

    if-eqz v4, :cond_289

    goto :goto_28a

    :cond_289
    move v3, v2

    .line 913
    .restart local v3  # "_hidl_is_oneway":Z
    :goto_28a
    if-eqz v3, :cond_293

    .line 914
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 915
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 916
    goto :goto_2b4

    .line 917
    :cond_293
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 919
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 920
    .local v0, "fqName":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 921
    .local v1, "name":Ljava/lang/String;
    invoke-virtual {p0, v0, v1}, Landroid/hidl/manager/V1_0/IServiceManager$Stub;->get(Ljava/lang/String;Ljava/lang/String;)Landroid/hidl/base/V1_0/IBase;

    move-result-object v4

    .line 922
    .local v4, "_hidl_out_service":Landroid/hidl/base/V1_0/IBase;
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 923
    if-nez v4, :cond_2a9

    const/4 v2, 0x0

    goto :goto_2ad

    :cond_2a9
    invoke-interface {v4}, Landroid/hidl/base/V1_0/IBase;->asBinder()Landroid/os/IHwBinder;

    move-result-object v2

    :goto_2ad
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeStrongBinder(Landroid/os/IHwBinder;)V

    .line 924
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 925
    nop

    .line 1215
    .end local v0  # "fqName":Ljava/lang/String;
    .end local v1  # "name":Ljava/lang/String;
    .end local v3  # "_hidl_is_oneway":Z
    .end local v4  # "_hidl_out_service":Landroid/hidl/base/V1_0/IBase;
    :cond_2b4
    :goto_2b4
    return-void

    nop

    :pswitch_data_2b6
    .packed-switch 0x1
        :pswitch_284  #00000001
        :pswitch_258  #00000002
        :pswitch_22f  #00000003
        :pswitch_20d  #00000004
        :pswitch_1e7  #00000005
        :pswitch_1b5  #00000006
        :pswitch_193  #00000007
        :pswitch_16d  #00000008
    .end packed-switch

    :sswitch_data_2ca
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

    .line 863
    return-void
.end method

.method public queryLocalInterface(Ljava/lang/String;)Landroid/os/IHwInterface;
    .registers 3
    .param p1, "descriptor"  # Ljava/lang/String;

    .line 891
    const-string v0, "android.hidl.manager@1.0::IServiceManager"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 892
    return-object p0

    .line 894
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

    .line 898
    invoke-virtual {p0, p1}, Landroid/hidl/manager/V1_0/IServiceManager$Stub;->registerService(Ljava/lang/String;)V

    .line 899
    return-void
.end method

.method public final setHALInstrumentation()V
    .registers 1

    .line 853
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 903
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/hidl/manager/V1_0/IServiceManager$Stub;->interfaceDescriptor()Ljava/lang/String;

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

    .line 885
    const/4 v0, 0x1

    return v0
.end method
