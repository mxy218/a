.class public abstract Landroid/hardware/broadcastradio/V2_0/IBroadcastRadio$Stub;
.super Landroid/os/HwBinder;
.source "IBroadcastRadio.java"

# interfaces
.implements Landroid/hardware/broadcastradio/V2_0/IBroadcastRadio;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/broadcastradio/V2_0/IBroadcastRadio;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 555
    invoke-direct {p0}, Landroid/os/HwBinder;-><init>()V

    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IHwBinder;
    .registers 1

    .line 558
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

    .line 571
    .local p2, "options":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    return-void
.end method

.method public final getDebugInfo()Landroid/hidl/base/V1_0/DebugInfo;
    .registers 4

    .line 608
    new-instance v0, Landroid/hidl/base/V1_0/DebugInfo;

    invoke-direct {v0}, Landroid/hidl/base/V1_0/DebugInfo;-><init>()V

    .line 609
    .local v0, "info":Landroid/hidl/base/V1_0/DebugInfo;
    invoke-static {}, Landroid/os/HidlSupport;->getPidIfSharable()I

    move-result v1

    iput v1, v0, Landroid/hidl/base/V1_0/DebugInfo;->pid:I

    .line 610
    const-wide/16 v1, 0x0

    iput-wide v1, v0, Landroid/hidl/base/V1_0/DebugInfo;->ptr:J

    .line 611
    const/4 v1, 0x0

    iput v1, v0, Landroid/hidl/base/V1_0/DebugInfo;->arch:I

    .line 612
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

    .line 583
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
        0x44t
        0x1t
        0x7ct
        0x42t
        -0x1at
        -0xct
        -0x28t
        -0x35t
        0x30t
        -0x10t
        0x7et
        -0x4ft
        -0x26t
        0x4t
        0x54t
        0xat
        -0x68t
        0x73t
        0x6at
        0x33t
        0x6at
        -0x3et
        -0x74t
        0x7et
        0xet
        -0x2et
        -0x1at
        -0x62t
        0x15t
        -0x77t
        -0x8t
        -0x2ft
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

    .line 563
    new-instance v0, Ljava/util/ArrayList;

    const-string v1, "android.hardware.broadcastradio@2.0::IBroadcastRadio"

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

    .line 577
    const-string v0, "android.hardware.broadcastradio@2.0::IBroadcastRadio"

    return-object v0
.end method

.method public final linkToDeath(Landroid/os/IHwBinder$DeathRecipient;J)Z
    .registers 5
    .param p1, "recipient"  # Landroid/os/IHwBinder$DeathRecipient;
    .param p2, "cookie"  # J

    .line 596
    const/4 v0, 0x1

    return v0
.end method

.method public final notifySyspropsChanged()V
    .registers 1

    .line 618
    invoke-static {}, Landroid/os/HwBinder;->enableInstrumentation()V

    .line 620
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

    .line 648
    const-string v0, "android.hardware.broadcastradio@2.0::IBroadcastRadio"

    const/high16 v1, -0x80000000

    const/4 v2, 0x0

    const/4 v3, 0x1

    packed-switch p1, :pswitch_data_238

    const-string v0, "android.hidl.base@1.0::IBase"

    sparse-switch p1, :sswitch_data_248

    goto/16 :goto_236

    .line 923
    :sswitch_10
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_15

    move v2, v3

    :cond_15
    move v0, v2

    .line 924
    .local v0, "_hidl_is_oneway":Z
    if-eqz v0, :cond_236

    .line 925
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 926
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 927
    goto/16 :goto_236

    .line 910
    .end local v0  # "_hidl_is_oneway":Z
    :sswitch_20
    and-int/lit8 v4, p4, 0x1

    if-eqz v4, :cond_25

    move v2, v3

    .line 911
    .local v2, "_hidl_is_oneway":Z
    :cond_25
    if-eq v2, v3, :cond_2f

    .line 912
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 913
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 914
    goto/16 :goto_236

    .line 915
    :cond_2f
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 917
    invoke-virtual {p0}, Landroid/hardware/broadcastradio/V2_0/IBroadcastRadio$Stub;->notifySyspropsChanged()V

    .line 918
    goto/16 :goto_236

    .line 894
    .end local v2  # "_hidl_is_oneway":Z
    :sswitch_37
    and-int/lit8 v4, p4, 0x1

    if-eqz v4, :cond_3c

    goto :goto_3d

    :cond_3c
    move v3, v2

    .line 895
    .local v3, "_hidl_is_oneway":Z
    :goto_3d
    if-eqz v3, :cond_47

    .line 896
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 897
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 898
    goto/16 :goto_236

    .line 899
    :cond_47
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 901
    invoke-virtual {p0}, Landroid/hardware/broadcastradio/V2_0/IBroadcastRadio$Stub;->getDebugInfo()Landroid/hidl/base/V1_0/DebugInfo;

    move-result-object v0

    .line 902
    .local v0, "_hidl_out_info":Landroid/hidl/base/V1_0/DebugInfo;
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 903
    invoke-virtual {v0, p3}, Landroid/hidl/base/V1_0/DebugInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 904
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 905
    goto/16 :goto_236

    .line 879
    .end local v0  # "_hidl_out_info":Landroid/hidl/base/V1_0/DebugInfo;
    .end local v3  # "_hidl_is_oneway":Z
    :sswitch_59
    and-int/lit8 v4, p4, 0x1

    if-eqz v4, :cond_5e

    goto :goto_5f

    :cond_5e
    move v3, v2

    .line 880
    .restart local v3  # "_hidl_is_oneway":Z
    :goto_5f
    if-eqz v3, :cond_69

    .line 881
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 882
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 883
    goto/16 :goto_236

    .line 884
    :cond_69
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 886
    invoke-virtual {p0}, Landroid/hardware/broadcastradio/V2_0/IBroadcastRadio$Stub;->ping()V

    .line 887
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 888
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 889
    goto/16 :goto_236

    .line 869
    .end local v3  # "_hidl_is_oneway":Z
    :sswitch_77
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_7c

    move v2, v3

    :cond_7c
    move v0, v2

    .line 870
    .local v0, "_hidl_is_oneway":Z
    if-eqz v0, :cond_236

    .line 871
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 872
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 873
    goto/16 :goto_236

    .line 856
    .end local v0  # "_hidl_is_oneway":Z
    :sswitch_87
    and-int/lit8 v4, p4, 0x1

    if-eqz v4, :cond_8c

    move v2, v3

    .line 857
    .restart local v2  # "_hidl_is_oneway":Z
    :cond_8c
    if-eq v2, v3, :cond_96

    .line 858
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 859
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 860
    goto/16 :goto_236

    .line 861
    :cond_96
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 863
    invoke-virtual {p0}, Landroid/hardware/broadcastradio/V2_0/IBroadcastRadio$Stub;->setHALInstrumentation()V

    .line 864
    goto/16 :goto_236

    .line 817
    .end local v2  # "_hidl_is_oneway":Z
    :sswitch_9e
    and-int/lit8 v4, p4, 0x1

    if-eqz v4, :cond_a3

    goto :goto_a4

    :cond_a3
    move v3, v2

    .line 818
    .restart local v3  # "_hidl_is_oneway":Z
    :goto_a4
    if-eqz v3, :cond_ae

    .line 819
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 820
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 821
    goto/16 :goto_236

    .line 822
    :cond_ae
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 824
    invoke-virtual {p0}, Landroid/hardware/broadcastradio/V2_0/IBroadcastRadio$Stub;->getHashChain()Ljava/util/ArrayList;

    move-result-object v0

    .line 825
    .local v0, "_hidl_out_hashchain":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 827
    new-instance v1, Landroid/os/HwBlob;

    const/16 v4, 0x10

    invoke-direct {v1, v4}, Landroid/os/HwBlob;-><init>(I)V

    .line 829
    .local v1, "_hidl_blob":Landroid/os/HwBlob;
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 830
    .local v4, "_hidl_vec_size":I
    const-wide/16 v5, 0x8

    invoke-virtual {v1, v5, v6, v4}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 831
    const-wide/16 v5, 0xc

    invoke-virtual {v1, v5, v6, v2}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 832
    new-instance v2, Landroid/os/HwBlob;

    mul-int/lit8 v5, v4, 0x20

    invoke-direct {v2, v5}, Landroid/os/HwBlob;-><init>(I)V

    .line 833
    .local v2, "childBlob":Landroid/os/HwBlob;
    const/4 v5, 0x0

    .local v5, "_hidl_index_0":I
    :goto_d5
    if-ge v5, v4, :cond_f6

    .line 835
    mul-int/lit8 v6, v5, 0x20

    int-to-long v6, v6

    .line 836
    .local v6, "_hidl_array_offset_1":J
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [B

    .line 838
    .local v8, "_hidl_array_item_1":[B
    if-eqz v8, :cond_ee

    array-length v9, v8

    const/16 v10, 0x20

    if-ne v9, v10, :cond_ee

    .line 842
    invoke-virtual {v2, v6, v7, v8}, Landroid/os/HwBlob;->putInt8Array(J[B)V

    .line 843
    nop

    .line 833
    .end local v6  # "_hidl_array_offset_1":J
    .end local v8  # "_hidl_array_item_1":[B
    add-int/lit8 v5, v5, 0x1

    goto :goto_d5

    .line 839
    .restart local v6  # "_hidl_array_offset_1":J
    .restart local v8  # "_hidl_array_item_1":[B
    :cond_ee
    new-instance v9, Ljava/lang/IllegalArgumentException;

    const-string v10, "Array element is not of the expected length"

    invoke-direct {v9, v10}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 846
    .end local v5  # "_hidl_index_0":I
    .end local v6  # "_hidl_array_offset_1":J
    .end local v8  # "_hidl_array_item_1":[B
    :cond_f6
    const-wide/16 v5, 0x0

    invoke-virtual {v1, v5, v6, v2}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    .line 848
    .end local v2  # "childBlob":Landroid/os/HwBlob;
    .end local v4  # "_hidl_vec_size":I
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    .line 850
    .end local v1  # "_hidl_blob":Landroid/os/HwBlob;
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 851
    goto/16 :goto_236

    .line 801
    .end local v0  # "_hidl_out_hashchain":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    .end local v3  # "_hidl_is_oneway":Z
    :sswitch_103
    and-int/lit8 v4, p4, 0x1

    if-eqz v4, :cond_108

    goto :goto_109

    :cond_108
    move v3, v2

    .line 802
    .restart local v3  # "_hidl_is_oneway":Z
    :goto_109
    if-eqz v3, :cond_113

    .line 803
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 804
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 805
    goto/16 :goto_236

    .line 806
    :cond_113
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 808
    invoke-virtual {p0}, Landroid/hardware/broadcastradio/V2_0/IBroadcastRadio$Stub;->interfaceDescriptor()Ljava/lang/String;

    move-result-object v0

    .line 809
    .local v0, "_hidl_out_descriptor":Ljava/lang/String;
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 810
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 811
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 812
    goto/16 :goto_236

    .line 784
    .end local v0  # "_hidl_out_descriptor":Ljava/lang/String;
    .end local v3  # "_hidl_is_oneway":Z
    :sswitch_125
    and-int/lit8 v4, p4, 0x1

    if-eqz v4, :cond_12a

    goto :goto_12b

    :cond_12a
    move v3, v2

    .line 785
    .restart local v3  # "_hidl_is_oneway":Z
    :goto_12b
    if-eqz v3, :cond_135

    .line 786
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 787
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 788
    goto/16 :goto_236

    .line 789
    :cond_135
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 791
    invoke-virtual {p2}, Landroid/os/HwParcel;->readNativeHandle()Landroid/os/NativeHandle;

    move-result-object v0

    .line 792
    .local v0, "fd":Landroid/os/NativeHandle;
    invoke-virtual {p2}, Landroid/os/HwParcel;->readStringVector()Ljava/util/ArrayList;

    move-result-object v1

    .line 793
    .local v1, "options":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {p0, v0, v1}, Landroid/hardware/broadcastradio/V2_0/IBroadcastRadio$Stub;->debug(Landroid/os/NativeHandle;Ljava/util/ArrayList;)V

    .line 794
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 795
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 796
    goto/16 :goto_236

    .line 768
    .end local v0  # "fd":Landroid/os/NativeHandle;
    .end local v1  # "options":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v3  # "_hidl_is_oneway":Z
    :sswitch_14b
    and-int/lit8 v4, p4, 0x1

    if-eqz v4, :cond_150

    goto :goto_151

    :cond_150
    move v3, v2

    .line 769
    .restart local v3  # "_hidl_is_oneway":Z
    :goto_151
    if-eqz v3, :cond_15b

    .line 770
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 771
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 772
    goto/16 :goto_236

    .line 773
    :cond_15b
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 775
    invoke-virtual {p0}, Landroid/hardware/broadcastradio/V2_0/IBroadcastRadio$Stub;->interfaceChain()Ljava/util/ArrayList;

    move-result-object v0

    .line 776
    .local v0, "_hidl_out_descriptors":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 777
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStringVector(Ljava/util/ArrayList;)V

    .line 778
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 779
    goto/16 :goto_236

    .line 746
    .end local v0  # "_hidl_out_descriptors":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v3  # "_hidl_is_oneway":Z
    :pswitch_16d  #0x6
    and-int/lit8 v4, p4, 0x1

    if-eqz v4, :cond_172

    move v2, v3

    .line 747
    .local v2, "_hidl_is_oneway":Z
    :cond_172
    if-eqz v2, :cond_17c

    .line 748
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 749
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 750
    goto/16 :goto_236

    .line 751
    :cond_17c
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 753
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt8Vector()Ljava/util/ArrayList;

    move-result-object v0

    .line 754
    .local v0, "enabled":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    invoke-virtual {p2}, Landroid/os/HwParcel;->readStrongBinder()Landroid/os/IHwBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/hardware/broadcastradio/V2_0/IAnnouncementListener;->asInterface(Landroid/os/IHwBinder;)Landroid/hardware/broadcastradio/V2_0/IAnnouncementListener;

    move-result-object v1

    .line 755
    .local v1, "listener":Landroid/hardware/broadcastradio/V2_0/IAnnouncementListener;
    new-instance v3, Landroid/hardware/broadcastradio/V2_0/IBroadcastRadio$Stub$4;

    invoke-direct {v3, p0, p3}, Landroid/hardware/broadcastradio/V2_0/IBroadcastRadio$Stub$4;-><init>(Landroid/hardware/broadcastradio/V2_0/IBroadcastRadio$Stub;Landroid/os/HwParcel;)V

    invoke-virtual {p0, v0, v1, v3}, Landroid/hardware/broadcastradio/V2_0/IBroadcastRadio$Stub;->registerAnnouncementListener(Ljava/util/ArrayList;Landroid/hardware/broadcastradio/V2_0/IAnnouncementListener;Landroid/hardware/broadcastradio/V2_0/IBroadcastRadio$registerAnnouncementListenerCallback;)V

    .line 763
    goto/16 :goto_236

    .line 729
    .end local v0  # "enabled":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    .end local v1  # "listener":Landroid/hardware/broadcastradio/V2_0/IAnnouncementListener;
    .end local v2  # "_hidl_is_oneway":Z
    :pswitch_195  #0x5
    and-int/lit8 v4, p4, 0x1

    if-eqz v4, :cond_19a

    goto :goto_19b

    :cond_19a
    move v3, v2

    .line 730
    .restart local v3  # "_hidl_is_oneway":Z
    :goto_19b
    if-eqz v3, :cond_1a5

    .line 731
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 732
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 733
    goto/16 :goto_236

    .line 734
    :cond_1a5
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 736
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 737
    .local v0, "id":I
    invoke-virtual {p0, v0}, Landroid/hardware/broadcastradio/V2_0/IBroadcastRadio$Stub;->getImage(I)Ljava/util/ArrayList;

    move-result-object v1

    .line 738
    .local v1, "_hidl_out_image":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 739
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeInt8Vector(Ljava/util/ArrayList;)V

    .line 740
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 741
    goto/16 :goto_236

    .line 708
    .end local v0  # "id":I
    .end local v1  # "_hidl_out_image":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    .end local v3  # "_hidl_is_oneway":Z
    :pswitch_1bb  #0x4
    and-int/lit8 v4, p4, 0x1

    if-eqz v4, :cond_1c0

    move v2, v3

    .line 709
    .restart local v2  # "_hidl_is_oneway":Z
    :cond_1c0
    if-eqz v2, :cond_1ca

    .line 710
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 711
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 712
    goto/16 :goto_236

    .line 713
    :cond_1ca
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 715
    invoke-virtual {p2}, Landroid/os/HwParcel;->readStrongBinder()Landroid/os/IHwBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/hardware/broadcastradio/V2_0/ITunerCallback;->asInterface(Landroid/os/IHwBinder;)Landroid/hardware/broadcastradio/V2_0/ITunerCallback;

    move-result-object v0

    .line 716
    .local v0, "callback":Landroid/hardware/broadcastradio/V2_0/ITunerCallback;
    new-instance v1, Landroid/hardware/broadcastradio/V2_0/IBroadcastRadio$Stub$3;

    invoke-direct {v1, p0, p3}, Landroid/hardware/broadcastradio/V2_0/IBroadcastRadio$Stub$3;-><init>(Landroid/hardware/broadcastradio/V2_0/IBroadcastRadio$Stub;Landroid/os/HwParcel;)V

    invoke-virtual {p0, v0, v1}, Landroid/hardware/broadcastradio/V2_0/IBroadcastRadio$Stub;->openSession(Landroid/hardware/broadcastradio/V2_0/ITunerCallback;Landroid/hardware/broadcastradio/V2_0/IBroadcastRadio$openSessionCallback;)V

    .line 724
    goto :goto_236

    .line 688
    .end local v0  # "callback":Landroid/hardware/broadcastradio/V2_0/ITunerCallback;
    .end local v2  # "_hidl_is_oneway":Z
    :pswitch_1de  #0x3
    and-int/lit8 v4, p4, 0x1

    if-eqz v4, :cond_1e3

    move v2, v3

    .line 689
    .restart local v2  # "_hidl_is_oneway":Z
    :cond_1e3
    if-eqz v2, :cond_1ec

    .line 690
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 691
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 692
    goto :goto_236

    .line 693
    :cond_1ec
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 695
    new-instance v0, Landroid/hardware/broadcastradio/V2_0/IBroadcastRadio$Stub$2;

    invoke-direct {v0, p0, p3}, Landroid/hardware/broadcastradio/V2_0/IBroadcastRadio$Stub$2;-><init>(Landroid/hardware/broadcastradio/V2_0/IBroadcastRadio$Stub;Landroid/os/HwParcel;)V

    invoke-virtual {p0, v0}, Landroid/hardware/broadcastradio/V2_0/IBroadcastRadio$Stub;->getDabRegionConfig(Landroid/hardware/broadcastradio/V2_0/IBroadcastRadio$getDabRegionConfigCallback;)V

    .line 703
    goto :goto_236

    .line 667
    .end local v2  # "_hidl_is_oneway":Z
    :pswitch_1f8  #0x2
    and-int/lit8 v4, p4, 0x1

    if-eqz v4, :cond_1fd

    move v2, v3

    .line 668
    .restart local v2  # "_hidl_is_oneway":Z
    :cond_1fd
    if-eqz v2, :cond_206

    .line 669
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 670
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 671
    goto :goto_236

    .line 672
    :cond_206
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 674
    invoke-virtual {p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v0

    .line 675
    .local v0, "full":Z
    new-instance v1, Landroid/hardware/broadcastradio/V2_0/IBroadcastRadio$Stub$1;

    invoke-direct {v1, p0, p3}, Landroid/hardware/broadcastradio/V2_0/IBroadcastRadio$Stub$1;-><init>(Landroid/hardware/broadcastradio/V2_0/IBroadcastRadio$Stub;Landroid/os/HwParcel;)V

    invoke-virtual {p0, v0, v1}, Landroid/hardware/broadcastradio/V2_0/IBroadcastRadio$Stub;->getAmFmRegionConfig(ZLandroid/hardware/broadcastradio/V2_0/IBroadcastRadio$getAmFmRegionConfigCallback;)V

    .line 683
    goto :goto_236

    .line 651
    .end local v0  # "full":Z
    .end local v2  # "_hidl_is_oneway":Z
    :pswitch_216  #0x1
    and-int/lit8 v4, p4, 0x1

    if-eqz v4, :cond_21b

    goto :goto_21c

    :cond_21b
    move v3, v2

    .line 652
    .restart local v3  # "_hidl_is_oneway":Z
    :goto_21c
    if-eqz v3, :cond_225

    .line 653
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 654
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 655
    goto :goto_236

    .line 656
    :cond_225
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 658
    invoke-virtual {p0}, Landroid/hardware/broadcastradio/V2_0/IBroadcastRadio$Stub;->getProperties()Landroid/hardware/broadcastradio/V2_0/Properties;

    move-result-object v0

    .line 659
    .local v0, "_hidl_out_properties":Landroid/hardware/broadcastradio/V2_0/Properties;
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 660
    invoke-virtual {v0, p3}, Landroid/hardware/broadcastradio/V2_0/Properties;->writeToParcel(Landroid/os/HwParcel;)V

    .line 661
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 662
    nop

    .line 932
    .end local v0  # "_hidl_out_properties":Landroid/hardware/broadcastradio/V2_0/Properties;
    .end local v3  # "_hidl_is_oneway":Z
    :cond_236
    :goto_236
    return-void

    nop

    :pswitch_data_238
    .packed-switch 0x1
        :pswitch_216  #00000001
        :pswitch_1f8  #00000002
        :pswitch_1de  #00000003
        :pswitch_1bb  #00000004
        :pswitch_195  #00000005
        :pswitch_16d  #00000006
    .end packed-switch

    :sswitch_data_248
    .sparse-switch
        0xf43484e -> :sswitch_14b
        0xf444247 -> :sswitch_125
        0xf445343 -> :sswitch_103
        0xf485348 -> :sswitch_9e
        0xf494e54 -> :sswitch_87
        0xf4c5444 -> :sswitch_77
        0xf504e47 -> :sswitch_59
        0xf524546 -> :sswitch_37
        0xf535953 -> :sswitch_20
        0xf555444 -> :sswitch_10
    .end sparse-switch
.end method

.method public final ping()V
    .registers 1

    .line 602
    return-void
.end method

.method public queryLocalInterface(Ljava/lang/String;)Landroid/os/IHwInterface;
    .registers 3
    .param p1, "descriptor"  # Ljava/lang/String;

    .line 630
    const-string v0, "android.hardware.broadcastradio@2.0::IBroadcastRadio"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 631
    return-object p0

    .line 633
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

    .line 637
    invoke-virtual {p0, p1}, Landroid/hardware/broadcastradio/V2_0/IBroadcastRadio$Stub;->registerService(Ljava/lang/String;)V

    .line 638
    return-void
.end method

.method public final setHALInstrumentation()V
    .registers 1

    .line 592
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 642
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/hardware/broadcastradio/V2_0/IBroadcastRadio$Stub;->interfaceDescriptor()Ljava/lang/String;

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

    .line 624
    const/4 v0, 0x1

    return v0
.end method
