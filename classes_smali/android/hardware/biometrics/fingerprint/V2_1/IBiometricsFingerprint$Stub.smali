.class public abstract Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprint$Stub;
.super Landroid/os/HwBinder;
.source "IBiometricsFingerprint.java"

# interfaces
.implements Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprint;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprint;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 648
    invoke-direct {p0}, Landroid/os/HwBinder;-><init>()V

    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IHwBinder;
    .registers 1

    .line 651
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

    .line 664
    .local p2, "options":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    return-void
.end method

.method public final getDebugInfo()Landroid/hidl/base/V1_0/DebugInfo;
    .registers 4

    .line 701
    new-instance v0, Landroid/hidl/base/V1_0/DebugInfo;

    invoke-direct {v0}, Landroid/hidl/base/V1_0/DebugInfo;-><init>()V

    .line 702
    .local v0, "info":Landroid/hidl/base/V1_0/DebugInfo;
    invoke-static {}, Landroid/os/HidlSupport;->getPidIfSharable()I

    move-result v1

    iput v1, v0, Landroid/hidl/base/V1_0/DebugInfo;->pid:I

    .line 703
    const-wide/16 v1, 0x0

    iput-wide v1, v0, Landroid/hidl/base/V1_0/DebugInfo;->ptr:J

    .line 704
    const/4 v1, 0x0

    iput v1, v0, Landroid/hidl/base/V1_0/DebugInfo;->arch:I

    .line 705
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

    .line 676
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
        0x1ft
        -0x43t
        -0x3ft
        -0x8t
        0x52t
        -0x8t
        -0x43t
        0x2et
        0x4at
        0x6ct
        0x5ct
        -0x4dt
        0xat
        -0x3et
        -0x49t
        -0x7at
        0x68t
        -0x37t
        -0x73t
        -0x32t
        0x11t
        -0x76t
        0x61t
        0x76t
        0x2dt
        0x40t
        0x34t
        -0x52t
        -0x7bt
        -0x61t
        0x43t
        -0x28t
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

    .line 656
    new-instance v0, Ljava/util/ArrayList;

    const-string v1, "android.hardware.biometrics.fingerprint@2.1::IBiometricsFingerprint"

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

    .line 670
    const-string v0, "android.hardware.biometrics.fingerprint@2.1::IBiometricsFingerprint"

    return-object v0
.end method

.method public final linkToDeath(Landroid/os/IHwBinder$DeathRecipient;J)Z
    .registers 5
    .param p1, "recipient"  # Landroid/os/IHwBinder$DeathRecipient;
    .param p2, "cookie"  # J

    .line 689
    const/4 v0, 0x1

    return v0
.end method

.method public final notifySyspropsChanged()V
    .registers 1

    .line 711
    invoke-static {}, Landroid/os/HwBinder;->enableInstrumentation()V

    .line 713
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

    .line 741
    const-string v0, "android.hardware.biometrics.fingerprint@2.1::IBiometricsFingerprint"

    const/high16 v1, -0x80000000

    const/4 v2, 0x0

    const/4 v3, 0x1

    packed-switch p1, :pswitch_data_2f6

    const-string v0, "android.hidl.base@1.0::IBase"

    sparse-switch p1, :sswitch_data_30e

    goto/16 :goto_2f4

    .line 1077
    :sswitch_10
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_15

    move v2, v3

    :cond_15
    move v0, v2

    .line 1078
    .local v0, "_hidl_is_oneway":Z
    if-eqz v0, :cond_2f4

    .line 1079
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1080
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1081
    goto/16 :goto_2f4

    .line 1064
    .end local v0  # "_hidl_is_oneway":Z
    :sswitch_20
    and-int/lit8 v4, p4, 0x1

    if-eqz v4, :cond_25

    move v2, v3

    .line 1065
    .local v2, "_hidl_is_oneway":Z
    :cond_25
    if-eq v2, v3, :cond_2f

    .line 1066
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1067
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1068
    goto/16 :goto_2f4

    .line 1069
    :cond_2f
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1071
    invoke-virtual {p0}, Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprint$Stub;->notifySyspropsChanged()V

    .line 1072
    goto/16 :goto_2f4

    .line 1048
    .end local v2  # "_hidl_is_oneway":Z
    :sswitch_37
    and-int/lit8 v4, p4, 0x1

    if-eqz v4, :cond_3c

    goto :goto_3d

    :cond_3c
    move v3, v2

    .line 1049
    .local v3, "_hidl_is_oneway":Z
    :goto_3d
    if-eqz v3, :cond_47

    .line 1050
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1051
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1052
    goto/16 :goto_2f4

    .line 1053
    :cond_47
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1055
    invoke-virtual {p0}, Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprint$Stub;->getDebugInfo()Landroid/hidl/base/V1_0/DebugInfo;

    move-result-object v0

    .line 1056
    .local v0, "_hidl_out_info":Landroid/hidl/base/V1_0/DebugInfo;
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1057
    invoke-virtual {v0, p3}, Landroid/hidl/base/V1_0/DebugInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 1058
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1059
    goto/16 :goto_2f4

    .line 1033
    .end local v0  # "_hidl_out_info":Landroid/hidl/base/V1_0/DebugInfo;
    .end local v3  # "_hidl_is_oneway":Z
    :sswitch_59
    and-int/lit8 v4, p4, 0x1

    if-eqz v4, :cond_5e

    goto :goto_5f

    :cond_5e
    move v3, v2

    .line 1034
    .restart local v3  # "_hidl_is_oneway":Z
    :goto_5f
    if-eqz v3, :cond_69

    .line 1035
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1036
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1037
    goto/16 :goto_2f4

    .line 1038
    :cond_69
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1040
    invoke-virtual {p0}, Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprint$Stub;->ping()V

    .line 1041
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1042
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1043
    goto/16 :goto_2f4

    .line 1023
    .end local v3  # "_hidl_is_oneway":Z
    :sswitch_77
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_7c

    move v2, v3

    :cond_7c
    move v0, v2

    .line 1024
    .local v0, "_hidl_is_oneway":Z
    if-eqz v0, :cond_2f4

    .line 1025
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1026
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1027
    goto/16 :goto_2f4

    .line 1010
    .end local v0  # "_hidl_is_oneway":Z
    :sswitch_87
    and-int/lit8 v4, p4, 0x1

    if-eqz v4, :cond_8c

    move v2, v3

    .line 1011
    .restart local v2  # "_hidl_is_oneway":Z
    :cond_8c
    if-eq v2, v3, :cond_96

    .line 1012
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1013
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1014
    goto/16 :goto_2f4

    .line 1015
    :cond_96
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1017
    invoke-virtual {p0}, Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprint$Stub;->setHALInstrumentation()V

    .line 1018
    goto/16 :goto_2f4

    .line 971
    .end local v2  # "_hidl_is_oneway":Z
    :sswitch_9e
    and-int/lit8 v4, p4, 0x1

    if-eqz v4, :cond_a3

    goto :goto_a4

    :cond_a3
    move v3, v2

    .line 972
    .restart local v3  # "_hidl_is_oneway":Z
    :goto_a4
    if-eqz v3, :cond_ae

    .line 973
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 974
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 975
    goto/16 :goto_2f4

    .line 976
    :cond_ae
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 978
    invoke-virtual {p0}, Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprint$Stub;->getHashChain()Ljava/util/ArrayList;

    move-result-object v0

    .line 979
    .local v0, "_hidl_out_hashchain":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 981
    new-instance v1, Landroid/os/HwBlob;

    const/16 v4, 0x10

    invoke-direct {v1, v4}, Landroid/os/HwBlob;-><init>(I)V

    .line 983
    .local v1, "_hidl_blob":Landroid/os/HwBlob;
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 984
    .local v4, "_hidl_vec_size":I
    const-wide/16 v5, 0x8

    invoke-virtual {v1, v5, v6, v4}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 985
    const-wide/16 v5, 0xc

    invoke-virtual {v1, v5, v6, v2}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 986
    new-instance v2, Landroid/os/HwBlob;

    mul-int/lit8 v5, v4, 0x20

    invoke-direct {v2, v5}, Landroid/os/HwBlob;-><init>(I)V

    .line 987
    .local v2, "childBlob":Landroid/os/HwBlob;
    const/4 v5, 0x0

    .local v5, "_hidl_index_0":I
    :goto_d5
    if-ge v5, v4, :cond_f6

    .line 989
    mul-int/lit8 v6, v5, 0x20

    int-to-long v6, v6

    .line 990
    .local v6, "_hidl_array_offset_1":J
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [B

    .line 992
    .local v8, "_hidl_array_item_1":[B
    if-eqz v8, :cond_ee

    array-length v9, v8

    const/16 v10, 0x20

    if-ne v9, v10, :cond_ee

    .line 996
    invoke-virtual {v2, v6, v7, v8}, Landroid/os/HwBlob;->putInt8Array(J[B)V

    .line 997
    nop

    .line 987
    .end local v6  # "_hidl_array_offset_1":J
    .end local v8  # "_hidl_array_item_1":[B
    add-int/lit8 v5, v5, 0x1

    goto :goto_d5

    .line 993
    .restart local v6  # "_hidl_array_offset_1":J
    .restart local v8  # "_hidl_array_item_1":[B
    :cond_ee
    new-instance v9, Ljava/lang/IllegalArgumentException;

    const-string v10, "Array element is not of the expected length"

    invoke-direct {v9, v10}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 1000
    .end local v5  # "_hidl_index_0":I
    .end local v6  # "_hidl_array_offset_1":J
    .end local v8  # "_hidl_array_item_1":[B
    :cond_f6
    const-wide/16 v5, 0x0

    invoke-virtual {v1, v5, v6, v2}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    .line 1002
    .end local v2  # "childBlob":Landroid/os/HwBlob;
    .end local v4  # "_hidl_vec_size":I
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    .line 1004
    .end local v1  # "_hidl_blob":Landroid/os/HwBlob;
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1005
    goto/16 :goto_2f4

    .line 955
    .end local v0  # "_hidl_out_hashchain":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    .end local v3  # "_hidl_is_oneway":Z
    :sswitch_103
    and-int/lit8 v4, p4, 0x1

    if-eqz v4, :cond_108

    goto :goto_109

    :cond_108
    move v3, v2

    .line 956
    .restart local v3  # "_hidl_is_oneway":Z
    :goto_109
    if-eqz v3, :cond_113

    .line 957
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 958
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 959
    goto/16 :goto_2f4

    .line 960
    :cond_113
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 962
    invoke-virtual {p0}, Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprint$Stub;->interfaceDescriptor()Ljava/lang/String;

    move-result-object v0

    .line 963
    .local v0, "_hidl_out_descriptor":Ljava/lang/String;
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 964
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 965
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 966
    goto/16 :goto_2f4

    .line 938
    .end local v0  # "_hidl_out_descriptor":Ljava/lang/String;
    .end local v3  # "_hidl_is_oneway":Z
    :sswitch_125
    and-int/lit8 v4, p4, 0x1

    if-eqz v4, :cond_12a

    goto :goto_12b

    :cond_12a
    move v3, v2

    .line 939
    .restart local v3  # "_hidl_is_oneway":Z
    :goto_12b
    if-eqz v3, :cond_135

    .line 940
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 941
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 942
    goto/16 :goto_2f4

    .line 943
    :cond_135
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 945
    invoke-virtual {p2}, Landroid/os/HwParcel;->readNativeHandle()Landroid/os/NativeHandle;

    move-result-object v0

    .line 946
    .local v0, "fd":Landroid/os/NativeHandle;
    invoke-virtual {p2}, Landroid/os/HwParcel;->readStringVector()Ljava/util/ArrayList;

    move-result-object v1

    .line 947
    .local v1, "options":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {p0, v0, v1}, Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprint$Stub;->debug(Landroid/os/NativeHandle;Ljava/util/ArrayList;)V

    .line 948
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 949
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 950
    goto/16 :goto_2f4

    .line 922
    .end local v0  # "fd":Landroid/os/NativeHandle;
    .end local v1  # "options":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v3  # "_hidl_is_oneway":Z
    :sswitch_14b
    and-int/lit8 v4, p4, 0x1

    if-eqz v4, :cond_150

    goto :goto_151

    :cond_150
    move v3, v2

    .line 923
    .restart local v3  # "_hidl_is_oneway":Z
    :goto_151
    if-eqz v3, :cond_15b

    .line 924
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 925
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 926
    goto/16 :goto_2f4

    .line 927
    :cond_15b
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 929
    invoke-virtual {p0}, Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprint$Stub;->interfaceChain()Ljava/util/ArrayList;

    move-result-object v0

    .line 930
    .local v0, "_hidl_out_descriptors":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 931
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStringVector(Ljava/util/ArrayList;)V

    .line 932
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 933
    goto/16 :goto_2f4

    .line 904
    .end local v0  # "_hidl_out_descriptors":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v3  # "_hidl_is_oneway":Z
    :pswitch_16d  #0xa
    and-int/lit8 v4, p4, 0x1

    if-eqz v4, :cond_172

    goto :goto_173

    :cond_172
    move v3, v2

    .line 905
    .restart local v3  # "_hidl_is_oneway":Z
    :goto_173
    if-eqz v3, :cond_17d

    .line 906
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 907
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 908
    goto/16 :goto_2f4

    .line 909
    :cond_17d
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 911
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt64()J

    move-result-wide v0

    .line 912
    .local v0, "operationId":J
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v4

    .line 913
    .local v4, "gid":I
    invoke-virtual {p0, v0, v1, v4}, Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprint$Stub;->authenticate(JI)I

    move-result v5

    .line 914
    .local v5, "_hidl_out_debugErrno":I
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 915
    invoke-virtual {p3, v5}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 916
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 917
    goto/16 :goto_2f4

    .line 886
    .end local v0  # "operationId":J
    .end local v3  # "_hidl_is_oneway":Z
    .end local v4  # "gid":I
    .end local v5  # "_hidl_out_debugErrno":I
    :pswitch_197  #0x9
    and-int/lit8 v4, p4, 0x1

    if-eqz v4, :cond_19c

    goto :goto_19d

    :cond_19c
    move v3, v2

    .line 887
    .restart local v3  # "_hidl_is_oneway":Z
    :goto_19d
    if-eqz v3, :cond_1a7

    .line 888
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 889
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 890
    goto/16 :goto_2f4

    .line 891
    :cond_1a7
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 893
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 894
    .local v0, "gid":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 895
    .local v1, "storePath":Ljava/lang/String;
    invoke-virtual {p0, v0, v1}, Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprint$Stub;->setActiveGroup(ILjava/lang/String;)I

    move-result v4

    .line 896
    .local v4, "_hidl_out_debugErrno":I
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 897
    invoke-virtual {p3, v4}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 898
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 899
    goto/16 :goto_2f4

    .line 868
    .end local v0  # "gid":I
    .end local v1  # "storePath":Ljava/lang/String;
    .end local v3  # "_hidl_is_oneway":Z
    .end local v4  # "_hidl_out_debugErrno":I
    :pswitch_1c1  #0x8
    and-int/lit8 v4, p4, 0x1

    if-eqz v4, :cond_1c6

    goto :goto_1c7

    :cond_1c6
    move v3, v2

    .line 869
    .restart local v3  # "_hidl_is_oneway":Z
    :goto_1c7
    if-eqz v3, :cond_1d1

    .line 870
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 871
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 872
    goto/16 :goto_2f4

    .line 873
    :cond_1d1
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 875
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 876
    .restart local v0  # "gid":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 877
    .local v1, "fid":I
    invoke-virtual {p0, v0, v1}, Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprint$Stub;->remove(II)I

    move-result v4

    .line 878
    .restart local v4  # "_hidl_out_debugErrno":I
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 879
    invoke-virtual {p3, v4}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 880
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 881
    goto/16 :goto_2f4

    .line 852
    .end local v0  # "gid":I
    .end local v1  # "fid":I
    .end local v3  # "_hidl_is_oneway":Z
    .end local v4  # "_hidl_out_debugErrno":I
    :pswitch_1eb  #0x7
    and-int/lit8 v4, p4, 0x1

    if-eqz v4, :cond_1f0

    goto :goto_1f1

    :cond_1f0
    move v3, v2

    .line 853
    .restart local v3  # "_hidl_is_oneway":Z
    :goto_1f1
    if-eqz v3, :cond_1fb

    .line 854
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 855
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 856
    goto/16 :goto_2f4

    .line 857
    :cond_1fb
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 859
    invoke-virtual {p0}, Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprint$Stub;->enumerate()I

    move-result v0

    .line 860
    .local v0, "_hidl_out_debugErrno":I
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 861
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 862
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 863
    goto/16 :goto_2f4

    .line 836
    .end local v0  # "_hidl_out_debugErrno":I
    .end local v3  # "_hidl_is_oneway":Z
    :pswitch_20d  #0x6
    and-int/lit8 v4, p4, 0x1

    if-eqz v4, :cond_212

    goto :goto_213

    :cond_212
    move v3, v2

    .line 837
    .restart local v3  # "_hidl_is_oneway":Z
    :goto_213
    if-eqz v3, :cond_21d

    .line 838
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 839
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 840
    goto/16 :goto_2f4

    .line 841
    :cond_21d
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 843
    invoke-virtual {p0}, Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprint$Stub;->cancel()I

    move-result v0

    .line 844
    .restart local v0  # "_hidl_out_debugErrno":I
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 845
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 846
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 847
    goto/16 :goto_2f4

    .line 820
    .end local v0  # "_hidl_out_debugErrno":I
    .end local v3  # "_hidl_is_oneway":Z
    :pswitch_22f  #0x5
    and-int/lit8 v4, p4, 0x1

    if-eqz v4, :cond_234

    goto :goto_235

    :cond_234
    move v3, v2

    .line 821
    .restart local v3  # "_hidl_is_oneway":Z
    :goto_235
    if-eqz v3, :cond_23f

    .line 822
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 823
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 824
    goto/16 :goto_2f4

    .line 825
    :cond_23f
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 827
    invoke-virtual {p0}, Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprint$Stub;->getAuthenticatorId()J

    move-result-wide v0

    .line 828
    .local v0, "_hidl_out_AuthenticatorId":J
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 829
    invoke-virtual {p3, v0, v1}, Landroid/os/HwParcel;->writeInt64(J)V

    .line 830
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 831
    goto/16 :goto_2f4

    .line 804
    .end local v0  # "_hidl_out_AuthenticatorId":J
    .end local v3  # "_hidl_is_oneway":Z
    :pswitch_251  #0x4
    and-int/lit8 v4, p4, 0x1

    if-eqz v4, :cond_256

    goto :goto_257

    :cond_256
    move v3, v2

    .line 805
    .restart local v3  # "_hidl_is_oneway":Z
    :goto_257
    if-eqz v3, :cond_261

    .line 806
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 807
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 808
    goto/16 :goto_2f4

    .line 809
    :cond_261
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 811
    invoke-virtual {p0}, Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprint$Stub;->postEnroll()I

    move-result v0

    .line 812
    .local v0, "_hidl_out_debugErrno":I
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 813
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 814
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 815
    goto/16 :goto_2f4

    .line 777
    .end local v0  # "_hidl_out_debugErrno":I
    .end local v3  # "_hidl_is_oneway":Z
    :pswitch_273  #0x3
    and-int/lit8 v4, p4, 0x1

    if-eqz v4, :cond_278

    goto :goto_279

    :cond_278
    move v3, v2

    .line 778
    .restart local v3  # "_hidl_is_oneway":Z
    :goto_279
    if-eqz v3, :cond_283

    .line 779
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 780
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 781
    goto/16 :goto_2f4

    .line 782
    :cond_283
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 784
    const/16 v0, 0x45

    new-array v1, v0, [B

    .line 786
    .local v1, "hat":[B
    const-wide/16 v4, 0x45

    invoke-virtual {p2, v4, v5}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    move-result-object v4

    .line 788
    .local v4, "_hidl_blob":Landroid/os/HwBlob;
    const-wide/16 v5, 0x0

    .line 789
    .local v5, "_hidl_array_offset_0":J
    invoke-virtual {v4, v5, v6, v1, v0}, Landroid/os/HwBlob;->copyToInt8Array(J[BI)V

    .line 790
    nop

    .line 793
    .end local v4  # "_hidl_blob":Landroid/os/HwBlob;
    .end local v5  # "_hidl_array_offset_0":J
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 794
    .local v0, "gid":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v4

    .line 795
    .local v4, "timeoutSec":I
    invoke-virtual {p0, v1, v0, v4}, Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprint$Stub;->enroll([BII)I

    move-result v5

    .line 796
    .local v5, "_hidl_out_debugErrno":I
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 797
    invoke-virtual {p3, v5}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 798
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 799
    goto :goto_2f4

    .line 761
    .end local v0  # "gid":I
    .end local v1  # "hat":[B
    .end local v3  # "_hidl_is_oneway":Z
    .end local v4  # "timeoutSec":I
    .end local v5  # "_hidl_out_debugErrno":I
    :pswitch_2ac  #0x2
    and-int/lit8 v4, p4, 0x1

    if-eqz v4, :cond_2b1

    goto :goto_2b2

    :cond_2b1
    move v3, v2

    .line 762
    .restart local v3  # "_hidl_is_oneway":Z
    :goto_2b2
    if-eqz v3, :cond_2bb

    .line 763
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 764
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 765
    goto :goto_2f4

    .line 766
    :cond_2bb
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 768
    invoke-virtual {p0}, Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprint$Stub;->preEnroll()J

    move-result-wide v0

    .line 769
    .local v0, "_hidl_out_authChallenge":J
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 770
    invoke-virtual {p3, v0, v1}, Landroid/os/HwParcel;->writeInt64(J)V

    .line 771
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 772
    goto :goto_2f4

    .line 744
    .end local v0  # "_hidl_out_authChallenge":J
    .end local v3  # "_hidl_is_oneway":Z
    :pswitch_2cc  #0x1
    and-int/lit8 v4, p4, 0x1

    if-eqz v4, :cond_2d1

    goto :goto_2d2

    :cond_2d1
    move v3, v2

    .line 745
    .restart local v3  # "_hidl_is_oneway":Z
    :goto_2d2
    if-eqz v3, :cond_2db

    .line 746
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 747
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 748
    goto :goto_2f4

    .line 749
    :cond_2db
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 751
    invoke-virtual {p2}, Landroid/os/HwParcel;->readStrongBinder()Landroid/os/IHwBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprintClientCallback;->asInterface(Landroid/os/IHwBinder;)Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprintClientCallback;

    move-result-object v0

    .line 752
    .local v0, "clientCallback":Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprintClientCallback;
    invoke-virtual {p0, v0}, Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprint$Stub;->setNotify(Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprintClientCallback;)J

    move-result-wide v4

    .line 753
    .local v4, "_hidl_out_deviceId":J
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 754
    invoke-virtual {p3, v4, v5}, Landroid/os/HwParcel;->writeInt64(J)V

    .line 755
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 756
    nop

    .line 1086
    .end local v0  # "clientCallback":Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprintClientCallback;
    .end local v3  # "_hidl_is_oneway":Z
    .end local v4  # "_hidl_out_deviceId":J
    :cond_2f4
    :goto_2f4
    return-void

    nop

    :pswitch_data_2f6
    .packed-switch 0x1
        :pswitch_2cc  #00000001
        :pswitch_2ac  #00000002
        :pswitch_273  #00000003
        :pswitch_251  #00000004
        :pswitch_22f  #00000005
        :pswitch_20d  #00000006
        :pswitch_1eb  #00000007
        :pswitch_1c1  #00000008
        :pswitch_197  #00000009
        :pswitch_16d  #0000000a
    .end packed-switch

    :sswitch_data_30e
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

    .line 695
    return-void
.end method

.method public queryLocalInterface(Ljava/lang/String;)Landroid/os/IHwInterface;
    .registers 3
    .param p1, "descriptor"  # Ljava/lang/String;

    .line 723
    const-string v0, "android.hardware.biometrics.fingerprint@2.1::IBiometricsFingerprint"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 724
    return-object p0

    .line 726
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

    .line 730
    invoke-virtual {p0, p1}, Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprint$Stub;->registerService(Ljava/lang/String;)V

    .line 731
    return-void
.end method

.method public final setHALInstrumentation()V
    .registers 1

    .line 685
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 735
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprint$Stub;->interfaceDescriptor()Ljava/lang/String;

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

    .line 717
    const/4 v0, 0x1

    return v0
.end method
