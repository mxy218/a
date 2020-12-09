.class public abstract Landroid/hardware/tetheroffload/control/V1_0/IOffloadControl$Stub;
.super Landroid/os/HwBinder;
.source "IOffloadControl.java"

# interfaces
.implements Landroid/hardware/tetheroffload/control/V1_0/IOffloadControl;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/tetheroffload/control/V1_0/IOffloadControl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 724
    invoke-direct {p0}, Landroid/os/HwBinder;-><init>()V

    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IHwBinder;
    .registers 1

    .line 727
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

    .line 740
    return-void
.end method

.method public final getDebugInfo()Landroid/hidl/base/V1_0/DebugInfo;
    .registers 4

    .line 777
    new-instance v0, Landroid/hidl/base/V1_0/DebugInfo;

    invoke-direct {v0}, Landroid/hidl/base/V1_0/DebugInfo;-><init>()V

    .line 778
    invoke-static {}, Landroid/os/HidlSupport;->getPidIfSharable()I

    move-result v1

    iput v1, v0, Landroid/hidl/base/V1_0/DebugInfo;->pid:I

    .line 779
    const-wide/16 v1, 0x0

    iput-wide v1, v0, Landroid/hidl/base/V1_0/DebugInfo;->ptr:J

    .line 780
    const/4 v1, 0x0

    iput v1, v0, Landroid/hidl/base/V1_0/DebugInfo;->arch:I

    .line 781
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

    .line 752
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
        0x44t
        0x7bt
        0x0t
        0x30t
        0x6bt
        -0x37t
        0x5at
        0x7at
        -0x51t
        -0x14t
        0x1dt
        0x66t
        0xft
        0x6ft
        0x3et
        -0x61t
        0x76t
        -0x54t
        -0x75t
        -0x40t
        0x35t
        0x31t
        -0x6dt
        0x43t
        0x5et
        0x55t
        0x79t
        -0x55t
        -0x7dt
        0x3dt
        -0x5at
        0x19t
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

    .line 732
    new-instance v0, Ljava/util/ArrayList;

    const-string v1, "android.hardware.tetheroffload.control@1.0::IOffloadControl"

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

    .line 746
    const-string v0, "android.hardware.tetheroffload.control@1.0::IOffloadControl"

    return-object v0
.end method

.method public final linkToDeath(Landroid/os/IHwBinder$DeathRecipient;J)Z
    .registers 4

    .line 765
    const/4 p1, 0x1

    return p1
.end method

.method public final notifySyspropsChanged()V
    .registers 1

    .line 787
    invoke-static {}, Landroid/os/HwBinder;->enableInstrumentation()V

    .line 789
    return-void
.end method

.method public onTransact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V
    .registers 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 817
    const-string v0, "android.hardware.tetheroffload.control@1.0::IOffloadControl"

    const/high16 v1, -0x80000000

    const/4 v2, 0x0

    const/4 v3, 0x1

    packed-switch p1, :pswitch_data_27e

    const-string v0, "android.hidl.base@1.0::IBase"

    sparse-switch p1, :sswitch_data_292

    goto/16 :goto_27d

    .line 1148
    :sswitch_10
    and-int/lit8 p1, p4, 0x1

    if-eqz p1, :cond_15

    move v2, v3

    .line 1149
    :cond_15
    if-eqz v2, :cond_27d

    .line 1150
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1151
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1152
    goto/16 :goto_27d

    .line 1135
    :sswitch_1f
    and-int/lit8 p1, p4, 0x1

    if-eqz p1, :cond_24

    move v2, v3

    .line 1136
    :cond_24
    if-eq v2, v3, :cond_2e

    .line 1137
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1138
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1139
    goto/16 :goto_27d

    .line 1140
    :cond_2e
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1142
    invoke-virtual {p0}, Landroid/hardware/tetheroffload/control/V1_0/IOffloadControl$Stub;->notifySyspropsChanged()V

    .line 1143
    goto/16 :goto_27d

    .line 1119
    :sswitch_36
    and-int/lit8 p1, p4, 0x1

    if-eqz p1, :cond_3b

    goto :goto_3c

    :cond_3b
    move v3, v2

    .line 1120
    :goto_3c
    if-eqz v3, :cond_46

    .line 1121
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1122
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1123
    goto/16 :goto_27d

    .line 1124
    :cond_46
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1126
    invoke-virtual {p0}, Landroid/hardware/tetheroffload/control/V1_0/IOffloadControl$Stub;->getDebugInfo()Landroid/hidl/base/V1_0/DebugInfo;

    move-result-object p1

    .line 1127
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1128
    invoke-virtual {p1, p3}, Landroid/hidl/base/V1_0/DebugInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 1129
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1130
    goto/16 :goto_27d

    .line 1104
    :sswitch_58
    and-int/lit8 p1, p4, 0x1

    if-eqz p1, :cond_5d

    goto :goto_5e

    :cond_5d
    move v3, v2

    .line 1105
    :goto_5e
    if-eqz v3, :cond_68

    .line 1106
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1107
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1108
    goto/16 :goto_27d

    .line 1109
    :cond_68
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1111
    invoke-virtual {p0}, Landroid/hardware/tetheroffload/control/V1_0/IOffloadControl$Stub;->ping()V

    .line 1112
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1113
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1114
    goto/16 :goto_27d

    .line 1094
    :sswitch_76
    and-int/lit8 p1, p4, 0x1

    if-eqz p1, :cond_7b

    move v2, v3

    .line 1095
    :cond_7b
    if-eqz v2, :cond_27d

    .line 1096
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1097
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1098
    goto/16 :goto_27d

    .line 1081
    :sswitch_85
    and-int/lit8 p1, p4, 0x1

    if-eqz p1, :cond_8a

    move v2, v3

    .line 1082
    :cond_8a
    if-eq v2, v3, :cond_94

    .line 1083
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1084
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1085
    goto/16 :goto_27d

    .line 1086
    :cond_94
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1088
    invoke-virtual {p0}, Landroid/hardware/tetheroffload/control/V1_0/IOffloadControl$Stub;->setHALInstrumentation()V

    .line 1089
    goto/16 :goto_27d

    .line 1042
    :sswitch_9c
    and-int/lit8 p1, p4, 0x1

    if-eqz p1, :cond_a1

    goto :goto_a2

    :cond_a1
    move v3, v2

    .line 1043
    :goto_a2
    if-eqz v3, :cond_ac

    .line 1044
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1045
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1046
    goto/16 :goto_27d

    .line 1047
    :cond_ac
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1049
    invoke-virtual {p0}, Landroid/hardware/tetheroffload/control/V1_0/IOffloadControl$Stub;->getHashChain()Ljava/util/ArrayList;

    move-result-object p1

    .line 1050
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1052
    new-instance p2, Landroid/os/HwBlob;

    const/16 p4, 0x10

    invoke-direct {p2, p4}, Landroid/os/HwBlob;-><init>(I)V

    .line 1054
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p4

    .line 1055
    const-wide/16 v0, 0x8

    invoke-virtual {p2, v0, v1, p4}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 1056
    const-wide/16 v0, 0xc

    invoke-virtual {p2, v0, v1, v2}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 1057
    new-instance v0, Landroid/os/HwBlob;

    mul-int/lit8 v1, p4, 0x20

    invoke-direct {v0, v1}, Landroid/os/HwBlob;-><init>(I)V

    .line 1058
    nop

    :goto_d3
    if-ge v2, p4, :cond_f4

    .line 1060
    mul-int/lit8 v1, v2, 0x20

    int-to-long v3, v1

    .line 1061
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    .line 1063
    if-eqz v1, :cond_ec

    array-length v5, v1

    const/16 v6, 0x20

    if-ne v5, v6, :cond_ec

    .line 1067
    invoke-virtual {v0, v3, v4, v1}, Landroid/os/HwBlob;->putInt8Array(J[B)V

    .line 1068
    nop

    .line 1058
    add-int/lit8 v2, v2, 0x1

    goto :goto_d3

    .line 1064
    :cond_ec
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Array element is not of the expected length"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1071
    :cond_f4
    const-wide/16 v1, 0x0

    invoke-virtual {p2, v1, v2, v0}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    .line 1073
    invoke-virtual {p3, p2}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    .line 1075
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1076
    goto/16 :goto_27d

    .line 1026
    :sswitch_101
    and-int/lit8 p1, p4, 0x1

    if-eqz p1, :cond_106

    goto :goto_107

    :cond_106
    move v3, v2

    .line 1027
    :goto_107
    if-eqz v3, :cond_111

    .line 1028
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1029
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1030
    goto/16 :goto_27d

    .line 1031
    :cond_111
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1033
    invoke-virtual {p0}, Landroid/hardware/tetheroffload/control/V1_0/IOffloadControl$Stub;->interfaceDescriptor()Ljava/lang/String;

    move-result-object p1

    .line 1034
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1035
    invoke-virtual {p3, p1}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 1036
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1037
    goto/16 :goto_27d

    .line 1009
    :sswitch_123
    and-int/lit8 p1, p4, 0x1

    if-eqz p1, :cond_128

    goto :goto_129

    :cond_128
    move v3, v2

    .line 1010
    :goto_129
    if-eqz v3, :cond_133

    .line 1011
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1012
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1013
    goto/16 :goto_27d

    .line 1014
    :cond_133
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1016
    invoke-virtual {p2}, Landroid/os/HwParcel;->readNativeHandle()Landroid/os/NativeHandle;

    move-result-object p1

    .line 1017
    invoke-virtual {p2}, Landroid/os/HwParcel;->readStringVector()Ljava/util/ArrayList;

    move-result-object p2

    .line 1018
    invoke-virtual {p0, p1, p2}, Landroid/hardware/tetheroffload/control/V1_0/IOffloadControl$Stub;->debug(Landroid/os/NativeHandle;Ljava/util/ArrayList;)V

    .line 1019
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1020
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1021
    goto/16 :goto_27d

    .line 993
    :sswitch_149
    and-int/lit8 p1, p4, 0x1

    if-eqz p1, :cond_14e

    goto :goto_14f

    :cond_14e
    move v3, v2

    .line 994
    :goto_14f
    if-eqz v3, :cond_159

    .line 995
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 996
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 997
    goto/16 :goto_27d

    .line 998
    :cond_159
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1000
    invoke-virtual {p0}, Landroid/hardware/tetheroffload/control/V1_0/IOffloadControl$Stub;->interfaceChain()Ljava/util/ArrayList;

    move-result-object p1

    .line 1001
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1002
    invoke-virtual {p3, p1}, Landroid/os/HwParcel;->writeStringVector(Ljava/util/ArrayList;)V

    .line 1003
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1004
    goto/16 :goto_27d

    .line 971
    :pswitch_16b  #0x8
    and-int/lit8 p1, p4, 0x1

    if-eqz p1, :cond_170

    move v2, v3

    .line 972
    :cond_170
    if-eqz v2, :cond_17a

    .line 973
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 974
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 975
    goto/16 :goto_27d

    .line 976
    :cond_17a
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 978
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 979
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object p2

    .line 980
    new-instance p4, Landroid/hardware/tetheroffload/control/V1_0/IOffloadControl$Stub$8;

    invoke-direct {p4, p0, p3}, Landroid/hardware/tetheroffload/control/V1_0/IOffloadControl$Stub$8;-><init>(Landroid/hardware/tetheroffload/control/V1_0/IOffloadControl$Stub;Landroid/os/HwParcel;)V

    invoke-virtual {p0, p1, p2, p4}, Landroid/hardware/tetheroffload/control/V1_0/IOffloadControl$Stub;->removeDownstream(Ljava/lang/String;Ljava/lang/String;Landroid/hardware/tetheroffload/control/V1_0/IOffloadControl$removeDownstreamCallback;)V

    .line 988
    goto/16 :goto_27d

    .line 949
    :pswitch_18f  #0x7
    and-int/lit8 p1, p4, 0x1

    if-eqz p1, :cond_194

    move v2, v3

    .line 950
    :cond_194
    if-eqz v2, :cond_19e

    .line 951
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 952
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 953
    goto/16 :goto_27d

    .line 954
    :cond_19e
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 956
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 957
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object p2

    .line 958
    new-instance p4, Landroid/hardware/tetheroffload/control/V1_0/IOffloadControl$Stub$7;

    invoke-direct {p4, p0, p3}, Landroid/hardware/tetheroffload/control/V1_0/IOffloadControl$Stub$7;-><init>(Landroid/hardware/tetheroffload/control/V1_0/IOffloadControl$Stub;Landroid/os/HwParcel;)V

    invoke-virtual {p0, p1, p2, p4}, Landroid/hardware/tetheroffload/control/V1_0/IOffloadControl$Stub;->addDownstream(Ljava/lang/String;Ljava/lang/String;Landroid/hardware/tetheroffload/control/V1_0/IOffloadControl$addDownstreamCallback;)V

    .line 966
    goto/16 :goto_27d

    .line 925
    :pswitch_1b3  #0x6
    and-int/lit8 p1, p4, 0x1

    if-eqz p1, :cond_1b8

    move v2, v3

    .line 926
    :cond_1b8
    if-eqz v2, :cond_1c2

    .line 927
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 928
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 929
    goto/16 :goto_27d

    .line 930
    :cond_1c2
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 932
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 933
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 934
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 935
    invoke-virtual {p2}, Landroid/os/HwParcel;->readStringVector()Ljava/util/ArrayList;

    move-result-object v7

    .line 936
    new-instance v8, Landroid/hardware/tetheroffload/control/V1_0/IOffloadControl$Stub$6;

    invoke-direct {v8, p0, p3}, Landroid/hardware/tetheroffload/control/V1_0/IOffloadControl$Stub$6;-><init>(Landroid/hardware/tetheroffload/control/V1_0/IOffloadControl$Stub;Landroid/os/HwParcel;)V

    move-object v3, p0

    invoke-virtual/range {v3 .. v8}, Landroid/hardware/tetheroffload/control/V1_0/IOffloadControl$Stub;->setUpstreamParameters(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Landroid/hardware/tetheroffload/control/V1_0/IOffloadControl$setUpstreamParametersCallback;)V

    .line 944
    goto/16 :goto_27d

    .line 903
    :pswitch_1e0  #0x5
    and-int/lit8 p1, p4, 0x1

    if-eqz p1, :cond_1e5

    move v2, v3

    .line 904
    :cond_1e5
    if-eqz v2, :cond_1ef

    .line 905
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 906
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 907
    goto/16 :goto_27d

    .line 908
    :cond_1ef
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 910
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 911
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt64()J

    move-result-wide v0

    .line 912
    new-instance p2, Landroid/hardware/tetheroffload/control/V1_0/IOffloadControl$Stub$5;

    invoke-direct {p2, p0, p3}, Landroid/hardware/tetheroffload/control/V1_0/IOffloadControl$Stub$5;-><init>(Landroid/hardware/tetheroffload/control/V1_0/IOffloadControl$Stub;Landroid/os/HwParcel;)V

    invoke-virtual {p0, p1, v0, v1, p2}, Landroid/hardware/tetheroffload/control/V1_0/IOffloadControl$Stub;->setDataLimit(Ljava/lang/String;JLandroid/hardware/tetheroffload/control/V1_0/IOffloadControl$setDataLimitCallback;)V

    .line 920
    goto/16 :goto_27d

    .line 882
    :pswitch_204  #0x4
    and-int/lit8 p1, p4, 0x1

    if-eqz p1, :cond_209

    move v2, v3

    .line 883
    :cond_209
    if-eqz v2, :cond_213

    .line 884
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 885
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 886
    goto/16 :goto_27d

    .line 887
    :cond_213
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 889
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 890
    new-instance p2, Landroid/hardware/tetheroffload/control/V1_0/IOffloadControl$Stub$4;

    invoke-direct {p2, p0, p3}, Landroid/hardware/tetheroffload/control/V1_0/IOffloadControl$Stub$4;-><init>(Landroid/hardware/tetheroffload/control/V1_0/IOffloadControl$Stub;Landroid/os/HwParcel;)V

    invoke-virtual {p0, p1, p2}, Landroid/hardware/tetheroffload/control/V1_0/IOffloadControl$Stub;->getForwardedStats(Ljava/lang/String;Landroid/hardware/tetheroffload/control/V1_0/IOffloadControl$getForwardedStatsCallback;)V

    .line 898
    goto :goto_27d

    .line 861
    :pswitch_223  #0x3
    and-int/lit8 p1, p4, 0x1

    if-eqz p1, :cond_228

    move v2, v3

    .line 862
    :cond_228
    if-eqz v2, :cond_231

    .line 863
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 864
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 865
    goto :goto_27d

    .line 866
    :cond_231
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 868
    invoke-virtual {p2}, Landroid/os/HwParcel;->readStringVector()Ljava/util/ArrayList;

    move-result-object p1

    .line 869
    new-instance p2, Landroid/hardware/tetheroffload/control/V1_0/IOffloadControl$Stub$3;

    invoke-direct {p2, p0, p3}, Landroid/hardware/tetheroffload/control/V1_0/IOffloadControl$Stub$3;-><init>(Landroid/hardware/tetheroffload/control/V1_0/IOffloadControl$Stub;Landroid/os/HwParcel;)V

    invoke-virtual {p0, p1, p2}, Landroid/hardware/tetheroffload/control/V1_0/IOffloadControl$Stub;->setLocalPrefixes(Ljava/util/ArrayList;Landroid/hardware/tetheroffload/control/V1_0/IOffloadControl$setLocalPrefixesCallback;)V

    .line 877
    goto :goto_27d

    .line 841
    :pswitch_241  #0x2
    and-int/lit8 p1, p4, 0x1

    if-eqz p1, :cond_246

    move v2, v3

    .line 842
    :cond_246
    if-eqz v2, :cond_24f

    .line 843
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 844
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 845
    goto :goto_27d

    .line 846
    :cond_24f
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 848
    new-instance p1, Landroid/hardware/tetheroffload/control/V1_0/IOffloadControl$Stub$2;

    invoke-direct {p1, p0, p3}, Landroid/hardware/tetheroffload/control/V1_0/IOffloadControl$Stub$2;-><init>(Landroid/hardware/tetheroffload/control/V1_0/IOffloadControl$Stub;Landroid/os/HwParcel;)V

    invoke-virtual {p0, p1}, Landroid/hardware/tetheroffload/control/V1_0/IOffloadControl$Stub;->stopOffload(Landroid/hardware/tetheroffload/control/V1_0/IOffloadControl$stopOffloadCallback;)V

    .line 856
    goto :goto_27d

    .line 820
    :pswitch_25b  #0x1
    and-int/lit8 p1, p4, 0x1

    if-eqz p1, :cond_260

    move v2, v3

    .line 821
    :cond_260
    if-eqz v2, :cond_269

    .line 822
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 823
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 824
    goto :goto_27d

    .line 825
    :cond_269
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 827
    invoke-virtual {p2}, Landroid/os/HwParcel;->readStrongBinder()Landroid/os/IHwBinder;

    move-result-object p1

    invoke-static {p1}, Landroid/hardware/tetheroffload/control/V1_0/ITetheringOffloadCallback;->asInterface(Landroid/os/IHwBinder;)Landroid/hardware/tetheroffload/control/V1_0/ITetheringOffloadCallback;

    move-result-object p1

    .line 828
    new-instance p2, Landroid/hardware/tetheroffload/control/V1_0/IOffloadControl$Stub$1;

    invoke-direct {p2, p0, p3}, Landroid/hardware/tetheroffload/control/V1_0/IOffloadControl$Stub$1;-><init>(Landroid/hardware/tetheroffload/control/V1_0/IOffloadControl$Stub;Landroid/os/HwParcel;)V

    invoke-virtual {p0, p1, p2}, Landroid/hardware/tetheroffload/control/V1_0/IOffloadControl$Stub;->initOffload(Landroid/hardware/tetheroffload/control/V1_0/ITetheringOffloadCallback;Landroid/hardware/tetheroffload/control/V1_0/IOffloadControl$initOffloadCallback;)V

    .line 836
    nop

    .line 1157
    :cond_27d
    :goto_27d
    return-void

    :pswitch_data_27e
    .packed-switch 0x1
        :pswitch_25b  #00000001
        :pswitch_241  #00000002
        :pswitch_223  #00000003
        :pswitch_204  #00000004
        :pswitch_1e0  #00000005
        :pswitch_1b3  #00000006
        :pswitch_18f  #00000007
        :pswitch_16b  #00000008
    .end packed-switch

    :sswitch_data_292
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

    .line 771
    return-void
.end method

.method public queryLocalInterface(Ljava/lang/String;)Landroid/os/IHwInterface;
    .registers 3

    .line 799
    const-string v0, "android.hardware.tetheroffload.control@1.0::IOffloadControl"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_9

    .line 800
    return-object p0

    .line 802
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

    .line 806
    invoke-virtual {p0, p1}, Landroid/hardware/tetheroffload/control/V1_0/IOffloadControl$Stub;->registerService(Ljava/lang/String;)V

    .line 807
    return-void
.end method

.method public final setHALInstrumentation()V
    .registers 1

    .line 761
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 811
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/hardware/tetheroffload/control/V1_0/IOffloadControl$Stub;->interfaceDescriptor()Ljava/lang/String;

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

    .line 793
    const/4 p1, 0x1

    return p1
.end method
