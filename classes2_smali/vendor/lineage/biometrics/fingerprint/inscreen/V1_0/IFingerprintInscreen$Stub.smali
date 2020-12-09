.class public abstract Lvendor/lineage/biometrics/fingerprint/inscreen/V1_0/IFingerprintInscreen$Stub;
.super Landroid/os/HwBinder;
.source "IFingerprintInscreen.java"

# interfaces
.implements Lvendor/lineage/biometrics/fingerprint/inscreen/V1_0/IFingerprintInscreen;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lvendor/lineage/biometrics/fingerprint/inscreen/V1_0/IFingerprintInscreen;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 656
    invoke-direct {p0}, Landroid/os/HwBinder;-><init>()V

    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IHwBinder;
    .registers 1

    .line 659
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

    .line 672
    return-void
.end method

.method public final getDebugInfo()Landroid/hidl/base/V1_0/DebugInfo;
    .registers 4

    .line 709
    new-instance v0, Landroid/hidl/base/V1_0/DebugInfo;

    invoke-direct {v0}, Landroid/hidl/base/V1_0/DebugInfo;-><init>()V

    .line 710
    invoke-static {}, Landroid/os/HidlSupport;->getPidIfSharable()I

    move-result v1

    iput v1, v0, Landroid/hidl/base/V1_0/DebugInfo;->pid:I

    .line 711
    const-wide/16 v1, 0x0

    iput-wide v1, v0, Landroid/hidl/base/V1_0/DebugInfo;->ptr:J

    .line 712
    const/4 v1, 0x0

    iput v1, v0, Landroid/hidl/base/V1_0/DebugInfo;->arch:I

    .line 713
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

    .line 684
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
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
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

    .line 664
    new-instance v0, Ljava/util/ArrayList;

    const-string v1, "vendor.lineage.biometrics.fingerprint.inscreen@1.0::IFingerprintInscreen"

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

    .line 678
    const-string v0, "vendor.lineage.biometrics.fingerprint.inscreen@1.0::IFingerprintInscreen"

    return-object v0
.end method

.method public final linkToDeath(Landroid/os/IHwBinder$DeathRecipient;J)Z
    .registers 4

    .line 697
    const/4 p1, 0x1

    return p1
.end method

.method public final notifySyspropsChanged()V
    .registers 1

    .line 719
    invoke-static {}, Landroid/os/HwBinder;->enableInstrumentation()V

    .line 721
    return-void
.end method

.method public onTransact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V
    .registers 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 749
    const-string v0, "vendor.lineage.biometrics.fingerprint.inscreen@1.0::IFingerprintInscreen"

    const/high16 v1, -0x80000000

    const/4 v2, 0x0

    const/4 v3, 0x1

    packed-switch p1, :pswitch_data_35c

    const-string v0, "android.hidl.base@1.0::IBase"

    sparse-switch p1, :sswitch_data_37e

    goto/16 :goto_35b

    .line 1144
    :sswitch_10
    and-int/lit8 p1, p4, 0x1

    if-eqz p1, :cond_15

    move v2, v3

    .line 1145
    :cond_15
    if-eqz v2, :cond_35b

    .line 1146
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1147
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1148
    goto/16 :goto_35b

    .line 1131
    :sswitch_1f
    and-int/lit8 p1, p4, 0x1

    if-eqz p1, :cond_24

    move v2, v3

    .line 1132
    :cond_24
    if-eq v2, v3, :cond_2e

    .line 1133
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1134
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1135
    goto/16 :goto_35b

    .line 1136
    :cond_2e
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1138
    invoke-virtual {p0}, Lvendor/lineage/biometrics/fingerprint/inscreen/V1_0/IFingerprintInscreen$Stub;->notifySyspropsChanged()V

    .line 1139
    goto/16 :goto_35b

    .line 1115
    :sswitch_36
    and-int/lit8 p1, p4, 0x1

    if-eqz p1, :cond_3b

    goto :goto_3c

    :cond_3b
    move v3, v2

    .line 1116
    :goto_3c
    if-eqz v3, :cond_46

    .line 1117
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1118
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1119
    goto/16 :goto_35b

    .line 1120
    :cond_46
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1122
    invoke-virtual {p0}, Lvendor/lineage/biometrics/fingerprint/inscreen/V1_0/IFingerprintInscreen$Stub;->getDebugInfo()Landroid/hidl/base/V1_0/DebugInfo;

    move-result-object p1

    .line 1123
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1124
    invoke-virtual {p1, p3}, Landroid/hidl/base/V1_0/DebugInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 1125
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1126
    goto/16 :goto_35b

    .line 1100
    :sswitch_58
    and-int/lit8 p1, p4, 0x1

    if-eqz p1, :cond_5d

    goto :goto_5e

    :cond_5d
    move v3, v2

    .line 1101
    :goto_5e
    if-eqz v3, :cond_68

    .line 1102
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1103
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1104
    goto/16 :goto_35b

    .line 1105
    :cond_68
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1107
    invoke-virtual {p0}, Lvendor/lineage/biometrics/fingerprint/inscreen/V1_0/IFingerprintInscreen$Stub;->ping()V

    .line 1108
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1109
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1110
    goto/16 :goto_35b

    .line 1090
    :sswitch_76
    and-int/lit8 p1, p4, 0x1

    if-eqz p1, :cond_7b

    move v2, v3

    .line 1091
    :cond_7b
    if-eqz v2, :cond_35b

    .line 1092
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1093
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1094
    goto/16 :goto_35b

    .line 1077
    :sswitch_85
    and-int/lit8 p1, p4, 0x1

    if-eqz p1, :cond_8a

    move v2, v3

    .line 1078
    :cond_8a
    if-eq v2, v3, :cond_94

    .line 1079
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1080
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1081
    goto/16 :goto_35b

    .line 1082
    :cond_94
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1084
    invoke-virtual {p0}, Lvendor/lineage/biometrics/fingerprint/inscreen/V1_0/IFingerprintInscreen$Stub;->setHALInstrumentation()V

    .line 1085
    goto/16 :goto_35b

    .line 1038
    :sswitch_9c
    and-int/lit8 p1, p4, 0x1

    if-eqz p1, :cond_a1

    goto :goto_a2

    :cond_a1
    move v3, v2

    .line 1039
    :goto_a2
    if-eqz v3, :cond_ac

    .line 1040
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1041
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1042
    goto/16 :goto_35b

    .line 1043
    :cond_ac
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1045
    invoke-virtual {p0}, Lvendor/lineage/biometrics/fingerprint/inscreen/V1_0/IFingerprintInscreen$Stub;->getHashChain()Ljava/util/ArrayList;

    move-result-object p1

    .line 1046
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1048
    new-instance p2, Landroid/os/HwBlob;

    const/16 p4, 0x10

    invoke-direct {p2, p4}, Landroid/os/HwBlob;-><init>(I)V

    .line 1050
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p4

    .line 1051
    const-wide/16 v0, 0x8

    invoke-virtual {p2, v0, v1, p4}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 1052
    const-wide/16 v0, 0xc

    invoke-virtual {p2, v0, v1, v2}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 1053
    new-instance v0, Landroid/os/HwBlob;

    mul-int/lit8 v1, p4, 0x20

    invoke-direct {v0, v1}, Landroid/os/HwBlob;-><init>(I)V

    .line 1054
    nop

    :goto_d3
    if-ge v2, p4, :cond_f4

    .line 1056
    mul-int/lit8 v1, v2, 0x20

    int-to-long v3, v1

    .line 1057
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    .line 1059
    if-eqz v1, :cond_ec

    array-length v5, v1

    const/16 v6, 0x20

    if-ne v5, v6, :cond_ec

    .line 1063
    invoke-virtual {v0, v3, v4, v1}, Landroid/os/HwBlob;->putInt8Array(J[B)V

    .line 1064
    nop

    .line 1054
    add-int/lit8 v2, v2, 0x1

    goto :goto_d3

    .line 1060
    :cond_ec
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Array element is not of the expected length"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1067
    :cond_f4
    const-wide/16 v1, 0x0

    invoke-virtual {p2, v1, v2, v0}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    .line 1069
    invoke-virtual {p3, p2}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    .line 1071
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1072
    goto/16 :goto_35b

    .line 1022
    :sswitch_101
    and-int/lit8 p1, p4, 0x1

    if-eqz p1, :cond_106

    goto :goto_107

    :cond_106
    move v3, v2

    .line 1023
    :goto_107
    if-eqz v3, :cond_111

    .line 1024
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1025
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1026
    goto/16 :goto_35b

    .line 1027
    :cond_111
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1029
    invoke-virtual {p0}, Lvendor/lineage/biometrics/fingerprint/inscreen/V1_0/IFingerprintInscreen$Stub;->interfaceDescriptor()Ljava/lang/String;

    move-result-object p1

    .line 1030
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1031
    invoke-virtual {p3, p1}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 1032
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1033
    goto/16 :goto_35b

    .line 1005
    :sswitch_123
    and-int/lit8 p1, p4, 0x1

    if-eqz p1, :cond_128

    goto :goto_129

    :cond_128
    move v3, v2

    .line 1006
    :goto_129
    if-eqz v3, :cond_133

    .line 1007
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1008
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1009
    goto/16 :goto_35b

    .line 1010
    :cond_133
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1012
    invoke-virtual {p2}, Landroid/os/HwParcel;->readNativeHandle()Landroid/os/NativeHandle;

    move-result-object p1

    .line 1013
    invoke-virtual {p2}, Landroid/os/HwParcel;->readStringVector()Ljava/util/ArrayList;

    move-result-object p2

    .line 1014
    invoke-virtual {p0, p1, p2}, Lvendor/lineage/biometrics/fingerprint/inscreen/V1_0/IFingerprintInscreen$Stub;->debug(Landroid/os/NativeHandle;Ljava/util/ArrayList;)V

    .line 1015
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1016
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1017
    goto/16 :goto_35b

    .line 989
    :sswitch_149
    and-int/lit8 p1, p4, 0x1

    if-eqz p1, :cond_14e

    goto :goto_14f

    :cond_14e
    move v3, v2

    .line 990
    :goto_14f
    if-eqz v3, :cond_159

    .line 991
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 992
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 993
    goto/16 :goto_35b

    .line 994
    :cond_159
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 996
    invoke-virtual {p0}, Lvendor/lineage/biometrics/fingerprint/inscreen/V1_0/IFingerprintInscreen$Stub;->interfaceChain()Ljava/util/ArrayList;

    move-result-object p1

    .line 997
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 998
    invoke-virtual {p3, p1}, Landroid/os/HwParcel;->writeStringVector(Ljava/util/ArrayList;)V

    .line 999
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1000
    goto/16 :goto_35b

    .line 975
    :pswitch_16b  #0xf
    and-int/lit8 p1, p4, 0x1

    if-eqz p1, :cond_170

    move v2, v3

    .line 976
    :cond_170
    if-eq v2, v3, :cond_17a

    .line 977
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 978
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 979
    goto/16 :goto_35b

    .line 980
    :cond_17a
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 982
    invoke-virtual {p2}, Landroid/os/HwParcel;->readStrongBinder()Landroid/os/IHwBinder;

    move-result-object p1

    invoke-static {p1}, Lvendor/lineage/biometrics/fingerprint/inscreen/V1_0/IFingerprintInscreenCallback;->asInterface(Landroid/os/IHwBinder;)Lvendor/lineage/biometrics/fingerprint/inscreen/V1_0/IFingerprintInscreenCallback;

    move-result-object p1

    .line 983
    invoke-virtual {p0, p1}, Lvendor/lineage/biometrics/fingerprint/inscreen/V1_0/IFingerprintInscreen$Stub;->setCallback(Lvendor/lineage/biometrics/fingerprint/inscreen/V1_0/IFingerprintInscreenCallback;)V

    .line 984
    goto/16 :goto_35b

    .line 959
    :pswitch_18a  #0xe
    and-int/lit8 p1, p4, 0x1

    if-eqz p1, :cond_18f

    goto :goto_190

    :cond_18f
    move v3, v2

    .line 960
    :goto_190
    if-eqz v3, :cond_19a

    .line 961
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 962
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 963
    goto/16 :goto_35b

    .line 964
    :cond_19a
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 966
    invoke-virtual {p0}, Lvendor/lineage/biometrics/fingerprint/inscreen/V1_0/IFingerprintInscreen$Stub;->shouldBoostBrightness()Z

    move-result p1

    .line 967
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 968
    invoke-virtual {p3, p1}, Landroid/os/HwParcel;->writeBool(Z)V

    .line 969
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 970
    goto/16 :goto_35b

    .line 942
    :pswitch_1ac  #0xd
    and-int/lit8 p1, p4, 0x1

    if-eqz p1, :cond_1b1

    goto :goto_1b2

    :cond_1b1
    move v3, v2

    .line 943
    :goto_1b2
    if-eqz v3, :cond_1bc

    .line 944
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 945
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 946
    goto/16 :goto_35b

    .line 947
    :cond_1bc
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 949
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p1

    .line 950
    invoke-virtual {p0, p1}, Lvendor/lineage/biometrics/fingerprint/inscreen/V1_0/IFingerprintInscreen$Stub;->getDimAmount(I)I

    move-result p1

    .line 951
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 952
    invoke-virtual {p3, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 953
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 954
    goto/16 :goto_35b

    .line 926
    :pswitch_1d2  #0xc
    and-int/lit8 p1, p4, 0x1

    if-eqz p1, :cond_1d7

    goto :goto_1d8

    :cond_1d7
    move v3, v2

    .line 927
    :goto_1d8
    if-eqz v3, :cond_1e2

    .line 928
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 929
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 930
    goto/16 :goto_35b

    .line 931
    :cond_1e2
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 933
    invoke-virtual {p2}, Landroid/os/HwParcel;->readBool()Z

    move-result p1

    .line 934
    invoke-virtual {p0, p1}, Lvendor/lineage/biometrics/fingerprint/inscreen/V1_0/IFingerprintInscreen$Stub;->setLongPressEnabled(Z)V

    .line 935
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 936
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 937
    goto/16 :goto_35b

    .line 908
    :pswitch_1f4  #0xb
    and-int/lit8 p1, p4, 0x1

    if-eqz p1, :cond_1f9

    goto :goto_1fa

    :cond_1f9
    move v3, v2

    .line 909
    :goto_1fa
    if-eqz v3, :cond_204

    .line 910
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 911
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 912
    goto/16 :goto_35b

    .line 913
    :cond_204
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 915
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p1

    .line 916
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p2

    .line 917
    invoke-virtual {p0, p1, p2}, Lvendor/lineage/biometrics/fingerprint/inscreen/V1_0/IFingerprintInscreen$Stub;->handleError(II)Z

    move-result p1

    .line 918
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 919
    invoke-virtual {p3, p1}, Landroid/os/HwParcel;->writeBool(Z)V

    .line 920
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 921
    goto/16 :goto_35b

    .line 890
    :pswitch_21e  #0xa
    and-int/lit8 p1, p4, 0x1

    if-eqz p1, :cond_223

    goto :goto_224

    :cond_223
    move v3, v2

    .line 891
    :goto_224
    if-eqz v3, :cond_22e

    .line 892
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 893
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 894
    goto/16 :goto_35b

    .line 895
    :cond_22e
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 897
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p1

    .line 898
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p2

    .line 899
    invoke-virtual {p0, p1, p2}, Lvendor/lineage/biometrics/fingerprint/inscreen/V1_0/IFingerprintInscreen$Stub;->handleAcquired(II)Z

    move-result p1

    .line 900
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 901
    invoke-virtual {p3, p1}, Landroid/os/HwParcel;->writeBool(Z)V

    .line 902
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 903
    goto/16 :goto_35b

    .line 875
    :pswitch_248  #0x9
    and-int/lit8 p1, p4, 0x1

    if-eqz p1, :cond_24d

    goto :goto_24e

    :cond_24d
    move v3, v2

    .line 876
    :goto_24e
    if-eqz v3, :cond_258

    .line 877
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 878
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 879
    goto/16 :goto_35b

    .line 880
    :cond_258
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 882
    invoke-virtual {p0}, Lvendor/lineage/biometrics/fingerprint/inscreen/V1_0/IFingerprintInscreen$Stub;->onHideFODView()V

    .line 883
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 884
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 885
    goto/16 :goto_35b

    .line 860
    :pswitch_266  #0x8
    and-int/lit8 p1, p4, 0x1

    if-eqz p1, :cond_26b

    goto :goto_26c

    :cond_26b
    move v3, v2

    .line 861
    :goto_26c
    if-eqz v3, :cond_276

    .line 862
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 863
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 864
    goto/16 :goto_35b

    .line 865
    :cond_276
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 867
    invoke-virtual {p0}, Lvendor/lineage/biometrics/fingerprint/inscreen/V1_0/IFingerprintInscreen$Stub;->onShowFODView()V

    .line 868
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 869
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 870
    goto/16 :goto_35b

    .line 845
    :pswitch_284  #0x7
    and-int/lit8 p1, p4, 0x1

    if-eqz p1, :cond_289

    goto :goto_28a

    :cond_289
    move v3, v2

    .line 846
    :goto_28a
    if-eqz v3, :cond_294

    .line 847
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 848
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 849
    goto/16 :goto_35b

    .line 850
    :cond_294
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 852
    invoke-virtual {p0}, Lvendor/lineage/biometrics/fingerprint/inscreen/V1_0/IFingerprintInscreen$Stub;->onRelease()V

    .line 853
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 854
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 855
    goto/16 :goto_35b

    .line 830
    :pswitch_2a2  #0x6
    and-int/lit8 p1, p4, 0x1

    if-eqz p1, :cond_2a7

    goto :goto_2a8

    :cond_2a7
    move v3, v2

    .line 831
    :goto_2a8
    if-eqz v3, :cond_2b2

    .line 832
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 833
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 834
    goto/16 :goto_35b

    .line 835
    :cond_2b2
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 837
    invoke-virtual {p0}, Lvendor/lineage/biometrics/fingerprint/inscreen/V1_0/IFingerprintInscreen$Stub;->onPress()V

    .line 838
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 839
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 840
    goto/16 :goto_35b

    .line 815
    :pswitch_2c0  #0x5
    and-int/lit8 p1, p4, 0x1

    if-eqz p1, :cond_2c5

    goto :goto_2c6

    :cond_2c5
    move v3, v2

    .line 816
    :goto_2c6
    if-eqz v3, :cond_2d0

    .line 817
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 818
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 819
    goto/16 :goto_35b

    .line 820
    :cond_2d0
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 822
    invoke-virtual {p0}, Lvendor/lineage/biometrics/fingerprint/inscreen/V1_0/IFingerprintInscreen$Stub;->onFinishEnroll()V

    .line 823
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 824
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 825
    goto/16 :goto_35b

    .line 800
    :pswitch_2de  #0x4
    and-int/lit8 p1, p4, 0x1

    if-eqz p1, :cond_2e3

    goto :goto_2e4

    :cond_2e3
    move v3, v2

    .line 801
    :goto_2e4
    if-eqz v3, :cond_2ee

    .line 802
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 803
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 804
    goto/16 :goto_35b

    .line 805
    :cond_2ee
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 807
    invoke-virtual {p0}, Lvendor/lineage/biometrics/fingerprint/inscreen/V1_0/IFingerprintInscreen$Stub;->onStartEnroll()V

    .line 808
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 809
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 810
    goto :goto_35b

    .line 784
    :pswitch_2fb  #0x3
    and-int/lit8 p1, p4, 0x1

    if-eqz p1, :cond_300

    goto :goto_301

    :cond_300
    move v3, v2

    .line 785
    :goto_301
    if-eqz v3, :cond_30a

    .line 786
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 787
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 788
    goto :goto_35b

    .line 789
    :cond_30a
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 791
    invoke-virtual {p0}, Lvendor/lineage/biometrics/fingerprint/inscreen/V1_0/IFingerprintInscreen$Stub;->getSize()I

    move-result p1

    .line 792
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 793
    invoke-virtual {p3, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 794
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 795
    goto :goto_35b

    .line 768
    :pswitch_31b  #0x2
    and-int/lit8 p1, p4, 0x1

    if-eqz p1, :cond_320

    goto :goto_321

    :cond_320
    move v3, v2

    .line 769
    :goto_321
    if-eqz v3, :cond_32a

    .line 770
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 771
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 772
    goto :goto_35b

    .line 773
    :cond_32a
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 775
    invoke-virtual {p0}, Lvendor/lineage/biometrics/fingerprint/inscreen/V1_0/IFingerprintInscreen$Stub;->getPositionY()I

    move-result p1

    .line 776
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 777
    invoke-virtual {p3, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 778
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 779
    goto :goto_35b

    .line 752
    :pswitch_33b  #0x1
    and-int/lit8 p1, p4, 0x1

    if-eqz p1, :cond_340

    goto :goto_341

    :cond_340
    move v3, v2

    .line 753
    :goto_341
    if-eqz v3, :cond_34a

    .line 754
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 755
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 756
    goto :goto_35b

    .line 757
    :cond_34a
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 759
    invoke-virtual {p0}, Lvendor/lineage/biometrics/fingerprint/inscreen/V1_0/IFingerprintInscreen$Stub;->getPositionX()I

    move-result p1

    .line 760
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 761
    invoke-virtual {p3, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 762
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 763
    nop

    .line 1153
    :cond_35b
    :goto_35b
    return-void

    :pswitch_data_35c
    .packed-switch 0x1
        :pswitch_33b  #00000001
        :pswitch_31b  #00000002
        :pswitch_2fb  #00000003
        :pswitch_2de  #00000004
        :pswitch_2c0  #00000005
        :pswitch_2a2  #00000006
        :pswitch_284  #00000007
        :pswitch_266  #00000008
        :pswitch_248  #00000009
        :pswitch_21e  #0000000a
        :pswitch_1f4  #0000000b
        :pswitch_1d2  #0000000c
        :pswitch_1ac  #0000000d
        :pswitch_18a  #0000000e
        :pswitch_16b  #0000000f
    .end packed-switch

    :sswitch_data_37e
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

    .line 703
    return-void
.end method

.method public queryLocalInterface(Ljava/lang/String;)Landroid/os/IHwInterface;
    .registers 3

    .line 731
    const-string v0, "vendor.lineage.biometrics.fingerprint.inscreen@1.0::IFingerprintInscreen"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_9

    .line 732
    return-object p0

    .line 734
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

    .line 738
    invoke-virtual {p0, p1}, Lvendor/lineage/biometrics/fingerprint/inscreen/V1_0/IFingerprintInscreen$Stub;->registerService(Ljava/lang/String;)V

    .line 739
    return-void
.end method

.method public final setHALInstrumentation()V
    .registers 1

    .line 693
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 743
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lvendor/lineage/biometrics/fingerprint/inscreen/V1_0/IFingerprintInscreen$Stub;->interfaceDescriptor()Ljava/lang/String;

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

    .line 725
    const/4 p1, 0x1

    return p1
.end method
