.class public abstract Landroid/hardware/broadcastradio/V2_0/ITunerSession$Stub;
.super Landroid/os/HwBinder;
.source "ITunerSession.java"

# interfaces
.implements Landroid/hardware/broadcastradio/V2_0/ITunerSession;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/broadcastradio/V2_0/ITunerSession;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 702
    invoke-direct {p0}, Landroid/os/HwBinder;-><init>()V

    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IHwBinder;
    .registers 1

    .line 705
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

    .line 718
    .local p2, "options":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    return-void
.end method

.method public final getDebugInfo()Landroid/hidl/base/V1_0/DebugInfo;
    .registers 4

    .line 755
    new-instance v0, Landroid/hidl/base/V1_0/DebugInfo;

    invoke-direct {v0}, Landroid/hidl/base/V1_0/DebugInfo;-><init>()V

    .line 756
    .local v0, "info":Landroid/hidl/base/V1_0/DebugInfo;
    invoke-static {}, Landroid/os/HidlSupport;->getPidIfSharable()I

    move-result v1

    iput v1, v0, Landroid/hidl/base/V1_0/DebugInfo;->pid:I

    .line 757
    const-wide/16 v1, 0x0

    iput-wide v1, v0, Landroid/hidl/base/V1_0/DebugInfo;->ptr:J

    .line 758
    const/4 v1, 0x0

    iput v1, v0, Landroid/hidl/base/V1_0/DebugInfo;->arch:I

    .line 759
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

    .line 730
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
        -0x29t
        0x4t
        0x64t
        -0x3bt
        0x17t
        -0x5ct
        -0x5ft
        -0x4bt
        0x16t
        0x77t
        0x30t
        -0x7ct
        0x37t
        0x75t
        -0x57t
        0x7ft
        0x45t
        0x51t
        0x2t
        -0x6ft
        -0x62t
        -0x6ct
        0x5bt
        0x4t
        -0x9t
        0x17t
        -0x47t
        -0x26t
        0x39t
        0xct
        0xft
        0x39t
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

    .line 710
    new-instance v0, Ljava/util/ArrayList;

    const-string v1, "android.hardware.broadcastradio@2.0::ITunerSession"

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

    .line 724
    const-string v0, "android.hardware.broadcastradio@2.0::ITunerSession"

    return-object v0
.end method

.method public final linkToDeath(Landroid/os/IHwBinder$DeathRecipient;J)Z
    .registers 5
    .param p1, "recipient"  # Landroid/os/IHwBinder$DeathRecipient;
    .param p2, "cookie"  # J

    .line 743
    const/4 v0, 0x1

    return v0
.end method

.method public final notifySyspropsChanged()V
    .registers 1

    .line 765
    invoke-static {}, Landroid/os/HwBinder;->enableInstrumentation()V

    .line 767
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

    .line 795
    const-string v0, "android.hardware.broadcastradio@2.0::ITunerSession"

    const/high16 v1, -0x80000000

    const/4 v2, 0x0

    const/4 v3, 0x1

    packed-switch p1, :pswitch_data_2fc

    const-string v0, "android.hidl.base@1.0::IBase"

    sparse-switch p1, :sswitch_data_316

    goto/16 :goto_2fb

    .line 1142
    :sswitch_10
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_15

    move v2, v3

    :cond_15
    move v0, v2

    .line 1143
    .local v0, "_hidl_is_oneway":Z
    if-eqz v0, :cond_2fb

    .line 1144
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1145
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1146
    goto/16 :goto_2fb

    .line 1129
    .end local v0  # "_hidl_is_oneway":Z
    :sswitch_20
    and-int/lit8 v4, p4, 0x1

    if-eqz v4, :cond_25

    move v2, v3

    .line 1130
    .local v2, "_hidl_is_oneway":Z
    :cond_25
    if-eq v2, v3, :cond_2f

    .line 1131
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1132
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1133
    goto/16 :goto_2fb

    .line 1134
    :cond_2f
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1136
    invoke-virtual {p0}, Landroid/hardware/broadcastradio/V2_0/ITunerSession$Stub;->notifySyspropsChanged()V

    .line 1137
    goto/16 :goto_2fb

    .line 1113
    .end local v2  # "_hidl_is_oneway":Z
    :sswitch_37
    and-int/lit8 v4, p4, 0x1

    if-eqz v4, :cond_3c

    goto :goto_3d

    :cond_3c
    move v3, v2

    .line 1114
    .local v3, "_hidl_is_oneway":Z
    :goto_3d
    if-eqz v3, :cond_47

    .line 1115
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1116
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1117
    goto/16 :goto_2fb

    .line 1118
    :cond_47
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1120
    invoke-virtual {p0}, Landroid/hardware/broadcastradio/V2_0/ITunerSession$Stub;->getDebugInfo()Landroid/hidl/base/V1_0/DebugInfo;

    move-result-object v0

    .line 1121
    .local v0, "_hidl_out_info":Landroid/hidl/base/V1_0/DebugInfo;
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1122
    invoke-virtual {v0, p3}, Landroid/hidl/base/V1_0/DebugInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 1123
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1124
    goto/16 :goto_2fb

    .line 1098
    .end local v0  # "_hidl_out_info":Landroid/hidl/base/V1_0/DebugInfo;
    .end local v3  # "_hidl_is_oneway":Z
    :sswitch_59
    and-int/lit8 v4, p4, 0x1

    if-eqz v4, :cond_5e

    goto :goto_5f

    :cond_5e
    move v3, v2

    .line 1099
    .restart local v3  # "_hidl_is_oneway":Z
    :goto_5f
    if-eqz v3, :cond_69

    .line 1100
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1101
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1102
    goto/16 :goto_2fb

    .line 1103
    :cond_69
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1105
    invoke-virtual {p0}, Landroid/hardware/broadcastradio/V2_0/ITunerSession$Stub;->ping()V

    .line 1106
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1107
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1108
    goto/16 :goto_2fb

    .line 1088
    .end local v3  # "_hidl_is_oneway":Z
    :sswitch_77
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_7c

    move v2, v3

    :cond_7c
    move v0, v2

    .line 1089
    .local v0, "_hidl_is_oneway":Z
    if-eqz v0, :cond_2fb

    .line 1090
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1091
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1092
    goto/16 :goto_2fb

    .line 1075
    .end local v0  # "_hidl_is_oneway":Z
    :sswitch_87
    and-int/lit8 v4, p4, 0x1

    if-eqz v4, :cond_8c

    move v2, v3

    .line 1076
    .restart local v2  # "_hidl_is_oneway":Z
    :cond_8c
    if-eq v2, v3, :cond_96

    .line 1077
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1078
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1079
    goto/16 :goto_2fb

    .line 1080
    :cond_96
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1082
    invoke-virtual {p0}, Landroid/hardware/broadcastradio/V2_0/ITunerSession$Stub;->setHALInstrumentation()V

    .line 1083
    goto/16 :goto_2fb

    .line 1036
    .end local v2  # "_hidl_is_oneway":Z
    :sswitch_9e
    and-int/lit8 v4, p4, 0x1

    if-eqz v4, :cond_a3

    goto :goto_a4

    :cond_a3
    move v3, v2

    .line 1037
    .restart local v3  # "_hidl_is_oneway":Z
    :goto_a4
    if-eqz v3, :cond_ae

    .line 1038
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1039
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1040
    goto/16 :goto_2fb

    .line 1041
    :cond_ae
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1043
    invoke-virtual {p0}, Landroid/hardware/broadcastradio/V2_0/ITunerSession$Stub;->getHashChain()Ljava/util/ArrayList;

    move-result-object v0

    .line 1044
    .local v0, "_hidl_out_hashchain":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1046
    new-instance v1, Landroid/os/HwBlob;

    const/16 v4, 0x10

    invoke-direct {v1, v4}, Landroid/os/HwBlob;-><init>(I)V

    .line 1048
    .local v1, "_hidl_blob":Landroid/os/HwBlob;
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 1049
    .local v4, "_hidl_vec_size":I
    const-wide/16 v5, 0x8

    invoke-virtual {v1, v5, v6, v4}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 1050
    const-wide/16 v5, 0xc

    invoke-virtual {v1, v5, v6, v2}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 1051
    new-instance v2, Landroid/os/HwBlob;

    mul-int/lit8 v5, v4, 0x20

    invoke-direct {v2, v5}, Landroid/os/HwBlob;-><init>(I)V

    .line 1052
    .local v2, "childBlob":Landroid/os/HwBlob;
    const/4 v5, 0x0

    .local v5, "_hidl_index_0":I
    :goto_d5
    if-ge v5, v4, :cond_f6

    .line 1054
    mul-int/lit8 v6, v5, 0x20

    int-to-long v6, v6

    .line 1055
    .local v6, "_hidl_array_offset_1":J
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [B

    .line 1057
    .local v8, "_hidl_array_item_1":[B
    if-eqz v8, :cond_ee

    array-length v9, v8

    const/16 v10, 0x20

    if-ne v9, v10, :cond_ee

    .line 1061
    invoke-virtual {v2, v6, v7, v8}, Landroid/os/HwBlob;->putInt8Array(J[B)V

    .line 1062
    nop

    .line 1052
    .end local v6  # "_hidl_array_offset_1":J
    .end local v8  # "_hidl_array_item_1":[B
    add-int/lit8 v5, v5, 0x1

    goto :goto_d5

    .line 1058
    .restart local v6  # "_hidl_array_offset_1":J
    .restart local v8  # "_hidl_array_item_1":[B
    :cond_ee
    new-instance v9, Ljava/lang/IllegalArgumentException;

    const-string v10, "Array element is not of the expected length"

    invoke-direct {v9, v10}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 1065
    .end local v5  # "_hidl_index_0":I
    .end local v6  # "_hidl_array_offset_1":J
    .end local v8  # "_hidl_array_item_1":[B
    :cond_f6
    const-wide/16 v5, 0x0

    invoke-virtual {v1, v5, v6, v2}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    .line 1067
    .end local v2  # "childBlob":Landroid/os/HwBlob;
    .end local v4  # "_hidl_vec_size":I
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    .line 1069
    .end local v1  # "_hidl_blob":Landroid/os/HwBlob;
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1070
    goto/16 :goto_2fb

    .line 1020
    .end local v0  # "_hidl_out_hashchain":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    .end local v3  # "_hidl_is_oneway":Z
    :sswitch_103
    and-int/lit8 v4, p4, 0x1

    if-eqz v4, :cond_108

    goto :goto_109

    :cond_108
    move v3, v2

    .line 1021
    .restart local v3  # "_hidl_is_oneway":Z
    :goto_109
    if-eqz v3, :cond_113

    .line 1022
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1023
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1024
    goto/16 :goto_2fb

    .line 1025
    :cond_113
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1027
    invoke-virtual {p0}, Landroid/hardware/broadcastradio/V2_0/ITunerSession$Stub;->interfaceDescriptor()Ljava/lang/String;

    move-result-object v0

    .line 1028
    .local v0, "_hidl_out_descriptor":Ljava/lang/String;
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1029
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 1030
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1031
    goto/16 :goto_2fb

    .line 1003
    .end local v0  # "_hidl_out_descriptor":Ljava/lang/String;
    .end local v3  # "_hidl_is_oneway":Z
    :sswitch_125
    and-int/lit8 v4, p4, 0x1

    if-eqz v4, :cond_12a

    goto :goto_12b

    :cond_12a
    move v3, v2

    .line 1004
    .restart local v3  # "_hidl_is_oneway":Z
    :goto_12b
    if-eqz v3, :cond_135

    .line 1005
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1006
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1007
    goto/16 :goto_2fb

    .line 1008
    :cond_135
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1010
    invoke-virtual {p2}, Landroid/os/HwParcel;->readNativeHandle()Landroid/os/NativeHandle;

    move-result-object v0

    .line 1011
    .local v0, "fd":Landroid/os/NativeHandle;
    invoke-virtual {p2}, Landroid/os/HwParcel;->readStringVector()Ljava/util/ArrayList;

    move-result-object v1

    .line 1012
    .local v1, "options":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {p0, v0, v1}, Landroid/hardware/broadcastradio/V2_0/ITunerSession$Stub;->debug(Landroid/os/NativeHandle;Ljava/util/ArrayList;)V

    .line 1013
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1014
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1015
    goto/16 :goto_2fb

    .line 987
    .end local v0  # "fd":Landroid/os/NativeHandle;
    .end local v1  # "options":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v3  # "_hidl_is_oneway":Z
    :sswitch_14b
    and-int/lit8 v4, p4, 0x1

    if-eqz v4, :cond_150

    goto :goto_151

    :cond_150
    move v3, v2

    .line 988
    .restart local v3  # "_hidl_is_oneway":Z
    :goto_151
    if-eqz v3, :cond_15b

    .line 989
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 990
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 991
    goto/16 :goto_2fb

    .line 992
    :cond_15b
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 994
    invoke-virtual {p0}, Landroid/hardware/broadcastradio/V2_0/ITunerSession$Stub;->interfaceChain()Ljava/util/ArrayList;

    move-result-object v0

    .line 995
    .local v0, "_hidl_out_descriptors":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 996
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStringVector(Ljava/util/ArrayList;)V

    .line 997
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 998
    goto/16 :goto_2fb

    .line 972
    .end local v0  # "_hidl_out_descriptors":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v3  # "_hidl_is_oneway":Z
    :pswitch_16d  #0xb
    and-int/lit8 v4, p4, 0x1

    if-eqz v4, :cond_172

    goto :goto_173

    :cond_172
    move v3, v2

    .line 973
    .restart local v3  # "_hidl_is_oneway":Z
    :goto_173
    if-eqz v3, :cond_17d

    .line 974
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 975
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 976
    goto/16 :goto_2fb

    .line 977
    :cond_17d
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 979
    invoke-virtual {p0}, Landroid/hardware/broadcastradio/V2_0/ITunerSession$Stub;->close()V

    .line 980
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 981
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 982
    goto/16 :goto_2fb

    .line 955
    .end local v3  # "_hidl_is_oneway":Z
    :pswitch_18b  #0xa
    and-int/lit8 v4, p4, 0x1

    if-eqz v4, :cond_190

    goto :goto_191

    :cond_190
    move v3, v2

    .line 956
    .restart local v3  # "_hidl_is_oneway":Z
    :goto_191
    if-eqz v3, :cond_19b

    .line 957
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 958
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 959
    goto/16 :goto_2fb

    .line 960
    :cond_19b
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 962
    invoke-virtual {p2}, Landroid/os/HwParcel;->readStringVector()Ljava/util/ArrayList;

    move-result-object v0

    .line 963
    .local v0, "keys":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {p0, v0}, Landroid/hardware/broadcastradio/V2_0/ITunerSession$Stub;->getParameters(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v1

    .line 964
    .local v1, "_hidl_out_parameters":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/broadcastradio/V2_0/VendorKeyValue;>;"
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 965
    invoke-static {p3, v1}, Landroid/hardware/broadcastradio/V2_0/VendorKeyValue;->writeVectorToParcel(Landroid/os/HwParcel;Ljava/util/ArrayList;)V

    .line 966
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 967
    goto/16 :goto_2fb

    .line 938
    .end local v0  # "keys":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v1  # "_hidl_out_parameters":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/broadcastradio/V2_0/VendorKeyValue;>;"
    .end local v3  # "_hidl_is_oneway":Z
    :pswitch_1b1  #0x9
    and-int/lit8 v4, p4, 0x1

    if-eqz v4, :cond_1b6

    goto :goto_1b7

    :cond_1b6
    move v3, v2

    .line 939
    .restart local v3  # "_hidl_is_oneway":Z
    :goto_1b7
    if-eqz v3, :cond_1c1

    .line 940
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 941
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 942
    goto/16 :goto_2fb

    .line 943
    :cond_1c1
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 945
    invoke-static {p2}, Landroid/hardware/broadcastradio/V2_0/VendorKeyValue;->readVectorFromParcel(Landroid/os/HwParcel;)Ljava/util/ArrayList;

    move-result-object v0

    .line 946
    .local v0, "parameters":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/broadcastradio/V2_0/VendorKeyValue;>;"
    invoke-virtual {p0, v0}, Landroid/hardware/broadcastradio/V2_0/ITunerSession$Stub;->setParameters(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v1

    .line 947
    .local v1, "_hidl_out_results":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/broadcastradio/V2_0/VendorKeyValue;>;"
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 948
    invoke-static {p3, v1}, Landroid/hardware/broadcastradio/V2_0/VendorKeyValue;->writeVectorToParcel(Landroid/os/HwParcel;Ljava/util/ArrayList;)V

    .line 949
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 950
    goto/16 :goto_2fb

    .line 920
    .end local v0  # "parameters":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/broadcastradio/V2_0/VendorKeyValue;>;"
    .end local v1  # "_hidl_out_results":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/broadcastradio/V2_0/VendorKeyValue;>;"
    .end local v3  # "_hidl_is_oneway":Z
    :pswitch_1d7  #0x8
    and-int/lit8 v4, p4, 0x1

    if-eqz v4, :cond_1dc

    goto :goto_1dd

    :cond_1dc
    move v3, v2

    .line 921
    .restart local v3  # "_hidl_is_oneway":Z
    :goto_1dd
    if-eqz v3, :cond_1e7

    .line 922
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 923
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 924
    goto/16 :goto_2fb

    .line 925
    :cond_1e7
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 927
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 928
    .local v0, "flag":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v1

    .line 929
    .local v1, "value":Z
    invoke-virtual {p0, v0, v1}, Landroid/hardware/broadcastradio/V2_0/ITunerSession$Stub;->setConfigFlag(IZ)I

    move-result v4

    .line 930
    .local v4, "_hidl_out_result":I
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 931
    invoke-virtual {p3, v4}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 932
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 933
    goto/16 :goto_2fb

    .line 899
    .end local v0  # "flag":I
    .end local v1  # "value":Z
    .end local v3  # "_hidl_is_oneway":Z
    .end local v4  # "_hidl_out_result":I
    :pswitch_201  #0x7
    and-int/lit8 v4, p4, 0x1

    if-eqz v4, :cond_206

    move v2, v3

    .line 900
    .local v2, "_hidl_is_oneway":Z
    :cond_206
    if-eqz v2, :cond_210

    .line 901
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 902
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 903
    goto/16 :goto_2fb

    .line 904
    :cond_210
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 906
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 907
    .restart local v0  # "flag":I
    new-instance v1, Landroid/hardware/broadcastradio/V2_0/ITunerSession$Stub$1;

    invoke-direct {v1, p0, p3}, Landroid/hardware/broadcastradio/V2_0/ITunerSession$Stub$1;-><init>(Landroid/hardware/broadcastradio/V2_0/ITunerSession$Stub;Landroid/os/HwParcel;)V

    invoke-virtual {p0, v0, v1}, Landroid/hardware/broadcastradio/V2_0/ITunerSession$Stub;->isConfigFlagSet(ILandroid/hardware/broadcastradio/V2_0/ITunerSession$isConfigFlagSetCallback;)V

    .line 915
    goto/16 :goto_2fb

    .line 884
    .end local v0  # "flag":I
    .end local v2  # "_hidl_is_oneway":Z
    :pswitch_221  #0x6
    and-int/lit8 v4, p4, 0x1

    if-eqz v4, :cond_226

    goto :goto_227

    :cond_226
    move v3, v2

    .line 885
    .restart local v3  # "_hidl_is_oneway":Z
    :goto_227
    if-eqz v3, :cond_231

    .line 886
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 887
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 888
    goto/16 :goto_2fb

    .line 889
    :cond_231
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 891
    invoke-virtual {p0}, Landroid/hardware/broadcastradio/V2_0/ITunerSession$Stub;->stopProgramListUpdates()V

    .line 892
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 893
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 894
    goto/16 :goto_2fb

    .line 866
    .end local v3  # "_hidl_is_oneway":Z
    :pswitch_23f  #0x5
    and-int/lit8 v4, p4, 0x1

    if-eqz v4, :cond_244

    goto :goto_245

    :cond_244
    move v3, v2

    .line 867
    .restart local v3  # "_hidl_is_oneway":Z
    :goto_245
    if-eqz v3, :cond_24f

    .line 868
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 869
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 870
    goto/16 :goto_2fb

    .line 871
    :cond_24f
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 873
    new-instance v0, Landroid/hardware/broadcastradio/V2_0/ProgramFilter;

    invoke-direct {v0}, Landroid/hardware/broadcastradio/V2_0/ProgramFilter;-><init>()V

    .line 874
    .local v0, "filter":Landroid/hardware/broadcastradio/V2_0/ProgramFilter;
    invoke-virtual {v0, p2}, Landroid/hardware/broadcastradio/V2_0/ProgramFilter;->readFromParcel(Landroid/os/HwParcel;)V

    .line 875
    invoke-virtual {p0, v0}, Landroid/hardware/broadcastradio/V2_0/ITunerSession$Stub;->startProgramListUpdates(Landroid/hardware/broadcastradio/V2_0/ProgramFilter;)I

    move-result v1

    .line 876
    .local v1, "_hidl_out_result":I
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 877
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 878
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 879
    goto/16 :goto_2fb

    .line 851
    .end local v0  # "filter":Landroid/hardware/broadcastradio/V2_0/ProgramFilter;
    .end local v1  # "_hidl_out_result":I
    .end local v3  # "_hidl_is_oneway":Z
    :pswitch_269  #0x4
    and-int/lit8 v4, p4, 0x1

    if-eqz v4, :cond_26e

    goto :goto_26f

    :cond_26e
    move v3, v2

    .line 852
    .restart local v3  # "_hidl_is_oneway":Z
    :goto_26f
    if-eqz v3, :cond_279

    .line 853
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 854
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 855
    goto/16 :goto_2fb

    .line 856
    :cond_279
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 858
    invoke-virtual {p0}, Landroid/hardware/broadcastradio/V2_0/ITunerSession$Stub;->cancel()V

    .line 859
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 860
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 861
    goto/16 :goto_2fb

    .line 834
    .end local v3  # "_hidl_is_oneway":Z
    :pswitch_287  #0x3
    and-int/lit8 v4, p4, 0x1

    if-eqz v4, :cond_28c

    goto :goto_28d

    :cond_28c
    move v3, v2

    .line 835
    .restart local v3  # "_hidl_is_oneway":Z
    :goto_28d
    if-eqz v3, :cond_296

    .line 836
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 837
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 838
    goto :goto_2fb

    .line 839
    :cond_296
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 841
    invoke-virtual {p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v0

    .line 842
    .local v0, "directionUp":Z
    invoke-virtual {p0, v0}, Landroid/hardware/broadcastradio/V2_0/ITunerSession$Stub;->step(Z)I

    move-result v1

    .line 843
    .restart local v1  # "_hidl_out_result":I
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 844
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 845
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 846
    goto :goto_2fb

    .line 816
    .end local v0  # "directionUp":Z
    .end local v1  # "_hidl_out_result":I
    .end local v3  # "_hidl_is_oneway":Z
    :pswitch_2ab  #0x2
    and-int/lit8 v4, p4, 0x1

    if-eqz v4, :cond_2b0

    goto :goto_2b1

    :cond_2b0
    move v3, v2

    .line 817
    .restart local v3  # "_hidl_is_oneway":Z
    :goto_2b1
    if-eqz v3, :cond_2ba

    .line 818
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 819
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 820
    goto :goto_2fb

    .line 821
    :cond_2ba
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 823
    invoke-virtual {p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v0

    .line 824
    .restart local v0  # "directionUp":Z
    invoke-virtual {p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v1

    .line 825
    .local v1, "skipSubChannel":Z
    invoke-virtual {p0, v0, v1}, Landroid/hardware/broadcastradio/V2_0/ITunerSession$Stub;->scan(ZZ)I

    move-result v4

    .line 826
    .restart local v4  # "_hidl_out_result":I
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 827
    invoke-virtual {p3, v4}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 828
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 829
    goto :goto_2fb

    .line 798
    .end local v0  # "directionUp":Z
    .end local v1  # "skipSubChannel":Z
    .end local v3  # "_hidl_is_oneway":Z
    .end local v4  # "_hidl_out_result":I
    :pswitch_2d3  #0x1
    and-int/lit8 v4, p4, 0x1

    if-eqz v4, :cond_2d8

    goto :goto_2d9

    :cond_2d8
    move v3, v2

    .line 799
    .restart local v3  # "_hidl_is_oneway":Z
    :goto_2d9
    if-eqz v3, :cond_2e2

    .line 800
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 801
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 802
    goto :goto_2fb

    .line 803
    :cond_2e2
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 805
    new-instance v0, Landroid/hardware/broadcastradio/V2_0/ProgramSelector;

    invoke-direct {v0}, Landroid/hardware/broadcastradio/V2_0/ProgramSelector;-><init>()V

    .line 806
    .local v0, "program":Landroid/hardware/broadcastradio/V2_0/ProgramSelector;
    invoke-virtual {v0, p2}, Landroid/hardware/broadcastradio/V2_0/ProgramSelector;->readFromParcel(Landroid/os/HwParcel;)V

    .line 807
    invoke-virtual {p0, v0}, Landroid/hardware/broadcastradio/V2_0/ITunerSession$Stub;->tune(Landroid/hardware/broadcastradio/V2_0/ProgramSelector;)I

    move-result v1

    .line 808
    .local v1, "_hidl_out_result":I
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 809
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 810
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 811
    nop

    .line 1151
    .end local v0  # "program":Landroid/hardware/broadcastradio/V2_0/ProgramSelector;
    .end local v1  # "_hidl_out_result":I
    .end local v3  # "_hidl_is_oneway":Z
    :cond_2fb
    :goto_2fb
    return-void

    :pswitch_data_2fc
    .packed-switch 0x1
        :pswitch_2d3  #00000001
        :pswitch_2ab  #00000002
        :pswitch_287  #00000003
        :pswitch_269  #00000004
        :pswitch_23f  #00000005
        :pswitch_221  #00000006
        :pswitch_201  #00000007
        :pswitch_1d7  #00000008
        :pswitch_1b1  #00000009
        :pswitch_18b  #0000000a
        :pswitch_16d  #0000000b
    .end packed-switch

    :sswitch_data_316
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

    .line 749
    return-void
.end method

.method public queryLocalInterface(Ljava/lang/String;)Landroid/os/IHwInterface;
    .registers 3
    .param p1, "descriptor"  # Ljava/lang/String;

    .line 777
    const-string v0, "android.hardware.broadcastradio@2.0::ITunerSession"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 778
    return-object p0

    .line 780
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

    .line 784
    invoke-virtual {p0, p1}, Landroid/hardware/broadcastradio/V2_0/ITunerSession$Stub;->registerService(Ljava/lang/String;)V

    .line 785
    return-void
.end method

.method public final setHALInstrumentation()V
    .registers 1

    .line 739
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 789
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/hardware/broadcastradio/V2_0/ITunerSession$Stub;->interfaceDescriptor()Ljava/lang/String;

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

    .line 771
    const/4 v0, 0x1

    return v0
.end method
