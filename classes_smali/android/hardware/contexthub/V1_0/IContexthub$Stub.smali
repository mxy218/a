.class public abstract Landroid/hardware/contexthub/V1_0/IContexthub$Stub;
.super Landroid/os/HwBinder;
.source "IContexthub.java"

# interfaces
.implements Landroid/hardware/contexthub/V1_0/IContexthub;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/contexthub/V1_0/IContexthub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 621
    invoke-direct {p0}, Landroid/os/HwBinder;-><init>()V

    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IHwBinder;
    .registers 1

    .line 624
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

    .line 637
    return-void
.end method

.method public final getDebugInfo()Landroid/hidl/base/V1_0/DebugInfo;
    .registers 4

    .line 674
    new-instance v0, Landroid/hidl/base/V1_0/DebugInfo;

    invoke-direct {v0}, Landroid/hidl/base/V1_0/DebugInfo;-><init>()V

    .line 675
    invoke-static {}, Landroid/os/HidlSupport;->getPidIfSharable()I

    move-result v1

    iput v1, v0, Landroid/hidl/base/V1_0/DebugInfo;->pid:I

    .line 676
    const-wide/16 v1, 0x0

    iput-wide v1, v0, Landroid/hidl/base/V1_0/DebugInfo;->ptr:J

    .line 677
    const/4 v1, 0x0

    iput v1, v0, Landroid/hidl/base/V1_0/DebugInfo;->arch:I

    .line 678
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

    .line 649
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
        -0x5bt
        -0x52t
        0xft
        -0x18t
        0x66t
        0x7ft
        0xbt
        0x1at
        -0x10t
        -0x65t
        0x13t
        -0x19t
        0x2dt
        0x29t
        0x60t
        0xft
        0x4et
        -0x4dt
        -0x7bt
        0x3bt
        0x25t
        0x70t
        0x79t
        -0x3ct
        0x5at
        -0x67t
        -0x4at
        -0xct
        -0x5dt
        0x36t
        0x6t
        0x49t
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

    .line 629
    new-instance v0, Ljava/util/ArrayList;

    const-string v1, "android.hardware.contexthub@1.0::IContexthub"

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

    .line 643
    const-string v0, "android.hardware.contexthub@1.0::IContexthub"

    return-object v0
.end method

.method public final linkToDeath(Landroid/os/IHwBinder$DeathRecipient;J)Z
    .registers 4

    .line 662
    const/4 p1, 0x1

    return p1
.end method

.method public final notifySyspropsChanged()V
    .registers 1

    .line 684
    invoke-static {}, Landroid/os/HwBinder;->enableInstrumentation()V

    .line 686
    return-void
.end method

.method public onTransact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V
    .registers 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 714
    const-string v0, "android.hardware.contexthub@1.0::IContexthub"

    const/high16 v1, -0x80000000

    const/4 v2, 0x0

    const/4 v3, 0x1

    packed-switch p1, :pswitch_data_2c8

    const-string v0, "android.hidl.base@1.0::IBase"

    sparse-switch p1, :sswitch_data_2dc

    goto/16 :goto_2c6

    .line 1019
    :sswitch_10
    and-int/lit8 p1, p4, 0x1

    if-eqz p1, :cond_15

    move v2, v3

    .line 1020
    :cond_15
    if-eqz v2, :cond_2c6

    .line 1021
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1022
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1023
    goto/16 :goto_2c6

    .line 1006
    :sswitch_1f
    and-int/lit8 p1, p4, 0x1

    if-eqz p1, :cond_24

    move v2, v3

    .line 1007
    :cond_24
    if-eq v2, v3, :cond_2e

    .line 1008
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1009
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1010
    goto/16 :goto_2c6

    .line 1011
    :cond_2e
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1013
    invoke-virtual {p0}, Landroid/hardware/contexthub/V1_0/IContexthub$Stub;->notifySyspropsChanged()V

    .line 1014
    goto/16 :goto_2c6

    .line 990
    :sswitch_36
    and-int/lit8 p1, p4, 0x1

    if-eqz p1, :cond_3b

    goto :goto_3c

    :cond_3b
    move v3, v2

    .line 991
    :goto_3c
    if-eqz v3, :cond_46

    .line 992
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 993
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 994
    goto/16 :goto_2c6

    .line 995
    :cond_46
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 997
    invoke-virtual {p0}, Landroid/hardware/contexthub/V1_0/IContexthub$Stub;->getDebugInfo()Landroid/hidl/base/V1_0/DebugInfo;

    move-result-object p1

    .line 998
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 999
    invoke-virtual {p1, p3}, Landroid/hidl/base/V1_0/DebugInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 1000
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1001
    goto/16 :goto_2c6

    .line 975
    :sswitch_58
    and-int/lit8 p1, p4, 0x1

    if-eqz p1, :cond_5d

    goto :goto_5e

    :cond_5d
    move v3, v2

    .line 976
    :goto_5e
    if-eqz v3, :cond_68

    .line 977
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 978
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 979
    goto/16 :goto_2c6

    .line 980
    :cond_68
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 982
    invoke-virtual {p0}, Landroid/hardware/contexthub/V1_0/IContexthub$Stub;->ping()V

    .line 983
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 984
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 985
    goto/16 :goto_2c6

    .line 965
    :sswitch_76
    and-int/lit8 p1, p4, 0x1

    if-eqz p1, :cond_7b

    move v2, v3

    .line 966
    :cond_7b
    if-eqz v2, :cond_2c6

    .line 967
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 968
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 969
    goto/16 :goto_2c6

    .line 952
    :sswitch_85
    and-int/lit8 p1, p4, 0x1

    if-eqz p1, :cond_8a

    move v2, v3

    .line 953
    :cond_8a
    if-eq v2, v3, :cond_94

    .line 954
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 955
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 956
    goto/16 :goto_2c6

    .line 957
    :cond_94
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 959
    invoke-virtual {p0}, Landroid/hardware/contexthub/V1_0/IContexthub$Stub;->setHALInstrumentation()V

    .line 960
    goto/16 :goto_2c6

    .line 913
    :sswitch_9c
    and-int/lit8 p1, p4, 0x1

    if-eqz p1, :cond_a1

    goto :goto_a2

    :cond_a1
    move v3, v2

    .line 914
    :goto_a2
    if-eqz v3, :cond_ac

    .line 915
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 916
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 917
    goto/16 :goto_2c6

    .line 918
    :cond_ac
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 920
    invoke-virtual {p0}, Landroid/hardware/contexthub/V1_0/IContexthub$Stub;->getHashChain()Ljava/util/ArrayList;

    move-result-object p1

    .line 921
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 923
    new-instance p2, Landroid/os/HwBlob;

    const/16 p4, 0x10

    invoke-direct {p2, p4}, Landroid/os/HwBlob;-><init>(I)V

    .line 925
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p4

    .line 926
    const-wide/16 v0, 0x8

    invoke-virtual {p2, v0, v1, p4}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 927
    const-wide/16 v0, 0xc

    invoke-virtual {p2, v0, v1, v2}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 928
    new-instance v0, Landroid/os/HwBlob;

    mul-int/lit8 v1, p4, 0x20

    invoke-direct {v0, v1}, Landroid/os/HwBlob;-><init>(I)V

    .line 929
    nop

    :goto_d3
    if-ge v2, p4, :cond_f4

    .line 931
    mul-int/lit8 v1, v2, 0x20

    int-to-long v3, v1

    .line 932
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    .line 934
    if-eqz v1, :cond_ec

    array-length v5, v1

    const/16 v6, 0x20

    if-ne v5, v6, :cond_ec

    .line 938
    invoke-virtual {v0, v3, v4, v1}, Landroid/os/HwBlob;->putInt8Array(J[B)V

    .line 939
    nop

    .line 929
    add-int/lit8 v2, v2, 0x1

    goto :goto_d3

    .line 935
    :cond_ec
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Array element is not of the expected length"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 942
    :cond_f4
    const-wide/16 v1, 0x0

    invoke-virtual {p2, v1, v2, v0}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    .line 944
    invoke-virtual {p3, p2}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    .line 946
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 947
    goto/16 :goto_2c6

    .line 897
    :sswitch_101
    and-int/lit8 p1, p4, 0x1

    if-eqz p1, :cond_106

    goto :goto_107

    :cond_106
    move v3, v2

    .line 898
    :goto_107
    if-eqz v3, :cond_111

    .line 899
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 900
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 901
    goto/16 :goto_2c6

    .line 902
    :cond_111
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 904
    invoke-virtual {p0}, Landroid/hardware/contexthub/V1_0/IContexthub$Stub;->interfaceDescriptor()Ljava/lang/String;

    move-result-object p1

    .line 905
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 906
    invoke-virtual {p3, p1}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 907
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 908
    goto/16 :goto_2c6

    .line 880
    :sswitch_123
    and-int/lit8 p1, p4, 0x1

    if-eqz p1, :cond_128

    goto :goto_129

    :cond_128
    move v3, v2

    .line 881
    :goto_129
    if-eqz v3, :cond_133

    .line 882
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 883
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 884
    goto/16 :goto_2c6

    .line 885
    :cond_133
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 887
    invoke-virtual {p2}, Landroid/os/HwParcel;->readNativeHandle()Landroid/os/NativeHandle;

    move-result-object p1

    .line 888
    invoke-virtual {p2}, Landroid/os/HwParcel;->readStringVector()Ljava/util/ArrayList;

    move-result-object p2

    .line 889
    invoke-virtual {p0, p1, p2}, Landroid/hardware/contexthub/V1_0/IContexthub$Stub;->debug(Landroid/os/NativeHandle;Ljava/util/ArrayList;)V

    .line 890
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 891
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 892
    goto/16 :goto_2c6

    .line 864
    :sswitch_149
    and-int/lit8 p1, p4, 0x1

    if-eqz p1, :cond_14e

    goto :goto_14f

    :cond_14e
    move v3, v2

    .line 865
    :goto_14f
    if-eqz v3, :cond_159

    .line 866
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 867
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 868
    goto/16 :goto_2c6

    .line 869
    :cond_159
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 871
    invoke-virtual {p0}, Landroid/hardware/contexthub/V1_0/IContexthub$Stub;->interfaceChain()Ljava/util/ArrayList;

    move-result-object p1

    .line 872
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 873
    invoke-virtual {p3, p1}, Landroid/os/HwParcel;->writeStringVector(Ljava/util/ArrayList;)V

    .line 874
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 875
    goto/16 :goto_2c6

    .line 847
    :pswitch_16b  #0x8
    and-int/lit8 p1, p4, 0x1

    if-eqz p1, :cond_170

    goto :goto_171

    :cond_170
    move v3, v2

    .line 848
    :goto_171
    if-eqz v3, :cond_17b

    .line 849
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 850
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 851
    goto/16 :goto_2c6

    .line 852
    :cond_17b
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 854
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p1

    .line 855
    invoke-virtual {p0, p1}, Landroid/hardware/contexthub/V1_0/IContexthub$Stub;->queryApps(I)I

    move-result p1

    .line 856
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 857
    invoke-virtual {p3, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 858
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 859
    goto/16 :goto_2c6

    .line 828
    :pswitch_191  #0x7
    and-int/lit8 p1, p4, 0x1

    if-eqz p1, :cond_196

    goto :goto_197

    :cond_196
    move v3, v2

    .line 829
    :goto_197
    if-eqz v3, :cond_1a1

    .line 830
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 831
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 832
    goto/16 :goto_2c6

    .line 833
    :cond_1a1
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 835
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p1

    .line 836
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt64()J

    move-result-wide v0

    .line 837
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p2

    .line 838
    invoke-virtual {p0, p1, v0, v1, p2}, Landroid/hardware/contexthub/V1_0/IContexthub$Stub;->disableNanoApp(IJI)I

    move-result p1

    .line 839
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 840
    invoke-virtual {p3, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 841
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 842
    goto/16 :goto_2c6

    .line 809
    :pswitch_1bf  #0x6
    and-int/lit8 p1, p4, 0x1

    if-eqz p1, :cond_1c4

    goto :goto_1c5

    :cond_1c4
    move v3, v2

    .line 810
    :goto_1c5
    if-eqz v3, :cond_1cf

    .line 811
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 812
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 813
    goto/16 :goto_2c6

    .line 814
    :cond_1cf
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 816
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p1

    .line 817
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt64()J

    move-result-wide v0

    .line 818
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p2

    .line 819
    invoke-virtual {p0, p1, v0, v1, p2}, Landroid/hardware/contexthub/V1_0/IContexthub$Stub;->enableNanoApp(IJI)I

    move-result p1

    .line 820
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 821
    invoke-virtual {p3, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 822
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 823
    goto/16 :goto_2c6

    .line 790
    :pswitch_1ed  #0x5
    and-int/lit8 p1, p4, 0x1

    if-eqz p1, :cond_1f2

    goto :goto_1f3

    :cond_1f2
    move v3, v2

    .line 791
    :goto_1f3
    if-eqz v3, :cond_1fd

    .line 792
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 793
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 794
    goto/16 :goto_2c6

    .line 795
    :cond_1fd
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 797
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p1

    .line 798
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt64()J

    move-result-wide v0

    .line 799
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p2

    .line 800
    invoke-virtual {p0, p1, v0, v1, p2}, Landroid/hardware/contexthub/V1_0/IContexthub$Stub;->unloadNanoApp(IJI)I

    move-result p1

    .line 801
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 802
    invoke-virtual {p3, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 803
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 804
    goto/16 :goto_2c6

    .line 770
    :pswitch_21b  #0x4
    and-int/lit8 p1, p4, 0x1

    if-eqz p1, :cond_220

    goto :goto_221

    :cond_220
    move v3, v2

    .line 771
    :goto_221
    if-eqz v3, :cond_22b

    .line 772
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 773
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 774
    goto/16 :goto_2c6

    .line 775
    :cond_22b
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 777
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p1

    .line 778
    new-instance p4, Landroid/hardware/contexthub/V1_0/NanoAppBinary;

    invoke-direct {p4}, Landroid/hardware/contexthub/V1_0/NanoAppBinary;-><init>()V

    .line 779
    invoke-virtual {p4, p2}, Landroid/hardware/contexthub/V1_0/NanoAppBinary;->readFromParcel(Landroid/os/HwParcel;)V

    .line 780
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p2

    .line 781
    invoke-virtual {p0, p1, p4, p2}, Landroid/hardware/contexthub/V1_0/IContexthub$Stub;->loadNanoApp(ILandroid/hardware/contexthub/V1_0/NanoAppBinary;I)I

    move-result p1

    .line 782
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 783
    invoke-virtual {p3, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 784
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 785
    goto/16 :goto_2c6

    .line 751
    :pswitch_24d  #0x3
    and-int/lit8 p1, p4, 0x1

    if-eqz p1, :cond_252

    goto :goto_253

    :cond_252
    move v3, v2

    .line 752
    :goto_253
    if-eqz v3, :cond_25d

    .line 753
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 754
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 755
    goto/16 :goto_2c6

    .line 756
    :cond_25d
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 758
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p1

    .line 759
    new-instance p4, Landroid/hardware/contexthub/V1_0/ContextHubMsg;

    invoke-direct {p4}, Landroid/hardware/contexthub/V1_0/ContextHubMsg;-><init>()V

    .line 760
    invoke-virtual {p4, p2}, Landroid/hardware/contexthub/V1_0/ContextHubMsg;->readFromParcel(Landroid/os/HwParcel;)V

    .line 761
    invoke-virtual {p0, p1, p4}, Landroid/hardware/contexthub/V1_0/IContexthub$Stub;->sendMessageToHub(ILandroid/hardware/contexthub/V1_0/ContextHubMsg;)I

    move-result p1

    .line 762
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 763
    invoke-virtual {p3, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 764
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 765
    goto :goto_2c6

    .line 733
    :pswitch_27a  #0x2
    and-int/lit8 p1, p4, 0x1

    if-eqz p1, :cond_27f

    goto :goto_280

    :cond_27f
    move v3, v2

    .line 734
    :goto_280
    if-eqz v3, :cond_289

    .line 735
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 736
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 737
    goto :goto_2c6

    .line 738
    :cond_289
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 740
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p1

    .line 741
    invoke-virtual {p2}, Landroid/os/HwParcel;->readStrongBinder()Landroid/os/IHwBinder;

    move-result-object p2

    invoke-static {p2}, Landroid/hardware/contexthub/V1_0/IContexthubCallback;->asInterface(Landroid/os/IHwBinder;)Landroid/hardware/contexthub/V1_0/IContexthubCallback;

    move-result-object p2

    .line 742
    invoke-virtual {p0, p1, p2}, Landroid/hardware/contexthub/V1_0/IContexthub$Stub;->registerCallback(ILandroid/hardware/contexthub/V1_0/IContexthubCallback;)I

    move-result p1

    .line 743
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 744
    invoke-virtual {p3, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 745
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 746
    goto :goto_2c6

    .line 717
    :pswitch_2a6  #0x1
    and-int/lit8 p1, p4, 0x1

    if-eqz p1, :cond_2ab

    goto :goto_2ac

    :cond_2ab
    move v3, v2

    .line 718
    :goto_2ac
    if-eqz v3, :cond_2b5

    .line 719
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 720
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 721
    goto :goto_2c6

    .line 722
    :cond_2b5
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 724
    invoke-virtual {p0}, Landroid/hardware/contexthub/V1_0/IContexthub$Stub;->getHubs()Ljava/util/ArrayList;

    move-result-object p1

    .line 725
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 726
    invoke-static {p3, p1}, Landroid/hardware/contexthub/V1_0/ContextHub;->writeVectorToParcel(Landroid/os/HwParcel;Ljava/util/ArrayList;)V

    .line 727
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 728
    nop

    .line 1028
    :cond_2c6
    :goto_2c6
    return-void

    nop

    :pswitch_data_2c8
    .packed-switch 0x1
        :pswitch_2a6  #00000001
        :pswitch_27a  #00000002
        :pswitch_24d  #00000003
        :pswitch_21b  #00000004
        :pswitch_1ed  #00000005
        :pswitch_1bf  #00000006
        :pswitch_191  #00000007
        :pswitch_16b  #00000008
    .end packed-switch

    :sswitch_data_2dc
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

    .line 668
    return-void
.end method

.method public queryLocalInterface(Ljava/lang/String;)Landroid/os/IHwInterface;
    .registers 3

    .line 696
    const-string v0, "android.hardware.contexthub@1.0::IContexthub"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_9

    .line 697
    return-object p0

    .line 699
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

    .line 703
    invoke-virtual {p0, p1}, Landroid/hardware/contexthub/V1_0/IContexthub$Stub;->registerService(Ljava/lang/String;)V

    .line 704
    return-void
.end method

.method public final setHALInstrumentation()V
    .registers 1

    .line 658
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 708
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/hardware/contexthub/V1_0/IContexthub$Stub;->interfaceDescriptor()Ljava/lang/String;

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

    .line 690
    const/4 p1, 0x1

    return p1
.end method
