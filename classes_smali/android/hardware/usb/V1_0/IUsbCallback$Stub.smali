.class public abstract Landroid/hardware/usb/V1_0/IUsbCallback$Stub;
.super Landroid/os/HwBinder;
.source "IUsbCallback.java"

# interfaces
.implements Landroid/hardware/usb/V1_0/IUsbCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/usb/V1_0/IUsbCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 369
    invoke-direct {p0}, Landroid/os/HwBinder;-><init>()V

    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IHwBinder;
    .registers 1

    .line 372
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

    .line 385
    return-void
.end method

.method public final getDebugInfo()Landroid/hidl/base/V1_0/DebugInfo;
    .registers 4

    .line 422
    new-instance v0, Landroid/hidl/base/V1_0/DebugInfo;

    invoke-direct {v0}, Landroid/hidl/base/V1_0/DebugInfo;-><init>()V

    .line 423
    invoke-static {}, Landroid/os/HidlSupport;->getPidIfSharable()I

    move-result v1

    iput v1, v0, Landroid/hidl/base/V1_0/DebugInfo;->pid:I

    .line 424
    const-wide/16 v1, 0x0

    iput-wide v1, v0, Landroid/hidl/base/V1_0/DebugInfo;->ptr:J

    .line 425
    const/4 v1, 0x0

    iput v1, v0, Landroid/hidl/base/V1_0/DebugInfo;->arch:I

    .line 426
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

    .line 397
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

    .line 377
    new-instance v0, Ljava/util/ArrayList;

    const-string v1, "android.hardware.usb@1.0::IUsbCallback"

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

    .line 391
    const-string v0, "android.hardware.usb@1.0::IUsbCallback"

    return-object v0
.end method

.method public final linkToDeath(Landroid/os/IHwBinder$DeathRecipient;J)Z
    .registers 4

    .line 410
    const/4 p1, 0x1

    return p1
.end method

.method public final notifySyspropsChanged()V
    .registers 1

    .line 432
    invoke-static {}, Landroid/os/HwBinder;->enableInstrumentation()V

    .line 434
    return-void
.end method

.method public onTransact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V
    .registers 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 462
    const-string v0, "android.hardware.usb@1.0::IUsbCallback"

    const/high16 v1, -0x80000000

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eq p1, v3, :cond_18f

    const/4 v4, 0x2

    if-eq p1, v4, :cond_16a

    const-string v0, "android.hidl.base@1.0::IBase"

    sparse-switch p1, :sswitch_data_1ae

    goto/16 :goto_1ac

    .line 652
    :sswitch_12
    and-int/lit8 p1, p4, 0x1

    if-eqz p1, :cond_17

    move v2, v3

    .line 653
    :cond_17
    if-eqz v2, :cond_1ac

    .line 654
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 655
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 656
    goto/16 :goto_1ac

    .line 639
    :sswitch_21
    and-int/lit8 p1, p4, 0x1

    if-eqz p1, :cond_26

    move v2, v3

    .line 640
    :cond_26
    if-eq v2, v3, :cond_30

    .line 641
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 642
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 643
    goto/16 :goto_1ac

    .line 644
    :cond_30
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 646
    invoke-virtual {p0}, Landroid/hardware/usb/V1_0/IUsbCallback$Stub;->notifySyspropsChanged()V

    .line 647
    goto/16 :goto_1ac

    .line 623
    :sswitch_38
    and-int/lit8 p1, p4, 0x1

    if-eqz p1, :cond_3d

    goto :goto_3e

    :cond_3d
    move v3, v2

    .line 624
    :goto_3e
    if-eqz v3, :cond_48

    .line 625
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 626
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 627
    goto/16 :goto_1ac

    .line 628
    :cond_48
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 630
    invoke-virtual {p0}, Landroid/hardware/usb/V1_0/IUsbCallback$Stub;->getDebugInfo()Landroid/hidl/base/V1_0/DebugInfo;

    move-result-object p1

    .line 631
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 632
    invoke-virtual {p1, p3}, Landroid/hidl/base/V1_0/DebugInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 633
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 634
    goto/16 :goto_1ac

    .line 608
    :sswitch_5a
    and-int/lit8 p1, p4, 0x1

    if-eqz p1, :cond_5f

    goto :goto_60

    :cond_5f
    move v3, v2

    .line 609
    :goto_60
    if-eqz v3, :cond_6a

    .line 610
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 611
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 612
    goto/16 :goto_1ac

    .line 613
    :cond_6a
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 615
    invoke-virtual {p0}, Landroid/hardware/usb/V1_0/IUsbCallback$Stub;->ping()V

    .line 616
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 617
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 618
    goto/16 :goto_1ac

    .line 598
    :sswitch_78
    and-int/lit8 p1, p4, 0x1

    if-eqz p1, :cond_7d

    move v2, v3

    .line 599
    :cond_7d
    if-eqz v2, :cond_1ac

    .line 600
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 601
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 602
    goto/16 :goto_1ac

    .line 585
    :sswitch_87
    and-int/lit8 p1, p4, 0x1

    if-eqz p1, :cond_8c

    move v2, v3

    .line 586
    :cond_8c
    if-eq v2, v3, :cond_96

    .line 587
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 588
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 589
    goto/16 :goto_1ac

    .line 590
    :cond_96
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 592
    invoke-virtual {p0}, Landroid/hardware/usb/V1_0/IUsbCallback$Stub;->setHALInstrumentation()V

    .line 593
    goto/16 :goto_1ac

    .line 546
    :sswitch_9e
    and-int/lit8 p1, p4, 0x1

    if-eqz p1, :cond_a3

    goto :goto_a4

    :cond_a3
    move v3, v2

    .line 547
    :goto_a4
    if-eqz v3, :cond_ae

    .line 548
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 549
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 550
    goto/16 :goto_1ac

    .line 551
    :cond_ae
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 553
    invoke-virtual {p0}, Landroid/hardware/usb/V1_0/IUsbCallback$Stub;->getHashChain()Ljava/util/ArrayList;

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

    :goto_d5
    if-ge v2, p4, :cond_f6

    .line 564
    mul-int/lit8 v1, v2, 0x20

    int-to-long v3, v1

    .line 565
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    .line 567
    if-eqz v1, :cond_ee

    array-length v5, v1

    const/16 v6, 0x20

    if-ne v5, v6, :cond_ee

    .line 571
    invoke-virtual {v0, v3, v4, v1}, Landroid/os/HwBlob;->putInt8Array(J[B)V

    .line 572
    nop

    .line 562
    add-int/lit8 v2, v2, 0x1

    goto :goto_d5

    .line 568
    :cond_ee
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Array element is not of the expected length"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 575
    :cond_f6
    const-wide/16 v1, 0x0

    invoke-virtual {p2, v1, v2, v0}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    .line 577
    invoke-virtual {p3, p2}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    .line 579
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 580
    goto/16 :goto_1ac

    .line 530
    :sswitch_103
    and-int/lit8 p1, p4, 0x1

    if-eqz p1, :cond_108

    goto :goto_109

    :cond_108
    move v3, v2

    .line 531
    :goto_109
    if-eqz v3, :cond_113

    .line 532
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 533
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 534
    goto/16 :goto_1ac

    .line 535
    :cond_113
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 537
    invoke-virtual {p0}, Landroid/hardware/usb/V1_0/IUsbCallback$Stub;->interfaceDescriptor()Ljava/lang/String;

    move-result-object p1

    .line 538
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 539
    invoke-virtual {p3, p1}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 540
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 541
    goto/16 :goto_1ac

    .line 513
    :sswitch_125
    and-int/lit8 p1, p4, 0x1

    if-eqz p1, :cond_12a

    goto :goto_12b

    :cond_12a
    move v3, v2

    .line 514
    :goto_12b
    if-eqz v3, :cond_135

    .line 515
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 516
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 517
    goto/16 :goto_1ac

    .line 518
    :cond_135
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 520
    invoke-virtual {p2}, Landroid/os/HwParcel;->readNativeHandle()Landroid/os/NativeHandle;

    move-result-object p1

    .line 521
    invoke-virtual {p2}, Landroid/os/HwParcel;->readStringVector()Ljava/util/ArrayList;

    move-result-object p2

    .line 522
    invoke-virtual {p0, p1, p2}, Landroid/hardware/usb/V1_0/IUsbCallback$Stub;->debug(Landroid/os/NativeHandle;Ljava/util/ArrayList;)V

    .line 523
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 524
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 525
    goto :goto_1ac

    .line 497
    :sswitch_14a
    and-int/lit8 p1, p4, 0x1

    if-eqz p1, :cond_14f

    goto :goto_150

    :cond_14f
    move v3, v2

    .line 498
    :goto_150
    if-eqz v3, :cond_159

    .line 499
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 500
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 501
    goto :goto_1ac

    .line 502
    :cond_159
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 504
    invoke-virtual {p0}, Landroid/hardware/usb/V1_0/IUsbCallback$Stub;->interfaceChain()Ljava/util/ArrayList;

    move-result-object p1

    .line 505
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 506
    invoke-virtual {p3, p1}, Landroid/os/HwParcel;->writeStringVector(Ljava/util/ArrayList;)V

    .line 507
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 508
    goto :goto_1ac

    .line 480
    :cond_16a
    and-int/lit8 p1, p4, 0x1

    if-eqz p1, :cond_16f

    move v2, v3

    .line 481
    :cond_16f
    if-eq v2, v3, :cond_178

    .line 482
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 483
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 484
    goto :goto_1ac

    .line 485
    :cond_178
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 487
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 488
    new-instance p3, Landroid/hardware/usb/V1_0/PortRole;

    invoke-direct {p3}, Landroid/hardware/usb/V1_0/PortRole;-><init>()V

    .line 489
    invoke-virtual {p3, p2}, Landroid/hardware/usb/V1_0/PortRole;->readFromParcel(Landroid/os/HwParcel;)V

    .line 490
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p2

    .line 491
    invoke-virtual {p0, p1, p3, p2}, Landroid/hardware/usb/V1_0/IUsbCallback$Stub;->notifyRoleSwitchStatus(Ljava/lang/String;Landroid/hardware/usb/V1_0/PortRole;I)V

    .line 492
    goto :goto_1ac

    .line 465
    :cond_18f
    and-int/lit8 p1, p4, 0x1

    if-eqz p1, :cond_194

    move v2, v3

    .line 466
    :cond_194
    if-eq v2, v3, :cond_19d

    .line 467
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 468
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 469
    goto :goto_1ac

    .line 470
    :cond_19d
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 472
    invoke-static {p2}, Landroid/hardware/usb/V1_0/PortStatus;->readVectorFromParcel(Landroid/os/HwParcel;)Ljava/util/ArrayList;

    move-result-object p1

    .line 473
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p2

    .line 474
    invoke-virtual {p0, p1, p2}, Landroid/hardware/usb/V1_0/IUsbCallback$Stub;->notifyPortStatusChange(Ljava/util/ArrayList;I)V

    .line 475
    nop

    .line 661
    :cond_1ac
    :goto_1ac
    return-void

    nop

    :sswitch_data_1ae
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

    .line 416
    return-void
.end method

.method public queryLocalInterface(Ljava/lang/String;)Landroid/os/IHwInterface;
    .registers 3

    .line 444
    const-string v0, "android.hardware.usb@1.0::IUsbCallback"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_9

    .line 445
    return-object p0

    .line 447
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

    .line 451
    invoke-virtual {p0, p1}, Landroid/hardware/usb/V1_0/IUsbCallback$Stub;->registerService(Ljava/lang/String;)V

    .line 452
    return-void
.end method

.method public final setHALInstrumentation()V
    .registers 1

    .line 406
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 456
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/hardware/usb/V1_0/IUsbCallback$Stub;->interfaceDescriptor()Ljava/lang/String;

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

    .line 438
    const/4 p1, 0x1

    return p1
.end method
