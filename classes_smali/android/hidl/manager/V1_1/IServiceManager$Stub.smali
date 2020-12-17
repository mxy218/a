.class public abstract Landroid/hidl/manager/V1_1/IServiceManager$Stub;
.super Landroid/os/HwBinder;
.source "IServiceManager.java"

# interfaces
.implements Landroid/hidl/manager/V1_1/IServiceManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hidl/manager/V1_1/IServiceManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 505
    invoke-direct {p0}, Landroid/os/HwBinder;-><init>()V

    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IHwBinder;
    .registers 1

    .line 508
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

    .line 522
    .local p2, "options":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    return-void
.end method

.method public final getDebugInfo()Landroid/hidl/base/V1_0/DebugInfo;
    .registers 4

    .line 560
    new-instance v0, Landroid/hidl/base/V1_0/DebugInfo;

    invoke-direct {v0}, Landroid/hidl/base/V1_0/DebugInfo;-><init>()V

    .line 561
    .local v0, "info":Landroid/hidl/base/V1_0/DebugInfo;
    invoke-static {}, Landroid/os/HidlSupport;->getPidIfSharable()I

    move-result v1

    iput v1, v0, Landroid/hidl/base/V1_0/DebugInfo;->pid:I

    .line 562
    const-wide/16 v1, 0x0

    iput-wide v1, v0, Landroid/hidl/base/V1_0/DebugInfo;->ptr:J

    .line 563
    const/4 v1, 0x0

    iput v1, v0, Landroid/hidl/base/V1_0/DebugInfo;->arch:I

    .line 564
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

    .line 534
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x3

    new-array v1, v1, [[B

    const/16 v2, 0x20

    new-array v3, v2, [B

    fill-array-data v3, :array_28

    const/4 v4, 0x0

    aput-object v3, v1, v4

    new-array v3, v2, [B

    fill-array-data v3, :array_3c

    const/4 v4, 0x1

    aput-object v3, v1, v4

    new-array v2, v2, [B

    fill-array-data v2, :array_50

    const/4 v3, 0x2

    aput-object v2, v1, v3

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0

    nop

    :array_28
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

    :array_3c
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

    :array_50
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
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 513
    new-instance v0, Ljava/util/ArrayList;

    const-string v1, "android.hidl.manager@1.1::IServiceManager"

    const-string v2, "android.hidl.manager@1.0::IServiceManager"

    const-string v3, "android.hidl.base@1.0::IBase"

    filled-new-array {v1, v2, v3}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public final interfaceDescriptor()Ljava/lang/String;
    .registers 2

    .line 528
    const-string v0, "android.hidl.manager@1.1::IServiceManager"

    return-object v0
.end method

.method public final linkToDeath(Landroid/os/IHwBinder$DeathRecipient;J)Z
    .registers 5
    .param p1, "recipient"  # Landroid/os/IHwBinder$DeathRecipient;
    .param p2, "cookie"  # J

    .line 548
    const/4 v0, 0x1

    return v0
.end method

.method public final notifySyspropsChanged()V
    .registers 1

    .line 570
    invoke-static {}, Landroid/os/HwBinder;->enableInstrumentation()V

    .line 572
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

    .line 600
    const-string v0, "android.hidl.manager@1.0::IServiceManager"

    const/high16 v1, -0x80000000

    const/4 v2, 0x0

    const/4 v3, 0x1

    packed-switch p1, :pswitch_data_2ea

    const-string v0, "android.hidl.base@1.0::IBase"

    sparse-switch p1, :sswitch_data_300

    goto/16 :goto_2e9

    .line 916
    :sswitch_10
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_15

    move v2, v3

    :cond_15
    move v0, v2

    .line 917
    .local v0, "_hidl_is_oneway":Z
    if-eqz v0, :cond_2e9

    .line 918
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 919
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 920
    goto/16 :goto_2e9

    .line 903
    .end local v0  # "_hidl_is_oneway":Z
    :sswitch_20
    and-int/lit8 v4, p4, 0x1

    if-eqz v4, :cond_25

    move v2, v3

    .line 904
    .local v2, "_hidl_is_oneway":Z
    :cond_25
    if-eq v2, v3, :cond_2f

    .line 905
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 906
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 907
    goto/16 :goto_2e9

    .line 908
    :cond_2f
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 910
    invoke-virtual {p0}, Landroid/hidl/manager/V1_1/IServiceManager$Stub;->notifySyspropsChanged()V

    .line 911
    goto/16 :goto_2e9

    .line 887
    .end local v2  # "_hidl_is_oneway":Z
    :sswitch_37
    and-int/lit8 v4, p4, 0x1

    if-eqz v4, :cond_3c

    goto :goto_3d

    :cond_3c
    move v3, v2

    .line 888
    .local v3, "_hidl_is_oneway":Z
    :goto_3d
    if-eqz v3, :cond_47

    .line 889
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 890
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 891
    goto/16 :goto_2e9

    .line 892
    :cond_47
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 894
    invoke-virtual {p0}, Landroid/hidl/manager/V1_1/IServiceManager$Stub;->getDebugInfo()Landroid/hidl/base/V1_0/DebugInfo;

    move-result-object v0

    .line 895
    .local v0, "_hidl_out_info":Landroid/hidl/base/V1_0/DebugInfo;
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 896
    invoke-virtual {v0, p3}, Landroid/hidl/base/V1_0/DebugInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 897
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 898
    goto/16 :goto_2e9

    .line 872
    .end local v0  # "_hidl_out_info":Landroid/hidl/base/V1_0/DebugInfo;
    .end local v3  # "_hidl_is_oneway":Z
    :sswitch_59
    and-int/lit8 v4, p4, 0x1

    if-eqz v4, :cond_5e

    goto :goto_5f

    :cond_5e
    move v3, v2

    .line 873
    .restart local v3  # "_hidl_is_oneway":Z
    :goto_5f
    if-eqz v3, :cond_69

    .line 874
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 875
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 876
    goto/16 :goto_2e9

    .line 877
    :cond_69
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 879
    invoke-virtual {p0}, Landroid/hidl/manager/V1_1/IServiceManager$Stub;->ping()V

    .line 880
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 881
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 882
    goto/16 :goto_2e9

    .line 862
    .end local v3  # "_hidl_is_oneway":Z
    :sswitch_77
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_7c

    move v2, v3

    :cond_7c
    move v0, v2

    .line 863
    .local v0, "_hidl_is_oneway":Z
    if-eqz v0, :cond_2e9

    .line 864
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 865
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 866
    goto/16 :goto_2e9

    .line 849
    .end local v0  # "_hidl_is_oneway":Z
    :sswitch_87
    and-int/lit8 v4, p4, 0x1

    if-eqz v4, :cond_8c

    move v2, v3

    .line 850
    .restart local v2  # "_hidl_is_oneway":Z
    :cond_8c
    if-eq v2, v3, :cond_96

    .line 851
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 852
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 853
    goto/16 :goto_2e9

    .line 854
    :cond_96
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 856
    invoke-virtual {p0}, Landroid/hidl/manager/V1_1/IServiceManager$Stub;->setHALInstrumentation()V

    .line 857
    goto/16 :goto_2e9

    .line 810
    .end local v2  # "_hidl_is_oneway":Z
    :sswitch_9e
    and-int/lit8 v4, p4, 0x1

    if-eqz v4, :cond_a3

    goto :goto_a4

    :cond_a3
    move v3, v2

    .line 811
    .restart local v3  # "_hidl_is_oneway":Z
    :goto_a4
    if-eqz v3, :cond_ae

    .line 812
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 813
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 814
    goto/16 :goto_2e9

    .line 815
    :cond_ae
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 817
    invoke-virtual {p0}, Landroid/hidl/manager/V1_1/IServiceManager$Stub;->getHashChain()Ljava/util/ArrayList;

    move-result-object v0

    .line 818
    .local v0, "_hidl_out_hashchain":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 820
    new-instance v1, Landroid/os/HwBlob;

    const/16 v4, 0x10

    invoke-direct {v1, v4}, Landroid/os/HwBlob;-><init>(I)V

    .line 822
    .local v1, "_hidl_blob":Landroid/os/HwBlob;
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 823
    .local v4, "_hidl_vec_size":I
    const-wide/16 v5, 0x8

    invoke-virtual {v1, v5, v6, v4}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 824
    const-wide/16 v5, 0xc

    invoke-virtual {v1, v5, v6, v2}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 825
    new-instance v2, Landroid/os/HwBlob;

    mul-int/lit8 v5, v4, 0x20

    invoke-direct {v2, v5}, Landroid/os/HwBlob;-><init>(I)V

    .line 826
    .local v2, "childBlob":Landroid/os/HwBlob;
    const/4 v5, 0x0

    .local v5, "_hidl_index_0":I
    :goto_d5
    if-ge v5, v4, :cond_f6

    .line 828
    mul-int/lit8 v6, v5, 0x20

    int-to-long v6, v6

    .line 829
    .local v6, "_hidl_array_offset_1":J
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [B

    .line 831
    .local v8, "_hidl_array_item_1":[B
    if-eqz v8, :cond_ee

    array-length v9, v8

    const/16 v10, 0x20

    if-ne v9, v10, :cond_ee

    .line 835
    invoke-virtual {v2, v6, v7, v8}, Landroid/os/HwBlob;->putInt8Array(J[B)V

    .line 836
    nop

    .line 826
    .end local v6  # "_hidl_array_offset_1":J
    .end local v8  # "_hidl_array_item_1":[B
    add-int/lit8 v5, v5, 0x1

    goto :goto_d5

    .line 832
    .restart local v6  # "_hidl_array_offset_1":J
    .restart local v8  # "_hidl_array_item_1":[B
    :cond_ee
    new-instance v9, Ljava/lang/IllegalArgumentException;

    const-string v10, "Array element is not of the expected length"

    invoke-direct {v9, v10}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 839
    .end local v5  # "_hidl_index_0":I
    .end local v6  # "_hidl_array_offset_1":J
    .end local v8  # "_hidl_array_item_1":[B
    :cond_f6
    const-wide/16 v5, 0x0

    invoke-virtual {v1, v5, v6, v2}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    .line 841
    .end local v2  # "childBlob":Landroid/os/HwBlob;
    .end local v4  # "_hidl_vec_size":I
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    .line 843
    .end local v1  # "_hidl_blob":Landroid/os/HwBlob;
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 844
    goto/16 :goto_2e9

    .line 794
    .end local v0  # "_hidl_out_hashchain":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    .end local v3  # "_hidl_is_oneway":Z
    :sswitch_103
    and-int/lit8 v4, p4, 0x1

    if-eqz v4, :cond_108

    goto :goto_109

    :cond_108
    move v3, v2

    .line 795
    .restart local v3  # "_hidl_is_oneway":Z
    :goto_109
    if-eqz v3, :cond_113

    .line 796
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 797
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 798
    goto/16 :goto_2e9

    .line 799
    :cond_113
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 801
    invoke-virtual {p0}, Landroid/hidl/manager/V1_1/IServiceManager$Stub;->interfaceDescriptor()Ljava/lang/String;

    move-result-object v0

    .line 802
    .local v0, "_hidl_out_descriptor":Ljava/lang/String;
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 803
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 804
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 805
    goto/16 :goto_2e9

    .line 777
    .end local v0  # "_hidl_out_descriptor":Ljava/lang/String;
    .end local v3  # "_hidl_is_oneway":Z
    :sswitch_125
    and-int/lit8 v4, p4, 0x1

    if-eqz v4, :cond_12a

    goto :goto_12b

    :cond_12a
    move v3, v2

    .line 778
    .restart local v3  # "_hidl_is_oneway":Z
    :goto_12b
    if-eqz v3, :cond_135

    .line 779
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 780
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 781
    goto/16 :goto_2e9

    .line 782
    :cond_135
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 784
    invoke-virtual {p2}, Landroid/os/HwParcel;->readNativeHandle()Landroid/os/NativeHandle;

    move-result-object v0

    .line 785
    .local v0, "fd":Landroid/os/NativeHandle;
    invoke-virtual {p2}, Landroid/os/HwParcel;->readStringVector()Ljava/util/ArrayList;

    move-result-object v1

    .line 786
    .local v1, "options":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {p0, v0, v1}, Landroid/hidl/manager/V1_1/IServiceManager$Stub;->debug(Landroid/os/NativeHandle;Ljava/util/ArrayList;)V

    .line 787
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 788
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 789
    goto/16 :goto_2e9

    .line 761
    .end local v0  # "fd":Landroid/os/NativeHandle;
    .end local v1  # "options":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v3  # "_hidl_is_oneway":Z
    :sswitch_14b
    and-int/lit8 v4, p4, 0x1

    if-eqz v4, :cond_150

    goto :goto_151

    :cond_150
    move v3, v2

    .line 762
    .restart local v3  # "_hidl_is_oneway":Z
    :goto_151
    if-eqz v3, :cond_15b

    .line 763
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 764
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 765
    goto/16 :goto_2e9

    .line 766
    :cond_15b
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 768
    invoke-virtual {p0}, Landroid/hidl/manager/V1_1/IServiceManager$Stub;->interfaceChain()Ljava/util/ArrayList;

    move-result-object v0

    .line 769
    .local v0, "_hidl_out_descriptors":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 770
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStringVector(Ljava/util/ArrayList;)V

    .line 771
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 772
    goto/16 :goto_2e9

    .line 742
    .end local v0  # "_hidl_out_descriptors":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v3  # "_hidl_is_oneway":Z
    :pswitch_16d  #0x9
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_172

    goto :goto_173

    :cond_172
    move v3, v2

    :goto_173
    move v0, v3

    .line 743
    .local v0, "_hidl_is_oneway":Z
    if-eqz v0, :cond_17e

    .line 744
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 745
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 746
    goto/16 :goto_2e9

    .line 747
    :cond_17e
    const-string v1, "android.hidl.manager@1.1::IServiceManager"

    invoke-virtual {p2, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 749
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 750
    .local v1, "fqName":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 751
    .local v3, "name":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/HwParcel;->readStrongBinder()Landroid/os/IHwBinder;

    move-result-object v4

    invoke-static {v4}, Landroid/hidl/manager/V1_0/IServiceNotification;->asInterface(Landroid/os/IHwBinder;)Landroid/hidl/manager/V1_0/IServiceNotification;

    move-result-object v4

    .line 752
    .local v4, "callback":Landroid/hidl/manager/V1_0/IServiceNotification;
    invoke-virtual {p0, v1, v3, v4}, Landroid/hidl/manager/V1_1/IServiceManager$Stub;->unregisterForNotifications(Ljava/lang/String;Ljava/lang/String;Landroid/hidl/manager/V1_0/IServiceNotification;)Z

    move-result v5

    .line 753
    .local v5, "_hidl_out_success":Z
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 754
    invoke-virtual {p3, v5}, Landroid/os/HwParcel;->writeBool(Z)V

    .line 755
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 756
    goto/16 :goto_2e9

    .line 725
    .end local v0  # "_hidl_is_oneway":Z
    .end local v1  # "fqName":Ljava/lang/String;
    .end local v3  # "name":Ljava/lang/String;
    .end local v4  # "callback":Landroid/hidl/manager/V1_0/IServiceNotification;
    .end local v5  # "_hidl_out_success":Z
    :pswitch_1a2  #0x8
    and-int/lit8 v4, p4, 0x1

    if-eqz v4, :cond_1a7

    goto :goto_1a8

    :cond_1a7
    move v3, v2

    .line 726
    .local v3, "_hidl_is_oneway":Z
    :goto_1a8
    if-eqz v3, :cond_1b2

    .line 727
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 728
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 729
    goto/16 :goto_2e9

    .line 730
    :cond_1b2
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 732
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 733
    .local v0, "fqName":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 734
    .local v1, "name":Ljava/lang/String;
    invoke-virtual {p0, v0, v1}, Landroid/hidl/manager/V1_1/IServiceManager$Stub;->registerPassthroughClient(Ljava/lang/String;Ljava/lang/String;)V

    .line 735
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 736
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 737
    goto/16 :goto_2e9

    .line 709
    .end local v0  # "fqName":Ljava/lang/String;
    .end local v1  # "name":Ljava/lang/String;
    .end local v3  # "_hidl_is_oneway":Z
    :pswitch_1c8  #0x7
    and-int/lit8 v4, p4, 0x1

    if-eqz v4, :cond_1cd

    goto :goto_1ce

    :cond_1cd
    move v3, v2

    .line 710
    .restart local v3  # "_hidl_is_oneway":Z
    :goto_1ce
    if-eqz v3, :cond_1d8

    .line 711
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 712
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 713
    goto/16 :goto_2e9

    .line 714
    :cond_1d8
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 716
    invoke-virtual {p0}, Landroid/hidl/manager/V1_1/IServiceManager$Stub;->debugDump()Ljava/util/ArrayList;

    move-result-object v0

    .line 717
    .local v0, "_hidl_out_info":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hidl/manager/V1_0/IServiceManager$InstanceDebugInfo;>;"
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 718
    invoke-static {p3, v0}, Landroid/hidl/manager/V1_0/IServiceManager$InstanceDebugInfo;->writeVectorToParcel(Landroid/os/HwParcel;Ljava/util/ArrayList;)V

    .line 719
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 720
    goto/16 :goto_2e9

    .line 690
    .end local v0  # "_hidl_out_info":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hidl/manager/V1_0/IServiceManager$InstanceDebugInfo;>;"
    .end local v3  # "_hidl_is_oneway":Z
    :pswitch_1ea  #0x6
    and-int/lit8 v4, p4, 0x1

    if-eqz v4, :cond_1ef

    goto :goto_1f0

    :cond_1ef
    move v3, v2

    .line 691
    .restart local v3  # "_hidl_is_oneway":Z
    :goto_1f0
    if-eqz v3, :cond_1fa

    .line 692
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 693
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 694
    goto/16 :goto_2e9

    .line 695
    :cond_1fa
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 697
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 698
    .local v0, "fqName":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 699
    .restart local v1  # "name":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/HwParcel;->readStrongBinder()Landroid/os/IHwBinder;

    move-result-object v4

    invoke-static {v4}, Landroid/hidl/manager/V1_0/IServiceNotification;->asInterface(Landroid/os/IHwBinder;)Landroid/hidl/manager/V1_0/IServiceNotification;

    move-result-object v4

    .line 700
    .restart local v4  # "callback":Landroid/hidl/manager/V1_0/IServiceNotification;
    invoke-virtual {p0, v0, v1, v4}, Landroid/hidl/manager/V1_1/IServiceManager$Stub;->registerForNotifications(Ljava/lang/String;Ljava/lang/String;Landroid/hidl/manager/V1_0/IServiceNotification;)Z

    move-result v5

    .line 701
    .restart local v5  # "_hidl_out_success":Z
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 702
    invoke-virtual {p3, v5}, Landroid/os/HwParcel;->writeBool(Z)V

    .line 703
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 704
    goto/16 :goto_2e9

    .line 673
    .end local v0  # "fqName":Ljava/lang/String;
    .end local v1  # "name":Ljava/lang/String;
    .end local v3  # "_hidl_is_oneway":Z
    .end local v4  # "callback":Landroid/hidl/manager/V1_0/IServiceNotification;
    .end local v5  # "_hidl_out_success":Z
    :pswitch_21c  #0x5
    and-int/lit8 v4, p4, 0x1

    if-eqz v4, :cond_221

    goto :goto_222

    :cond_221
    move v3, v2

    .line 674
    .restart local v3  # "_hidl_is_oneway":Z
    :goto_222
    if-eqz v3, :cond_22c

    .line 675
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 676
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 677
    goto/16 :goto_2e9

    .line 678
    :cond_22c
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 680
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 681
    .restart local v0  # "fqName":Ljava/lang/String;
    invoke-virtual {p0, v0}, Landroid/hidl/manager/V1_1/IServiceManager$Stub;->listByInterface(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    .line 682
    .local v1, "_hidl_out_instanceNames":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 683
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStringVector(Ljava/util/ArrayList;)V

    .line 684
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 685
    goto/16 :goto_2e9

    .line 657
    .end local v0  # "fqName":Ljava/lang/String;
    .end local v1  # "_hidl_out_instanceNames":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v3  # "_hidl_is_oneway":Z
    :pswitch_242  #0x4
    and-int/lit8 v4, p4, 0x1

    if-eqz v4, :cond_247

    goto :goto_248

    :cond_247
    move v3, v2

    .line 658
    .restart local v3  # "_hidl_is_oneway":Z
    :goto_248
    if-eqz v3, :cond_252

    .line 659
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 660
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 661
    goto/16 :goto_2e9

    .line 662
    :cond_252
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 664
    invoke-virtual {p0}, Landroid/hidl/manager/V1_1/IServiceManager$Stub;->list()Ljava/util/ArrayList;

    move-result-object v0

    .line 665
    .local v0, "_hidl_out_fqInstanceNames":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 666
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStringVector(Ljava/util/ArrayList;)V

    .line 667
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 668
    goto/16 :goto_2e9

    .line 639
    .end local v0  # "_hidl_out_fqInstanceNames":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v3  # "_hidl_is_oneway":Z
    :pswitch_264  #0x3
    and-int/lit8 v4, p4, 0x1

    if-eqz v4, :cond_269

    goto :goto_26a

    :cond_269
    move v3, v2

    .line 640
    .restart local v3  # "_hidl_is_oneway":Z
    :goto_26a
    if-eqz v3, :cond_274

    .line 641
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 642
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 643
    goto/16 :goto_2e9

    .line 644
    :cond_274
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 646
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 647
    .local v0, "fqName":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 648
    .local v1, "name":Ljava/lang/String;
    invoke-virtual {p0, v0, v1}, Landroid/hidl/manager/V1_1/IServiceManager$Stub;->getTransport(Ljava/lang/String;Ljava/lang/String;)B

    move-result v4

    .line 649
    .local v4, "_hidl_out_transport":B
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 650
    invoke-virtual {p3, v4}, Landroid/os/HwParcel;->writeInt8(B)V

    .line 651
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 652
    goto :goto_2e9

    .line 621
    .end local v0  # "fqName":Ljava/lang/String;
    .end local v1  # "name":Ljava/lang/String;
    .end local v3  # "_hidl_is_oneway":Z
    .end local v4  # "_hidl_out_transport":B
    :pswitch_28d  #0x2
    and-int/lit8 v4, p4, 0x1

    if-eqz v4, :cond_292

    goto :goto_293

    :cond_292
    move v3, v2

    .line 622
    .restart local v3  # "_hidl_is_oneway":Z
    :goto_293
    if-eqz v3, :cond_29c

    .line 623
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 624
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 625
    goto :goto_2e9

    .line 626
    :cond_29c
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 628
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 629
    .local v0, "name":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/HwParcel;->readStrongBinder()Landroid/os/IHwBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/hidl/base/V1_0/IBase;->asInterface(Landroid/os/IHwBinder;)Landroid/hidl/base/V1_0/IBase;

    move-result-object v1

    .line 630
    .local v1, "service":Landroid/hidl/base/V1_0/IBase;
    invoke-virtual {p0, v0, v1}, Landroid/hidl/manager/V1_1/IServiceManager$Stub;->add(Ljava/lang/String;Landroid/hidl/base/V1_0/IBase;)Z

    move-result v4

    .line 631
    .local v4, "_hidl_out_success":Z
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 632
    invoke-virtual {p3, v4}, Landroid/os/HwParcel;->writeBool(Z)V

    .line 633
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 634
    goto :goto_2e9

    .line 603
    .end local v0  # "name":Ljava/lang/String;
    .end local v1  # "service":Landroid/hidl/base/V1_0/IBase;
    .end local v3  # "_hidl_is_oneway":Z
    .end local v4  # "_hidl_out_success":Z
    :pswitch_2b9  #0x1
    and-int/lit8 v4, p4, 0x1

    if-eqz v4, :cond_2be

    goto :goto_2bf

    :cond_2be
    move v3, v2

    .line 604
    .restart local v3  # "_hidl_is_oneway":Z
    :goto_2bf
    if-eqz v3, :cond_2c8

    .line 605
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 606
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 607
    goto :goto_2e9

    .line 608
    :cond_2c8
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 610
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 611
    .local v0, "fqName":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 612
    .local v1, "name":Ljava/lang/String;
    invoke-virtual {p0, v0, v1}, Landroid/hidl/manager/V1_1/IServiceManager$Stub;->get(Ljava/lang/String;Ljava/lang/String;)Landroid/hidl/base/V1_0/IBase;

    move-result-object v4

    .line 613
    .local v4, "_hidl_out_service":Landroid/hidl/base/V1_0/IBase;
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 614
    if-nez v4, :cond_2de

    const/4 v2, 0x0

    goto :goto_2e2

    :cond_2de
    invoke-interface {v4}, Landroid/hidl/base/V1_0/IBase;->asBinder()Landroid/os/IHwBinder;

    move-result-object v2

    :goto_2e2
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeStrongBinder(Landroid/os/IHwBinder;)V

    .line 615
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 616
    nop

    .line 925
    .end local v0  # "fqName":Ljava/lang/String;
    .end local v1  # "name":Ljava/lang/String;
    .end local v3  # "_hidl_is_oneway":Z
    .end local v4  # "_hidl_out_service":Landroid/hidl/base/V1_0/IBase;
    :cond_2e9
    :goto_2e9
    return-void

    :pswitch_data_2ea
    .packed-switch 0x1
        :pswitch_2b9  #00000001
        :pswitch_28d  #00000002
        :pswitch_264  #00000003
        :pswitch_242  #00000004
        :pswitch_21c  #00000005
        :pswitch_1ea  #00000006
        :pswitch_1c8  #00000007
        :pswitch_1a2  #00000008
        :pswitch_16d  #00000009
    .end packed-switch

    :sswitch_data_300
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

    .line 554
    return-void
.end method

.method public queryLocalInterface(Ljava/lang/String;)Landroid/os/IHwInterface;
    .registers 3
    .param p1, "descriptor"  # Ljava/lang/String;

    .line 582
    const-string v0, "android.hidl.manager@1.1::IServiceManager"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 583
    return-object p0

    .line 585
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

    .line 589
    invoke-virtual {p0, p1}, Landroid/hidl/manager/V1_1/IServiceManager$Stub;->registerService(Ljava/lang/String;)V

    .line 590
    return-void
.end method

.method public final setHALInstrumentation()V
    .registers 1

    .line 544
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 594
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/hidl/manager/V1_1/IServiceManager$Stub;->interfaceDescriptor()Ljava/lang/String;

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

    .line 576
    const/4 v0, 0x1

    return v0
.end method
