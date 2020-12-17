.class public abstract Landroid/hidl/manager/V1_2/IServiceManager$Stub;
.super Landroid/os/HwBinder;
.source "IServiceManager.java"

# interfaces
.implements Landroid/hidl/manager/V1_2/IServiceManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hidl/manager/V1_2/IServiceManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 679
    invoke-direct {p0}, Landroid/os/HwBinder;-><init>()V

    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IHwBinder;
    .registers 1

    .line 682
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

    .line 697
    .local p2, "options":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    return-void
.end method

.method public final getDebugInfo()Landroid/hidl/base/V1_0/DebugInfo;
    .registers 4

    .line 736
    new-instance v0, Landroid/hidl/base/V1_0/DebugInfo;

    invoke-direct {v0}, Landroid/hidl/base/V1_0/DebugInfo;-><init>()V

    .line 737
    .local v0, "info":Landroid/hidl/base/V1_0/DebugInfo;
    invoke-static {}, Landroid/os/HidlSupport;->getPidIfSharable()I

    move-result v1

    iput v1, v0, Landroid/hidl/base/V1_0/DebugInfo;->pid:I

    .line 738
    const-wide/16 v1, 0x0

    iput-wide v1, v0, Landroid/hidl/base/V1_0/DebugInfo;->ptr:J

    .line 739
    const/4 v1, 0x0

    iput v1, v0, Landroid/hidl/base/V1_0/DebugInfo;->arch:I

    .line 740
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

    .line 709
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x4

    new-array v1, v1, [[B

    const/16 v2, 0x20

    new-array v3, v2, [B

    fill-array-data v3, :array_30

    const/4 v4, 0x0

    aput-object v3, v1, v4

    new-array v3, v2, [B

    fill-array-data v3, :array_44

    const/4 v4, 0x1

    aput-object v3, v1, v4

    new-array v3, v2, [B

    fill-array-data v3, :array_58

    const/4 v4, 0x2

    aput-object v3, v1, v4

    new-array v2, v2, [B

    fill-array-data v2, :array_6c

    const/4 v3, 0x3

    aput-object v2, v1, v3

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0

    nop

    :array_30
    .array-data 1
        0x6ft
        0x3at
        -0x76t
        0x3ft
        -0x2ct
        -0x41t
        -0x43t
        0x2t
        -0x1ct
        -0x1at
        0x1ct
        0x73t
        0x2dt
        0x2dt
        -0xat
        0x16t
        -0x1t
        0x69t
        0x43t
        0x4at
        0x1et
        -0x28t
        0x3ct
        -0x26t
        0x33t
        0x73t
        0x3t
        -0x53t
        -0x3at
        -0x29t
        0x14t
        -0x21t
    .end array-data

    :array_44
    .array-data 1
        0xbt
        -0x6ct
        -0x24t
        -0x79t
        0x6ft
        0x74t
        -0x62t
        -0x2et
        0x4at
        -0x68t
        -0xat
        0x1ct
        0x41t
        -0x2ct
        0x6at
        -0x29t
        0x5at
        0x27t
        0x51t
        0x11t
        0x63t
        -0xft
        -0x6at
        -0x76t
        0x8t
        0x42t
        0x13t
        -0x5dt
        0x3ct
        0x68t
        0x4et
        -0xat
    .end array-data

    :array_58
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

    :array_6c
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
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 687
    new-instance v0, Ljava/util/ArrayList;

    const-string v1, "android.hidl.manager@1.2::IServiceManager"

    const-string v2, "android.hidl.manager@1.1::IServiceManager"

    const-string v3, "android.hidl.manager@1.0::IServiceManager"

    const-string v4, "android.hidl.base@1.0::IBase"

    filled-new-array {v1, v2, v3, v4}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public final interfaceDescriptor()Ljava/lang/String;
    .registers 2

    .line 703
    const-string v0, "android.hidl.manager@1.2::IServiceManager"

    return-object v0
.end method

.method public final linkToDeath(Landroid/os/IHwBinder$DeathRecipient;J)Z
    .registers 5
    .param p1, "recipient"  # Landroid/os/IHwBinder$DeathRecipient;
    .param p2, "cookie"  # J

    .line 724
    const/4 v0, 0x1

    return v0
.end method

.method public final notifySyspropsChanged()V
    .registers 1

    .line 746
    invoke-static {}, Landroid/os/HwBinder;->enableInstrumentation()V

    .line 748
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

    .line 776
    const-string v0, "android.hidl.manager@1.2::IServiceManager"

    const-string v1, "android.hidl.manager@1.0::IServiceManager"

    const/high16 v2, -0x80000000

    const/4 v3, 0x0

    const/4 v4, 0x1

    packed-switch p1, :pswitch_data_3f8

    const-string v0, "android.hidl.base@1.0::IBase"

    sparse-switch p1, :sswitch_data_418

    goto/16 :goto_3f6

    .line 1185
    :sswitch_12
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_17

    move v3, v4

    :cond_17
    move v0, v3

    .line 1186
    .local v0, "_hidl_is_oneway":Z
    if-eqz v0, :cond_3f6

    .line 1187
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1188
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1189
    goto/16 :goto_3f6

    .line 1172
    .end local v0  # "_hidl_is_oneway":Z
    :sswitch_22
    and-int/lit8 v1, p4, 0x1

    if-eqz v1, :cond_27

    move v3, v4

    :cond_27
    move v1, v3

    .line 1173
    .local v1, "_hidl_is_oneway":Z
    if-eq v1, v4, :cond_32

    .line 1174
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1175
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1176
    goto/16 :goto_3f6

    .line 1177
    :cond_32
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1179
    invoke-virtual {p0}, Landroid/hidl/manager/V1_2/IServiceManager$Stub;->notifySyspropsChanged()V

    .line 1180
    goto/16 :goto_3f6

    .line 1156
    .end local v1  # "_hidl_is_oneway":Z
    :sswitch_3a
    and-int/lit8 v1, p4, 0x1

    if-eqz v1, :cond_3f

    goto :goto_40

    :cond_3f
    move v4, v3

    :goto_40
    move v1, v4

    .line 1157
    .restart local v1  # "_hidl_is_oneway":Z
    if-eqz v1, :cond_4b

    .line 1158
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1159
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1160
    goto/16 :goto_3f6

    .line 1161
    :cond_4b
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1163
    invoke-virtual {p0}, Landroid/hidl/manager/V1_2/IServiceManager$Stub;->getDebugInfo()Landroid/hidl/base/V1_0/DebugInfo;

    move-result-object v0

    .line 1164
    .local v0, "_hidl_out_info":Landroid/hidl/base/V1_0/DebugInfo;
    invoke-virtual {p3, v3}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1165
    invoke-virtual {v0, p3}, Landroid/hidl/base/V1_0/DebugInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 1166
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1167
    goto/16 :goto_3f6

    .line 1141
    .end local v0  # "_hidl_out_info":Landroid/hidl/base/V1_0/DebugInfo;
    .end local v1  # "_hidl_is_oneway":Z
    :sswitch_5d
    and-int/lit8 v1, p4, 0x1

    if-eqz v1, :cond_62

    goto :goto_63

    :cond_62
    move v4, v3

    :goto_63
    move v1, v4

    .line 1142
    .restart local v1  # "_hidl_is_oneway":Z
    if-eqz v1, :cond_6e

    .line 1143
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1144
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1145
    goto/16 :goto_3f6

    .line 1146
    :cond_6e
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1148
    invoke-virtual {p0}, Landroid/hidl/manager/V1_2/IServiceManager$Stub;->ping()V

    .line 1149
    invoke-virtual {p3, v3}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1150
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1151
    goto/16 :goto_3f6

    .line 1131
    .end local v1  # "_hidl_is_oneway":Z
    :sswitch_7c
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_81

    move v3, v4

    :cond_81
    move v0, v3

    .line 1132
    .local v0, "_hidl_is_oneway":Z
    if-eqz v0, :cond_3f6

    .line 1133
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1134
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1135
    goto/16 :goto_3f6

    .line 1118
    .end local v0  # "_hidl_is_oneway":Z
    :sswitch_8c
    and-int/lit8 v1, p4, 0x1

    if-eqz v1, :cond_91

    move v3, v4

    :cond_91
    move v1, v3

    .line 1119
    .restart local v1  # "_hidl_is_oneway":Z
    if-eq v1, v4, :cond_9c

    .line 1120
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1121
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1122
    goto/16 :goto_3f6

    .line 1123
    :cond_9c
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1125
    invoke-virtual {p0}, Landroid/hidl/manager/V1_2/IServiceManager$Stub;->setHALInstrumentation()V

    .line 1126
    goto/16 :goto_3f6

    .line 1079
    .end local v1  # "_hidl_is_oneway":Z
    :sswitch_a4
    and-int/lit8 v1, p4, 0x1

    if-eqz v1, :cond_a9

    goto :goto_aa

    :cond_a9
    move v4, v3

    :goto_aa
    move v1, v4

    .line 1080
    .restart local v1  # "_hidl_is_oneway":Z
    if-eqz v1, :cond_b5

    .line 1081
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1082
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1083
    goto/16 :goto_3f6

    .line 1084
    :cond_b5
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1086
    invoke-virtual {p0}, Landroid/hidl/manager/V1_2/IServiceManager$Stub;->getHashChain()Ljava/util/ArrayList;

    move-result-object v0

    .line 1087
    .local v0, "_hidl_out_hashchain":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    invoke-virtual {p3, v3}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1089
    new-instance v2, Landroid/os/HwBlob;

    const/16 v4, 0x10

    invoke-direct {v2, v4}, Landroid/os/HwBlob;-><init>(I)V

    .line 1091
    .local v2, "_hidl_blob":Landroid/os/HwBlob;
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 1092
    .local v4, "_hidl_vec_size":I
    const-wide/16 v5, 0x8

    invoke-virtual {v2, v5, v6, v4}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 1093
    const-wide/16 v5, 0xc

    invoke-virtual {v2, v5, v6, v3}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 1094
    new-instance v3, Landroid/os/HwBlob;

    mul-int/lit8 v5, v4, 0x20

    invoke-direct {v3, v5}, Landroid/os/HwBlob;-><init>(I)V

    .line 1095
    .local v3, "childBlob":Landroid/os/HwBlob;
    const/4 v5, 0x0

    .local v5, "_hidl_index_0":I
    :goto_dc
    if-ge v5, v4, :cond_fd

    .line 1097
    mul-int/lit8 v6, v5, 0x20

    int-to-long v6, v6

    .line 1098
    .local v6, "_hidl_array_offset_1":J
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [B

    .line 1100
    .local v8, "_hidl_array_item_1":[B
    if-eqz v8, :cond_f5

    array-length v9, v8

    const/16 v10, 0x20

    if-ne v9, v10, :cond_f5

    .line 1104
    invoke-virtual {v3, v6, v7, v8}, Landroid/os/HwBlob;->putInt8Array(J[B)V

    .line 1105
    nop

    .line 1095
    .end local v6  # "_hidl_array_offset_1":J
    .end local v8  # "_hidl_array_item_1":[B
    add-int/lit8 v5, v5, 0x1

    goto :goto_dc

    .line 1101
    .restart local v6  # "_hidl_array_offset_1":J
    .restart local v8  # "_hidl_array_item_1":[B
    :cond_f5
    new-instance v9, Ljava/lang/IllegalArgumentException;

    const-string v10, "Array element is not of the expected length"

    invoke-direct {v9, v10}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 1108
    .end local v5  # "_hidl_index_0":I
    .end local v6  # "_hidl_array_offset_1":J
    .end local v8  # "_hidl_array_item_1":[B
    :cond_fd
    const-wide/16 v5, 0x0

    invoke-virtual {v2, v5, v6, v3}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    .line 1110
    .end local v3  # "childBlob":Landroid/os/HwBlob;
    .end local v4  # "_hidl_vec_size":I
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    .line 1112
    .end local v2  # "_hidl_blob":Landroid/os/HwBlob;
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1113
    goto/16 :goto_3f6

    .line 1063
    .end local v0  # "_hidl_out_hashchain":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    .end local v1  # "_hidl_is_oneway":Z
    :sswitch_10a
    and-int/lit8 v1, p4, 0x1

    if-eqz v1, :cond_10f

    goto :goto_110

    :cond_10f
    move v4, v3

    :goto_110
    move v1, v4

    .line 1064
    .restart local v1  # "_hidl_is_oneway":Z
    if-eqz v1, :cond_11b

    .line 1065
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1066
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1067
    goto/16 :goto_3f6

    .line 1068
    :cond_11b
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1070
    invoke-virtual {p0}, Landroid/hidl/manager/V1_2/IServiceManager$Stub;->interfaceDescriptor()Ljava/lang/String;

    move-result-object v0

    .line 1071
    .local v0, "_hidl_out_descriptor":Ljava/lang/String;
    invoke-virtual {p3, v3}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1072
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 1073
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1074
    goto/16 :goto_3f6

    .line 1046
    .end local v0  # "_hidl_out_descriptor":Ljava/lang/String;
    .end local v1  # "_hidl_is_oneway":Z
    :sswitch_12d
    and-int/lit8 v1, p4, 0x1

    if-eqz v1, :cond_132

    goto :goto_133

    :cond_132
    move v4, v3

    :goto_133
    move v1, v4

    .line 1047
    .restart local v1  # "_hidl_is_oneway":Z
    if-eqz v1, :cond_13e

    .line 1048
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1049
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1050
    goto/16 :goto_3f6

    .line 1051
    :cond_13e
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1053
    invoke-virtual {p2}, Landroid/os/HwParcel;->readNativeHandle()Landroid/os/NativeHandle;

    move-result-object v0

    .line 1054
    .local v0, "fd":Landroid/os/NativeHandle;
    invoke-virtual {p2}, Landroid/os/HwParcel;->readStringVector()Ljava/util/ArrayList;

    move-result-object v2

    .line 1055
    .local v2, "options":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {p0, v0, v2}, Landroid/hidl/manager/V1_2/IServiceManager$Stub;->debug(Landroid/os/NativeHandle;Ljava/util/ArrayList;)V

    .line 1056
    invoke-virtual {p3, v3}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1057
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1058
    goto/16 :goto_3f6

    .line 1030
    .end local v0  # "fd":Landroid/os/NativeHandle;
    .end local v1  # "_hidl_is_oneway":Z
    .end local v2  # "options":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :sswitch_154
    and-int/lit8 v1, p4, 0x1

    if-eqz v1, :cond_159

    goto :goto_15a

    :cond_159
    move v4, v3

    :goto_15a
    move v1, v4

    .line 1031
    .restart local v1  # "_hidl_is_oneway":Z
    if-eqz v1, :cond_165

    .line 1032
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1033
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1034
    goto/16 :goto_3f6

    .line 1035
    :cond_165
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1037
    invoke-virtual {p0}, Landroid/hidl/manager/V1_2/IServiceManager$Stub;->interfaceChain()Ljava/util/ArrayList;

    move-result-object v0

    .line 1038
    .local v0, "_hidl_out_descriptors":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {p3, v3}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1039
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStringVector(Ljava/util/ArrayList;)V

    .line 1040
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1041
    goto/16 :goto_3f6

    .line 1011
    .end local v0  # "_hidl_out_descriptors":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v1  # "_hidl_is_oneway":Z
    :pswitch_177  #0xe
    and-int/lit8 v1, p4, 0x1

    if-eqz v1, :cond_17c

    goto :goto_17d

    :cond_17c
    move v4, v3

    :goto_17d
    move v1, v4

    .line 1012
    .restart local v1  # "_hidl_is_oneway":Z
    if-eqz v1, :cond_188

    .line 1013
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1014
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1015
    goto/16 :goto_3f6

    .line 1016
    :cond_188
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1018
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 1019
    .local v0, "fqName":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 1020
    .local v2, "name":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/HwParcel;->readStrongBinder()Landroid/os/IHwBinder;

    move-result-object v4

    invoke-static {v4}, Landroid/hidl/base/V1_0/IBase;->asInterface(Landroid/os/IHwBinder;)Landroid/hidl/base/V1_0/IBase;

    move-result-object v4

    .line 1021
    .local v4, "service":Landroid/hidl/base/V1_0/IBase;
    invoke-virtual {p0, v0, v2, v4}, Landroid/hidl/manager/V1_2/IServiceManager$Stub;->tryUnregister(Ljava/lang/String;Ljava/lang/String;Landroid/hidl/base/V1_0/IBase;)Z

    move-result v5

    .line 1022
    .local v5, "_hidl_out_success":Z
    invoke-virtual {p3, v3}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1023
    invoke-virtual {p3, v5}, Landroid/os/HwParcel;->writeBool(Z)V

    .line 1024
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1025
    goto/16 :goto_3f6

    .line 994
    .end local v0  # "fqName":Ljava/lang/String;
    .end local v1  # "_hidl_is_oneway":Z
    .end local v2  # "name":Ljava/lang/String;
    .end local v4  # "service":Landroid/hidl/base/V1_0/IBase;
    .end local v5  # "_hidl_out_success":Z
    :pswitch_1aa  #0xd
    and-int/lit8 v1, p4, 0x1

    if-eqz v1, :cond_1af

    goto :goto_1b0

    :cond_1af
    move v4, v3

    :goto_1b0
    move v1, v4

    .line 995
    .restart local v1  # "_hidl_is_oneway":Z
    if-eqz v1, :cond_1bb

    .line 996
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 997
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 998
    goto/16 :goto_3f6

    .line 999
    :cond_1bb
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1001
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 1002
    .restart local v0  # "fqName":Ljava/lang/String;
    invoke-virtual {p0, v0}, Landroid/hidl/manager/V1_2/IServiceManager$Stub;->listManifestByInterface(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    .line 1003
    .local v2, "_hidl_out_instanceNames":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {p3, v3}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1004
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeStringVector(Ljava/util/ArrayList;)V

    .line 1005
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1006
    goto/16 :goto_3f6

    .line 975
    .end local v0  # "fqName":Ljava/lang/String;
    .end local v1  # "_hidl_is_oneway":Z
    .end local v2  # "_hidl_out_instanceNames":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :pswitch_1d1  #0xc
    and-int/lit8 v1, p4, 0x1

    if-eqz v1, :cond_1d6

    goto :goto_1d7

    :cond_1d6
    move v4, v3

    :goto_1d7
    move v1, v4

    .line 976
    .restart local v1  # "_hidl_is_oneway":Z
    if-eqz v1, :cond_1e2

    .line 977
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 978
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 979
    goto/16 :goto_3f6

    .line 980
    :cond_1e2
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 982
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 983
    .local v0, "name":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/HwParcel;->readStrongBinder()Landroid/os/IHwBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/hidl/base/V1_0/IBase;->asInterface(Landroid/os/IHwBinder;)Landroid/hidl/base/V1_0/IBase;

    move-result-object v2

    .line 984
    .local v2, "service":Landroid/hidl/base/V1_0/IBase;
    invoke-virtual {p2}, Landroid/os/HwParcel;->readStringVector()Ljava/util/ArrayList;

    move-result-object v4

    .line 985
    .local v4, "chain":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {p0, v0, v2, v4}, Landroid/hidl/manager/V1_2/IServiceManager$Stub;->addWithChain(Ljava/lang/String;Landroid/hidl/base/V1_0/IBase;Ljava/util/ArrayList;)Z

    move-result v5

    .line 986
    .restart local v5  # "_hidl_out_success":Z
    invoke-virtual {p3, v3}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 987
    invoke-virtual {p3, v5}, Landroid/os/HwParcel;->writeBool(Z)V

    .line 988
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 989
    goto/16 :goto_3f6

    .line 957
    .end local v0  # "name":Ljava/lang/String;
    .end local v1  # "_hidl_is_oneway":Z
    .end local v2  # "service":Landroid/hidl/base/V1_0/IBase;
    .end local v4  # "chain":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v5  # "_hidl_out_success":Z
    :pswitch_204  #0xb
    and-int/lit8 v1, p4, 0x1

    if-eqz v1, :cond_209

    goto :goto_20a

    :cond_209
    move v4, v3

    :goto_20a
    move v1, v4

    .line 958
    .restart local v1  # "_hidl_is_oneway":Z
    if-eqz v1, :cond_215

    .line 959
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 960
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 961
    goto/16 :goto_3f6

    .line 962
    :cond_215
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 964
    invoke-virtual {p2}, Landroid/os/HwParcel;->readStrongBinder()Landroid/os/IHwBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/hidl/base/V1_0/IBase;->asInterface(Landroid/os/IHwBinder;)Landroid/hidl/base/V1_0/IBase;

    move-result-object v0

    .line 965
    .local v0, "server":Landroid/hidl/base/V1_0/IBase;
    invoke-virtual {p2}, Landroid/os/HwParcel;->readStrongBinder()Landroid/os/IHwBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/hidl/manager/V1_2/IClientCallback;->asInterface(Landroid/os/IHwBinder;)Landroid/hidl/manager/V1_2/IClientCallback;

    move-result-object v2

    .line 966
    .local v2, "cb":Landroid/hidl/manager/V1_2/IClientCallback;
    invoke-virtual {p0, v0, v2}, Landroid/hidl/manager/V1_2/IServiceManager$Stub;->unregisterClientCallback(Landroid/hidl/base/V1_0/IBase;Landroid/hidl/manager/V1_2/IClientCallback;)Z

    move-result v4

    .line 967
    .local v4, "_hidl_out_success":Z
    invoke-virtual {p3, v3}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 968
    invoke-virtual {p3, v4}, Landroid/os/HwParcel;->writeBool(Z)V

    .line 969
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 970
    goto/16 :goto_3f6

    .line 937
    .end local v0  # "server":Landroid/hidl/base/V1_0/IBase;
    .end local v1  # "_hidl_is_oneway":Z
    .end local v2  # "cb":Landroid/hidl/manager/V1_2/IClientCallback;
    .end local v4  # "_hidl_out_success":Z
    :pswitch_237  #0xa
    and-int/lit8 v1, p4, 0x1

    if-eqz v1, :cond_23c

    goto :goto_23d

    :cond_23c
    move v4, v3

    :goto_23d
    move v1, v4

    .line 938
    .restart local v1  # "_hidl_is_oneway":Z
    if-eqz v1, :cond_248

    .line 939
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 940
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 941
    goto/16 :goto_3f6

    .line 942
    :cond_248
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 944
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 945
    .local v0, "fqName":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 946
    .local v2, "name":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/HwParcel;->readStrongBinder()Landroid/os/IHwBinder;

    move-result-object v4

    invoke-static {v4}, Landroid/hidl/base/V1_0/IBase;->asInterface(Landroid/os/IHwBinder;)Landroid/hidl/base/V1_0/IBase;

    move-result-object v4

    .line 947
    .local v4, "server":Landroid/hidl/base/V1_0/IBase;
    invoke-virtual {p2}, Landroid/os/HwParcel;->readStrongBinder()Landroid/os/IHwBinder;

    move-result-object v5

    invoke-static {v5}, Landroid/hidl/manager/V1_2/IClientCallback;->asInterface(Landroid/os/IHwBinder;)Landroid/hidl/manager/V1_2/IClientCallback;

    move-result-object v5

    .line 948
    .local v5, "cb":Landroid/hidl/manager/V1_2/IClientCallback;
    invoke-virtual {p0, v0, v2, v4, v5}, Landroid/hidl/manager/V1_2/IServiceManager$Stub;->registerClientCallback(Ljava/lang/String;Ljava/lang/String;Landroid/hidl/base/V1_0/IBase;Landroid/hidl/manager/V1_2/IClientCallback;)Z

    move-result v6

    .line 949
    .local v6, "_hidl_out_success":Z
    invoke-virtual {p3, v3}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 950
    invoke-virtual {p3, v6}, Landroid/os/HwParcel;->writeBool(Z)V

    .line 951
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 952
    goto/16 :goto_3f6

    .line 918
    .end local v0  # "fqName":Ljava/lang/String;
    .end local v1  # "_hidl_is_oneway":Z
    .end local v2  # "name":Ljava/lang/String;
    .end local v4  # "server":Landroid/hidl/base/V1_0/IBase;
    .end local v5  # "cb":Landroid/hidl/manager/V1_2/IClientCallback;
    .end local v6  # "_hidl_out_success":Z
    :pswitch_272  #0x9
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_277

    goto :goto_278

    :cond_277
    move v4, v3

    :goto_278
    move v0, v4

    .line 919
    .local v0, "_hidl_is_oneway":Z
    if-eqz v0, :cond_283

    .line 920
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 921
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 922
    goto/16 :goto_3f6

    .line 923
    :cond_283
    const-string v1, "android.hidl.manager@1.1::IServiceManager"

    invoke-virtual {p2, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 925
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 926
    .local v1, "fqName":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 927
    .restart local v2  # "name":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/HwParcel;->readStrongBinder()Landroid/os/IHwBinder;

    move-result-object v4

    invoke-static {v4}, Landroid/hidl/manager/V1_0/IServiceNotification;->asInterface(Landroid/os/IHwBinder;)Landroid/hidl/manager/V1_0/IServiceNotification;

    move-result-object v4

    .line 928
    .local v4, "callback":Landroid/hidl/manager/V1_0/IServiceNotification;
    invoke-virtual {p0, v1, v2, v4}, Landroid/hidl/manager/V1_2/IServiceManager$Stub;->unregisterForNotifications(Ljava/lang/String;Ljava/lang/String;Landroid/hidl/manager/V1_0/IServiceNotification;)Z

    move-result v5

    .line 929
    .local v5, "_hidl_out_success":Z
    invoke-virtual {p3, v3}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 930
    invoke-virtual {p3, v5}, Landroid/os/HwParcel;->writeBool(Z)V

    .line 931
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 932
    goto/16 :goto_3f6

    .line 901
    .end local v0  # "_hidl_is_oneway":Z
    .end local v1  # "fqName":Ljava/lang/String;
    .end local v2  # "name":Ljava/lang/String;
    .end local v4  # "callback":Landroid/hidl/manager/V1_0/IServiceNotification;
    .end local v5  # "_hidl_out_success":Z
    :pswitch_2a7  #0x8
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_2ac

    goto :goto_2ad

    :cond_2ac
    move v4, v3

    :goto_2ad
    move v0, v4

    .line 902
    .restart local v0  # "_hidl_is_oneway":Z
    if-eqz v0, :cond_2b8

    .line 903
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 904
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 905
    goto/16 :goto_3f6

    .line 906
    :cond_2b8
    invoke-virtual {p2, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 908
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 909
    .restart local v1  # "fqName":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 910
    .restart local v2  # "name":Ljava/lang/String;
    invoke-virtual {p0, v1, v2}, Landroid/hidl/manager/V1_2/IServiceManager$Stub;->registerPassthroughClient(Ljava/lang/String;Ljava/lang/String;)V

    .line 911
    invoke-virtual {p3, v3}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 912
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 913
    goto/16 :goto_3f6

    .line 885
    .end local v0  # "_hidl_is_oneway":Z
    .end local v1  # "fqName":Ljava/lang/String;
    .end local v2  # "name":Ljava/lang/String;
    :pswitch_2ce  #0x7
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_2d3

    goto :goto_2d4

    :cond_2d3
    move v4, v3

    :goto_2d4
    move v0, v4

    .line 886
    .restart local v0  # "_hidl_is_oneway":Z
    if-eqz v0, :cond_2df

    .line 887
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 888
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 889
    goto/16 :goto_3f6

    .line 890
    :cond_2df
    invoke-virtual {p2, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 892
    invoke-virtual {p0}, Landroid/hidl/manager/V1_2/IServiceManager$Stub;->debugDump()Ljava/util/ArrayList;

    move-result-object v1

    .line 893
    .local v1, "_hidl_out_info":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hidl/manager/V1_0/IServiceManager$InstanceDebugInfo;>;"
    invoke-virtual {p3, v3}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 894
    invoke-static {p3, v1}, Landroid/hidl/manager/V1_0/IServiceManager$InstanceDebugInfo;->writeVectorToParcel(Landroid/os/HwParcel;Ljava/util/ArrayList;)V

    .line 895
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 896
    goto/16 :goto_3f6

    .line 866
    .end local v0  # "_hidl_is_oneway":Z
    .end local v1  # "_hidl_out_info":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hidl/manager/V1_0/IServiceManager$InstanceDebugInfo;>;"
    :pswitch_2f1  #0x6
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_2f6

    goto :goto_2f7

    :cond_2f6
    move v4, v3

    :goto_2f7
    move v0, v4

    .line 867
    .restart local v0  # "_hidl_is_oneway":Z
    if-eqz v0, :cond_302

    .line 868
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 869
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 870
    goto/16 :goto_3f6

    .line 871
    :cond_302
    invoke-virtual {p2, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 873
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 874
    .local v1, "fqName":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 875
    .restart local v2  # "name":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/HwParcel;->readStrongBinder()Landroid/os/IHwBinder;

    move-result-object v4

    invoke-static {v4}, Landroid/hidl/manager/V1_0/IServiceNotification;->asInterface(Landroid/os/IHwBinder;)Landroid/hidl/manager/V1_0/IServiceNotification;

    move-result-object v4

    .line 876
    .restart local v4  # "callback":Landroid/hidl/manager/V1_0/IServiceNotification;
    invoke-virtual {p0, v1, v2, v4}, Landroid/hidl/manager/V1_2/IServiceManager$Stub;->registerForNotifications(Ljava/lang/String;Ljava/lang/String;Landroid/hidl/manager/V1_0/IServiceNotification;)Z

    move-result v5

    .line 877
    .restart local v5  # "_hidl_out_success":Z
    invoke-virtual {p3, v3}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 878
    invoke-virtual {p3, v5}, Landroid/os/HwParcel;->writeBool(Z)V

    .line 879
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 880
    goto/16 :goto_3f6

    .line 849
    .end local v0  # "_hidl_is_oneway":Z
    .end local v1  # "fqName":Ljava/lang/String;
    .end local v2  # "name":Ljava/lang/String;
    .end local v4  # "callback":Landroid/hidl/manager/V1_0/IServiceNotification;
    .end local v5  # "_hidl_out_success":Z
    :pswitch_324  #0x5
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_329

    goto :goto_32a

    :cond_329
    move v4, v3

    :goto_32a
    move v0, v4

    .line 850
    .restart local v0  # "_hidl_is_oneway":Z
    if-eqz v0, :cond_335

    .line 851
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 852
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 853
    goto/16 :goto_3f6

    .line 854
    :cond_335
    invoke-virtual {p2, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 856
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 857
    .restart local v1  # "fqName":Ljava/lang/String;
    invoke-virtual {p0, v1}, Landroid/hidl/manager/V1_2/IServiceManager$Stub;->listByInterface(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    .line 858
    .local v2, "_hidl_out_instanceNames":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {p3, v3}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 859
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeStringVector(Ljava/util/ArrayList;)V

    .line 860
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 861
    goto/16 :goto_3f6

    .line 833
    .end local v0  # "_hidl_is_oneway":Z
    .end local v1  # "fqName":Ljava/lang/String;
    .end local v2  # "_hidl_out_instanceNames":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :pswitch_34b  #0x4
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_350

    goto :goto_351

    :cond_350
    move v4, v3

    :goto_351
    move v0, v4

    .line 834
    .restart local v0  # "_hidl_is_oneway":Z
    if-eqz v0, :cond_35c

    .line 835
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 836
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 837
    goto/16 :goto_3f6

    .line 838
    :cond_35c
    invoke-virtual {p2, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 840
    invoke-virtual {p0}, Landroid/hidl/manager/V1_2/IServiceManager$Stub;->list()Ljava/util/ArrayList;

    move-result-object v1

    .line 841
    .local v1, "_hidl_out_fqInstanceNames":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {p3, v3}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 842
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStringVector(Ljava/util/ArrayList;)V

    .line 843
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 844
    goto/16 :goto_3f6

    .line 815
    .end local v0  # "_hidl_is_oneway":Z
    .end local v1  # "_hidl_out_fqInstanceNames":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :pswitch_36e  #0x3
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_373

    goto :goto_374

    :cond_373
    move v4, v3

    :goto_374
    move v0, v4

    .line 816
    .restart local v0  # "_hidl_is_oneway":Z
    if-eqz v0, :cond_37f

    .line 817
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 818
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 819
    goto/16 :goto_3f6

    .line 820
    :cond_37f
    invoke-virtual {p2, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 822
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 823
    .local v1, "fqName":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 824
    .local v2, "name":Ljava/lang/String;
    invoke-virtual {p0, v1, v2}, Landroid/hidl/manager/V1_2/IServiceManager$Stub;->getTransport(Ljava/lang/String;Ljava/lang/String;)B

    move-result v4

    .line 825
    .local v4, "_hidl_out_transport":B
    invoke-virtual {p3, v3}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 826
    invoke-virtual {p3, v4}, Landroid/os/HwParcel;->writeInt8(B)V

    .line 827
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 828
    goto :goto_3f6

    .line 797
    .end local v0  # "_hidl_is_oneway":Z
    .end local v1  # "fqName":Ljava/lang/String;
    .end local v2  # "name":Ljava/lang/String;
    .end local v4  # "_hidl_out_transport":B
    :pswitch_398  #0x2
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_39d

    goto :goto_39e

    :cond_39d
    move v4, v3

    :goto_39e
    move v0, v4

    .line 798
    .restart local v0  # "_hidl_is_oneway":Z
    if-eqz v0, :cond_3a8

    .line 799
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 800
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 801
    goto :goto_3f6

    .line 802
    :cond_3a8
    invoke-virtual {p2, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 804
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 805
    .local v1, "name":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/HwParcel;->readStrongBinder()Landroid/os/IHwBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/hidl/base/V1_0/IBase;->asInterface(Landroid/os/IHwBinder;)Landroid/hidl/base/V1_0/IBase;

    move-result-object v2

    .line 806
    .local v2, "service":Landroid/hidl/base/V1_0/IBase;
    invoke-virtual {p0, v1, v2}, Landroid/hidl/manager/V1_2/IServiceManager$Stub;->add(Ljava/lang/String;Landroid/hidl/base/V1_0/IBase;)Z

    move-result v4

    .line 807
    .local v4, "_hidl_out_success":Z
    invoke-virtual {p3, v3}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 808
    invoke-virtual {p3, v4}, Landroid/os/HwParcel;->writeBool(Z)V

    .line 809
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 810
    goto :goto_3f6

    .line 779
    .end local v0  # "_hidl_is_oneway":Z
    .end local v1  # "name":Ljava/lang/String;
    .end local v2  # "service":Landroid/hidl/base/V1_0/IBase;
    .end local v4  # "_hidl_out_success":Z
    :pswitch_3c5  #0x1
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_3ca

    goto :goto_3cb

    :cond_3ca
    move v4, v3

    :goto_3cb
    move v0, v4

    .line 780
    .restart local v0  # "_hidl_is_oneway":Z
    if-eqz v0, :cond_3d5

    .line 781
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 782
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 783
    goto :goto_3f6

    .line 784
    :cond_3d5
    invoke-virtual {p2, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 786
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 787
    .local v1, "fqName":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 788
    .local v2, "name":Ljava/lang/String;
    invoke-virtual {p0, v1, v2}, Landroid/hidl/manager/V1_2/IServiceManager$Stub;->get(Ljava/lang/String;Ljava/lang/String;)Landroid/hidl/base/V1_0/IBase;

    move-result-object v4

    .line 789
    .local v4, "_hidl_out_service":Landroid/hidl/base/V1_0/IBase;
    invoke-virtual {p3, v3}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 790
    if-nez v4, :cond_3eb

    const/4 v3, 0x0

    goto :goto_3ef

    :cond_3eb
    invoke-interface {v4}, Landroid/hidl/base/V1_0/IBase;->asBinder()Landroid/os/IHwBinder;

    move-result-object v3

    :goto_3ef
    invoke-virtual {p3, v3}, Landroid/os/HwParcel;->writeStrongBinder(Landroid/os/IHwBinder;)V

    .line 791
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 792
    nop

    .line 1194
    .end local v0  # "_hidl_is_oneway":Z
    .end local v1  # "fqName":Ljava/lang/String;
    .end local v2  # "name":Ljava/lang/String;
    .end local v4  # "_hidl_out_service":Landroid/hidl/base/V1_0/IBase;
    :cond_3f6
    :goto_3f6
    return-void

    nop

    :pswitch_data_3f8
    .packed-switch 0x1
        :pswitch_3c5  #00000001
        :pswitch_398  #00000002
        :pswitch_36e  #00000003
        :pswitch_34b  #00000004
        :pswitch_324  #00000005
        :pswitch_2f1  #00000006
        :pswitch_2ce  #00000007
        :pswitch_2a7  #00000008
        :pswitch_272  #00000009
        :pswitch_237  #0000000a
        :pswitch_204  #0000000b
        :pswitch_1d1  #0000000c
        :pswitch_1aa  #0000000d
        :pswitch_177  #0000000e
    .end packed-switch

    :sswitch_data_418
    .sparse-switch
        0xf43484e -> :sswitch_154
        0xf444247 -> :sswitch_12d
        0xf445343 -> :sswitch_10a
        0xf485348 -> :sswitch_a4
        0xf494e54 -> :sswitch_8c
        0xf4c5444 -> :sswitch_7c
        0xf504e47 -> :sswitch_5d
        0xf524546 -> :sswitch_3a
        0xf535953 -> :sswitch_22
        0xf555444 -> :sswitch_12
    .end sparse-switch
.end method

.method public final ping()V
    .registers 1

    .line 730
    return-void
.end method

.method public queryLocalInterface(Ljava/lang/String;)Landroid/os/IHwInterface;
    .registers 3
    .param p1, "descriptor"  # Ljava/lang/String;

    .line 758
    const-string v0, "android.hidl.manager@1.2::IServiceManager"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 759
    return-object p0

    .line 761
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

    .line 765
    invoke-virtual {p0, p1}, Landroid/hidl/manager/V1_2/IServiceManager$Stub;->registerService(Ljava/lang/String;)V

    .line 766
    return-void
.end method

.method public final setHALInstrumentation()V
    .registers 1

    .line 720
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 770
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/hidl/manager/V1_2/IServiceManager$Stub;->interfaceDescriptor()Ljava/lang/String;

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

    .line 752
    const/4 v0, 0x1

    return v0
.end method
