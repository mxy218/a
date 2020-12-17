.class public abstract Landroid/hardware/configstore/V1_0/ISurfaceFlingerConfigs$Stub;
.super Landroid/os/HwBinder;
.source "ISurfaceFlingerConfigs.java"

# interfaces
.implements Landroid/hardware/configstore/V1_0/ISurfaceFlingerConfigs;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/configstore/V1_0/ISurfaceFlingerConfigs;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 653
    invoke-direct {p0}, Landroid/os/HwBinder;-><init>()V

    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IHwBinder;
    .registers 1

    .line 656
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

    .line 669
    .local p2, "options":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    return-void
.end method

.method public final getDebugInfo()Landroid/hidl/base/V1_0/DebugInfo;
    .registers 4

    .line 706
    new-instance v0, Landroid/hidl/base/V1_0/DebugInfo;

    invoke-direct {v0}, Landroid/hidl/base/V1_0/DebugInfo;-><init>()V

    .line 707
    .local v0, "info":Landroid/hidl/base/V1_0/DebugInfo;
    invoke-static {}, Landroid/os/HidlSupport;->getPidIfSharable()I

    move-result v1

    iput v1, v0, Landroid/hidl/base/V1_0/DebugInfo;->pid:I

    .line 708
    const-wide/16 v1, 0x0

    iput-wide v1, v0, Landroid/hidl/base/V1_0/DebugInfo;->ptr:J

    .line 709
    const/4 v1, 0x0

    iput v1, v0, Landroid/hidl/base/V1_0/DebugInfo;->arch:I

    .line 710
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

    .line 681
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
        -0x26t
        0x33t
        0x23t
        0x44t
        0x3t
        -0x1t
        0x5dt
        0x60t
        -0xdt
        0x47t
        0x37t
        0x11t
        -0x6ft
        0x7bt
        -0x67t
        0x48t
        -0x1at
        0x48t
        0x4at
        0x42t
        0x60t
        -0x4bt
        0x24t
        0x7at
        -0x33t
        -0x51t
        -0x4ft
        0x11t
        0x19t
        0x3at
        -0x63t
        -0x1et
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

    .line 661
    new-instance v0, Ljava/util/ArrayList;

    const-string v1, "android.hardware.configstore@1.0::ISurfaceFlingerConfigs"

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

    .line 675
    const-string v0, "android.hardware.configstore@1.0::ISurfaceFlingerConfigs"

    return-object v0
.end method

.method public final linkToDeath(Landroid/os/IHwBinder$DeathRecipient;J)Z
    .registers 5
    .param p1, "recipient"  # Landroid/os/IHwBinder$DeathRecipient;
    .param p2, "cookie"  # J

    .line 694
    const/4 v0, 0x1

    return v0
.end method

.method public final notifySyspropsChanged()V
    .registers 1

    .line 716
    invoke-static {}, Landroid/os/HwBinder;->enableInstrumentation()V

    .line 718
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

    .line 746
    const-string v0, "android.hardware.configstore@1.0::ISurfaceFlingerConfigs"

    const/high16 v1, -0x80000000

    const/4 v2, 0x0

    const/4 v3, 0x1

    packed-switch p1, :pswitch_data_300

    const-string v0, "android.hidl.base@1.0::IBase"

    sparse-switch p1, :sswitch_data_31c

    goto/16 :goto_2fe

    .line 1096
    :sswitch_10
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_15

    move v2, v3

    :cond_15
    move v0, v2

    .line 1097
    .local v0, "_hidl_is_oneway":Z
    if-eqz v0, :cond_2fe

    .line 1098
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1099
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1100
    goto/16 :goto_2fe

    .line 1083
    .end local v0  # "_hidl_is_oneway":Z
    :sswitch_20
    and-int/lit8 v4, p4, 0x1

    if-eqz v4, :cond_25

    move v2, v3

    .line 1084
    .local v2, "_hidl_is_oneway":Z
    :cond_25
    if-eq v2, v3, :cond_2f

    .line 1085
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1086
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1087
    goto/16 :goto_2fe

    .line 1088
    :cond_2f
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1090
    invoke-virtual {p0}, Landroid/hardware/configstore/V1_0/ISurfaceFlingerConfigs$Stub;->notifySyspropsChanged()V

    .line 1091
    goto/16 :goto_2fe

    .line 1067
    .end local v2  # "_hidl_is_oneway":Z
    :sswitch_37
    and-int/lit8 v4, p4, 0x1

    if-eqz v4, :cond_3c

    goto :goto_3d

    :cond_3c
    move v3, v2

    .line 1068
    .local v3, "_hidl_is_oneway":Z
    :goto_3d
    if-eqz v3, :cond_47

    .line 1069
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1070
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1071
    goto/16 :goto_2fe

    .line 1072
    :cond_47
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1074
    invoke-virtual {p0}, Landroid/hardware/configstore/V1_0/ISurfaceFlingerConfigs$Stub;->getDebugInfo()Landroid/hidl/base/V1_0/DebugInfo;

    move-result-object v0

    .line 1075
    .local v0, "_hidl_out_info":Landroid/hidl/base/V1_0/DebugInfo;
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1076
    invoke-virtual {v0, p3}, Landroid/hidl/base/V1_0/DebugInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 1077
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1078
    goto/16 :goto_2fe

    .line 1052
    .end local v0  # "_hidl_out_info":Landroid/hidl/base/V1_0/DebugInfo;
    .end local v3  # "_hidl_is_oneway":Z
    :sswitch_59
    and-int/lit8 v4, p4, 0x1

    if-eqz v4, :cond_5e

    goto :goto_5f

    :cond_5e
    move v3, v2

    .line 1053
    .restart local v3  # "_hidl_is_oneway":Z
    :goto_5f
    if-eqz v3, :cond_69

    .line 1054
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1055
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1056
    goto/16 :goto_2fe

    .line 1057
    :cond_69
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1059
    invoke-virtual {p0}, Landroid/hardware/configstore/V1_0/ISurfaceFlingerConfigs$Stub;->ping()V

    .line 1060
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1061
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1062
    goto/16 :goto_2fe

    .line 1042
    .end local v3  # "_hidl_is_oneway":Z
    :sswitch_77
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_7c

    move v2, v3

    :cond_7c
    move v0, v2

    .line 1043
    .local v0, "_hidl_is_oneway":Z
    if-eqz v0, :cond_2fe

    .line 1044
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1045
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1046
    goto/16 :goto_2fe

    .line 1029
    .end local v0  # "_hidl_is_oneway":Z
    :sswitch_87
    and-int/lit8 v4, p4, 0x1

    if-eqz v4, :cond_8c

    move v2, v3

    .line 1030
    .restart local v2  # "_hidl_is_oneway":Z
    :cond_8c
    if-eq v2, v3, :cond_96

    .line 1031
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1032
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1033
    goto/16 :goto_2fe

    .line 1034
    :cond_96
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1036
    invoke-virtual {p0}, Landroid/hardware/configstore/V1_0/ISurfaceFlingerConfigs$Stub;->setHALInstrumentation()V

    .line 1037
    goto/16 :goto_2fe

    .line 990
    .end local v2  # "_hidl_is_oneway":Z
    :sswitch_9e
    and-int/lit8 v4, p4, 0x1

    if-eqz v4, :cond_a3

    goto :goto_a4

    :cond_a3
    move v3, v2

    .line 991
    .restart local v3  # "_hidl_is_oneway":Z
    :goto_a4
    if-eqz v3, :cond_ae

    .line 992
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 993
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 994
    goto/16 :goto_2fe

    .line 995
    :cond_ae
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 997
    invoke-virtual {p0}, Landroid/hardware/configstore/V1_0/ISurfaceFlingerConfigs$Stub;->getHashChain()Ljava/util/ArrayList;

    move-result-object v0

    .line 998
    .local v0, "_hidl_out_hashchain":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1000
    new-instance v1, Landroid/os/HwBlob;

    const/16 v4, 0x10

    invoke-direct {v1, v4}, Landroid/os/HwBlob;-><init>(I)V

    .line 1002
    .local v1, "_hidl_blob":Landroid/os/HwBlob;
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 1003
    .local v4, "_hidl_vec_size":I
    const-wide/16 v5, 0x8

    invoke-virtual {v1, v5, v6, v4}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 1004
    const-wide/16 v5, 0xc

    invoke-virtual {v1, v5, v6, v2}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 1005
    new-instance v2, Landroid/os/HwBlob;

    mul-int/lit8 v5, v4, 0x20

    invoke-direct {v2, v5}, Landroid/os/HwBlob;-><init>(I)V

    .line 1006
    .local v2, "childBlob":Landroid/os/HwBlob;
    const/4 v5, 0x0

    .local v5, "_hidl_index_0":I
    :goto_d5
    if-ge v5, v4, :cond_f6

    .line 1008
    mul-int/lit8 v6, v5, 0x20

    int-to-long v6, v6

    .line 1009
    .local v6, "_hidl_array_offset_1":J
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [B

    .line 1011
    .local v8, "_hidl_array_item_1":[B
    if-eqz v8, :cond_ee

    array-length v9, v8

    const/16 v10, 0x20

    if-ne v9, v10, :cond_ee

    .line 1015
    invoke-virtual {v2, v6, v7, v8}, Landroid/os/HwBlob;->putInt8Array(J[B)V

    .line 1016
    nop

    .line 1006
    .end local v6  # "_hidl_array_offset_1":J
    .end local v8  # "_hidl_array_item_1":[B
    add-int/lit8 v5, v5, 0x1

    goto :goto_d5

    .line 1012
    .restart local v6  # "_hidl_array_offset_1":J
    .restart local v8  # "_hidl_array_item_1":[B
    :cond_ee
    new-instance v9, Ljava/lang/IllegalArgumentException;

    const-string v10, "Array element is not of the expected length"

    invoke-direct {v9, v10}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 1019
    .end local v5  # "_hidl_index_0":I
    .end local v6  # "_hidl_array_offset_1":J
    .end local v8  # "_hidl_array_item_1":[B
    :cond_f6
    const-wide/16 v5, 0x0

    invoke-virtual {v1, v5, v6, v2}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    .line 1021
    .end local v2  # "childBlob":Landroid/os/HwBlob;
    .end local v4  # "_hidl_vec_size":I
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    .line 1023
    .end local v1  # "_hidl_blob":Landroid/os/HwBlob;
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1024
    goto/16 :goto_2fe

    .line 974
    .end local v0  # "_hidl_out_hashchain":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    .end local v3  # "_hidl_is_oneway":Z
    :sswitch_103
    and-int/lit8 v4, p4, 0x1

    if-eqz v4, :cond_108

    goto :goto_109

    :cond_108
    move v3, v2

    .line 975
    .restart local v3  # "_hidl_is_oneway":Z
    :goto_109
    if-eqz v3, :cond_113

    .line 976
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 977
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 978
    goto/16 :goto_2fe

    .line 979
    :cond_113
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 981
    invoke-virtual {p0}, Landroid/hardware/configstore/V1_0/ISurfaceFlingerConfigs$Stub;->interfaceDescriptor()Ljava/lang/String;

    move-result-object v0

    .line 982
    .local v0, "_hidl_out_descriptor":Ljava/lang/String;
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 983
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 984
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 985
    goto/16 :goto_2fe

    .line 957
    .end local v0  # "_hidl_out_descriptor":Ljava/lang/String;
    .end local v3  # "_hidl_is_oneway":Z
    :sswitch_125
    and-int/lit8 v4, p4, 0x1

    if-eqz v4, :cond_12a

    goto :goto_12b

    :cond_12a
    move v3, v2

    .line 958
    .restart local v3  # "_hidl_is_oneway":Z
    :goto_12b
    if-eqz v3, :cond_135

    .line 959
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 960
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 961
    goto/16 :goto_2fe

    .line 962
    :cond_135
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 964
    invoke-virtual {p2}, Landroid/os/HwParcel;->readNativeHandle()Landroid/os/NativeHandle;

    move-result-object v0

    .line 965
    .local v0, "fd":Landroid/os/NativeHandle;
    invoke-virtual {p2}, Landroid/os/HwParcel;->readStringVector()Ljava/util/ArrayList;

    move-result-object v1

    .line 966
    .local v1, "options":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {p0, v0, v1}, Landroid/hardware/configstore/V1_0/ISurfaceFlingerConfigs$Stub;->debug(Landroid/os/NativeHandle;Ljava/util/ArrayList;)V

    .line 967
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 968
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 969
    goto/16 :goto_2fe

    .line 941
    .end local v0  # "fd":Landroid/os/NativeHandle;
    .end local v1  # "options":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v3  # "_hidl_is_oneway":Z
    :sswitch_14b
    and-int/lit8 v4, p4, 0x1

    if-eqz v4, :cond_150

    goto :goto_151

    :cond_150
    move v3, v2

    .line 942
    .restart local v3  # "_hidl_is_oneway":Z
    :goto_151
    if-eqz v3, :cond_15b

    .line 943
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 944
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 945
    goto/16 :goto_2fe

    .line 946
    :cond_15b
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 948
    invoke-virtual {p0}, Landroid/hardware/configstore/V1_0/ISurfaceFlingerConfigs$Stub;->interfaceChain()Ljava/util/ArrayList;

    move-result-object v0

    .line 949
    .local v0, "_hidl_out_descriptors":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 950
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStringVector(Ljava/util/ArrayList;)V

    .line 951
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 952
    goto/16 :goto_2fe

    .line 925
    .end local v0  # "_hidl_out_descriptors":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v3  # "_hidl_is_oneway":Z
    :pswitch_16d  #0xc
    and-int/lit8 v4, p4, 0x1

    if-eqz v4, :cond_172

    goto :goto_173

    :cond_172
    move v3, v2

    .line 926
    .restart local v3  # "_hidl_is_oneway":Z
    :goto_173
    if-eqz v3, :cond_17d

    .line 927
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 928
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 929
    goto/16 :goto_2fe

    .line 930
    :cond_17d
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 932
    invoke-virtual {p0}, Landroid/hardware/configstore/V1_0/ISurfaceFlingerConfigs$Stub;->startGraphicsAllocatorService()Landroid/hardware/configstore/V1_0/OptionalBool;

    move-result-object v0

    .line 933
    .local v0, "_hidl_out_value":Landroid/hardware/configstore/V1_0/OptionalBool;
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 934
    invoke-virtual {v0, p3}, Landroid/hardware/configstore/V1_0/OptionalBool;->writeToParcel(Landroid/os/HwParcel;)V

    .line 935
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 936
    goto/16 :goto_2fe

    .line 909
    .end local v0  # "_hidl_out_value":Landroid/hardware/configstore/V1_0/OptionalBool;
    .end local v3  # "_hidl_is_oneway":Z
    :pswitch_18f  #0xb
    and-int/lit8 v4, p4, 0x1

    if-eqz v4, :cond_194

    goto :goto_195

    :cond_194
    move v3, v2

    .line 910
    .restart local v3  # "_hidl_is_oneway":Z
    :goto_195
    if-eqz v3, :cond_19f

    .line 911
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 912
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 913
    goto/16 :goto_2fe

    .line 914
    :cond_19f
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 916
    invoke-virtual {p0}, Landroid/hardware/configstore/V1_0/ISurfaceFlingerConfigs$Stub;->maxFrameBufferAcquiredBuffers()Landroid/hardware/configstore/V1_0/OptionalInt64;

    move-result-object v0

    .line 917
    .local v0, "_hidl_out_value":Landroid/hardware/configstore/V1_0/OptionalInt64;
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 918
    invoke-virtual {v0, p3}, Landroid/hardware/configstore/V1_0/OptionalInt64;->writeToParcel(Landroid/os/HwParcel;)V

    .line 919
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 920
    goto/16 :goto_2fe

    .line 893
    .end local v0  # "_hidl_out_value":Landroid/hardware/configstore/V1_0/OptionalInt64;
    .end local v3  # "_hidl_is_oneway":Z
    :pswitch_1b1  #0xa
    and-int/lit8 v4, p4, 0x1

    if-eqz v4, :cond_1b6

    goto :goto_1b7

    :cond_1b6
    move v3, v2

    .line 894
    .restart local v3  # "_hidl_is_oneway":Z
    :goto_1b7
    if-eqz v3, :cond_1c1

    .line 895
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 896
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 897
    goto/16 :goto_2fe

    .line 898
    :cond_1c1
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 900
    invoke-virtual {p0}, Landroid/hardware/configstore/V1_0/ISurfaceFlingerConfigs$Stub;->useVrFlinger()Landroid/hardware/configstore/V1_0/OptionalBool;

    move-result-object v0

    .line 901
    .local v0, "_hidl_out_value":Landroid/hardware/configstore/V1_0/OptionalBool;
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 902
    invoke-virtual {v0, p3}, Landroid/hardware/configstore/V1_0/OptionalBool;->writeToParcel(Landroid/os/HwParcel;)V

    .line 903
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 904
    goto/16 :goto_2fe

    .line 877
    .end local v0  # "_hidl_out_value":Landroid/hardware/configstore/V1_0/OptionalBool;
    .end local v3  # "_hidl_is_oneway":Z
    :pswitch_1d3  #0x9
    and-int/lit8 v4, p4, 0x1

    if-eqz v4, :cond_1d8

    goto :goto_1d9

    :cond_1d8
    move v3, v2

    .line 878
    .restart local v3  # "_hidl_is_oneway":Z
    :goto_1d9
    if-eqz v3, :cond_1e3

    .line 879
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 880
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 881
    goto/16 :goto_2fe

    .line 882
    :cond_1e3
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 884
    invoke-virtual {p0}, Landroid/hardware/configstore/V1_0/ISurfaceFlingerConfigs$Stub;->hasSyncFramework()Landroid/hardware/configstore/V1_0/OptionalBool;

    move-result-object v0

    .line 885
    .restart local v0  # "_hidl_out_value":Landroid/hardware/configstore/V1_0/OptionalBool;
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 886
    invoke-virtual {v0, p3}, Landroid/hardware/configstore/V1_0/OptionalBool;->writeToParcel(Landroid/os/HwParcel;)V

    .line 887
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 888
    goto/16 :goto_2fe

    .line 861
    .end local v0  # "_hidl_out_value":Landroid/hardware/configstore/V1_0/OptionalBool;
    .end local v3  # "_hidl_is_oneway":Z
    :pswitch_1f5  #0x8
    and-int/lit8 v4, p4, 0x1

    if-eqz v4, :cond_1fa

    goto :goto_1fb

    :cond_1fa
    move v3, v2

    .line 862
    .restart local v3  # "_hidl_is_oneway":Z
    :goto_1fb
    if-eqz v3, :cond_205

    .line 863
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 864
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 865
    goto/16 :goto_2fe

    .line 866
    :cond_205
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 868
    invoke-virtual {p0}, Landroid/hardware/configstore/V1_0/ISurfaceFlingerConfigs$Stub;->maxVirtualDisplaySize()Landroid/hardware/configstore/V1_0/OptionalUInt64;

    move-result-object v0

    .line 869
    .local v0, "_hidl_out_value":Landroid/hardware/configstore/V1_0/OptionalUInt64;
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 870
    invoke-virtual {v0, p3}, Landroid/hardware/configstore/V1_0/OptionalUInt64;->writeToParcel(Landroid/os/HwParcel;)V

    .line 871
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 872
    goto/16 :goto_2fe

    .line 845
    .end local v0  # "_hidl_out_value":Landroid/hardware/configstore/V1_0/OptionalUInt64;
    .end local v3  # "_hidl_is_oneway":Z
    :pswitch_217  #0x7
    and-int/lit8 v4, p4, 0x1

    if-eqz v4, :cond_21c

    goto :goto_21d

    :cond_21c
    move v3, v2

    .line 846
    .restart local v3  # "_hidl_is_oneway":Z
    :goto_21d
    if-eqz v3, :cond_227

    .line 847
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 848
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 849
    goto/16 :goto_2fe

    .line 850
    :cond_227
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 852
    invoke-virtual {p0}, Landroid/hardware/configstore/V1_0/ISurfaceFlingerConfigs$Stub;->useHwcForRGBtoYUV()Landroid/hardware/configstore/V1_0/OptionalBool;

    move-result-object v0

    .line 853
    .local v0, "_hidl_out_value":Landroid/hardware/configstore/V1_0/OptionalBool;
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 854
    invoke-virtual {v0, p3}, Landroid/hardware/configstore/V1_0/OptionalBool;->writeToParcel(Landroid/os/HwParcel;)V

    .line 855
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 856
    goto/16 :goto_2fe

    .line 829
    .end local v0  # "_hidl_out_value":Landroid/hardware/configstore/V1_0/OptionalBool;
    .end local v3  # "_hidl_is_oneway":Z
    :pswitch_239  #0x6
    and-int/lit8 v4, p4, 0x1

    if-eqz v4, :cond_23e

    goto :goto_23f

    :cond_23e
    move v3, v2

    .line 830
    .restart local v3  # "_hidl_is_oneway":Z
    :goto_23f
    if-eqz v3, :cond_249

    .line 831
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 832
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 833
    goto/16 :goto_2fe

    .line 834
    :cond_249
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 836
    invoke-virtual {p0}, Landroid/hardware/configstore/V1_0/ISurfaceFlingerConfigs$Stub;->presentTimeOffsetFromVSyncNs()Landroid/hardware/configstore/V1_0/OptionalInt64;

    move-result-object v0

    .line 837
    .local v0, "_hidl_out_value":Landroid/hardware/configstore/V1_0/OptionalInt64;
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 838
    invoke-virtual {v0, p3}, Landroid/hardware/configstore/V1_0/OptionalInt64;->writeToParcel(Landroid/os/HwParcel;)V

    .line 839
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 840
    goto/16 :goto_2fe

    .line 813
    .end local v0  # "_hidl_out_value":Landroid/hardware/configstore/V1_0/OptionalInt64;
    .end local v3  # "_hidl_is_oneway":Z
    :pswitch_25b  #0x5
    and-int/lit8 v4, p4, 0x1

    if-eqz v4, :cond_260

    goto :goto_261

    :cond_260
    move v3, v2

    .line 814
    .restart local v3  # "_hidl_is_oneway":Z
    :goto_261
    if-eqz v3, :cond_26b

    .line 815
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 816
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 817
    goto/16 :goto_2fe

    .line 818
    :cond_26b
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 820
    invoke-virtual {p0}, Landroid/hardware/configstore/V1_0/ISurfaceFlingerConfigs$Stub;->hasHDRDisplay()Landroid/hardware/configstore/V1_0/OptionalBool;

    move-result-object v0

    .line 821
    .local v0, "_hidl_out_value":Landroid/hardware/configstore/V1_0/OptionalBool;
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 822
    invoke-virtual {v0, p3}, Landroid/hardware/configstore/V1_0/OptionalBool;->writeToParcel(Landroid/os/HwParcel;)V

    .line 823
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 824
    goto/16 :goto_2fe

    .line 797
    .end local v0  # "_hidl_out_value":Landroid/hardware/configstore/V1_0/OptionalBool;
    .end local v3  # "_hidl_is_oneway":Z
    :pswitch_27d  #0x4
    and-int/lit8 v4, p4, 0x1

    if-eqz v4, :cond_282

    goto :goto_283

    :cond_282
    move v3, v2

    .line 798
    .restart local v3  # "_hidl_is_oneway":Z
    :goto_283
    if-eqz v3, :cond_28d

    .line 799
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 800
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 801
    goto/16 :goto_2fe

    .line 802
    :cond_28d
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 804
    invoke-virtual {p0}, Landroid/hardware/configstore/V1_0/ISurfaceFlingerConfigs$Stub;->hasWideColorDisplay()Landroid/hardware/configstore/V1_0/OptionalBool;

    move-result-object v0

    .line 805
    .restart local v0  # "_hidl_out_value":Landroid/hardware/configstore/V1_0/OptionalBool;
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 806
    invoke-virtual {v0, p3}, Landroid/hardware/configstore/V1_0/OptionalBool;->writeToParcel(Landroid/os/HwParcel;)V

    .line 807
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 808
    goto :goto_2fe

    .line 781
    .end local v0  # "_hidl_out_value":Landroid/hardware/configstore/V1_0/OptionalBool;
    .end local v3  # "_hidl_is_oneway":Z
    :pswitch_29e  #0x3
    and-int/lit8 v4, p4, 0x1

    if-eqz v4, :cond_2a3

    goto :goto_2a4

    :cond_2a3
    move v3, v2

    .line 782
    .restart local v3  # "_hidl_is_oneway":Z
    :goto_2a4
    if-eqz v3, :cond_2ad

    .line 783
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 784
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 785
    goto :goto_2fe

    .line 786
    :cond_2ad
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 788
    invoke-virtual {p0}, Landroid/hardware/configstore/V1_0/ISurfaceFlingerConfigs$Stub;->useContextPriority()Landroid/hardware/configstore/V1_0/OptionalBool;

    move-result-object v0

    .line 789
    .restart local v0  # "_hidl_out_value":Landroid/hardware/configstore/V1_0/OptionalBool;
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 790
    invoke-virtual {v0, p3}, Landroid/hardware/configstore/V1_0/OptionalBool;->writeToParcel(Landroid/os/HwParcel;)V

    .line 791
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 792
    goto :goto_2fe

    .line 765
    .end local v0  # "_hidl_out_value":Landroid/hardware/configstore/V1_0/OptionalBool;
    .end local v3  # "_hidl_is_oneway":Z
    :pswitch_2be  #0x2
    and-int/lit8 v4, p4, 0x1

    if-eqz v4, :cond_2c3

    goto :goto_2c4

    :cond_2c3
    move v3, v2

    .line 766
    .restart local v3  # "_hidl_is_oneway":Z
    :goto_2c4
    if-eqz v3, :cond_2cd

    .line 767
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 768
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 769
    goto :goto_2fe

    .line 770
    :cond_2cd
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 772
    invoke-virtual {p0}, Landroid/hardware/configstore/V1_0/ISurfaceFlingerConfigs$Stub;->vsyncSfEventPhaseOffsetNs()Landroid/hardware/configstore/V1_0/OptionalInt64;

    move-result-object v0

    .line 773
    .local v0, "_hidl_out_value":Landroid/hardware/configstore/V1_0/OptionalInt64;
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 774
    invoke-virtual {v0, p3}, Landroid/hardware/configstore/V1_0/OptionalInt64;->writeToParcel(Landroid/os/HwParcel;)V

    .line 775
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 776
    goto :goto_2fe

    .line 749
    .end local v0  # "_hidl_out_value":Landroid/hardware/configstore/V1_0/OptionalInt64;
    .end local v3  # "_hidl_is_oneway":Z
    :pswitch_2de  #0x1
    and-int/lit8 v4, p4, 0x1

    if-eqz v4, :cond_2e3

    goto :goto_2e4

    :cond_2e3
    move v3, v2

    .line 750
    .restart local v3  # "_hidl_is_oneway":Z
    :goto_2e4
    if-eqz v3, :cond_2ed

    .line 751
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 752
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 753
    goto :goto_2fe

    .line 754
    :cond_2ed
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 756
    invoke-virtual {p0}, Landroid/hardware/configstore/V1_0/ISurfaceFlingerConfigs$Stub;->vsyncEventPhaseOffsetNs()Landroid/hardware/configstore/V1_0/OptionalInt64;

    move-result-object v0

    .line 757
    .restart local v0  # "_hidl_out_value":Landroid/hardware/configstore/V1_0/OptionalInt64;
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 758
    invoke-virtual {v0, p3}, Landroid/hardware/configstore/V1_0/OptionalInt64;->writeToParcel(Landroid/os/HwParcel;)V

    .line 759
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 760
    nop

    .line 1105
    .end local v0  # "_hidl_out_value":Landroid/hardware/configstore/V1_0/OptionalInt64;
    .end local v3  # "_hidl_is_oneway":Z
    :cond_2fe
    :goto_2fe
    return-void

    nop

    :pswitch_data_300
    .packed-switch 0x1
        :pswitch_2de  #00000001
        :pswitch_2be  #00000002
        :pswitch_29e  #00000003
        :pswitch_27d  #00000004
        :pswitch_25b  #00000005
        :pswitch_239  #00000006
        :pswitch_217  #00000007
        :pswitch_1f5  #00000008
        :pswitch_1d3  #00000009
        :pswitch_1b1  #0000000a
        :pswitch_18f  #0000000b
        :pswitch_16d  #0000000c
    .end packed-switch

    :sswitch_data_31c
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

    .line 700
    return-void
.end method

.method public queryLocalInterface(Ljava/lang/String;)Landroid/os/IHwInterface;
    .registers 3
    .param p1, "descriptor"  # Ljava/lang/String;

    .line 728
    const-string v0, "android.hardware.configstore@1.0::ISurfaceFlingerConfigs"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 729
    return-object p0

    .line 731
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

    .line 735
    invoke-virtual {p0, p1}, Landroid/hardware/configstore/V1_0/ISurfaceFlingerConfigs$Stub;->registerService(Ljava/lang/String;)V

    .line 736
    return-void
.end method

.method public final setHALInstrumentation()V
    .registers 1

    .line 690
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 740
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/hardware/configstore/V1_0/ISurfaceFlingerConfigs$Stub;->interfaceDescriptor()Ljava/lang/String;

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

    .line 722
    const/4 v0, 0x1

    return v0
.end method
