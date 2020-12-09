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
    return-void
.end method

.method public final getDebugInfo()Landroid/hidl/base/V1_0/DebugInfo;
    .registers 4

    .line 701
    new-instance v0, Landroid/hidl/base/V1_0/DebugInfo;

    invoke-direct {v0}, Landroid/hidl/base/V1_0/DebugInfo;-><init>()V

    .line 702
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
    .registers 4

    .line 689
    const/4 p1, 0x1

    return p1
.end method

.method public final notifySyspropsChanged()V
    .registers 1

    .line 711
    invoke-static {}, Landroid/os/HwBinder;->enableInstrumentation()V

    .line 713
    return-void
.end method

.method public onTransact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V
    .registers 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 741
    const-wide/16 v0, 0x0

    const-string v2, "android.hardware.biometrics.fingerprint@2.1::IBiometricsFingerprint"

    const/high16 v3, -0x80000000

    const/4 v4, 0x0

    const/4 v5, 0x1

    packed-switch p1, :pswitch_data_2f2

    const-string v2, "android.hidl.base@1.0::IBase"

    sparse-switch p1, :sswitch_data_30a

    goto/16 :goto_2f1

    .line 1077
    :sswitch_12
    and-int/lit8 p1, p4, 0x1

    if-eqz p1, :cond_17

    move v4, v5

    .line 1078
    :cond_17
    if-eqz v4, :cond_2f1

    .line 1079
    invoke-virtual {p3, v3}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1080
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1081
    goto/16 :goto_2f1

    .line 1064
    :sswitch_21
    and-int/lit8 p1, p4, 0x1

    if-eqz p1, :cond_26

    move v4, v5

    .line 1065
    :cond_26
    if-eq v4, v5, :cond_30

    .line 1066
    invoke-virtual {p3, v3}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1067
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1068
    goto/16 :goto_2f1

    .line 1069
    :cond_30
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1071
    invoke-virtual {p0}, Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprint$Stub;->notifySyspropsChanged()V

    .line 1072
    goto/16 :goto_2f1

    .line 1048
    :sswitch_38
    and-int/lit8 p1, p4, 0x1

    if-eqz p1, :cond_3d

    goto :goto_3e

    :cond_3d
    move v5, v4

    .line 1049
    :goto_3e
    if-eqz v5, :cond_48

    .line 1050
    invoke-virtual {p3, v3}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1051
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1052
    goto/16 :goto_2f1

    .line 1053
    :cond_48
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1055
    invoke-virtual {p0}, Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprint$Stub;->getDebugInfo()Landroid/hidl/base/V1_0/DebugInfo;

    move-result-object p1

    .line 1056
    invoke-virtual {p3, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1057
    invoke-virtual {p1, p3}, Landroid/hidl/base/V1_0/DebugInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 1058
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1059
    goto/16 :goto_2f1

    .line 1033
    :sswitch_5a
    and-int/lit8 p1, p4, 0x1

    if-eqz p1, :cond_5f

    goto :goto_60

    :cond_5f
    move v5, v4

    .line 1034
    :goto_60
    if-eqz v5, :cond_6a

    .line 1035
    invoke-virtual {p3, v3}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1036
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1037
    goto/16 :goto_2f1

    .line 1038
    :cond_6a
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1040
    invoke-virtual {p0}, Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprint$Stub;->ping()V

    .line 1041
    invoke-virtual {p3, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1042
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1043
    goto/16 :goto_2f1

    .line 1023
    :sswitch_78
    and-int/lit8 p1, p4, 0x1

    if-eqz p1, :cond_7d

    move v4, v5

    .line 1024
    :cond_7d
    if-eqz v4, :cond_2f1

    .line 1025
    invoke-virtual {p3, v3}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1026
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1027
    goto/16 :goto_2f1

    .line 1010
    :sswitch_87
    and-int/lit8 p1, p4, 0x1

    if-eqz p1, :cond_8c

    move v4, v5

    .line 1011
    :cond_8c
    if-eq v4, v5, :cond_96

    .line 1012
    invoke-virtual {p3, v3}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1013
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1014
    goto/16 :goto_2f1

    .line 1015
    :cond_96
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1017
    invoke-virtual {p0}, Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprint$Stub;->setHALInstrumentation()V

    .line 1018
    goto/16 :goto_2f1

    .line 971
    :sswitch_9e
    and-int/lit8 p1, p4, 0x1

    if-eqz p1, :cond_a3

    goto :goto_a4

    :cond_a3
    move v5, v4

    .line 972
    :goto_a4
    if-eqz v5, :cond_ae

    .line 973
    invoke-virtual {p3, v3}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 974
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 975
    goto/16 :goto_2f1

    .line 976
    :cond_ae
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 978
    invoke-virtual {p0}, Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprint$Stub;->getHashChain()Ljava/util/ArrayList;

    move-result-object p1

    .line 979
    invoke-virtual {p3, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 981
    new-instance p2, Landroid/os/HwBlob;

    const/16 p4, 0x10

    invoke-direct {p2, p4}, Landroid/os/HwBlob;-><init>(I)V

    .line 983
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p4

    .line 984
    const-wide/16 v2, 0x8

    invoke-virtual {p2, v2, v3, p4}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 985
    const-wide/16 v2, 0xc

    invoke-virtual {p2, v2, v3, v4}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 986
    new-instance v2, Landroid/os/HwBlob;

    mul-int/lit8 v3, p4, 0x20

    invoke-direct {v2, v3}, Landroid/os/HwBlob;-><init>(I)V

    .line 987
    nop

    :goto_d5
    if-ge v4, p4, :cond_f6

    .line 989
    mul-int/lit8 v3, v4, 0x20

    int-to-long v5, v3

    .line 990
    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [B

    .line 992
    if-eqz v3, :cond_ee

    array-length v7, v3

    const/16 v8, 0x20

    if-ne v7, v8, :cond_ee

    .line 996
    invoke-virtual {v2, v5, v6, v3}, Landroid/os/HwBlob;->putInt8Array(J[B)V

    .line 997
    nop

    .line 987
    add-int/lit8 v4, v4, 0x1

    goto :goto_d5

    .line 993
    :cond_ee
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Array element is not of the expected length"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1000
    :cond_f6
    invoke-virtual {p2, v0, v1, v2}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    .line 1002
    invoke-virtual {p3, p2}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    .line 1004
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1005
    goto/16 :goto_2f1

    .line 955
    :sswitch_101
    and-int/lit8 p1, p4, 0x1

    if-eqz p1, :cond_106

    goto :goto_107

    :cond_106
    move v5, v4

    .line 956
    :goto_107
    if-eqz v5, :cond_111

    .line 957
    invoke-virtual {p3, v3}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 958
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 959
    goto/16 :goto_2f1

    .line 960
    :cond_111
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 962
    invoke-virtual {p0}, Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprint$Stub;->interfaceDescriptor()Ljava/lang/String;

    move-result-object p1

    .line 963
    invoke-virtual {p3, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 964
    invoke-virtual {p3, p1}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 965
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 966
    goto/16 :goto_2f1

    .line 938
    :sswitch_123
    and-int/lit8 p1, p4, 0x1

    if-eqz p1, :cond_128

    goto :goto_129

    :cond_128
    move v5, v4

    .line 939
    :goto_129
    if-eqz v5, :cond_133

    .line 940
    invoke-virtual {p3, v3}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 941
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 942
    goto/16 :goto_2f1

    .line 943
    :cond_133
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 945
    invoke-virtual {p2}, Landroid/os/HwParcel;->readNativeHandle()Landroid/os/NativeHandle;

    move-result-object p1

    .line 946
    invoke-virtual {p2}, Landroid/os/HwParcel;->readStringVector()Ljava/util/ArrayList;

    move-result-object p2

    .line 947
    invoke-virtual {p0, p1, p2}, Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprint$Stub;->debug(Landroid/os/NativeHandle;Ljava/util/ArrayList;)V

    .line 948
    invoke-virtual {p3, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 949
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 950
    goto/16 :goto_2f1

    .line 922
    :sswitch_149
    and-int/lit8 p1, p4, 0x1

    if-eqz p1, :cond_14e

    goto :goto_14f

    :cond_14e
    move v5, v4

    .line 923
    :goto_14f
    if-eqz v5, :cond_159

    .line 924
    invoke-virtual {p3, v3}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 925
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 926
    goto/16 :goto_2f1

    .line 927
    :cond_159
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 929
    invoke-virtual {p0}, Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprint$Stub;->interfaceChain()Ljava/util/ArrayList;

    move-result-object p1

    .line 930
    invoke-virtual {p3, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 931
    invoke-virtual {p3, p1}, Landroid/os/HwParcel;->writeStringVector(Ljava/util/ArrayList;)V

    .line 932
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 933
    goto/16 :goto_2f1

    .line 904
    :pswitch_16b  #0xa
    and-int/lit8 p1, p4, 0x1

    if-eqz p1, :cond_170

    goto :goto_171

    :cond_170
    move v5, v4

    .line 905
    :goto_171
    if-eqz v5, :cond_17b

    .line 906
    invoke-virtual {p3, v3}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 907
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 908
    goto/16 :goto_2f1

    .line 909
    :cond_17b
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 911
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt64()J

    move-result-wide v0

    .line 912
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p1

    .line 913
    invoke-virtual {p0, v0, v1, p1}, Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprint$Stub;->authenticate(JI)I

    move-result p1

    .line 914
    invoke-virtual {p3, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 915
    invoke-virtual {p3, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 916
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 917
    goto/16 :goto_2f1

    .line 886
    :pswitch_195  #0x9
    and-int/lit8 p1, p4, 0x1

    if-eqz p1, :cond_19a

    goto :goto_19b

    :cond_19a
    move v5, v4

    .line 887
    :goto_19b
    if-eqz v5, :cond_1a5

    .line 888
    invoke-virtual {p3, v3}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 889
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 890
    goto/16 :goto_2f1

    .line 891
    :cond_1a5
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 893
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p1

    .line 894
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object p2

    .line 895
    invoke-virtual {p0, p1, p2}, Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprint$Stub;->setActiveGroup(ILjava/lang/String;)I

    move-result p1

    .line 896
    invoke-virtual {p3, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 897
    invoke-virtual {p3, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 898
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 899
    goto/16 :goto_2f1

    .line 868
    :pswitch_1bf  #0x8
    and-int/lit8 p1, p4, 0x1

    if-eqz p1, :cond_1c4

    goto :goto_1c5

    :cond_1c4
    move v5, v4

    .line 869
    :goto_1c5
    if-eqz v5, :cond_1cf

    .line 870
    invoke-virtual {p3, v3}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 871
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 872
    goto/16 :goto_2f1

    .line 873
    :cond_1cf
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 875
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p1

    .line 876
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p2

    .line 877
    invoke-virtual {p0, p1, p2}, Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprint$Stub;->remove(II)I

    move-result p1

    .line 878
    invoke-virtual {p3, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 879
    invoke-virtual {p3, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 880
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 881
    goto/16 :goto_2f1

    .line 852
    :pswitch_1e9  #0x7
    and-int/lit8 p1, p4, 0x1

    if-eqz p1, :cond_1ee

    goto :goto_1ef

    :cond_1ee
    move v5, v4

    .line 853
    :goto_1ef
    if-eqz v5, :cond_1f9

    .line 854
    invoke-virtual {p3, v3}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 855
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 856
    goto/16 :goto_2f1

    .line 857
    :cond_1f9
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 859
    invoke-virtual {p0}, Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprint$Stub;->enumerate()I

    move-result p1

    .line 860
    invoke-virtual {p3, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 861
    invoke-virtual {p3, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 862
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 863
    goto/16 :goto_2f1

    .line 836
    :pswitch_20b  #0x6
    and-int/lit8 p1, p4, 0x1

    if-eqz p1, :cond_210

    goto :goto_211

    :cond_210
    move v5, v4

    .line 837
    :goto_211
    if-eqz v5, :cond_21b

    .line 838
    invoke-virtual {p3, v3}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 839
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 840
    goto/16 :goto_2f1

    .line 841
    :cond_21b
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 843
    invoke-virtual {p0}, Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprint$Stub;->cancel()I

    move-result p1

    .line 844
    invoke-virtual {p3, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 845
    invoke-virtual {p3, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 846
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 847
    goto/16 :goto_2f1

    .line 820
    :pswitch_22d  #0x5
    and-int/lit8 p1, p4, 0x1

    if-eqz p1, :cond_232

    goto :goto_233

    :cond_232
    move v5, v4

    .line 821
    :goto_233
    if-eqz v5, :cond_23d

    .line 822
    invoke-virtual {p3, v3}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 823
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 824
    goto/16 :goto_2f1

    .line 825
    :cond_23d
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 827
    invoke-virtual {p0}, Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprint$Stub;->getAuthenticatorId()J

    move-result-wide p1

    .line 828
    invoke-virtual {p3, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 829
    invoke-virtual {p3, p1, p2}, Landroid/os/HwParcel;->writeInt64(J)V

    .line 830
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 831
    goto/16 :goto_2f1

    .line 804
    :pswitch_24f  #0x4
    and-int/lit8 p1, p4, 0x1

    if-eqz p1, :cond_254

    goto :goto_255

    :cond_254
    move v5, v4

    .line 805
    :goto_255
    if-eqz v5, :cond_25f

    .line 806
    invoke-virtual {p3, v3}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 807
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 808
    goto/16 :goto_2f1

    .line 809
    :cond_25f
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 811
    invoke-virtual {p0}, Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprint$Stub;->postEnroll()I

    move-result p1

    .line 812
    invoke-virtual {p3, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 813
    invoke-virtual {p3, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 814
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 815
    goto/16 :goto_2f1

    .line 777
    :pswitch_271  #0x3
    and-int/lit8 p1, p4, 0x1

    if-eqz p1, :cond_276

    goto :goto_277

    :cond_276
    move v5, v4

    .line 778
    :goto_277
    if-eqz v5, :cond_281

    .line 779
    invoke-virtual {p3, v3}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 780
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 781
    goto/16 :goto_2f1

    .line 782
    :cond_281
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 784
    const/16 p1, 0x45

    new-array p4, p1, [B

    .line 786
    const-wide/16 v2, 0x45

    invoke-virtual {p2, v2, v3}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    move-result-object v2

    .line 788
    nop

    .line 789
    invoke-virtual {v2, v0, v1, p4, p1}, Landroid/os/HwBlob;->copyToInt8Array(J[BI)V

    .line 790
    nop

    .line 793
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p1

    .line 794
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p2

    .line 795
    invoke-virtual {p0, p4, p1, p2}, Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprint$Stub;->enroll([BII)I

    move-result p1

    .line 796
    invoke-virtual {p3, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 797
    invoke-virtual {p3, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 798
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 799
    goto :goto_2f1

    .line 761
    :pswitch_2a9  #0x2
    and-int/lit8 p1, p4, 0x1

    if-eqz p1, :cond_2ae

    goto :goto_2af

    :cond_2ae
    move v5, v4

    .line 762
    :goto_2af
    if-eqz v5, :cond_2b8

    .line 763
    invoke-virtual {p3, v3}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 764
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 765
    goto :goto_2f1

    .line 766
    :cond_2b8
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 768
    invoke-virtual {p0}, Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprint$Stub;->preEnroll()J

    move-result-wide p1

    .line 769
    invoke-virtual {p3, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 770
    invoke-virtual {p3, p1, p2}, Landroid/os/HwParcel;->writeInt64(J)V

    .line 771
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 772
    goto :goto_2f1

    .line 744
    :pswitch_2c9  #0x1
    and-int/lit8 p1, p4, 0x1

    if-eqz p1, :cond_2ce

    goto :goto_2cf

    :cond_2ce
    move v5, v4

    .line 745
    :goto_2cf
    if-eqz v5, :cond_2d8

    .line 746
    invoke-virtual {p3, v3}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 747
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 748
    goto :goto_2f1

    .line 749
    :cond_2d8
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 751
    invoke-virtual {p2}, Landroid/os/HwParcel;->readStrongBinder()Landroid/os/IHwBinder;

    move-result-object p1

    invoke-static {p1}, Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprintClientCallback;->asInterface(Landroid/os/IHwBinder;)Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprintClientCallback;

    move-result-object p1

    .line 752
    invoke-virtual {p0, p1}, Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprint$Stub;->setNotify(Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprintClientCallback;)J

    move-result-wide p1

    .line 753
    invoke-virtual {p3, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 754
    invoke-virtual {p3, p1, p2}, Landroid/os/HwParcel;->writeInt64(J)V

    .line 755
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 756
    nop

    .line 1086
    :cond_2f1
    :goto_2f1
    return-void

    :pswitch_data_2f2
    .packed-switch 0x1
        :pswitch_2c9  #00000001
        :pswitch_2a9  #00000002
        :pswitch_271  #00000003
        :pswitch_24f  #00000004
        :pswitch_22d  #00000005
        :pswitch_20b  #00000006
        :pswitch_1e9  #00000007
        :pswitch_1bf  #00000008
        :pswitch_195  #00000009
        :pswitch_16b  #0000000a
    .end packed-switch

    :sswitch_data_30a
    .sparse-switch
        0xf43484e -> :sswitch_149
        0xf444247 -> :sswitch_123
        0xf445343 -> :sswitch_101
        0xf485348 -> :sswitch_9e
        0xf494e54 -> :sswitch_87
        0xf4c5444 -> :sswitch_78
        0xf504e47 -> :sswitch_5a
        0xf524546 -> :sswitch_38
        0xf535953 -> :sswitch_21
        0xf555444 -> :sswitch_12
    .end sparse-switch
.end method

.method public final ping()V
    .registers 1

    .line 695
    return-void
.end method

.method public queryLocalInterface(Ljava/lang/String;)Landroid/os/IHwInterface;
    .registers 3

    .line 723
    const-string v0, "android.hardware.biometrics.fingerprint@2.1::IBiometricsFingerprint"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_9

    .line 724
    return-object p0

    .line 726
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
    .registers 2

    .line 717
    const/4 p1, 0x1

    return p1
.end method
