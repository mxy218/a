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

    .line 555
    .local p2, "options":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    return-void
.end method

.method public final getDebugInfo()Landroid/hidl/base/V1_0/DebugInfo;
    .registers 4

    .line 592
    new-instance v0, Landroid/hidl/base/V1_0/DebugInfo;

    invoke-direct {v0}, Landroid/hidl/base/V1_0/DebugInfo;-><init>()V

    .line 593
    .local v0, "info":Landroid/hidl/base/V1_0/DebugInfo;
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
    .registers 5
    .param p1, "recipient"  # Landroid/os/IHwBinder$DeathRecipient;
    .param p2, "cookie"  # J

    .line 580
    const/4 v0, 0x1

    return v0
.end method

.method public final notifySyspropsChanged()V
    .registers 1

    .line 602
    invoke-static {}, Landroid/os/HwBinder;->enableInstrumentation()V

    .line 604
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

    .line 632
    move-object v6, p0

    move-object/from16 v7, p2

    move-object/from16 v8, p3

    const-string v0, "android.hardware.biometrics.face@1.0::IBiometricsFaceClientCallback"

    const/high16 v1, -0x80000000

    const/4 v2, 0x0

    const/4 v3, 0x1

    packed-switch p1, :pswitch_data_284

    const-string v0, "android.hidl.base@1.0::IBase"

    sparse-switch p1, :sswitch_data_296

    goto/16 :goto_282

    .line 904
    :sswitch_15
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_1a

    move v2, v3

    :cond_1a
    move v0, v2

    .line 905
    .local v0, "_hidl_is_oneway":Z
    if-eqz v0, :cond_282

    .line 906
    invoke-virtual {v8, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 907
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 908
    goto/16 :goto_282

    .line 891
    .end local v0  # "_hidl_is_oneway":Z
    :sswitch_25
    and-int/lit8 v4, p4, 0x1

    if-eqz v4, :cond_2a

    move v2, v3

    .line 892
    .local v2, "_hidl_is_oneway":Z
    :cond_2a
    if-eq v2, v3, :cond_34

    .line 893
    invoke-virtual {v8, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 894
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 895
    goto/16 :goto_282

    .line 896
    :cond_34
    invoke-virtual {v7, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 898
    invoke-virtual {p0}, Landroid/hardware/biometrics/face/V1_0/IBiometricsFaceClientCallback$Stub;->notifySyspropsChanged()V

    .line 899
    goto/16 :goto_282

    .line 875
    .end local v2  # "_hidl_is_oneway":Z
    :sswitch_3c
    and-int/lit8 v4, p4, 0x1

    if-eqz v4, :cond_41

    goto :goto_42

    :cond_41
    move v3, v2

    .line 876
    .local v3, "_hidl_is_oneway":Z
    :goto_42
    if-eqz v3, :cond_4c

    .line 877
    invoke-virtual {v8, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 878
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 879
    goto/16 :goto_282

    .line 880
    :cond_4c
    invoke-virtual {v7, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 882
    invoke-virtual {p0}, Landroid/hardware/biometrics/face/V1_0/IBiometricsFaceClientCallback$Stub;->getDebugInfo()Landroid/hidl/base/V1_0/DebugInfo;

    move-result-object v0

    .line 883
    .local v0, "_hidl_out_info":Landroid/hidl/base/V1_0/DebugInfo;
    invoke-virtual {v8, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 884
    invoke-virtual {v0, v8}, Landroid/hidl/base/V1_0/DebugInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 885
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 886
    goto/16 :goto_282

    .line 860
    .end local v0  # "_hidl_out_info":Landroid/hidl/base/V1_0/DebugInfo;
    .end local v3  # "_hidl_is_oneway":Z
    :sswitch_5e
    and-int/lit8 v4, p4, 0x1

    if-eqz v4, :cond_63

    goto :goto_64

    :cond_63
    move v3, v2

    .line 861
    .restart local v3  # "_hidl_is_oneway":Z
    :goto_64
    if-eqz v3, :cond_6e

    .line 862
    invoke-virtual {v8, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 863
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 864
    goto/16 :goto_282

    .line 865
    :cond_6e
    invoke-virtual {v7, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 867
    invoke-virtual {p0}, Landroid/hardware/biometrics/face/V1_0/IBiometricsFaceClientCallback$Stub;->ping()V

    .line 868
    invoke-virtual {v8, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 869
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 870
    goto/16 :goto_282

    .line 850
    .end local v3  # "_hidl_is_oneway":Z
    :sswitch_7c
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_81

    move v2, v3

    :cond_81
    move v0, v2

    .line 851
    .local v0, "_hidl_is_oneway":Z
    if-eqz v0, :cond_282

    .line 852
    invoke-virtual {v8, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 853
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 854
    goto/16 :goto_282

    .line 837
    .end local v0  # "_hidl_is_oneway":Z
    :sswitch_8c
    and-int/lit8 v4, p4, 0x1

    if-eqz v4, :cond_91

    move v2, v3

    .line 838
    .restart local v2  # "_hidl_is_oneway":Z
    :cond_91
    if-eq v2, v3, :cond_9b

    .line 839
    invoke-virtual {v8, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 840
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 841
    goto/16 :goto_282

    .line 842
    :cond_9b
    invoke-virtual {v7, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 844
    invoke-virtual {p0}, Landroid/hardware/biometrics/face/V1_0/IBiometricsFaceClientCallback$Stub;->setHALInstrumentation()V

    .line 845
    goto/16 :goto_282

    .line 798
    .end local v2  # "_hidl_is_oneway":Z
    :sswitch_a3
    and-int/lit8 v4, p4, 0x1

    if-eqz v4, :cond_a8

    goto :goto_a9

    :cond_a8
    move v3, v2

    .line 799
    .restart local v3  # "_hidl_is_oneway":Z
    :goto_a9
    if-eqz v3, :cond_b3

    .line 800
    invoke-virtual {v8, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 801
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 802
    goto/16 :goto_282

    .line 803
    :cond_b3
    invoke-virtual {v7, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 805
    invoke-virtual {p0}, Landroid/hardware/biometrics/face/V1_0/IBiometricsFaceClientCallback$Stub;->getHashChain()Ljava/util/ArrayList;

    move-result-object v0

    .line 806
    .local v0, "_hidl_out_hashchain":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    invoke-virtual {v8, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 808
    new-instance v1, Landroid/os/HwBlob;

    const/16 v4, 0x10

    invoke-direct {v1, v4}, Landroid/os/HwBlob;-><init>(I)V

    .line 810
    .local v1, "_hidl_blob":Landroid/os/HwBlob;
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 811
    .local v4, "_hidl_vec_size":I
    const-wide/16 v9, 0x8

    invoke-virtual {v1, v9, v10, v4}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 812
    const-wide/16 v9, 0xc

    invoke-virtual {v1, v9, v10, v2}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 813
    new-instance v2, Landroid/os/HwBlob;

    mul-int/lit8 v5, v4, 0x20

    invoke-direct {v2, v5}, Landroid/os/HwBlob;-><init>(I)V

    .line 814
    .local v2, "childBlob":Landroid/os/HwBlob;
    const/4 v5, 0x0

    .local v5, "_hidl_index_0":I
    :goto_da
    if-ge v5, v4, :cond_fb

    .line 816
    mul-int/lit8 v9, v5, 0x20

    int-to-long v9, v9

    .line 817
    .local v9, "_hidl_array_offset_1":J
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, [B

    .line 819
    .local v11, "_hidl_array_item_1":[B
    if-eqz v11, :cond_f3

    array-length v12, v11

    const/16 v13, 0x20

    if-ne v12, v13, :cond_f3

    .line 823
    invoke-virtual {v2, v9, v10, v11}, Landroid/os/HwBlob;->putInt8Array(J[B)V

    .line 824
    nop

    .line 814
    .end local v9  # "_hidl_array_offset_1":J
    .end local v11  # "_hidl_array_item_1":[B
    add-int/lit8 v5, v5, 0x1

    goto :goto_da

    .line 820
    .restart local v9  # "_hidl_array_offset_1":J
    .restart local v11  # "_hidl_array_item_1":[B
    :cond_f3
    new-instance v12, Ljava/lang/IllegalArgumentException;

    const-string v13, "Array element is not of the expected length"

    invoke-direct {v12, v13}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v12

    .line 827
    .end local v5  # "_hidl_index_0":I
    .end local v9  # "_hidl_array_offset_1":J
    .end local v11  # "_hidl_array_item_1":[B
    :cond_fb
    const-wide/16 v9, 0x0

    invoke-virtual {v1, v9, v10, v2}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    .line 829
    .end local v2  # "childBlob":Landroid/os/HwBlob;
    .end local v4  # "_hidl_vec_size":I
    invoke-virtual {v8, v1}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    .line 831
    .end local v1  # "_hidl_blob":Landroid/os/HwBlob;
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 832
    goto/16 :goto_282

    .line 782
    .end local v0  # "_hidl_out_hashchain":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    .end local v3  # "_hidl_is_oneway":Z
    :sswitch_108
    and-int/lit8 v4, p4, 0x1

    if-eqz v4, :cond_10d

    goto :goto_10e

    :cond_10d
    move v3, v2

    .line 783
    .restart local v3  # "_hidl_is_oneway":Z
    :goto_10e
    if-eqz v3, :cond_118

    .line 784
    invoke-virtual {v8, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 785
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 786
    goto/16 :goto_282

    .line 787
    :cond_118
    invoke-virtual {v7, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 789
    invoke-virtual {p0}, Landroid/hardware/biometrics/face/V1_0/IBiometricsFaceClientCallback$Stub;->interfaceDescriptor()Ljava/lang/String;

    move-result-object v0

    .line 790
    .local v0, "_hidl_out_descriptor":Ljava/lang/String;
    invoke-virtual {v8, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 791
    invoke-virtual {v8, v0}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 792
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 793
    goto/16 :goto_282

    .line 765
    .end local v0  # "_hidl_out_descriptor":Ljava/lang/String;
    .end local v3  # "_hidl_is_oneway":Z
    :sswitch_12a
    and-int/lit8 v4, p4, 0x1

    if-eqz v4, :cond_12f

    goto :goto_130

    :cond_12f
    move v3, v2

    .line 766
    .restart local v3  # "_hidl_is_oneway":Z
    :goto_130
    if-eqz v3, :cond_13a

    .line 767
    invoke-virtual {v8, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 768
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 769
    goto/16 :goto_282

    .line 770
    :cond_13a
    invoke-virtual {v7, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 772
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readNativeHandle()Landroid/os/NativeHandle;

    move-result-object v0

    .line 773
    .local v0, "fd":Landroid/os/NativeHandle;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readStringVector()Ljava/util/ArrayList;

    move-result-object v1

    .line 774
    .local v1, "options":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {p0, v0, v1}, Landroid/hardware/biometrics/face/V1_0/IBiometricsFaceClientCallback$Stub;->debug(Landroid/os/NativeHandle;Ljava/util/ArrayList;)V

    .line 775
    invoke-virtual {v8, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 776
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 777
    goto/16 :goto_282

    .line 749
    .end local v0  # "fd":Landroid/os/NativeHandle;
    .end local v1  # "options":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v3  # "_hidl_is_oneway":Z
    :sswitch_150
    and-int/lit8 v4, p4, 0x1

    if-eqz v4, :cond_155

    goto :goto_156

    :cond_155
    move v3, v2

    .line 750
    .restart local v3  # "_hidl_is_oneway":Z
    :goto_156
    if-eqz v3, :cond_160

    .line 751
    invoke-virtual {v8, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 752
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 753
    goto/16 :goto_282

    .line 754
    :cond_160
    invoke-virtual {v7, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 756
    invoke-virtual {p0}, Landroid/hardware/biometrics/face/V1_0/IBiometricsFaceClientCallback$Stub;->interfaceChain()Ljava/util/ArrayList;

    move-result-object v0

    .line 757
    .local v0, "_hidl_out_descriptors":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v8, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 758
    invoke-virtual {v8, v0}, Landroid/os/HwParcel;->writeStringVector(Ljava/util/ArrayList;)V

    .line 759
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 760
    goto/16 :goto_282

    .line 735
    .end local v0  # "_hidl_out_descriptors":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v3  # "_hidl_is_oneway":Z
    :pswitch_172  #0x7
    and-int/lit8 v4, p4, 0x1

    if-eqz v4, :cond_177

    move v2, v3

    .line 736
    .local v2, "_hidl_is_oneway":Z
    :cond_177
    if-eq v2, v3, :cond_181

    .line 737
    invoke-virtual {v8, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 738
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 739
    goto/16 :goto_282

    .line 740
    :cond_181
    invoke-virtual {v7, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 742
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt64()J

    move-result-wide v0

    .line 743
    .local v0, "duration":J
    invoke-virtual {p0, v0, v1}, Landroid/hardware/biometrics/face/V1_0/IBiometricsFaceClientCallback$Stub;->onLockoutChanged(J)V

    .line 744
    goto/16 :goto_282

    .line 719
    .end local v0  # "duration":J
    .end local v2  # "_hidl_is_oneway":Z
    :pswitch_18d  #0x6
    and-int/lit8 v4, p4, 0x1

    if-eqz v4, :cond_192

    move v2, v3

    .line 720
    .restart local v2  # "_hidl_is_oneway":Z
    :cond_192
    if-eq v2, v3, :cond_19c

    .line 721
    invoke-virtual {v8, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 722
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 723
    goto/16 :goto_282

    .line 724
    :cond_19c
    invoke-virtual {v7, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 726
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt64()J

    move-result-wide v0

    .line 727
    .local v0, "deviceId":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32Vector()Ljava/util/ArrayList;

    move-result-object v3

    .line 728
    .local v3, "faceIds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v4

    .line 729
    .local v4, "userId":I
    invoke-virtual {p0, v0, v1, v3, v4}, Landroid/hardware/biometrics/face/V1_0/IBiometricsFaceClientCallback$Stub;->onEnumerate(JLjava/util/ArrayList;I)V

    .line 730
    goto/16 :goto_282

    .line 703
    .end local v0  # "deviceId":J
    .end local v2  # "_hidl_is_oneway":Z
    .end local v3  # "faceIds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .end local v4  # "userId":I
    :pswitch_1b0  #0x5
    and-int/lit8 v4, p4, 0x1

    if-eqz v4, :cond_1b5

    move v2, v3

    .line 704
    .restart local v2  # "_hidl_is_oneway":Z
    :cond_1b5
    if-eq v2, v3, :cond_1bf

    .line 705
    invoke-virtual {v8, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 706
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 707
    goto/16 :goto_282

    .line 708
    :cond_1bf
    invoke-virtual {v7, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 710
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt64()J

    move-result-wide v0

    .line 711
    .restart local v0  # "deviceId":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32Vector()Ljava/util/ArrayList;

    move-result-object v3

    .line 712
    .local v3, "removed":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v4

    .line 713
    .restart local v4  # "userId":I
    invoke-virtual {p0, v0, v1, v3, v4}, Landroid/hardware/biometrics/face/V1_0/IBiometricsFaceClientCallback$Stub;->onRemoved(JLjava/util/ArrayList;I)V

    .line 714
    goto/16 :goto_282

    .line 686
    .end local v0  # "deviceId":J
    .end local v2  # "_hidl_is_oneway":Z
    .end local v3  # "removed":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .end local v4  # "userId":I
    :pswitch_1d3  #0x4
    and-int/lit8 v4, p4, 0x1

    if-eqz v4, :cond_1d8

    move v2, v3

    :cond_1d8
    move v9, v2

    .line 687
    .local v9, "_hidl_is_oneway":Z
    if-eq v9, v3, :cond_1e3

    .line 688
    invoke-virtual {v8, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 689
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 690
    goto/16 :goto_282

    .line 691
    :cond_1e3
    invoke-virtual {v7, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 693
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt64()J

    move-result-wide v10

    .line 694
    .local v10, "deviceId":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v12

    .line 695
    .local v12, "userId":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v13

    .line 696
    .local v13, "error":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v14

    .line 697
    .local v14, "vendorCode":I
    move-object v0, p0

    move-wide v1, v10

    move v3, v12

    move v4, v13

    move v5, v14

    invoke-virtual/range {v0 .. v5}, Landroid/hardware/biometrics/face/V1_0/IBiometricsFaceClientCallback$Stub;->onError(JIII)V

    .line 698
    goto/16 :goto_282

    .line 669
    .end local v9  # "_hidl_is_oneway":Z
    .end local v10  # "deviceId":J
    .end local v12  # "userId":I
    .end local v13  # "error":I
    .end local v14  # "vendorCode":I
    :pswitch_200  #0x3
    and-int/lit8 v4, p4, 0x1

    if-eqz v4, :cond_205

    move v2, v3

    :cond_205
    move v9, v2

    .line 670
    .restart local v9  # "_hidl_is_oneway":Z
    if-eq v9, v3, :cond_210

    .line 671
    invoke-virtual {v8, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 672
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 673
    goto/16 :goto_282

    .line 674
    :cond_210
    invoke-virtual {v7, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 676
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt64()J

    move-result-wide v10

    .line 677
    .restart local v10  # "deviceId":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v12

    .line 678
    .restart local v12  # "userId":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v13

    .line 679
    .local v13, "acquiredInfo":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v14

    .line 680
    .restart local v14  # "vendorCode":I
    move-object v0, p0

    move-wide v1, v10

    move v3, v12

    move v4, v13

    move v5, v14

    invoke-virtual/range {v0 .. v5}, Landroid/hardware/biometrics/face/V1_0/IBiometricsFaceClientCallback$Stub;->onAcquired(JIII)V

    .line 681
    goto :goto_282

    .line 652
    .end local v9  # "_hidl_is_oneway":Z
    .end local v10  # "deviceId":J
    .end local v12  # "userId":I
    .end local v13  # "acquiredInfo":I
    .end local v14  # "vendorCode":I
    :pswitch_22c  #0x2
    and-int/lit8 v4, p4, 0x1

    if-eqz v4, :cond_231

    move v2, v3

    :cond_231
    move v9, v2

    .line 653
    .restart local v9  # "_hidl_is_oneway":Z
    if-eq v9, v3, :cond_23b

    .line 654
    invoke-virtual {v8, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 655
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 656
    goto :goto_282

    .line 657
    :cond_23b
    invoke-virtual {v7, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 659
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt64()J

    move-result-wide v10

    .line 660
    .restart local v10  # "deviceId":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v12

    .line 661
    .local v12, "faceId":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v13

    .line 662
    .local v13, "userId":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt8Vector()Ljava/util/ArrayList;

    move-result-object v14

    .line 663
    .local v14, "token":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    move-object v0, p0

    move-wide v1, v10

    move v3, v12

    move v4, v13

    move-object v5, v14

    invoke-virtual/range {v0 .. v5}, Landroid/hardware/biometrics/face/V1_0/IBiometricsFaceClientCallback$Stub;->onAuthenticated(JIILjava/util/ArrayList;)V

    .line 664
    goto :goto_282

    .line 635
    .end local v9  # "_hidl_is_oneway":Z
    .end local v10  # "deviceId":J
    .end local v12  # "faceId":I
    .end local v13  # "userId":I
    .end local v14  # "token":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    :pswitch_257  #0x1
    and-int/lit8 v4, p4, 0x1

    if-eqz v4, :cond_25c

    move v2, v3

    :cond_25c
    move v9, v2

    .line 636
    .restart local v9  # "_hidl_is_oneway":Z
    if-eq v9, v3, :cond_266

    .line 637
    invoke-virtual {v8, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 638
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 639
    goto :goto_282

    .line 640
    :cond_266
    invoke-virtual {v7, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 642
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt64()J

    move-result-wide v10

    .line 643
    .restart local v10  # "deviceId":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v12

    .line 644
    .restart local v12  # "faceId":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v13

    .line 645
    .restart local v13  # "userId":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v14

    .line 646
    .local v14, "remaining":I
    move-object v0, p0

    move-wide v1, v10

    move v3, v12

    move v4, v13

    move v5, v14

    invoke-virtual/range {v0 .. v5}, Landroid/hardware/biometrics/face/V1_0/IBiometricsFaceClientCallback$Stub;->onEnrollResult(JIII)V

    .line 647
    nop

    .line 913
    .end local v9  # "_hidl_is_oneway":Z
    .end local v10  # "deviceId":J
    .end local v12  # "faceId":I
    .end local v13  # "userId":I
    .end local v14  # "remaining":I
    :cond_282
    :goto_282
    return-void

    nop

    :pswitch_data_284
    .packed-switch 0x1
        :pswitch_257  #00000001
        :pswitch_22c  #00000002
        :pswitch_200  #00000003
        :pswitch_1d3  #00000004
        :pswitch_1b0  #00000005
        :pswitch_18d  #00000006
        :pswitch_172  #00000007
    .end packed-switch

    :sswitch_data_296
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

    .line 586
    return-void
.end method

.method public queryLocalInterface(Ljava/lang/String;)Landroid/os/IHwInterface;
    .registers 3
    .param p1, "descriptor"  # Ljava/lang/String;

    .line 614
    const-string v0, "android.hardware.biometrics.face@1.0::IBiometricsFaceClientCallback"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 615
    return-object p0

    .line 617
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
    .registers 3
    .param p1, "recipient"  # Landroid/os/IHwBinder$DeathRecipient;

    .line 608
    const/4 v0, 0x1

    return v0
.end method
