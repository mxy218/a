.class public abstract Landroid/hardware/tetheroffload/control/V1_0/ITetheringOffloadCallback$Stub;
.super Landroid/os/HwBinder;
.source "ITetheringOffloadCallback.java"

# interfaces
.implements Landroid/hardware/tetheroffload/control/V1_0/ITetheringOffloadCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/tetheroffload/control/V1_0/ITetheringOffloadCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 359
    invoke-direct {p0}, Landroid/os/HwBinder;-><init>()V

    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IHwBinder;
    .registers 1

    .line 362
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

    .line 375
    return-void
.end method

.method public final getDebugInfo()Landroid/hidl/base/V1_0/DebugInfo;
    .registers 4

    .line 412
    new-instance v0, Landroid/hidl/base/V1_0/DebugInfo;

    invoke-direct {v0}, Landroid/hidl/base/V1_0/DebugInfo;-><init>()V

    .line 413
    invoke-static {}, Landroid/os/HidlSupport;->getPidIfSharable()I

    move-result v1

    iput v1, v0, Landroid/hidl/base/V1_0/DebugInfo;->pid:I

    .line 414
    const-wide/16 v1, 0x0

    iput-wide v1, v0, Landroid/hidl/base/V1_0/DebugInfo;->ptr:J

    .line 415
    const/4 v1, 0x0

    iput v1, v0, Landroid/hidl/base/V1_0/DebugInfo;->arch:I

    .line 416
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

    .line 387
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
        0x7t
        0x65t
        -0x78t
        0x29t
        0x33t
        -0x63t
        0x75t
        -0x6at
        0x20t
        0x16t
        -0x20t
        0xet
        -0x28t
        0x1bt
        0x0t
        0x5at
        -0x2et
        -0x61t
        -0x36t
        0x7at
        -0x3ft
        0x2at
        -0x2dt
        -0x44t
        0x3ct
        -0x33t
        -0x7at
        -0x50t
        -0x73t
        -0x6ct
        -0x3et
        -0x2dt
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

    .line 367
    new-instance v0, Ljava/util/ArrayList;

    const-string v1, "android.hardware.tetheroffload.control@1.0::ITetheringOffloadCallback"

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

    .line 381
    const-string v0, "android.hardware.tetheroffload.control@1.0::ITetheringOffloadCallback"

    return-object v0
.end method

.method public final linkToDeath(Landroid/os/IHwBinder$DeathRecipient;J)Z
    .registers 4

    .line 400
    const/4 p1, 0x1

    return p1
.end method

.method public final notifySyspropsChanged()V
    .registers 1

    .line 422
    invoke-static {}, Landroid/os/HwBinder;->enableInstrumentation()V

    .line 424
    return-void
.end method

.method public onTransact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V
    .registers 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 452
    const-string v0, "android.hardware.tetheroffload.control@1.0::ITetheringOffloadCallback"

    const/high16 v1, -0x80000000

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eq p1, v3, :cond_187

    const/4 v4, 0x2

    if-eq p1, v4, :cond_16a

    const-string v0, "android.hidl.base@1.0::IBase"

    sparse-switch p1, :sswitch_data_1a2

    goto/16 :goto_1a0

    .line 639
    :sswitch_12
    and-int/lit8 p1, p4, 0x1

    if-eqz p1, :cond_17

    move v2, v3

    .line 640
    :cond_17
    if-eqz v2, :cond_1a0

    .line 641
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 642
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 643
    goto/16 :goto_1a0

    .line 626
    :sswitch_21
    and-int/lit8 p1, p4, 0x1

    if-eqz p1, :cond_26

    move v2, v3

    .line 627
    :cond_26
    if-eq v2, v3, :cond_30

    .line 628
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 629
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 630
    goto/16 :goto_1a0

    .line 631
    :cond_30
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 633
    invoke-virtual {p0}, Landroid/hardware/tetheroffload/control/V1_0/ITetheringOffloadCallback$Stub;->notifySyspropsChanged()V

    .line 634
    goto/16 :goto_1a0

    .line 610
    :sswitch_38
    and-int/lit8 p1, p4, 0x1

    if-eqz p1, :cond_3d

    goto :goto_3e

    :cond_3d
    move v3, v2

    .line 611
    :goto_3e
    if-eqz v3, :cond_48

    .line 612
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 613
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 614
    goto/16 :goto_1a0

    .line 615
    :cond_48
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 617
    invoke-virtual {p0}, Landroid/hardware/tetheroffload/control/V1_0/ITetheringOffloadCallback$Stub;->getDebugInfo()Landroid/hidl/base/V1_0/DebugInfo;

    move-result-object p1

    .line 618
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 619
    invoke-virtual {p1, p3}, Landroid/hidl/base/V1_0/DebugInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 620
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 621
    goto/16 :goto_1a0

    .line 595
    :sswitch_5a
    and-int/lit8 p1, p4, 0x1

    if-eqz p1, :cond_5f

    goto :goto_60

    :cond_5f
    move v3, v2

    .line 596
    :goto_60
    if-eqz v3, :cond_6a

    .line 597
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 598
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 599
    goto/16 :goto_1a0

    .line 600
    :cond_6a
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 602
    invoke-virtual {p0}, Landroid/hardware/tetheroffload/control/V1_0/ITetheringOffloadCallback$Stub;->ping()V

    .line 603
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 604
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 605
    goto/16 :goto_1a0

    .line 585
    :sswitch_78
    and-int/lit8 p1, p4, 0x1

    if-eqz p1, :cond_7d

    move v2, v3

    .line 586
    :cond_7d
    if-eqz v2, :cond_1a0

    .line 587
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 588
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 589
    goto/16 :goto_1a0

    .line 572
    :sswitch_87
    and-int/lit8 p1, p4, 0x1

    if-eqz p1, :cond_8c

    move v2, v3

    .line 573
    :cond_8c
    if-eq v2, v3, :cond_96

    .line 574
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 575
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 576
    goto/16 :goto_1a0

    .line 577
    :cond_96
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 579
    invoke-virtual {p0}, Landroid/hardware/tetheroffload/control/V1_0/ITetheringOffloadCallback$Stub;->setHALInstrumentation()V

    .line 580
    goto/16 :goto_1a0

    .line 533
    :sswitch_9e
    and-int/lit8 p1, p4, 0x1

    if-eqz p1, :cond_a3

    goto :goto_a4

    :cond_a3
    move v3, v2

    .line 534
    :goto_a4
    if-eqz v3, :cond_ae

    .line 535
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 536
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 537
    goto/16 :goto_1a0

    .line 538
    :cond_ae
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 540
    invoke-virtual {p0}, Landroid/hardware/tetheroffload/control/V1_0/ITetheringOffloadCallback$Stub;->getHashChain()Ljava/util/ArrayList;

    move-result-object p1

    .line 541
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 543
    new-instance p2, Landroid/os/HwBlob;

    const/16 p4, 0x10

    invoke-direct {p2, p4}, Landroid/os/HwBlob;-><init>(I)V

    .line 545
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p4

    .line 546
    const-wide/16 v0, 0x8

    invoke-virtual {p2, v0, v1, p4}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 547
    const-wide/16 v0, 0xc

    invoke-virtual {p2, v0, v1, v2}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 548
    new-instance v0, Landroid/os/HwBlob;

    mul-int/lit8 v1, p4, 0x20

    invoke-direct {v0, v1}, Landroid/os/HwBlob;-><init>(I)V

    .line 549
    nop

    :goto_d5
    if-ge v2, p4, :cond_f6

    .line 551
    mul-int/lit8 v1, v2, 0x20

    int-to-long v3, v1

    .line 552
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    .line 554
    if-eqz v1, :cond_ee

    array-length v5, v1

    const/16 v6, 0x20

    if-ne v5, v6, :cond_ee

    .line 558
    invoke-virtual {v0, v3, v4, v1}, Landroid/os/HwBlob;->putInt8Array(J[B)V

    .line 559
    nop

    .line 549
    add-int/lit8 v2, v2, 0x1

    goto :goto_d5

    .line 555
    :cond_ee
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Array element is not of the expected length"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 562
    :cond_f6
    const-wide/16 v1, 0x0

    invoke-virtual {p2, v1, v2, v0}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    .line 564
    invoke-virtual {p3, p2}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    .line 566
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 567
    goto/16 :goto_1a0

    .line 517
    :sswitch_103
    and-int/lit8 p1, p4, 0x1

    if-eqz p1, :cond_108

    goto :goto_109

    :cond_108
    move v3, v2

    .line 518
    :goto_109
    if-eqz v3, :cond_113

    .line 519
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 520
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 521
    goto/16 :goto_1a0

    .line 522
    :cond_113
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 524
    invoke-virtual {p0}, Landroid/hardware/tetheroffload/control/V1_0/ITetheringOffloadCallback$Stub;->interfaceDescriptor()Ljava/lang/String;

    move-result-object p1

    .line 525
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 526
    invoke-virtual {p3, p1}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 527
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 528
    goto/16 :goto_1a0

    .line 500
    :sswitch_125
    and-int/lit8 p1, p4, 0x1

    if-eqz p1, :cond_12a

    goto :goto_12b

    :cond_12a
    move v3, v2

    .line 501
    :goto_12b
    if-eqz v3, :cond_135

    .line 502
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 503
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 504
    goto/16 :goto_1a0

    .line 505
    :cond_135
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 507
    invoke-virtual {p2}, Landroid/os/HwParcel;->readNativeHandle()Landroid/os/NativeHandle;

    move-result-object p1

    .line 508
    invoke-virtual {p2}, Landroid/os/HwParcel;->readStringVector()Ljava/util/ArrayList;

    move-result-object p2

    .line 509
    invoke-virtual {p0, p1, p2}, Landroid/hardware/tetheroffload/control/V1_0/ITetheringOffloadCallback$Stub;->debug(Landroid/os/NativeHandle;Ljava/util/ArrayList;)V

    .line 510
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 511
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 512
    goto :goto_1a0

    .line 484
    :sswitch_14a
    and-int/lit8 p1, p4, 0x1

    if-eqz p1, :cond_14f

    goto :goto_150

    :cond_14f
    move v3, v2

    .line 485
    :goto_150
    if-eqz v3, :cond_159

    .line 486
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 487
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 488
    goto :goto_1a0

    .line 489
    :cond_159
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 491
    invoke-virtual {p0}, Landroid/hardware/tetheroffload/control/V1_0/ITetheringOffloadCallback$Stub;->interfaceChain()Ljava/util/ArrayList;

    move-result-object p1

    .line 492
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 493
    invoke-virtual {p3, p1}, Landroid/os/HwParcel;->writeStringVector(Ljava/util/ArrayList;)V

    .line 494
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 495
    goto :goto_1a0

    .line 469
    :cond_16a
    and-int/lit8 p1, p4, 0x1

    if-eqz p1, :cond_16f

    move v2, v3

    .line 470
    :cond_16f
    if-eq v2, v3, :cond_178

    .line 471
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 472
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 473
    goto :goto_1a0

    .line 474
    :cond_178
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 476
    new-instance p1, Landroid/hardware/tetheroffload/control/V1_0/NatTimeoutUpdate;

    invoke-direct {p1}, Landroid/hardware/tetheroffload/control/V1_0/NatTimeoutUpdate;-><init>()V

    .line 477
    invoke-virtual {p1, p2}, Landroid/hardware/tetheroffload/control/V1_0/NatTimeoutUpdate;->readFromParcel(Landroid/os/HwParcel;)V

    .line 478
    invoke-virtual {p0, p1}, Landroid/hardware/tetheroffload/control/V1_0/ITetheringOffloadCallback$Stub;->updateTimeout(Landroid/hardware/tetheroffload/control/V1_0/NatTimeoutUpdate;)V

    .line 479
    goto :goto_1a0

    .line 455
    :cond_187
    and-int/lit8 p1, p4, 0x1

    if-eqz p1, :cond_18c

    move v2, v3

    .line 456
    :cond_18c
    if-eq v2, v3, :cond_195

    .line 457
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 458
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 459
    goto :goto_1a0

    .line 460
    :cond_195
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 462
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p1

    .line 463
    invoke-virtual {p0, p1}, Landroid/hardware/tetheroffload/control/V1_0/ITetheringOffloadCallback$Stub;->onEvent(I)V

    .line 464
    nop

    .line 648
    :cond_1a0
    :goto_1a0
    return-void

    nop

    :sswitch_data_1a2
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

    .line 406
    return-void
.end method

.method public queryLocalInterface(Ljava/lang/String;)Landroid/os/IHwInterface;
    .registers 3

    .line 434
    const-string v0, "android.hardware.tetheroffload.control@1.0::ITetheringOffloadCallback"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_9

    .line 435
    return-object p0

    .line 437
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

    .line 441
    invoke-virtual {p0, p1}, Landroid/hardware/tetheroffload/control/V1_0/ITetheringOffloadCallback$Stub;->registerService(Ljava/lang/String;)V

    .line 442
    return-void
.end method

.method public final setHALInstrumentation()V
    .registers 1

    .line 396
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 446
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/hardware/tetheroffload/control/V1_0/ITetheringOffloadCallback$Stub;->interfaceDescriptor()Ljava/lang/String;

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

    .line 428
    const/4 p1, 0x1

    return p1
.end method
