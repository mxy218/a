.class public abstract Landroid/hardware/usb/gadget/V1_0/IUsbGadgetCallback$Stub;
.super Landroid/os/HwBinder;
.source "IUsbGadgetCallback.java"

# interfaces
.implements Landroid/hardware/usb/gadget/V1_0/IUsbGadgetCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/usb/gadget/V1_0/IUsbGadgetCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 368
    invoke-direct {p0}, Landroid/os/HwBinder;-><init>()V

    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IHwBinder;
    .registers 1

    .line 371
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

    .line 384
    return-void
.end method

.method public final getDebugInfo()Landroid/hidl/base/V1_0/DebugInfo;
    .registers 4

    .line 421
    new-instance v0, Landroid/hidl/base/V1_0/DebugInfo;

    invoke-direct {v0}, Landroid/hidl/base/V1_0/DebugInfo;-><init>()V

    .line 422
    invoke-static {}, Landroid/os/HidlSupport;->getPidIfSharable()I

    move-result v1

    iput v1, v0, Landroid/hidl/base/V1_0/DebugInfo;->pid:I

    .line 423
    const-wide/16 v1, 0x0

    iput-wide v1, v0, Landroid/hidl/base/V1_0/DebugInfo;->ptr:J

    .line 424
    const/4 v1, 0x0

    iput v1, v0, Landroid/hidl/base/V1_0/DebugInfo;->arch:I

    .line 425
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

    .line 396
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
        -0x53t
        0xat
        0x62t
        0xct
        -0x26t
        0x8t
        -0x10t
        0x1bt
        0x15t
        0x1ct
        0x30t
        -0x35t
        0x7at
        -0x6t
        0x23t
        -0x50t
        0x63t
        0x7ct
        -0x38t
        0x43t
        0x40t
        -0x31t
        -0x73t
        -0x14t
        0x0t
        -0x54t
        -0x72t
        0x32t
        -0x31t
        0x54t
        -0x58t
        -0x25t
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

    .line 376
    new-instance v0, Ljava/util/ArrayList;

    const-string v1, "android.hardware.usb.gadget@1.0::IUsbGadgetCallback"

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

    .line 390
    const-string v0, "android.hardware.usb.gadget@1.0::IUsbGadgetCallback"

    return-object v0
.end method

.method public final linkToDeath(Landroid/os/IHwBinder$DeathRecipient;J)Z
    .registers 4

    .line 409
    const/4 p1, 0x1

    return p1
.end method

.method public final notifySyspropsChanged()V
    .registers 1

    .line 431
    invoke-static {}, Landroid/os/HwBinder;->enableInstrumentation()V

    .line 433
    return-void
.end method

.method public onTransact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V
    .registers 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 461
    const-string v0, "android.hardware.usb.gadget@1.0::IUsbGadgetCallback"

    const/high16 v1, -0x80000000

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eq p1, v3, :cond_187

    const/4 v4, 0x2

    if-eq p1, v4, :cond_16a

    const-string v0, "android.hidl.base@1.0::IBase"

    sparse-switch p1, :sswitch_data_1a6

    goto/16 :goto_1a4

    .line 649
    :sswitch_12
    and-int/lit8 p1, p4, 0x1

    if-eqz p1, :cond_17

    move v2, v3

    .line 650
    :cond_17
    if-eqz v2, :cond_1a4

    .line 651
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 652
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 653
    goto/16 :goto_1a4

    .line 636
    :sswitch_21
    and-int/lit8 p1, p4, 0x1

    if-eqz p1, :cond_26

    move v2, v3

    .line 637
    :cond_26
    if-eq v2, v3, :cond_30

    .line 638
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 639
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 640
    goto/16 :goto_1a4

    .line 641
    :cond_30
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 643
    invoke-virtual {p0}, Landroid/hardware/usb/gadget/V1_0/IUsbGadgetCallback$Stub;->notifySyspropsChanged()V

    .line 644
    goto/16 :goto_1a4

    .line 620
    :sswitch_38
    and-int/lit8 p1, p4, 0x1

    if-eqz p1, :cond_3d

    goto :goto_3e

    :cond_3d
    move v3, v2

    .line 621
    :goto_3e
    if-eqz v3, :cond_48

    .line 622
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 623
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 624
    goto/16 :goto_1a4

    .line 625
    :cond_48
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 627
    invoke-virtual {p0}, Landroid/hardware/usb/gadget/V1_0/IUsbGadgetCallback$Stub;->getDebugInfo()Landroid/hidl/base/V1_0/DebugInfo;

    move-result-object p1

    .line 628
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 629
    invoke-virtual {p1, p3}, Landroid/hidl/base/V1_0/DebugInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 630
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 631
    goto/16 :goto_1a4

    .line 605
    :sswitch_5a
    and-int/lit8 p1, p4, 0x1

    if-eqz p1, :cond_5f

    goto :goto_60

    :cond_5f
    move v3, v2

    .line 606
    :goto_60
    if-eqz v3, :cond_6a

    .line 607
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 608
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 609
    goto/16 :goto_1a4

    .line 610
    :cond_6a
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 612
    invoke-virtual {p0}, Landroid/hardware/usb/gadget/V1_0/IUsbGadgetCallback$Stub;->ping()V

    .line 613
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 614
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 615
    goto/16 :goto_1a4

    .line 595
    :sswitch_78
    and-int/lit8 p1, p4, 0x1

    if-eqz p1, :cond_7d

    move v2, v3

    .line 596
    :cond_7d
    if-eqz v2, :cond_1a4

    .line 597
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 598
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 599
    goto/16 :goto_1a4

    .line 582
    :sswitch_87
    and-int/lit8 p1, p4, 0x1

    if-eqz p1, :cond_8c

    move v2, v3

    .line 583
    :cond_8c
    if-eq v2, v3, :cond_96

    .line 584
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 585
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 586
    goto/16 :goto_1a4

    .line 587
    :cond_96
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 589
    invoke-virtual {p0}, Landroid/hardware/usb/gadget/V1_0/IUsbGadgetCallback$Stub;->setHALInstrumentation()V

    .line 590
    goto/16 :goto_1a4

    .line 543
    :sswitch_9e
    and-int/lit8 p1, p4, 0x1

    if-eqz p1, :cond_a3

    goto :goto_a4

    :cond_a3
    move v3, v2

    .line 544
    :goto_a4
    if-eqz v3, :cond_ae

    .line 545
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 546
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 547
    goto/16 :goto_1a4

    .line 548
    :cond_ae
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 550
    invoke-virtual {p0}, Landroid/hardware/usb/gadget/V1_0/IUsbGadgetCallback$Stub;->getHashChain()Ljava/util/ArrayList;

    move-result-object p1

    .line 551
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 553
    new-instance p2, Landroid/os/HwBlob;

    const/16 p4, 0x10

    invoke-direct {p2, p4}, Landroid/os/HwBlob;-><init>(I)V

    .line 555
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p4

    .line 556
    const-wide/16 v0, 0x8

    invoke-virtual {p2, v0, v1, p4}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 557
    const-wide/16 v0, 0xc

    invoke-virtual {p2, v0, v1, v2}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 558
    new-instance v0, Landroid/os/HwBlob;

    mul-int/lit8 v1, p4, 0x20

    invoke-direct {v0, v1}, Landroid/os/HwBlob;-><init>(I)V

    .line 559
    nop

    :goto_d5
    if-ge v2, p4, :cond_f6

    .line 561
    mul-int/lit8 v1, v2, 0x20

    int-to-long v3, v1

    .line 562
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    .line 564
    if-eqz v1, :cond_ee

    array-length v5, v1

    const/16 v6, 0x20

    if-ne v5, v6, :cond_ee

    .line 568
    invoke-virtual {v0, v3, v4, v1}, Landroid/os/HwBlob;->putInt8Array(J[B)V

    .line 569
    nop

    .line 559
    add-int/lit8 v2, v2, 0x1

    goto :goto_d5

    .line 565
    :cond_ee
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Array element is not of the expected length"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 572
    :cond_f6
    const-wide/16 v1, 0x0

    invoke-virtual {p2, v1, v2, v0}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    .line 574
    invoke-virtual {p3, p2}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    .line 576
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 577
    goto/16 :goto_1a4

    .line 527
    :sswitch_103
    and-int/lit8 p1, p4, 0x1

    if-eqz p1, :cond_108

    goto :goto_109

    :cond_108
    move v3, v2

    .line 528
    :goto_109
    if-eqz v3, :cond_113

    .line 529
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 530
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 531
    goto/16 :goto_1a4

    .line 532
    :cond_113
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 534
    invoke-virtual {p0}, Landroid/hardware/usb/gadget/V1_0/IUsbGadgetCallback$Stub;->interfaceDescriptor()Ljava/lang/String;

    move-result-object p1

    .line 535
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 536
    invoke-virtual {p3, p1}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 537
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 538
    goto/16 :goto_1a4

    .line 510
    :sswitch_125
    and-int/lit8 p1, p4, 0x1

    if-eqz p1, :cond_12a

    goto :goto_12b

    :cond_12a
    move v3, v2

    .line 511
    :goto_12b
    if-eqz v3, :cond_135

    .line 512
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 513
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 514
    goto/16 :goto_1a4

    .line 515
    :cond_135
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 517
    invoke-virtual {p2}, Landroid/os/HwParcel;->readNativeHandle()Landroid/os/NativeHandle;

    move-result-object p1

    .line 518
    invoke-virtual {p2}, Landroid/os/HwParcel;->readStringVector()Ljava/util/ArrayList;

    move-result-object p2

    .line 519
    invoke-virtual {p0, p1, p2}, Landroid/hardware/usb/gadget/V1_0/IUsbGadgetCallback$Stub;->debug(Landroid/os/NativeHandle;Ljava/util/ArrayList;)V

    .line 520
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 521
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 522
    goto :goto_1a4

    .line 494
    :sswitch_14a
    and-int/lit8 p1, p4, 0x1

    if-eqz p1, :cond_14f

    goto :goto_150

    :cond_14f
    move v3, v2

    .line 495
    :goto_150
    if-eqz v3, :cond_159

    .line 496
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 497
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 498
    goto :goto_1a4

    .line 499
    :cond_159
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 501
    invoke-virtual {p0}, Landroid/hardware/usb/gadget/V1_0/IUsbGadgetCallback$Stub;->interfaceChain()Ljava/util/ArrayList;

    move-result-object p1

    .line 502
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 503
    invoke-virtual {p3, p1}, Landroid/os/HwParcel;->writeStringVector(Ljava/util/ArrayList;)V

    .line 504
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 505
    goto :goto_1a4

    .line 479
    :cond_16a
    and-int/lit8 p1, p4, 0x1

    if-eqz p1, :cond_16f

    move v2, v3

    .line 480
    :cond_16f
    if-eq v2, v3, :cond_178

    .line 481
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 482
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 483
    goto :goto_1a4

    .line 484
    :cond_178
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 486
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt64()J

    move-result-wide p3

    .line 487
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p1

    .line 488
    invoke-virtual {p0, p3, p4, p1}, Landroid/hardware/usb/gadget/V1_0/IUsbGadgetCallback$Stub;->getCurrentUsbFunctionsCb(JI)V

    .line 489
    goto :goto_1a4

    .line 464
    :cond_187
    and-int/lit8 p1, p4, 0x1

    if-eqz p1, :cond_18c

    move v2, v3

    .line 465
    :cond_18c
    if-eq v2, v3, :cond_195

    .line 466
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 467
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 468
    goto :goto_1a4

    .line 469
    :cond_195
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 471
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt64()J

    move-result-wide p3

    .line 472
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p1

    .line 473
    invoke-virtual {p0, p3, p4, p1}, Landroid/hardware/usb/gadget/V1_0/IUsbGadgetCallback$Stub;->setCurrentUsbFunctionsCb(JI)V

    .line 474
    nop

    .line 658
    :cond_1a4
    :goto_1a4
    return-void

    nop

    :sswitch_data_1a6
    .sparse-switch
        0xf43484e -> :sswitch_14a
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

    .line 415
    return-void
.end method

.method public queryLocalInterface(Ljava/lang/String;)Landroid/os/IHwInterface;
    .registers 3

    .line 443
    const-string v0, "android.hardware.usb.gadget@1.0::IUsbGadgetCallback"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_9

    .line 444
    return-object p0

    .line 446
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

    .line 450
    invoke-virtual {p0, p1}, Landroid/hardware/usb/gadget/V1_0/IUsbGadgetCallback$Stub;->registerService(Ljava/lang/String;)V

    .line 451
    return-void
.end method

.method public final setHALInstrumentation()V
    .registers 1

    .line 405
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 455
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/hardware/usb/gadget/V1_0/IUsbGadgetCallback$Stub;->interfaceDescriptor()Ljava/lang/String;

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

    .line 437
    const/4 p1, 0x1

    return p1
.end method
