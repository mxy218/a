.class public abstract Landroid/hardware/oemlock/V1_0/IOemLock$Stub;
.super Landroid/os/HwBinder;
.source "IOemLock.java"

# interfaces
.implements Landroid/hardware/oemlock/V1_0/IOemLock;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/oemlock/V1_0/IOemLock;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 478
    invoke-direct {p0}, Landroid/os/HwBinder;-><init>()V

    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IHwBinder;
    .registers 1

    .line 481
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

    .line 494
    .local p2, "options":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    return-void
.end method

.method public final getDebugInfo()Landroid/hidl/base/V1_0/DebugInfo;
    .registers 4

    .line 531
    new-instance v0, Landroid/hidl/base/V1_0/DebugInfo;

    invoke-direct {v0}, Landroid/hidl/base/V1_0/DebugInfo;-><init>()V

    .line 532
    .local v0, "info":Landroid/hidl/base/V1_0/DebugInfo;
    invoke-static {}, Landroid/os/HidlSupport;->getPidIfSharable()I

    move-result v1

    iput v1, v0, Landroid/hidl/base/V1_0/DebugInfo;->pid:I

    .line 533
    const-wide/16 v1, 0x0

    iput-wide v1, v0, Landroid/hidl/base/V1_0/DebugInfo;->ptr:J

    .line 534
    const/4 v1, 0x0

    iput v1, v0, Landroid/hidl/base/V1_0/DebugInfo;->arch:I

    .line 535
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

    .line 506
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
        0x4bt
        0x65t
        0x76t
        0x36t
        0x63t
        -0x57t
        0x4at
        0x39t
        0x20t
        0x13t
        0x40t
        0x11t
        0x69t
        0x1ft
        -0x71t
        -0x45t
        0x42t
        -0x34t
        -0x49t
        -0x49t
        0x79t
        0x55t
        -0x77t
        -0x11t
        -0x23t
        -0x40t
        0x49t
        -0x57t
        0x10t
        0x60t
        0x47t
        -0x2at
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

    .line 486
    new-instance v0, Ljava/util/ArrayList;

    const-string v1, "android.hardware.oemlock@1.0::IOemLock"

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

    .line 500
    const-string v0, "android.hardware.oemlock@1.0::IOemLock"

    return-object v0
.end method

.method public final linkToDeath(Landroid/os/IHwBinder$DeathRecipient;J)Z
    .registers 5
    .param p1, "recipient"  # Landroid/os/IHwBinder$DeathRecipient;
    .param p2, "cookie"  # J

    .line 519
    const/4 v0, 0x1

    return v0
.end method

.method public final notifySyspropsChanged()V
    .registers 1

    .line 541
    invoke-static {}, Landroid/os/HwBinder;->enableInstrumentation()V

    .line 543
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

    .line 571
    const-string v0, "android.hardware.oemlock@1.0::IOemLock"

    const/high16 v1, -0x80000000

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eq p1, v3, :cond_1fb

    const/4 v4, 0x2

    if-eq p1, v4, :cond_1d3

    const/4 v4, 0x3

    if-eq p1, v4, :cond_1b9

    const/4 v4, 0x4

    if-eq p1, v4, :cond_194

    const/4 v4, 0x5

    if-eq p1, v4, :cond_178

    const-string v0, "android.hidl.base@1.0::IBase"

    sparse-switch p1, :sswitch_data_216

    goto/16 :goto_215

    .line 824
    :sswitch_1b
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_20

    move v2, v3

    :cond_20
    move v0, v2

    .line 825
    .local v0, "_hidl_is_oneway":Z
    if-eqz v0, :cond_215

    .line 826
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 827
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 828
    goto/16 :goto_215

    .line 811
    .end local v0  # "_hidl_is_oneway":Z
    :sswitch_2b
    and-int/lit8 v4, p4, 0x1

    if-eqz v4, :cond_30

    move v2, v3

    .line 812
    .local v2, "_hidl_is_oneway":Z
    :cond_30
    if-eq v2, v3, :cond_3a

    .line 813
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 814
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 815
    goto/16 :goto_215

    .line 816
    :cond_3a
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 818
    invoke-virtual {p0}, Landroid/hardware/oemlock/V1_0/IOemLock$Stub;->notifySyspropsChanged()V

    .line 819
    goto/16 :goto_215

    .line 795
    .end local v2  # "_hidl_is_oneway":Z
    :sswitch_42
    and-int/lit8 v4, p4, 0x1

    if-eqz v4, :cond_47

    goto :goto_48

    :cond_47
    move v3, v2

    .line 796
    .local v3, "_hidl_is_oneway":Z
    :goto_48
    if-eqz v3, :cond_52

    .line 797
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 798
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 799
    goto/16 :goto_215

    .line 800
    :cond_52
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 802
    invoke-virtual {p0}, Landroid/hardware/oemlock/V1_0/IOemLock$Stub;->getDebugInfo()Landroid/hidl/base/V1_0/DebugInfo;

    move-result-object v0

    .line 803
    .local v0, "_hidl_out_info":Landroid/hidl/base/V1_0/DebugInfo;
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 804
    invoke-virtual {v0, p3}, Landroid/hidl/base/V1_0/DebugInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 805
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 806
    goto/16 :goto_215

    .line 780
    .end local v0  # "_hidl_out_info":Landroid/hidl/base/V1_0/DebugInfo;
    .end local v3  # "_hidl_is_oneway":Z
    :sswitch_64
    and-int/lit8 v4, p4, 0x1

    if-eqz v4, :cond_69

    goto :goto_6a

    :cond_69
    move v3, v2

    .line 781
    .restart local v3  # "_hidl_is_oneway":Z
    :goto_6a
    if-eqz v3, :cond_74

    .line 782
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 783
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 784
    goto/16 :goto_215

    .line 785
    :cond_74
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 787
    invoke-virtual {p0}, Landroid/hardware/oemlock/V1_0/IOemLock$Stub;->ping()V

    .line 788
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 789
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 790
    goto/16 :goto_215

    .line 770
    .end local v3  # "_hidl_is_oneway":Z
    :sswitch_82
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_87

    move v2, v3

    :cond_87
    move v0, v2

    .line 771
    .local v0, "_hidl_is_oneway":Z
    if-eqz v0, :cond_215

    .line 772
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 773
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 774
    goto/16 :goto_215

    .line 757
    .end local v0  # "_hidl_is_oneway":Z
    :sswitch_92
    and-int/lit8 v4, p4, 0x1

    if-eqz v4, :cond_97

    move v2, v3

    .line 758
    .restart local v2  # "_hidl_is_oneway":Z
    :cond_97
    if-eq v2, v3, :cond_a1

    .line 759
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 760
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 761
    goto/16 :goto_215

    .line 762
    :cond_a1
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 764
    invoke-virtual {p0}, Landroid/hardware/oemlock/V1_0/IOemLock$Stub;->setHALInstrumentation()V

    .line 765
    goto/16 :goto_215

    .line 718
    .end local v2  # "_hidl_is_oneway":Z
    :sswitch_a9
    and-int/lit8 v4, p4, 0x1

    if-eqz v4, :cond_ae

    goto :goto_af

    :cond_ae
    move v3, v2

    .line 719
    .restart local v3  # "_hidl_is_oneway":Z
    :goto_af
    if-eqz v3, :cond_b9

    .line 720
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 721
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 722
    goto/16 :goto_215

    .line 723
    :cond_b9
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 725
    invoke-virtual {p0}, Landroid/hardware/oemlock/V1_0/IOemLock$Stub;->getHashChain()Ljava/util/ArrayList;

    move-result-object v0

    .line 726
    .local v0, "_hidl_out_hashchain":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 728
    new-instance v1, Landroid/os/HwBlob;

    const/16 v4, 0x10

    invoke-direct {v1, v4}, Landroid/os/HwBlob;-><init>(I)V

    .line 730
    .local v1, "_hidl_blob":Landroid/os/HwBlob;
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 731
    .local v4, "_hidl_vec_size":I
    const-wide/16 v5, 0x8

    invoke-virtual {v1, v5, v6, v4}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 732
    const-wide/16 v5, 0xc

    invoke-virtual {v1, v5, v6, v2}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 733
    new-instance v2, Landroid/os/HwBlob;

    mul-int/lit8 v5, v4, 0x20

    invoke-direct {v2, v5}, Landroid/os/HwBlob;-><init>(I)V

    .line 734
    .local v2, "childBlob":Landroid/os/HwBlob;
    const/4 v5, 0x0

    .local v5, "_hidl_index_0":I
    :goto_e0
    if-ge v5, v4, :cond_101

    .line 736
    mul-int/lit8 v6, v5, 0x20

    int-to-long v6, v6

    .line 737
    .local v6, "_hidl_array_offset_1":J
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [B

    .line 739
    .local v8, "_hidl_array_item_1":[B
    if-eqz v8, :cond_f9

    array-length v9, v8

    const/16 v10, 0x20

    if-ne v9, v10, :cond_f9

    .line 743
    invoke-virtual {v2, v6, v7, v8}, Landroid/os/HwBlob;->putInt8Array(J[B)V

    .line 744
    nop

    .line 734
    .end local v6  # "_hidl_array_offset_1":J
    .end local v8  # "_hidl_array_item_1":[B
    add-int/lit8 v5, v5, 0x1

    goto :goto_e0

    .line 740
    .restart local v6  # "_hidl_array_offset_1":J
    .restart local v8  # "_hidl_array_item_1":[B
    :cond_f9
    new-instance v9, Ljava/lang/IllegalArgumentException;

    const-string v10, "Array element is not of the expected length"

    invoke-direct {v9, v10}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 747
    .end local v5  # "_hidl_index_0":I
    .end local v6  # "_hidl_array_offset_1":J
    .end local v8  # "_hidl_array_item_1":[B
    :cond_101
    const-wide/16 v5, 0x0

    invoke-virtual {v1, v5, v6, v2}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    .line 749
    .end local v2  # "childBlob":Landroid/os/HwBlob;
    .end local v4  # "_hidl_vec_size":I
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    .line 751
    .end local v1  # "_hidl_blob":Landroid/os/HwBlob;
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 752
    goto/16 :goto_215

    .line 702
    .end local v0  # "_hidl_out_hashchain":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    .end local v3  # "_hidl_is_oneway":Z
    :sswitch_10e
    and-int/lit8 v4, p4, 0x1

    if-eqz v4, :cond_113

    goto :goto_114

    :cond_113
    move v3, v2

    .line 703
    .restart local v3  # "_hidl_is_oneway":Z
    :goto_114
    if-eqz v3, :cond_11e

    .line 704
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 705
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 706
    goto/16 :goto_215

    .line 707
    :cond_11e
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 709
    invoke-virtual {p0}, Landroid/hardware/oemlock/V1_0/IOemLock$Stub;->interfaceDescriptor()Ljava/lang/String;

    move-result-object v0

    .line 710
    .local v0, "_hidl_out_descriptor":Ljava/lang/String;
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 711
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 712
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 713
    goto/16 :goto_215

    .line 685
    .end local v0  # "_hidl_out_descriptor":Ljava/lang/String;
    .end local v3  # "_hidl_is_oneway":Z
    :sswitch_130
    and-int/lit8 v4, p4, 0x1

    if-eqz v4, :cond_135

    goto :goto_136

    :cond_135
    move v3, v2

    .line 686
    .restart local v3  # "_hidl_is_oneway":Z
    :goto_136
    if-eqz v3, :cond_140

    .line 687
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 688
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 689
    goto/16 :goto_215

    .line 690
    :cond_140
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 692
    invoke-virtual {p2}, Landroid/os/HwParcel;->readNativeHandle()Landroid/os/NativeHandle;

    move-result-object v0

    .line 693
    .local v0, "fd":Landroid/os/NativeHandle;
    invoke-virtual {p2}, Landroid/os/HwParcel;->readStringVector()Ljava/util/ArrayList;

    move-result-object v1

    .line 694
    .local v1, "options":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {p0, v0, v1}, Landroid/hardware/oemlock/V1_0/IOemLock$Stub;->debug(Landroid/os/NativeHandle;Ljava/util/ArrayList;)V

    .line 695
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 696
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 697
    goto/16 :goto_215

    .line 669
    .end local v0  # "fd":Landroid/os/NativeHandle;
    .end local v1  # "options":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v3  # "_hidl_is_oneway":Z
    :sswitch_156
    and-int/lit8 v4, p4, 0x1

    if-eqz v4, :cond_15b

    goto :goto_15c

    :cond_15b
    move v3, v2

    .line 670
    .restart local v3  # "_hidl_is_oneway":Z
    :goto_15c
    if-eqz v3, :cond_166

    .line 671
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 672
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 673
    goto/16 :goto_215

    .line 674
    :cond_166
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 676
    invoke-virtual {p0}, Landroid/hardware/oemlock/V1_0/IOemLock$Stub;->interfaceChain()Ljava/util/ArrayList;

    move-result-object v0

    .line 677
    .local v0, "_hidl_out_descriptors":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 678
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStringVector(Ljava/util/ArrayList;)V

    .line 679
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 680
    goto/16 :goto_215

    .line 649
    .end local v0  # "_hidl_out_descriptors":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v3  # "_hidl_is_oneway":Z
    :cond_178
    and-int/lit8 v4, p4, 0x1

    if-eqz v4, :cond_17d

    move v2, v3

    .line 650
    .local v2, "_hidl_is_oneway":Z
    :cond_17d
    if-eqz v2, :cond_187

    .line 651
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 652
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 653
    goto/16 :goto_215

    .line 654
    :cond_187
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 656
    new-instance v0, Landroid/hardware/oemlock/V1_0/IOemLock$Stub$3;

    invoke-direct {v0, p0, p3}, Landroid/hardware/oemlock/V1_0/IOemLock$Stub$3;-><init>(Landroid/hardware/oemlock/V1_0/IOemLock$Stub;Landroid/os/HwParcel;)V

    invoke-virtual {p0, v0}, Landroid/hardware/oemlock/V1_0/IOemLock$Stub;->isOemUnlockAllowedByDevice(Landroid/hardware/oemlock/V1_0/IOemLock$isOemUnlockAllowedByDeviceCallback;)V

    .line 664
    goto/16 :goto_215

    .line 632
    .end local v2  # "_hidl_is_oneway":Z
    :cond_194
    and-int/lit8 v4, p4, 0x1

    if-eqz v4, :cond_199

    goto :goto_19a

    :cond_199
    move v3, v2

    .line 633
    .restart local v3  # "_hidl_is_oneway":Z
    :goto_19a
    if-eqz v3, :cond_1a4

    .line 634
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 635
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 636
    goto/16 :goto_215

    .line 637
    :cond_1a4
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 639
    invoke-virtual {p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v0

    .line 640
    .local v0, "allowed":Z
    invoke-virtual {p0, v0}, Landroid/hardware/oemlock/V1_0/IOemLock$Stub;->setOemUnlockAllowedByDevice(Z)I

    move-result v1

    .line 641
    .local v1, "_hidl_out_status":I
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 642
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 643
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 644
    goto :goto_215

    .line 612
    .end local v0  # "allowed":Z
    .end local v1  # "_hidl_out_status":I
    .end local v3  # "_hidl_is_oneway":Z
    :cond_1b9
    and-int/lit8 v4, p4, 0x1

    if-eqz v4, :cond_1be

    move v2, v3

    .line 613
    .restart local v2  # "_hidl_is_oneway":Z
    :cond_1be
    if-eqz v2, :cond_1c7

    .line 614
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 615
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 616
    goto :goto_215

    .line 617
    :cond_1c7
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 619
    new-instance v0, Landroid/hardware/oemlock/V1_0/IOemLock$Stub$2;

    invoke-direct {v0, p0, p3}, Landroid/hardware/oemlock/V1_0/IOemLock$Stub$2;-><init>(Landroid/hardware/oemlock/V1_0/IOemLock$Stub;Landroid/os/HwParcel;)V

    invoke-virtual {p0, v0}, Landroid/hardware/oemlock/V1_0/IOemLock$Stub;->isOemUnlockAllowedByCarrier(Landroid/hardware/oemlock/V1_0/IOemLock$isOemUnlockAllowedByCarrierCallback;)V

    .line 627
    goto :goto_215

    .line 594
    .end local v2  # "_hidl_is_oneway":Z
    :cond_1d3
    and-int/lit8 v4, p4, 0x1

    if-eqz v4, :cond_1d8

    goto :goto_1d9

    :cond_1d8
    move v3, v2

    .line 595
    .restart local v3  # "_hidl_is_oneway":Z
    :goto_1d9
    if-eqz v3, :cond_1e2

    .line 596
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 597
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 598
    goto :goto_215

    .line 599
    :cond_1e2
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 601
    invoke-virtual {p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v0

    .line 602
    .restart local v0  # "allowed":Z
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt8Vector()Ljava/util/ArrayList;

    move-result-object v1

    .line 603
    .local v1, "signature":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    invoke-virtual {p0, v0, v1}, Landroid/hardware/oemlock/V1_0/IOemLock$Stub;->setOemUnlockAllowedByCarrier(ZLjava/util/ArrayList;)I

    move-result v4

    .line 604
    .local v4, "_hidl_out_status":I
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 605
    invoke-virtual {p3, v4}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 606
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 607
    goto :goto_215

    .line 574
    .end local v0  # "allowed":Z
    .end local v1  # "signature":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    .end local v3  # "_hidl_is_oneway":Z
    .end local v4  # "_hidl_out_status":I
    :cond_1fb
    and-int/lit8 v4, p4, 0x1

    if-eqz v4, :cond_200

    move v2, v3

    .line 575
    .restart local v2  # "_hidl_is_oneway":Z
    :cond_200
    if-eqz v2, :cond_209

    .line 576
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 577
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 578
    goto :goto_215

    .line 579
    :cond_209
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 581
    new-instance v0, Landroid/hardware/oemlock/V1_0/IOemLock$Stub$1;

    invoke-direct {v0, p0, p3}, Landroid/hardware/oemlock/V1_0/IOemLock$Stub$1;-><init>(Landroid/hardware/oemlock/V1_0/IOemLock$Stub;Landroid/os/HwParcel;)V

    invoke-virtual {p0, v0}, Landroid/hardware/oemlock/V1_0/IOemLock$Stub;->getName(Landroid/hardware/oemlock/V1_0/IOemLock$getNameCallback;)V

    .line 589
    nop

    .line 833
    .end local v2  # "_hidl_is_oneway":Z
    :cond_215
    :goto_215
    return-void

    :sswitch_data_216
    .sparse-switch
        0xf43484e -> :sswitch_156
        0xf444247 -> :sswitch_130
        0xf445343 -> :sswitch_10e
        0xf485348 -> :sswitch_a9
        0xf494e54 -> :sswitch_92
        0xf4c5444 -> :sswitch_82
        0xf504e47 -> :sswitch_64
        0xf524546 -> :sswitch_42
        0xf535953 -> :sswitch_2b
        0xf555444 -> :sswitch_1b
    .end sparse-switch
.end method

.method public final ping()V
    .registers 1

    .line 525
    return-void
.end method

.method public queryLocalInterface(Ljava/lang/String;)Landroid/os/IHwInterface;
    .registers 3
    .param p1, "descriptor"  # Ljava/lang/String;

    .line 553
    const-string v0, "android.hardware.oemlock@1.0::IOemLock"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 554
    return-object p0

    .line 556
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

    .line 560
    invoke-virtual {p0, p1}, Landroid/hardware/oemlock/V1_0/IOemLock$Stub;->registerService(Ljava/lang/String;)V

    .line 561
    return-void
.end method

.method public final setHALInstrumentation()V
    .registers 1

    .line 515
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 565
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/hardware/oemlock/V1_0/IOemLock$Stub;->interfaceDescriptor()Ljava/lang/String;

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

    .line 547
    const/4 v0, 0x1

    return v0
.end method
