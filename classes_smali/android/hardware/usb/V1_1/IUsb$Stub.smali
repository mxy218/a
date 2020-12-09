.class public abstract Landroid/hardware/usb/V1_1/IUsb$Stub;
.super Landroid/os/HwBinder;
.source "IUsb.java"

# interfaces
.implements Landroid/hardware/usb/V1_1/IUsb;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/usb/V1_1/IUsb;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 356
    invoke-direct {p0}, Landroid/os/HwBinder;-><init>()V

    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IHwBinder;
    .registers 1

    .line 359
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

    .line 373
    return-void
.end method

.method public final getDebugInfo()Landroid/hidl/base/V1_0/DebugInfo;
    .registers 4

    .line 411
    new-instance v0, Landroid/hidl/base/V1_0/DebugInfo;

    invoke-direct {v0}, Landroid/hidl/base/V1_0/DebugInfo;-><init>()V

    .line 412
    invoke-static {}, Landroid/os/HidlSupport;->getPidIfSharable()I

    move-result v1

    iput v1, v0, Landroid/hidl/base/V1_0/DebugInfo;->pid:I

    .line 413
    const-wide/16 v1, 0x0

    iput-wide v1, v0, Landroid/hidl/base/V1_0/DebugInfo;->ptr:J

    .line 414
    const/4 v1, 0x0

    iput v1, v0, Landroid/hidl/base/V1_0/DebugInfo;->arch:I

    .line 415
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

    .line 385
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

    :array_3c
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

    .line 364
    new-instance v0, Ljava/util/ArrayList;

    const-string v1, "android.hardware.usb@1.1::IUsb"

    const-string v2, "android.hardware.usb@1.0::IUsb"

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

    .line 379
    const-string v0, "android.hardware.usb@1.1::IUsb"

    return-object v0
.end method

.method public final linkToDeath(Landroid/os/IHwBinder$DeathRecipient;J)Z
    .registers 4

    .line 399
    const/4 p1, 0x1

    return p1
.end method

.method public final notifySyspropsChanged()V
    .registers 1

    .line 421
    invoke-static {}, Landroid/os/HwBinder;->enableInstrumentation()V

    .line 423
    return-void
.end method

.method public onTransact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V
    .registers 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 451
    const-string v0, "android.hardware.usb@1.0::IUsb"

    const/high16 v1, -0x80000000

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eq p1, v3, :cond_1a0

    const/4 v4, 0x2

    if-eq p1, v4, :cond_183

    const/4 v4, 0x3

    if-eq p1, v4, :cond_16e

    const-string v0, "android.hidl.base@1.0::IBase"

    sparse-switch p1, :sswitch_data_1c2

    goto/16 :goto_1c1

    .line 652
    :sswitch_15
    and-int/lit8 p1, p4, 0x1

    if-eqz p1, :cond_1a

    move v2, v3

    .line 653
    :cond_1a
    if-eqz v2, :cond_1c1

    .line 654
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 655
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 656
    goto/16 :goto_1c1

    .line 639
    :sswitch_24
    and-int/lit8 p1, p4, 0x1

    if-eqz p1, :cond_29

    move v2, v3

    .line 640
    :cond_29
    if-eq v2, v3, :cond_33

    .line 641
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 642
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 643
    goto/16 :goto_1c1

    .line 644
    :cond_33
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 646
    invoke-virtual {p0}, Landroid/hardware/usb/V1_1/IUsb$Stub;->notifySyspropsChanged()V

    .line 647
    goto/16 :goto_1c1

    .line 623
    :sswitch_3b
    and-int/lit8 p1, p4, 0x1

    if-eqz p1, :cond_40

    goto :goto_41

    :cond_40
    move v3, v2

    .line 624
    :goto_41
    if-eqz v3, :cond_4b

    .line 625
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 626
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 627
    goto/16 :goto_1c1

    .line 628
    :cond_4b
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 630
    invoke-virtual {p0}, Landroid/hardware/usb/V1_1/IUsb$Stub;->getDebugInfo()Landroid/hidl/base/V1_0/DebugInfo;

    move-result-object p1

    .line 631
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 632
    invoke-virtual {p1, p3}, Landroid/hidl/base/V1_0/DebugInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 633
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 634
    goto/16 :goto_1c1

    .line 608
    :sswitch_5d
    and-int/lit8 p1, p4, 0x1

    if-eqz p1, :cond_62

    goto :goto_63

    :cond_62
    move v3, v2

    .line 609
    :goto_63
    if-eqz v3, :cond_6d

    .line 610
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 611
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 612
    goto/16 :goto_1c1

    .line 613
    :cond_6d
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 615
    invoke-virtual {p0}, Landroid/hardware/usb/V1_1/IUsb$Stub;->ping()V

    .line 616
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 617
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 618
    goto/16 :goto_1c1

    .line 598
    :sswitch_7b
    and-int/lit8 p1, p4, 0x1

    if-eqz p1, :cond_80

    move v2, v3

    .line 599
    :cond_80
    if-eqz v2, :cond_1c1

    .line 600
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 601
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 602
    goto/16 :goto_1c1

    .line 585
    :sswitch_8a
    and-int/lit8 p1, p4, 0x1

    if-eqz p1, :cond_8f

    move v2, v3

    .line 586
    :cond_8f
    if-eq v2, v3, :cond_99

    .line 587
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 588
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 589
    goto/16 :goto_1c1

    .line 590
    :cond_99
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 592
    invoke-virtual {p0}, Landroid/hardware/usb/V1_1/IUsb$Stub;->setHALInstrumentation()V

    .line 593
    goto/16 :goto_1c1

    .line 546
    :sswitch_a1
    and-int/lit8 p1, p4, 0x1

    if-eqz p1, :cond_a6

    goto :goto_a7

    :cond_a6
    move v3, v2

    .line 547
    :goto_a7
    if-eqz v3, :cond_b1

    .line 548
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 549
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 550
    goto/16 :goto_1c1

    .line 551
    :cond_b1
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 553
    invoke-virtual {p0}, Landroid/hardware/usb/V1_1/IUsb$Stub;->getHashChain()Ljava/util/ArrayList;

    move-result-object p1

    .line 554
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 556
    new-instance p2, Landroid/os/HwBlob;

    const/16 p4, 0x10

    invoke-direct {p2, p4}, Landroid/os/HwBlob;-><init>(I)V

    .line 558
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p4

    .line 559
    const-wide/16 v0, 0x8

    invoke-virtual {p2, v0, v1, p4}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 560
    const-wide/16 v0, 0xc

    invoke-virtual {p2, v0, v1, v2}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 561
    new-instance v0, Landroid/os/HwBlob;

    mul-int/lit8 v1, p4, 0x20

    invoke-direct {v0, v1}, Landroid/os/HwBlob;-><init>(I)V

    .line 562
    nop

    :goto_d8
    if-ge v2, p4, :cond_f9

    .line 564
    mul-int/lit8 v1, v2, 0x20

    int-to-long v3, v1

    .line 565
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    .line 567
    if-eqz v1, :cond_f1

    array-length v5, v1

    const/16 v6, 0x20

    if-ne v5, v6, :cond_f1

    .line 571
    invoke-virtual {v0, v3, v4, v1}, Landroid/os/HwBlob;->putInt8Array(J[B)V

    .line 572
    nop

    .line 562
    add-int/lit8 v2, v2, 0x1

    goto :goto_d8

    .line 568
    :cond_f1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Array element is not of the expected length"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 575
    :cond_f9
    const-wide/16 v1, 0x0

    invoke-virtual {p2, v1, v2, v0}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    .line 577
    invoke-virtual {p3, p2}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    .line 579
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 580
    goto/16 :goto_1c1

    .line 530
    :sswitch_106
    and-int/lit8 p1, p4, 0x1

    if-eqz p1, :cond_10b

    goto :goto_10c

    :cond_10b
    move v3, v2

    .line 531
    :goto_10c
    if-eqz v3, :cond_116

    .line 532
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 533
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 534
    goto/16 :goto_1c1

    .line 535
    :cond_116
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 537
    invoke-virtual {p0}, Landroid/hardware/usb/V1_1/IUsb$Stub;->interfaceDescriptor()Ljava/lang/String;

    move-result-object p1

    .line 538
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 539
    invoke-virtual {p3, p1}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 540
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 541
    goto/16 :goto_1c1

    .line 513
    :sswitch_128
    and-int/lit8 p1, p4, 0x1

    if-eqz p1, :cond_12d

    goto :goto_12e

    :cond_12d
    move v3, v2

    .line 514
    :goto_12e
    if-eqz v3, :cond_138

    .line 515
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 516
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 517
    goto/16 :goto_1c1

    .line 518
    :cond_138
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 520
    invoke-virtual {p2}, Landroid/os/HwParcel;->readNativeHandle()Landroid/os/NativeHandle;

    move-result-object p1

    .line 521
    invoke-virtual {p2}, Landroid/os/HwParcel;->readStringVector()Ljava/util/ArrayList;

    move-result-object p2

    .line 522
    invoke-virtual {p0, p1, p2}, Landroid/hardware/usb/V1_1/IUsb$Stub;->debug(Landroid/os/NativeHandle;Ljava/util/ArrayList;)V

    .line 523
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 524
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 525
    goto/16 :goto_1c1

    .line 497
    :sswitch_14e
    and-int/lit8 p1, p4, 0x1

    if-eqz p1, :cond_153

    goto :goto_154

    :cond_153
    move v3, v2

    .line 498
    :goto_154
    if-eqz v3, :cond_15d

    .line 499
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 500
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 501
    goto :goto_1c1

    .line 502
    :cond_15d
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 504
    invoke-virtual {p0}, Landroid/hardware/usb/V1_1/IUsb$Stub;->interfaceChain()Ljava/util/ArrayList;

    move-result-object p1

    .line 505
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 506
    invoke-virtual {p3, p1}, Landroid/os/HwParcel;->writeStringVector(Ljava/util/ArrayList;)V

    .line 507
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 508
    goto :goto_1c1

    .line 484
    :cond_16e
    and-int/lit8 p1, p4, 0x1

    if-eqz p1, :cond_173

    move v2, v3

    .line 485
    :cond_173
    if-eq v2, v3, :cond_17c

    .line 486
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 487
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 488
    goto :goto_1c1

    .line 489
    :cond_17c
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 491
    invoke-virtual {p0}, Landroid/hardware/usb/V1_1/IUsb$Stub;->queryPortStatus()V

    .line 492
    goto :goto_1c1

    .line 470
    :cond_183
    and-int/lit8 p1, p4, 0x1

    if-eqz p1, :cond_188

    move v2, v3

    .line 471
    :cond_188
    if-eq v2, v3, :cond_191

    .line 472
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 473
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 474
    goto :goto_1c1

    .line 475
    :cond_191
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 477
    invoke-virtual {p2}, Landroid/os/HwParcel;->readStrongBinder()Landroid/os/IHwBinder;

    move-result-object p1

    invoke-static {p1}, Landroid/hardware/usb/V1_0/IUsbCallback;->asInterface(Landroid/os/IHwBinder;)Landroid/hardware/usb/V1_0/IUsbCallback;

    move-result-object p1

    .line 478
    invoke-virtual {p0, p1}, Landroid/hardware/usb/V1_1/IUsb$Stub;->setCallback(Landroid/hardware/usb/V1_0/IUsbCallback;)V

    .line 479
    goto :goto_1c1

    .line 454
    :cond_1a0
    and-int/lit8 p1, p4, 0x1

    if-eqz p1, :cond_1a5

    move v2, v3

    .line 455
    :cond_1a5
    if-eq v2, v3, :cond_1ae

    .line 456
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 457
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 458
    goto :goto_1c1

    .line 459
    :cond_1ae
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 461
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 462
    new-instance p3, Landroid/hardware/usb/V1_0/PortRole;

    invoke-direct {p3}, Landroid/hardware/usb/V1_0/PortRole;-><init>()V

    .line 463
    invoke-virtual {p3, p2}, Landroid/hardware/usb/V1_0/PortRole;->readFromParcel(Landroid/os/HwParcel;)V

    .line 464
    invoke-virtual {p0, p1, p3}, Landroid/hardware/usb/V1_1/IUsb$Stub;->switchRole(Ljava/lang/String;Landroid/hardware/usb/V1_0/PortRole;)V

    .line 465
    nop

    .line 661
    :cond_1c1
    :goto_1c1
    return-void

    :sswitch_data_1c2
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

    .line 405
    return-void
.end method

.method public queryLocalInterface(Ljava/lang/String;)Landroid/os/IHwInterface;
    .registers 3

    .line 433
    const-string v0, "android.hardware.usb@1.1::IUsb"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_9

    .line 434
    return-object p0

    .line 436
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

    .line 440
    invoke-virtual {p0, p1}, Landroid/hardware/usb/V1_1/IUsb$Stub;->registerService(Ljava/lang/String;)V

    .line 441
    return-void
.end method

.method public final setHALInstrumentation()V
    .registers 1

    .line 395
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 445
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/hardware/usb/V1_1/IUsb$Stub;->interfaceDescriptor()Ljava/lang/String;

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

    .line 427
    const/4 p1, 0x1

    return p1
.end method
