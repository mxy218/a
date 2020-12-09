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
    return-void
.end method

.method public final getDebugInfo()Landroid/hidl/base/V1_0/DebugInfo;
    .registers 4

    .line 869
    new-instance v0, Landroid/hidl/base/V1_0/DebugInfo;

    invoke-direct {v0}, Landroid/hidl/base/V1_0/DebugInfo;-><init>()V

    .line 870
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
    .registers 4

    .line 857
    const/4 p1, 0x1

    return p1
.end method

.method public final notifySyspropsChanged()V
    .registers 1

    .line 879
    invoke-static {}, Landroid/os/HwBinder;->enableInstrumentation()V

    .line 881
    return-void
.end method

.method public onTransact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V
    .registers 12
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

    packed-switch p1, :pswitch_data_2b4

    const-string v0, "android.hidl.base@1.0::IBase"

    sparse-switch p1, :sswitch_data_2c8

    goto/16 :goto_2b2

    .line 1206
    :sswitch_10
    and-int/lit8 p1, p4, 0x1

    if-eqz p1, :cond_15

    move v2, v3

    .line 1207
    :cond_15
    if-eqz v2, :cond_2b2

    .line 1208
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1209
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1210
    goto/16 :goto_2b2

    .line 1193
    :sswitch_1f
    and-int/lit8 p1, p4, 0x1

    if-eqz p1, :cond_24

    move v2, v3

    .line 1194
    :cond_24
    if-eq v2, v3, :cond_2e

    .line 1195
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1196
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1197
    goto/16 :goto_2b2

    .line 1198
    :cond_2e
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1200
    invoke-virtual {p0}, Landroid/hidl/manager/V1_0/IServiceManager$Stub;->notifySyspropsChanged()V

    .line 1201
    goto/16 :goto_2b2

    .line 1177
    :sswitch_36
    and-int/lit8 p1, p4, 0x1

    if-eqz p1, :cond_3b

    goto :goto_3c

    :cond_3b
    move v3, v2

    .line 1178
    :goto_3c
    if-eqz v3, :cond_46

    .line 1179
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1180
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1181
    goto/16 :goto_2b2

    .line 1182
    :cond_46
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1184
    invoke-virtual {p0}, Landroid/hidl/manager/V1_0/IServiceManager$Stub;->getDebugInfo()Landroid/hidl/base/V1_0/DebugInfo;

    move-result-object p1

    .line 1185
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1186
    invoke-virtual {p1, p3}, Landroid/hidl/base/V1_0/DebugInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 1187
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1188
    goto/16 :goto_2b2

    .line 1162
    :sswitch_58
    and-int/lit8 p1, p4, 0x1

    if-eqz p1, :cond_5d

    goto :goto_5e

    :cond_5d
    move v3, v2

    .line 1163
    :goto_5e
    if-eqz v3, :cond_68

    .line 1164
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1165
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1166
    goto/16 :goto_2b2

    .line 1167
    :cond_68
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1169
    invoke-virtual {p0}, Landroid/hidl/manager/V1_0/IServiceManager$Stub;->ping()V

    .line 1170
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1171
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1172
    goto/16 :goto_2b2

    .line 1152
    :sswitch_76
    and-int/lit8 p1, p4, 0x1

    if-eqz p1, :cond_7b

    move v2, v3

    .line 1153
    :cond_7b
    if-eqz v2, :cond_2b2

    .line 1154
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1155
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1156
    goto/16 :goto_2b2

    .line 1139
    :sswitch_85
    and-int/lit8 p1, p4, 0x1

    if-eqz p1, :cond_8a

    move v2, v3

    .line 1140
    :cond_8a
    if-eq v2, v3, :cond_94

    .line 1141
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1142
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1143
    goto/16 :goto_2b2

    .line 1144
    :cond_94
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1146
    invoke-virtual {p0}, Landroid/hidl/manager/V1_0/IServiceManager$Stub;->setHALInstrumentation()V

    .line 1147
    goto/16 :goto_2b2

    .line 1100
    :sswitch_9c
    and-int/lit8 p1, p4, 0x1

    if-eqz p1, :cond_a1

    goto :goto_a2

    :cond_a1
    move v3, v2

    .line 1101
    :goto_a2
    if-eqz v3, :cond_ac

    .line 1102
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1103
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1104
    goto/16 :goto_2b2

    .line 1105
    :cond_ac
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1107
    invoke-virtual {p0}, Landroid/hidl/manager/V1_0/IServiceManager$Stub;->getHashChain()Ljava/util/ArrayList;

    move-result-object p1

    .line 1108
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1110
    new-instance p2, Landroid/os/HwBlob;

    const/16 p4, 0x10

    invoke-direct {p2, p4}, Landroid/os/HwBlob;-><init>(I)V

    .line 1112
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p4

    .line 1113
    const-wide/16 v0, 0x8

    invoke-virtual {p2, v0, v1, p4}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 1114
    const-wide/16 v0, 0xc

    invoke-virtual {p2, v0, v1, v2}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 1115
    new-instance v0, Landroid/os/HwBlob;

    mul-int/lit8 v1, p4, 0x20

    invoke-direct {v0, v1}, Landroid/os/HwBlob;-><init>(I)V

    .line 1116
    nop

    :goto_d3
    if-ge v2, p4, :cond_f4

    .line 1118
    mul-int/lit8 v1, v2, 0x20

    int-to-long v3, v1

    .line 1119
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    .line 1121
    if-eqz v1, :cond_ec

    array-length v5, v1

    const/16 v6, 0x20

    if-ne v5, v6, :cond_ec

    .line 1125
    invoke-virtual {v0, v3, v4, v1}, Landroid/os/HwBlob;->putInt8Array(J[B)V

    .line 1126
    nop

    .line 1116
    add-int/lit8 v2, v2, 0x1

    goto :goto_d3

    .line 1122
    :cond_ec
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Array element is not of the expected length"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1129
    :cond_f4
    const-wide/16 v1, 0x0

    invoke-virtual {p2, v1, v2, v0}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    .line 1131
    invoke-virtual {p3, p2}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    .line 1133
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1134
    goto/16 :goto_2b2

    .line 1084
    :sswitch_101
    and-int/lit8 p1, p4, 0x1

    if-eqz p1, :cond_106

    goto :goto_107

    :cond_106
    move v3, v2

    .line 1085
    :goto_107
    if-eqz v3, :cond_111

    .line 1086
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1087
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1088
    goto/16 :goto_2b2

    .line 1089
    :cond_111
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1091
    invoke-virtual {p0}, Landroid/hidl/manager/V1_0/IServiceManager$Stub;->interfaceDescriptor()Ljava/lang/String;

    move-result-object p1

    .line 1092
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1093
    invoke-virtual {p3, p1}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 1094
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1095
    goto/16 :goto_2b2

    .line 1067
    :sswitch_123
    and-int/lit8 p1, p4, 0x1

    if-eqz p1, :cond_128

    goto :goto_129

    :cond_128
    move v3, v2

    .line 1068
    :goto_129
    if-eqz v3, :cond_133

    .line 1069
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1070
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1071
    goto/16 :goto_2b2

    .line 1072
    :cond_133
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1074
    invoke-virtual {p2}, Landroid/os/HwParcel;->readNativeHandle()Landroid/os/NativeHandle;

    move-result-object p1

    .line 1075
    invoke-virtual {p2}, Landroid/os/HwParcel;->readStringVector()Ljava/util/ArrayList;

    move-result-object p2

    .line 1076
    invoke-virtual {p0, p1, p2}, Landroid/hidl/manager/V1_0/IServiceManager$Stub;->debug(Landroid/os/NativeHandle;Ljava/util/ArrayList;)V

    .line 1077
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1078
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1079
    goto/16 :goto_2b2

    .line 1051
    :sswitch_149
    and-int/lit8 p1, p4, 0x1

    if-eqz p1, :cond_14e

    goto :goto_14f

    :cond_14e
    move v3, v2

    .line 1052
    :goto_14f
    if-eqz v3, :cond_159

    .line 1053
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1054
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1055
    goto/16 :goto_2b2

    .line 1056
    :cond_159
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1058
    invoke-virtual {p0}, Landroid/hidl/manager/V1_0/IServiceManager$Stub;->interfaceChain()Ljava/util/ArrayList;

    move-result-object p1

    .line 1059
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1060
    invoke-virtual {p3, p1}, Landroid/os/HwParcel;->writeStringVector(Ljava/util/ArrayList;)V

    .line 1061
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1062
    goto/16 :goto_2b2

    .line 1034
    :pswitch_16b  #0x8
    and-int/lit8 p1, p4, 0x1

    if-eqz p1, :cond_170

    goto :goto_171

    :cond_170
    move v3, v2

    .line 1035
    :goto_171
    if-eqz v3, :cond_17b

    .line 1036
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1037
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1038
    goto/16 :goto_2b2

    .line 1039
    :cond_17b
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1041
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 1042
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object p2

    .line 1043
    invoke-virtual {p0, p1, p2}, Landroid/hidl/manager/V1_0/IServiceManager$Stub;->registerPassthroughClient(Ljava/lang/String;Ljava/lang/String;)V

    .line 1044
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1045
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1046
    goto/16 :goto_2b2

    .line 1018
    :pswitch_191  #0x7
    and-int/lit8 p1, p4, 0x1

    if-eqz p1, :cond_196

    goto :goto_197

    :cond_196
    move v3, v2

    .line 1019
    :goto_197
    if-eqz v3, :cond_1a1

    .line 1020
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1021
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1022
    goto/16 :goto_2b2

    .line 1023
    :cond_1a1
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1025
    invoke-virtual {p0}, Landroid/hidl/manager/V1_0/IServiceManager$Stub;->debugDump()Ljava/util/ArrayList;

    move-result-object p1

    .line 1026
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1027
    invoke-static {p3, p1}, Landroid/hidl/manager/V1_0/IServiceManager$InstanceDebugInfo;->writeVectorToParcel(Landroid/os/HwParcel;Ljava/util/ArrayList;)V

    .line 1028
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1029
    goto/16 :goto_2b2

    .line 999
    :pswitch_1b3  #0x6
    and-int/lit8 p1, p4, 0x1

    if-eqz p1, :cond_1b8

    goto :goto_1b9

    :cond_1b8
    move v3, v2

    .line 1000
    :goto_1b9
    if-eqz v3, :cond_1c3

    .line 1001
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1002
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1003
    goto/16 :goto_2b2

    .line 1004
    :cond_1c3
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1006
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 1007
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object p4

    .line 1008
    invoke-virtual {p2}, Landroid/os/HwParcel;->readStrongBinder()Landroid/os/IHwBinder;

    move-result-object p2

    invoke-static {p2}, Landroid/hidl/manager/V1_0/IServiceNotification;->asInterface(Landroid/os/IHwBinder;)Landroid/hidl/manager/V1_0/IServiceNotification;

    move-result-object p2

    .line 1009
    invoke-virtual {p0, p1, p4, p2}, Landroid/hidl/manager/V1_0/IServiceManager$Stub;->registerForNotifications(Ljava/lang/String;Ljava/lang/String;Landroid/hidl/manager/V1_0/IServiceNotification;)Z

    move-result p1

    .line 1010
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1011
    invoke-virtual {p3, p1}, Landroid/os/HwParcel;->writeBool(Z)V

    .line 1012
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1013
    goto/16 :goto_2b2

    .line 982
    :pswitch_1e5  #0x5
    and-int/lit8 p1, p4, 0x1

    if-eqz p1, :cond_1ea

    goto :goto_1eb

    :cond_1ea
    move v3, v2

    .line 983
    :goto_1eb
    if-eqz v3, :cond_1f5

    .line 984
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 985
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 986
    goto/16 :goto_2b2

    .line 987
    :cond_1f5
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 989
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 990
    invoke-virtual {p0, p1}, Landroid/hidl/manager/V1_0/IServiceManager$Stub;->listByInterface(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p1

    .line 991
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 992
    invoke-virtual {p3, p1}, Landroid/os/HwParcel;->writeStringVector(Ljava/util/ArrayList;)V

    .line 993
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 994
    goto/16 :goto_2b2

    .line 966
    :pswitch_20b  #0x4
    and-int/lit8 p1, p4, 0x1

    if-eqz p1, :cond_210

    goto :goto_211

    :cond_210
    move v3, v2

    .line 967
    :goto_211
    if-eqz v3, :cond_21b

    .line 968
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 969
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 970
    goto/16 :goto_2b2

    .line 971
    :cond_21b
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 973
    invoke-virtual {p0}, Landroid/hidl/manager/V1_0/IServiceManager$Stub;->list()Ljava/util/ArrayList;

    move-result-object p1

    .line 974
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 975
    invoke-virtual {p3, p1}, Landroid/os/HwParcel;->writeStringVector(Ljava/util/ArrayList;)V

    .line 976
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 977
    goto/16 :goto_2b2

    .line 948
    :pswitch_22d  #0x3
    and-int/lit8 p1, p4, 0x1

    if-eqz p1, :cond_232

    goto :goto_233

    :cond_232
    move v3, v2

    .line 949
    :goto_233
    if-eqz v3, :cond_23d

    .line 950
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 951
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 952
    goto/16 :goto_2b2

    .line 953
    :cond_23d
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 955
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 956
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object p2

    .line 957
    invoke-virtual {p0, p1, p2}, Landroid/hidl/manager/V1_0/IServiceManager$Stub;->getTransport(Ljava/lang/String;Ljava/lang/String;)B

    move-result p1

    .line 958
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 959
    invoke-virtual {p3, p1}, Landroid/os/HwParcel;->writeInt8(B)V

    .line 960
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 961
    goto :goto_2b2

    .line 930
    :pswitch_256  #0x2
    and-int/lit8 p1, p4, 0x1

    if-eqz p1, :cond_25b

    goto :goto_25c

    :cond_25b
    move v3, v2

    .line 931
    :goto_25c
    if-eqz v3, :cond_265

    .line 932
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 933
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 934
    goto :goto_2b2

    .line 935
    :cond_265
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 937
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 938
    invoke-virtual {p2}, Landroid/os/HwParcel;->readStrongBinder()Landroid/os/IHwBinder;

    move-result-object p2

    invoke-static {p2}, Landroid/hidl/base/V1_0/IBase;->asInterface(Landroid/os/IHwBinder;)Landroid/hidl/base/V1_0/IBase;

    move-result-object p2

    .line 939
    invoke-virtual {p0, p1, p2}, Landroid/hidl/manager/V1_0/IServiceManager$Stub;->add(Ljava/lang/String;Landroid/hidl/base/V1_0/IBase;)Z

    move-result p1

    .line 940
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 941
    invoke-virtual {p3, p1}, Landroid/os/HwParcel;->writeBool(Z)V

    .line 942
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 943
    goto :goto_2b2

    .line 912
    :pswitch_282  #0x1
    and-int/lit8 p1, p4, 0x1

    if-eqz p1, :cond_287

    goto :goto_288

    :cond_287
    move v3, v2

    .line 913
    :goto_288
    if-eqz v3, :cond_291

    .line 914
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 915
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 916
    goto :goto_2b2

    .line 917
    :cond_291
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 919
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 920
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object p2

    .line 921
    invoke-virtual {p0, p1, p2}, Landroid/hidl/manager/V1_0/IServiceManager$Stub;->get(Ljava/lang/String;Ljava/lang/String;)Landroid/hidl/base/V1_0/IBase;

    move-result-object p1

    .line 922
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 923
    if-nez p1, :cond_2a7

    const/4 p1, 0x0

    goto :goto_2ab

    :cond_2a7
    invoke-interface {p1}, Landroid/hidl/base/V1_0/IBase;->asBinder()Landroid/os/IHwBinder;

    move-result-object p1

    :goto_2ab
    invoke-virtual {p3, p1}, Landroid/os/HwParcel;->writeStrongBinder(Landroid/os/IHwBinder;)V

    .line 924
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 925
    nop

    .line 1215
    :cond_2b2
    :goto_2b2
    return-void

    nop

    :pswitch_data_2b4
    .packed-switch 0x1
        :pswitch_282  #00000001
        :pswitch_256  #00000002
        :pswitch_22d  #00000003
        :pswitch_20b  #00000004
        :pswitch_1e5  #00000005
        :pswitch_1b3  #00000006
        :pswitch_191  #00000007
        :pswitch_16b  #00000008
    .end packed-switch

    :sswitch_data_2c8
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

    .line 863
    return-void
.end method

.method public queryLocalInterface(Ljava/lang/String;)Landroid/os/IHwInterface;
    .registers 3

    .line 891
    const-string v0, "android.hidl.manager@1.0::IServiceManager"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_9

    .line 892
    return-object p0

    .line 894
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
    .registers 2

    .line 885
    const/4 p1, 0x1

    return p1
.end method
