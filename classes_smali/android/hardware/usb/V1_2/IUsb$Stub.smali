.class public abstract Landroid/hardware/usb/V1_2/IUsb$Stub;
.super Landroid/os/HwBinder;
.source "IUsb.java"

# interfaces
.implements Landroid/hardware/usb/V1_2/IUsb;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/usb/V1_2/IUsb;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 435
    invoke-direct {p0}, Landroid/os/HwBinder;-><init>()V

    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IHwBinder;
    .registers 1

    .line 438
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

    .line 453
    return-void
.end method

.method public final getDebugInfo()Landroid/hidl/base/V1_0/DebugInfo;
    .registers 4

    .line 492
    new-instance v0, Landroid/hidl/base/V1_0/DebugInfo;

    invoke-direct {v0}, Landroid/hidl/base/V1_0/DebugInfo;-><init>()V

    .line 493
    invoke-static {}, Landroid/os/HidlSupport;->getPidIfSharable()I

    move-result v1

    iput v1, v0, Landroid/hidl/base/V1_0/DebugInfo;->pid:I

    .line 494
    const-wide/16 v1, 0x0

    iput-wide v1, v0, Landroid/hidl/base/V1_0/DebugInfo;->ptr:J

    .line 495
    const/4 v1, 0x0

    iput v1, v0, Landroid/hidl/base/V1_0/DebugInfo;->arch:I

    .line 496
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

    .line 465
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x4

    new-array v1, v1, [[B

    const/16 v2, 0x20

    new-array v3, v2, [B

    fill-array-data v3, :array_30

    const/4 v4, 0x0

    aput-object v3, v1, v4

    new-array v3, v2, [B

    fill-array-data v3, :array_44

    const/4 v4, 0x1

    aput-object v3, v1, v4

    new-array v3, v2, [B

    fill-array-data v3, :array_58

    const/4 v4, 0x2

    aput-object v3, v1, v4

    new-array v2, v2, [B

    fill-array-data v2, :array_6c

    const/4 v3, 0x3

    aput-object v2, v1, v3

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0

    nop

    :array_30
    .array-data 1
        0x61t
        -0x44t
        0x30t
        0x2et
        0x7ct
        -0x69t
        0x4ct
        0x59t
        -0x4et
        0x58t
        -0x68t
        -0x3bt
        -0x7bt
        -0x3at
        -0x17t
        0x68t
        0x5et
        -0x76t
        -0x7ft
        0x2t
        0x1bt
        0x1bt
        -0x13t
        0x3et
        -0x13t
        -0xbt
        0x22t
        0x41t
        -0x68t
        -0xet
        0x78t
        0x5at
    .end array-data

    :array_44
    .array-data 1
        -0x52t
        -0x44t
        -0x27t
        -0x1t
        0x2dt
        -0x60t
        0x5ct
        -0x63t
        0x4ct
        0x43t
        -0x67t
        0x16t
        -0xct
        0xdt
        -0x3t
        0x21t
        -0x65t
        -0x59t
        0x62t
        -0x67t
        0x19t
        0x0t
        0x7ct
        -0x47t
        -0x7ft
        -0x15t
        -0xft
        0x50t
        0x6t
        0x4bt
        0x4ft
        -0x7et
    .end array-data

    :array_58
    .array-data 1
        0x4et
        -0xbt
        0x74t
        -0x67t
        0x27t
        0x3ft
        0x38t
        -0x43t
        -0x43t
        -0x30t
        -0x3ft
        0x5et
        0x56t
        -0x12t
        0x7at
        0x4bt
        -0x3bt
        -0xft
        -0x76t
        0x56t
        0x44t
        0x9t
        0x21t
        0x70t
        -0x5bt
        0x31t
        -0x21t
        0x35t
        0x41t
        -0x27t
        -0x20t
        0x15t
    .end array-data

    :array_6c
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
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 443
    new-instance v0, Ljava/util/ArrayList;

    const-string v1, "android.hardware.usb@1.2::IUsb"

    const-string v2, "android.hardware.usb@1.1::IUsb"

    const-string v3, "android.hardware.usb@1.0::IUsb"

    const-string v4, "android.hidl.base@1.0::IBase"

    filled-new-array {v1, v2, v3, v4}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public final interfaceDescriptor()Ljava/lang/String;
    .registers 2

    .line 459
    const-string v0, "android.hardware.usb@1.2::IUsb"

    return-object v0
.end method

.method public final linkToDeath(Landroid/os/IHwBinder$DeathRecipient;J)Z
    .registers 4

    .line 480
    const/4 p1, 0x1

    return p1
.end method

.method public final notifySyspropsChanged()V
    .registers 1

    .line 502
    invoke-static {}, Landroid/os/HwBinder;->enableInstrumentation()V

    .line 504
    return-void
.end method

.method public onTransact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V
    .registers 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 532
    const-string v0, "android.hardware.usb@1.0::IUsb"

    const/high16 v1, -0x80000000

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eq p1, v3, :cond_1e6

    const/4 v4, 0x2

    if-eq p1, v4, :cond_1c9

    const/4 v4, 0x3

    if-eq p1, v4, :cond_1b4

    const/4 v0, 0x4

    const-string v4, "android.hardware.usb@1.2::IUsb"

    if-eq p1, v0, :cond_197

    const/4 v0, 0x5

    if-eq p1, v0, :cond_178

    const-string v0, "android.hidl.base@1.0::IBase"

    sparse-switch p1, :sswitch_data_208

    goto/16 :goto_207

    .line 763
    :sswitch_1d
    and-int/lit8 p1, p4, 0x1

    if-eqz p1, :cond_22

    move v2, v3

    .line 764
    :cond_22
    if-eqz v2, :cond_207

    .line 765
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 766
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 767
    goto/16 :goto_207

    .line 750
    :sswitch_2c
    and-int/lit8 p1, p4, 0x1

    if-eqz p1, :cond_31

    move v2, v3

    .line 751
    :cond_31
    if-eq v2, v3, :cond_3b

    .line 752
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 753
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 754
    goto/16 :goto_207

    .line 755
    :cond_3b
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 757
    invoke-virtual {p0}, Landroid/hardware/usb/V1_2/IUsb$Stub;->notifySyspropsChanged()V

    .line 758
    goto/16 :goto_207

    .line 734
    :sswitch_43
    and-int/lit8 p1, p4, 0x1

    if-eqz p1, :cond_48

    goto :goto_49

    :cond_48
    move v3, v2

    .line 735
    :goto_49
    if-eqz v3, :cond_53

    .line 736
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 737
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 738
    goto/16 :goto_207

    .line 739
    :cond_53
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 741
    invoke-virtual {p0}, Landroid/hardware/usb/V1_2/IUsb$Stub;->getDebugInfo()Landroid/hidl/base/V1_0/DebugInfo;

    move-result-object p1

    .line 742
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 743
    invoke-virtual {p1, p3}, Landroid/hidl/base/V1_0/DebugInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 744
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 745
    goto/16 :goto_207

    .line 719
    :sswitch_65
    and-int/lit8 p1, p4, 0x1

    if-eqz p1, :cond_6a

    goto :goto_6b

    :cond_6a
    move v3, v2

    .line 720
    :goto_6b
    if-eqz v3, :cond_75

    .line 721
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 722
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 723
    goto/16 :goto_207

    .line 724
    :cond_75
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 726
    invoke-virtual {p0}, Landroid/hardware/usb/V1_2/IUsb$Stub;->ping()V

    .line 727
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 728
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 729
    goto/16 :goto_207

    .line 709
    :sswitch_83
    and-int/lit8 p1, p4, 0x1

    if-eqz p1, :cond_88

    move v2, v3

    .line 710
    :cond_88
    if-eqz v2, :cond_207

    .line 711
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 712
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 713
    goto/16 :goto_207

    .line 696
    :sswitch_92
    and-int/lit8 p1, p4, 0x1

    if-eqz p1, :cond_97

    move v2, v3

    .line 697
    :cond_97
    if-eq v2, v3, :cond_a1

    .line 698
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 699
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 700
    goto/16 :goto_207

    .line 701
    :cond_a1
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 703
    invoke-virtual {p0}, Landroid/hardware/usb/V1_2/IUsb$Stub;->setHALInstrumentation()V

    .line 704
    goto/16 :goto_207

    .line 657
    :sswitch_a9
    and-int/lit8 p1, p4, 0x1

    if-eqz p1, :cond_ae

    goto :goto_af

    :cond_ae
    move v3, v2

    .line 658
    :goto_af
    if-eqz v3, :cond_b9

    .line 659
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 660
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 661
    goto/16 :goto_207

    .line 662
    :cond_b9
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 664
    invoke-virtual {p0}, Landroid/hardware/usb/V1_2/IUsb$Stub;->getHashChain()Ljava/util/ArrayList;

    move-result-object p1

    .line 665
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 667
    new-instance p2, Landroid/os/HwBlob;

    const/16 p4, 0x10

    invoke-direct {p2, p4}, Landroid/os/HwBlob;-><init>(I)V

    .line 669
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p4

    .line 670
    const-wide/16 v0, 0x8

    invoke-virtual {p2, v0, v1, p4}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 671
    const-wide/16 v0, 0xc

    invoke-virtual {p2, v0, v1, v2}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 672
    new-instance v0, Landroid/os/HwBlob;

    mul-int/lit8 v1, p4, 0x20

    invoke-direct {v0, v1}, Landroid/os/HwBlob;-><init>(I)V

    .line 673
    nop

    :goto_e0
    if-ge v2, p4, :cond_101

    .line 675
    mul-int/lit8 v1, v2, 0x20

    int-to-long v3, v1

    .line 676
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    .line 678
    if-eqz v1, :cond_f9

    array-length v5, v1

    const/16 v6, 0x20

    if-ne v5, v6, :cond_f9

    .line 682
    invoke-virtual {v0, v3, v4, v1}, Landroid/os/HwBlob;->putInt8Array(J[B)V

    .line 683
    nop

    .line 673
    add-int/lit8 v2, v2, 0x1

    goto :goto_e0

    .line 679
    :cond_f9
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Array element is not of the expected length"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 686
    :cond_101
    const-wide/16 v1, 0x0

    invoke-virtual {p2, v1, v2, v0}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    .line 688
    invoke-virtual {p3, p2}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    .line 690
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 691
    goto/16 :goto_207

    .line 641
    :sswitch_10e
    and-int/lit8 p1, p4, 0x1

    if-eqz p1, :cond_113

    goto :goto_114

    :cond_113
    move v3, v2

    .line 642
    :goto_114
    if-eqz v3, :cond_11e

    .line 643
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 644
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 645
    goto/16 :goto_207

    .line 646
    :cond_11e
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 648
    invoke-virtual {p0}, Landroid/hardware/usb/V1_2/IUsb$Stub;->interfaceDescriptor()Ljava/lang/String;

    move-result-object p1

    .line 649
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 650
    invoke-virtual {p3, p1}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 651
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 652
    goto/16 :goto_207

    .line 624
    :sswitch_130
    and-int/lit8 p1, p4, 0x1

    if-eqz p1, :cond_135

    goto :goto_136

    :cond_135
    move v3, v2

    .line 625
    :goto_136
    if-eqz v3, :cond_140

    .line 626
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 627
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 628
    goto/16 :goto_207

    .line 629
    :cond_140
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 631
    invoke-virtual {p2}, Landroid/os/HwParcel;->readNativeHandle()Landroid/os/NativeHandle;

    move-result-object p1

    .line 632
    invoke-virtual {p2}, Landroid/os/HwParcel;->readStringVector()Ljava/util/ArrayList;

    move-result-object p2

    .line 633
    invoke-virtual {p0, p1, p2}, Landroid/hardware/usb/V1_2/IUsb$Stub;->debug(Landroid/os/NativeHandle;Ljava/util/ArrayList;)V

    .line 634
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 635
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 636
    goto/16 :goto_207

    .line 608
    :sswitch_156
    and-int/lit8 p1, p4, 0x1

    if-eqz p1, :cond_15b

    goto :goto_15c

    :cond_15b
    move v3, v2

    .line 609
    :goto_15c
    if-eqz v3, :cond_166

    .line 610
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 611
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 612
    goto/16 :goto_207

    .line 613
    :cond_166
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 615
    invoke-virtual {p0}, Landroid/hardware/usb/V1_2/IUsb$Stub;->interfaceChain()Ljava/util/ArrayList;

    move-result-object p1

    .line 616
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 617
    invoke-virtual {p3, p1}, Landroid/os/HwParcel;->writeStringVector(Ljava/util/ArrayList;)V

    .line 618
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 619
    goto/16 :goto_207

    .line 593
    :cond_178
    and-int/lit8 p1, p4, 0x1

    if-eqz p1, :cond_17d

    move v2, v3

    .line 594
    :cond_17d
    if-eq v2, v3, :cond_187

    .line 595
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 596
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 597
    goto/16 :goto_207

    .line 598
    :cond_187
    invoke-virtual {p2, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 600
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 601
    invoke-virtual {p2}, Landroid/os/HwParcel;->readBool()Z

    move-result p2

    .line 602
    invoke-virtual {p0, p1, p2}, Landroid/hardware/usb/V1_2/IUsb$Stub;->enableContaminantPresenceProtection(Ljava/lang/String;Z)V

    .line 603
    goto/16 :goto_207

    .line 578
    :cond_197
    and-int/lit8 p1, p4, 0x1

    if-eqz p1, :cond_19c

    move v2, v3

    .line 579
    :cond_19c
    if-eq v2, v3, :cond_1a5

    .line 580
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 581
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 582
    goto :goto_207

    .line 583
    :cond_1a5
    invoke-virtual {p2, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 585
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 586
    invoke-virtual {p2}, Landroid/os/HwParcel;->readBool()Z

    move-result p2

    .line 587
    invoke-virtual {p0, p1, p2}, Landroid/hardware/usb/V1_2/IUsb$Stub;->enableContaminantPresenceDetection(Ljava/lang/String;Z)V

    .line 588
    goto :goto_207

    .line 565
    :cond_1b4
    and-int/lit8 p1, p4, 0x1

    if-eqz p1, :cond_1b9

    move v2, v3

    .line 566
    :cond_1b9
    if-eq v2, v3, :cond_1c2

    .line 567
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 568
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 569
    goto :goto_207

    .line 570
    :cond_1c2
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 572
    invoke-virtual {p0}, Landroid/hardware/usb/V1_2/IUsb$Stub;->queryPortStatus()V

    .line 573
    goto :goto_207

    .line 551
    :cond_1c9
    and-int/lit8 p1, p4, 0x1

    if-eqz p1, :cond_1ce

    move v2, v3

    .line 552
    :cond_1ce
    if-eq v2, v3, :cond_1d7

    .line 553
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 554
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 555
    goto :goto_207

    .line 556
    :cond_1d7
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 558
    invoke-virtual {p2}, Landroid/os/HwParcel;->readStrongBinder()Landroid/os/IHwBinder;

    move-result-object p1

    invoke-static {p1}, Landroid/hardware/usb/V1_0/IUsbCallback;->asInterface(Landroid/os/IHwBinder;)Landroid/hardware/usb/V1_0/IUsbCallback;

    move-result-object p1

    .line 559
    invoke-virtual {p0, p1}, Landroid/hardware/usb/V1_2/IUsb$Stub;->setCallback(Landroid/hardware/usb/V1_0/IUsbCallback;)V

    .line 560
    goto :goto_207

    .line 535
    :cond_1e6
    and-int/lit8 p1, p4, 0x1

    if-eqz p1, :cond_1eb

    move v2, v3

    .line 536
    :cond_1eb
    if-eq v2, v3, :cond_1f4

    .line 537
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 538
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 539
    goto :goto_207

    .line 540
    :cond_1f4
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 542
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 543
    new-instance p3, Landroid/hardware/usb/V1_0/PortRole;

    invoke-direct {p3}, Landroid/hardware/usb/V1_0/PortRole;-><init>()V

    .line 544
    invoke-virtual {p3, p2}, Landroid/hardware/usb/V1_0/PortRole;->readFromParcel(Landroid/os/HwParcel;)V

    .line 545
    invoke-virtual {p0, p1, p3}, Landroid/hardware/usb/V1_2/IUsb$Stub;->switchRole(Ljava/lang/String;Landroid/hardware/usb/V1_0/PortRole;)V

    .line 546
    nop

    .line 772
    :cond_207
    :goto_207
    return-void

    :sswitch_data_208
    .sparse-switch
        0xf43484e -> :sswitch_156
        0xf444247 -> :sswitch_130
        0xf445343 -> :sswitch_10e
        0xf485348 -> :sswitch_a9
        0xf494e54 -> :sswitch_92
        0xf4c5444 -> :sswitch_83
        0xf504e47 -> :sswitch_65
        0xf524546 -> :sswitch_43
        0xf535953 -> :sswitch_2c
        0xf555444 -> :sswitch_1d
    .end sparse-switch
.end method

.method public final ping()V
    .registers 1

    .line 486
    return-void
.end method

.method public queryLocalInterface(Ljava/lang/String;)Landroid/os/IHwInterface;
    .registers 3

    .line 514
    const-string v0, "android.hardware.usb@1.2::IUsb"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_9

    .line 515
    return-object p0

    .line 517
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

    .line 521
    invoke-virtual {p0, p1}, Landroid/hardware/usb/V1_2/IUsb$Stub;->registerService(Ljava/lang/String;)V

    .line 522
    return-void
.end method

.method public final setHALInstrumentation()V
    .registers 1

    .line 476
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 526
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/hardware/usb/V1_2/IUsb$Stub;->interfaceDescriptor()Ljava/lang/String;

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

    .line 508
    const/4 p1, 0x1

    return p1
.end method
