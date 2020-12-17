.class public abstract Landroid/hardware/contexthub/V1_0/IContexthubCallback$Stub;
.super Landroid/os/HwBinder;
.source "IContexthubCallback.java"

# interfaces
.implements Landroid/hardware/contexthub/V1_0/IContexthubCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/contexthub/V1_0/IContexthubCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 455
    invoke-direct {p0}, Landroid/os/HwBinder;-><init>()V

    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IHwBinder;
    .registers 1

    .line 458
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

    .line 471
    .local p2, "options":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    return-void
.end method

.method public final getDebugInfo()Landroid/hidl/base/V1_0/DebugInfo;
    .registers 4

    .line 508
    new-instance v0, Landroid/hidl/base/V1_0/DebugInfo;

    invoke-direct {v0}, Landroid/hidl/base/V1_0/DebugInfo;-><init>()V

    .line 509
    .local v0, "info":Landroid/hidl/base/V1_0/DebugInfo;
    invoke-static {}, Landroid/os/HidlSupport;->getPidIfSharable()I

    move-result v1

    iput v1, v0, Landroid/hidl/base/V1_0/DebugInfo;->pid:I

    .line 510
    const-wide/16 v1, 0x0

    iput-wide v1, v0, Landroid/hidl/base/V1_0/DebugInfo;->ptr:J

    .line 511
    const/4 v1, 0x0

    iput v1, v0, Landroid/hidl/base/V1_0/DebugInfo;->arch:I

    .line 512
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

    .line 483
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
        0x2at
        -0x4dt
        0x5t
        0x4ct
        0x2dt
        -0x6dt
        0x2t
        -0x28t
        0x41t
        0x7et
        -0x19t
        0x49t
        0x53t
        0x53t
        -0x5et
        -0x78t
        0x7ft
        -0x1dt
        0x38t
        -0x7t
        0x13t
        0x27t
        0x6ft
        0x2et
        -0x4ct
        0x1et
        -0x80t
        -0xft
        0x13t
        -0x6bt
        -0x14t
        0x2et
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

    .line 463
    new-instance v0, Ljava/util/ArrayList;

    const-string v1, "android.hardware.contexthub@1.0::IContexthubCallback"

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

    .line 477
    const-string v0, "android.hardware.contexthub@1.0::IContexthubCallback"

    return-object v0
.end method

.method public final linkToDeath(Landroid/os/IHwBinder$DeathRecipient;J)Z
    .registers 5
    .param p1, "recipient"  # Landroid/os/IHwBinder$DeathRecipient;
    .param p2, "cookie"  # J

    .line 496
    const/4 v0, 0x1

    return v0
.end method

.method public final notifySyspropsChanged()V
    .registers 1

    .line 518
    invoke-static {}, Landroid/os/HwBinder;->enableInstrumentation()V

    .line 520
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

    .line 548
    const-string v0, "android.hardware.contexthub@1.0::IContexthubCallback"

    const/high16 v1, -0x80000000

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eq p1, v3, :cond_204

    const/4 v4, 0x2

    if-eq p1, v4, :cond_1e0

    const/4 v4, 0x3

    if-eq p1, v4, :cond_1c0

    const/4 v4, 0x4

    if-eq p1, v4, :cond_19a

    const/4 v4, 0x5

    if-eq p1, v4, :cond_178

    const-string v0, "android.hidl.base@1.0::IBase"

    sparse-switch p1, :sswitch_data_22a

    goto/16 :goto_228

    .line 789
    :sswitch_1b
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_20

    move v2, v3

    :cond_20
    move v0, v2

    .line 790
    .local v0, "_hidl_is_oneway":Z
    if-eqz v0, :cond_228

    .line 791
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 792
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 793
    goto/16 :goto_228

    .line 776
    .end local v0  # "_hidl_is_oneway":Z
    :sswitch_2b
    and-int/lit8 v4, p4, 0x1

    if-eqz v4, :cond_30

    move v2, v3

    .line 777
    .local v2, "_hidl_is_oneway":Z
    :cond_30
    if-eq v2, v3, :cond_3a

    .line 778
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 779
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 780
    goto/16 :goto_228

    .line 781
    :cond_3a
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 783
    invoke-virtual {p0}, Landroid/hardware/contexthub/V1_0/IContexthubCallback$Stub;->notifySyspropsChanged()V

    .line 784
    goto/16 :goto_228

    .line 760
    .end local v2  # "_hidl_is_oneway":Z
    :sswitch_42
    and-int/lit8 v4, p4, 0x1

    if-eqz v4, :cond_47

    goto :goto_48

    :cond_47
    move v3, v2

    .line 761
    .local v3, "_hidl_is_oneway":Z
    :goto_48
    if-eqz v3, :cond_52

    .line 762
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 763
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 764
    goto/16 :goto_228

    .line 765
    :cond_52
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 767
    invoke-virtual {p0}, Landroid/hardware/contexthub/V1_0/IContexthubCallback$Stub;->getDebugInfo()Landroid/hidl/base/V1_0/DebugInfo;

    move-result-object v0

    .line 768
    .local v0, "_hidl_out_info":Landroid/hidl/base/V1_0/DebugInfo;
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 769
    invoke-virtual {v0, p3}, Landroid/hidl/base/V1_0/DebugInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 770
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 771
    goto/16 :goto_228

    .line 745
    .end local v0  # "_hidl_out_info":Landroid/hidl/base/V1_0/DebugInfo;
    .end local v3  # "_hidl_is_oneway":Z
    :sswitch_64
    and-int/lit8 v4, p4, 0x1

    if-eqz v4, :cond_69

    goto :goto_6a

    :cond_69
    move v3, v2

    .line 746
    .restart local v3  # "_hidl_is_oneway":Z
    :goto_6a
    if-eqz v3, :cond_74

    .line 747
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 748
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 749
    goto/16 :goto_228

    .line 750
    :cond_74
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 752
    invoke-virtual {p0}, Landroid/hardware/contexthub/V1_0/IContexthubCallback$Stub;->ping()V

    .line 753
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 754
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 755
    goto/16 :goto_228

    .line 735
    .end local v3  # "_hidl_is_oneway":Z
    :sswitch_82
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_87

    move v2, v3

    :cond_87
    move v0, v2

    .line 736
    .local v0, "_hidl_is_oneway":Z
    if-eqz v0, :cond_228

    .line 737
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 738
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 739
    goto/16 :goto_228

    .line 722
    .end local v0  # "_hidl_is_oneway":Z
    :sswitch_92
    and-int/lit8 v4, p4, 0x1

    if-eqz v4, :cond_97

    move v2, v3

    .line 723
    .restart local v2  # "_hidl_is_oneway":Z
    :cond_97
    if-eq v2, v3, :cond_a1

    .line 724
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 725
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 726
    goto/16 :goto_228

    .line 727
    :cond_a1
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 729
    invoke-virtual {p0}, Landroid/hardware/contexthub/V1_0/IContexthubCallback$Stub;->setHALInstrumentation()V

    .line 730
    goto/16 :goto_228

    .line 683
    .end local v2  # "_hidl_is_oneway":Z
    :sswitch_a9
    and-int/lit8 v4, p4, 0x1

    if-eqz v4, :cond_ae

    goto :goto_af

    :cond_ae
    move v3, v2

    .line 684
    .restart local v3  # "_hidl_is_oneway":Z
    :goto_af
    if-eqz v3, :cond_b9

    .line 685
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 686
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 687
    goto/16 :goto_228

    .line 688
    :cond_b9
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 690
    invoke-virtual {p0}, Landroid/hardware/contexthub/V1_0/IContexthubCallback$Stub;->getHashChain()Ljava/util/ArrayList;

    move-result-object v0

    .line 691
    .local v0, "_hidl_out_hashchain":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 693
    new-instance v1, Landroid/os/HwBlob;

    const/16 v4, 0x10

    invoke-direct {v1, v4}, Landroid/os/HwBlob;-><init>(I)V

    .line 695
    .local v1, "_hidl_blob":Landroid/os/HwBlob;
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 696
    .local v4, "_hidl_vec_size":I
    const-wide/16 v5, 0x8

    invoke-virtual {v1, v5, v6, v4}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 697
    const-wide/16 v5, 0xc

    invoke-virtual {v1, v5, v6, v2}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 698
    new-instance v2, Landroid/os/HwBlob;

    mul-int/lit8 v5, v4, 0x20

    invoke-direct {v2, v5}, Landroid/os/HwBlob;-><init>(I)V

    .line 699
    .local v2, "childBlob":Landroid/os/HwBlob;
    const/4 v5, 0x0

    .local v5, "_hidl_index_0":I
    :goto_e0
    if-ge v5, v4, :cond_101

    .line 701
    mul-int/lit8 v6, v5, 0x20

    int-to-long v6, v6

    .line 702
    .local v6, "_hidl_array_offset_1":J
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [B

    .line 704
    .local v8, "_hidl_array_item_1":[B
    if-eqz v8, :cond_f9

    array-length v9, v8

    const/16 v10, 0x20

    if-ne v9, v10, :cond_f9

    .line 708
    invoke-virtual {v2, v6, v7, v8}, Landroid/os/HwBlob;->putInt8Array(J[B)V

    .line 709
    nop

    .line 699
    .end local v6  # "_hidl_array_offset_1":J
    .end local v8  # "_hidl_array_item_1":[B
    add-int/lit8 v5, v5, 0x1

    goto :goto_e0

    .line 705
    .restart local v6  # "_hidl_array_offset_1":J
    .restart local v8  # "_hidl_array_item_1":[B
    :cond_f9
    new-instance v9, Ljava/lang/IllegalArgumentException;

    const-string v10, "Array element is not of the expected length"

    invoke-direct {v9, v10}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 712
    .end local v5  # "_hidl_index_0":I
    .end local v6  # "_hidl_array_offset_1":J
    .end local v8  # "_hidl_array_item_1":[B
    :cond_101
    const-wide/16 v5, 0x0

    invoke-virtual {v1, v5, v6, v2}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    .line 714
    .end local v2  # "childBlob":Landroid/os/HwBlob;
    .end local v4  # "_hidl_vec_size":I
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    .line 716
    .end local v1  # "_hidl_blob":Landroid/os/HwBlob;
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 717
    goto/16 :goto_228

    .line 667
    .end local v0  # "_hidl_out_hashchain":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    .end local v3  # "_hidl_is_oneway":Z
    :sswitch_10e
    and-int/lit8 v4, p4, 0x1

    if-eqz v4, :cond_113

    goto :goto_114

    :cond_113
    move v3, v2

    .line 668
    .restart local v3  # "_hidl_is_oneway":Z
    :goto_114
    if-eqz v3, :cond_11e

    .line 669
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 670
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 671
    goto/16 :goto_228

    .line 672
    :cond_11e
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 674
    invoke-virtual {p0}, Landroid/hardware/contexthub/V1_0/IContexthubCallback$Stub;->interfaceDescriptor()Ljava/lang/String;

    move-result-object v0

    .line 675
    .local v0, "_hidl_out_descriptor":Ljava/lang/String;
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 676
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 677
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 678
    goto/16 :goto_228

    .line 650
    .end local v0  # "_hidl_out_descriptor":Ljava/lang/String;
    .end local v3  # "_hidl_is_oneway":Z
    :sswitch_130
    and-int/lit8 v4, p4, 0x1

    if-eqz v4, :cond_135

    goto :goto_136

    :cond_135
    move v3, v2

    .line 651
    .restart local v3  # "_hidl_is_oneway":Z
    :goto_136
    if-eqz v3, :cond_140

    .line 652
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 653
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 654
    goto/16 :goto_228

    .line 655
    :cond_140
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 657
    invoke-virtual {p2}, Landroid/os/HwParcel;->readNativeHandle()Landroid/os/NativeHandle;

    move-result-object v0

    .line 658
    .local v0, "fd":Landroid/os/NativeHandle;
    invoke-virtual {p2}, Landroid/os/HwParcel;->readStringVector()Ljava/util/ArrayList;

    move-result-object v1

    .line 659
    .local v1, "options":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {p0, v0, v1}, Landroid/hardware/contexthub/V1_0/IContexthubCallback$Stub;->debug(Landroid/os/NativeHandle;Ljava/util/ArrayList;)V

    .line 660
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 661
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 662
    goto/16 :goto_228

    .line 634
    .end local v0  # "fd":Landroid/os/NativeHandle;
    .end local v1  # "options":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v3  # "_hidl_is_oneway":Z
    :sswitch_156
    and-int/lit8 v4, p4, 0x1

    if-eqz v4, :cond_15b

    goto :goto_15c

    :cond_15b
    move v3, v2

    .line 635
    .restart local v3  # "_hidl_is_oneway":Z
    :goto_15c
    if-eqz v3, :cond_166

    .line 636
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 637
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 638
    goto/16 :goto_228

    .line 639
    :cond_166
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 641
    invoke-virtual {p0}, Landroid/hardware/contexthub/V1_0/IContexthubCallback$Stub;->interfaceChain()Ljava/util/ArrayList;

    move-result-object v0

    .line 642
    .local v0, "_hidl_out_descriptors":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 643
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStringVector(Ljava/util/ArrayList;)V

    .line 644
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 645
    goto/16 :goto_228

    .line 618
    .end local v0  # "_hidl_out_descriptors":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v3  # "_hidl_is_oneway":Z
    :cond_178
    and-int/lit8 v4, p4, 0x1

    if-eqz v4, :cond_17d

    goto :goto_17e

    :cond_17d
    move v3, v2

    .line 619
    .restart local v3  # "_hidl_is_oneway":Z
    :goto_17e
    if-eqz v3, :cond_188

    .line 620
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 621
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 622
    goto/16 :goto_228

    .line 623
    :cond_188
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 625
    invoke-static {p2}, Landroid/hardware/contexthub/V1_0/HubAppInfo;->readVectorFromParcel(Landroid/os/HwParcel;)Ljava/util/ArrayList;

    move-result-object v0

    .line 626
    .local v0, "appInfo":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/contexthub/V1_0/HubAppInfo;>;"
    invoke-virtual {p0, v0}, Landroid/hardware/contexthub/V1_0/IContexthubCallback$Stub;->handleAppsInfo(Ljava/util/ArrayList;)V

    .line 627
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 628
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 629
    goto/16 :goto_228

    .line 601
    .end local v0  # "appInfo":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/contexthub/V1_0/HubAppInfo;>;"
    .end local v3  # "_hidl_is_oneway":Z
    :cond_19a
    and-int/lit8 v4, p4, 0x1

    if-eqz v4, :cond_19f

    goto :goto_1a0

    :cond_19f
    move v3, v2

    .line 602
    .restart local v3  # "_hidl_is_oneway":Z
    :goto_1a0
    if-eqz v3, :cond_1aa

    .line 603
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 604
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 605
    goto/16 :goto_228

    .line 606
    :cond_1aa
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 608
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt64()J

    move-result-wide v0

    .line 609
    .local v0, "appId":J
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v4

    .line 610
    .local v4, "abortCode":I
    invoke-virtual {p0, v0, v1, v4}, Landroid/hardware/contexthub/V1_0/IContexthubCallback$Stub;->handleAppAbort(JI)V

    .line 611
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 612
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 613
    goto/16 :goto_228

    .line 585
    .end local v0  # "appId":J
    .end local v3  # "_hidl_is_oneway":Z
    .end local v4  # "abortCode":I
    :cond_1c0
    and-int/lit8 v4, p4, 0x1

    if-eqz v4, :cond_1c5

    goto :goto_1c6

    :cond_1c5
    move v3, v2

    .line 586
    .restart local v3  # "_hidl_is_oneway":Z
    :goto_1c6
    if-eqz v3, :cond_1cf

    .line 587
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 588
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 589
    goto :goto_228

    .line 590
    :cond_1cf
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 592
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 593
    .local v0, "evt":I
    invoke-virtual {p0, v0}, Landroid/hardware/contexthub/V1_0/IContexthubCallback$Stub;->handleHubEvent(I)V

    .line 594
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 595
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 596
    goto :goto_228

    .line 568
    .end local v0  # "evt":I
    .end local v3  # "_hidl_is_oneway":Z
    :cond_1e0
    and-int/lit8 v4, p4, 0x1

    if-eqz v4, :cond_1e5

    goto :goto_1e6

    :cond_1e5
    move v3, v2

    .line 569
    .restart local v3  # "_hidl_is_oneway":Z
    :goto_1e6
    if-eqz v3, :cond_1ef

    .line 570
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 571
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 572
    goto :goto_228

    .line 573
    :cond_1ef
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 575
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 576
    .local v0, "txnId":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 577
    .local v1, "result":I
    invoke-virtual {p0, v0, v1}, Landroid/hardware/contexthub/V1_0/IContexthubCallback$Stub;->handleTxnResult(II)V

    .line 578
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 579
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 580
    goto :goto_228

    .line 551
    .end local v0  # "txnId":I
    .end local v1  # "result":I
    .end local v3  # "_hidl_is_oneway":Z
    :cond_204
    and-int/lit8 v4, p4, 0x1

    if-eqz v4, :cond_209

    goto :goto_20a

    :cond_209
    move v3, v2

    .line 552
    .restart local v3  # "_hidl_is_oneway":Z
    :goto_20a
    if-eqz v3, :cond_213

    .line 553
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 554
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 555
    goto :goto_228

    .line 556
    :cond_213
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 558
    new-instance v0, Landroid/hardware/contexthub/V1_0/ContextHubMsg;

    invoke-direct {v0}, Landroid/hardware/contexthub/V1_0/ContextHubMsg;-><init>()V

    .line 559
    .local v0, "msg":Landroid/hardware/contexthub/V1_0/ContextHubMsg;
    invoke-virtual {v0, p2}, Landroid/hardware/contexthub/V1_0/ContextHubMsg;->readFromParcel(Landroid/os/HwParcel;)V

    .line 560
    invoke-virtual {p0, v0}, Landroid/hardware/contexthub/V1_0/IContexthubCallback$Stub;->handleClientMsg(Landroid/hardware/contexthub/V1_0/ContextHubMsg;)V

    .line 561
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 562
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 563
    nop

    .line 798
    .end local v0  # "msg":Landroid/hardware/contexthub/V1_0/ContextHubMsg;
    .end local v3  # "_hidl_is_oneway":Z
    :cond_228
    :goto_228
    return-void

    nop

    :sswitch_data_22a
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

    .line 502
    return-void
.end method

.method public queryLocalInterface(Ljava/lang/String;)Landroid/os/IHwInterface;
    .registers 3
    .param p1, "descriptor"  # Ljava/lang/String;

    .line 530
    const-string v0, "android.hardware.contexthub@1.0::IContexthubCallback"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 531
    return-object p0

    .line 533
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

    .line 537
    invoke-virtual {p0, p1}, Landroid/hardware/contexthub/V1_0/IContexthubCallback$Stub;->registerService(Ljava/lang/String;)V

    .line 538
    return-void
.end method

.method public final setHALInstrumentation()V
    .registers 1

    .line 492
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 542
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/hardware/contexthub/V1_0/IContexthubCallback$Stub;->interfaceDescriptor()Ljava/lang/String;

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

    .line 524
    const/4 v0, 0x1

    return v0
.end method
