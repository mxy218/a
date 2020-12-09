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
    return-void
.end method

.method public final getDebugInfo()Landroid/hidl/base/V1_0/DebugInfo;
    .registers 4

    .line 531
    new-instance v0, Landroid/hidl/base/V1_0/DebugInfo;

    invoke-direct {v0}, Landroid/hidl/base/V1_0/DebugInfo;-><init>()V

    .line 532
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
    .registers 4

    .line 519
    const/4 p1, 0x1

    return p1
.end method

.method public final notifySyspropsChanged()V
    .registers 1

    .line 541
    invoke-static {}, Landroid/os/HwBinder;->enableInstrumentation()V

    .line 543
    return-void
.end method

.method public onTransact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V
    .registers 12
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

    if-eq p1, v3, :cond_1f9

    const/4 v4, 0x2

    if-eq p1, v4, :cond_1d1

    const/4 v4, 0x3

    if-eq p1, v4, :cond_1b7

    const/4 v4, 0x4

    if-eq p1, v4, :cond_192

    const/4 v4, 0x5

    if-eq p1, v4, :cond_176

    const-string v0, "android.hidl.base@1.0::IBase"

    sparse-switch p1, :sswitch_data_214

    goto/16 :goto_213

    .line 824
    :sswitch_1b
    and-int/lit8 p1, p4, 0x1

    if-eqz p1, :cond_20

    move v2, v3

    .line 825
    :cond_20
    if-eqz v2, :cond_213

    .line 826
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 827
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 828
    goto/16 :goto_213

    .line 811
    :sswitch_2a
    and-int/lit8 p1, p4, 0x1

    if-eqz p1, :cond_2f

    move v2, v3

    .line 812
    :cond_2f
    if-eq v2, v3, :cond_39

    .line 813
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 814
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 815
    goto/16 :goto_213

    .line 816
    :cond_39
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 818
    invoke-virtual {p0}, Landroid/hardware/oemlock/V1_0/IOemLock$Stub;->notifySyspropsChanged()V

    .line 819
    goto/16 :goto_213

    .line 795
    :sswitch_41
    and-int/lit8 p1, p4, 0x1

    if-eqz p1, :cond_46

    goto :goto_47

    :cond_46
    move v3, v2

    .line 796
    :goto_47
    if-eqz v3, :cond_51

    .line 797
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 798
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 799
    goto/16 :goto_213

    .line 800
    :cond_51
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 802
    invoke-virtual {p0}, Landroid/hardware/oemlock/V1_0/IOemLock$Stub;->getDebugInfo()Landroid/hidl/base/V1_0/DebugInfo;

    move-result-object p1

    .line 803
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 804
    invoke-virtual {p1, p3}, Landroid/hidl/base/V1_0/DebugInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 805
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 806
    goto/16 :goto_213

    .line 780
    :sswitch_63
    and-int/lit8 p1, p4, 0x1

    if-eqz p1, :cond_68

    goto :goto_69

    :cond_68
    move v3, v2

    .line 781
    :goto_69
    if-eqz v3, :cond_73

    .line 782
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 783
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 784
    goto/16 :goto_213

    .line 785
    :cond_73
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 787
    invoke-virtual {p0}, Landroid/hardware/oemlock/V1_0/IOemLock$Stub;->ping()V

    .line 788
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 789
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 790
    goto/16 :goto_213

    .line 770
    :sswitch_81
    and-int/lit8 p1, p4, 0x1

    if-eqz p1, :cond_86

    move v2, v3

    .line 771
    :cond_86
    if-eqz v2, :cond_213

    .line 772
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 773
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 774
    goto/16 :goto_213

    .line 757
    :sswitch_90
    and-int/lit8 p1, p4, 0x1

    if-eqz p1, :cond_95

    move v2, v3

    .line 758
    :cond_95
    if-eq v2, v3, :cond_9f

    .line 759
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 760
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 761
    goto/16 :goto_213

    .line 762
    :cond_9f
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 764
    invoke-virtual {p0}, Landroid/hardware/oemlock/V1_0/IOemLock$Stub;->setHALInstrumentation()V

    .line 765
    goto/16 :goto_213

    .line 718
    :sswitch_a7
    and-int/lit8 p1, p4, 0x1

    if-eqz p1, :cond_ac

    goto :goto_ad

    :cond_ac
    move v3, v2

    .line 719
    :goto_ad
    if-eqz v3, :cond_b7

    .line 720
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 721
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 722
    goto/16 :goto_213

    .line 723
    :cond_b7
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 725
    invoke-virtual {p0}, Landroid/hardware/oemlock/V1_0/IOemLock$Stub;->getHashChain()Ljava/util/ArrayList;

    move-result-object p1

    .line 726
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 728
    new-instance p2, Landroid/os/HwBlob;

    const/16 p4, 0x10

    invoke-direct {p2, p4}, Landroid/os/HwBlob;-><init>(I)V

    .line 730
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p4

    .line 731
    const-wide/16 v0, 0x8

    invoke-virtual {p2, v0, v1, p4}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 732
    const-wide/16 v0, 0xc

    invoke-virtual {p2, v0, v1, v2}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 733
    new-instance v0, Landroid/os/HwBlob;

    mul-int/lit8 v1, p4, 0x20

    invoke-direct {v0, v1}, Landroid/os/HwBlob;-><init>(I)V

    .line 734
    nop

    :goto_de
    if-ge v2, p4, :cond_ff

    .line 736
    mul-int/lit8 v1, v2, 0x20

    int-to-long v3, v1

    .line 737
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    .line 739
    if-eqz v1, :cond_f7

    array-length v5, v1

    const/16 v6, 0x20

    if-ne v5, v6, :cond_f7

    .line 743
    invoke-virtual {v0, v3, v4, v1}, Landroid/os/HwBlob;->putInt8Array(J[B)V

    .line 744
    nop

    .line 734
    add-int/lit8 v2, v2, 0x1

    goto :goto_de

    .line 740
    :cond_f7
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Array element is not of the expected length"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 747
    :cond_ff
    const-wide/16 v1, 0x0

    invoke-virtual {p2, v1, v2, v0}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    .line 749
    invoke-virtual {p3, p2}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    .line 751
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 752
    goto/16 :goto_213

    .line 702
    :sswitch_10c
    and-int/lit8 p1, p4, 0x1

    if-eqz p1, :cond_111

    goto :goto_112

    :cond_111
    move v3, v2

    .line 703
    :goto_112
    if-eqz v3, :cond_11c

    .line 704
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 705
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 706
    goto/16 :goto_213

    .line 707
    :cond_11c
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 709
    invoke-virtual {p0}, Landroid/hardware/oemlock/V1_0/IOemLock$Stub;->interfaceDescriptor()Ljava/lang/String;

    move-result-object p1

    .line 710
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 711
    invoke-virtual {p3, p1}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 712
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 713
    goto/16 :goto_213

    .line 685
    :sswitch_12e
    and-int/lit8 p1, p4, 0x1

    if-eqz p1, :cond_133

    goto :goto_134

    :cond_133
    move v3, v2

    .line 686
    :goto_134
    if-eqz v3, :cond_13e

    .line 687
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 688
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 689
    goto/16 :goto_213

    .line 690
    :cond_13e
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 692
    invoke-virtual {p2}, Landroid/os/HwParcel;->readNativeHandle()Landroid/os/NativeHandle;

    move-result-object p1

    .line 693
    invoke-virtual {p2}, Landroid/os/HwParcel;->readStringVector()Ljava/util/ArrayList;

    move-result-object p2

    .line 694
    invoke-virtual {p0, p1, p2}, Landroid/hardware/oemlock/V1_0/IOemLock$Stub;->debug(Landroid/os/NativeHandle;Ljava/util/ArrayList;)V

    .line 695
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 696
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 697
    goto/16 :goto_213

    .line 669
    :sswitch_154
    and-int/lit8 p1, p4, 0x1

    if-eqz p1, :cond_159

    goto :goto_15a

    :cond_159
    move v3, v2

    .line 670
    :goto_15a
    if-eqz v3, :cond_164

    .line 671
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 672
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 673
    goto/16 :goto_213

    .line 674
    :cond_164
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 676
    invoke-virtual {p0}, Landroid/hardware/oemlock/V1_0/IOemLock$Stub;->interfaceChain()Ljava/util/ArrayList;

    move-result-object p1

    .line 677
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 678
    invoke-virtual {p3, p1}, Landroid/os/HwParcel;->writeStringVector(Ljava/util/ArrayList;)V

    .line 679
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 680
    goto/16 :goto_213

    .line 649
    :cond_176
    and-int/lit8 p1, p4, 0x1

    if-eqz p1, :cond_17b

    move v2, v3

    .line 650
    :cond_17b
    if-eqz v2, :cond_185

    .line 651
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 652
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 653
    goto/16 :goto_213

    .line 654
    :cond_185
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 656
    new-instance p1, Landroid/hardware/oemlock/V1_0/IOemLock$Stub$3;

    invoke-direct {p1, p0, p3}, Landroid/hardware/oemlock/V1_0/IOemLock$Stub$3;-><init>(Landroid/hardware/oemlock/V1_0/IOemLock$Stub;Landroid/os/HwParcel;)V

    invoke-virtual {p0, p1}, Landroid/hardware/oemlock/V1_0/IOemLock$Stub;->isOemUnlockAllowedByDevice(Landroid/hardware/oemlock/V1_0/IOemLock$isOemUnlockAllowedByDeviceCallback;)V

    .line 664
    goto/16 :goto_213

    .line 632
    :cond_192
    and-int/lit8 p1, p4, 0x1

    if-eqz p1, :cond_197

    goto :goto_198

    :cond_197
    move v3, v2

    .line 633
    :goto_198
    if-eqz v3, :cond_1a2

    .line 634
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 635
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 636
    goto/16 :goto_213

    .line 637
    :cond_1a2
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 639
    invoke-virtual {p2}, Landroid/os/HwParcel;->readBool()Z

    move-result p1

    .line 640
    invoke-virtual {p0, p1}, Landroid/hardware/oemlock/V1_0/IOemLock$Stub;->setOemUnlockAllowedByDevice(Z)I

    move-result p1

    .line 641
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 642
    invoke-virtual {p3, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 643
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 644
    goto :goto_213

    .line 612
    :cond_1b7
    and-int/lit8 p1, p4, 0x1

    if-eqz p1, :cond_1bc

    move v2, v3

    .line 613
    :cond_1bc
    if-eqz v2, :cond_1c5

    .line 614
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 615
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 616
    goto :goto_213

    .line 617
    :cond_1c5
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 619
    new-instance p1, Landroid/hardware/oemlock/V1_0/IOemLock$Stub$2;

    invoke-direct {p1, p0, p3}, Landroid/hardware/oemlock/V1_0/IOemLock$Stub$2;-><init>(Landroid/hardware/oemlock/V1_0/IOemLock$Stub;Landroid/os/HwParcel;)V

    invoke-virtual {p0, p1}, Landroid/hardware/oemlock/V1_0/IOemLock$Stub;->isOemUnlockAllowedByCarrier(Landroid/hardware/oemlock/V1_0/IOemLock$isOemUnlockAllowedByCarrierCallback;)V

    .line 627
    goto :goto_213

    .line 594
    :cond_1d1
    and-int/lit8 p1, p4, 0x1

    if-eqz p1, :cond_1d6

    goto :goto_1d7

    :cond_1d6
    move v3, v2

    .line 595
    :goto_1d7
    if-eqz v3, :cond_1e0

    .line 596
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 597
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 598
    goto :goto_213

    .line 599
    :cond_1e0
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 601
    invoke-virtual {p2}, Landroid/os/HwParcel;->readBool()Z

    move-result p1

    .line 602
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt8Vector()Ljava/util/ArrayList;

    move-result-object p2

    .line 603
    invoke-virtual {p0, p1, p2}, Landroid/hardware/oemlock/V1_0/IOemLock$Stub;->setOemUnlockAllowedByCarrier(ZLjava/util/ArrayList;)I

    move-result p1

    .line 604
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 605
    invoke-virtual {p3, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 606
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 607
    goto :goto_213

    .line 574
    :cond_1f9
    and-int/lit8 p1, p4, 0x1

    if-eqz p1, :cond_1fe

    move v2, v3

    .line 575
    :cond_1fe
    if-eqz v2, :cond_207

    .line 576
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 577
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 578
    goto :goto_213

    .line 579
    :cond_207
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 581
    new-instance p1, Landroid/hardware/oemlock/V1_0/IOemLock$Stub$1;

    invoke-direct {p1, p0, p3}, Landroid/hardware/oemlock/V1_0/IOemLock$Stub$1;-><init>(Landroid/hardware/oemlock/V1_0/IOemLock$Stub;Landroid/os/HwParcel;)V

    invoke-virtual {p0, p1}, Landroid/hardware/oemlock/V1_0/IOemLock$Stub;->getName(Landroid/hardware/oemlock/V1_0/IOemLock$getNameCallback;)V

    .line 589
    nop

    .line 833
    :cond_213
    :goto_213
    return-void

    :sswitch_data_214
    .sparse-switch
        0xf43484e -> :sswitch_154
        0xf444247 -> :sswitch_12e
        0xf445343 -> :sswitch_10c
        0xf485348 -> :sswitch_a7
        0xf494e54 -> :sswitch_90
        0xf4c5444 -> :sswitch_81
        0xf504e47 -> :sswitch_63
        0xf524546 -> :sswitch_41
        0xf535953 -> :sswitch_2a
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

    .line 553
    const-string v0, "android.hardware.oemlock@1.0::IOemLock"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_9

    .line 554
    return-object p0

    .line 556
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
    .registers 2

    .line 547
    const/4 p1, 0x1

    return p1
.end method
