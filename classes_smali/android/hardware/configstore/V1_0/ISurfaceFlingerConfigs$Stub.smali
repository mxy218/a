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
    return-void
.end method

.method public final getDebugInfo()Landroid/hidl/base/V1_0/DebugInfo;
    .registers 4

    .line 706
    new-instance v0, Landroid/hidl/base/V1_0/DebugInfo;

    invoke-direct {v0}, Landroid/hidl/base/V1_0/DebugInfo;-><init>()V

    .line 707
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
    .registers 4

    .line 694
    const/4 p1, 0x1

    return p1
.end method

.method public final notifySyspropsChanged()V
    .registers 1

    .line 716
    invoke-static {}, Landroid/os/HwBinder;->enableInstrumentation()V

    .line 718
    return-void
.end method

.method public onTransact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V
    .registers 12
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

    packed-switch p1, :pswitch_data_2fe

    const-string v0, "android.hidl.base@1.0::IBase"

    sparse-switch p1, :sswitch_data_31a

    goto/16 :goto_2fc

    .line 1096
    :sswitch_10
    and-int/lit8 p1, p4, 0x1

    if-eqz p1, :cond_15

    move v2, v3

    .line 1097
    :cond_15
    if-eqz v2, :cond_2fc

    .line 1098
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1099
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1100
    goto/16 :goto_2fc

    .line 1083
    :sswitch_1f
    and-int/lit8 p1, p4, 0x1

    if-eqz p1, :cond_24

    move v2, v3

    .line 1084
    :cond_24
    if-eq v2, v3, :cond_2e

    .line 1085
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1086
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1087
    goto/16 :goto_2fc

    .line 1088
    :cond_2e
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1090
    invoke-virtual {p0}, Landroid/hardware/configstore/V1_0/ISurfaceFlingerConfigs$Stub;->notifySyspropsChanged()V

    .line 1091
    goto/16 :goto_2fc

    .line 1067
    :sswitch_36
    and-int/lit8 p1, p4, 0x1

    if-eqz p1, :cond_3b

    goto :goto_3c

    :cond_3b
    move v3, v2

    .line 1068
    :goto_3c
    if-eqz v3, :cond_46

    .line 1069
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1070
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1071
    goto/16 :goto_2fc

    .line 1072
    :cond_46
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1074
    invoke-virtual {p0}, Landroid/hardware/configstore/V1_0/ISurfaceFlingerConfigs$Stub;->getDebugInfo()Landroid/hidl/base/V1_0/DebugInfo;

    move-result-object p1

    .line 1075
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1076
    invoke-virtual {p1, p3}, Landroid/hidl/base/V1_0/DebugInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 1077
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1078
    goto/16 :goto_2fc

    .line 1052
    :sswitch_58
    and-int/lit8 p1, p4, 0x1

    if-eqz p1, :cond_5d

    goto :goto_5e

    :cond_5d
    move v3, v2

    .line 1053
    :goto_5e
    if-eqz v3, :cond_68

    .line 1054
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1055
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1056
    goto/16 :goto_2fc

    .line 1057
    :cond_68
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1059
    invoke-virtual {p0}, Landroid/hardware/configstore/V1_0/ISurfaceFlingerConfigs$Stub;->ping()V

    .line 1060
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1061
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1062
    goto/16 :goto_2fc

    .line 1042
    :sswitch_76
    and-int/lit8 p1, p4, 0x1

    if-eqz p1, :cond_7b

    move v2, v3

    .line 1043
    :cond_7b
    if-eqz v2, :cond_2fc

    .line 1044
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1045
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1046
    goto/16 :goto_2fc

    .line 1029
    :sswitch_85
    and-int/lit8 p1, p4, 0x1

    if-eqz p1, :cond_8a

    move v2, v3

    .line 1030
    :cond_8a
    if-eq v2, v3, :cond_94

    .line 1031
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1032
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1033
    goto/16 :goto_2fc

    .line 1034
    :cond_94
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1036
    invoke-virtual {p0}, Landroid/hardware/configstore/V1_0/ISurfaceFlingerConfigs$Stub;->setHALInstrumentation()V

    .line 1037
    goto/16 :goto_2fc

    .line 990
    :sswitch_9c
    and-int/lit8 p1, p4, 0x1

    if-eqz p1, :cond_a1

    goto :goto_a2

    :cond_a1
    move v3, v2

    .line 991
    :goto_a2
    if-eqz v3, :cond_ac

    .line 992
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 993
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 994
    goto/16 :goto_2fc

    .line 995
    :cond_ac
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 997
    invoke-virtual {p0}, Landroid/hardware/configstore/V1_0/ISurfaceFlingerConfigs$Stub;->getHashChain()Ljava/util/ArrayList;

    move-result-object p1

    .line 998
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1000
    new-instance p2, Landroid/os/HwBlob;

    const/16 p4, 0x10

    invoke-direct {p2, p4}, Landroid/os/HwBlob;-><init>(I)V

    .line 1002
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p4

    .line 1003
    const-wide/16 v0, 0x8

    invoke-virtual {p2, v0, v1, p4}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 1004
    const-wide/16 v0, 0xc

    invoke-virtual {p2, v0, v1, v2}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 1005
    new-instance v0, Landroid/os/HwBlob;

    mul-int/lit8 v1, p4, 0x20

    invoke-direct {v0, v1}, Landroid/os/HwBlob;-><init>(I)V

    .line 1006
    nop

    :goto_d3
    if-ge v2, p4, :cond_f4

    .line 1008
    mul-int/lit8 v1, v2, 0x20

    int-to-long v3, v1

    .line 1009
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    .line 1011
    if-eqz v1, :cond_ec

    array-length v5, v1

    const/16 v6, 0x20

    if-ne v5, v6, :cond_ec

    .line 1015
    invoke-virtual {v0, v3, v4, v1}, Landroid/os/HwBlob;->putInt8Array(J[B)V

    .line 1016
    nop

    .line 1006
    add-int/lit8 v2, v2, 0x1

    goto :goto_d3

    .line 1012
    :cond_ec
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Array element is not of the expected length"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1019
    :cond_f4
    const-wide/16 v1, 0x0

    invoke-virtual {p2, v1, v2, v0}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    .line 1021
    invoke-virtual {p3, p2}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    .line 1023
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1024
    goto/16 :goto_2fc

    .line 974
    :sswitch_101
    and-int/lit8 p1, p4, 0x1

    if-eqz p1, :cond_106

    goto :goto_107

    :cond_106
    move v3, v2

    .line 975
    :goto_107
    if-eqz v3, :cond_111

    .line 976
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 977
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 978
    goto/16 :goto_2fc

    .line 979
    :cond_111
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 981
    invoke-virtual {p0}, Landroid/hardware/configstore/V1_0/ISurfaceFlingerConfigs$Stub;->interfaceDescriptor()Ljava/lang/String;

    move-result-object p1

    .line 982
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 983
    invoke-virtual {p3, p1}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 984
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 985
    goto/16 :goto_2fc

    .line 957
    :sswitch_123
    and-int/lit8 p1, p4, 0x1

    if-eqz p1, :cond_128

    goto :goto_129

    :cond_128
    move v3, v2

    .line 958
    :goto_129
    if-eqz v3, :cond_133

    .line 959
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 960
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 961
    goto/16 :goto_2fc

    .line 962
    :cond_133
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 964
    invoke-virtual {p2}, Landroid/os/HwParcel;->readNativeHandle()Landroid/os/NativeHandle;

    move-result-object p1

    .line 965
    invoke-virtual {p2}, Landroid/os/HwParcel;->readStringVector()Ljava/util/ArrayList;

    move-result-object p2

    .line 966
    invoke-virtual {p0, p1, p2}, Landroid/hardware/configstore/V1_0/ISurfaceFlingerConfigs$Stub;->debug(Landroid/os/NativeHandle;Ljava/util/ArrayList;)V

    .line 967
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 968
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 969
    goto/16 :goto_2fc

    .line 941
    :sswitch_149
    and-int/lit8 p1, p4, 0x1

    if-eqz p1, :cond_14e

    goto :goto_14f

    :cond_14e
    move v3, v2

    .line 942
    :goto_14f
    if-eqz v3, :cond_159

    .line 943
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 944
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 945
    goto/16 :goto_2fc

    .line 946
    :cond_159
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 948
    invoke-virtual {p0}, Landroid/hardware/configstore/V1_0/ISurfaceFlingerConfigs$Stub;->interfaceChain()Ljava/util/ArrayList;

    move-result-object p1

    .line 949
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 950
    invoke-virtual {p3, p1}, Landroid/os/HwParcel;->writeStringVector(Ljava/util/ArrayList;)V

    .line 951
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 952
    goto/16 :goto_2fc

    .line 925
    :pswitch_16b  #0xc
    and-int/lit8 p1, p4, 0x1

    if-eqz p1, :cond_170

    goto :goto_171

    :cond_170
    move v3, v2

    .line 926
    :goto_171
    if-eqz v3, :cond_17b

    .line 927
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 928
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 929
    goto/16 :goto_2fc

    .line 930
    :cond_17b
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 932
    invoke-virtual {p0}, Landroid/hardware/configstore/V1_0/ISurfaceFlingerConfigs$Stub;->startGraphicsAllocatorService()Landroid/hardware/configstore/V1_0/OptionalBool;

    move-result-object p1

    .line 933
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 934
    invoke-virtual {p1, p3}, Landroid/hardware/configstore/V1_0/OptionalBool;->writeToParcel(Landroid/os/HwParcel;)V

    .line 935
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 936
    goto/16 :goto_2fc

    .line 909
    :pswitch_18d  #0xb
    and-int/lit8 p1, p4, 0x1

    if-eqz p1, :cond_192

    goto :goto_193

    :cond_192
    move v3, v2

    .line 910
    :goto_193
    if-eqz v3, :cond_19d

    .line 911
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 912
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 913
    goto/16 :goto_2fc

    .line 914
    :cond_19d
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 916
    invoke-virtual {p0}, Landroid/hardware/configstore/V1_0/ISurfaceFlingerConfigs$Stub;->maxFrameBufferAcquiredBuffers()Landroid/hardware/configstore/V1_0/OptionalInt64;

    move-result-object p1

    .line 917
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 918
    invoke-virtual {p1, p3}, Landroid/hardware/configstore/V1_0/OptionalInt64;->writeToParcel(Landroid/os/HwParcel;)V

    .line 919
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 920
    goto/16 :goto_2fc

    .line 893
    :pswitch_1af  #0xa
    and-int/lit8 p1, p4, 0x1

    if-eqz p1, :cond_1b4

    goto :goto_1b5

    :cond_1b4
    move v3, v2

    .line 894
    :goto_1b5
    if-eqz v3, :cond_1bf

    .line 895
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 896
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 897
    goto/16 :goto_2fc

    .line 898
    :cond_1bf
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 900
    invoke-virtual {p0}, Landroid/hardware/configstore/V1_0/ISurfaceFlingerConfigs$Stub;->useVrFlinger()Landroid/hardware/configstore/V1_0/OptionalBool;

    move-result-object p1

    .line 901
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 902
    invoke-virtual {p1, p3}, Landroid/hardware/configstore/V1_0/OptionalBool;->writeToParcel(Landroid/os/HwParcel;)V

    .line 903
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 904
    goto/16 :goto_2fc

    .line 877
    :pswitch_1d1  #0x9
    and-int/lit8 p1, p4, 0x1

    if-eqz p1, :cond_1d6

    goto :goto_1d7

    :cond_1d6
    move v3, v2

    .line 878
    :goto_1d7
    if-eqz v3, :cond_1e1

    .line 879
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 880
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 881
    goto/16 :goto_2fc

    .line 882
    :cond_1e1
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 884
    invoke-virtual {p0}, Landroid/hardware/configstore/V1_0/ISurfaceFlingerConfigs$Stub;->hasSyncFramework()Landroid/hardware/configstore/V1_0/OptionalBool;

    move-result-object p1

    .line 885
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 886
    invoke-virtual {p1, p3}, Landroid/hardware/configstore/V1_0/OptionalBool;->writeToParcel(Landroid/os/HwParcel;)V

    .line 887
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 888
    goto/16 :goto_2fc

    .line 861
    :pswitch_1f3  #0x8
    and-int/lit8 p1, p4, 0x1

    if-eqz p1, :cond_1f8

    goto :goto_1f9

    :cond_1f8
    move v3, v2

    .line 862
    :goto_1f9
    if-eqz v3, :cond_203

    .line 863
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 864
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 865
    goto/16 :goto_2fc

    .line 866
    :cond_203
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 868
    invoke-virtual {p0}, Landroid/hardware/configstore/V1_0/ISurfaceFlingerConfigs$Stub;->maxVirtualDisplaySize()Landroid/hardware/configstore/V1_0/OptionalUInt64;

    move-result-object p1

    .line 869
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 870
    invoke-virtual {p1, p3}, Landroid/hardware/configstore/V1_0/OptionalUInt64;->writeToParcel(Landroid/os/HwParcel;)V

    .line 871
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 872
    goto/16 :goto_2fc

    .line 845
    :pswitch_215  #0x7
    and-int/lit8 p1, p4, 0x1

    if-eqz p1, :cond_21a

    goto :goto_21b

    :cond_21a
    move v3, v2

    .line 846
    :goto_21b
    if-eqz v3, :cond_225

    .line 847
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 848
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 849
    goto/16 :goto_2fc

    .line 850
    :cond_225
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 852
    invoke-virtual {p0}, Landroid/hardware/configstore/V1_0/ISurfaceFlingerConfigs$Stub;->useHwcForRGBtoYUV()Landroid/hardware/configstore/V1_0/OptionalBool;

    move-result-object p1

    .line 853
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 854
    invoke-virtual {p1, p3}, Landroid/hardware/configstore/V1_0/OptionalBool;->writeToParcel(Landroid/os/HwParcel;)V

    .line 855
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 856
    goto/16 :goto_2fc

    .line 829
    :pswitch_237  #0x6
    and-int/lit8 p1, p4, 0x1

    if-eqz p1, :cond_23c

    goto :goto_23d

    :cond_23c
    move v3, v2

    .line 830
    :goto_23d
    if-eqz v3, :cond_247

    .line 831
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 832
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 833
    goto/16 :goto_2fc

    .line 834
    :cond_247
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 836
    invoke-virtual {p0}, Landroid/hardware/configstore/V1_0/ISurfaceFlingerConfigs$Stub;->presentTimeOffsetFromVSyncNs()Landroid/hardware/configstore/V1_0/OptionalInt64;

    move-result-object p1

    .line 837
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 838
    invoke-virtual {p1, p3}, Landroid/hardware/configstore/V1_0/OptionalInt64;->writeToParcel(Landroid/os/HwParcel;)V

    .line 839
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 840
    goto/16 :goto_2fc

    .line 813
    :pswitch_259  #0x5
    and-int/lit8 p1, p4, 0x1

    if-eqz p1, :cond_25e

    goto :goto_25f

    :cond_25e
    move v3, v2

    .line 814
    :goto_25f
    if-eqz v3, :cond_269

    .line 815
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 816
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 817
    goto/16 :goto_2fc

    .line 818
    :cond_269
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 820
    invoke-virtual {p0}, Landroid/hardware/configstore/V1_0/ISurfaceFlingerConfigs$Stub;->hasHDRDisplay()Landroid/hardware/configstore/V1_0/OptionalBool;

    move-result-object p1

    .line 821
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 822
    invoke-virtual {p1, p3}, Landroid/hardware/configstore/V1_0/OptionalBool;->writeToParcel(Landroid/os/HwParcel;)V

    .line 823
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 824
    goto/16 :goto_2fc

    .line 797
    :pswitch_27b  #0x4
    and-int/lit8 p1, p4, 0x1

    if-eqz p1, :cond_280

    goto :goto_281

    :cond_280
    move v3, v2

    .line 798
    :goto_281
    if-eqz v3, :cond_28b

    .line 799
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 800
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 801
    goto/16 :goto_2fc

    .line 802
    :cond_28b
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 804
    invoke-virtual {p0}, Landroid/hardware/configstore/V1_0/ISurfaceFlingerConfigs$Stub;->hasWideColorDisplay()Landroid/hardware/configstore/V1_0/OptionalBool;

    move-result-object p1

    .line 805
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 806
    invoke-virtual {p1, p3}, Landroid/hardware/configstore/V1_0/OptionalBool;->writeToParcel(Landroid/os/HwParcel;)V

    .line 807
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 808
    goto :goto_2fc

    .line 781
    :pswitch_29c  #0x3
    and-int/lit8 p1, p4, 0x1

    if-eqz p1, :cond_2a1

    goto :goto_2a2

    :cond_2a1
    move v3, v2

    .line 782
    :goto_2a2
    if-eqz v3, :cond_2ab

    .line 783
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 784
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 785
    goto :goto_2fc

    .line 786
    :cond_2ab
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 788
    invoke-virtual {p0}, Landroid/hardware/configstore/V1_0/ISurfaceFlingerConfigs$Stub;->useContextPriority()Landroid/hardware/configstore/V1_0/OptionalBool;

    move-result-object p1

    .line 789
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 790
    invoke-virtual {p1, p3}, Landroid/hardware/configstore/V1_0/OptionalBool;->writeToParcel(Landroid/os/HwParcel;)V

    .line 791
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 792
    goto :goto_2fc

    .line 765
    :pswitch_2bc  #0x2
    and-int/lit8 p1, p4, 0x1

    if-eqz p1, :cond_2c1

    goto :goto_2c2

    :cond_2c1
    move v3, v2

    .line 766
    :goto_2c2
    if-eqz v3, :cond_2cb

    .line 767
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 768
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 769
    goto :goto_2fc

    .line 770
    :cond_2cb
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 772
    invoke-virtual {p0}, Landroid/hardware/configstore/V1_0/ISurfaceFlingerConfigs$Stub;->vsyncSfEventPhaseOffsetNs()Landroid/hardware/configstore/V1_0/OptionalInt64;

    move-result-object p1

    .line 773
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 774
    invoke-virtual {p1, p3}, Landroid/hardware/configstore/V1_0/OptionalInt64;->writeToParcel(Landroid/os/HwParcel;)V

    .line 775
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 776
    goto :goto_2fc

    .line 749
    :pswitch_2dc  #0x1
    and-int/lit8 p1, p4, 0x1

    if-eqz p1, :cond_2e1

    goto :goto_2e2

    :cond_2e1
    move v3, v2

    .line 750
    :goto_2e2
    if-eqz v3, :cond_2eb

    .line 751
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 752
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 753
    goto :goto_2fc

    .line 754
    :cond_2eb
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 756
    invoke-virtual {p0}, Landroid/hardware/configstore/V1_0/ISurfaceFlingerConfigs$Stub;->vsyncEventPhaseOffsetNs()Landroid/hardware/configstore/V1_0/OptionalInt64;

    move-result-object p1

    .line 757
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 758
    invoke-virtual {p1, p3}, Landroid/hardware/configstore/V1_0/OptionalInt64;->writeToParcel(Landroid/os/HwParcel;)V

    .line 759
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 760
    nop

    .line 1105
    :cond_2fc
    :goto_2fc
    return-void

    nop

    :pswitch_data_2fe
    .packed-switch 0x1
        :pswitch_2dc  #00000001
        :pswitch_2bc  #00000002
        :pswitch_29c  #00000003
        :pswitch_27b  #00000004
        :pswitch_259  #00000005
        :pswitch_237  #00000006
        :pswitch_215  #00000007
        :pswitch_1f3  #00000008
        :pswitch_1d1  #00000009
        :pswitch_1af  #0000000a
        :pswitch_18d  #0000000b
        :pswitch_16b  #0000000c
    .end packed-switch

    :sswitch_data_31a
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

    .line 700
    return-void
.end method

.method public queryLocalInterface(Ljava/lang/String;)Landroid/os/IHwInterface;
    .registers 3

    .line 728
    const-string v0, "android.hardware.configstore@1.0::ISurfaceFlingerConfigs"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_9

    .line 729
    return-object p0

    .line 731
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
    .registers 2

    .line 722
    const/4 p1, 0x1

    return p1
.end method
