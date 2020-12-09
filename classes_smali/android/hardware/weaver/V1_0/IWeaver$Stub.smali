.class public abstract Landroid/hardware/weaver/V1_0/IWeaver$Stub;
.super Landroid/os/HwBinder;
.source "IWeaver.java"

# interfaces
.implements Landroid/hardware/weaver/V1_0/IWeaver;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/weaver/V1_0/IWeaver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 445
    invoke-direct {p0}, Landroid/os/HwBinder;-><init>()V

    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IHwBinder;
    .registers 1

    .line 448
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

    .line 461
    return-void
.end method

.method public final getDebugInfo()Landroid/hidl/base/V1_0/DebugInfo;
    .registers 4

    .line 498
    new-instance v0, Landroid/hidl/base/V1_0/DebugInfo;

    invoke-direct {v0}, Landroid/hidl/base/V1_0/DebugInfo;-><init>()V

    .line 499
    invoke-static {}, Landroid/os/HidlSupport;->getPidIfSharable()I

    move-result v1

    iput v1, v0, Landroid/hidl/base/V1_0/DebugInfo;->pid:I

    .line 500
    const-wide/16 v1, 0x0

    iput-wide v1, v0, Landroid/hidl/base/V1_0/DebugInfo;->ptr:J

    .line 501
    const/4 v1, 0x0

    iput v1, v0, Landroid/hidl/base/V1_0/DebugInfo;->arch:I

    .line 502
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

    .line 473
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
        -0x65t
        -0x3ct
        0x34t
        0x13t
        -0x48t
        0xct
        -0x30t
        -0x3bt
        -0x66t
        0x2t
        0x2et
        -0x6dt
        -0x26t
        0x14t
        0x48t
        -0x24t
        -0x48t
        0x2dt
        -0x2ft
        0xct
        0x6dt
        -0x2dt
        0x19t
        0x32t
        -0x21t
        0x46t
        0x59t
        -0x1ct
        -0x43t
        -0x35t
        0x13t
        0x68t
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

    .line 453
    new-instance v0, Ljava/util/ArrayList;

    const-string v1, "android.hardware.weaver@1.0::IWeaver"

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

    .line 467
    const-string v0, "android.hardware.weaver@1.0::IWeaver"

    return-object v0
.end method

.method public final linkToDeath(Landroid/os/IHwBinder$DeathRecipient;J)Z
    .registers 4

    .line 486
    const/4 p1, 0x1

    return p1
.end method

.method public final notifySyspropsChanged()V
    .registers 1

    .line 508
    invoke-static {}, Landroid/os/HwBinder;->enableInstrumentation()V

    .line 510
    return-void
.end method

.method public onTransact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V
    .registers 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 538
    const-string v0, "android.hardware.weaver@1.0::IWeaver"

    const/high16 v1, -0x80000000

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eq p1, v3, :cond_1be

    const/4 v4, 0x2

    if-eq p1, v4, :cond_192

    const/4 v4, 0x3

    if-eq p1, v4, :cond_170

    const-string v0, "android.hidl.base@1.0::IBase"

    sparse-switch p1, :sswitch_data_1da

    goto/16 :goto_1d8

    .line 757
    :sswitch_15
    and-int/lit8 p1, p4, 0x1

    if-eqz p1, :cond_1a

    move v2, v3

    .line 758
    :cond_1a
    if-eqz v2, :cond_1d8

    .line 759
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 760
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 761
    goto/16 :goto_1d8

    .line 744
    :sswitch_24
    and-int/lit8 p1, p4, 0x1

    if-eqz p1, :cond_29

    move v2, v3

    .line 745
    :cond_29
    if-eq v2, v3, :cond_33

    .line 746
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 747
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 748
    goto/16 :goto_1d8

    .line 749
    :cond_33
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 751
    invoke-virtual {p0}, Landroid/hardware/weaver/V1_0/IWeaver$Stub;->notifySyspropsChanged()V

    .line 752
    goto/16 :goto_1d8

    .line 728
    :sswitch_3b
    and-int/lit8 p1, p4, 0x1

    if-eqz p1, :cond_40

    goto :goto_41

    :cond_40
    move v3, v2

    .line 729
    :goto_41
    if-eqz v3, :cond_4b

    .line 730
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 731
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 732
    goto/16 :goto_1d8

    .line 733
    :cond_4b
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 735
    invoke-virtual {p0}, Landroid/hardware/weaver/V1_0/IWeaver$Stub;->getDebugInfo()Landroid/hidl/base/V1_0/DebugInfo;

    move-result-object p1

    .line 736
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 737
    invoke-virtual {p1, p3}, Landroid/hidl/base/V1_0/DebugInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 738
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 739
    goto/16 :goto_1d8

    .line 713
    :sswitch_5d
    and-int/lit8 p1, p4, 0x1

    if-eqz p1, :cond_62

    goto :goto_63

    :cond_62
    move v3, v2

    .line 714
    :goto_63
    if-eqz v3, :cond_6d

    .line 715
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 716
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 717
    goto/16 :goto_1d8

    .line 718
    :cond_6d
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 720
    invoke-virtual {p0}, Landroid/hardware/weaver/V1_0/IWeaver$Stub;->ping()V

    .line 721
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 722
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 723
    goto/16 :goto_1d8

    .line 703
    :sswitch_7b
    and-int/lit8 p1, p4, 0x1

    if-eqz p1, :cond_80

    move v2, v3

    .line 704
    :cond_80
    if-eqz v2, :cond_1d8

    .line 705
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 706
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 707
    goto/16 :goto_1d8

    .line 690
    :sswitch_8a
    and-int/lit8 p1, p4, 0x1

    if-eqz p1, :cond_8f

    move v2, v3

    .line 691
    :cond_8f
    if-eq v2, v3, :cond_99

    .line 692
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 693
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 694
    goto/16 :goto_1d8

    .line 695
    :cond_99
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 697
    invoke-virtual {p0}, Landroid/hardware/weaver/V1_0/IWeaver$Stub;->setHALInstrumentation()V

    .line 698
    goto/16 :goto_1d8

    .line 651
    :sswitch_a1
    and-int/lit8 p1, p4, 0x1

    if-eqz p1, :cond_a6

    goto :goto_a7

    :cond_a6
    move v3, v2

    .line 652
    :goto_a7
    if-eqz v3, :cond_b1

    .line 653
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 654
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 655
    goto/16 :goto_1d8

    .line 656
    :cond_b1
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 658
    invoke-virtual {p0}, Landroid/hardware/weaver/V1_0/IWeaver$Stub;->getHashChain()Ljava/util/ArrayList;

    move-result-object p1

    .line 659
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 661
    new-instance p2, Landroid/os/HwBlob;

    const/16 p4, 0x10

    invoke-direct {p2, p4}, Landroid/os/HwBlob;-><init>(I)V

    .line 663
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p4

    .line 664
    const-wide/16 v0, 0x8

    invoke-virtual {p2, v0, v1, p4}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 665
    const-wide/16 v0, 0xc

    invoke-virtual {p2, v0, v1, v2}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 666
    new-instance v0, Landroid/os/HwBlob;

    mul-int/lit8 v1, p4, 0x20

    invoke-direct {v0, v1}, Landroid/os/HwBlob;-><init>(I)V

    .line 667
    nop

    :goto_d8
    if-ge v2, p4, :cond_f9

    .line 669
    mul-int/lit8 v1, v2, 0x20

    int-to-long v3, v1

    .line 670
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    .line 672
    if-eqz v1, :cond_f1

    array-length v5, v1

    const/16 v6, 0x20

    if-ne v5, v6, :cond_f1

    .line 676
    invoke-virtual {v0, v3, v4, v1}, Landroid/os/HwBlob;->putInt8Array(J[B)V

    .line 677
    nop

    .line 667
    add-int/lit8 v2, v2, 0x1

    goto :goto_d8

    .line 673
    :cond_f1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Array element is not of the expected length"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 680
    :cond_f9
    const-wide/16 v1, 0x0

    invoke-virtual {p2, v1, v2, v0}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    .line 682
    invoke-virtual {p3, p2}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    .line 684
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 685
    goto/16 :goto_1d8

    .line 635
    :sswitch_106
    and-int/lit8 p1, p4, 0x1

    if-eqz p1, :cond_10b

    goto :goto_10c

    :cond_10b
    move v3, v2

    .line 636
    :goto_10c
    if-eqz v3, :cond_116

    .line 637
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 638
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 639
    goto/16 :goto_1d8

    .line 640
    :cond_116
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 642
    invoke-virtual {p0}, Landroid/hardware/weaver/V1_0/IWeaver$Stub;->interfaceDescriptor()Ljava/lang/String;

    move-result-object p1

    .line 643
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 644
    invoke-virtual {p3, p1}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 645
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 646
    goto/16 :goto_1d8

    .line 618
    :sswitch_128
    and-int/lit8 p1, p4, 0x1

    if-eqz p1, :cond_12d

    goto :goto_12e

    :cond_12d
    move v3, v2

    .line 619
    :goto_12e
    if-eqz v3, :cond_138

    .line 620
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 621
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 622
    goto/16 :goto_1d8

    .line 623
    :cond_138
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 625
    invoke-virtual {p2}, Landroid/os/HwParcel;->readNativeHandle()Landroid/os/NativeHandle;

    move-result-object p1

    .line 626
    invoke-virtual {p2}, Landroid/os/HwParcel;->readStringVector()Ljava/util/ArrayList;

    move-result-object p2

    .line 627
    invoke-virtual {p0, p1, p2}, Landroid/hardware/weaver/V1_0/IWeaver$Stub;->debug(Landroid/os/NativeHandle;Ljava/util/ArrayList;)V

    .line 628
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 629
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 630
    goto/16 :goto_1d8

    .line 602
    :sswitch_14e
    and-int/lit8 p1, p4, 0x1

    if-eqz p1, :cond_153

    goto :goto_154

    :cond_153
    move v3, v2

    .line 603
    :goto_154
    if-eqz v3, :cond_15e

    .line 604
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 605
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 606
    goto/16 :goto_1d8

    .line 607
    :cond_15e
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 609
    invoke-virtual {p0}, Landroid/hardware/weaver/V1_0/IWeaver$Stub;->interfaceChain()Ljava/util/ArrayList;

    move-result-object p1

    .line 610
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 611
    invoke-virtual {p3, p1}, Landroid/os/HwParcel;->writeStringVector(Ljava/util/ArrayList;)V

    .line 612
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 613
    goto/16 :goto_1d8

    .line 580
    :cond_170
    and-int/lit8 p1, p4, 0x1

    if-eqz p1, :cond_175

    move v2, v3

    .line 581
    :cond_175
    if-eqz v2, :cond_17e

    .line 582
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 583
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 584
    goto :goto_1d8

    .line 585
    :cond_17e
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 587
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p1

    .line 588
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt8Vector()Ljava/util/ArrayList;

    move-result-object p2

    .line 589
    new-instance p4, Landroid/hardware/weaver/V1_0/IWeaver$Stub$2;

    invoke-direct {p4, p0, p3}, Landroid/hardware/weaver/V1_0/IWeaver$Stub$2;-><init>(Landroid/hardware/weaver/V1_0/IWeaver$Stub;Landroid/os/HwParcel;)V

    invoke-virtual {p0, p1, p2, p4}, Landroid/hardware/weaver/V1_0/IWeaver$Stub;->read(ILjava/util/ArrayList;Landroid/hardware/weaver/V1_0/IWeaver$readCallback;)V

    .line 597
    goto :goto_1d8

    .line 561
    :cond_192
    and-int/lit8 p1, p4, 0x1

    if-eqz p1, :cond_197

    goto :goto_198

    :cond_197
    move v3, v2

    .line 562
    :goto_198
    if-eqz v3, :cond_1a1

    .line 563
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 564
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 565
    goto :goto_1d8

    .line 566
    :cond_1a1
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 568
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p1

    .line 569
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt8Vector()Ljava/util/ArrayList;

    move-result-object p4

    .line 570
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt8Vector()Ljava/util/ArrayList;

    move-result-object p2

    .line 571
    invoke-virtual {p0, p1, p4, p2}, Landroid/hardware/weaver/V1_0/IWeaver$Stub;->write(ILjava/util/ArrayList;Ljava/util/ArrayList;)I

    move-result p1

    .line 572
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 573
    invoke-virtual {p3, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 574
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 575
    goto :goto_1d8

    .line 541
    :cond_1be
    and-int/lit8 p1, p4, 0x1

    if-eqz p1, :cond_1c3

    move v2, v3

    .line 542
    :cond_1c3
    if-eqz v2, :cond_1cc

    .line 543
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 544
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 545
    goto :goto_1d8

    .line 546
    :cond_1cc
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 548
    new-instance p1, Landroid/hardware/weaver/V1_0/IWeaver$Stub$1;

    invoke-direct {p1, p0, p3}, Landroid/hardware/weaver/V1_0/IWeaver$Stub$1;-><init>(Landroid/hardware/weaver/V1_0/IWeaver$Stub;Landroid/os/HwParcel;)V

    invoke-virtual {p0, p1}, Landroid/hardware/weaver/V1_0/IWeaver$Stub;->getConfig(Landroid/hardware/weaver/V1_0/IWeaver$getConfigCallback;)V

    .line 556
    nop

    .line 766
    :cond_1d8
    :goto_1d8
    return-void

    nop

    :sswitch_data_1da
    .sparse-switch
        0xf43484e -> :sswitch_14e
        0xf444247 -> :sswitch_128
        0xf445343 -> :sswitch_106
        0xf485348 -> :sswitch_a1
        0xf494e54 -> :sswitch_8a
        0xf4c5444 -> :sswitch_7b
        0xf504e47 -> :sswitch_5d
        0xf524546 -> :sswitch_3b
        0xf535953 -> :sswitch_24
        0xf555444 -> :sswitch_15
    .end sparse-switch
.end method

.method public final ping()V
    .registers 1

    .line 492
    return-void
.end method

.method public queryLocalInterface(Ljava/lang/String;)Landroid/os/IHwInterface;
    .registers 3

    .line 520
    const-string v0, "android.hardware.weaver@1.0::IWeaver"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_9

    .line 521
    return-object p0

    .line 523
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

    .line 527
    invoke-virtual {p0, p1}, Landroid/hardware/weaver/V1_0/IWeaver$Stub;->registerService(Ljava/lang/String;)V

    .line 528
    return-void
.end method

.method public final setHALInstrumentation()V
    .registers 1

    .line 482
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 532
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/hardware/weaver/V1_0/IWeaver$Stub;->interfaceDescriptor()Ljava/lang/String;

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

    .line 514
    const/4 p1, 0x1

    return p1
.end method
