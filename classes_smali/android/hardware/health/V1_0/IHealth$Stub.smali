.class public abstract Landroid/hardware/health/V1_0/IHealth$Stub;
.super Landroid/os/HwBinder;
.source "IHealth.java"

# interfaces
.implements Landroid/hardware/health/V1_0/IHealth;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/health/V1_0/IHealth;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 420
    invoke-direct {p0}, Landroid/os/HwBinder;-><init>()V

    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IHwBinder;
    .registers 1

    .line 423
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

    .line 436
    return-void
.end method

.method public final getDebugInfo()Landroid/hidl/base/V1_0/DebugInfo;
    .registers 4

    .line 473
    new-instance v0, Landroid/hidl/base/V1_0/DebugInfo;

    invoke-direct {v0}, Landroid/hidl/base/V1_0/DebugInfo;-><init>()V

    .line 474
    invoke-static {}, Landroid/os/HidlSupport;->getPidIfSharable()I

    move-result v1

    iput v1, v0, Landroid/hidl/base/V1_0/DebugInfo;->pid:I

    .line 475
    const-wide/16 v1, 0x0

    iput-wide v1, v0, Landroid/hidl/base/V1_0/DebugInfo;->ptr:J

    .line 476
    const/4 v1, 0x0

    iput v1, v0, Landroid/hidl/base/V1_0/DebugInfo;->arch:I

    .line 477
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

    .line 448
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
        -0x6ft
        -0x1et
        -0x46t
        0x38t
        0x5t
        -0x37t
        0x23t
        -0x10t
        0x1ft
        -0x3ft
        0x23t
        0x1et
        -0x37t
        -0x1t
        -0x7dt
        -0x77t
        0x42t
        -0x52t
        -0x1dt
        0x34t
        0x6ft
        0x2dt
        0x76t
        0x14t
        -0x14t
        -0x40t
        -0x36t
        -0x16t
        -0x25t
        -0x1bt
        0x7et
        -0x2ct
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

    .line 428
    new-instance v0, Ljava/util/ArrayList;

    const-string v1, "android.hardware.health@1.0::IHealth"

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

    .line 442
    const-string v0, "android.hardware.health@1.0::IHealth"

    return-object v0
.end method

.method public final linkToDeath(Landroid/os/IHwBinder$DeathRecipient;J)Z
    .registers 4

    .line 461
    const/4 p1, 0x1

    return p1
.end method

.method public final notifySyspropsChanged()V
    .registers 1

    .line 483
    invoke-static {}, Landroid/os/HwBinder;->enableInstrumentation()V

    .line 485
    return-void
.end method

.method public onTransact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V
    .registers 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 513
    const-string v0, "android.hardware.health@1.0::IHealth"

    const/high16 v1, -0x80000000

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eq p1, v3, :cond_1ab

    const/4 v4, 0x2

    if-eq p1, v4, :cond_189

    const/4 v4, 0x3

    if-eq p1, v4, :cond_16f

    const-string v0, "android.hidl.base@1.0::IBase"

    sparse-switch p1, :sswitch_data_1d4

    goto/16 :goto_1d3

    .line 731
    :sswitch_15
    and-int/lit8 p1, p4, 0x1

    if-eqz p1, :cond_1a

    move v2, v3

    .line 732
    :cond_1a
    if-eqz v2, :cond_1d3

    .line 733
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 734
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 735
    goto/16 :goto_1d3

    .line 718
    :sswitch_24
    and-int/lit8 p1, p4, 0x1

    if-eqz p1, :cond_29

    move v2, v3

    .line 719
    :cond_29
    if-eq v2, v3, :cond_33

    .line 720
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 721
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 722
    goto/16 :goto_1d3

    .line 723
    :cond_33
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 725
    invoke-virtual {p0}, Landroid/hardware/health/V1_0/IHealth$Stub;->notifySyspropsChanged()V

    .line 726
    goto/16 :goto_1d3

    .line 702
    :sswitch_3b
    and-int/lit8 p1, p4, 0x1

    if-eqz p1, :cond_40

    goto :goto_41

    :cond_40
    move v3, v2

    .line 703
    :goto_41
    if-eqz v3, :cond_4b

    .line 704
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 705
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 706
    goto/16 :goto_1d3

    .line 707
    :cond_4b
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 709
    invoke-virtual {p0}, Landroid/hardware/health/V1_0/IHealth$Stub;->getDebugInfo()Landroid/hidl/base/V1_0/DebugInfo;

    move-result-object p1

    .line 710
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 711
    invoke-virtual {p1, p3}, Landroid/hidl/base/V1_0/DebugInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 712
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 713
    goto/16 :goto_1d3

    .line 687
    :sswitch_5d
    and-int/lit8 p1, p4, 0x1

    if-eqz p1, :cond_62

    goto :goto_63

    :cond_62
    move v3, v2

    .line 688
    :goto_63
    if-eqz v3, :cond_6d

    .line 689
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 690
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 691
    goto/16 :goto_1d3

    .line 692
    :cond_6d
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 694
    invoke-virtual {p0}, Landroid/hardware/health/V1_0/IHealth$Stub;->ping()V

    .line 695
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 696
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 697
    goto/16 :goto_1d3

    .line 677
    :sswitch_7b
    and-int/lit8 p1, p4, 0x1

    if-eqz p1, :cond_80

    move v2, v3

    .line 678
    :cond_80
    if-eqz v2, :cond_1d3

    .line 679
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 680
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 681
    goto/16 :goto_1d3

    .line 664
    :sswitch_8a
    and-int/lit8 p1, p4, 0x1

    if-eqz p1, :cond_8f

    move v2, v3

    .line 665
    :cond_8f
    if-eq v2, v3, :cond_99

    .line 666
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 667
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 668
    goto/16 :goto_1d3

    .line 669
    :cond_99
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 671
    invoke-virtual {p0}, Landroid/hardware/health/V1_0/IHealth$Stub;->setHALInstrumentation()V

    .line 672
    goto/16 :goto_1d3

    .line 625
    :sswitch_a1
    and-int/lit8 p1, p4, 0x1

    if-eqz p1, :cond_a6

    goto :goto_a7

    :cond_a6
    move v3, v2

    .line 626
    :goto_a7
    if-eqz v3, :cond_b1

    .line 627
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 628
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 629
    goto/16 :goto_1d3

    .line 630
    :cond_b1
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 632
    invoke-virtual {p0}, Landroid/hardware/health/V1_0/IHealth$Stub;->getHashChain()Ljava/util/ArrayList;

    move-result-object p1

    .line 633
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 635
    new-instance p2, Landroid/os/HwBlob;

    const/16 p4, 0x10

    invoke-direct {p2, p4}, Landroid/os/HwBlob;-><init>(I)V

    .line 637
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p4

    .line 638
    const-wide/16 v0, 0x8

    invoke-virtual {p2, v0, v1, p4}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 639
    const-wide/16 v0, 0xc

    invoke-virtual {p2, v0, v1, v2}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 640
    new-instance v0, Landroid/os/HwBlob;

    mul-int/lit8 v1, p4, 0x20

    invoke-direct {v0, v1}, Landroid/os/HwBlob;-><init>(I)V

    .line 641
    nop

    :goto_d8
    if-ge v2, p4, :cond_f9

    .line 643
    mul-int/lit8 v1, v2, 0x20

    int-to-long v3, v1

    .line 644
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    .line 646
    if-eqz v1, :cond_f1

    array-length v5, v1

    const/16 v6, 0x20

    if-ne v5, v6, :cond_f1

    .line 650
    invoke-virtual {v0, v3, v4, v1}, Landroid/os/HwBlob;->putInt8Array(J[B)V

    .line 651
    nop

    .line 641
    add-int/lit8 v2, v2, 0x1

    goto :goto_d8

    .line 647
    :cond_f1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Array element is not of the expected length"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 654
    :cond_f9
    const-wide/16 v1, 0x0

    invoke-virtual {p2, v1, v2, v0}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    .line 656
    invoke-virtual {p3, p2}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    .line 658
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 659
    goto/16 :goto_1d3

    .line 609
    :sswitch_106
    and-int/lit8 p1, p4, 0x1

    if-eqz p1, :cond_10b

    goto :goto_10c

    :cond_10b
    move v3, v2

    .line 610
    :goto_10c
    if-eqz v3, :cond_116

    .line 611
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 612
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 613
    goto/16 :goto_1d3

    .line 614
    :cond_116
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 616
    invoke-virtual {p0}, Landroid/hardware/health/V1_0/IHealth$Stub;->interfaceDescriptor()Ljava/lang/String;

    move-result-object p1

    .line 617
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 618
    invoke-virtual {p3, p1}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 619
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 620
    goto/16 :goto_1d3

    .line 592
    :sswitch_128
    and-int/lit8 p1, p4, 0x1

    if-eqz p1, :cond_12d

    goto :goto_12e

    :cond_12d
    move v3, v2

    .line 593
    :goto_12e
    if-eqz v3, :cond_138

    .line 594
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 595
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 596
    goto/16 :goto_1d3

    .line 597
    :cond_138
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 599
    invoke-virtual {p2}, Landroid/os/HwParcel;->readNativeHandle()Landroid/os/NativeHandle;

    move-result-object p1

    .line 600
    invoke-virtual {p2}, Landroid/os/HwParcel;->readStringVector()Ljava/util/ArrayList;

    move-result-object p2

    .line 601
    invoke-virtual {p0, p1, p2}, Landroid/hardware/health/V1_0/IHealth$Stub;->debug(Landroid/os/NativeHandle;Ljava/util/ArrayList;)V

    .line 602
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 603
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 604
    goto/16 :goto_1d3

    .line 576
    :sswitch_14e
    and-int/lit8 p1, p4, 0x1

    if-eqz p1, :cond_153

    goto :goto_154

    :cond_153
    move v3, v2

    .line 577
    :goto_154
    if-eqz v3, :cond_15e

    .line 578
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 579
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 580
    goto/16 :goto_1d3

    .line 581
    :cond_15e
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 583
    invoke-virtual {p0}, Landroid/hardware/health/V1_0/IHealth$Stub;->interfaceChain()Ljava/util/ArrayList;

    move-result-object p1

    .line 584
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 585
    invoke-virtual {p3, p1}, Landroid/os/HwParcel;->writeStringVector(Ljava/util/ArrayList;)V

    .line 586
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 587
    goto :goto_1d3

    .line 556
    :cond_16f
    and-int/lit8 p1, p4, 0x1

    if-eqz p1, :cond_174

    move v2, v3

    .line 557
    :cond_174
    if-eqz v2, :cond_17d

    .line 558
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 559
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 560
    goto :goto_1d3

    .line 561
    :cond_17d
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 563
    new-instance p1, Landroid/hardware/health/V1_0/IHealth$Stub$2;

    invoke-direct {p1, p0, p3}, Landroid/hardware/health/V1_0/IHealth$Stub$2;-><init>(Landroid/hardware/health/V1_0/IHealth$Stub;Landroid/os/HwParcel;)V

    invoke-virtual {p0, p1}, Landroid/hardware/health/V1_0/IHealth$Stub;->energyCounter(Landroid/hardware/health/V1_0/IHealth$energyCounterCallback;)V

    .line 571
    goto :goto_1d3

    .line 534
    :cond_189
    and-int/lit8 p1, p4, 0x1

    if-eqz p1, :cond_18e

    move v2, v3

    .line 535
    :cond_18e
    if-eqz v2, :cond_197

    .line 536
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 537
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 538
    goto :goto_1d3

    .line 539
    :cond_197
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 541
    new-instance p1, Landroid/hardware/health/V1_0/HealthInfo;

    invoke-direct {p1}, Landroid/hardware/health/V1_0/HealthInfo;-><init>()V

    .line 542
    invoke-virtual {p1, p2}, Landroid/hardware/health/V1_0/HealthInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 543
    new-instance p2, Landroid/hardware/health/V1_0/IHealth$Stub$1;

    invoke-direct {p2, p0, p3}, Landroid/hardware/health/V1_0/IHealth$Stub$1;-><init>(Landroid/hardware/health/V1_0/IHealth$Stub;Landroid/os/HwParcel;)V

    invoke-virtual {p0, p1, p2}, Landroid/hardware/health/V1_0/IHealth$Stub;->update(Landroid/hardware/health/V1_0/HealthInfo;Landroid/hardware/health/V1_0/IHealth$updateCallback;)V

    .line 551
    goto :goto_1d3

    .line 516
    :cond_1ab
    and-int/lit8 p1, p4, 0x1

    if-eqz p1, :cond_1b0

    goto :goto_1b1

    :cond_1b0
    move v3, v2

    .line 517
    :goto_1b1
    if-eqz v3, :cond_1ba

    .line 518
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 519
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 520
    goto :goto_1d3

    .line 521
    :cond_1ba
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 523
    new-instance p1, Landroid/hardware/health/V1_0/HealthConfig;

    invoke-direct {p1}, Landroid/hardware/health/V1_0/HealthConfig;-><init>()V

    .line 524
    invoke-virtual {p1, p2}, Landroid/hardware/health/V1_0/HealthConfig;->readFromParcel(Landroid/os/HwParcel;)V

    .line 525
    invoke-virtual {p0, p1}, Landroid/hardware/health/V1_0/IHealth$Stub;->init(Landroid/hardware/health/V1_0/HealthConfig;)Landroid/hardware/health/V1_0/HealthConfig;

    move-result-object p1

    .line 526
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 527
    invoke-virtual {p1, p3}, Landroid/hardware/health/V1_0/HealthConfig;->writeToParcel(Landroid/os/HwParcel;)V

    .line 528
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 529
    nop

    .line 740
    :cond_1d3
    :goto_1d3
    return-void

    :sswitch_data_1d4
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

    .line 467
    return-void
.end method

.method public queryLocalInterface(Ljava/lang/String;)Landroid/os/IHwInterface;
    .registers 3

    .line 495
    const-string v0, "android.hardware.health@1.0::IHealth"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_9

    .line 496
    return-object p0

    .line 498
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

    .line 502
    invoke-virtual {p0, p1}, Landroid/hardware/health/V1_0/IHealth$Stub;->registerService(Ljava/lang/String;)V

    .line 503
    return-void
.end method

.method public final setHALInstrumentation()V
    .registers 1

    .line 457
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 507
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/hardware/health/V1_0/IHealth$Stub;->interfaceDescriptor()Ljava/lang/String;

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

    .line 489
    const/4 p1, 0x1

    return p1
.end method
