.class public abstract Landroid/hardware/broadcastradio/V2_0/ITunerCallback$Stub;
.super Landroid/os/HwBinder;
.source "ITunerCallback.java"

# interfaces
.implements Landroid/hardware/broadcastradio/V2_0/ITunerCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/broadcastradio/V2_0/ITunerCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 456
    invoke-direct {p0}, Landroid/os/HwBinder;-><init>()V

    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IHwBinder;
    .registers 1

    .line 459
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

    .line 472
    return-void
.end method

.method public final getDebugInfo()Landroid/hidl/base/V1_0/DebugInfo;
    .registers 4

    .line 509
    new-instance v0, Landroid/hidl/base/V1_0/DebugInfo;

    invoke-direct {v0}, Landroid/hidl/base/V1_0/DebugInfo;-><init>()V

    .line 510
    invoke-static {}, Landroid/os/HidlSupport;->getPidIfSharable()I

    move-result v1

    iput v1, v0, Landroid/hidl/base/V1_0/DebugInfo;->pid:I

    .line 511
    const-wide/16 v1, 0x0

    iput-wide v1, v0, Landroid/hidl/base/V1_0/DebugInfo;->ptr:J

    .line 512
    const/4 v1, 0x0

    iput v1, v0, Landroid/hidl/base/V1_0/DebugInfo;->arch:I

    .line 513
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

    .line 484
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
        -0x51t
        0x24t
        -0x48t
        0x7ct
        -0x58t
        -0x48t
        -0x10t
        0x2ft
        -0x33t
        -0x1et
        0x5t
        -0x1ct
        0x7dt
        -0x4at
        -0x57t
        0x60t
        -0x61t
        -0x39t
        -0x17t
        -0x29t
        0x7dt
        0x73t
        -0x1at
        -0x6ct
        -0x14t
        -0x71t
        -0x64t
        0x50t
        -0x74t
        -0x5ft
        -0x6bt
        0x75t
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

    .line 464
    new-instance v0, Ljava/util/ArrayList;

    const-string v1, "android.hardware.broadcastradio@2.0::ITunerCallback"

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

    .line 478
    const-string v0, "android.hardware.broadcastradio@2.0::ITunerCallback"

    return-object v0
.end method

.method public final linkToDeath(Landroid/os/IHwBinder$DeathRecipient;J)Z
    .registers 4

    .line 497
    const/4 p1, 0x1

    return p1
.end method

.method public final notifySyspropsChanged()V
    .registers 1

    .line 519
    invoke-static {}, Landroid/os/HwBinder;->enableInstrumentation()V

    .line 521
    return-void
.end method

.method public onTransact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V
    .registers 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 549
    const-string v0, "android.hardware.broadcastradio@2.0::ITunerCallback"

    const/high16 v1, -0x80000000

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eq p1, v3, :cond_1e5

    const/4 v4, 0x2

    if-eq p1, v4, :cond_1c8

    const/4 v4, 0x3

    if-eq p1, v4, :cond_1ab

    const/4 v4, 0x4

    if-eq p1, v4, :cond_191

    const/4 v4, 0x5

    if-eq p1, v4, :cond_176

    const-string v0, "android.hidl.base@1.0::IBase"

    sparse-switch p1, :sswitch_data_208

    goto/16 :goto_206

    .line 781
    :sswitch_1b
    and-int/lit8 p1, p4, 0x1

    if-eqz p1, :cond_20

    move v2, v3

    .line 782
    :cond_20
    if-eqz v2, :cond_206

    .line 783
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 784
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 785
    goto/16 :goto_206

    .line 768
    :sswitch_2a
    and-int/lit8 p1, p4, 0x1

    if-eqz p1, :cond_2f

    move v2, v3

    .line 769
    :cond_2f
    if-eq v2, v3, :cond_39

    .line 770
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 771
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 772
    goto/16 :goto_206

    .line 773
    :cond_39
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 775
    invoke-virtual {p0}, Landroid/hardware/broadcastradio/V2_0/ITunerCallback$Stub;->notifySyspropsChanged()V

    .line 776
    goto/16 :goto_206

    .line 752
    :sswitch_41
    and-int/lit8 p1, p4, 0x1

    if-eqz p1, :cond_46

    goto :goto_47

    :cond_46
    move v3, v2

    .line 753
    :goto_47
    if-eqz v3, :cond_51

    .line 754
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 755
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 756
    goto/16 :goto_206

    .line 757
    :cond_51
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 759
    invoke-virtual {p0}, Landroid/hardware/broadcastradio/V2_0/ITunerCallback$Stub;->getDebugInfo()Landroid/hidl/base/V1_0/DebugInfo;

    move-result-object p1

    .line 760
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 761
    invoke-virtual {p1, p3}, Landroid/hidl/base/V1_0/DebugInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 762
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 763
    goto/16 :goto_206

    .line 737
    :sswitch_63
    and-int/lit8 p1, p4, 0x1

    if-eqz p1, :cond_68

    goto :goto_69

    :cond_68
    move v3, v2

    .line 738
    :goto_69
    if-eqz v3, :cond_73

    .line 739
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 740
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 741
    goto/16 :goto_206

    .line 742
    :cond_73
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 744
    invoke-virtual {p0}, Landroid/hardware/broadcastradio/V2_0/ITunerCallback$Stub;->ping()V

    .line 745
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 746
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 747
    goto/16 :goto_206

    .line 727
    :sswitch_81
    and-int/lit8 p1, p4, 0x1

    if-eqz p1, :cond_86

    move v2, v3

    .line 728
    :cond_86
    if-eqz v2, :cond_206

    .line 729
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 730
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 731
    goto/16 :goto_206

    .line 714
    :sswitch_90
    and-int/lit8 p1, p4, 0x1

    if-eqz p1, :cond_95

    move v2, v3

    .line 715
    :cond_95
    if-eq v2, v3, :cond_9f

    .line 716
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 717
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 718
    goto/16 :goto_206

    .line 719
    :cond_9f
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 721
    invoke-virtual {p0}, Landroid/hardware/broadcastradio/V2_0/ITunerCallback$Stub;->setHALInstrumentation()V

    .line 722
    goto/16 :goto_206

    .line 675
    :sswitch_a7
    and-int/lit8 p1, p4, 0x1

    if-eqz p1, :cond_ac

    goto :goto_ad

    :cond_ac
    move v3, v2

    .line 676
    :goto_ad
    if-eqz v3, :cond_b7

    .line 677
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 678
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 679
    goto/16 :goto_206

    .line 680
    :cond_b7
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 682
    invoke-virtual {p0}, Landroid/hardware/broadcastradio/V2_0/ITunerCallback$Stub;->getHashChain()Ljava/util/ArrayList;

    move-result-object p1

    .line 683
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 685
    new-instance p2, Landroid/os/HwBlob;

    const/16 p4, 0x10

    invoke-direct {p2, p4}, Landroid/os/HwBlob;-><init>(I)V

    .line 687
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p4

    .line 688
    const-wide/16 v0, 0x8

    invoke-virtual {p2, v0, v1, p4}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 689
    const-wide/16 v0, 0xc

    invoke-virtual {p2, v0, v1, v2}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 690
    new-instance v0, Landroid/os/HwBlob;

    mul-int/lit8 v1, p4, 0x20

    invoke-direct {v0, v1}, Landroid/os/HwBlob;-><init>(I)V

    .line 691
    nop

    :goto_de
    if-ge v2, p4, :cond_ff

    .line 693
    mul-int/lit8 v1, v2, 0x20

    int-to-long v3, v1

    .line 694
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    .line 696
    if-eqz v1, :cond_f7

    array-length v5, v1

    const/16 v6, 0x20

    if-ne v5, v6, :cond_f7

    .line 700
    invoke-virtual {v0, v3, v4, v1}, Landroid/os/HwBlob;->putInt8Array(J[B)V

    .line 701
    nop

    .line 691
    add-int/lit8 v2, v2, 0x1

    goto :goto_de

    .line 697
    :cond_f7
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Array element is not of the expected length"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 704
    :cond_ff
    const-wide/16 v1, 0x0

    invoke-virtual {p2, v1, v2, v0}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    .line 706
    invoke-virtual {p3, p2}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    .line 708
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 709
    goto/16 :goto_206

    .line 659
    :sswitch_10c
    and-int/lit8 p1, p4, 0x1

    if-eqz p1, :cond_111

    goto :goto_112

    :cond_111
    move v3, v2

    .line 660
    :goto_112
    if-eqz v3, :cond_11c

    .line 661
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 662
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 663
    goto/16 :goto_206

    .line 664
    :cond_11c
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 666
    invoke-virtual {p0}, Landroid/hardware/broadcastradio/V2_0/ITunerCallback$Stub;->interfaceDescriptor()Ljava/lang/String;

    move-result-object p1

    .line 667
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 668
    invoke-virtual {p3, p1}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 669
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 670
    goto/16 :goto_206

    .line 642
    :sswitch_12e
    and-int/lit8 p1, p4, 0x1

    if-eqz p1, :cond_133

    goto :goto_134

    :cond_133
    move v3, v2

    .line 643
    :goto_134
    if-eqz v3, :cond_13e

    .line 644
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 645
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 646
    goto/16 :goto_206

    .line 647
    :cond_13e
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 649
    invoke-virtual {p2}, Landroid/os/HwParcel;->readNativeHandle()Landroid/os/NativeHandle;

    move-result-object p1

    .line 650
    invoke-virtual {p2}, Landroid/os/HwParcel;->readStringVector()Ljava/util/ArrayList;

    move-result-object p2

    .line 651
    invoke-virtual {p0, p1, p2}, Landroid/hardware/broadcastradio/V2_0/ITunerCallback$Stub;->debug(Landroid/os/NativeHandle;Ljava/util/ArrayList;)V

    .line 652
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 653
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 654
    goto/16 :goto_206

    .line 626
    :sswitch_154
    and-int/lit8 p1, p4, 0x1

    if-eqz p1, :cond_159

    goto :goto_15a

    :cond_159
    move v3, v2

    .line 627
    :goto_15a
    if-eqz v3, :cond_164

    .line 628
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 629
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 630
    goto/16 :goto_206

    .line 631
    :cond_164
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 633
    invoke-virtual {p0}, Landroid/hardware/broadcastradio/V2_0/ITunerCallback$Stub;->interfaceChain()Ljava/util/ArrayList;

    move-result-object p1

    .line 634
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 635
    invoke-virtual {p3, p1}, Landroid/os/HwParcel;->writeStringVector(Ljava/util/ArrayList;)V

    .line 636
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 637
    goto/16 :goto_206

    .line 612
    :cond_176
    and-int/lit8 p1, p4, 0x1

    if-eqz p1, :cond_17b

    move v2, v3

    .line 613
    :cond_17b
    if-eq v2, v3, :cond_185

    .line 614
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 615
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 616
    goto/16 :goto_206

    .line 617
    :cond_185
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 619
    invoke-static {p2}, Landroid/hardware/broadcastradio/V2_0/VendorKeyValue;->readVectorFromParcel(Landroid/os/HwParcel;)Ljava/util/ArrayList;

    move-result-object p1

    .line 620
    invoke-virtual {p0, p1}, Landroid/hardware/broadcastradio/V2_0/ITunerCallback$Stub;->onParametersUpdated(Ljava/util/ArrayList;)V

    .line 621
    goto/16 :goto_206

    .line 598
    :cond_191
    and-int/lit8 p1, p4, 0x1

    if-eqz p1, :cond_196

    move v2, v3

    .line 599
    :cond_196
    if-eq v2, v3, :cond_1a0

    .line 600
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 601
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 602
    goto/16 :goto_206

    .line 603
    :cond_1a0
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 605
    invoke-virtual {p2}, Landroid/os/HwParcel;->readBool()Z

    move-result p1

    .line 606
    invoke-virtual {p0, p1}, Landroid/hardware/broadcastradio/V2_0/ITunerCallback$Stub;->onAntennaStateChange(Z)V

    .line 607
    goto :goto_206

    .line 583
    :cond_1ab
    and-int/lit8 p1, p4, 0x1

    if-eqz p1, :cond_1b0

    move v2, v3

    .line 584
    :cond_1b0
    if-eq v2, v3, :cond_1b9

    .line 585
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 586
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 587
    goto :goto_206

    .line 588
    :cond_1b9
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 590
    new-instance p1, Landroid/hardware/broadcastradio/V2_0/ProgramListChunk;

    invoke-direct {p1}, Landroid/hardware/broadcastradio/V2_0/ProgramListChunk;-><init>()V

    .line 591
    invoke-virtual {p1, p2}, Landroid/hardware/broadcastradio/V2_0/ProgramListChunk;->readFromParcel(Landroid/os/HwParcel;)V

    .line 592
    invoke-virtual {p0, p1}, Landroid/hardware/broadcastradio/V2_0/ITunerCallback$Stub;->onProgramListUpdated(Landroid/hardware/broadcastradio/V2_0/ProgramListChunk;)V

    .line 593
    goto :goto_206

    .line 568
    :cond_1c8
    and-int/lit8 p1, p4, 0x1

    if-eqz p1, :cond_1cd

    move v2, v3

    .line 569
    :cond_1cd
    if-eq v2, v3, :cond_1d6

    .line 570
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 571
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 572
    goto :goto_206

    .line 573
    :cond_1d6
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 575
    new-instance p1, Landroid/hardware/broadcastradio/V2_0/ProgramInfo;

    invoke-direct {p1}, Landroid/hardware/broadcastradio/V2_0/ProgramInfo;-><init>()V

    .line 576
    invoke-virtual {p1, p2}, Landroid/hardware/broadcastradio/V2_0/ProgramInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 577
    invoke-virtual {p0, p1}, Landroid/hardware/broadcastradio/V2_0/ITunerCallback$Stub;->onCurrentProgramInfoChanged(Landroid/hardware/broadcastradio/V2_0/ProgramInfo;)V

    .line 578
    goto :goto_206

    .line 552
    :cond_1e5
    and-int/lit8 p1, p4, 0x1

    if-eqz p1, :cond_1ea

    move v2, v3

    .line 553
    :cond_1ea
    if-eq v2, v3, :cond_1f3

    .line 554
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 555
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 556
    goto :goto_206

    .line 557
    :cond_1f3
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 559
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p1

    .line 560
    new-instance p3, Landroid/hardware/broadcastradio/V2_0/ProgramSelector;

    invoke-direct {p3}, Landroid/hardware/broadcastradio/V2_0/ProgramSelector;-><init>()V

    .line 561
    invoke-virtual {p3, p2}, Landroid/hardware/broadcastradio/V2_0/ProgramSelector;->readFromParcel(Landroid/os/HwParcel;)V

    .line 562
    invoke-virtual {p0, p1, p3}, Landroid/hardware/broadcastradio/V2_0/ITunerCallback$Stub;->onTuneFailed(ILandroid/hardware/broadcastradio/V2_0/ProgramSelector;)V

    .line 563
    nop

    .line 790
    :cond_206
    :goto_206
    return-void

    nop

    :sswitch_data_208
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

    .line 503
    return-void
.end method

.method public queryLocalInterface(Ljava/lang/String;)Landroid/os/IHwInterface;
    .registers 3

    .line 531
    const-string v0, "android.hardware.broadcastradio@2.0::ITunerCallback"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_9

    .line 532
    return-object p0

    .line 534
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

    .line 538
    invoke-virtual {p0, p1}, Landroid/hardware/broadcastradio/V2_0/ITunerCallback$Stub;->registerService(Ljava/lang/String;)V

    .line 539
    return-void
.end method

.method public final setHALInstrumentation()V
    .registers 1

    .line 493
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 543
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/hardware/broadcastradio/V2_0/ITunerCallback$Stub;->interfaceDescriptor()Ljava/lang/String;

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

    .line 525
    const/4 p1, 0x1

    return p1
.end method
