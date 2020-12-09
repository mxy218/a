.class public abstract Landroid/hardware/usb/gadget/V1_0/IUsbGadget$Stub;
.super Landroid/os/HwBinder;
.source "IUsbGadget.java"

# interfaces
.implements Landroid/hardware/usb/gadget/V1_0/IUsbGadget;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/usb/gadget/V1_0/IUsbGadget;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 365
    invoke-direct {p0}, Landroid/os/HwBinder;-><init>()V

    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IHwBinder;
    .registers 1

    .line 368
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

    .line 381
    return-void
.end method

.method public final getDebugInfo()Landroid/hidl/base/V1_0/DebugInfo;
    .registers 4

    .line 418
    new-instance v0, Landroid/hidl/base/V1_0/DebugInfo;

    invoke-direct {v0}, Landroid/hidl/base/V1_0/DebugInfo;-><init>()V

    .line 419
    invoke-static {}, Landroid/os/HidlSupport;->getPidIfSharable()I

    move-result v1

    iput v1, v0, Landroid/hidl/base/V1_0/DebugInfo;->pid:I

    .line 420
    const-wide/16 v1, 0x0

    iput-wide v1, v0, Landroid/hidl/base/V1_0/DebugInfo;->ptr:J

    .line 421
    const/4 v1, 0x0

    iput v1, v0, Landroid/hidl/base/V1_0/DebugInfo;->arch:I

    .line 422
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

    .line 393
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
        -0x73t
        -0x21t
        -0x59t
        0x54t
        0x27t
        0x72t
        -0x34t
        0x7bt
        -0x36t
        0x19t
        -0x69t
        0x2bt
        0x2dt
        -0x7bt
        0x62t
        0x64t
        -0x11t
        -0x5dt
        0x19t
        0x14t
        -0x41t
        -0x30t
        -0x68t
        -0x52t
        -0x49t
        -0x3et
        0x7t
        -0x63t
        -0x6bt
        0x1t
        -0x6ct
        -0x35t
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

    .line 373
    new-instance v0, Ljava/util/ArrayList;

    const-string v1, "android.hardware.usb.gadget@1.0::IUsbGadget"

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

    .line 387
    const-string v0, "android.hardware.usb.gadget@1.0::IUsbGadget"

    return-object v0
.end method

.method public final linkToDeath(Landroid/os/IHwBinder$DeathRecipient;J)Z
    .registers 4

    .line 406
    const/4 p1, 0x1

    return p1
.end method

.method public final notifySyspropsChanged()V
    .registers 1

    .line 428
    invoke-static {}, Landroid/os/HwBinder;->enableInstrumentation()V

    .line 430
    return-void
.end method

.method public onTransact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V
    .registers 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 458
    const-string v0, "android.hardware.usb.gadget@1.0::IUsbGadget"

    const/high16 v1, -0x80000000

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eq p1, v3, :cond_188

    const/4 v4, 0x2

    if-eq p1, v4, :cond_16b

    const-string v0, "android.hidl.base@1.0::IBase"

    sparse-switch p1, :sswitch_data_1b0

    goto/16 :goto_1ae

    .line 646
    :sswitch_12
    and-int/lit8 p1, p4, 0x1

    if-eqz p1, :cond_17

    move v2, v3

    .line 647
    :cond_17
    if-eqz v2, :cond_1ae

    .line 648
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 649
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 650
    goto/16 :goto_1ae

    .line 633
    :sswitch_21
    and-int/lit8 p1, p4, 0x1

    if-eqz p1, :cond_26

    move v2, v3

    .line 634
    :cond_26
    if-eq v2, v3, :cond_30

    .line 635
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 636
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 637
    goto/16 :goto_1ae

    .line 638
    :cond_30
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 640
    invoke-virtual {p0}, Landroid/hardware/usb/gadget/V1_0/IUsbGadget$Stub;->notifySyspropsChanged()V

    .line 641
    goto/16 :goto_1ae

    .line 617
    :sswitch_38
    and-int/lit8 p1, p4, 0x1

    if-eqz p1, :cond_3d

    goto :goto_3e

    :cond_3d
    move v3, v2

    .line 618
    :goto_3e
    if-eqz v3, :cond_48

    .line 619
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 620
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 621
    goto/16 :goto_1ae

    .line 622
    :cond_48
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 624
    invoke-virtual {p0}, Landroid/hardware/usb/gadget/V1_0/IUsbGadget$Stub;->getDebugInfo()Landroid/hidl/base/V1_0/DebugInfo;

    move-result-object p1

    .line 625
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 626
    invoke-virtual {p1, p3}, Landroid/hidl/base/V1_0/DebugInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 627
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 628
    goto/16 :goto_1ae

    .line 602
    :sswitch_5a
    and-int/lit8 p1, p4, 0x1

    if-eqz p1, :cond_5f

    goto :goto_60

    :cond_5f
    move v3, v2

    .line 603
    :goto_60
    if-eqz v3, :cond_6a

    .line 604
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 605
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 606
    goto/16 :goto_1ae

    .line 607
    :cond_6a
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 609
    invoke-virtual {p0}, Landroid/hardware/usb/gadget/V1_0/IUsbGadget$Stub;->ping()V

    .line 610
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 611
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 612
    goto/16 :goto_1ae

    .line 592
    :sswitch_78
    and-int/lit8 p1, p4, 0x1

    if-eqz p1, :cond_7d

    move v2, v3

    .line 593
    :cond_7d
    if-eqz v2, :cond_1ae

    .line 594
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 595
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 596
    goto/16 :goto_1ae

    .line 579
    :sswitch_87
    and-int/lit8 p1, p4, 0x1

    if-eqz p1, :cond_8c

    move v2, v3

    .line 580
    :cond_8c
    if-eq v2, v3, :cond_96

    .line 581
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 582
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 583
    goto/16 :goto_1ae

    .line 584
    :cond_96
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 586
    invoke-virtual {p0}, Landroid/hardware/usb/gadget/V1_0/IUsbGadget$Stub;->setHALInstrumentation()V

    .line 587
    goto/16 :goto_1ae

    .line 540
    :sswitch_9e
    and-int/lit8 p1, p4, 0x1

    if-eqz p1, :cond_a3

    goto :goto_a4

    :cond_a3
    move v3, v2

    .line 541
    :goto_a4
    if-eqz v3, :cond_ae

    .line 542
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 543
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 544
    goto/16 :goto_1ae

    .line 545
    :cond_ae
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 547
    invoke-virtual {p0}, Landroid/hardware/usb/gadget/V1_0/IUsbGadget$Stub;->getHashChain()Ljava/util/ArrayList;

    move-result-object p1

    .line 548
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 550
    new-instance p2, Landroid/os/HwBlob;

    const/16 p4, 0x10

    invoke-direct {p2, p4}, Landroid/os/HwBlob;-><init>(I)V

    .line 552
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p4

    .line 553
    const-wide/16 v0, 0x8

    invoke-virtual {p2, v0, v1, p4}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 554
    const-wide/16 v0, 0xc

    invoke-virtual {p2, v0, v1, v2}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 555
    new-instance v0, Landroid/os/HwBlob;

    mul-int/lit8 v1, p4, 0x20

    invoke-direct {v0, v1}, Landroid/os/HwBlob;-><init>(I)V

    .line 556
    nop

    :goto_d5
    if-ge v2, p4, :cond_f6

    .line 558
    mul-int/lit8 v1, v2, 0x20

    int-to-long v3, v1

    .line 559
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    .line 561
    if-eqz v1, :cond_ee

    array-length v5, v1

    const/16 v6, 0x20

    if-ne v5, v6, :cond_ee

    .line 565
    invoke-virtual {v0, v3, v4, v1}, Landroid/os/HwBlob;->putInt8Array(J[B)V

    .line 566
    nop

    .line 556
    add-int/lit8 v2, v2, 0x1

    goto :goto_d5

    .line 562
    :cond_ee
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Array element is not of the expected length"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 569
    :cond_f6
    const-wide/16 v1, 0x0

    invoke-virtual {p2, v1, v2, v0}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    .line 571
    invoke-virtual {p3, p2}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    .line 573
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 574
    goto/16 :goto_1ae

    .line 524
    :sswitch_103
    and-int/lit8 p1, p4, 0x1

    if-eqz p1, :cond_108

    goto :goto_109

    :cond_108
    move v3, v2

    .line 525
    :goto_109
    if-eqz v3, :cond_113

    .line 526
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 527
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 528
    goto/16 :goto_1ae

    .line 529
    :cond_113
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 531
    invoke-virtual {p0}, Landroid/hardware/usb/gadget/V1_0/IUsbGadget$Stub;->interfaceDescriptor()Ljava/lang/String;

    move-result-object p1

    .line 532
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 533
    invoke-virtual {p3, p1}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 534
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 535
    goto/16 :goto_1ae

    .line 507
    :sswitch_125
    and-int/lit8 p1, p4, 0x1

    if-eqz p1, :cond_12a

    goto :goto_12b

    :cond_12a
    move v3, v2

    .line 508
    :goto_12b
    if-eqz v3, :cond_135

    .line 509
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 510
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 511
    goto/16 :goto_1ae

    .line 512
    :cond_135
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 514
    invoke-virtual {p2}, Landroid/os/HwParcel;->readNativeHandle()Landroid/os/NativeHandle;

    move-result-object p1

    .line 515
    invoke-virtual {p2}, Landroid/os/HwParcel;->readStringVector()Ljava/util/ArrayList;

    move-result-object p2

    .line 516
    invoke-virtual {p0, p1, p2}, Landroid/hardware/usb/gadget/V1_0/IUsbGadget$Stub;->debug(Landroid/os/NativeHandle;Ljava/util/ArrayList;)V

    .line 517
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 518
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 519
    goto/16 :goto_1ae

    .line 491
    :sswitch_14b
    and-int/lit8 p1, p4, 0x1

    if-eqz p1, :cond_150

    goto :goto_151

    :cond_150
    move v3, v2

    .line 492
    :goto_151
    if-eqz v3, :cond_15a

    .line 493
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 494
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 495
    goto :goto_1ae

    .line 496
    :cond_15a
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 498
    invoke-virtual {p0}, Landroid/hardware/usb/gadget/V1_0/IUsbGadget$Stub;->interfaceChain()Ljava/util/ArrayList;

    move-result-object p1

    .line 499
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 500
    invoke-virtual {p3, p1}, Landroid/os/HwParcel;->writeStringVector(Ljava/util/ArrayList;)V

    .line 501
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 502
    goto :goto_1ae

    .line 477
    :cond_16b
    and-int/lit8 p1, p4, 0x1

    if-eqz p1, :cond_170

    move v2, v3

    .line 478
    :cond_170
    if-eq v2, v3, :cond_179

    .line 479
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 480
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 481
    goto :goto_1ae

    .line 482
    :cond_179
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 484
    invoke-virtual {p2}, Landroid/os/HwParcel;->readStrongBinder()Landroid/os/IHwBinder;

    move-result-object p1

    invoke-static {p1}, Landroid/hardware/usb/gadget/V1_0/IUsbGadgetCallback;->asInterface(Landroid/os/IHwBinder;)Landroid/hardware/usb/gadget/V1_0/IUsbGadgetCallback;

    move-result-object p1

    .line 485
    invoke-virtual {p0, p1}, Landroid/hardware/usb/gadget/V1_0/IUsbGadget$Stub;->getCurrentUsbFunctions(Landroid/hardware/usb/gadget/V1_0/IUsbGadgetCallback;)V

    .line 486
    goto :goto_1ae

    .line 461
    :cond_188
    and-int/lit8 p1, p4, 0x1

    if-eqz p1, :cond_18d

    move v2, v3

    .line 462
    :cond_18d
    if-eq v2, v3, :cond_196

    .line 463
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 464
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 465
    goto :goto_1ae

    .line 466
    :cond_196
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 468
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt64()J

    move-result-wide v5

    .line 469
    invoke-virtual {p2}, Landroid/os/HwParcel;->readStrongBinder()Landroid/os/IHwBinder;

    move-result-object p1

    invoke-static {p1}, Landroid/hardware/usb/gadget/V1_0/IUsbGadgetCallback;->asInterface(Landroid/os/IHwBinder;)Landroid/hardware/usb/gadget/V1_0/IUsbGadgetCallback;

    move-result-object v7

    .line 470
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt64()J

    move-result-wide v8

    .line 471
    move-object v4, p0

    invoke-virtual/range {v4 .. v9}, Landroid/hardware/usb/gadget/V1_0/IUsbGadget$Stub;->setCurrentUsbFunctions(JLandroid/hardware/usb/gadget/V1_0/IUsbGadgetCallback;J)V

    .line 472
    nop

    .line 655
    :cond_1ae
    :goto_1ae
    return-void

    nop

    :sswitch_data_1b0
    .sparse-switch
        0xf43484e -> :sswitch_14b
        0xf444247 -> :sswitch_125
        0xf445343 -> :sswitch_103
        0xf485348 -> :sswitch_9e
        0xf494e54 -> :sswitch_87
        0xf4c5444 -> :sswitch_78
        0xf504e47 -> :sswitch_5a
        0xf524546 -> :sswitch_38
        0xf535953 -> :sswitch_21
        0xf555444 -> :sswitch_12
    .end sparse-switch
.end method

.method public final ping()V
    .registers 1

    .line 412
    return-void
.end method

.method public queryLocalInterface(Ljava/lang/String;)Landroid/os/IHwInterface;
    .registers 3

    .line 440
    const-string v0, "android.hardware.usb.gadget@1.0::IUsbGadget"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_9

    .line 441
    return-object p0

    .line 443
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

    .line 447
    invoke-virtual {p0, p1}, Landroid/hardware/usb/gadget/V1_0/IUsbGadget$Stub;->registerService(Ljava/lang/String;)V

    .line 448
    return-void
.end method

.method public final setHALInstrumentation()V
    .registers 1

    .line 402
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 452
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/hardware/usb/gadget/V1_0/IUsbGadget$Stub;->interfaceDescriptor()Ljava/lang/String;

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

    .line 434
    const/4 p1, 0x1

    return p1
.end method
