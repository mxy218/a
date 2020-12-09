.class public abstract Landroid/hardware/biometrics/face/V1_0/IBiometricsFaceClientCallback$Stub;
.super Landroid/os/HwBinder;
.source "IBiometricsFaceClientCallback.java"

# interfaces
.implements Landroid/hardware/biometrics/face/V1_0/IBiometricsFaceClientCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/biometrics/face/V1_0/IBiometricsFaceClientCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 539
    invoke-direct {p0}, Landroid/os/HwBinder;-><init>()V

    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IHwBinder;
    .registers 1

    .line 542
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

    .line 555
    return-void
.end method

.method public final getDebugInfo()Landroid/hidl/base/V1_0/DebugInfo;
    .registers 4

    .line 592
    new-instance v0, Landroid/hidl/base/V1_0/DebugInfo;

    invoke-direct {v0}, Landroid/hidl/base/V1_0/DebugInfo;-><init>()V

    .line 593
    invoke-static {}, Landroid/os/HidlSupport;->getPidIfSharable()I

    move-result v1

    iput v1, v0, Landroid/hidl/base/V1_0/DebugInfo;->pid:I

    .line 594
    const-wide/16 v1, 0x0

    iput-wide v1, v0, Landroid/hidl/base/V1_0/DebugInfo;->ptr:J

    .line 595
    const/4 v1, 0x0

    iput v1, v0, Landroid/hidl/base/V1_0/DebugInfo;->arch:I

    .line 596
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

    .line 567
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
        -0x4at
        -0x1bt
        0x5dt
        0x77t
        -0x6bt
        -0x45t
        -0x51t
        -0x30t
        0x11t
        -0x5t
        -0x6bt
        -0x5dt
        -0x4at
        -0x2dt
        -0x6bt
        0x4bt
        -0xat
        0x6ct
        0x34t
        -0x62t
        0x14t
        -0x31t
        0x10t
        0x7ft
        0x3bt
        0x72t
        0x3t
        0x2ct
        -0x1dt
        -0x32t
        -0x4ct
        0x48t
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

    .line 547
    new-instance v0, Ljava/util/ArrayList;

    const-string v1, "android.hardware.biometrics.face@1.0::IBiometricsFaceClientCallback"

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

    .line 561
    const-string v0, "android.hardware.biometrics.face@1.0::IBiometricsFaceClientCallback"

    return-object v0
.end method

.method public final linkToDeath(Landroid/os/IHwBinder$DeathRecipient;J)Z
    .registers 4

    .line 580
    const/4 p1, 0x1

    return p1
.end method

.method public final notifySyspropsChanged()V
    .registers 1

    .line 602
    invoke-static {}, Landroid/os/HwBinder;->enableInstrumentation()V

    .line 604
    return-void
.end method

.method public onTransact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V
    .registers 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 632
    const-string v0, "android.hardware.biometrics.face@1.0::IBiometricsFaceClientCallback"

    const/high16 v1, -0x80000000

    const/4 v2, 0x0

    const/4 v3, 0x1

    packed-switch p1, :pswitch_data_268

    const-string v0, "android.hidl.base@1.0::IBase"

    sparse-switch p1, :sswitch_data_27a

    goto/16 :goto_266

    .line 904
    :sswitch_10
    and-int/lit8 p1, p4, 0x1

    if-eqz p1, :cond_15

    move v2, v3

    .line 905
    :cond_15
    if-eqz v2, :cond_266

    .line 906
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 907
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 908
    goto/16 :goto_266

    .line 891
    :sswitch_1f
    and-int/lit8 p1, p4, 0x1

    if-eqz p1, :cond_24

    move v2, v3

    .line 892
    :cond_24
    if-eq v2, v3, :cond_2e

    .line 893
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 894
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 895
    goto/16 :goto_266

    .line 896
    :cond_2e
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 898
    invoke-virtual {p0}, Landroid/hardware/biometrics/face/V1_0/IBiometricsFaceClientCallback$Stub;->notifySyspropsChanged()V

    .line 899
    goto/16 :goto_266

    .line 875
    :sswitch_36
    and-int/lit8 p1, p4, 0x1

    if-eqz p1, :cond_3b

    goto :goto_3c

    :cond_3b
    move v3, v2

    .line 876
    :goto_3c
    if-eqz v3, :cond_46

    .line 877
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 878
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 879
    goto/16 :goto_266

    .line 880
    :cond_46
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 882
    invoke-virtual {p0}, Landroid/hardware/biometrics/face/V1_0/IBiometricsFaceClientCallback$Stub;->getDebugInfo()Landroid/hidl/base/V1_0/DebugInfo;

    move-result-object p1

    .line 883
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 884
    invoke-virtual {p1, p3}, Landroid/hidl/base/V1_0/DebugInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 885
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 886
    goto/16 :goto_266

    .line 860
    :sswitch_58
    and-int/lit8 p1, p4, 0x1

    if-eqz p1, :cond_5d

    goto :goto_5e

    :cond_5d
    move v3, v2

    .line 861
    :goto_5e
    if-eqz v3, :cond_68

    .line 862
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 863
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 864
    goto/16 :goto_266

    .line 865
    :cond_68
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 867
    invoke-virtual {p0}, Landroid/hardware/biometrics/face/V1_0/IBiometricsFaceClientCallback$Stub;->ping()V

    .line 868
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 869
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 870
    goto/16 :goto_266

    .line 850
    :sswitch_76
    and-int/lit8 p1, p4, 0x1

    if-eqz p1, :cond_7b

    move v2, v3

    .line 851
    :cond_7b
    if-eqz v2, :cond_266

    .line 852
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 853
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 854
    goto/16 :goto_266

    .line 837
    :sswitch_85
    and-int/lit8 p1, p4, 0x1

    if-eqz p1, :cond_8a

    move v2, v3

    .line 838
    :cond_8a
    if-eq v2, v3, :cond_94

    .line 839
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 840
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 841
    goto/16 :goto_266

    .line 842
    :cond_94
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 844
    invoke-virtual {p0}, Landroid/hardware/biometrics/face/V1_0/IBiometricsFaceClientCallback$Stub;->setHALInstrumentation()V

    .line 845
    goto/16 :goto_266

    .line 798
    :sswitch_9c
    and-int/lit8 p1, p4, 0x1

    if-eqz p1, :cond_a1

    goto :goto_a2

    :cond_a1
    move v3, v2

    .line 799
    :goto_a2
    if-eqz v3, :cond_ac

    .line 800
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 801
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 802
    goto/16 :goto_266

    .line 803
    :cond_ac
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 805
    invoke-virtual {p0}, Landroid/hardware/biometrics/face/V1_0/IBiometricsFaceClientCallback$Stub;->getHashChain()Ljava/util/ArrayList;

    move-result-object p1

    .line 806
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 808
    new-instance p2, Landroid/os/HwBlob;

    const/16 p4, 0x10

    invoke-direct {p2, p4}, Landroid/os/HwBlob;-><init>(I)V

    .line 810
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p4

    .line 811
    const-wide/16 v0, 0x8

    invoke-virtual {p2, v0, v1, p4}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 812
    const-wide/16 v0, 0xc

    invoke-virtual {p2, v0, v1, v2}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 813
    new-instance v0, Landroid/os/HwBlob;

    mul-int/lit8 v1, p4, 0x20

    invoke-direct {v0, v1}, Landroid/os/HwBlob;-><init>(I)V

    .line 814
    nop

    :goto_d3
    if-ge v2, p4, :cond_f4

    .line 816
    mul-int/lit8 v1, v2, 0x20

    int-to-long v3, v1

    .line 817
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    .line 819
    if-eqz v1, :cond_ec

    array-length v5, v1

    const/16 v6, 0x20

    if-ne v5, v6, :cond_ec

    .line 823
    invoke-virtual {v0, v3, v4, v1}, Landroid/os/HwBlob;->putInt8Array(J[B)V

    .line 824
    nop

    .line 814
    add-int/lit8 v2, v2, 0x1

    goto :goto_d3

    .line 820
    :cond_ec
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Array element is not of the expected length"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 827
    :cond_f4
    const-wide/16 v1, 0x0

    invoke-virtual {p2, v1, v2, v0}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    .line 829
    invoke-virtual {p3, p2}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    .line 831
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 832
    goto/16 :goto_266

    .line 782
    :sswitch_101
    and-int/lit8 p1, p4, 0x1

    if-eqz p1, :cond_106

    goto :goto_107

    :cond_106
    move v3, v2

    .line 783
    :goto_107
    if-eqz v3, :cond_111

    .line 784
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 785
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 786
    goto/16 :goto_266

    .line 787
    :cond_111
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 789
    invoke-virtual {p0}, Landroid/hardware/biometrics/face/V1_0/IBiometricsFaceClientCallback$Stub;->interfaceDescriptor()Ljava/lang/String;

    move-result-object p1

    .line 790
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 791
    invoke-virtual {p3, p1}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 792
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 793
    goto/16 :goto_266

    .line 765
    :sswitch_123
    and-int/lit8 p1, p4, 0x1

    if-eqz p1, :cond_128

    goto :goto_129

    :cond_128
    move v3, v2

    .line 766
    :goto_129
    if-eqz v3, :cond_133

    .line 767
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 768
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 769
    goto/16 :goto_266

    .line 770
    :cond_133
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 772
    invoke-virtual {p2}, Landroid/os/HwParcel;->readNativeHandle()Landroid/os/NativeHandle;

    move-result-object p1

    .line 773
    invoke-virtual {p2}, Landroid/os/HwParcel;->readStringVector()Ljava/util/ArrayList;

    move-result-object p2

    .line 774
    invoke-virtual {p0, p1, p2}, Landroid/hardware/biometrics/face/V1_0/IBiometricsFaceClientCallback$Stub;->debug(Landroid/os/NativeHandle;Ljava/util/ArrayList;)V

    .line 775
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 776
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 777
    goto/16 :goto_266

    .line 749
    :sswitch_149
    and-int/lit8 p1, p4, 0x1

    if-eqz p1, :cond_14e

    goto :goto_14f

    :cond_14e
    move v3, v2

    .line 750
    :goto_14f
    if-eqz v3, :cond_159

    .line 751
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 752
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 753
    goto/16 :goto_266

    .line 754
    :cond_159
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 756
    invoke-virtual {p0}, Landroid/hardware/biometrics/face/V1_0/IBiometricsFaceClientCallback$Stub;->interfaceChain()Ljava/util/ArrayList;

    move-result-object p1

    .line 757
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 758
    invoke-virtual {p3, p1}, Landroid/os/HwParcel;->writeStringVector(Ljava/util/ArrayList;)V

    .line 759
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 760
    goto/16 :goto_266

    .line 735
    :pswitch_16b  #0x7
    and-int/lit8 p1, p4, 0x1

    if-eqz p1, :cond_170

    move v2, v3

    .line 736
    :cond_170
    if-eq v2, v3, :cond_17a

    .line 737
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 738
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 739
    goto/16 :goto_266

    .line 740
    :cond_17a
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 742
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt64()J

    move-result-wide p1

    .line 743
    invoke-virtual {p0, p1, p2}, Landroid/hardware/biometrics/face/V1_0/IBiometricsFaceClientCallback$Stub;->onLockoutChanged(J)V

    .line 744
    goto/16 :goto_266

    .line 719
    :pswitch_186  #0x6
    and-int/lit8 p1, p4, 0x1

    if-eqz p1, :cond_18b

    move v2, v3

    .line 720
    :cond_18b
    if-eq v2, v3, :cond_195

    .line 721
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 722
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 723
    goto/16 :goto_266

    .line 724
    :cond_195
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 726
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt64()J

    move-result-wide p3

    .line 727
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32Vector()Ljava/util/ArrayList;

    move-result-object p1

    .line 728
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p2

    .line 729
    invoke-virtual {p0, p3, p4, p1, p2}, Landroid/hardware/biometrics/face/V1_0/IBiometricsFaceClientCallback$Stub;->onEnumerate(JLjava/util/ArrayList;I)V

    .line 730
    goto/16 :goto_266

    .line 703
    :pswitch_1a9  #0x5
    and-int/lit8 p1, p4, 0x1

    if-eqz p1, :cond_1ae

    move v2, v3

    .line 704
    :cond_1ae
    if-eq v2, v3, :cond_1b8

    .line 705
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 706
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 707
    goto/16 :goto_266

    .line 708
    :cond_1b8
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 710
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt64()J

    move-result-wide p3

    .line 711
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32Vector()Ljava/util/ArrayList;

    move-result-object p1

    .line 712
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p2

    .line 713
    invoke-virtual {p0, p3, p4, p1, p2}, Landroid/hardware/biometrics/face/V1_0/IBiometricsFaceClientCallback$Stub;->onRemoved(JLjava/util/ArrayList;I)V

    .line 714
    goto/16 :goto_266

    .line 686
    :pswitch_1cc  #0x4
    and-int/lit8 p1, p4, 0x1

    if-eqz p1, :cond_1d1

    move v2, v3

    .line 687
    :cond_1d1
    if-eq v2, v3, :cond_1db

    .line 688
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 689
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 690
    goto/16 :goto_266

    .line 691
    :cond_1db
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 693
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt64()J

    move-result-wide v5

    .line 694
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v7

    .line 695
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v8

    .line 696
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v9

    .line 697
    move-object v4, p0

    invoke-virtual/range {v4 .. v9}, Landroid/hardware/biometrics/face/V1_0/IBiometricsFaceClientCallback$Stub;->onError(JIII)V

    .line 698
    goto/16 :goto_266

    .line 669
    :pswitch_1f4  #0x3
    and-int/lit8 p1, p4, 0x1

    if-eqz p1, :cond_1f9

    move v2, v3

    .line 670
    :cond_1f9
    if-eq v2, v3, :cond_202

    .line 671
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 672
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 673
    goto :goto_266

    .line 674
    :cond_202
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 676
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt64()J

    move-result-wide v5

    .line 677
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v7

    .line 678
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v8

    .line 679
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v9

    .line 680
    move-object v4, p0

    invoke-virtual/range {v4 .. v9}, Landroid/hardware/biometrics/face/V1_0/IBiometricsFaceClientCallback$Stub;->onAcquired(JIII)V

    .line 681
    goto :goto_266

    .line 652
    :pswitch_21a  #0x2
    and-int/lit8 p1, p4, 0x1

    if-eqz p1, :cond_21f

    move v2, v3

    .line 653
    :cond_21f
    if-eq v2, v3, :cond_228

    .line 654
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 655
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 656
    goto :goto_266

    .line 657
    :cond_228
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 659
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt64()J

    move-result-wide v5

    .line 660
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v7

    .line 661
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v8

    .line 662
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt8Vector()Ljava/util/ArrayList;

    move-result-object v9

    .line 663
    move-object v4, p0

    invoke-virtual/range {v4 .. v9}, Landroid/hardware/biometrics/face/V1_0/IBiometricsFaceClientCallback$Stub;->onAuthenticated(JIILjava/util/ArrayList;)V

    .line 664
    goto :goto_266

    .line 635
    :pswitch_240  #0x1
    and-int/lit8 p1, p4, 0x1

    if-eqz p1, :cond_245

    move v2, v3

    .line 636
    :cond_245
    if-eq v2, v3, :cond_24e

    .line 637
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 638
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 639
    goto :goto_266

    .line 640
    :cond_24e
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 642
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt64()J

    move-result-wide v5

    .line 643
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v7

    .line 644
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v8

    .line 645
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v9

    .line 646
    move-object v4, p0

    invoke-virtual/range {v4 .. v9}, Landroid/hardware/biometrics/face/V1_0/IBiometricsFaceClientCallback$Stub;->onEnrollResult(JIII)V

    .line 647
    nop

    .line 913
    :cond_266
    :goto_266
    return-void

    nop

    :pswitch_data_268
    .packed-switch 0x1
        :pswitch_240  #00000001
        :pswitch_21a  #00000002
        :pswitch_1f4  #00000003
        :pswitch_1cc  #00000004
        :pswitch_1a9  #00000005
        :pswitch_186  #00000006
        :pswitch_16b  #00000007
    .end packed-switch

    :sswitch_data_27a
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

    .line 586
    return-void
.end method

.method public queryLocalInterface(Ljava/lang/String;)Landroid/os/IHwInterface;
    .registers 3

    .line 614
    const-string v0, "android.hardware.biometrics.face@1.0::IBiometricsFaceClientCallback"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_9

    .line 615
    return-object p0

    .line 617
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

    .line 621
    invoke-virtual {p0, p1}, Landroid/hardware/biometrics/face/V1_0/IBiometricsFaceClientCallback$Stub;->registerService(Ljava/lang/String;)V

    .line 622
    return-void
.end method

.method public final setHALInstrumentation()V
    .registers 1

    .line 576
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 626
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/hardware/biometrics/face/V1_0/IBiometricsFaceClientCallback$Stub;->interfaceDescriptor()Ljava/lang/String;

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

    .line 608
    const/4 p1, 0x1

    return p1
.end method
