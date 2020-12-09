.class public abstract Landroid/hardware/usb/V1_1/IUsbCallback$Stub;
.super Landroid/os/HwBinder;
.source "IUsbCallback.java"

# interfaces
.implements Landroid/hardware/usb/V1_1/IUsbCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/usb/V1_1/IUsbCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 379
    invoke-direct {p0}, Landroid/os/HwBinder;-><init>()V

    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IHwBinder;
    .registers 1

    .line 382
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

    .line 396
    return-void
.end method

.method public final getDebugInfo()Landroid/hidl/base/V1_0/DebugInfo;
    .registers 4

    .line 434
    new-instance v0, Landroid/hidl/base/V1_0/DebugInfo;

    invoke-direct {v0}, Landroid/hidl/base/V1_0/DebugInfo;-><init>()V

    .line 435
    invoke-static {}, Landroid/os/HidlSupport;->getPidIfSharable()I

    move-result v1

    iput v1, v0, Landroid/hidl/base/V1_0/DebugInfo;->pid:I

    .line 436
    const-wide/16 v1, 0x0

    iput-wide v1, v0, Landroid/hidl/base/V1_0/DebugInfo;->ptr:J

    .line 437
    const/4 v1, 0x0

    iput v1, v0, Landroid/hidl/base/V1_0/DebugInfo;->arch:I

    .line 438
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

    .line 408
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

    :array_3c
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

    .line 387
    new-instance v0, Ljava/util/ArrayList;

    const-string v1, "android.hardware.usb@1.1::IUsbCallback"

    const-string v2, "android.hardware.usb@1.0::IUsbCallback"

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

    .line 402
    const-string v0, "android.hardware.usb@1.1::IUsbCallback"

    return-object v0
.end method

.method public final linkToDeath(Landroid/os/IHwBinder$DeathRecipient;J)Z
    .registers 4

    .line 422
    const/4 p1, 0x1

    return p1
.end method

.method public final notifySyspropsChanged()V
    .registers 1

    .line 444
    invoke-static {}, Landroid/os/HwBinder;->enableInstrumentation()V

    .line 446
    return-void
.end method

.method public onTransact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V
    .registers 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 474
    const-string v0, "android.hardware.usb@1.0::IUsbCallback"

    const/high16 v1, -0x80000000

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eq p1, v3, :cond_1b3

    const/4 v4, 0x2

    if-eq p1, v4, :cond_18e

    const/4 v0, 0x3

    if-eq p1, v0, :cond_16f

    const-string v0, "android.hidl.base@1.0::IBase"

    sparse-switch p1, :sswitch_data_1d2

    goto/16 :goto_1d0

    .line 679
    :sswitch_15
    and-int/lit8 p1, p4, 0x1

    if-eqz p1, :cond_1a

    move v2, v3

    .line 680
    :cond_1a
    if-eqz v2, :cond_1d0

    .line 681
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 682
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 683
    goto/16 :goto_1d0

    .line 666
    :sswitch_24
    and-int/lit8 p1, p4, 0x1

    if-eqz p1, :cond_29

    move v2, v3

    .line 667
    :cond_29
    if-eq v2, v3, :cond_33

    .line 668
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 669
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 670
    goto/16 :goto_1d0

    .line 671
    :cond_33
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 673
    invoke-virtual {p0}, Landroid/hardware/usb/V1_1/IUsbCallback$Stub;->notifySyspropsChanged()V

    .line 674
    goto/16 :goto_1d0

    .line 650
    :sswitch_3b
    and-int/lit8 p1, p4, 0x1

    if-eqz p1, :cond_40

    goto :goto_41

    :cond_40
    move v3, v2

    .line 651
    :goto_41
    if-eqz v3, :cond_4b

    .line 652
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 653
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 654
    goto/16 :goto_1d0

    .line 655
    :cond_4b
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 657
    invoke-virtual {p0}, Landroid/hardware/usb/V1_1/IUsbCallback$Stub;->getDebugInfo()Landroid/hidl/base/V1_0/DebugInfo;

    move-result-object p1

    .line 658
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 659
    invoke-virtual {p1, p3}, Landroid/hidl/base/V1_0/DebugInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 660
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 661
    goto/16 :goto_1d0

    .line 635
    :sswitch_5d
    and-int/lit8 p1, p4, 0x1

    if-eqz p1, :cond_62

    goto :goto_63

    :cond_62
    move v3, v2

    .line 636
    :goto_63
    if-eqz v3, :cond_6d

    .line 637
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 638
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 639
    goto/16 :goto_1d0

    .line 640
    :cond_6d
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 642
    invoke-virtual {p0}, Landroid/hardware/usb/V1_1/IUsbCallback$Stub;->ping()V

    .line 643
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 644
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 645
    goto/16 :goto_1d0

    .line 625
    :sswitch_7b
    and-int/lit8 p1, p4, 0x1

    if-eqz p1, :cond_80

    move v2, v3

    .line 626
    :cond_80
    if-eqz v2, :cond_1d0

    .line 627
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 628
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 629
    goto/16 :goto_1d0

    .line 612
    :sswitch_8a
    and-int/lit8 p1, p4, 0x1

    if-eqz p1, :cond_8f

    move v2, v3

    .line 613
    :cond_8f
    if-eq v2, v3, :cond_99

    .line 614
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 615
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 616
    goto/16 :goto_1d0

    .line 617
    :cond_99
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 619
    invoke-virtual {p0}, Landroid/hardware/usb/V1_1/IUsbCallback$Stub;->setHALInstrumentation()V

    .line 620
    goto/16 :goto_1d0

    .line 573
    :sswitch_a1
    and-int/lit8 p1, p4, 0x1

    if-eqz p1, :cond_a6

    goto :goto_a7

    :cond_a6
    move v3, v2

    .line 574
    :goto_a7
    if-eqz v3, :cond_b1

    .line 575
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 576
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 577
    goto/16 :goto_1d0

    .line 578
    :cond_b1
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 580
    invoke-virtual {p0}, Landroid/hardware/usb/V1_1/IUsbCallback$Stub;->getHashChain()Ljava/util/ArrayList;

    move-result-object p1

    .line 581
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 583
    new-instance p2, Landroid/os/HwBlob;

    const/16 p4, 0x10

    invoke-direct {p2, p4}, Landroid/os/HwBlob;-><init>(I)V

    .line 585
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p4

    .line 586
    const-wide/16 v0, 0x8

    invoke-virtual {p2, v0, v1, p4}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 587
    const-wide/16 v0, 0xc

    invoke-virtual {p2, v0, v1, v2}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 588
    new-instance v0, Landroid/os/HwBlob;

    mul-int/lit8 v1, p4, 0x20

    invoke-direct {v0, v1}, Landroid/os/HwBlob;-><init>(I)V

    .line 589
    nop

    :goto_d8
    if-ge v2, p4, :cond_f9

    .line 591
    mul-int/lit8 v1, v2, 0x20

    int-to-long v3, v1

    .line 592
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    .line 594
    if-eqz v1, :cond_f1

    array-length v5, v1

    const/16 v6, 0x20

    if-ne v5, v6, :cond_f1

    .line 598
    invoke-virtual {v0, v3, v4, v1}, Landroid/os/HwBlob;->putInt8Array(J[B)V

    .line 599
    nop

    .line 589
    add-int/lit8 v2, v2, 0x1

    goto :goto_d8

    .line 595
    :cond_f1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Array element is not of the expected length"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 602
    :cond_f9
    const-wide/16 v1, 0x0

    invoke-virtual {p2, v1, v2, v0}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    .line 604
    invoke-virtual {p3, p2}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    .line 606
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 607
    goto/16 :goto_1d0

    .line 557
    :sswitch_106
    and-int/lit8 p1, p4, 0x1

    if-eqz p1, :cond_10b

    goto :goto_10c

    :cond_10b
    move v3, v2

    .line 558
    :goto_10c
    if-eqz v3, :cond_116

    .line 559
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 560
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 561
    goto/16 :goto_1d0

    .line 562
    :cond_116
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 564
    invoke-virtual {p0}, Landroid/hardware/usb/V1_1/IUsbCallback$Stub;->interfaceDescriptor()Ljava/lang/String;

    move-result-object p1

    .line 565
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 566
    invoke-virtual {p3, p1}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 567
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 568
    goto/16 :goto_1d0

    .line 540
    :sswitch_128
    and-int/lit8 p1, p4, 0x1

    if-eqz p1, :cond_12d

    goto :goto_12e

    :cond_12d
    move v3, v2

    .line 541
    :goto_12e
    if-eqz v3, :cond_138

    .line 542
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 543
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 544
    goto/16 :goto_1d0

    .line 545
    :cond_138
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 547
    invoke-virtual {p2}, Landroid/os/HwParcel;->readNativeHandle()Landroid/os/NativeHandle;

    move-result-object p1

    .line 548
    invoke-virtual {p2}, Landroid/os/HwParcel;->readStringVector()Ljava/util/ArrayList;

    move-result-object p2

    .line 549
    invoke-virtual {p0, p1, p2}, Landroid/hardware/usb/V1_1/IUsbCallback$Stub;->debug(Landroid/os/NativeHandle;Ljava/util/ArrayList;)V

    .line 550
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 551
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 552
    goto/16 :goto_1d0

    .line 524
    :sswitch_14e
    and-int/lit8 p1, p4, 0x1

    if-eqz p1, :cond_153

    goto :goto_154

    :cond_153
    move v3, v2

    .line 525
    :goto_154
    if-eqz v3, :cond_15e

    .line 526
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 527
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 528
    goto/16 :goto_1d0

    .line 529
    :cond_15e
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 531
    invoke-virtual {p0}, Landroid/hardware/usb/V1_1/IUsbCallback$Stub;->interfaceChain()Ljava/util/ArrayList;

    move-result-object p1

    .line 532
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 533
    invoke-virtual {p3, p1}, Landroid/os/HwParcel;->writeStringVector(Ljava/util/ArrayList;)V

    .line 534
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 535
    goto :goto_1d0

    .line 509
    :cond_16f
    and-int/lit8 p1, p4, 0x1

    if-eqz p1, :cond_174

    move v2, v3

    .line 510
    :cond_174
    if-eq v2, v3, :cond_17d

    .line 511
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 512
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 513
    goto :goto_1d0

    .line 514
    :cond_17d
    const-string p1, "android.hardware.usb@1.1::IUsbCallback"

    invoke-virtual {p2, p1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 516
    invoke-static {p2}, Landroid/hardware/usb/V1_1/PortStatus_1_1;->readVectorFromParcel(Landroid/os/HwParcel;)Ljava/util/ArrayList;

    move-result-object p1

    .line 517
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p2

    .line 518
    invoke-virtual {p0, p1, p2}, Landroid/hardware/usb/V1_1/IUsbCallback$Stub;->notifyPortStatusChange_1_1(Ljava/util/ArrayList;I)V

    .line 519
    goto :goto_1d0

    .line 492
    :cond_18e
    and-int/lit8 p1, p4, 0x1

    if-eqz p1, :cond_193

    move v2, v3

    .line 493
    :cond_193
    if-eq v2, v3, :cond_19c

    .line 494
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 495
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 496
    goto :goto_1d0

    .line 497
    :cond_19c
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 499
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 500
    new-instance p3, Landroid/hardware/usb/V1_0/PortRole;

    invoke-direct {p3}, Landroid/hardware/usb/V1_0/PortRole;-><init>()V

    .line 501
    invoke-virtual {p3, p2}, Landroid/hardware/usb/V1_0/PortRole;->readFromParcel(Landroid/os/HwParcel;)V

    .line 502
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p2

    .line 503
    invoke-virtual {p0, p1, p3, p2}, Landroid/hardware/usb/V1_1/IUsbCallback$Stub;->notifyRoleSwitchStatus(Ljava/lang/String;Landroid/hardware/usb/V1_0/PortRole;I)V

    .line 504
    goto :goto_1d0

    .line 477
    :cond_1b3
    and-int/lit8 p1, p4, 0x1

    if-eqz p1, :cond_1b8

    move v2, v3

    .line 478
    :cond_1b8
    if-eq v2, v3, :cond_1c1

    .line 479
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 480
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 481
    goto :goto_1d0

    .line 482
    :cond_1c1
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 484
    invoke-static {p2}, Landroid/hardware/usb/V1_0/PortStatus;->readVectorFromParcel(Landroid/os/HwParcel;)Ljava/util/ArrayList;

    move-result-object p1

    .line 485
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p2

    .line 486
    invoke-virtual {p0, p1, p2}, Landroid/hardware/usb/V1_1/IUsbCallback$Stub;->notifyPortStatusChange(Ljava/util/ArrayList;I)V

    .line 487
    nop

    .line 688
    :cond_1d0
    :goto_1d0
    return-void

    nop

    :sswitch_data_1d2
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

    .line 428
    return-void
.end method

.method public queryLocalInterface(Ljava/lang/String;)Landroid/os/IHwInterface;
    .registers 3

    .line 456
    const-string v0, "android.hardware.usb@1.1::IUsbCallback"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_9

    .line 457
    return-object p0

    .line 459
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

    .line 463
    invoke-virtual {p0, p1}, Landroid/hardware/usb/V1_1/IUsbCallback$Stub;->registerService(Ljava/lang/String;)V

    .line 464
    return-void
.end method

.method public final setHALInstrumentation()V
    .registers 1

    .line 418
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 468
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/hardware/usb/V1_1/IUsbCallback$Stub;->interfaceDescriptor()Ljava/lang/String;

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

    .line 450
    const/4 p1, 0x1

    return p1
.end method
