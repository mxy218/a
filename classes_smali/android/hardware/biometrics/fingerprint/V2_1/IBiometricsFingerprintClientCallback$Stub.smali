.class public abstract Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprintClientCallback$Stub;
.super Landroid/os/HwBinder;
.source "IBiometricsFingerprintClientCallback.java"

# interfaces
.implements Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprintClientCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprintClientCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 474
    invoke-direct {p0}, Landroid/os/HwBinder;-><init>()V

    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IHwBinder;
    .registers 1

    .line 477
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

    .line 490
    return-void
.end method

.method public final getDebugInfo()Landroid/hidl/base/V1_0/DebugInfo;
    .registers 4

    .line 527
    new-instance v0, Landroid/hidl/base/V1_0/DebugInfo;

    invoke-direct {v0}, Landroid/hidl/base/V1_0/DebugInfo;-><init>()V

    .line 528
    invoke-static {}, Landroid/os/HidlSupport;->getPidIfSharable()I

    move-result v1

    iput v1, v0, Landroid/hidl/base/V1_0/DebugInfo;->pid:I

    .line 529
    const-wide/16 v1, 0x0

    iput-wide v1, v0, Landroid/hidl/base/V1_0/DebugInfo;->ptr:J

    .line 530
    const/4 v1, 0x0

    iput v1, v0, Landroid/hidl/base/V1_0/DebugInfo;->arch:I

    .line 531
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

    .line 502
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
        -0x56t
        -0x45t
        0x5ct
        0x3ct
        0x58t
        0x55t
        -0x6et
        -0x29t
        0x1et
        -0x1bt
        0x7bt
        0x77t
        0x29t
        -0x74t
        0x14t
        -0x67t
        0x3dt
        0x77t
        -0x6ft
        0x4dt
        -0x22t
        -0x56t
        0x64t
        -0x4et
        -0x3bt
        0x10t
        -0x66t
        0x60t
        0x2bt
        0x2t
        -0x16t
        0x47t
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

    .line 482
    new-instance v0, Ljava/util/ArrayList;

    const-string v1, "android.hardware.biometrics.fingerprint@2.1::IBiometricsFingerprintClientCallback"

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

    .line 496
    const-string v0, "android.hardware.biometrics.fingerprint@2.1::IBiometricsFingerprintClientCallback"

    return-object v0
.end method

.method public final linkToDeath(Landroid/os/IHwBinder$DeathRecipient;J)Z
    .registers 4

    .line 515
    const/4 p1, 0x1

    return p1
.end method

.method public final notifySyspropsChanged()V
    .registers 1

    .line 537
    invoke-static {}, Landroid/os/HwBinder;->enableInstrumentation()V

    .line 539
    return-void
.end method

.method public onTransact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V
    .registers 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 567
    const-string v0, "android.hardware.biometrics.fingerprint@2.1::IBiometricsFingerprintClientCallback"

    const/high16 v1, -0x80000000

    const/4 v2, 0x0

    const/4 v3, 0x1

    packed-switch p1, :pswitch_data_24c

    const-string v0, "android.hidl.base@1.0::IBase"

    sparse-switch p1, :sswitch_data_25c

    goto/16 :goto_24b

    .line 825
    :sswitch_10
    and-int/lit8 p1, p4, 0x1

    if-eqz p1, :cond_15

    move v2, v3

    .line 826
    :cond_15
    if-eqz v2, :cond_24b

    .line 827
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 828
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 829
    goto/16 :goto_24b

    .line 812
    :sswitch_1f
    and-int/lit8 p1, p4, 0x1

    if-eqz p1, :cond_24

    move v2, v3

    .line 813
    :cond_24
    if-eq v2, v3, :cond_2e

    .line 814
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 815
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 816
    goto/16 :goto_24b

    .line 817
    :cond_2e
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 819
    invoke-virtual {p0}, Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprintClientCallback$Stub;->notifySyspropsChanged()V

    .line 820
    goto/16 :goto_24b

    .line 796
    :sswitch_36
    and-int/lit8 p1, p4, 0x1

    if-eqz p1, :cond_3b

    goto :goto_3c

    :cond_3b
    move v3, v2

    .line 797
    :goto_3c
    if-eqz v3, :cond_46

    .line 798
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 799
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 800
    goto/16 :goto_24b

    .line 801
    :cond_46
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 803
    invoke-virtual {p0}, Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprintClientCallback$Stub;->getDebugInfo()Landroid/hidl/base/V1_0/DebugInfo;

    move-result-object p1

    .line 804
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 805
    invoke-virtual {p1, p3}, Landroid/hidl/base/V1_0/DebugInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 806
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 807
    goto/16 :goto_24b

    .line 781
    :sswitch_58
    and-int/lit8 p1, p4, 0x1

    if-eqz p1, :cond_5d

    goto :goto_5e

    :cond_5d
    move v3, v2

    .line 782
    :goto_5e
    if-eqz v3, :cond_68

    .line 783
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 784
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 785
    goto/16 :goto_24b

    .line 786
    :cond_68
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 788
    invoke-virtual {p0}, Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprintClientCallback$Stub;->ping()V

    .line 789
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 790
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 791
    goto/16 :goto_24b

    .line 771
    :sswitch_76
    and-int/lit8 p1, p4, 0x1

    if-eqz p1, :cond_7b

    move v2, v3

    .line 772
    :cond_7b
    if-eqz v2, :cond_24b

    .line 773
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 774
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 775
    goto/16 :goto_24b

    .line 758
    :sswitch_85
    and-int/lit8 p1, p4, 0x1

    if-eqz p1, :cond_8a

    move v2, v3

    .line 759
    :cond_8a
    if-eq v2, v3, :cond_94

    .line 760
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 761
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 762
    goto/16 :goto_24b

    .line 763
    :cond_94
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 765
    invoke-virtual {p0}, Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprintClientCallback$Stub;->setHALInstrumentation()V

    .line 766
    goto/16 :goto_24b

    .line 719
    :sswitch_9c
    and-int/lit8 p1, p4, 0x1

    if-eqz p1, :cond_a1

    goto :goto_a2

    :cond_a1
    move v3, v2

    .line 720
    :goto_a2
    if-eqz v3, :cond_ac

    .line 721
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 722
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 723
    goto/16 :goto_24b

    .line 724
    :cond_ac
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 726
    invoke-virtual {p0}, Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprintClientCallback$Stub;->getHashChain()Ljava/util/ArrayList;

    move-result-object p1

    .line 727
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 729
    new-instance p2, Landroid/os/HwBlob;

    const/16 p4, 0x10

    invoke-direct {p2, p4}, Landroid/os/HwBlob;-><init>(I)V

    .line 731
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p4

    .line 732
    const-wide/16 v0, 0x8

    invoke-virtual {p2, v0, v1, p4}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 733
    const-wide/16 v0, 0xc

    invoke-virtual {p2, v0, v1, v2}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 734
    new-instance v0, Landroid/os/HwBlob;

    mul-int/lit8 v1, p4, 0x20

    invoke-direct {v0, v1}, Landroid/os/HwBlob;-><init>(I)V

    .line 735
    nop

    :goto_d3
    if-ge v2, p4, :cond_f4

    .line 737
    mul-int/lit8 v1, v2, 0x20

    int-to-long v3, v1

    .line 738
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    .line 740
    if-eqz v1, :cond_ec

    array-length v5, v1

    const/16 v6, 0x20

    if-ne v5, v6, :cond_ec

    .line 744
    invoke-virtual {v0, v3, v4, v1}, Landroid/os/HwBlob;->putInt8Array(J[B)V

    .line 745
    nop

    .line 735
    add-int/lit8 v2, v2, 0x1

    goto :goto_d3

    .line 741
    :cond_ec
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Array element is not of the expected length"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 748
    :cond_f4
    const-wide/16 v1, 0x0

    invoke-virtual {p2, v1, v2, v0}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    .line 750
    invoke-virtual {p3, p2}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    .line 752
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 753
    goto/16 :goto_24b

    .line 703
    :sswitch_101
    and-int/lit8 p1, p4, 0x1

    if-eqz p1, :cond_106

    goto :goto_107

    :cond_106
    move v3, v2

    .line 704
    :goto_107
    if-eqz v3, :cond_111

    .line 705
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 706
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 707
    goto/16 :goto_24b

    .line 708
    :cond_111
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 710
    invoke-virtual {p0}, Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprintClientCallback$Stub;->interfaceDescriptor()Ljava/lang/String;

    move-result-object p1

    .line 711
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 712
    invoke-virtual {p3, p1}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 713
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 714
    goto/16 :goto_24b

    .line 686
    :sswitch_123
    and-int/lit8 p1, p4, 0x1

    if-eqz p1, :cond_128

    goto :goto_129

    :cond_128
    move v3, v2

    .line 687
    :goto_129
    if-eqz v3, :cond_133

    .line 688
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 689
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 690
    goto/16 :goto_24b

    .line 691
    :cond_133
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 693
    invoke-virtual {p2}, Landroid/os/HwParcel;->readNativeHandle()Landroid/os/NativeHandle;

    move-result-object p1

    .line 694
    invoke-virtual {p2}, Landroid/os/HwParcel;->readStringVector()Ljava/util/ArrayList;

    move-result-object p2

    .line 695
    invoke-virtual {p0, p1, p2}, Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprintClientCallback$Stub;->debug(Landroid/os/NativeHandle;Ljava/util/ArrayList;)V

    .line 696
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 697
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 698
    goto/16 :goto_24b

    .line 670
    :sswitch_149
    and-int/lit8 p1, p4, 0x1

    if-eqz p1, :cond_14e

    goto :goto_14f

    :cond_14e
    move v3, v2

    .line 671
    :goto_14f
    if-eqz v3, :cond_159

    .line 672
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 673
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 674
    goto/16 :goto_24b

    .line 675
    :cond_159
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 677
    invoke-virtual {p0}, Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprintClientCallback$Stub;->interfaceChain()Ljava/util/ArrayList;

    move-result-object p1

    .line 678
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 679
    invoke-virtual {p3, p1}, Landroid/os/HwParcel;->writeStringVector(Ljava/util/ArrayList;)V

    .line 680
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 681
    goto/16 :goto_24b

    .line 653
    :pswitch_16b  #0x6
    and-int/lit8 p1, p4, 0x1

    if-eqz p1, :cond_170

    move v2, v3

    .line 654
    :cond_170
    if-eq v2, v3, :cond_17a

    .line 655
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 656
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 657
    goto/16 :goto_24b

    .line 658
    :cond_17a
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 660
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt64()J

    move-result-wide v5

    .line 661
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v7

    .line 662
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v8

    .line 663
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v9

    .line 664
    move-object v4, p0

    invoke-virtual/range {v4 .. v9}, Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprintClientCallback$Stub;->onEnumerate(JIII)V

    .line 665
    goto/16 :goto_24b

    .line 636
    :pswitch_193  #0x5
    and-int/lit8 p1, p4, 0x1

    if-eqz p1, :cond_198

    move v2, v3

    .line 637
    :cond_198
    if-eq v2, v3, :cond_1a2

    .line 638
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 639
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 640
    goto/16 :goto_24b

    .line 641
    :cond_1a2
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 643
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt64()J

    move-result-wide v5

    .line 644
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v7

    .line 645
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v8

    .line 646
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v9

    .line 647
    move-object v4, p0

    invoke-virtual/range {v4 .. v9}, Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprintClientCallback$Stub;->onRemoved(JIII)V

    .line 648
    goto/16 :goto_24b

    .line 620
    :pswitch_1bb  #0x4
    and-int/lit8 p1, p4, 0x1

    if-eqz p1, :cond_1c0

    move v2, v3

    .line 621
    :cond_1c0
    if-eq v2, v3, :cond_1ca

    .line 622
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 623
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 624
    goto/16 :goto_24b

    .line 625
    :cond_1ca
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 627
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt64()J

    move-result-wide p3

    .line 628
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p1

    .line 629
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p2

    .line 630
    invoke-virtual {p0, p3, p4, p1, p2}, Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprintClientCallback$Stub;->onError(JII)V

    .line 631
    goto/16 :goto_24b

    .line 603
    :pswitch_1de  #0x3
    and-int/lit8 p1, p4, 0x1

    if-eqz p1, :cond_1e3

    move v2, v3

    .line 604
    :cond_1e3
    if-eq v2, v3, :cond_1ec

    .line 605
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 606
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 607
    goto :goto_24b

    .line 608
    :cond_1ec
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 610
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt64()J

    move-result-wide v5

    .line 611
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v7

    .line 612
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v8

    .line 613
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt8Vector()Ljava/util/ArrayList;

    move-result-object v9

    .line 614
    move-object v4, p0

    invoke-virtual/range {v4 .. v9}, Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprintClientCallback$Stub;->onAuthenticated(JIILjava/util/ArrayList;)V

    .line 615
    goto :goto_24b

    .line 587
    :pswitch_204  #0x2
    and-int/lit8 p1, p4, 0x1

    if-eqz p1, :cond_209

    move v2, v3

    .line 588
    :cond_209
    if-eq v2, v3, :cond_212

    .line 589
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 590
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 591
    goto :goto_24b

    .line 592
    :cond_212
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 594
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt64()J

    move-result-wide p3

    .line 595
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p1

    .line 596
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p2

    .line 597
    invoke-virtual {p0, p3, p4, p1, p2}, Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprintClientCallback$Stub;->onAcquired(JII)V

    .line 598
    goto :goto_24b

    .line 570
    :pswitch_225  #0x1
    and-int/lit8 p1, p4, 0x1

    if-eqz p1, :cond_22a

    move v2, v3

    .line 571
    :cond_22a
    if-eq v2, v3, :cond_233

    .line 572
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 573
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 574
    goto :goto_24b

    .line 575
    :cond_233
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 577
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt64()J

    move-result-wide v5

    .line 578
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v7

    .line 579
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v8

    .line 580
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v9

    .line 581
    move-object v4, p0

    invoke-virtual/range {v4 .. v9}, Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprintClientCallback$Stub;->onEnrollResult(JIII)V

    .line 582
    nop

    .line 834
    :cond_24b
    :goto_24b
    return-void

    :pswitch_data_24c
    .packed-switch 0x1
        :pswitch_225  #00000001
        :pswitch_204  #00000002
        :pswitch_1de  #00000003
        :pswitch_1bb  #00000004
        :pswitch_193  #00000005
        :pswitch_16b  #00000006
    .end packed-switch

    :sswitch_data_25c
    .sparse-switch
        0xf43484e -> :sswitch_149
        0xf444247 -> :sswitch_123
        0xf445343 -> :sswitch_101
        0xf485348 -> :sswitch_9c
        0xf494e54 -> :sswitch_85
        0xf4c5444 -> :sswitch_76
        0xf504e47 -> :sswitch_58
        0xf524546 -> :sswitch_36
        0xf535953 -> :sswitch_1f
        0xf555444 -> :sswitch_10
    .end sparse-switch
.end method

.method public final ping()V
    .registers 1

    .line 521
    return-void
.end method

.method public queryLocalInterface(Ljava/lang/String;)Landroid/os/IHwInterface;
    .registers 3

    .line 549
    const-string v0, "android.hardware.biometrics.fingerprint@2.1::IBiometricsFingerprintClientCallback"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_9

    .line 550
    return-object p0

    .line 552
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

    .line 556
    invoke-virtual {p0, p1}, Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprintClientCallback$Stub;->registerService(Ljava/lang/String;)V

    .line 557
    return-void
.end method

.method public final setHALInstrumentation()V
    .registers 1

    .line 511
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 561
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprintClientCallback$Stub;->interfaceDescriptor()Ljava/lang/String;

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

    .line 543
    const/4 p1, 0x1

    return p1
.end method
