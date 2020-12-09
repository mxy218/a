.class public abstract Landroid/hardware/usb/V1_2/IUsbCallback$Stub;
.super Landroid/os/HwBinder;
.source "IUsbCallback.java"

# interfaces
.implements Landroid/hardware/usb/V1_2/IUsbCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/usb/V1_2/IUsbCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 397
    invoke-direct {p0}, Landroid/os/HwBinder;-><init>()V

    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IHwBinder;
    .registers 1

    .line 400
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

    .line 415
    return-void
.end method

.method public final getDebugInfo()Landroid/hidl/base/V1_0/DebugInfo;
    .registers 4

    .line 454
    new-instance v0, Landroid/hidl/base/V1_0/DebugInfo;

    invoke-direct {v0}, Landroid/hidl/base/V1_0/DebugInfo;-><init>()V

    .line 455
    invoke-static {}, Landroid/os/HidlSupport;->getPidIfSharable()I

    move-result v1

    iput v1, v0, Landroid/hidl/base/V1_0/DebugInfo;->pid:I

    .line 456
    const-wide/16 v1, 0x0

    iput-wide v1, v0, Landroid/hidl/base/V1_0/DebugInfo;->ptr:J

    .line 457
    const/4 v1, 0x0

    iput v1, v0, Landroid/hidl/base/V1_0/DebugInfo;->arch:I

    .line 458
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

    .line 427
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
        0x46t
        -0x67t
        0x6ct
        -0x2et
        -0x5ft
        -0x3at
        0x62t
        0x61t
        -0x59t
        0x5at
        0x1ft
        0x6et
        -0x36t
        -0x26t
        0x77t
        -0x12t
        -0x4bt
        -0x7at
        0x1et
        -0x4et
        0x64t
        -0x6t
        0x39t
        -0x47t
        -0x6at
        0x54t
        -0x71t
        -0x20t
        -0x59t
        -0xet
        0x2dt
        -0x2dt
    .end array-data

    :array_44
    .array-data 1
        0x13t
        -0x5bt
        -0x80t
        -0x1dt
        0x5at
        -0x10t
        0x12t
        0x70t
        -0x5ft
        -0x17t
        0x77t
        0x41t
        0x77t
        -0x3bt
        0x1dt
        -0x4bt
        0x1dt
        -0x7at
        0x72t
        -0x1at
        0x13t
        -0x65t
        -0x60t
        0x8t
        0x51t
        -0x1at
        0x54t
        -0x1at
        -0x76t
        0x4dt
        0x7dt
        -0x1t
    .end array-data

    :array_58
    .array-data 1
        0x4bt
        -0x19t
        -0x78t
        0x1et
        0x41t
        0x1bt
        -0x5ct
        0x27t
        -0x7ct
        -0x41t
        0x5bt
        0x73t
        0x54t
        -0x3ft
        0x4at
        -0x20t
        -0x31t
        0x16t
        0x10t
        0x4t
        -0x2dt
        -0x6ct
        0x33t
        -0x56t
        -0x14t
        -0x56t
        -0x50t
        -0x2ft
        -0x62t
        -0x57t
        -0x6dt
        0x54t
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

    .line 405
    new-instance v0, Ljava/util/ArrayList;

    const-string v1, "android.hardware.usb@1.2::IUsbCallback"

    const-string v2, "android.hardware.usb@1.1::IUsbCallback"

    const-string v3, "android.hardware.usb@1.0::IUsbCallback"

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

    .line 421
    const-string v0, "android.hardware.usb@1.2::IUsbCallback"

    return-object v0
.end method

.method public final linkToDeath(Landroid/os/IHwBinder$DeathRecipient;J)Z
    .registers 4

    .line 442
    const/4 p1, 0x1

    return p1
.end method

.method public final notifySyspropsChanged()V
    .registers 1

    .line 464
    invoke-static {}, Landroid/os/HwBinder;->enableInstrumentation()V

    .line 466
    return-void
.end method

.method public onTransact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V
    .registers 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 494
    const-string v0, "android.hardware.usb@1.0::IUsbCallback"

    const/high16 v1, -0x80000000

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eq p1, v3, :cond_1d7

    const/4 v4, 0x2

    if-eq p1, v4, :cond_1b2

    const/4 v0, 0x3

    if-eq p1, v0, :cond_193

    const/4 v0, 0x4

    if-eq p1, v0, :cond_173

    const-string v0, "android.hidl.base@1.0::IBase"

    sparse-switch p1, :sswitch_data_1f6

    goto/16 :goto_1f4

    .line 714
    :sswitch_18
    and-int/lit8 p1, p4, 0x1

    if-eqz p1, :cond_1d

    move v2, v3

    .line 715
    :cond_1d
    if-eqz v2, :cond_1f4

    .line 716
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 717
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 718
    goto/16 :goto_1f4

    .line 701
    :sswitch_27
    and-int/lit8 p1, p4, 0x1

    if-eqz p1, :cond_2c

    move v2, v3

    .line 702
    :cond_2c
    if-eq v2, v3, :cond_36

    .line 703
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 704
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 705
    goto/16 :goto_1f4

    .line 706
    :cond_36
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 708
    invoke-virtual {p0}, Landroid/hardware/usb/V1_2/IUsbCallback$Stub;->notifySyspropsChanged()V

    .line 709
    goto/16 :goto_1f4

    .line 685
    :sswitch_3e
    and-int/lit8 p1, p4, 0x1

    if-eqz p1, :cond_43

    goto :goto_44

    :cond_43
    move v3, v2

    .line 686
    :goto_44
    if-eqz v3, :cond_4e

    .line 687
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 688
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 689
    goto/16 :goto_1f4

    .line 690
    :cond_4e
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 692
    invoke-virtual {p0}, Landroid/hardware/usb/V1_2/IUsbCallback$Stub;->getDebugInfo()Landroid/hidl/base/V1_0/DebugInfo;

    move-result-object p1

    .line 693
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 694
    invoke-virtual {p1, p3}, Landroid/hidl/base/V1_0/DebugInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 695
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 696
    goto/16 :goto_1f4

    .line 670
    :sswitch_60
    and-int/lit8 p1, p4, 0x1

    if-eqz p1, :cond_65

    goto :goto_66

    :cond_65
    move v3, v2

    .line 671
    :goto_66
    if-eqz v3, :cond_70

    .line 672
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 673
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 674
    goto/16 :goto_1f4

    .line 675
    :cond_70
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 677
    invoke-virtual {p0}, Landroid/hardware/usb/V1_2/IUsbCallback$Stub;->ping()V

    .line 678
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 679
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 680
    goto/16 :goto_1f4

    .line 660
    :sswitch_7e
    and-int/lit8 p1, p4, 0x1

    if-eqz p1, :cond_83

    move v2, v3

    .line 661
    :cond_83
    if-eqz v2, :cond_1f4

    .line 662
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 663
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 664
    goto/16 :goto_1f4

    .line 647
    :sswitch_8d
    and-int/lit8 p1, p4, 0x1

    if-eqz p1, :cond_92

    move v2, v3

    .line 648
    :cond_92
    if-eq v2, v3, :cond_9c

    .line 649
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 650
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 651
    goto/16 :goto_1f4

    .line 652
    :cond_9c
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 654
    invoke-virtual {p0}, Landroid/hardware/usb/V1_2/IUsbCallback$Stub;->setHALInstrumentation()V

    .line 655
    goto/16 :goto_1f4

    .line 608
    :sswitch_a4
    and-int/lit8 p1, p4, 0x1

    if-eqz p1, :cond_a9

    goto :goto_aa

    :cond_a9
    move v3, v2

    .line 609
    :goto_aa
    if-eqz v3, :cond_b4

    .line 610
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 611
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 612
    goto/16 :goto_1f4

    .line 613
    :cond_b4
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 615
    invoke-virtual {p0}, Landroid/hardware/usb/V1_2/IUsbCallback$Stub;->getHashChain()Ljava/util/ArrayList;

    move-result-object p1

    .line 616
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 618
    new-instance p2, Landroid/os/HwBlob;

    const/16 p4, 0x10

    invoke-direct {p2, p4}, Landroid/os/HwBlob;-><init>(I)V

    .line 620
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p4

    .line 621
    const-wide/16 v0, 0x8

    invoke-virtual {p2, v0, v1, p4}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 622
    const-wide/16 v0, 0xc

    invoke-virtual {p2, v0, v1, v2}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 623
    new-instance v0, Landroid/os/HwBlob;

    mul-int/lit8 v1, p4, 0x20

    invoke-direct {v0, v1}, Landroid/os/HwBlob;-><init>(I)V

    .line 624
    nop

    :goto_db
    if-ge v2, p4, :cond_fc

    .line 626
    mul-int/lit8 v1, v2, 0x20

    int-to-long v3, v1

    .line 627
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    .line 629
    if-eqz v1, :cond_f4

    array-length v5, v1

    const/16 v6, 0x20

    if-ne v5, v6, :cond_f4

    .line 633
    invoke-virtual {v0, v3, v4, v1}, Landroid/os/HwBlob;->putInt8Array(J[B)V

    .line 634
    nop

    .line 624
    add-int/lit8 v2, v2, 0x1

    goto :goto_db

    .line 630
    :cond_f4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Array element is not of the expected length"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 637
    :cond_fc
    const-wide/16 v1, 0x0

    invoke-virtual {p2, v1, v2, v0}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    .line 639
    invoke-virtual {p3, p2}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    .line 641
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 642
    goto/16 :goto_1f4

    .line 592
    :sswitch_109
    and-int/lit8 p1, p4, 0x1

    if-eqz p1, :cond_10e

    goto :goto_10f

    :cond_10e
    move v3, v2

    .line 593
    :goto_10f
    if-eqz v3, :cond_119

    .line 594
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 595
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 596
    goto/16 :goto_1f4

    .line 597
    :cond_119
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 599
    invoke-virtual {p0}, Landroid/hardware/usb/V1_2/IUsbCallback$Stub;->interfaceDescriptor()Ljava/lang/String;

    move-result-object p1

    .line 600
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 601
    invoke-virtual {p3, p1}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 602
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 603
    goto/16 :goto_1f4

    .line 575
    :sswitch_12b
    and-int/lit8 p1, p4, 0x1

    if-eqz p1, :cond_130

    goto :goto_131

    :cond_130
    move v3, v2

    .line 576
    :goto_131
    if-eqz v3, :cond_13b

    .line 577
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 578
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 579
    goto/16 :goto_1f4

    .line 580
    :cond_13b
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 582
    invoke-virtual {p2}, Landroid/os/HwParcel;->readNativeHandle()Landroid/os/NativeHandle;

    move-result-object p1

    .line 583
    invoke-virtual {p2}, Landroid/os/HwParcel;->readStringVector()Ljava/util/ArrayList;

    move-result-object p2

    .line 584
    invoke-virtual {p0, p1, p2}, Landroid/hardware/usb/V1_2/IUsbCallback$Stub;->debug(Landroid/os/NativeHandle;Ljava/util/ArrayList;)V

    .line 585
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 586
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 587
    goto/16 :goto_1f4

    .line 559
    :sswitch_151
    and-int/lit8 p1, p4, 0x1

    if-eqz p1, :cond_156

    goto :goto_157

    :cond_156
    move v3, v2

    .line 560
    :goto_157
    if-eqz v3, :cond_161

    .line 561
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 562
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 563
    goto/16 :goto_1f4

    .line 564
    :cond_161
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 566
    invoke-virtual {p0}, Landroid/hardware/usb/V1_2/IUsbCallback$Stub;->interfaceChain()Ljava/util/ArrayList;

    move-result-object p1

    .line 567
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 568
    invoke-virtual {p3, p1}, Landroid/os/HwParcel;->writeStringVector(Ljava/util/ArrayList;)V

    .line 569
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 570
    goto/16 :goto_1f4

    .line 544
    :cond_173
    and-int/lit8 p1, p4, 0x1

    if-eqz p1, :cond_178

    move v2, v3

    .line 545
    :cond_178
    if-eq v2, v3, :cond_182

    .line 546
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 547
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 548
    goto/16 :goto_1f4

    .line 549
    :cond_182
    const-string p1, "android.hardware.usb@1.2::IUsbCallback"

    invoke-virtual {p2, p1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 551
    invoke-static {p2}, Landroid/hardware/usb/V1_2/PortStatus;->readVectorFromParcel(Landroid/os/HwParcel;)Ljava/util/ArrayList;

    move-result-object p1

    .line 552
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p2

    .line 553
    invoke-virtual {p0, p1, p2}, Landroid/hardware/usb/V1_2/IUsbCallback$Stub;->notifyPortStatusChange_1_2(Ljava/util/ArrayList;I)V

    .line 554
    goto :goto_1f4

    .line 529
    :cond_193
    and-int/lit8 p1, p4, 0x1

    if-eqz p1, :cond_198

    move v2, v3

    .line 530
    :cond_198
    if-eq v2, v3, :cond_1a1

    .line 531
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 532
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 533
    goto :goto_1f4

    .line 534
    :cond_1a1
    const-string p1, "android.hardware.usb@1.1::IUsbCallback"

    invoke-virtual {p2, p1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 536
    invoke-static {p2}, Landroid/hardware/usb/V1_1/PortStatus_1_1;->readVectorFromParcel(Landroid/os/HwParcel;)Ljava/util/ArrayList;

    move-result-object p1

    .line 537
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p2

    .line 538
    invoke-virtual {p0, p1, p2}, Landroid/hardware/usb/V1_2/IUsbCallback$Stub;->notifyPortStatusChange_1_1(Ljava/util/ArrayList;I)V

    .line 539
    goto :goto_1f4

    .line 512
    :cond_1b2
    and-int/lit8 p1, p4, 0x1

    if-eqz p1, :cond_1b7

    move v2, v3

    .line 513
    :cond_1b7
    if-eq v2, v3, :cond_1c0

    .line 514
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 515
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 516
    goto :goto_1f4

    .line 517
    :cond_1c0
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 519
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 520
    new-instance p3, Landroid/hardware/usb/V1_0/PortRole;

    invoke-direct {p3}, Landroid/hardware/usb/V1_0/PortRole;-><init>()V

    .line 521
    invoke-virtual {p3, p2}, Landroid/hardware/usb/V1_0/PortRole;->readFromParcel(Landroid/os/HwParcel;)V

    .line 522
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p2

    .line 523
    invoke-virtual {p0, p1, p3, p2}, Landroid/hardware/usb/V1_2/IUsbCallback$Stub;->notifyRoleSwitchStatus(Ljava/lang/String;Landroid/hardware/usb/V1_0/PortRole;I)V

    .line 524
    goto :goto_1f4

    .line 497
    :cond_1d7
    and-int/lit8 p1, p4, 0x1

    if-eqz p1, :cond_1dc

    move v2, v3

    .line 498
    :cond_1dc
    if-eq v2, v3, :cond_1e5

    .line 499
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 500
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 501
    goto :goto_1f4

    .line 502
    :cond_1e5
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 504
    invoke-static {p2}, Landroid/hardware/usb/V1_0/PortStatus;->readVectorFromParcel(Landroid/os/HwParcel;)Ljava/util/ArrayList;

    move-result-object p1

    .line 505
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p2

    .line 506
    invoke-virtual {p0, p1, p2}, Landroid/hardware/usb/V1_2/IUsbCallback$Stub;->notifyPortStatusChange(Ljava/util/ArrayList;I)V

    .line 507
    nop

    .line 723
    :cond_1f4
    :goto_1f4
    return-void

    nop

    :sswitch_data_1f6
    .sparse-switch
        0xf43484e -> :sswitch_151
        0xf444247 -> :sswitch_12b
        0xf445343 -> :sswitch_109
        0xf485348 -> :sswitch_a4
        0xf494e54 -> :sswitch_8d
        0xf4c5444 -> :sswitch_7e
        0xf504e47 -> :sswitch_60
        0xf524546 -> :sswitch_3e
        0xf535953 -> :sswitch_27
        0xf555444 -> :sswitch_18
    .end sparse-switch
.end method

.method public final ping()V
    .registers 1

    .line 448
    return-void
.end method

.method public queryLocalInterface(Ljava/lang/String;)Landroid/os/IHwInterface;
    .registers 3

    .line 476
    const-string v0, "android.hardware.usb@1.2::IUsbCallback"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_9

    .line 477
    return-object p0

    .line 479
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

    .line 483
    invoke-virtual {p0, p1}, Landroid/hardware/usb/V1_2/IUsbCallback$Stub;->registerService(Ljava/lang/String;)V

    .line 484
    return-void
.end method

.method public final setHALInstrumentation()V
    .registers 1

    .line 438
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 488
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/hardware/usb/V1_2/IUsbCallback$Stub;->interfaceDescriptor()Ljava/lang/String;

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

    .line 470
    const/4 p1, 0x1

    return p1
.end method
