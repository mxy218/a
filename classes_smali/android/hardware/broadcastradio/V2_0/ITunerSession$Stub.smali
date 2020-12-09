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
    return-void
.end method

.method public final getDebugInfo()Landroid/hidl/base/V1_0/DebugInfo;
    .registers 4

    .line 755
    new-instance v0, Landroid/hidl/base/V1_0/DebugInfo;

    invoke-direct {v0}, Landroid/hidl/base/V1_0/DebugInfo;-><init>()V

    .line 756
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
    .registers 4

    .line 743
    const/4 p1, 0x1

    return p1
.end method

.method public final notifySyspropsChanged()V
    .registers 1

    .line 765
    invoke-static {}, Landroid/os/HwBinder;->enableInstrumentation()V

    .line 767
    return-void
.end method

.method public onTransact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V
    .registers 12
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

    packed-switch p1, :pswitch_data_2fa

    const-string v0, "android.hidl.base@1.0::IBase"

    sparse-switch p1, :sswitch_data_314

    goto/16 :goto_2f9

    .line 1142
    :sswitch_10
    and-int/lit8 p1, p4, 0x1

    if-eqz p1, :cond_15

    move v2, v3

    .line 1143
    :cond_15
    if-eqz v2, :cond_2f9

    .line 1144
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1145
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1146
    goto/16 :goto_2f9

    .line 1129
    :sswitch_1f
    and-int/lit8 p1, p4, 0x1

    if-eqz p1, :cond_24

    move v2, v3

    .line 1130
    :cond_24
    if-eq v2, v3, :cond_2e

    .line 1131
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1132
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1133
    goto/16 :goto_2f9

    .line 1134
    :cond_2e
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1136
    invoke-virtual {p0}, Landroid/hardware/broadcastradio/V2_0/ITunerSession$Stub;->notifySyspropsChanged()V

    .line 1137
    goto/16 :goto_2f9

    .line 1113
    :sswitch_36
    and-int/lit8 p1, p4, 0x1

    if-eqz p1, :cond_3b

    goto :goto_3c

    :cond_3b
    move v3, v2

    .line 1114
    :goto_3c
    if-eqz v3, :cond_46

    .line 1115
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1116
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1117
    goto/16 :goto_2f9

    .line 1118
    :cond_46
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1120
    invoke-virtual {p0}, Landroid/hardware/broadcastradio/V2_0/ITunerSession$Stub;->getDebugInfo()Landroid/hidl/base/V1_0/DebugInfo;

    move-result-object p1

    .line 1121
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1122
    invoke-virtual {p1, p3}, Landroid/hidl/base/V1_0/DebugInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 1123
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1124
    goto/16 :goto_2f9

    .line 1098
    :sswitch_58
    and-int/lit8 p1, p4, 0x1

    if-eqz p1, :cond_5d

    goto :goto_5e

    :cond_5d
    move v3, v2

    .line 1099
    :goto_5e
    if-eqz v3, :cond_68

    .line 1100
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1101
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1102
    goto/16 :goto_2f9

    .line 1103
    :cond_68
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1105
    invoke-virtual {p0}, Landroid/hardware/broadcastradio/V2_0/ITunerSession$Stub;->ping()V

    .line 1106
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1107
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1108
    goto/16 :goto_2f9

    .line 1088
    :sswitch_76
    and-int/lit8 p1, p4, 0x1

    if-eqz p1, :cond_7b

    move v2, v3

    .line 1089
    :cond_7b
    if-eqz v2, :cond_2f9

    .line 1090
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1091
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1092
    goto/16 :goto_2f9

    .line 1075
    :sswitch_85
    and-int/lit8 p1, p4, 0x1

    if-eqz p1, :cond_8a

    move v2, v3

    .line 1076
    :cond_8a
    if-eq v2, v3, :cond_94

    .line 1077
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1078
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1079
    goto/16 :goto_2f9

    .line 1080
    :cond_94
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1082
    invoke-virtual {p0}, Landroid/hardware/broadcastradio/V2_0/ITunerSession$Stub;->setHALInstrumentation()V

    .line 1083
    goto/16 :goto_2f9

    .line 1036
    :sswitch_9c
    and-int/lit8 p1, p4, 0x1

    if-eqz p1, :cond_a1

    goto :goto_a2

    :cond_a1
    move v3, v2

    .line 1037
    :goto_a2
    if-eqz v3, :cond_ac

    .line 1038
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1039
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1040
    goto/16 :goto_2f9

    .line 1041
    :cond_ac
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1043
    invoke-virtual {p0}, Landroid/hardware/broadcastradio/V2_0/ITunerSession$Stub;->getHashChain()Ljava/util/ArrayList;

    move-result-object p1

    .line 1044
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1046
    new-instance p2, Landroid/os/HwBlob;

    const/16 p4, 0x10

    invoke-direct {p2, p4}, Landroid/os/HwBlob;-><init>(I)V

    .line 1048
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p4

    .line 1049
    const-wide/16 v0, 0x8

    invoke-virtual {p2, v0, v1, p4}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 1050
    const-wide/16 v0, 0xc

    invoke-virtual {p2, v0, v1, v2}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 1051
    new-instance v0, Landroid/os/HwBlob;

    mul-int/lit8 v1, p4, 0x20

    invoke-direct {v0, v1}, Landroid/os/HwBlob;-><init>(I)V

    .line 1052
    nop

    :goto_d3
    if-ge v2, p4, :cond_f4

    .line 1054
    mul-int/lit8 v1, v2, 0x20

    int-to-long v3, v1

    .line 1055
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    .line 1057
    if-eqz v1, :cond_ec

    array-length v5, v1

    const/16 v6, 0x20

    if-ne v5, v6, :cond_ec

    .line 1061
    invoke-virtual {v0, v3, v4, v1}, Landroid/os/HwBlob;->putInt8Array(J[B)V

    .line 1062
    nop

    .line 1052
    add-int/lit8 v2, v2, 0x1

    goto :goto_d3

    .line 1058
    :cond_ec
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Array element is not of the expected length"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1065
    :cond_f4
    const-wide/16 v1, 0x0

    invoke-virtual {p2, v1, v2, v0}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    .line 1067
    invoke-virtual {p3, p2}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    .line 1069
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1070
    goto/16 :goto_2f9

    .line 1020
    :sswitch_101
    and-int/lit8 p1, p4, 0x1

    if-eqz p1, :cond_106

    goto :goto_107

    :cond_106
    move v3, v2

    .line 1021
    :goto_107
    if-eqz v3, :cond_111

    .line 1022
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1023
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1024
    goto/16 :goto_2f9

    .line 1025
    :cond_111
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1027
    invoke-virtual {p0}, Landroid/hardware/broadcastradio/V2_0/ITunerSession$Stub;->interfaceDescriptor()Ljava/lang/String;

    move-result-object p1

    .line 1028
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1029
    invoke-virtual {p3, p1}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 1030
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1031
    goto/16 :goto_2f9

    .line 1003
    :sswitch_123
    and-int/lit8 p1, p4, 0x1

    if-eqz p1, :cond_128

    goto :goto_129

    :cond_128
    move v3, v2

    .line 1004
    :goto_129
    if-eqz v3, :cond_133

    .line 1005
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1006
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1007
    goto/16 :goto_2f9

    .line 1008
    :cond_133
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1010
    invoke-virtual {p2}, Landroid/os/HwParcel;->readNativeHandle()Landroid/os/NativeHandle;

    move-result-object p1

    .line 1011
    invoke-virtual {p2}, Landroid/os/HwParcel;->readStringVector()Ljava/util/ArrayList;

    move-result-object p2

    .line 1012
    invoke-virtual {p0, p1, p2}, Landroid/hardware/broadcastradio/V2_0/ITunerSession$Stub;->debug(Landroid/os/NativeHandle;Ljava/util/ArrayList;)V

    .line 1013
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1014
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1015
    goto/16 :goto_2f9

    .line 987
    :sswitch_149
    and-int/lit8 p1, p4, 0x1

    if-eqz p1, :cond_14e

    goto :goto_14f

    :cond_14e
    move v3, v2

    .line 988
    :goto_14f
    if-eqz v3, :cond_159

    .line 989
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 990
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 991
    goto/16 :goto_2f9

    .line 992
    :cond_159
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 994
    invoke-virtual {p0}, Landroid/hardware/broadcastradio/V2_0/ITunerSession$Stub;->interfaceChain()Ljava/util/ArrayList;

    move-result-object p1

    .line 995
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 996
    invoke-virtual {p3, p1}, Landroid/os/HwParcel;->writeStringVector(Ljava/util/ArrayList;)V

    .line 997
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 998
    goto/16 :goto_2f9

    .line 972
    :pswitch_16b  #0xb
    and-int/lit8 p1, p4, 0x1

    if-eqz p1, :cond_170

    goto :goto_171

    :cond_170
    move v3, v2

    .line 973
    :goto_171
    if-eqz v3, :cond_17b

    .line 974
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 975
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 976
    goto/16 :goto_2f9

    .line 977
    :cond_17b
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 979
    invoke-virtual {p0}, Landroid/hardware/broadcastradio/V2_0/ITunerSession$Stub;->close()V

    .line 980
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 981
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 982
    goto/16 :goto_2f9

    .line 955
    :pswitch_189  #0xa
    and-int/lit8 p1, p4, 0x1

    if-eqz p1, :cond_18e

    goto :goto_18f

    :cond_18e
    move v3, v2

    .line 956
    :goto_18f
    if-eqz v3, :cond_199

    .line 957
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 958
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 959
    goto/16 :goto_2f9

    .line 960
    :cond_199
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 962
    invoke-virtual {p2}, Landroid/os/HwParcel;->readStringVector()Ljava/util/ArrayList;

    move-result-object p1

    .line 963
    invoke-virtual {p0, p1}, Landroid/hardware/broadcastradio/V2_0/ITunerSession$Stub;->getParameters(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object p1

    .line 964
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 965
    invoke-static {p3, p1}, Landroid/hardware/broadcastradio/V2_0/VendorKeyValue;->writeVectorToParcel(Landroid/os/HwParcel;Ljava/util/ArrayList;)V

    .line 966
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 967
    goto/16 :goto_2f9

    .line 938
    :pswitch_1af  #0x9
    and-int/lit8 p1, p4, 0x1

    if-eqz p1, :cond_1b4

    goto :goto_1b5

    :cond_1b4
    move v3, v2

    .line 939
    :goto_1b5
    if-eqz v3, :cond_1bf

    .line 940
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 941
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 942
    goto/16 :goto_2f9

    .line 943
    :cond_1bf
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 945
    invoke-static {p2}, Landroid/hardware/broadcastradio/V2_0/VendorKeyValue;->readVectorFromParcel(Landroid/os/HwParcel;)Ljava/util/ArrayList;

    move-result-object p1

    .line 946
    invoke-virtual {p0, p1}, Landroid/hardware/broadcastradio/V2_0/ITunerSession$Stub;->setParameters(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object p1

    .line 947
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 948
    invoke-static {p3, p1}, Landroid/hardware/broadcastradio/V2_0/VendorKeyValue;->writeVectorToParcel(Landroid/os/HwParcel;Ljava/util/ArrayList;)V

    .line 949
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 950
    goto/16 :goto_2f9

    .line 920
    :pswitch_1d5  #0x8
    and-int/lit8 p1, p4, 0x1

    if-eqz p1, :cond_1da

    goto :goto_1db

    :cond_1da
    move v3, v2

    .line 921
    :goto_1db
    if-eqz v3, :cond_1e5

    .line 922
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 923
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 924
    goto/16 :goto_2f9

    .line 925
    :cond_1e5
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 927
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p1

    .line 928
    invoke-virtual {p2}, Landroid/os/HwParcel;->readBool()Z

    move-result p2

    .line 929
    invoke-virtual {p0, p1, p2}, Landroid/hardware/broadcastradio/V2_0/ITunerSession$Stub;->setConfigFlag(IZ)I

    move-result p1

    .line 930
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 931
    invoke-virtual {p3, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 932
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 933
    goto/16 :goto_2f9

    .line 899
    :pswitch_1ff  #0x7
    and-int/lit8 p1, p4, 0x1

    if-eqz p1, :cond_204

    move v2, v3

    .line 900
    :cond_204
    if-eqz v2, :cond_20e

    .line 901
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 902
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 903
    goto/16 :goto_2f9

    .line 904
    :cond_20e
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 906
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p1

    .line 907
    new-instance p2, Landroid/hardware/broadcastradio/V2_0/ITunerSession$Stub$1;

    invoke-direct {p2, p0, p3}, Landroid/hardware/broadcastradio/V2_0/ITunerSession$Stub$1;-><init>(Landroid/hardware/broadcastradio/V2_0/ITunerSession$Stub;Landroid/os/HwParcel;)V

    invoke-virtual {p0, p1, p2}, Landroid/hardware/broadcastradio/V2_0/ITunerSession$Stub;->isConfigFlagSet(ILandroid/hardware/broadcastradio/V2_0/ITunerSession$isConfigFlagSetCallback;)V

    .line 915
    goto/16 :goto_2f9

    .line 884
    :pswitch_21f  #0x6
    and-int/lit8 p1, p4, 0x1

    if-eqz p1, :cond_224

    goto :goto_225

    :cond_224
    move v3, v2

    .line 885
    :goto_225
    if-eqz v3, :cond_22f

    .line 886
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 887
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 888
    goto/16 :goto_2f9

    .line 889
    :cond_22f
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 891
    invoke-virtual {p0}, Landroid/hardware/broadcastradio/V2_0/ITunerSession$Stub;->stopProgramListUpdates()V

    .line 892
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 893
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 894
    goto/16 :goto_2f9

    .line 866
    :pswitch_23d  #0x5
    and-int/lit8 p1, p4, 0x1

    if-eqz p1, :cond_242

    goto :goto_243

    :cond_242
    move v3, v2

    .line 867
    :goto_243
    if-eqz v3, :cond_24d

    .line 868
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 869
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 870
    goto/16 :goto_2f9

    .line 871
    :cond_24d
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 873
    new-instance p1, Landroid/hardware/broadcastradio/V2_0/ProgramFilter;

    invoke-direct {p1}, Landroid/hardware/broadcastradio/V2_0/ProgramFilter;-><init>()V

    .line 874
    invoke-virtual {p1, p2}, Landroid/hardware/broadcastradio/V2_0/ProgramFilter;->readFromParcel(Landroid/os/HwParcel;)V

    .line 875
    invoke-virtual {p0, p1}, Landroid/hardware/broadcastradio/V2_0/ITunerSession$Stub;->startProgramListUpdates(Landroid/hardware/broadcastradio/V2_0/ProgramFilter;)I

    move-result p1

    .line 876
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 877
    invoke-virtual {p3, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 878
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 879
    goto/16 :goto_2f9

    .line 851
    :pswitch_267  #0x4
    and-int/lit8 p1, p4, 0x1

    if-eqz p1, :cond_26c

    goto :goto_26d

    :cond_26c
    move v3, v2

    .line 852
    :goto_26d
    if-eqz v3, :cond_277

    .line 853
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 854
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 855
    goto/16 :goto_2f9

    .line 856
    :cond_277
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 858
    invoke-virtual {p0}, Landroid/hardware/broadcastradio/V2_0/ITunerSession$Stub;->cancel()V

    .line 859
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 860
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 861
    goto/16 :goto_2f9

    .line 834
    :pswitch_285  #0x3
    and-int/lit8 p1, p4, 0x1

    if-eqz p1, :cond_28a

    goto :goto_28b

    :cond_28a
    move v3, v2

    .line 835
    :goto_28b
    if-eqz v3, :cond_294

    .line 836
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 837
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 838
    goto :goto_2f9

    .line 839
    :cond_294
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 841
    invoke-virtual {p2}, Landroid/os/HwParcel;->readBool()Z

    move-result p1

    .line 842
    invoke-virtual {p0, p1}, Landroid/hardware/broadcastradio/V2_0/ITunerSession$Stub;->step(Z)I

    move-result p1

    .line 843
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 844
    invoke-virtual {p3, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 845
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 846
    goto :goto_2f9

    .line 816
    :pswitch_2a9  #0x2
    and-int/lit8 p1, p4, 0x1

    if-eqz p1, :cond_2ae

    goto :goto_2af

    :cond_2ae
    move v3, v2

    .line 817
    :goto_2af
    if-eqz v3, :cond_2b8

    .line 818
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 819
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 820
    goto :goto_2f9

    .line 821
    :cond_2b8
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 823
    invoke-virtual {p2}, Landroid/os/HwParcel;->readBool()Z

    move-result p1

    .line 824
    invoke-virtual {p2}, Landroid/os/HwParcel;->readBool()Z

    move-result p2

    .line 825
    invoke-virtual {p0, p1, p2}, Landroid/hardware/broadcastradio/V2_0/ITunerSession$Stub;->scan(ZZ)I

    move-result p1

    .line 826
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 827
    invoke-virtual {p3, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 828
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 829
    goto :goto_2f9

    .line 798
    :pswitch_2d1  #0x1
    and-int/lit8 p1, p4, 0x1

    if-eqz p1, :cond_2d6

    goto :goto_2d7

    :cond_2d6
    move v3, v2

    .line 799
    :goto_2d7
    if-eqz v3, :cond_2e0

    .line 800
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 801
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 802
    goto :goto_2f9

    .line 803
    :cond_2e0
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 805
    new-instance p1, Landroid/hardware/broadcastradio/V2_0/ProgramSelector;

    invoke-direct {p1}, Landroid/hardware/broadcastradio/V2_0/ProgramSelector;-><init>()V

    .line 806
    invoke-virtual {p1, p2}, Landroid/hardware/broadcastradio/V2_0/ProgramSelector;->readFromParcel(Landroid/os/HwParcel;)V

    .line 807
    invoke-virtual {p0, p1}, Landroid/hardware/broadcastradio/V2_0/ITunerSession$Stub;->tune(Landroid/hardware/broadcastradio/V2_0/ProgramSelector;)I

    move-result p1

    .line 808
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 809
    invoke-virtual {p3, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 810
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 811
    nop

    .line 1151
    :cond_2f9
    :goto_2f9
    return-void

    :pswitch_data_2fa
    .packed-switch 0x1
        :pswitch_2d1  #00000001
        :pswitch_2a9  #00000002
        :pswitch_285  #00000003
        :pswitch_267  #00000004
        :pswitch_23d  #00000005
        :pswitch_21f  #00000006
        :pswitch_1ff  #00000007
        :pswitch_1d5  #00000008
        :pswitch_1af  #00000009
        :pswitch_189  #0000000a
        :pswitch_16b  #0000000b
    .end packed-switch

    :sswitch_data_314
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

    .line 749
    return-void
.end method

.method public queryLocalInterface(Ljava/lang/String;)Landroid/os/IHwInterface;
    .registers 3

    .line 777
    const-string v0, "android.hardware.broadcastradio@2.0::ITunerSession"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_9

    .line 778
    return-object p0

    .line 780
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
    .registers 2

    .line 771
    const/4 p1, 0x1

    return p1
.end method
