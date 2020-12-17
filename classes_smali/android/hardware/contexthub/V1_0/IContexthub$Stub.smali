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

    .line 637
    .local p2, "options":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    return-void
.end method

.method public final getDebugInfo()Landroid/hidl/base/V1_0/DebugInfo;
    .registers 4

    .line 674
    new-instance v0, Landroid/hidl/base/V1_0/DebugInfo;

    invoke-direct {v0}, Landroid/hidl/base/V1_0/DebugInfo;-><init>()V

    .line 675
    .local v0, "info":Landroid/hidl/base/V1_0/DebugInfo;
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
    .registers 5
    .param p1, "recipient"  # Landroid/os/IHwBinder$DeathRecipient;
    .param p2, "cookie"  # J

    .line 662
    const/4 v0, 0x1

    return v0
.end method

.method public final notifySyspropsChanged()V
    .registers 1

    .line 684
    invoke-static {}, Landroid/os/HwBinder;->enableInstrumentation()V

    .line 686
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

    .line 714
    const-string v0, "android.hardware.contexthub@1.0::IContexthub"

    const/high16 v1, -0x80000000

    const/4 v2, 0x0

    const/4 v3, 0x1

    packed-switch p1, :pswitch_data_2ca

    const-string v0, "android.hidl.base@1.0::IBase"

    sparse-switch p1, :sswitch_data_2de

    goto/16 :goto_2c8

    .line 1019
    :sswitch_10
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_15

    move v2, v3

    :cond_15
    move v0, v2

    .line 1020
    .local v0, "_hidl_is_oneway":Z
    if-eqz v0, :cond_2c8

    .line 1021
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1022
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1023
    goto/16 :goto_2c8

    .line 1006
    .end local v0  # "_hidl_is_oneway":Z
    :sswitch_20
    and-int/lit8 v4, p4, 0x1

    if-eqz v4, :cond_25

    move v2, v3

    .line 1007
    .local v2, "_hidl_is_oneway":Z
    :cond_25
    if-eq v2, v3, :cond_2f

    .line 1008
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1009
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1010
    goto/16 :goto_2c8

    .line 1011
    :cond_2f
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1013
    invoke-virtual {p0}, Landroid/hardware/contexthub/V1_0/IContexthub$Stub;->notifySyspropsChanged()V

    .line 1014
    goto/16 :goto_2c8

    .line 990
    .end local v2  # "_hidl_is_oneway":Z
    :sswitch_37
    and-int/lit8 v4, p4, 0x1

    if-eqz v4, :cond_3c

    goto :goto_3d

    :cond_3c
    move v3, v2

    .line 991
    .local v3, "_hidl_is_oneway":Z
    :goto_3d
    if-eqz v3, :cond_47

    .line 992
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 993
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 994
    goto/16 :goto_2c8

    .line 995
    :cond_47
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 997
    invoke-virtual {p0}, Landroid/hardware/contexthub/V1_0/IContexthub$Stub;->getDebugInfo()Landroid/hidl/base/V1_0/DebugInfo;

    move-result-object v0

    .line 998
    .local v0, "_hidl_out_info":Landroid/hidl/base/V1_0/DebugInfo;
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 999
    invoke-virtual {v0, p3}, Landroid/hidl/base/V1_0/DebugInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 1000
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1001
    goto/16 :goto_2c8

    .line 975
    .end local v0  # "_hidl_out_info":Landroid/hidl/base/V1_0/DebugInfo;
    .end local v3  # "_hidl_is_oneway":Z
    :sswitch_59
    and-int/lit8 v4, p4, 0x1

    if-eqz v4, :cond_5e

    goto :goto_5f

    :cond_5e
    move v3, v2

    .line 976
    .restart local v3  # "_hidl_is_oneway":Z
    :goto_5f
    if-eqz v3, :cond_69

    .line 977
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 978
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 979
    goto/16 :goto_2c8

    .line 980
    :cond_69
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 982
    invoke-virtual {p0}, Landroid/hardware/contexthub/V1_0/IContexthub$Stub;->ping()V

    .line 983
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 984
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 985
    goto/16 :goto_2c8

    .line 965
    .end local v3  # "_hidl_is_oneway":Z
    :sswitch_77
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_7c

    move v2, v3

    :cond_7c
    move v0, v2

    .line 966
    .local v0, "_hidl_is_oneway":Z
    if-eqz v0, :cond_2c8

    .line 967
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 968
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 969
    goto/16 :goto_2c8

    .line 952
    .end local v0  # "_hidl_is_oneway":Z
    :sswitch_87
    and-int/lit8 v4, p4, 0x1

    if-eqz v4, :cond_8c

    move v2, v3

    .line 953
    .restart local v2  # "_hidl_is_oneway":Z
    :cond_8c
    if-eq v2, v3, :cond_96

    .line 954
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 955
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 956
    goto/16 :goto_2c8

    .line 957
    :cond_96
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 959
    invoke-virtual {p0}, Landroid/hardware/contexthub/V1_0/IContexthub$Stub;->setHALInstrumentation()V

    .line 960
    goto/16 :goto_2c8

    .line 913
    .end local v2  # "_hidl_is_oneway":Z
    :sswitch_9e
    and-int/lit8 v4, p4, 0x1

    if-eqz v4, :cond_a3

    goto :goto_a4

    :cond_a3
    move v3, v2

    .line 914
    .restart local v3  # "_hidl_is_oneway":Z
    :goto_a4
    if-eqz v3, :cond_ae

    .line 915
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 916
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 917
    goto/16 :goto_2c8

    .line 918
    :cond_ae
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 920
    invoke-virtual {p0}, Landroid/hardware/contexthub/V1_0/IContexthub$Stub;->getHashChain()Ljava/util/ArrayList;

    move-result-object v0

    .line 921
    .local v0, "_hidl_out_hashchain":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 923
    new-instance v1, Landroid/os/HwBlob;

    const/16 v4, 0x10

    invoke-direct {v1, v4}, Landroid/os/HwBlob;-><init>(I)V

    .line 925
    .local v1, "_hidl_blob":Landroid/os/HwBlob;
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 926
    .local v4, "_hidl_vec_size":I
    const-wide/16 v5, 0x8

    invoke-virtual {v1, v5, v6, v4}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 927
    const-wide/16 v5, 0xc

    invoke-virtual {v1, v5, v6, v2}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 928
    new-instance v2, Landroid/os/HwBlob;

    mul-int/lit8 v5, v4, 0x20

    invoke-direct {v2, v5}, Landroid/os/HwBlob;-><init>(I)V

    .line 929
    .local v2, "childBlob":Landroid/os/HwBlob;
    const/4 v5, 0x0

    .local v5, "_hidl_index_0":I
    :goto_d5
    if-ge v5, v4, :cond_f6

    .line 931
    mul-int/lit8 v6, v5, 0x20

    int-to-long v6, v6

    .line 932
    .local v6, "_hidl_array_offset_1":J
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [B

    .line 934
    .local v8, "_hidl_array_item_1":[B
    if-eqz v8, :cond_ee

    array-length v9, v8

    const/16 v10, 0x20

    if-ne v9, v10, :cond_ee

    .line 938
    invoke-virtual {v2, v6, v7, v8}, Landroid/os/HwBlob;->putInt8Array(J[B)V

    .line 939
    nop

    .line 929
    .end local v6  # "_hidl_array_offset_1":J
    .end local v8  # "_hidl_array_item_1":[B
    add-int/lit8 v5, v5, 0x1

    goto :goto_d5

    .line 935
    .restart local v6  # "_hidl_array_offset_1":J
    .restart local v8  # "_hidl_array_item_1":[B
    :cond_ee
    new-instance v9, Ljava/lang/IllegalArgumentException;

    const-string v10, "Array element is not of the expected length"

    invoke-direct {v9, v10}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 942
    .end local v5  # "_hidl_index_0":I
    .end local v6  # "_hidl_array_offset_1":J
    .end local v8  # "_hidl_array_item_1":[B
    :cond_f6
    const-wide/16 v5, 0x0

    invoke-virtual {v1, v5, v6, v2}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    .line 944
    .end local v2  # "childBlob":Landroid/os/HwBlob;
    .end local v4  # "_hidl_vec_size":I
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    .line 946
    .end local v1  # "_hidl_blob":Landroid/os/HwBlob;
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 947
    goto/16 :goto_2c8

    .line 897
    .end local v0  # "_hidl_out_hashchain":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    .end local v3  # "_hidl_is_oneway":Z
    :sswitch_103
    and-int/lit8 v4, p4, 0x1

    if-eqz v4, :cond_108

    goto :goto_109

    :cond_108
    move v3, v2

    .line 898
    .restart local v3  # "_hidl_is_oneway":Z
    :goto_109
    if-eqz v3, :cond_113

    .line 899
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 900
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 901
    goto/16 :goto_2c8

    .line 902
    :cond_113
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 904
    invoke-virtual {p0}, Landroid/hardware/contexthub/V1_0/IContexthub$Stub;->interfaceDescriptor()Ljava/lang/String;

    move-result-object v0

    .line 905
    .local v0, "_hidl_out_descriptor":Ljava/lang/String;
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 906
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 907
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 908
    goto/16 :goto_2c8

    .line 880
    .end local v0  # "_hidl_out_descriptor":Ljava/lang/String;
    .end local v3  # "_hidl_is_oneway":Z
    :sswitch_125
    and-int/lit8 v4, p4, 0x1

    if-eqz v4, :cond_12a

    goto :goto_12b

    :cond_12a
    move v3, v2

    .line 881
    .restart local v3  # "_hidl_is_oneway":Z
    :goto_12b
    if-eqz v3, :cond_135

    .line 882
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 883
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 884
    goto/16 :goto_2c8

    .line 885
    :cond_135
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 887
    invoke-virtual {p2}, Landroid/os/HwParcel;->readNativeHandle()Landroid/os/NativeHandle;

    move-result-object v0

    .line 888
    .local v0, "fd":Landroid/os/NativeHandle;
    invoke-virtual {p2}, Landroid/os/HwParcel;->readStringVector()Ljava/util/ArrayList;

    move-result-object v1

    .line 889
    .local v1, "options":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {p0, v0, v1}, Landroid/hardware/contexthub/V1_0/IContexthub$Stub;->debug(Landroid/os/NativeHandle;Ljava/util/ArrayList;)V

    .line 890
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 891
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 892
    goto/16 :goto_2c8

    .line 864
    .end local v0  # "fd":Landroid/os/NativeHandle;
    .end local v1  # "options":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v3  # "_hidl_is_oneway":Z
    :sswitch_14b
    and-int/lit8 v4, p4, 0x1

    if-eqz v4, :cond_150

    goto :goto_151

    :cond_150
    move v3, v2

    .line 865
    .restart local v3  # "_hidl_is_oneway":Z
    :goto_151
    if-eqz v3, :cond_15b

    .line 866
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 867
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 868
    goto/16 :goto_2c8

    .line 869
    :cond_15b
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 871
    invoke-virtual {p0}, Landroid/hardware/contexthub/V1_0/IContexthub$Stub;->interfaceChain()Ljava/util/ArrayList;

    move-result-object v0

    .line 872
    .local v0, "_hidl_out_descriptors":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 873
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStringVector(Ljava/util/ArrayList;)V

    .line 874
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 875
    goto/16 :goto_2c8

    .line 847
    .end local v0  # "_hidl_out_descriptors":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v3  # "_hidl_is_oneway":Z
    :pswitch_16d  #0x8
    and-int/lit8 v4, p4, 0x1

    if-eqz v4, :cond_172

    goto :goto_173

    :cond_172
    move v3, v2

    .line 848
    .restart local v3  # "_hidl_is_oneway":Z
    :goto_173
    if-eqz v3, :cond_17d

    .line 849
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 850
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 851
    goto/16 :goto_2c8

    .line 852
    :cond_17d
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 854
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 855
    .local v0, "hubId":I
    invoke-virtual {p0, v0}, Landroid/hardware/contexthub/V1_0/IContexthub$Stub;->queryApps(I)I

    move-result v1

    .line 856
    .local v1, "_hidl_out_result":I
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 857
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 858
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 859
    goto/16 :goto_2c8

    .line 828
    .end local v0  # "hubId":I
    .end local v1  # "_hidl_out_result":I
    .end local v3  # "_hidl_is_oneway":Z
    :pswitch_193  #0x7
    and-int/lit8 v4, p4, 0x1

    if-eqz v4, :cond_198

    goto :goto_199

    :cond_198
    move v3, v2

    .line 829
    .restart local v3  # "_hidl_is_oneway":Z
    :goto_199
    if-eqz v3, :cond_1a3

    .line 830
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 831
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 832
    goto/16 :goto_2c8

    .line 833
    :cond_1a3
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 835
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 836
    .restart local v0  # "hubId":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt64()J

    move-result-wide v4

    .line 837
    .local v4, "appId":J
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 838
    .local v1, "transactionId":I
    invoke-virtual {p0, v0, v4, v5, v1}, Landroid/hardware/contexthub/V1_0/IContexthub$Stub;->disableNanoApp(IJI)I

    move-result v6

    .line 839
    .local v6, "_hidl_out_result":I
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 840
    invoke-virtual {p3, v6}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 841
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 842
    goto/16 :goto_2c8

    .line 809
    .end local v0  # "hubId":I
    .end local v1  # "transactionId":I
    .end local v3  # "_hidl_is_oneway":Z
    .end local v4  # "appId":J
    .end local v6  # "_hidl_out_result":I
    :pswitch_1c1  #0x6
    and-int/lit8 v4, p4, 0x1

    if-eqz v4, :cond_1c6

    goto :goto_1c7

    :cond_1c6
    move v3, v2

    .line 810
    .restart local v3  # "_hidl_is_oneway":Z
    :goto_1c7
    if-eqz v3, :cond_1d1

    .line 811
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 812
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 813
    goto/16 :goto_2c8

    .line 814
    :cond_1d1
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 816
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 817
    .restart local v0  # "hubId":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt64()J

    move-result-wide v4

    .line 818
    .restart local v4  # "appId":J
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 819
    .restart local v1  # "transactionId":I
    invoke-virtual {p0, v0, v4, v5, v1}, Landroid/hardware/contexthub/V1_0/IContexthub$Stub;->enableNanoApp(IJI)I

    move-result v6

    .line 820
    .restart local v6  # "_hidl_out_result":I
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 821
    invoke-virtual {p3, v6}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 822
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 823
    goto/16 :goto_2c8

    .line 790
    .end local v0  # "hubId":I
    .end local v1  # "transactionId":I
    .end local v3  # "_hidl_is_oneway":Z
    .end local v4  # "appId":J
    .end local v6  # "_hidl_out_result":I
    :pswitch_1ef  #0x5
    and-int/lit8 v4, p4, 0x1

    if-eqz v4, :cond_1f4

    goto :goto_1f5

    :cond_1f4
    move v3, v2

    .line 791
    .restart local v3  # "_hidl_is_oneway":Z
    :goto_1f5
    if-eqz v3, :cond_1ff

    .line 792
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 793
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 794
    goto/16 :goto_2c8

    .line 795
    :cond_1ff
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 797
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 798
    .restart local v0  # "hubId":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt64()J

    move-result-wide v4

    .line 799
    .restart local v4  # "appId":J
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 800
    .restart local v1  # "transactionId":I
    invoke-virtual {p0, v0, v4, v5, v1}, Landroid/hardware/contexthub/V1_0/IContexthub$Stub;->unloadNanoApp(IJI)I

    move-result v6

    .line 801
    .restart local v6  # "_hidl_out_result":I
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 802
    invoke-virtual {p3, v6}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 803
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 804
    goto/16 :goto_2c8

    .line 770
    .end local v0  # "hubId":I
    .end local v1  # "transactionId":I
    .end local v3  # "_hidl_is_oneway":Z
    .end local v4  # "appId":J
    .end local v6  # "_hidl_out_result":I
    :pswitch_21d  #0x4
    and-int/lit8 v4, p4, 0x1

    if-eqz v4, :cond_222

    goto :goto_223

    :cond_222
    move v3, v2

    .line 771
    .restart local v3  # "_hidl_is_oneway":Z
    :goto_223
    if-eqz v3, :cond_22d

    .line 772
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 773
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 774
    goto/16 :goto_2c8

    .line 775
    :cond_22d
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 777
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 778
    .restart local v0  # "hubId":I
    new-instance v1, Landroid/hardware/contexthub/V1_0/NanoAppBinary;

    invoke-direct {v1}, Landroid/hardware/contexthub/V1_0/NanoAppBinary;-><init>()V

    .line 779
    .local v1, "appBinary":Landroid/hardware/contexthub/V1_0/NanoAppBinary;
    invoke-virtual {v1, p2}, Landroid/hardware/contexthub/V1_0/NanoAppBinary;->readFromParcel(Landroid/os/HwParcel;)V

    .line 780
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v4

    .line 781
    .local v4, "transactionId":I
    invoke-virtual {p0, v0, v1, v4}, Landroid/hardware/contexthub/V1_0/IContexthub$Stub;->loadNanoApp(ILandroid/hardware/contexthub/V1_0/NanoAppBinary;I)I

    move-result v5

    .line 782
    .local v5, "_hidl_out_result":I
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 783
    invoke-virtual {p3, v5}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 784
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 785
    goto/16 :goto_2c8

    .line 751
    .end local v0  # "hubId":I
    .end local v1  # "appBinary":Landroid/hardware/contexthub/V1_0/NanoAppBinary;
    .end local v3  # "_hidl_is_oneway":Z
    .end local v4  # "transactionId":I
    .end local v5  # "_hidl_out_result":I
    :pswitch_24f  #0x3
    and-int/lit8 v4, p4, 0x1

    if-eqz v4, :cond_254

    goto :goto_255

    :cond_254
    move v3, v2

    .line 752
    .restart local v3  # "_hidl_is_oneway":Z
    :goto_255
    if-eqz v3, :cond_25f

    .line 753
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 754
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 755
    goto/16 :goto_2c8

    .line 756
    :cond_25f
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 758
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 759
    .restart local v0  # "hubId":I
    new-instance v1, Landroid/hardware/contexthub/V1_0/ContextHubMsg;

    invoke-direct {v1}, Landroid/hardware/contexthub/V1_0/ContextHubMsg;-><init>()V

    .line 760
    .local v1, "msg":Landroid/hardware/contexthub/V1_0/ContextHubMsg;
    invoke-virtual {v1, p2}, Landroid/hardware/contexthub/V1_0/ContextHubMsg;->readFromParcel(Landroid/os/HwParcel;)V

    .line 761
    invoke-virtual {p0, v0, v1}, Landroid/hardware/contexthub/V1_0/IContexthub$Stub;->sendMessageToHub(ILandroid/hardware/contexthub/V1_0/ContextHubMsg;)I

    move-result v4

    .line 762
    .local v4, "_hidl_out_result":I
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 763
    invoke-virtual {p3, v4}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 764
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 765
    goto :goto_2c8

    .line 733
    .end local v0  # "hubId":I
    .end local v1  # "msg":Landroid/hardware/contexthub/V1_0/ContextHubMsg;
    .end local v3  # "_hidl_is_oneway":Z
    .end local v4  # "_hidl_out_result":I
    :pswitch_27c  #0x2
    and-int/lit8 v4, p4, 0x1

    if-eqz v4, :cond_281

    goto :goto_282

    :cond_281
    move v3, v2

    .line 734
    .restart local v3  # "_hidl_is_oneway":Z
    :goto_282
    if-eqz v3, :cond_28b

    .line 735
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 736
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 737
    goto :goto_2c8

    .line 738
    :cond_28b
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 740
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 741
    .restart local v0  # "hubId":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readStrongBinder()Landroid/os/IHwBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/hardware/contexthub/V1_0/IContexthubCallback;->asInterface(Landroid/os/IHwBinder;)Landroid/hardware/contexthub/V1_0/IContexthubCallback;

    move-result-object v1

    .line 742
    .local v1, "cb":Landroid/hardware/contexthub/V1_0/IContexthubCallback;
    invoke-virtual {p0, v0, v1}, Landroid/hardware/contexthub/V1_0/IContexthub$Stub;->registerCallback(ILandroid/hardware/contexthub/V1_0/IContexthubCallback;)I

    move-result v4

    .line 743
    .restart local v4  # "_hidl_out_result":I
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 744
    invoke-virtual {p3, v4}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 745
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 746
    goto :goto_2c8

    .line 717
    .end local v0  # "hubId":I
    .end local v1  # "cb":Landroid/hardware/contexthub/V1_0/IContexthubCallback;
    .end local v3  # "_hidl_is_oneway":Z
    .end local v4  # "_hidl_out_result":I
    :pswitch_2a8  #0x1
    and-int/lit8 v4, p4, 0x1

    if-eqz v4, :cond_2ad

    goto :goto_2ae

    :cond_2ad
    move v3, v2

    .line 718
    .restart local v3  # "_hidl_is_oneway":Z
    :goto_2ae
    if-eqz v3, :cond_2b7

    .line 719
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 720
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 721
    goto :goto_2c8

    .line 722
    :cond_2b7
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 724
    invoke-virtual {p0}, Landroid/hardware/contexthub/V1_0/IContexthub$Stub;->getHubs()Ljava/util/ArrayList;

    move-result-object v0

    .line 725
    .local v0, "_hidl_out_hubs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/contexthub/V1_0/ContextHub;>;"
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 726
    invoke-static {p3, v0}, Landroid/hardware/contexthub/V1_0/ContextHub;->writeVectorToParcel(Landroid/os/HwParcel;Ljava/util/ArrayList;)V

    .line 727
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 728
    nop

    .line 1028
    .end local v0  # "_hidl_out_hubs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/contexthub/V1_0/ContextHub;>;"
    .end local v3  # "_hidl_is_oneway":Z
    :cond_2c8
    :goto_2c8
    return-void

    nop

    :pswitch_data_2ca
    .packed-switch 0x1
        :pswitch_2a8  #00000001
        :pswitch_27c  #00000002
        :pswitch_24f  #00000003
        :pswitch_21d  #00000004
        :pswitch_1ef  #00000005
        :pswitch_1c1  #00000006
        :pswitch_193  #00000007
        :pswitch_16d  #00000008
    .end packed-switch

    :sswitch_data_2de
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

    .line 668
    return-void
.end method

.method public queryLocalInterface(Ljava/lang/String;)Landroid/os/IHwInterface;
    .registers 3
    .param p1, "descriptor"  # Ljava/lang/String;

    .line 696
    const-string v0, "android.hardware.contexthub@1.0::IContexthub"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 697
    return-object p0

    .line 699
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
    .registers 3
    .param p1, "recipient"  # Landroid/os/IHwBinder$DeathRecipient;

    .line 690
    const/4 v0, 0x1

    return v0
.end method
