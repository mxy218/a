.class public abstract Landroid/hardware/authsecret/V1_0/IAuthSecret$Stub;
.super Landroid/os/HwBinder;
.source "IAuthSecret.java"

# interfaces
.implements Landroid/hardware/authsecret/V1_0/IAuthSecret;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/authsecret/V1_0/IAuthSecret;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 352
    invoke-direct {p0}, Landroid/os/HwBinder;-><init>()V

    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IHwBinder;
    .registers 1

    .line 355
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

    .line 368
    return-void
.end method

.method public final getDebugInfo()Landroid/hidl/base/V1_0/DebugInfo;
    .registers 4

    .line 405
    new-instance v0, Landroid/hidl/base/V1_0/DebugInfo;

    invoke-direct {v0}, Landroid/hidl/base/V1_0/DebugInfo;-><init>()V

    .line 406
    invoke-static {}, Landroid/os/HidlSupport;->getPidIfSharable()I

    move-result v1

    iput v1, v0, Landroid/hidl/base/V1_0/DebugInfo;->pid:I

    .line 407
    const-wide/16 v1, 0x0

    iput-wide v1, v0, Landroid/hidl/base/V1_0/DebugInfo;->ptr:J

    .line 408
    const/4 v1, 0x0

    iput v1, v0, Landroid/hidl/base/V1_0/DebugInfo;->arch:I

    .line 409
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

    .line 380
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
        0x42t
        -0x60t
        0x6dt
        -0x3et
        -0x78t
        -0xat
        0x1bt
        0x6t
        -0x70t
        0x58t
        0xft
        0x3dt
        0x37t
        -0x4dt
        0xbt
        0x66t
        0x3ct
        0x31t
        -0x29t
        0x4dt
        0x50t
        -0x45t
        0x58t
        -0x30t
        0x77t
        0x23t
        -0x7at
        -0x4bt
        0x50t
        -0x2bt
        -0x6t
        -0x55t
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

    .line 360
    new-instance v0, Ljava/util/ArrayList;

    const-string v1, "android.hardware.authsecret@1.0::IAuthSecret"

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

    .line 374
    const-string v0, "android.hardware.authsecret@1.0::IAuthSecret"

    return-object v0
.end method

.method public final linkToDeath(Landroid/os/IHwBinder$DeathRecipient;J)Z
    .registers 4

    .line 393
    const/4 p1, 0x1

    return p1
.end method

.method public final notifySyspropsChanged()V
    .registers 1

    .line 415
    invoke-static {}, Landroid/os/HwBinder;->enableInstrumentation()V

    .line 417
    return-void
.end method

.method public onTransact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V
    .registers 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 445
    const-string v0, "android.hidl.base@1.0::IBase"

    const/high16 v1, -0x80000000

    const/4 v2, 0x0

    const/4 v3, 0x1

    sparse-switch p1, :sswitch_data_17e

    goto/16 :goto_17c

    .line 617
    :sswitch_b
    and-int/lit8 p1, p4, 0x1

    if-eqz p1, :cond_10

    move v2, v3

    .line 618
    :cond_10
    if-eqz v2, :cond_17c

    .line 619
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 620
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 621
    goto/16 :goto_17c

    .line 604
    :sswitch_1a
    and-int/lit8 p1, p4, 0x1

    if-eqz p1, :cond_1f

    move v2, v3

    .line 605
    :cond_1f
    if-eq v2, v3, :cond_29

    .line 606
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 607
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 608
    goto/16 :goto_17c

    .line 609
    :cond_29
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 611
    invoke-virtual {p0}, Landroid/hardware/authsecret/V1_0/IAuthSecret$Stub;->notifySyspropsChanged()V

    .line 612
    goto/16 :goto_17c

    .line 588
    :sswitch_31
    and-int/lit8 p1, p4, 0x1

    if-eqz p1, :cond_36

    goto :goto_37

    :cond_36
    move v3, v2

    .line 589
    :goto_37
    if-eqz v3, :cond_41

    .line 590
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 591
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 592
    goto/16 :goto_17c

    .line 593
    :cond_41
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 595
    invoke-virtual {p0}, Landroid/hardware/authsecret/V1_0/IAuthSecret$Stub;->getDebugInfo()Landroid/hidl/base/V1_0/DebugInfo;

    move-result-object p1

    .line 596
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 597
    invoke-virtual {p1, p3}, Landroid/hidl/base/V1_0/DebugInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 598
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 599
    goto/16 :goto_17c

    .line 573
    :sswitch_53
    and-int/lit8 p1, p4, 0x1

    if-eqz p1, :cond_58

    goto :goto_59

    :cond_58
    move v3, v2

    .line 574
    :goto_59
    if-eqz v3, :cond_63

    .line 575
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 576
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 577
    goto/16 :goto_17c

    .line 578
    :cond_63
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 580
    invoke-virtual {p0}, Landroid/hardware/authsecret/V1_0/IAuthSecret$Stub;->ping()V

    .line 581
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 582
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 583
    goto/16 :goto_17c

    .line 563
    :sswitch_71
    and-int/lit8 p1, p4, 0x1

    if-eqz p1, :cond_76

    move v2, v3

    .line 564
    :cond_76
    if-eqz v2, :cond_17c

    .line 565
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 566
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 567
    goto/16 :goto_17c

    .line 550
    :sswitch_80
    and-int/lit8 p1, p4, 0x1

    if-eqz p1, :cond_85

    move v2, v3

    .line 551
    :cond_85
    if-eq v2, v3, :cond_8f

    .line 552
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 553
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 554
    goto/16 :goto_17c

    .line 555
    :cond_8f
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 557
    invoke-virtual {p0}, Landroid/hardware/authsecret/V1_0/IAuthSecret$Stub;->setHALInstrumentation()V

    .line 558
    goto/16 :goto_17c

    .line 511
    :sswitch_97
    and-int/lit8 p1, p4, 0x1

    if-eqz p1, :cond_9c

    goto :goto_9d

    :cond_9c
    move v3, v2

    .line 512
    :goto_9d
    if-eqz v3, :cond_a7

    .line 513
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 514
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 515
    goto/16 :goto_17c

    .line 516
    :cond_a7
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 518
    invoke-virtual {p0}, Landroid/hardware/authsecret/V1_0/IAuthSecret$Stub;->getHashChain()Ljava/util/ArrayList;

    move-result-object p1

    .line 519
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 521
    new-instance p2, Landroid/os/HwBlob;

    const/16 p4, 0x10

    invoke-direct {p2, p4}, Landroid/os/HwBlob;-><init>(I)V

    .line 523
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p4

    .line 524
    const-wide/16 v0, 0x8

    invoke-virtual {p2, v0, v1, p4}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 525
    const-wide/16 v0, 0xc

    invoke-virtual {p2, v0, v1, v2}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 526
    new-instance v0, Landroid/os/HwBlob;

    mul-int/lit8 v1, p4, 0x20

    invoke-direct {v0, v1}, Landroid/os/HwBlob;-><init>(I)V

    .line 527
    nop

    :goto_ce
    if-ge v2, p4, :cond_ef

    .line 529
    mul-int/lit8 v1, v2, 0x20

    int-to-long v3, v1

    .line 530
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    .line 532
    if-eqz v1, :cond_e7

    array-length v5, v1

    const/16 v6, 0x20

    if-ne v5, v6, :cond_e7

    .line 536
    invoke-virtual {v0, v3, v4, v1}, Landroid/os/HwBlob;->putInt8Array(J[B)V

    .line 537
    nop

    .line 527
    add-int/lit8 v2, v2, 0x1

    goto :goto_ce

    .line 533
    :cond_e7
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Array element is not of the expected length"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 540
    :cond_ef
    const-wide/16 v1, 0x0

    invoke-virtual {p2, v1, v2, v0}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    .line 542
    invoke-virtual {p3, p2}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    .line 544
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 545
    goto/16 :goto_17c

    .line 495
    :sswitch_fc
    and-int/lit8 p1, p4, 0x1

    if-eqz p1, :cond_101

    goto :goto_102

    :cond_101
    move v3, v2

    .line 496
    :goto_102
    if-eqz v3, :cond_10c

    .line 497
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 498
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 499
    goto/16 :goto_17c

    .line 500
    :cond_10c
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 502
    invoke-virtual {p0}, Landroid/hardware/authsecret/V1_0/IAuthSecret$Stub;->interfaceDescriptor()Ljava/lang/String;

    move-result-object p1

    .line 503
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 504
    invoke-virtual {p3, p1}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 505
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 506
    goto :goto_17c

    .line 478
    :sswitch_11d
    and-int/lit8 p1, p4, 0x1

    if-eqz p1, :cond_122

    goto :goto_123

    :cond_122
    move v3, v2

    .line 479
    :goto_123
    if-eqz v3, :cond_12c

    .line 480
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 481
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 482
    goto :goto_17c

    .line 483
    :cond_12c
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 485
    invoke-virtual {p2}, Landroid/os/HwParcel;->readNativeHandle()Landroid/os/NativeHandle;

    move-result-object p1

    .line 486
    invoke-virtual {p2}, Landroid/os/HwParcel;->readStringVector()Ljava/util/ArrayList;

    move-result-object p2

    .line 487
    invoke-virtual {p0, p1, p2}, Landroid/hardware/authsecret/V1_0/IAuthSecret$Stub;->debug(Landroid/os/NativeHandle;Ljava/util/ArrayList;)V

    .line 488
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 489
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 490
    goto :goto_17c

    .line 462
    :sswitch_141
    and-int/lit8 p1, p4, 0x1

    if-eqz p1, :cond_146

    goto :goto_147

    :cond_146
    move v3, v2

    .line 463
    :goto_147
    if-eqz v3, :cond_150

    .line 464
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 465
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 466
    goto :goto_17c

    .line 467
    :cond_150
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 469
    invoke-virtual {p0}, Landroid/hardware/authsecret/V1_0/IAuthSecret$Stub;->interfaceChain()Ljava/util/ArrayList;

    move-result-object p1

    .line 470
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 471
    invoke-virtual {p3, p1}, Landroid/os/HwParcel;->writeStringVector(Ljava/util/ArrayList;)V

    .line 472
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 473
    goto :goto_17c

    .line 448
    :sswitch_161
    and-int/lit8 p1, p4, 0x1

    if-eqz p1, :cond_166

    move v2, v3

    .line 449
    :cond_166
    if-eq v2, v3, :cond_16f

    .line 450
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 451
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 452
    goto :goto_17c

    .line 453
    :cond_16f
    const-string p1, "android.hardware.authsecret@1.0::IAuthSecret"

    invoke-virtual {p2, p1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 455
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt8Vector()Ljava/util/ArrayList;

    move-result-object p1

    .line 456
    invoke-virtual {p0, p1}, Landroid/hardware/authsecret/V1_0/IAuthSecret$Stub;->primaryUserCredential(Ljava/util/ArrayList;)V

    .line 457
    nop

    .line 626
    :cond_17c
    :goto_17c
    return-void

    nop

    :sswitch_data_17e
    .sparse-switch
        0x1 -> :sswitch_161
        0xf43484e -> :sswitch_141
        0xf444247 -> :sswitch_11d
        0xf445343 -> :sswitch_fc
        0xf485348 -> :sswitch_97
        0xf494e54 -> :sswitch_80
        0xf4c5444 -> :sswitch_71
        0xf504e47 -> :sswitch_53
        0xf524546 -> :sswitch_31
        0xf535953 -> :sswitch_1a
        0xf555444 -> :sswitch_b
    .end sparse-switch
.end method

.method public final ping()V
    .registers 1

    .line 399
    return-void
.end method

.method public queryLocalInterface(Ljava/lang/String;)Landroid/os/IHwInterface;
    .registers 3

    .line 427
    const-string v0, "android.hardware.authsecret@1.0::IAuthSecret"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_9

    .line 428
    return-object p0

    .line 430
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

    .line 434
    invoke-virtual {p0, p1}, Landroid/hardware/authsecret/V1_0/IAuthSecret$Stub;->registerService(Ljava/lang/String;)V

    .line 435
    return-void
.end method

.method public final setHALInstrumentation()V
    .registers 1

    .line 389
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 439
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/hardware/authsecret/V1_0/IAuthSecret$Stub;->interfaceDescriptor()Ljava/lang/String;

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

    .line 421
    const/4 p1, 0x1

    return p1
.end method
