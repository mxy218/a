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
    return-void
.end method

.method public final getDebugInfo()Landroid/hidl/base/V1_0/DebugInfo;
    .registers 4

    .line 736
    new-instance v0, Landroid/hidl/base/V1_0/DebugInfo;

    invoke-direct {v0}, Landroid/hidl/base/V1_0/DebugInfo;-><init>()V

    .line 737
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
    .registers 4

    .line 724
    const/4 p1, 0x1

    return p1
.end method

.method public final notifySyspropsChanged()V
    .registers 1

    .line 746
    invoke-static {}, Landroid/os/HwBinder;->enableInstrumentation()V

    .line 748
    return-void
.end method

.method public onTransact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V
    .registers 12
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

    packed-switch p1, :pswitch_data_3e0

    const-string v0, "android.hidl.base@1.0::IBase"

    sparse-switch p1, :sswitch_data_400

    goto/16 :goto_3de

    .line 1185
    :sswitch_12
    and-int/lit8 p1, p4, 0x1

    if-eqz p1, :cond_17

    move v3, v4

    .line 1186
    :cond_17
    if-eqz v3, :cond_3de

    .line 1187
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1188
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1189
    goto/16 :goto_3de

    .line 1172
    :sswitch_21
    and-int/lit8 p1, p4, 0x1

    if-eqz p1, :cond_26

    move v3, v4

    .line 1173
    :cond_26
    if-eq v3, v4, :cond_30

    .line 1174
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1175
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1176
    goto/16 :goto_3de

    .line 1177
    :cond_30
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1179
    invoke-virtual {p0}, Landroid/hidl/manager/V1_2/IServiceManager$Stub;->notifySyspropsChanged()V

    .line 1180
    goto/16 :goto_3de

    .line 1156
    :sswitch_38
    and-int/lit8 p1, p4, 0x1

    if-eqz p1, :cond_3d

    goto :goto_3e

    :cond_3d
    move v4, v3

    .line 1157
    :goto_3e
    if-eqz v4, :cond_48

    .line 1158
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1159
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1160
    goto/16 :goto_3de

    .line 1161
    :cond_48
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1163
    invoke-virtual {p0}, Landroid/hidl/manager/V1_2/IServiceManager$Stub;->getDebugInfo()Landroid/hidl/base/V1_0/DebugInfo;

    move-result-object p1

    .line 1164
    invoke-virtual {p3, v3}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1165
    invoke-virtual {p1, p3}, Landroid/hidl/base/V1_0/DebugInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 1166
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1167
    goto/16 :goto_3de

    .line 1141
    :sswitch_5a
    and-int/lit8 p1, p4, 0x1

    if-eqz p1, :cond_5f

    goto :goto_60

    :cond_5f
    move v4, v3

    .line 1142
    :goto_60
    if-eqz v4, :cond_6a

    .line 1143
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1144
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1145
    goto/16 :goto_3de

    .line 1146
    :cond_6a
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1148
    invoke-virtual {p0}, Landroid/hidl/manager/V1_2/IServiceManager$Stub;->ping()V

    .line 1149
    invoke-virtual {p3, v3}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1150
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1151
    goto/16 :goto_3de

    .line 1131
    :sswitch_78
    and-int/lit8 p1, p4, 0x1

    if-eqz p1, :cond_7d

    move v3, v4

    .line 1132
    :cond_7d
    if-eqz v3, :cond_3de

    .line 1133
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1134
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1135
    goto/16 :goto_3de

    .line 1118
    :sswitch_87
    and-int/lit8 p1, p4, 0x1

    if-eqz p1, :cond_8c

    move v3, v4

    .line 1119
    :cond_8c
    if-eq v3, v4, :cond_96

    .line 1120
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1121
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1122
    goto/16 :goto_3de

    .line 1123
    :cond_96
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1125
    invoke-virtual {p0}, Landroid/hidl/manager/V1_2/IServiceManager$Stub;->setHALInstrumentation()V

    .line 1126
    goto/16 :goto_3de

    .line 1079
    :sswitch_9e
    and-int/lit8 p1, p4, 0x1

    if-eqz p1, :cond_a3

    goto :goto_a4

    :cond_a3
    move v4, v3

    .line 1080
    :goto_a4
    if-eqz v4, :cond_ae

    .line 1081
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1082
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1083
    goto/16 :goto_3de

    .line 1084
    :cond_ae
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1086
    invoke-virtual {p0}, Landroid/hidl/manager/V1_2/IServiceManager$Stub;->getHashChain()Ljava/util/ArrayList;

    move-result-object p1

    .line 1087
    invoke-virtual {p3, v3}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1089
    new-instance p2, Landroid/os/HwBlob;

    const/16 p4, 0x10

    invoke-direct {p2, p4}, Landroid/os/HwBlob;-><init>(I)V

    .line 1091
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p4

    .line 1092
    const-wide/16 v0, 0x8

    invoke-virtual {p2, v0, v1, p4}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 1093
    const-wide/16 v0, 0xc

    invoke-virtual {p2, v0, v1, v3}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 1094
    new-instance v0, Landroid/os/HwBlob;

    mul-int/lit8 v1, p4, 0x20

    invoke-direct {v0, v1}, Landroid/os/HwBlob;-><init>(I)V

    .line 1095
    nop

    :goto_d5
    if-ge v3, p4, :cond_f6

    .line 1097
    mul-int/lit8 v1, v3, 0x20

    int-to-long v1, v1

    .line 1098
    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [B

    .line 1100
    if-eqz v4, :cond_ee

    array-length v5, v4

    const/16 v6, 0x20

    if-ne v5, v6, :cond_ee

    .line 1104
    invoke-virtual {v0, v1, v2, v4}, Landroid/os/HwBlob;->putInt8Array(J[B)V

    .line 1105
    nop

    .line 1095
    add-int/lit8 v3, v3, 0x1

    goto :goto_d5

    .line 1101
    :cond_ee
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Array element is not of the expected length"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1108
    :cond_f6
    const-wide/16 v1, 0x0

    invoke-virtual {p2, v1, v2, v0}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    .line 1110
    invoke-virtual {p3, p2}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    .line 1112
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1113
    goto/16 :goto_3de

    .line 1063
    :sswitch_103
    and-int/lit8 p1, p4, 0x1

    if-eqz p1, :cond_108

    goto :goto_109

    :cond_108
    move v4, v3

    .line 1064
    :goto_109
    if-eqz v4, :cond_113

    .line 1065
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1066
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1067
    goto/16 :goto_3de

    .line 1068
    :cond_113
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1070
    invoke-virtual {p0}, Landroid/hidl/manager/V1_2/IServiceManager$Stub;->interfaceDescriptor()Ljava/lang/String;

    move-result-object p1

    .line 1071
    invoke-virtual {p3, v3}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1072
    invoke-virtual {p3, p1}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 1073
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1074
    goto/16 :goto_3de

    .line 1046
    :sswitch_125
    and-int/lit8 p1, p4, 0x1

    if-eqz p1, :cond_12a

    goto :goto_12b

    :cond_12a
    move v4, v3

    .line 1047
    :goto_12b
    if-eqz v4, :cond_135

    .line 1048
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1049
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1050
    goto/16 :goto_3de

    .line 1051
    :cond_135
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1053
    invoke-virtual {p2}, Landroid/os/HwParcel;->readNativeHandle()Landroid/os/NativeHandle;

    move-result-object p1

    .line 1054
    invoke-virtual {p2}, Landroid/os/HwParcel;->readStringVector()Ljava/util/ArrayList;

    move-result-object p2

    .line 1055
    invoke-virtual {p0, p1, p2}, Landroid/hidl/manager/V1_2/IServiceManager$Stub;->debug(Landroid/os/NativeHandle;Ljava/util/ArrayList;)V

    .line 1056
    invoke-virtual {p3, v3}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1057
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1058
    goto/16 :goto_3de

    .line 1030
    :sswitch_14b
    and-int/lit8 p1, p4, 0x1

    if-eqz p1, :cond_150

    goto :goto_151

    :cond_150
    move v4, v3

    .line 1031
    :goto_151
    if-eqz v4, :cond_15b

    .line 1032
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1033
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1034
    goto/16 :goto_3de

    .line 1035
    :cond_15b
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1037
    invoke-virtual {p0}, Landroid/hidl/manager/V1_2/IServiceManager$Stub;->interfaceChain()Ljava/util/ArrayList;

    move-result-object p1

    .line 1038
    invoke-virtual {p3, v3}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1039
    invoke-virtual {p3, p1}, Landroid/os/HwParcel;->writeStringVector(Ljava/util/ArrayList;)V

    .line 1040
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1041
    goto/16 :goto_3de

    .line 1011
    :pswitch_16d  #0xe
    and-int/lit8 p1, p4, 0x1

    if-eqz p1, :cond_172

    goto :goto_173

    :cond_172
    move v4, v3

    .line 1012
    :goto_173
    if-eqz v4, :cond_17d

    .line 1013
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1014
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1015
    goto/16 :goto_3de

    .line 1016
    :cond_17d
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1018
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 1019
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object p4

    .line 1020
    invoke-virtual {p2}, Landroid/os/HwParcel;->readStrongBinder()Landroid/os/IHwBinder;

    move-result-object p2

    invoke-static {p2}, Landroid/hidl/base/V1_0/IBase;->asInterface(Landroid/os/IHwBinder;)Landroid/hidl/base/V1_0/IBase;

    move-result-object p2

    .line 1021
    invoke-virtual {p0, p1, p4, p2}, Landroid/hidl/manager/V1_2/IServiceManager$Stub;->tryUnregister(Ljava/lang/String;Ljava/lang/String;Landroid/hidl/base/V1_0/IBase;)Z

    move-result p1

    .line 1022
    invoke-virtual {p3, v3}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1023
    invoke-virtual {p3, p1}, Landroid/os/HwParcel;->writeBool(Z)V

    .line 1024
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1025
    goto/16 :goto_3de

    .line 994
    :pswitch_19f  #0xd
    and-int/lit8 p1, p4, 0x1

    if-eqz p1, :cond_1a4

    goto :goto_1a5

    :cond_1a4
    move v4, v3

    .line 995
    :goto_1a5
    if-eqz v4, :cond_1af

    .line 996
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 997
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 998
    goto/16 :goto_3de

    .line 999
    :cond_1af
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1001
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 1002
    invoke-virtual {p0, p1}, Landroid/hidl/manager/V1_2/IServiceManager$Stub;->listManifestByInterface(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p1

    .line 1003
    invoke-virtual {p3, v3}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1004
    invoke-virtual {p3, p1}, Landroid/os/HwParcel;->writeStringVector(Ljava/util/ArrayList;)V

    .line 1005
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1006
    goto/16 :goto_3de

    .line 975
    :pswitch_1c5  #0xc
    and-int/lit8 p1, p4, 0x1

    if-eqz p1, :cond_1ca

    goto :goto_1cb

    :cond_1ca
    move v4, v3

    .line 976
    :goto_1cb
    if-eqz v4, :cond_1d5

    .line 977
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 978
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 979
    goto/16 :goto_3de

    .line 980
    :cond_1d5
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 982
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 983
    invoke-virtual {p2}, Landroid/os/HwParcel;->readStrongBinder()Landroid/os/IHwBinder;

    move-result-object p4

    invoke-static {p4}, Landroid/hidl/base/V1_0/IBase;->asInterface(Landroid/os/IHwBinder;)Landroid/hidl/base/V1_0/IBase;

    move-result-object p4

    .line 984
    invoke-virtual {p2}, Landroid/os/HwParcel;->readStringVector()Ljava/util/ArrayList;

    move-result-object p2

    .line 985
    invoke-virtual {p0, p1, p4, p2}, Landroid/hidl/manager/V1_2/IServiceManager$Stub;->addWithChain(Ljava/lang/String;Landroid/hidl/base/V1_0/IBase;Ljava/util/ArrayList;)Z

    move-result p1

    .line 986
    invoke-virtual {p3, v3}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 987
    invoke-virtual {p3, p1}, Landroid/os/HwParcel;->writeBool(Z)V

    .line 988
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 989
    goto/16 :goto_3de

    .line 957
    :pswitch_1f7  #0xb
    and-int/lit8 p1, p4, 0x1

    if-eqz p1, :cond_1fc

    goto :goto_1fd

    :cond_1fc
    move v4, v3

    .line 958
    :goto_1fd
    if-eqz v4, :cond_207

    .line 959
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 960
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 961
    goto/16 :goto_3de

    .line 962
    :cond_207
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 964
    invoke-virtual {p2}, Landroid/os/HwParcel;->readStrongBinder()Landroid/os/IHwBinder;

    move-result-object p1

    invoke-static {p1}, Landroid/hidl/base/V1_0/IBase;->asInterface(Landroid/os/IHwBinder;)Landroid/hidl/base/V1_0/IBase;

    move-result-object p1

    .line 965
    invoke-virtual {p2}, Landroid/os/HwParcel;->readStrongBinder()Landroid/os/IHwBinder;

    move-result-object p2

    invoke-static {p2}, Landroid/hidl/manager/V1_2/IClientCallback;->asInterface(Landroid/os/IHwBinder;)Landroid/hidl/manager/V1_2/IClientCallback;

    move-result-object p2

    .line 966
    invoke-virtual {p0, p1, p2}, Landroid/hidl/manager/V1_2/IServiceManager$Stub;->unregisterClientCallback(Landroid/hidl/base/V1_0/IBase;Landroid/hidl/manager/V1_2/IClientCallback;)Z

    move-result p1

    .line 967
    invoke-virtual {p3, v3}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 968
    invoke-virtual {p3, p1}, Landroid/os/HwParcel;->writeBool(Z)V

    .line 969
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 970
    goto/16 :goto_3de

    .line 937
    :pswitch_229  #0xa
    and-int/lit8 p1, p4, 0x1

    if-eqz p1, :cond_22e

    goto :goto_22f

    :cond_22e
    move v4, v3

    .line 938
    :goto_22f
    if-eqz v4, :cond_239

    .line 939
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 940
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 941
    goto/16 :goto_3de

    .line 942
    :cond_239
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 944
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 945
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object p4

    .line 946
    invoke-virtual {p2}, Landroid/os/HwParcel;->readStrongBinder()Landroid/os/IHwBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/hidl/base/V1_0/IBase;->asInterface(Landroid/os/IHwBinder;)Landroid/hidl/base/V1_0/IBase;

    move-result-object v0

    .line 947
    invoke-virtual {p2}, Landroid/os/HwParcel;->readStrongBinder()Landroid/os/IHwBinder;

    move-result-object p2

    invoke-static {p2}, Landroid/hidl/manager/V1_2/IClientCallback;->asInterface(Landroid/os/IHwBinder;)Landroid/hidl/manager/V1_2/IClientCallback;

    move-result-object p2

    .line 948
    invoke-virtual {p0, p1, p4, v0, p2}, Landroid/hidl/manager/V1_2/IServiceManager$Stub;->registerClientCallback(Ljava/lang/String;Ljava/lang/String;Landroid/hidl/base/V1_0/IBase;Landroid/hidl/manager/V1_2/IClientCallback;)Z

    move-result p1

    .line 949
    invoke-virtual {p3, v3}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 950
    invoke-virtual {p3, p1}, Landroid/os/HwParcel;->writeBool(Z)V

    .line 951
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 952
    goto/16 :goto_3de

    .line 918
    :pswitch_263  #0x9
    and-int/lit8 p1, p4, 0x1

    if-eqz p1, :cond_268

    goto :goto_269

    :cond_268
    move v4, v3

    .line 919
    :goto_269
    if-eqz v4, :cond_273

    .line 920
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 921
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 922
    goto/16 :goto_3de

    .line 923
    :cond_273
    const-string p1, "android.hidl.manager@1.1::IServiceManager"

    invoke-virtual {p2, p1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 925
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 926
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object p4

    .line 927
    invoke-virtual {p2}, Landroid/os/HwParcel;->readStrongBinder()Landroid/os/IHwBinder;

    move-result-object p2

    invoke-static {p2}, Landroid/hidl/manager/V1_0/IServiceNotification;->asInterface(Landroid/os/IHwBinder;)Landroid/hidl/manager/V1_0/IServiceNotification;

    move-result-object p2

    .line 928
    invoke-virtual {p0, p1, p4, p2}, Landroid/hidl/manager/V1_2/IServiceManager$Stub;->unregisterForNotifications(Ljava/lang/String;Ljava/lang/String;Landroid/hidl/manager/V1_0/IServiceNotification;)Z

    move-result p1

    .line 929
    invoke-virtual {p3, v3}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 930
    invoke-virtual {p3, p1}, Landroid/os/HwParcel;->writeBool(Z)V

    .line 931
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 932
    goto/16 :goto_3de

    .line 901
    :pswitch_297  #0x8
    and-int/lit8 p1, p4, 0x1

    if-eqz p1, :cond_29c

    goto :goto_29d

    :cond_29c
    move v4, v3

    .line 902
    :goto_29d
    if-eqz v4, :cond_2a7

    .line 903
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 904
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 905
    goto/16 :goto_3de

    .line 906
    :cond_2a7
    invoke-virtual {p2, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 908
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 909
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object p2

    .line 910
    invoke-virtual {p0, p1, p2}, Landroid/hidl/manager/V1_2/IServiceManager$Stub;->registerPassthroughClient(Ljava/lang/String;Ljava/lang/String;)V

    .line 911
    invoke-virtual {p3, v3}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 912
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 913
    goto/16 :goto_3de

    .line 885
    :pswitch_2bd  #0x7
    and-int/lit8 p1, p4, 0x1

    if-eqz p1, :cond_2c2

    goto :goto_2c3

    :cond_2c2
    move v4, v3

    .line 886
    :goto_2c3
    if-eqz v4, :cond_2cd

    .line 887
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 888
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 889
    goto/16 :goto_3de

    .line 890
    :cond_2cd
    invoke-virtual {p2, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 892
    invoke-virtual {p0}, Landroid/hidl/manager/V1_2/IServiceManager$Stub;->debugDump()Ljava/util/ArrayList;

    move-result-object p1

    .line 893
    invoke-virtual {p3, v3}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 894
    invoke-static {p3, p1}, Landroid/hidl/manager/V1_0/IServiceManager$InstanceDebugInfo;->writeVectorToParcel(Landroid/os/HwParcel;Ljava/util/ArrayList;)V

    .line 895
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 896
    goto/16 :goto_3de

    .line 866
    :pswitch_2df  #0x6
    and-int/lit8 p1, p4, 0x1

    if-eqz p1, :cond_2e4

    goto :goto_2e5

    :cond_2e4
    move v4, v3

    .line 867
    :goto_2e5
    if-eqz v4, :cond_2ef

    .line 868
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 869
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 870
    goto/16 :goto_3de

    .line 871
    :cond_2ef
    invoke-virtual {p2, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 873
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 874
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object p4

    .line 875
    invoke-virtual {p2}, Landroid/os/HwParcel;->readStrongBinder()Landroid/os/IHwBinder;

    move-result-object p2

    invoke-static {p2}, Landroid/hidl/manager/V1_0/IServiceNotification;->asInterface(Landroid/os/IHwBinder;)Landroid/hidl/manager/V1_0/IServiceNotification;

    move-result-object p2

    .line 876
    invoke-virtual {p0, p1, p4, p2}, Landroid/hidl/manager/V1_2/IServiceManager$Stub;->registerForNotifications(Ljava/lang/String;Ljava/lang/String;Landroid/hidl/manager/V1_0/IServiceNotification;)Z

    move-result p1

    .line 877
    invoke-virtual {p3, v3}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 878
    invoke-virtual {p3, p1}, Landroid/os/HwParcel;->writeBool(Z)V

    .line 879
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 880
    goto/16 :goto_3de

    .line 849
    :pswitch_311  #0x5
    and-int/lit8 p1, p4, 0x1

    if-eqz p1, :cond_316

    goto :goto_317

    :cond_316
    move v4, v3

    .line 850
    :goto_317
    if-eqz v4, :cond_321

    .line 851
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 852
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 853
    goto/16 :goto_3de

    .line 854
    :cond_321
    invoke-virtual {p2, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 856
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 857
    invoke-virtual {p0, p1}, Landroid/hidl/manager/V1_2/IServiceManager$Stub;->listByInterface(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p1

    .line 858
    invoke-virtual {p3, v3}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 859
    invoke-virtual {p3, p1}, Landroid/os/HwParcel;->writeStringVector(Ljava/util/ArrayList;)V

    .line 860
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 861
    goto/16 :goto_3de

    .line 833
    :pswitch_337  #0x4
    and-int/lit8 p1, p4, 0x1

    if-eqz p1, :cond_33c

    goto :goto_33d

    :cond_33c
    move v4, v3

    .line 834
    :goto_33d
    if-eqz v4, :cond_347

    .line 835
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 836
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 837
    goto/16 :goto_3de

    .line 838
    :cond_347
    invoke-virtual {p2, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 840
    invoke-virtual {p0}, Landroid/hidl/manager/V1_2/IServiceManager$Stub;->list()Ljava/util/ArrayList;

    move-result-object p1

    .line 841
    invoke-virtual {p3, v3}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 842
    invoke-virtual {p3, p1}, Landroid/os/HwParcel;->writeStringVector(Ljava/util/ArrayList;)V

    .line 843
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 844
    goto/16 :goto_3de

    .line 815
    :pswitch_359  #0x3
    and-int/lit8 p1, p4, 0x1

    if-eqz p1, :cond_35e

    goto :goto_35f

    :cond_35e
    move v4, v3

    .line 816
    :goto_35f
    if-eqz v4, :cond_369

    .line 817
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 818
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 819
    goto/16 :goto_3de

    .line 820
    :cond_369
    invoke-virtual {p2, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 822
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 823
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object p2

    .line 824
    invoke-virtual {p0, p1, p2}, Landroid/hidl/manager/V1_2/IServiceManager$Stub;->getTransport(Ljava/lang/String;Ljava/lang/String;)B

    move-result p1

    .line 825
    invoke-virtual {p3, v3}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 826
    invoke-virtual {p3, p1}, Landroid/os/HwParcel;->writeInt8(B)V

    .line 827
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 828
    goto :goto_3de

    .line 797
    :pswitch_382  #0x2
    and-int/lit8 p1, p4, 0x1

    if-eqz p1, :cond_387

    goto :goto_388

    :cond_387
    move v4, v3

    .line 798
    :goto_388
    if-eqz v4, :cond_391

    .line 799
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 800
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 801
    goto :goto_3de

    .line 802
    :cond_391
    invoke-virtual {p2, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 804
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 805
    invoke-virtual {p2}, Landroid/os/HwParcel;->readStrongBinder()Landroid/os/IHwBinder;

    move-result-object p2

    invoke-static {p2}, Landroid/hidl/base/V1_0/IBase;->asInterface(Landroid/os/IHwBinder;)Landroid/hidl/base/V1_0/IBase;

    move-result-object p2

    .line 806
    invoke-virtual {p0, p1, p2}, Landroid/hidl/manager/V1_2/IServiceManager$Stub;->add(Ljava/lang/String;Landroid/hidl/base/V1_0/IBase;)Z

    move-result p1

    .line 807
    invoke-virtual {p3, v3}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 808
    invoke-virtual {p3, p1}, Landroid/os/HwParcel;->writeBool(Z)V

    .line 809
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 810
    goto :goto_3de

    .line 779
    :pswitch_3ae  #0x1
    and-int/lit8 p1, p4, 0x1

    if-eqz p1, :cond_3b3

    goto :goto_3b4

    :cond_3b3
    move v4, v3

    .line 780
    :goto_3b4
    if-eqz v4, :cond_3bd

    .line 781
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 782
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 783
    goto :goto_3de

    .line 784
    :cond_3bd
    invoke-virtual {p2, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 786
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 787
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object p2

    .line 788
    invoke-virtual {p0, p1, p2}, Landroid/hidl/manager/V1_2/IServiceManager$Stub;->get(Ljava/lang/String;Ljava/lang/String;)Landroid/hidl/base/V1_0/IBase;

    move-result-object p1

    .line 789
    invoke-virtual {p3, v3}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 790
    if-nez p1, :cond_3d3

    const/4 p1, 0x0

    goto :goto_3d7

    :cond_3d3
    invoke-interface {p1}, Landroid/hidl/base/V1_0/IBase;->asBinder()Landroid/os/IHwBinder;

    move-result-object p1

    :goto_3d7
    invoke-virtual {p3, p1}, Landroid/os/HwParcel;->writeStrongBinder(Landroid/os/IHwBinder;)V

    .line 791
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 792
    nop

    .line 1194
    :cond_3de
    :goto_3de
    return-void

    nop

    :pswitch_data_3e0
    .packed-switch 0x1
        :pswitch_3ae  #00000001
        :pswitch_382  #00000002
        :pswitch_359  #00000003
        :pswitch_337  #00000004
        :pswitch_311  #00000005
        :pswitch_2df  #00000006
        :pswitch_2bd  #00000007
        :pswitch_297  #00000008
        :pswitch_263  #00000009
        :pswitch_229  #0000000a
        :pswitch_1f7  #0000000b
        :pswitch_1c5  #0000000c
        :pswitch_19f  #0000000d
        :pswitch_16d  #0000000e
    .end packed-switch

    :sswitch_data_400
    .sparse-switch
        0xf43484e -> :sswitch_14b
        0xf444247 -> :sswitch_125
        0xf445343 -> :sswitch_103
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

    .line 730
    return-void
.end method

.method public queryLocalInterface(Ljava/lang/String;)Landroid/os/IHwInterface;
    .registers 3

    .line 758
    const-string v0, "android.hidl.manager@1.2::IServiceManager"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_9

    .line 759
    return-object p0

    .line 761
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
    .registers 2

    .line 752
    const/4 p1, 0x1

    return p1
.end method
