.class public abstract Landroid/hardware/usb/V1_2/IUsb$Stub;
.super Landroid/os/HwBinder;
.source "IUsb.java"

# interfaces
.implements Landroid/hardware/usb/V1_2/IUsb;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/usb/V1_2/IUsb;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 435
    invoke-direct {p0}, Landroid/os/HwBinder;-><init>()V

    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IHwBinder;
    .registers 1

    .line 438
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

    .line 453
    .local p2, "options":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    return-void
.end method

.method public final getDebugInfo()Landroid/hidl/base/V1_0/DebugInfo;
    .registers 4

    .line 492
    new-instance v0, Landroid/hidl/base/V1_0/DebugInfo;

    invoke-direct {v0}, Landroid/hidl/base/V1_0/DebugInfo;-><init>()V

    .line 493
    .local v0, "info":Landroid/hidl/base/V1_0/DebugInfo;
    invoke-static {}, Landroid/os/HidlSupport;->getPidIfSharable()I

    move-result v1

    iput v1, v0, Landroid/hidl/base/V1_0/DebugInfo;->pid:I

    .line 494
    const-wide/16 v1, 0x0

    iput-wide v1, v0, Landroid/hidl/base/V1_0/DebugInfo;->ptr:J

    .line 495
    const/4 v1, 0x0

    iput v1, v0, Landroid/hidl/base/V1_0/DebugInfo;->arch:I

    .line 496
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

    .line 465
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
        0x61t
        -0x44t
        0x30t
        0x2et
        0x7ct
        -0x69t
        0x4ct
        0x59t
        -0x4et
        0x58t
        -0x68t
        -0x3bt
        -0x7bt
        -0x3at
        -0x17t
        0x68t
        0x5et
        -0x76t
        -0x7ft
        0x2t
        0x1bt
        0x1bt
        -0x13t
        0x3et
        -0x13t
        -0xbt
        0x22t
        0x41t
        -0x68t
        -0xet
        0x78t
        0x5at
    .end array-data

    :array_44
    .array-data 1
        -0x52t
        -0x44t
        -0x27t
        -0x1t
        0x2dt
        -0x60t
        0x5ct
        -0x63t
        0x4ct
        0x43t
        -0x67t
        0x16t
        -0xct
        0xdt
        -0x3t
        0x21t
        -0x65t
        -0x59t
        0x62t
        -0x67t
        0x19t
        0x0t
        0x7ct
        -0x47t
        -0x7ft
        -0x15t
        -0xft
        0x50t
        0x6t
        0x4bt
        0x4ft
        -0x7et
    .end array-data

    :array_58
    .array-data 1
        0x4et
        -0xbt
        0x74t
        -0x67t
        0x27t
        0x3ft
        0x38t
        -0x43t
        -0x43t
        -0x30t
        -0x3ft
        0x5et
        0x56t
        -0x12t
        0x7at
        0x4bt
        -0x3bt
        -0xft
        -0x76t
        0x56t
        0x44t
        0x9t
        0x21t
        0x70t
        -0x5bt
        0x31t
        -0x21t
        0x35t
        0x41t
        -0x27t
        -0x20t
        0x15t
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

    .line 443
    new-instance v0, Ljava/util/ArrayList;

    const-string v1, "android.hardware.usb@1.2::IUsb"

    const-string v2, "android.hardware.usb@1.1::IUsb"

    const-string v3, "android.hardware.usb@1.0::IUsb"

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

    .line 459
    const-string v0, "android.hardware.usb@1.2::IUsb"

    return-object v0
.end method

.method public final linkToDeath(Landroid/os/IHwBinder$DeathRecipient;J)Z
    .registers 5
    .param p1, "recipient"  # Landroid/os/IHwBinder$DeathRecipient;
    .param p2, "cookie"  # J

    .line 480
    const/4 v0, 0x1

    return v0
.end method

.method public final notifySyspropsChanged()V
    .registers 1

    .line 502
    invoke-static {}, Landroid/os/HwBinder;->enableInstrumentation()V

    .line 504
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

    .line 532
    const-string v0, "android.hardware.usb@1.0::IUsb"

    const/high16 v1, -0x80000000

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eq p1, v3, :cond_1ea

    const/4 v4, 0x2

    if-eq p1, v4, :cond_1cd

    const/4 v4, 0x3

    if-eq p1, v4, :cond_1b8

    const/4 v0, 0x4

    const-string v4, "android.hardware.usb@1.2::IUsb"

    if-eq p1, v0, :cond_19a

    const/4 v0, 0x5

    if-eq p1, v0, :cond_17a

    const-string v0, "android.hidl.base@1.0::IBase"

    sparse-switch p1, :sswitch_data_20c

    goto/16 :goto_20b

    .line 763
    :sswitch_1d
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_22

    move v2, v3

    :cond_22
    move v0, v2

    .line 764
    .local v0, "_hidl_is_oneway":Z
    if-eqz v0, :cond_20b

    .line 765
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 766
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 767
    goto/16 :goto_20b

    .line 750
    .end local v0  # "_hidl_is_oneway":Z
    :sswitch_2d
    and-int/lit8 v4, p4, 0x1

    if-eqz v4, :cond_32

    move v2, v3

    .line 751
    .local v2, "_hidl_is_oneway":Z
    :cond_32
    if-eq v2, v3, :cond_3c

    .line 752
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 753
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 754
    goto/16 :goto_20b

    .line 755
    :cond_3c
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 757
    invoke-virtual {p0}, Landroid/hardware/usb/V1_2/IUsb$Stub;->notifySyspropsChanged()V

    .line 758
    goto/16 :goto_20b

    .line 734
    .end local v2  # "_hidl_is_oneway":Z
    :sswitch_44
    and-int/lit8 v4, p4, 0x1

    if-eqz v4, :cond_49

    goto :goto_4a

    :cond_49
    move v3, v2

    .line 735
    .local v3, "_hidl_is_oneway":Z
    :goto_4a
    if-eqz v3, :cond_54

    .line 736
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 737
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 738
    goto/16 :goto_20b

    .line 739
    :cond_54
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 741
    invoke-virtual {p0}, Landroid/hardware/usb/V1_2/IUsb$Stub;->getDebugInfo()Landroid/hidl/base/V1_0/DebugInfo;

    move-result-object v0

    .line 742
    .local v0, "_hidl_out_info":Landroid/hidl/base/V1_0/DebugInfo;
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 743
    invoke-virtual {v0, p3}, Landroid/hidl/base/V1_0/DebugInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 744
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 745
    goto/16 :goto_20b

    .line 719
    .end local v0  # "_hidl_out_info":Landroid/hidl/base/V1_0/DebugInfo;
    .end local v3  # "_hidl_is_oneway":Z
    :sswitch_66
    and-int/lit8 v4, p4, 0x1

    if-eqz v4, :cond_6b

    goto :goto_6c

    :cond_6b
    move v3, v2

    .line 720
    .restart local v3  # "_hidl_is_oneway":Z
    :goto_6c
    if-eqz v3, :cond_76

    .line 721
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 722
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 723
    goto/16 :goto_20b

    .line 724
    :cond_76
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 726
    invoke-virtual {p0}, Landroid/hardware/usb/V1_2/IUsb$Stub;->ping()V

    .line 727
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 728
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 729
    goto/16 :goto_20b

    .line 709
    .end local v3  # "_hidl_is_oneway":Z
    :sswitch_84
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_89

    move v2, v3

    :cond_89
    move v0, v2

    .line 710
    .local v0, "_hidl_is_oneway":Z
    if-eqz v0, :cond_20b

    .line 711
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 712
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 713
    goto/16 :goto_20b

    .line 696
    .end local v0  # "_hidl_is_oneway":Z
    :sswitch_94
    and-int/lit8 v4, p4, 0x1

    if-eqz v4, :cond_99

    move v2, v3

    .line 697
    .restart local v2  # "_hidl_is_oneway":Z
    :cond_99
    if-eq v2, v3, :cond_a3

    .line 698
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 699
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 700
    goto/16 :goto_20b

    .line 701
    :cond_a3
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 703
    invoke-virtual {p0}, Landroid/hardware/usb/V1_2/IUsb$Stub;->setHALInstrumentation()V

    .line 704
    goto/16 :goto_20b

    .line 657
    .end local v2  # "_hidl_is_oneway":Z
    :sswitch_ab
    and-int/lit8 v4, p4, 0x1

    if-eqz v4, :cond_b0

    goto :goto_b1

    :cond_b0
    move v3, v2

    .line 658
    .restart local v3  # "_hidl_is_oneway":Z
    :goto_b1
    if-eqz v3, :cond_bb

    .line 659
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 660
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 661
    goto/16 :goto_20b

    .line 662
    :cond_bb
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 664
    invoke-virtual {p0}, Landroid/hardware/usb/V1_2/IUsb$Stub;->getHashChain()Ljava/util/ArrayList;

    move-result-object v0

    .line 665
    .local v0, "_hidl_out_hashchain":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 667
    new-instance v1, Landroid/os/HwBlob;

    const/16 v4, 0x10

    invoke-direct {v1, v4}, Landroid/os/HwBlob;-><init>(I)V

    .line 669
    .local v1, "_hidl_blob":Landroid/os/HwBlob;
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 670
    .local v4, "_hidl_vec_size":I
    const-wide/16 v5, 0x8

    invoke-virtual {v1, v5, v6, v4}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 671
    const-wide/16 v5, 0xc

    invoke-virtual {v1, v5, v6, v2}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 672
    new-instance v2, Landroid/os/HwBlob;

    mul-int/lit8 v5, v4, 0x20

    invoke-direct {v2, v5}, Landroid/os/HwBlob;-><init>(I)V

    .line 673
    .local v2, "childBlob":Landroid/os/HwBlob;
    const/4 v5, 0x0

    .local v5, "_hidl_index_0":I
    :goto_e2
    if-ge v5, v4, :cond_103

    .line 675
    mul-int/lit8 v6, v5, 0x20

    int-to-long v6, v6

    .line 676
    .local v6, "_hidl_array_offset_1":J
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [B

    .line 678
    .local v8, "_hidl_array_item_1":[B
    if-eqz v8, :cond_fb

    array-length v9, v8

    const/16 v10, 0x20

    if-ne v9, v10, :cond_fb

    .line 682
    invoke-virtual {v2, v6, v7, v8}, Landroid/os/HwBlob;->putInt8Array(J[B)V

    .line 683
    nop

    .line 673
    .end local v6  # "_hidl_array_offset_1":J
    .end local v8  # "_hidl_array_item_1":[B
    add-int/lit8 v5, v5, 0x1

    goto :goto_e2

    .line 679
    .restart local v6  # "_hidl_array_offset_1":J
    .restart local v8  # "_hidl_array_item_1":[B
    :cond_fb
    new-instance v9, Ljava/lang/IllegalArgumentException;

    const-string v10, "Array element is not of the expected length"

    invoke-direct {v9, v10}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 686
    .end local v5  # "_hidl_index_0":I
    .end local v6  # "_hidl_array_offset_1":J
    .end local v8  # "_hidl_array_item_1":[B
    :cond_103
    const-wide/16 v5, 0x0

    invoke-virtual {v1, v5, v6, v2}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    .line 688
    .end local v2  # "childBlob":Landroid/os/HwBlob;
    .end local v4  # "_hidl_vec_size":I
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    .line 690
    .end local v1  # "_hidl_blob":Landroid/os/HwBlob;
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 691
    goto/16 :goto_20b

    .line 641
    .end local v0  # "_hidl_out_hashchain":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    .end local v3  # "_hidl_is_oneway":Z
    :sswitch_110
    and-int/lit8 v4, p4, 0x1

    if-eqz v4, :cond_115

    goto :goto_116

    :cond_115
    move v3, v2

    .line 642
    .restart local v3  # "_hidl_is_oneway":Z
    :goto_116
    if-eqz v3, :cond_120

    .line 643
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 644
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 645
    goto/16 :goto_20b

    .line 646
    :cond_120
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 648
    invoke-virtual {p0}, Landroid/hardware/usb/V1_2/IUsb$Stub;->interfaceDescriptor()Ljava/lang/String;

    move-result-object v0

    .line 649
    .local v0, "_hidl_out_descriptor":Ljava/lang/String;
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 650
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 651
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 652
    goto/16 :goto_20b

    .line 624
    .end local v0  # "_hidl_out_descriptor":Ljava/lang/String;
    .end local v3  # "_hidl_is_oneway":Z
    :sswitch_132
    and-int/lit8 v4, p4, 0x1

    if-eqz v4, :cond_137

    goto :goto_138

    :cond_137
    move v3, v2

    .line 625
    .restart local v3  # "_hidl_is_oneway":Z
    :goto_138
    if-eqz v3, :cond_142

    .line 626
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 627
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 628
    goto/16 :goto_20b

    .line 629
    :cond_142
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 631
    invoke-virtual {p2}, Landroid/os/HwParcel;->readNativeHandle()Landroid/os/NativeHandle;

    move-result-object v0

    .line 632
    .local v0, "fd":Landroid/os/NativeHandle;
    invoke-virtual {p2}, Landroid/os/HwParcel;->readStringVector()Ljava/util/ArrayList;

    move-result-object v1

    .line 633
    .local v1, "options":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {p0, v0, v1}, Landroid/hardware/usb/V1_2/IUsb$Stub;->debug(Landroid/os/NativeHandle;Ljava/util/ArrayList;)V

    .line 634
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 635
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 636
    goto/16 :goto_20b

    .line 608
    .end local v0  # "fd":Landroid/os/NativeHandle;
    .end local v1  # "options":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v3  # "_hidl_is_oneway":Z
    :sswitch_158
    and-int/lit8 v4, p4, 0x1

    if-eqz v4, :cond_15d

    goto :goto_15e

    :cond_15d
    move v3, v2

    .line 609
    .restart local v3  # "_hidl_is_oneway":Z
    :goto_15e
    if-eqz v3, :cond_168

    .line 610
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 611
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 612
    goto/16 :goto_20b

    .line 613
    :cond_168
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 615
    invoke-virtual {p0}, Landroid/hardware/usb/V1_2/IUsb$Stub;->interfaceChain()Ljava/util/ArrayList;

    move-result-object v0

    .line 616
    .local v0, "_hidl_out_descriptors":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 617
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStringVector(Ljava/util/ArrayList;)V

    .line 618
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 619
    goto/16 :goto_20b

    .line 593
    .end local v0  # "_hidl_out_descriptors":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v3  # "_hidl_is_oneway":Z
    :cond_17a
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_17f

    move v2, v3

    :cond_17f
    move v0, v2

    .line 594
    .local v0, "_hidl_is_oneway":Z
    if-eq v0, v3, :cond_18a

    .line 595
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 596
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 597
    goto/16 :goto_20b

    .line 598
    :cond_18a
    invoke-virtual {p2, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 600
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 601
    .local v1, "portName":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v2

    .line 602
    .local v2, "enable":Z
    invoke-virtual {p0, v1, v2}, Landroid/hardware/usb/V1_2/IUsb$Stub;->enableContaminantPresenceProtection(Ljava/lang/String;Z)V

    .line 603
    goto/16 :goto_20b

    .line 578
    .end local v0  # "_hidl_is_oneway":Z
    .end local v1  # "portName":Ljava/lang/String;
    .end local v2  # "enable":Z
    :cond_19a
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_19f

    move v2, v3

    :cond_19f
    move v0, v2

    .line 579
    .restart local v0  # "_hidl_is_oneway":Z
    if-eq v0, v3, :cond_1a9

    .line 580
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 581
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 582
    goto :goto_20b

    .line 583
    :cond_1a9
    invoke-virtual {p2, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 585
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 586
    .restart local v1  # "portName":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v2

    .line 587
    .restart local v2  # "enable":Z
    invoke-virtual {p0, v1, v2}, Landroid/hardware/usb/V1_2/IUsb$Stub;->enableContaminantPresenceDetection(Ljava/lang/String;Z)V

    .line 588
    goto :goto_20b

    .line 565
    .end local v0  # "_hidl_is_oneway":Z
    .end local v1  # "portName":Ljava/lang/String;
    .end local v2  # "enable":Z
    :cond_1b8
    and-int/lit8 v4, p4, 0x1

    if-eqz v4, :cond_1bd

    move v2, v3

    .line 566
    .local v2, "_hidl_is_oneway":Z
    :cond_1bd
    if-eq v2, v3, :cond_1c6

    .line 567
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 568
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 569
    goto :goto_20b

    .line 570
    :cond_1c6
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 572
    invoke-virtual {p0}, Landroid/hardware/usb/V1_2/IUsb$Stub;->queryPortStatus()V

    .line 573
    goto :goto_20b

    .line 551
    .end local v2  # "_hidl_is_oneway":Z
    :cond_1cd
    and-int/lit8 v4, p4, 0x1

    if-eqz v4, :cond_1d2

    move v2, v3

    .line 552
    .restart local v2  # "_hidl_is_oneway":Z
    :cond_1d2
    if-eq v2, v3, :cond_1db

    .line 553
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 554
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 555
    goto :goto_20b

    .line 556
    :cond_1db
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 558
    invoke-virtual {p2}, Landroid/os/HwParcel;->readStrongBinder()Landroid/os/IHwBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/hardware/usb/V1_0/IUsbCallback;->asInterface(Landroid/os/IHwBinder;)Landroid/hardware/usb/V1_0/IUsbCallback;

    move-result-object v0

    .line 559
    .local v0, "callback":Landroid/hardware/usb/V1_0/IUsbCallback;
    invoke-virtual {p0, v0}, Landroid/hardware/usb/V1_2/IUsb$Stub;->setCallback(Landroid/hardware/usb/V1_0/IUsbCallback;)V

    .line 560
    goto :goto_20b

    .line 535
    .end local v0  # "callback":Landroid/hardware/usb/V1_0/IUsbCallback;
    .end local v2  # "_hidl_is_oneway":Z
    :cond_1ea
    and-int/lit8 v4, p4, 0x1

    if-eqz v4, :cond_1ef

    move v2, v3

    .line 536
    .restart local v2  # "_hidl_is_oneway":Z
    :cond_1ef
    if-eq v2, v3, :cond_1f8

    .line 537
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 538
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 539
    goto :goto_20b

    .line 540
    :cond_1f8
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 542
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 543
    .local v0, "portName":Ljava/lang/String;
    new-instance v1, Landroid/hardware/usb/V1_0/PortRole;

    invoke-direct {v1}, Landroid/hardware/usb/V1_0/PortRole;-><init>()V

    .line 544
    .local v1, "role":Landroid/hardware/usb/V1_0/PortRole;
    invoke-virtual {v1, p2}, Landroid/hardware/usb/V1_0/PortRole;->readFromParcel(Landroid/os/HwParcel;)V

    .line 545
    invoke-virtual {p0, v0, v1}, Landroid/hardware/usb/V1_2/IUsb$Stub;->switchRole(Ljava/lang/String;Landroid/hardware/usb/V1_0/PortRole;)V

    .line 546
    nop

    .line 772
    .end local v0  # "portName":Ljava/lang/String;
    .end local v1  # "role":Landroid/hardware/usb/V1_0/PortRole;
    .end local v2  # "_hidl_is_oneway":Z
    :cond_20b
    :goto_20b
    return-void

    :sswitch_data_20c
    .sparse-switch
        0xf43484e -> :sswitch_158
        0xf444247 -> :sswitch_132
        0xf445343 -> :sswitch_110
        0xf485348 -> :sswitch_ab
        0xf494e54 -> :sswitch_94
        0xf4c5444 -> :sswitch_84
        0xf504e47 -> :sswitch_66
        0xf524546 -> :sswitch_44
        0xf535953 -> :sswitch_2d
        0xf555444 -> :sswitch_1d
    .end sparse-switch
.end method

.method public final ping()V
    .registers 1

    .line 486
    return-void
.end method

.method public queryLocalInterface(Ljava/lang/String;)Landroid/os/IHwInterface;
    .registers 3
    .param p1, "descriptor"  # Ljava/lang/String;

    .line 514
    const-string v0, "android.hardware.usb@1.2::IUsb"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 515
    return-object p0

    .line 517
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

    .line 521
    invoke-virtual {p0, p1}, Landroid/hardware/usb/V1_2/IUsb$Stub;->registerService(Ljava/lang/String;)V

    .line 522
    return-void
.end method

.method public final setHALInstrumentation()V
    .registers 1

    .line 476
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 526
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/hardware/usb/V1_2/IUsb$Stub;->interfaceDescriptor()Ljava/lang/String;

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

    .line 508
    const/4 v0, 0x1

    return v0
.end method
