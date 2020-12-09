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
    return-void
.end method

.method public final getDebugInfo()Landroid/hidl/base/V1_0/DebugInfo;
    .registers 4

    .line 508
    new-instance v0, Landroid/hidl/base/V1_0/DebugInfo;

    invoke-direct {v0}, Landroid/hidl/base/V1_0/DebugInfo;-><init>()V

    .line 509
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
    .registers 4

    .line 496
    const/4 p1, 0x1

    return p1
.end method

.method public final notifySyspropsChanged()V
    .registers 1

    .line 518
    invoke-static {}, Landroid/os/HwBinder;->enableInstrumentation()V

    .line 520
    return-void
.end method

.method public onTransact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V
    .registers 12
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

    if-eq p1, v3, :cond_202

    const/4 v4, 0x2

    if-eq p1, v4, :cond_1de

    const/4 v4, 0x3

    if-eq p1, v4, :cond_1be

    const/4 v4, 0x4

    if-eq p1, v4, :cond_198

    const/4 v4, 0x5

    if-eq p1, v4, :cond_176

    const-string v0, "android.hidl.base@1.0::IBase"

    sparse-switch p1, :sswitch_data_228

    goto/16 :goto_226

    .line 789
    :sswitch_1b
    and-int/lit8 p1, p4, 0x1

    if-eqz p1, :cond_20

    move v2, v3

    .line 790
    :cond_20
    if-eqz v2, :cond_226

    .line 791
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 792
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 793
    goto/16 :goto_226

    .line 776
    :sswitch_2a
    and-int/lit8 p1, p4, 0x1

    if-eqz p1, :cond_2f

    move v2, v3

    .line 777
    :cond_2f
    if-eq v2, v3, :cond_39

    .line 778
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 779
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 780
    goto/16 :goto_226

    .line 781
    :cond_39
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 783
    invoke-virtual {p0}, Landroid/hardware/contexthub/V1_0/IContexthubCallback$Stub;->notifySyspropsChanged()V

    .line 784
    goto/16 :goto_226

    .line 760
    :sswitch_41
    and-int/lit8 p1, p4, 0x1

    if-eqz p1, :cond_46

    goto :goto_47

    :cond_46
    move v3, v2

    .line 761
    :goto_47
    if-eqz v3, :cond_51

    .line 762
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 763
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 764
    goto/16 :goto_226

    .line 765
    :cond_51
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 767
    invoke-virtual {p0}, Landroid/hardware/contexthub/V1_0/IContexthubCallback$Stub;->getDebugInfo()Landroid/hidl/base/V1_0/DebugInfo;

    move-result-object p1

    .line 768
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 769
    invoke-virtual {p1, p3}, Landroid/hidl/base/V1_0/DebugInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 770
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 771
    goto/16 :goto_226

    .line 745
    :sswitch_63
    and-int/lit8 p1, p4, 0x1

    if-eqz p1, :cond_68

    goto :goto_69

    :cond_68
    move v3, v2

    .line 746
    :goto_69
    if-eqz v3, :cond_73

    .line 747
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 748
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 749
    goto/16 :goto_226

    .line 750
    :cond_73
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 752
    invoke-virtual {p0}, Landroid/hardware/contexthub/V1_0/IContexthubCallback$Stub;->ping()V

    .line 753
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 754
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 755
    goto/16 :goto_226

    .line 735
    :sswitch_81
    and-int/lit8 p1, p4, 0x1

    if-eqz p1, :cond_86

    move v2, v3

    .line 736
    :cond_86
    if-eqz v2, :cond_226

    .line 737
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 738
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 739
    goto/16 :goto_226

    .line 722
    :sswitch_90
    and-int/lit8 p1, p4, 0x1

    if-eqz p1, :cond_95

    move v2, v3

    .line 723
    :cond_95
    if-eq v2, v3, :cond_9f

    .line 724
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 725
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 726
    goto/16 :goto_226

    .line 727
    :cond_9f
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 729
    invoke-virtual {p0}, Landroid/hardware/contexthub/V1_0/IContexthubCallback$Stub;->setHALInstrumentation()V

    .line 730
    goto/16 :goto_226

    .line 683
    :sswitch_a7
    and-int/lit8 p1, p4, 0x1

    if-eqz p1, :cond_ac

    goto :goto_ad

    :cond_ac
    move v3, v2

    .line 684
    :goto_ad
    if-eqz v3, :cond_b7

    .line 685
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 686
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 687
    goto/16 :goto_226

    .line 688
    :cond_b7
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 690
    invoke-virtual {p0}, Landroid/hardware/contexthub/V1_0/IContexthubCallback$Stub;->getHashChain()Ljava/util/ArrayList;

    move-result-object p1

    .line 691
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 693
    new-instance p2, Landroid/os/HwBlob;

    const/16 p4, 0x10

    invoke-direct {p2, p4}, Landroid/os/HwBlob;-><init>(I)V

    .line 695
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p4

    .line 696
    const-wide/16 v0, 0x8

    invoke-virtual {p2, v0, v1, p4}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 697
    const-wide/16 v0, 0xc

    invoke-virtual {p2, v0, v1, v2}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 698
    new-instance v0, Landroid/os/HwBlob;

    mul-int/lit8 v1, p4, 0x20

    invoke-direct {v0, v1}, Landroid/os/HwBlob;-><init>(I)V

    .line 699
    nop

    :goto_de
    if-ge v2, p4, :cond_ff

    .line 701
    mul-int/lit8 v1, v2, 0x20

    int-to-long v3, v1

    .line 702
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    .line 704
    if-eqz v1, :cond_f7

    array-length v5, v1

    const/16 v6, 0x20

    if-ne v5, v6, :cond_f7

    .line 708
    invoke-virtual {v0, v3, v4, v1}, Landroid/os/HwBlob;->putInt8Array(J[B)V

    .line 709
    nop

    .line 699
    add-int/lit8 v2, v2, 0x1

    goto :goto_de

    .line 705
    :cond_f7
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Array element is not of the expected length"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 712
    :cond_ff
    const-wide/16 v1, 0x0

    invoke-virtual {p2, v1, v2, v0}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    .line 714
    invoke-virtual {p3, p2}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    .line 716
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 717
    goto/16 :goto_226

    .line 667
    :sswitch_10c
    and-int/lit8 p1, p4, 0x1

    if-eqz p1, :cond_111

    goto :goto_112

    :cond_111
    move v3, v2

    .line 668
    :goto_112
    if-eqz v3, :cond_11c

    .line 669
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 670
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 671
    goto/16 :goto_226

    .line 672
    :cond_11c
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 674
    invoke-virtual {p0}, Landroid/hardware/contexthub/V1_0/IContexthubCallback$Stub;->interfaceDescriptor()Ljava/lang/String;

    move-result-object p1

    .line 675
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 676
    invoke-virtual {p3, p1}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 677
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 678
    goto/16 :goto_226

    .line 650
    :sswitch_12e
    and-int/lit8 p1, p4, 0x1

    if-eqz p1, :cond_133

    goto :goto_134

    :cond_133
    move v3, v2

    .line 651
    :goto_134
    if-eqz v3, :cond_13e

    .line 652
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 653
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 654
    goto/16 :goto_226

    .line 655
    :cond_13e
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 657
    invoke-virtual {p2}, Landroid/os/HwParcel;->readNativeHandle()Landroid/os/NativeHandle;

    move-result-object p1

    .line 658
    invoke-virtual {p2}, Landroid/os/HwParcel;->readStringVector()Ljava/util/ArrayList;

    move-result-object p2

    .line 659
    invoke-virtual {p0, p1, p2}, Landroid/hardware/contexthub/V1_0/IContexthubCallback$Stub;->debug(Landroid/os/NativeHandle;Ljava/util/ArrayList;)V

    .line 660
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 661
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 662
    goto/16 :goto_226

    .line 634
    :sswitch_154
    and-int/lit8 p1, p4, 0x1

    if-eqz p1, :cond_159

    goto :goto_15a

    :cond_159
    move v3, v2

    .line 635
    :goto_15a
    if-eqz v3, :cond_164

    .line 636
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 637
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 638
    goto/16 :goto_226

    .line 639
    :cond_164
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 641
    invoke-virtual {p0}, Landroid/hardware/contexthub/V1_0/IContexthubCallback$Stub;->interfaceChain()Ljava/util/ArrayList;

    move-result-object p1

    .line 642
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 643
    invoke-virtual {p3, p1}, Landroid/os/HwParcel;->writeStringVector(Ljava/util/ArrayList;)V

    .line 644
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 645
    goto/16 :goto_226

    .line 618
    :cond_176
    and-int/lit8 p1, p4, 0x1

    if-eqz p1, :cond_17b

    goto :goto_17c

    :cond_17b
    move v3, v2

    .line 619
    :goto_17c
    if-eqz v3, :cond_186

    .line 620
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 621
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 622
    goto/16 :goto_226

    .line 623
    :cond_186
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 625
    invoke-static {p2}, Landroid/hardware/contexthub/V1_0/HubAppInfo;->readVectorFromParcel(Landroid/os/HwParcel;)Ljava/util/ArrayList;

    move-result-object p1

    .line 626
    invoke-virtual {p0, p1}, Landroid/hardware/contexthub/V1_0/IContexthubCallback$Stub;->handleAppsInfo(Ljava/util/ArrayList;)V

    .line 627
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 628
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 629
    goto/16 :goto_226

    .line 601
    :cond_198
    and-int/lit8 p1, p4, 0x1

    if-eqz p1, :cond_19d

    goto :goto_19e

    :cond_19d
    move v3, v2

    .line 602
    :goto_19e
    if-eqz v3, :cond_1a8

    .line 603
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 604
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 605
    goto/16 :goto_226

    .line 606
    :cond_1a8
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 608
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt64()J

    move-result-wide v0

    .line 609
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p1

    .line 610
    invoke-virtual {p0, v0, v1, p1}, Landroid/hardware/contexthub/V1_0/IContexthubCallback$Stub;->handleAppAbort(JI)V

    .line 611
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 612
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 613
    goto/16 :goto_226

    .line 585
    :cond_1be
    and-int/lit8 p1, p4, 0x1

    if-eqz p1, :cond_1c3

    goto :goto_1c4

    :cond_1c3
    move v3, v2

    .line 586
    :goto_1c4
    if-eqz v3, :cond_1cd

    .line 587
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 588
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 589
    goto :goto_226

    .line 590
    :cond_1cd
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 592
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p1

    .line 593
    invoke-virtual {p0, p1}, Landroid/hardware/contexthub/V1_0/IContexthubCallback$Stub;->handleHubEvent(I)V

    .line 594
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 595
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 596
    goto :goto_226

    .line 568
    :cond_1de
    and-int/lit8 p1, p4, 0x1

    if-eqz p1, :cond_1e3

    goto :goto_1e4

    :cond_1e3
    move v3, v2

    .line 569
    :goto_1e4
    if-eqz v3, :cond_1ed

    .line 570
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 571
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 572
    goto :goto_226

    .line 573
    :cond_1ed
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 575
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p1

    .line 576
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p2

    .line 577
    invoke-virtual {p0, p1, p2}, Landroid/hardware/contexthub/V1_0/IContexthubCallback$Stub;->handleTxnResult(II)V

    .line 578
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 579
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 580
    goto :goto_226

    .line 551
    :cond_202
    and-int/lit8 p1, p4, 0x1

    if-eqz p1, :cond_207

    goto :goto_208

    :cond_207
    move v3, v2

    .line 552
    :goto_208
    if-eqz v3, :cond_211

    .line 553
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 554
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 555
    goto :goto_226

    .line 556
    :cond_211
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 558
    new-instance p1, Landroid/hardware/contexthub/V1_0/ContextHubMsg;

    invoke-direct {p1}, Landroid/hardware/contexthub/V1_0/ContextHubMsg;-><init>()V

    .line 559
    invoke-virtual {p1, p2}, Landroid/hardware/contexthub/V1_0/ContextHubMsg;->readFromParcel(Landroid/os/HwParcel;)V

    .line 560
    invoke-virtual {p0, p1}, Landroid/hardware/contexthub/V1_0/IContexthubCallback$Stub;->handleClientMsg(Landroid/hardware/contexthub/V1_0/ContextHubMsg;)V

    .line 561
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 562
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 563
    nop

    .line 798
    :cond_226
    :goto_226
    return-void

    nop

    :sswitch_data_228
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

    .line 502
    return-void
.end method

.method public queryLocalInterface(Ljava/lang/String;)Landroid/os/IHwInterface;
    .registers 3

    .line 530
    const-string v0, "android.hardware.contexthub@1.0::IContexthubCallback"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_9

    .line 531
    return-object p0

    .line 533
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
    .registers 2

    .line 524
    const/4 p1, 0x1

    return p1
.end method
