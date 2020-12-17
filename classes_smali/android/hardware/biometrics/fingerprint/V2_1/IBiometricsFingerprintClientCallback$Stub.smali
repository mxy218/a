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

    .line 490
    .local p2, "options":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    return-void
.end method

.method public final getDebugInfo()Landroid/hidl/base/V1_0/DebugInfo;
    .registers 4

    .line 527
    new-instance v0, Landroid/hidl/base/V1_0/DebugInfo;

    invoke-direct {v0}, Landroid/hidl/base/V1_0/DebugInfo;-><init>()V

    .line 528
    .local v0, "info":Landroid/hidl/base/V1_0/DebugInfo;
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
    .registers 5
    .param p1, "recipient"  # Landroid/os/IHwBinder$DeathRecipient;
    .param p2, "cookie"  # J

    .line 515
    const/4 v0, 0x1

    return v0
.end method

.method public final notifySyspropsChanged()V
    .registers 1

    .line 537
    invoke-static {}, Landroid/os/HwBinder;->enableInstrumentation()V

    .line 539
    return-void
.end method

.method public onTransact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V
    .registers 20
    .param p1, "_hidl_code"  # I
    .param p2, "_hidl_request"  # Landroid/os/HwParcel;
    .param p3, "_hidl_reply"  # Landroid/os/HwParcel;
    .param p4, "_hidl_flags"  # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 567
    move-object v6, p0

    move-object/from16 v7, p2

    move-object/from16 v8, p3

    const-string v0, "android.hardware.biometrics.fingerprint@2.1::IBiometricsFingerprintClientCallback"

    const/high16 v1, -0x80000000

    const/4 v2, 0x0

    const/4 v3, 0x1

    packed-switch p1, :pswitch_data_268

    const-string v0, "android.hidl.base@1.0::IBase"

    sparse-switch p1, :sswitch_data_278

    goto/16 :goto_267

    .line 825
    :sswitch_15
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_1a

    move v2, v3

    :cond_1a
    move v0, v2

    .line 826
    .local v0, "_hidl_is_oneway":Z
    if-eqz v0, :cond_267

    .line 827
    invoke-virtual {v8, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 828
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 829
    goto/16 :goto_267

    .line 812
    .end local v0  # "_hidl_is_oneway":Z
    :sswitch_25
    and-int/lit8 v4, p4, 0x1

    if-eqz v4, :cond_2a

    move v2, v3

    .line 813
    .local v2, "_hidl_is_oneway":Z
    :cond_2a
    if-eq v2, v3, :cond_34

    .line 814
    invoke-virtual {v8, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 815
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 816
    goto/16 :goto_267

    .line 817
    :cond_34
    invoke-virtual {v7, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 819
    invoke-virtual {p0}, Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprintClientCallback$Stub;->notifySyspropsChanged()V

    .line 820
    goto/16 :goto_267

    .line 796
    .end local v2  # "_hidl_is_oneway":Z
    :sswitch_3c
    and-int/lit8 v4, p4, 0x1

    if-eqz v4, :cond_41

    goto :goto_42

    :cond_41
    move v3, v2

    .line 797
    .local v3, "_hidl_is_oneway":Z
    :goto_42
    if-eqz v3, :cond_4c

    .line 798
    invoke-virtual {v8, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 799
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 800
    goto/16 :goto_267

    .line 801
    :cond_4c
    invoke-virtual {v7, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 803
    invoke-virtual {p0}, Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprintClientCallback$Stub;->getDebugInfo()Landroid/hidl/base/V1_0/DebugInfo;

    move-result-object v0

    .line 804
    .local v0, "_hidl_out_info":Landroid/hidl/base/V1_0/DebugInfo;
    invoke-virtual {v8, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 805
    invoke-virtual {v0, v8}, Landroid/hidl/base/V1_0/DebugInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 806
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 807
    goto/16 :goto_267

    .line 781
    .end local v0  # "_hidl_out_info":Landroid/hidl/base/V1_0/DebugInfo;
    .end local v3  # "_hidl_is_oneway":Z
    :sswitch_5e
    and-int/lit8 v4, p4, 0x1

    if-eqz v4, :cond_63

    goto :goto_64

    :cond_63
    move v3, v2

    .line 782
    .restart local v3  # "_hidl_is_oneway":Z
    :goto_64
    if-eqz v3, :cond_6e

    .line 783
    invoke-virtual {v8, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 784
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 785
    goto/16 :goto_267

    .line 786
    :cond_6e
    invoke-virtual {v7, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 788
    invoke-virtual {p0}, Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprintClientCallback$Stub;->ping()V

    .line 789
    invoke-virtual {v8, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 790
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 791
    goto/16 :goto_267

    .line 771
    .end local v3  # "_hidl_is_oneway":Z
    :sswitch_7c
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_81

    move v2, v3

    :cond_81
    move v0, v2

    .line 772
    .local v0, "_hidl_is_oneway":Z
    if-eqz v0, :cond_267

    .line 773
    invoke-virtual {v8, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 774
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 775
    goto/16 :goto_267

    .line 758
    .end local v0  # "_hidl_is_oneway":Z
    :sswitch_8c
    and-int/lit8 v4, p4, 0x1

    if-eqz v4, :cond_91

    move v2, v3

    .line 759
    .restart local v2  # "_hidl_is_oneway":Z
    :cond_91
    if-eq v2, v3, :cond_9b

    .line 760
    invoke-virtual {v8, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 761
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 762
    goto/16 :goto_267

    .line 763
    :cond_9b
    invoke-virtual {v7, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 765
    invoke-virtual {p0}, Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprintClientCallback$Stub;->setHALInstrumentation()V

    .line 766
    goto/16 :goto_267

    .line 719
    .end local v2  # "_hidl_is_oneway":Z
    :sswitch_a3
    and-int/lit8 v4, p4, 0x1

    if-eqz v4, :cond_a8

    goto :goto_a9

    :cond_a8
    move v3, v2

    .line 720
    .restart local v3  # "_hidl_is_oneway":Z
    :goto_a9
    if-eqz v3, :cond_b3

    .line 721
    invoke-virtual {v8, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 722
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 723
    goto/16 :goto_267

    .line 724
    :cond_b3
    invoke-virtual {v7, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 726
    invoke-virtual {p0}, Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprintClientCallback$Stub;->getHashChain()Ljava/util/ArrayList;

    move-result-object v0

    .line 727
    .local v0, "_hidl_out_hashchain":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    invoke-virtual {v8, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 729
    new-instance v1, Landroid/os/HwBlob;

    const/16 v4, 0x10

    invoke-direct {v1, v4}, Landroid/os/HwBlob;-><init>(I)V

    .line 731
    .local v1, "_hidl_blob":Landroid/os/HwBlob;
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 732
    .local v4, "_hidl_vec_size":I
    const-wide/16 v9, 0x8

    invoke-virtual {v1, v9, v10, v4}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 733
    const-wide/16 v9, 0xc

    invoke-virtual {v1, v9, v10, v2}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 734
    new-instance v2, Landroid/os/HwBlob;

    mul-int/lit8 v5, v4, 0x20

    invoke-direct {v2, v5}, Landroid/os/HwBlob;-><init>(I)V

    .line 735
    .local v2, "childBlob":Landroid/os/HwBlob;
    const/4 v5, 0x0

    .local v5, "_hidl_index_0":I
    :goto_da
    if-ge v5, v4, :cond_fb

    .line 737
    mul-int/lit8 v9, v5, 0x20

    int-to-long v9, v9

    .line 738
    .local v9, "_hidl_array_offset_1":J
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, [B

    .line 740
    .local v11, "_hidl_array_item_1":[B
    if-eqz v11, :cond_f3

    array-length v12, v11

    const/16 v13, 0x20

    if-ne v12, v13, :cond_f3

    .line 744
    invoke-virtual {v2, v9, v10, v11}, Landroid/os/HwBlob;->putInt8Array(J[B)V

    .line 745
    nop

    .line 735
    .end local v9  # "_hidl_array_offset_1":J
    .end local v11  # "_hidl_array_item_1":[B
    add-int/lit8 v5, v5, 0x1

    goto :goto_da

    .line 741
    .restart local v9  # "_hidl_array_offset_1":J
    .restart local v11  # "_hidl_array_item_1":[B
    :cond_f3
    new-instance v12, Ljava/lang/IllegalArgumentException;

    const-string v13, "Array element is not of the expected length"

    invoke-direct {v12, v13}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v12

    .line 748
    .end local v5  # "_hidl_index_0":I
    .end local v9  # "_hidl_array_offset_1":J
    .end local v11  # "_hidl_array_item_1":[B
    :cond_fb
    const-wide/16 v9, 0x0

    invoke-virtual {v1, v9, v10, v2}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    .line 750
    .end local v2  # "childBlob":Landroid/os/HwBlob;
    .end local v4  # "_hidl_vec_size":I
    invoke-virtual {v8, v1}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    .line 752
    .end local v1  # "_hidl_blob":Landroid/os/HwBlob;
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 753
    goto/16 :goto_267

    .line 703
    .end local v0  # "_hidl_out_hashchain":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    .end local v3  # "_hidl_is_oneway":Z
    :sswitch_108
    and-int/lit8 v4, p4, 0x1

    if-eqz v4, :cond_10d

    goto :goto_10e

    :cond_10d
    move v3, v2

    .line 704
    .restart local v3  # "_hidl_is_oneway":Z
    :goto_10e
    if-eqz v3, :cond_118

    .line 705
    invoke-virtual {v8, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 706
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 707
    goto/16 :goto_267

    .line 708
    :cond_118
    invoke-virtual {v7, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 710
    invoke-virtual {p0}, Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprintClientCallback$Stub;->interfaceDescriptor()Ljava/lang/String;

    move-result-object v0

    .line 711
    .local v0, "_hidl_out_descriptor":Ljava/lang/String;
    invoke-virtual {v8, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 712
    invoke-virtual {v8, v0}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 713
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 714
    goto/16 :goto_267

    .line 686
    .end local v0  # "_hidl_out_descriptor":Ljava/lang/String;
    .end local v3  # "_hidl_is_oneway":Z
    :sswitch_12a
    and-int/lit8 v4, p4, 0x1

    if-eqz v4, :cond_12f

    goto :goto_130

    :cond_12f
    move v3, v2

    .line 687
    .restart local v3  # "_hidl_is_oneway":Z
    :goto_130
    if-eqz v3, :cond_13a

    .line 688
    invoke-virtual {v8, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 689
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 690
    goto/16 :goto_267

    .line 691
    :cond_13a
    invoke-virtual {v7, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 693
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readNativeHandle()Landroid/os/NativeHandle;

    move-result-object v0

    .line 694
    .local v0, "fd":Landroid/os/NativeHandle;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readStringVector()Ljava/util/ArrayList;

    move-result-object v1

    .line 695
    .local v1, "options":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {p0, v0, v1}, Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprintClientCallback$Stub;->debug(Landroid/os/NativeHandle;Ljava/util/ArrayList;)V

    .line 696
    invoke-virtual {v8, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 697
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 698
    goto/16 :goto_267

    .line 670
    .end local v0  # "fd":Landroid/os/NativeHandle;
    .end local v1  # "options":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v3  # "_hidl_is_oneway":Z
    :sswitch_150
    and-int/lit8 v4, p4, 0x1

    if-eqz v4, :cond_155

    goto :goto_156

    :cond_155
    move v3, v2

    .line 671
    .restart local v3  # "_hidl_is_oneway":Z
    :goto_156
    if-eqz v3, :cond_160

    .line 672
    invoke-virtual {v8, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 673
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 674
    goto/16 :goto_267

    .line 675
    :cond_160
    invoke-virtual {v7, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 677
    invoke-virtual {p0}, Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprintClientCallback$Stub;->interfaceChain()Ljava/util/ArrayList;

    move-result-object v0

    .line 678
    .local v0, "_hidl_out_descriptors":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v8, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 679
    invoke-virtual {v8, v0}, Landroid/os/HwParcel;->writeStringVector(Ljava/util/ArrayList;)V

    .line 680
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 681
    goto/16 :goto_267

    .line 653
    .end local v0  # "_hidl_out_descriptors":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v3  # "_hidl_is_oneway":Z
    :pswitch_172  #0x6
    and-int/lit8 v4, p4, 0x1

    if-eqz v4, :cond_177

    move v2, v3

    :cond_177
    move v9, v2

    .line 654
    .local v9, "_hidl_is_oneway":Z
    if-eq v9, v3, :cond_182

    .line 655
    invoke-virtual {v8, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 656
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 657
    goto/16 :goto_267

    .line 658
    :cond_182
    invoke-virtual {v7, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 660
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt64()J

    move-result-wide v10

    .line 661
    .local v10, "deviceId":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v12

    .line 662
    .local v12, "fingerId":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v13

    .line 663
    .local v13, "groupId":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v14

    .line 664
    .local v14, "remaining":I
    move-object v0, p0

    move-wide v1, v10

    move v3, v12

    move v4, v13

    move v5, v14

    invoke-virtual/range {v0 .. v5}, Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprintClientCallback$Stub;->onEnumerate(JIII)V

    .line 665
    goto/16 :goto_267

    .line 636
    .end local v9  # "_hidl_is_oneway":Z
    .end local v10  # "deviceId":J
    .end local v12  # "fingerId":I
    .end local v13  # "groupId":I
    .end local v14  # "remaining":I
    :pswitch_19f  #0x5
    and-int/lit8 v4, p4, 0x1

    if-eqz v4, :cond_1a4

    move v2, v3

    :cond_1a4
    move v9, v2

    .line 637
    .restart local v9  # "_hidl_is_oneway":Z
    if-eq v9, v3, :cond_1af

    .line 638
    invoke-virtual {v8, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 639
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 640
    goto/16 :goto_267

    .line 641
    :cond_1af
    invoke-virtual {v7, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 643
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt64()J

    move-result-wide v10

    .line 644
    .restart local v10  # "deviceId":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v12

    .line 645
    .restart local v12  # "fingerId":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v13

    .line 646
    .restart local v13  # "groupId":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v14

    .line 647
    .restart local v14  # "remaining":I
    move-object v0, p0

    move-wide v1, v10

    move v3, v12

    move v4, v13

    move v5, v14

    invoke-virtual/range {v0 .. v5}, Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprintClientCallback$Stub;->onRemoved(JIII)V

    .line 648
    goto/16 :goto_267

    .line 620
    .end local v9  # "_hidl_is_oneway":Z
    .end local v10  # "deviceId":J
    .end local v12  # "fingerId":I
    .end local v13  # "groupId":I
    .end local v14  # "remaining":I
    :pswitch_1cc  #0x4
    and-int/lit8 v4, p4, 0x1

    if-eqz v4, :cond_1d1

    move v2, v3

    .line 621
    .local v2, "_hidl_is_oneway":Z
    :cond_1d1
    if-eq v2, v3, :cond_1db

    .line 622
    invoke-virtual {v8, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 623
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 624
    goto/16 :goto_267

    .line 625
    :cond_1db
    invoke-virtual {v7, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 627
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt64()J

    move-result-wide v0

    .line 628
    .local v0, "deviceId":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v3

    .line 629
    .local v3, "error":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v4

    .line 630
    .local v4, "vendorCode":I
    invoke-virtual {p0, v0, v1, v3, v4}, Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprintClientCallback$Stub;->onError(JII)V

    .line 631
    goto/16 :goto_267

    .line 603
    .end local v0  # "deviceId":J
    .end local v2  # "_hidl_is_oneway":Z
    .end local v3  # "error":I
    .end local v4  # "vendorCode":I
    :pswitch_1ef  #0x3
    and-int/lit8 v4, p4, 0x1

    if-eqz v4, :cond_1f4

    move v2, v3

    :cond_1f4
    move v9, v2

    .line 604
    .restart local v9  # "_hidl_is_oneway":Z
    if-eq v9, v3, :cond_1ff

    .line 605
    invoke-virtual {v8, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 606
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 607
    goto/16 :goto_267

    .line 608
    :cond_1ff
    invoke-virtual {v7, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 610
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt64()J

    move-result-wide v10

    .line 611
    .restart local v10  # "deviceId":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v12

    .line 612
    .restart local v12  # "fingerId":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v13

    .line 613
    .restart local v13  # "groupId":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt8Vector()Ljava/util/ArrayList;

    move-result-object v14

    .line 614
    .local v14, "token":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    move-object v0, p0

    move-wide v1, v10

    move v3, v12

    move v4, v13

    move-object v5, v14

    invoke-virtual/range {v0 .. v5}, Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprintClientCallback$Stub;->onAuthenticated(JIILjava/util/ArrayList;)V

    .line 615
    goto :goto_267

    .line 587
    .end local v9  # "_hidl_is_oneway":Z
    .end local v10  # "deviceId":J
    .end local v12  # "fingerId":I
    .end local v13  # "groupId":I
    .end local v14  # "token":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    :pswitch_21b  #0x2
    and-int/lit8 v4, p4, 0x1

    if-eqz v4, :cond_220

    move v2, v3

    .line 588
    .restart local v2  # "_hidl_is_oneway":Z
    :cond_220
    if-eq v2, v3, :cond_229

    .line 589
    invoke-virtual {v8, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 590
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 591
    goto :goto_267

    .line 592
    :cond_229
    invoke-virtual {v7, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 594
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt64()J

    move-result-wide v0

    .line 595
    .restart local v0  # "deviceId":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v3

    .line 596
    .local v3, "acquiredInfo":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v4

    .line 597
    .restart local v4  # "vendorCode":I
    invoke-virtual {p0, v0, v1, v3, v4}, Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprintClientCallback$Stub;->onAcquired(JII)V

    .line 598
    goto :goto_267

    .line 570
    .end local v0  # "deviceId":J
    .end local v2  # "_hidl_is_oneway":Z
    .end local v3  # "acquiredInfo":I
    .end local v4  # "vendorCode":I
    :pswitch_23c  #0x1
    and-int/lit8 v4, p4, 0x1

    if-eqz v4, :cond_241

    move v2, v3

    :cond_241
    move v9, v2

    .line 571
    .restart local v9  # "_hidl_is_oneway":Z
    if-eq v9, v3, :cond_24b

    .line 572
    invoke-virtual {v8, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 573
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 574
    goto :goto_267

    .line 575
    :cond_24b
    invoke-virtual {v7, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 577
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt64()J

    move-result-wide v10

    .line 578
    .restart local v10  # "deviceId":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v12

    .line 579
    .restart local v12  # "fingerId":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v13

    .line 580
    .restart local v13  # "groupId":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v14

    .line 581
    .local v14, "remaining":I
    move-object v0, p0

    move-wide v1, v10

    move v3, v12

    move v4, v13

    move v5, v14

    invoke-virtual/range {v0 .. v5}, Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprintClientCallback$Stub;->onEnrollResult(JIII)V

    .line 582
    nop

    .line 834
    .end local v9  # "_hidl_is_oneway":Z
    .end local v10  # "deviceId":J
    .end local v12  # "fingerId":I
    .end local v13  # "groupId":I
    .end local v14  # "remaining":I
    :cond_267
    :goto_267
    return-void

    :pswitch_data_268
    .packed-switch 0x1
        :pswitch_23c  #00000001
        :pswitch_21b  #00000002
        :pswitch_1ef  #00000003
        :pswitch_1cc  #00000004
        :pswitch_19f  #00000005
        :pswitch_172  #00000006
    .end packed-switch

    :sswitch_data_278
    .sparse-switch
        0xf43484e -> :sswitch_150
        0xf444247 -> :sswitch_12a
        0xf445343 -> :sswitch_108
        0xf485348 -> :sswitch_a3
        0xf494e54 -> :sswitch_8c
        0xf4c5444 -> :sswitch_7c
        0xf504e47 -> :sswitch_5e
        0xf524546 -> :sswitch_3c
        0xf535953 -> :sswitch_25
        0xf555444 -> :sswitch_15
    .end sparse-switch
.end method

.method public final ping()V
    .registers 1

    .line 521
    return-void
.end method

.method public queryLocalInterface(Ljava/lang/String;)Landroid/os/IHwInterface;
    .registers 3
    .param p1, "descriptor"  # Ljava/lang/String;

    .line 549
    const-string v0, "android.hardware.biometrics.fingerprint@2.1::IBiometricsFingerprintClientCallback"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 550
    return-object p0

    .line 552
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
    .registers 3
    .param p1, "recipient"  # Landroid/os/IHwBinder$DeathRecipient;

    .line 543
    const/4 v0, 0x1

    return v0
.end method
