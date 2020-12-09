.class public abstract Landroid/hardware/vibrator/V1_0/IVibrator$Stub;
.super Landroid/os/HwBinder;
.source "IVibrator.java"

# interfaces
.implements Landroid/hardware/vibrator/V1_0/IVibrator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/vibrator/V1_0/IVibrator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 467
    invoke-direct {p0}, Landroid/os/HwBinder;-><init>()V

    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IHwBinder;
    .registers 1

    .line 470
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

    .line 483
    return-void
.end method

.method public final getDebugInfo()Landroid/hidl/base/V1_0/DebugInfo;
    .registers 4

    .line 520
    new-instance v0, Landroid/hidl/base/V1_0/DebugInfo;

    invoke-direct {v0}, Landroid/hidl/base/V1_0/DebugInfo;-><init>()V

    .line 521
    invoke-static {}, Landroid/os/HidlSupport;->getPidIfSharable()I

    move-result v1

    iput v1, v0, Landroid/hidl/base/V1_0/DebugInfo;->pid:I

    .line 522
    const-wide/16 v1, 0x0

    iput-wide v1, v0, Landroid/hidl/base/V1_0/DebugInfo;->ptr:J

    .line 523
    const/4 v1, 0x0

    iput v1, v0, Landroid/hidl/base/V1_0/DebugInfo;->arch:I

    .line 524
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

    .line 495
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
        0x6t
        -0x16t
        0x64t
        -0x34t
        0x35t
        0x65t
        0x77t
        0x7ft
        0x3bt
        0x25t
        -0x62t
        0x40t
        0xft
        -0x6t
        0x71t
        0x0t
        -0x30t
        0x7ft
        0x38t
        0x27t
        -0x53t
        -0x6dt
        0x57t
        -0x50t
        -0x3bt
        -0x2dt
        -0x3at
        0x51t
        0x38t
        0x4et
        0x55t
        0x53t
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

    .line 475
    new-instance v0, Ljava/util/ArrayList;

    const-string v1, "android.hardware.vibrator@1.0::IVibrator"

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

    .line 489
    const-string v0, "android.hardware.vibrator@1.0::IVibrator"

    return-object v0
.end method

.method public final linkToDeath(Landroid/os/IHwBinder$DeathRecipient;J)Z
    .registers 4

    .line 508
    const/4 p1, 0x1

    return p1
.end method

.method public final notifySyspropsChanged()V
    .registers 1

    .line 530
    invoke-static {}, Landroid/os/HwBinder;->enableInstrumentation()V

    .line 532
    return-void
.end method

.method public onTransact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V
    .registers 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 560
    const-string v0, "android.hardware.vibrator@1.0::IVibrator"

    const/high16 v1, -0x80000000

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eq p1, v3, :cond_200

    const/4 v4, 0x2

    if-eq p1, v4, :cond_1e0

    const/4 v4, 0x3

    if-eq p1, v4, :cond_1c0

    const/4 v4, 0x4

    if-eq p1, v4, :cond_19a

    const/4 v4, 0x5

    if-eq p1, v4, :cond_176

    const-string v0, "android.hidl.base@1.0::IBase"

    sparse-switch p1, :sswitch_data_226

    goto/16 :goto_224

    .line 806
    :sswitch_1b
    and-int/lit8 p1, p4, 0x1

    if-eqz p1, :cond_20

    move v2, v3

    .line 807
    :cond_20
    if-eqz v2, :cond_224

    .line 808
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 809
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 810
    goto/16 :goto_224

    .line 793
    :sswitch_2a
    and-int/lit8 p1, p4, 0x1

    if-eqz p1, :cond_2f

    move v2, v3

    .line 794
    :cond_2f
    if-eq v2, v3, :cond_39

    .line 795
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 796
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 797
    goto/16 :goto_224

    .line 798
    :cond_39
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 800
    invoke-virtual {p0}, Landroid/hardware/vibrator/V1_0/IVibrator$Stub;->notifySyspropsChanged()V

    .line 801
    goto/16 :goto_224

    .line 777
    :sswitch_41
    and-int/lit8 p1, p4, 0x1

    if-eqz p1, :cond_46

    goto :goto_47

    :cond_46
    move v3, v2

    .line 778
    :goto_47
    if-eqz v3, :cond_51

    .line 779
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 780
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 781
    goto/16 :goto_224

    .line 782
    :cond_51
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 784
    invoke-virtual {p0}, Landroid/hardware/vibrator/V1_0/IVibrator$Stub;->getDebugInfo()Landroid/hidl/base/V1_0/DebugInfo;

    move-result-object p1

    .line 785
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 786
    invoke-virtual {p1, p3}, Landroid/hidl/base/V1_0/DebugInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 787
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 788
    goto/16 :goto_224

    .line 762
    :sswitch_63
    and-int/lit8 p1, p4, 0x1

    if-eqz p1, :cond_68

    goto :goto_69

    :cond_68
    move v3, v2

    .line 763
    :goto_69
    if-eqz v3, :cond_73

    .line 764
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 765
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 766
    goto/16 :goto_224

    .line 767
    :cond_73
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 769
    invoke-virtual {p0}, Landroid/hardware/vibrator/V1_0/IVibrator$Stub;->ping()V

    .line 770
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 771
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 772
    goto/16 :goto_224

    .line 752
    :sswitch_81
    and-int/lit8 p1, p4, 0x1

    if-eqz p1, :cond_86

    move v2, v3

    .line 753
    :cond_86
    if-eqz v2, :cond_224

    .line 754
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 755
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 756
    goto/16 :goto_224

    .line 739
    :sswitch_90
    and-int/lit8 p1, p4, 0x1

    if-eqz p1, :cond_95

    move v2, v3

    .line 740
    :cond_95
    if-eq v2, v3, :cond_9f

    .line 741
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 742
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 743
    goto/16 :goto_224

    .line 744
    :cond_9f
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 746
    invoke-virtual {p0}, Landroid/hardware/vibrator/V1_0/IVibrator$Stub;->setHALInstrumentation()V

    .line 747
    goto/16 :goto_224

    .line 700
    :sswitch_a7
    and-int/lit8 p1, p4, 0x1

    if-eqz p1, :cond_ac

    goto :goto_ad

    :cond_ac
    move v3, v2

    .line 701
    :goto_ad
    if-eqz v3, :cond_b7

    .line 702
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 703
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 704
    goto/16 :goto_224

    .line 705
    :cond_b7
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 707
    invoke-virtual {p0}, Landroid/hardware/vibrator/V1_0/IVibrator$Stub;->getHashChain()Ljava/util/ArrayList;

    move-result-object p1

    .line 708
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 710
    new-instance p2, Landroid/os/HwBlob;

    const/16 p4, 0x10

    invoke-direct {p2, p4}, Landroid/os/HwBlob;-><init>(I)V

    .line 712
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p4

    .line 713
    const-wide/16 v0, 0x8

    invoke-virtual {p2, v0, v1, p4}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 714
    const-wide/16 v0, 0xc

    invoke-virtual {p2, v0, v1, v2}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 715
    new-instance v0, Landroid/os/HwBlob;

    mul-int/lit8 v1, p4, 0x20

    invoke-direct {v0, v1}, Landroid/os/HwBlob;-><init>(I)V

    .line 716
    nop

    :goto_de
    if-ge v2, p4, :cond_ff

    .line 718
    mul-int/lit8 v1, v2, 0x20

    int-to-long v3, v1

    .line 719
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    .line 721
    if-eqz v1, :cond_f7

    array-length v5, v1

    const/16 v6, 0x20

    if-ne v5, v6, :cond_f7

    .line 725
    invoke-virtual {v0, v3, v4, v1}, Landroid/os/HwBlob;->putInt8Array(J[B)V

    .line 726
    nop

    .line 716
    add-int/lit8 v2, v2, 0x1

    goto :goto_de

    .line 722
    :cond_f7
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Array element is not of the expected length"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 729
    :cond_ff
    const-wide/16 v1, 0x0

    invoke-virtual {p2, v1, v2, v0}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    .line 731
    invoke-virtual {p3, p2}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    .line 733
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 734
    goto/16 :goto_224

    .line 684
    :sswitch_10c
    and-int/lit8 p1, p4, 0x1

    if-eqz p1, :cond_111

    goto :goto_112

    :cond_111
    move v3, v2

    .line 685
    :goto_112
    if-eqz v3, :cond_11c

    .line 686
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 687
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 688
    goto/16 :goto_224

    .line 689
    :cond_11c
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 691
    invoke-virtual {p0}, Landroid/hardware/vibrator/V1_0/IVibrator$Stub;->interfaceDescriptor()Ljava/lang/String;

    move-result-object p1

    .line 692
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 693
    invoke-virtual {p3, p1}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 694
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 695
    goto/16 :goto_224

    .line 667
    :sswitch_12e
    and-int/lit8 p1, p4, 0x1

    if-eqz p1, :cond_133

    goto :goto_134

    :cond_133
    move v3, v2

    .line 668
    :goto_134
    if-eqz v3, :cond_13e

    .line 669
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 670
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 671
    goto/16 :goto_224

    .line 672
    :cond_13e
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 674
    invoke-virtual {p2}, Landroid/os/HwParcel;->readNativeHandle()Landroid/os/NativeHandle;

    move-result-object p1

    .line 675
    invoke-virtual {p2}, Landroid/os/HwParcel;->readStringVector()Ljava/util/ArrayList;

    move-result-object p2

    .line 676
    invoke-virtual {p0, p1, p2}, Landroid/hardware/vibrator/V1_0/IVibrator$Stub;->debug(Landroid/os/NativeHandle;Ljava/util/ArrayList;)V

    .line 677
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 678
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 679
    goto/16 :goto_224

    .line 651
    :sswitch_154
    and-int/lit8 p1, p4, 0x1

    if-eqz p1, :cond_159

    goto :goto_15a

    :cond_159
    move v3, v2

    .line 652
    :goto_15a
    if-eqz v3, :cond_164

    .line 653
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 654
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 655
    goto/16 :goto_224

    .line 656
    :cond_164
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 658
    invoke-virtual {p0}, Landroid/hardware/vibrator/V1_0/IVibrator$Stub;->interfaceChain()Ljava/util/ArrayList;

    move-result-object p1

    .line 659
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 660
    invoke-virtual {p3, p1}, Landroid/os/HwParcel;->writeStringVector(Ljava/util/ArrayList;)V

    .line 661
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 662
    goto/16 :goto_224

    .line 629
    :cond_176
    and-int/lit8 p1, p4, 0x1

    if-eqz p1, :cond_17b

    move v2, v3

    .line 630
    :cond_17b
    if-eqz v2, :cond_185

    .line 631
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 632
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 633
    goto/16 :goto_224

    .line 634
    :cond_185
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 636
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p1

    .line 637
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt8()B

    move-result p2

    .line 638
    new-instance p4, Landroid/hardware/vibrator/V1_0/IVibrator$Stub$1;

    invoke-direct {p4, p0, p3}, Landroid/hardware/vibrator/V1_0/IVibrator$Stub$1;-><init>(Landroid/hardware/vibrator/V1_0/IVibrator$Stub;Landroid/os/HwParcel;)V

    invoke-virtual {p0, p1, p2, p4}, Landroid/hardware/vibrator/V1_0/IVibrator$Stub;->perform(IBLandroid/hardware/vibrator/V1_0/IVibrator$performCallback;)V

    .line 646
    goto/16 :goto_224

    .line 612
    :cond_19a
    and-int/lit8 p1, p4, 0x1

    if-eqz p1, :cond_19f

    goto :goto_1a0

    :cond_19f
    move v3, v2

    .line 613
    :goto_1a0
    if-eqz v3, :cond_1aa

    .line 614
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 615
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 616
    goto/16 :goto_224

    .line 617
    :cond_1aa
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 619
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt8()B

    move-result p1

    .line 620
    invoke-virtual {p0, p1}, Landroid/hardware/vibrator/V1_0/IVibrator$Stub;->setAmplitude(B)I

    move-result p1

    .line 621
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 622
    invoke-virtual {p3, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 623
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 624
    goto/16 :goto_224

    .line 596
    :cond_1c0
    and-int/lit8 p1, p4, 0x1

    if-eqz p1, :cond_1c5

    goto :goto_1c6

    :cond_1c5
    move v3, v2

    .line 597
    :goto_1c6
    if-eqz v3, :cond_1cf

    .line 598
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 599
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 600
    goto :goto_224

    .line 601
    :cond_1cf
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 603
    invoke-virtual {p0}, Landroid/hardware/vibrator/V1_0/IVibrator$Stub;->supportsAmplitudeControl()Z

    move-result p1

    .line 604
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 605
    invoke-virtual {p3, p1}, Landroid/os/HwParcel;->writeBool(Z)V

    .line 606
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 607
    goto :goto_224

    .line 580
    :cond_1e0
    and-int/lit8 p1, p4, 0x1

    if-eqz p1, :cond_1e5

    goto :goto_1e6

    :cond_1e5
    move v3, v2

    .line 581
    :goto_1e6
    if-eqz v3, :cond_1ef

    .line 582
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 583
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 584
    goto :goto_224

    .line 585
    :cond_1ef
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 587
    invoke-virtual {p0}, Landroid/hardware/vibrator/V1_0/IVibrator$Stub;->off()I

    move-result p1

    .line 588
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 589
    invoke-virtual {p3, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 590
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 591
    goto :goto_224

    .line 563
    :cond_200
    and-int/lit8 p1, p4, 0x1

    if-eqz p1, :cond_205

    goto :goto_206

    :cond_205
    move v3, v2

    .line 564
    :goto_206
    if-eqz v3, :cond_20f

    .line 565
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 566
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 567
    goto :goto_224

    .line 568
    :cond_20f
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 570
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p1

    .line 571
    invoke-virtual {p0, p1}, Landroid/hardware/vibrator/V1_0/IVibrator$Stub;->on(I)I

    move-result p1

    .line 572
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 573
    invoke-virtual {p3, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 574
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 575
    nop

    .line 815
    :cond_224
    :goto_224
    return-void

    nop

    :sswitch_data_226
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

    .line 514
    return-void
.end method

.method public queryLocalInterface(Ljava/lang/String;)Landroid/os/IHwInterface;
    .registers 3

    .line 542
    const-string v0, "android.hardware.vibrator@1.0::IVibrator"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_9

    .line 543
    return-object p0

    .line 545
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

    .line 549
    invoke-virtual {p0, p1}, Landroid/hardware/vibrator/V1_0/IVibrator$Stub;->registerService(Ljava/lang/String;)V

    .line 550
    return-void
.end method

.method public final setHALInstrumentation()V
    .registers 1

    .line 504
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 554
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/hardware/vibrator/V1_0/IVibrator$Stub;->interfaceDescriptor()Ljava/lang/String;

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

    .line 536
    const/4 p1, 0x1

    return p1
.end method
