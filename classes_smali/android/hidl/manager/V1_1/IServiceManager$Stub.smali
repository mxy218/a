.class public abstract Landroid/hidl/manager/V1_1/IServiceManager$Stub;
.super Landroid/os/HwBinder;
.source "IServiceManager.java"

# interfaces
.implements Landroid/hidl/manager/V1_1/IServiceManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hidl/manager/V1_1/IServiceManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 505
    invoke-direct {p0}, Landroid/os/HwBinder;-><init>()V

    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IHwBinder;
    .registers 1

    .line 508
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

    .line 522
    return-void
.end method

.method public final getDebugInfo()Landroid/hidl/base/V1_0/DebugInfo;
    .registers 4

    .line 560
    new-instance v0, Landroid/hidl/base/V1_0/DebugInfo;

    invoke-direct {v0}, Landroid/hidl/base/V1_0/DebugInfo;-><init>()V

    .line 561
    invoke-static {}, Landroid/os/HidlSupport;->getPidIfSharable()I

    move-result v1

    iput v1, v0, Landroid/hidl/base/V1_0/DebugInfo;->pid:I

    .line 562
    const-wide/16 v1, 0x0

    iput-wide v1, v0, Landroid/hidl/base/V1_0/DebugInfo;->ptr:J

    .line 563
    const/4 v1, 0x0

    iput v1, v0, Landroid/hidl/base/V1_0/DebugInfo;->arch:I

    .line 564
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

    .line 534
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x3

    new-array v1, v1, [[B

    const/16 v2, 0x20

    new-array v3, v2, [B

    fill-array-data v3, :array_28

    const/4 v4, 0x0

    aput-object v3, v1, v4

    new-array v3, v2, [B

    fill-array-data v3, :array_3c

    const/4 v4, 0x1

    aput-object v3, v1, v4

    new-array v2, v2, [B

    fill-array-data v2, :array_50

    const/4 v3, 0x2

    aput-object v2, v1, v3

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0

    nop

    :array_28
    .array-data 1
        0xbt
        -0x6ct
        -0x24t
        -0x79t
        0x6ft
        0x74t
        -0x62t
        -0x2et
        0x4at
        -0x68t
        -0xat
        0x1ct
        0x41t
        -0x2ct
        0x6at
        -0x29t
        0x5at
        0x27t
        0x51t
        0x11t
        0x63t
        -0xft
        -0x6at
        -0x76t
        0x8t
        0x42t
        0x13t
        -0x5dt
        0x3ct
        0x68t
        0x4et
        -0xat
    .end array-data

    :array_3c
    .array-data 1
        -0x7bt
        0x39t
        0x4ft
        -0x76t
        0xdt
        0x15t
        -0x19t
        -0x5t
        0x2et
        -0x1ct
        0x5ct
        0x52t
        -0x2ft
        -0x5t
        -0x75t
        -0x71t
        -0x2dt
        -0x3ft
        0x3ct
        0x33t
        0x3et
        0x63t
        -0x39t
        -0x74t
        0x4at
        -0x5ft
        -0x1t
        -0x7at
        -0x7ct
        0xct
        -0xat
        -0x24t
    .end array-data

    :array_50
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
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 513
    new-instance v0, Ljava/util/ArrayList;

    const-string v1, "android.hidl.manager@1.1::IServiceManager"

    const-string v2, "android.hidl.manager@1.0::IServiceManager"

    const-string v3, "android.hidl.base@1.0::IBase"

    filled-new-array {v1, v2, v3}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public final interfaceDescriptor()Ljava/lang/String;
    .registers 2

    .line 528
    const-string v0, "android.hidl.manager@1.1::IServiceManager"

    return-object v0
.end method

.method public final linkToDeath(Landroid/os/IHwBinder$DeathRecipient;J)Z
    .registers 4

    .line 548
    const/4 p1, 0x1

    return p1
.end method

.method public final notifySyspropsChanged()V
    .registers 1

    .line 570
    invoke-static {}, Landroid/os/HwBinder;->enableInstrumentation()V

    .line 572
    return-void
.end method

.method public onTransact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V
    .registers 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 600
    const-string v0, "android.hidl.manager@1.0::IServiceManager"

    const/high16 v1, -0x80000000

    const/4 v2, 0x0

    const/4 v3, 0x1

    packed-switch p1, :pswitch_data_2e8

    const-string v0, "android.hidl.base@1.0::IBase"

    sparse-switch p1, :sswitch_data_2fe

    goto/16 :goto_2e6

    .line 916
    :sswitch_10
    and-int/lit8 p1, p4, 0x1

    if-eqz p1, :cond_15

    move v2, v3

    .line 917
    :cond_15
    if-eqz v2, :cond_2e6

    .line 918
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 919
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 920
    goto/16 :goto_2e6

    .line 903
    :sswitch_1f
    and-int/lit8 p1, p4, 0x1

    if-eqz p1, :cond_24

    move v2, v3

    .line 904
    :cond_24
    if-eq v2, v3, :cond_2e

    .line 905
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 906
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 907
    goto/16 :goto_2e6

    .line 908
    :cond_2e
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 910
    invoke-virtual {p0}, Landroid/hidl/manager/V1_1/IServiceManager$Stub;->notifySyspropsChanged()V

    .line 911
    goto/16 :goto_2e6

    .line 887
    :sswitch_36
    and-int/lit8 p1, p4, 0x1

    if-eqz p1, :cond_3b

    goto :goto_3c

    :cond_3b
    move v3, v2

    .line 888
    :goto_3c
    if-eqz v3, :cond_46

    .line 889
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 890
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 891
    goto/16 :goto_2e6

    .line 892
    :cond_46
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 894
    invoke-virtual {p0}, Landroid/hidl/manager/V1_1/IServiceManager$Stub;->getDebugInfo()Landroid/hidl/base/V1_0/DebugInfo;

    move-result-object p1

    .line 895
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 896
    invoke-virtual {p1, p3}, Landroid/hidl/base/V1_0/DebugInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 897
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 898
    goto/16 :goto_2e6

    .line 872
    :sswitch_58
    and-int/lit8 p1, p4, 0x1

    if-eqz p1, :cond_5d

    goto :goto_5e

    :cond_5d
    move v3, v2

    .line 873
    :goto_5e
    if-eqz v3, :cond_68

    .line 874
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 875
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 876
    goto/16 :goto_2e6

    .line 877
    :cond_68
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 879
    invoke-virtual {p0}, Landroid/hidl/manager/V1_1/IServiceManager$Stub;->ping()V

    .line 880
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 881
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 882
    goto/16 :goto_2e6

    .line 862
    :sswitch_76
    and-int/lit8 p1, p4, 0x1

    if-eqz p1, :cond_7b

    move v2, v3

    .line 863
    :cond_7b
    if-eqz v2, :cond_2e6

    .line 864
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 865
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 866
    goto/16 :goto_2e6

    .line 849
    :sswitch_85
    and-int/lit8 p1, p4, 0x1

    if-eqz p1, :cond_8a

    move v2, v3

    .line 850
    :cond_8a
    if-eq v2, v3, :cond_94

    .line 851
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 852
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 853
    goto/16 :goto_2e6

    .line 854
    :cond_94
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 856
    invoke-virtual {p0}, Landroid/hidl/manager/V1_1/IServiceManager$Stub;->setHALInstrumentation()V

    .line 857
    goto/16 :goto_2e6

    .line 810
    :sswitch_9c
    and-int/lit8 p1, p4, 0x1

    if-eqz p1, :cond_a1

    goto :goto_a2

    :cond_a1
    move v3, v2

    .line 811
    :goto_a2
    if-eqz v3, :cond_ac

    .line 812
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 813
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 814
    goto/16 :goto_2e6

    .line 815
    :cond_ac
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 817
    invoke-virtual {p0}, Landroid/hidl/manager/V1_1/IServiceManager$Stub;->getHashChain()Ljava/util/ArrayList;

    move-result-object p1

    .line 818
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 820
    new-instance p2, Landroid/os/HwBlob;

    const/16 p4, 0x10

    invoke-direct {p2, p4}, Landroid/os/HwBlob;-><init>(I)V

    .line 822
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p4

    .line 823
    const-wide/16 v0, 0x8

    invoke-virtual {p2, v0, v1, p4}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 824
    const-wide/16 v0, 0xc

    invoke-virtual {p2, v0, v1, v2}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 825
    new-instance v0, Landroid/os/HwBlob;

    mul-int/lit8 v1, p4, 0x20

    invoke-direct {v0, v1}, Landroid/os/HwBlob;-><init>(I)V

    .line 826
    nop

    :goto_d3
    if-ge v2, p4, :cond_f4

    .line 828
    mul-int/lit8 v1, v2, 0x20

    int-to-long v3, v1

    .line 829
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    .line 831
    if-eqz v1, :cond_ec

    array-length v5, v1

    const/16 v6, 0x20

    if-ne v5, v6, :cond_ec

    .line 835
    invoke-virtual {v0, v3, v4, v1}, Landroid/os/HwBlob;->putInt8Array(J[B)V

    .line 836
    nop

    .line 826
    add-int/lit8 v2, v2, 0x1

    goto :goto_d3

    .line 832
    :cond_ec
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Array element is not of the expected length"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 839
    :cond_f4
    const-wide/16 v1, 0x0

    invoke-virtual {p2, v1, v2, v0}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    .line 841
    invoke-virtual {p3, p2}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    .line 843
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 844
    goto/16 :goto_2e6

    .line 794
    :sswitch_101
    and-int/lit8 p1, p4, 0x1

    if-eqz p1, :cond_106

    goto :goto_107

    :cond_106
    move v3, v2

    .line 795
    :goto_107
    if-eqz v3, :cond_111

    .line 796
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 797
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 798
    goto/16 :goto_2e6

    .line 799
    :cond_111
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 801
    invoke-virtual {p0}, Landroid/hidl/manager/V1_1/IServiceManager$Stub;->interfaceDescriptor()Ljava/lang/String;

    move-result-object p1

    .line 802
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 803
    invoke-virtual {p3, p1}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 804
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 805
    goto/16 :goto_2e6

    .line 777
    :sswitch_123
    and-int/lit8 p1, p4, 0x1

    if-eqz p1, :cond_128

    goto :goto_129

    :cond_128
    move v3, v2

    .line 778
    :goto_129
    if-eqz v3, :cond_133

    .line 779
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 780
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 781
    goto/16 :goto_2e6

    .line 782
    :cond_133
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 784
    invoke-virtual {p2}, Landroid/os/HwParcel;->readNativeHandle()Landroid/os/NativeHandle;

    move-result-object p1

    .line 785
    invoke-virtual {p2}, Landroid/os/HwParcel;->readStringVector()Ljava/util/ArrayList;

    move-result-object p2

    .line 786
    invoke-virtual {p0, p1, p2}, Landroid/hidl/manager/V1_1/IServiceManager$Stub;->debug(Landroid/os/NativeHandle;Ljava/util/ArrayList;)V

    .line 787
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 788
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 789
    goto/16 :goto_2e6

    .line 761
    :sswitch_149
    and-int/lit8 p1, p4, 0x1

    if-eqz p1, :cond_14e

    goto :goto_14f

    :cond_14e
    move v3, v2

    .line 762
    :goto_14f
    if-eqz v3, :cond_159

    .line 763
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 764
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 765
    goto/16 :goto_2e6

    .line 766
    :cond_159
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 768
    invoke-virtual {p0}, Landroid/hidl/manager/V1_1/IServiceManager$Stub;->interfaceChain()Ljava/util/ArrayList;

    move-result-object p1

    .line 769
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 770
    invoke-virtual {p3, p1}, Landroid/os/HwParcel;->writeStringVector(Ljava/util/ArrayList;)V

    .line 771
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 772
    goto/16 :goto_2e6

    .line 742
    :pswitch_16b  #0x9
    and-int/lit8 p1, p4, 0x1

    if-eqz p1, :cond_170

    goto :goto_171

    :cond_170
    move v3, v2

    .line 743
    :goto_171
    if-eqz v3, :cond_17b

    .line 744
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 745
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 746
    goto/16 :goto_2e6

    .line 747
    :cond_17b
    const-string p1, "android.hidl.manager@1.1::IServiceManager"

    invoke-virtual {p2, p1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 749
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 750
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object p4

    .line 751
    invoke-virtual {p2}, Landroid/os/HwParcel;->readStrongBinder()Landroid/os/IHwBinder;

    move-result-object p2

    invoke-static {p2}, Landroid/hidl/manager/V1_0/IServiceNotification;->asInterface(Landroid/os/IHwBinder;)Landroid/hidl/manager/V1_0/IServiceNotification;

    move-result-object p2

    .line 752
    invoke-virtual {p0, p1, p4, p2}, Landroid/hidl/manager/V1_1/IServiceManager$Stub;->unregisterForNotifications(Ljava/lang/String;Ljava/lang/String;Landroid/hidl/manager/V1_0/IServiceNotification;)Z

    move-result p1

    .line 753
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 754
    invoke-virtual {p3, p1}, Landroid/os/HwParcel;->writeBool(Z)V

    .line 755
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 756
    goto/16 :goto_2e6

    .line 725
    :pswitch_19f  #0x8
    and-int/lit8 p1, p4, 0x1

    if-eqz p1, :cond_1a4

    goto :goto_1a5

    :cond_1a4
    move v3, v2

    .line 726
    :goto_1a5
    if-eqz v3, :cond_1af

    .line 727
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 728
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 729
    goto/16 :goto_2e6

    .line 730
    :cond_1af
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 732
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 733
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object p2

    .line 734
    invoke-virtual {p0, p1, p2}, Landroid/hidl/manager/V1_1/IServiceManager$Stub;->registerPassthroughClient(Ljava/lang/String;Ljava/lang/String;)V

    .line 735
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 736
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 737
    goto/16 :goto_2e6

    .line 709
    :pswitch_1c5  #0x7
    and-int/lit8 p1, p4, 0x1

    if-eqz p1, :cond_1ca

    goto :goto_1cb

    :cond_1ca
    move v3, v2

    .line 710
    :goto_1cb
    if-eqz v3, :cond_1d5

    .line 711
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 712
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 713
    goto/16 :goto_2e6

    .line 714
    :cond_1d5
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 716
    invoke-virtual {p0}, Landroid/hidl/manager/V1_1/IServiceManager$Stub;->debugDump()Ljava/util/ArrayList;

    move-result-object p1

    .line 717
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 718
    invoke-static {p3, p1}, Landroid/hidl/manager/V1_0/IServiceManager$InstanceDebugInfo;->writeVectorToParcel(Landroid/os/HwParcel;Ljava/util/ArrayList;)V

    .line 719
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 720
    goto/16 :goto_2e6

    .line 690
    :pswitch_1e7  #0x6
    and-int/lit8 p1, p4, 0x1

    if-eqz p1, :cond_1ec

    goto :goto_1ed

    :cond_1ec
    move v3, v2

    .line 691
    :goto_1ed
    if-eqz v3, :cond_1f7

    .line 692
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 693
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 694
    goto/16 :goto_2e6

    .line 695
    :cond_1f7
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 697
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 698
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object p4

    .line 699
    invoke-virtual {p2}, Landroid/os/HwParcel;->readStrongBinder()Landroid/os/IHwBinder;

    move-result-object p2

    invoke-static {p2}, Landroid/hidl/manager/V1_0/IServiceNotification;->asInterface(Landroid/os/IHwBinder;)Landroid/hidl/manager/V1_0/IServiceNotification;

    move-result-object p2

    .line 700
    invoke-virtual {p0, p1, p4, p2}, Landroid/hidl/manager/V1_1/IServiceManager$Stub;->registerForNotifications(Ljava/lang/String;Ljava/lang/String;Landroid/hidl/manager/V1_0/IServiceNotification;)Z

    move-result p1

    .line 701
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 702
    invoke-virtual {p3, p1}, Landroid/os/HwParcel;->writeBool(Z)V

    .line 703
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 704
    goto/16 :goto_2e6

    .line 673
    :pswitch_219  #0x5
    and-int/lit8 p1, p4, 0x1

    if-eqz p1, :cond_21e

    goto :goto_21f

    :cond_21e
    move v3, v2

    .line 674
    :goto_21f
    if-eqz v3, :cond_229

    .line 675
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 676
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 677
    goto/16 :goto_2e6

    .line 678
    :cond_229
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 680
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 681
    invoke-virtual {p0, p1}, Landroid/hidl/manager/V1_1/IServiceManager$Stub;->listByInterface(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p1

    .line 682
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 683
    invoke-virtual {p3, p1}, Landroid/os/HwParcel;->writeStringVector(Ljava/util/ArrayList;)V

    .line 684
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 685
    goto/16 :goto_2e6

    .line 657
    :pswitch_23f  #0x4
    and-int/lit8 p1, p4, 0x1

    if-eqz p1, :cond_244

    goto :goto_245

    :cond_244
    move v3, v2

    .line 658
    :goto_245
    if-eqz v3, :cond_24f

    .line 659
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 660
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 661
    goto/16 :goto_2e6

    .line 662
    :cond_24f
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 664
    invoke-virtual {p0}, Landroid/hidl/manager/V1_1/IServiceManager$Stub;->list()Ljava/util/ArrayList;

    move-result-object p1

    .line 665
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 666
    invoke-virtual {p3, p1}, Landroid/os/HwParcel;->writeStringVector(Ljava/util/ArrayList;)V

    .line 667
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 668
    goto/16 :goto_2e6

    .line 639
    :pswitch_261  #0x3
    and-int/lit8 p1, p4, 0x1

    if-eqz p1, :cond_266

    goto :goto_267

    :cond_266
    move v3, v2

    .line 640
    :goto_267
    if-eqz v3, :cond_271

    .line 641
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 642
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 643
    goto/16 :goto_2e6

    .line 644
    :cond_271
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 646
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 647
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object p2

    .line 648
    invoke-virtual {p0, p1, p2}, Landroid/hidl/manager/V1_1/IServiceManager$Stub;->getTransport(Ljava/lang/String;Ljava/lang/String;)B

    move-result p1

    .line 649
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 650
    invoke-virtual {p3, p1}, Landroid/os/HwParcel;->writeInt8(B)V

    .line 651
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 652
    goto :goto_2e6

    .line 621
    :pswitch_28a  #0x2
    and-int/lit8 p1, p4, 0x1

    if-eqz p1, :cond_28f

    goto :goto_290

    :cond_28f
    move v3, v2

    .line 622
    :goto_290
    if-eqz v3, :cond_299

    .line 623
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 624
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 625
    goto :goto_2e6

    .line 626
    :cond_299
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 628
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 629
    invoke-virtual {p2}, Landroid/os/HwParcel;->readStrongBinder()Landroid/os/IHwBinder;

    move-result-object p2

    invoke-static {p2}, Landroid/hidl/base/V1_0/IBase;->asInterface(Landroid/os/IHwBinder;)Landroid/hidl/base/V1_0/IBase;

    move-result-object p2

    .line 630
    invoke-virtual {p0, p1, p2}, Landroid/hidl/manager/V1_1/IServiceManager$Stub;->add(Ljava/lang/String;Landroid/hidl/base/V1_0/IBase;)Z

    move-result p1

    .line 631
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 632
    invoke-virtual {p3, p1}, Landroid/os/HwParcel;->writeBool(Z)V

    .line 633
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 634
    goto :goto_2e6

    .line 603
    :pswitch_2b6  #0x1
    and-int/lit8 p1, p4, 0x1

    if-eqz p1, :cond_2bb

    goto :goto_2bc

    :cond_2bb
    move v3, v2

    .line 604
    :goto_2bc
    if-eqz v3, :cond_2c5

    .line 605
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 606
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 607
    goto :goto_2e6

    .line 608
    :cond_2c5
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 610
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 611
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object p2

    .line 612
    invoke-virtual {p0, p1, p2}, Landroid/hidl/manager/V1_1/IServiceManager$Stub;->get(Ljava/lang/String;Ljava/lang/String;)Landroid/hidl/base/V1_0/IBase;

    move-result-object p1

    .line 613
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 614
    if-nez p1, :cond_2db

    const/4 p1, 0x0

    goto :goto_2df

    :cond_2db
    invoke-interface {p1}, Landroid/hidl/base/V1_0/IBase;->asBinder()Landroid/os/IHwBinder;

    move-result-object p1

    :goto_2df
    invoke-virtual {p3, p1}, Landroid/os/HwParcel;->writeStrongBinder(Landroid/os/IHwBinder;)V

    .line 615
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 616
    nop

    .line 925
    :cond_2e6
    :goto_2e6
    return-void

    nop

    :pswitch_data_2e8
    .packed-switch 0x1
        :pswitch_2b6  #00000001
        :pswitch_28a  #00000002
        :pswitch_261  #00000003
        :pswitch_23f  #00000004
        :pswitch_219  #00000005
        :pswitch_1e7  #00000006
        :pswitch_1c5  #00000007
        :pswitch_19f  #00000008
        :pswitch_16b  #00000009
    .end packed-switch

    :sswitch_data_2fe
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

    .line 554
    return-void
.end method

.method public queryLocalInterface(Ljava/lang/String;)Landroid/os/IHwInterface;
    .registers 3

    .line 582
    const-string v0, "android.hidl.manager@1.1::IServiceManager"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_9

    .line 583
    return-object p0

    .line 585
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

    .line 589
    invoke-virtual {p0, p1}, Landroid/hidl/manager/V1_1/IServiceManager$Stub;->registerService(Ljava/lang/String;)V

    .line 590
    return-void
.end method

.method public final setHALInstrumentation()V
    .registers 1

    .line 544
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 594
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/hidl/manager/V1_1/IServiceManager$Stub;->interfaceDescriptor()Ljava/lang/String;

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

    .line 576
    const/4 p1, 0x1

    return p1
.end method
