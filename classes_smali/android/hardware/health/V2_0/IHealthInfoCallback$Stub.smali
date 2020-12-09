.class public abstract Landroid/hardware/health/V2_0/IHealthInfoCallback$Stub;
.super Landroid/os/HwBinder;
.source "IHealthInfoCallback.java"

# interfaces
.implements Landroid/hardware/health/V2_0/IHealthInfoCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/health/V2_0/IHealthInfoCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 335
    invoke-direct {p0}, Landroid/os/HwBinder;-><init>()V

    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IHwBinder;
    .registers 1

    .line 338
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

    .line 351
    return-void
.end method

.method public final getDebugInfo()Landroid/hidl/base/V1_0/DebugInfo;
    .registers 4

    .line 388
    new-instance v0, Landroid/hidl/base/V1_0/DebugInfo;

    invoke-direct {v0}, Landroid/hidl/base/V1_0/DebugInfo;-><init>()V

    .line 389
    invoke-static {}, Landroid/os/HidlSupport;->getPidIfSharable()I

    move-result v1

    iput v1, v0, Landroid/hidl/base/V1_0/DebugInfo;->pid:I

    .line 390
    const-wide/16 v1, 0x0

    iput-wide v1, v0, Landroid/hidl/base/V1_0/DebugInfo;->ptr:J

    .line 391
    const/4 v1, 0x0

    iput v1, v0, Landroid/hidl/base/V1_0/DebugInfo;->arch:I

    .line 392
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

    .line 363
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
        0x43t
        0x4ct
        0x4ct
        0x32t
        -0x40t
        0xbt
        0xet
        0x54t
        -0x45t
        0x5t
        -0x1ct
        0xct
        0x79t
        0x50t
        0x32t
        0x8t
        -0x4ct
        0xft
        0x78t
        0x6at
        0x31t
        -0x80t
        0x29t
        -0x5et
        -0x5ct
        -0xat
        0x6et
        0x34t
        -0xft
        0xft
        0x2at
        0x76t
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

    .line 343
    new-instance v0, Ljava/util/ArrayList;

    const-string v1, "android.hardware.health@2.0::IHealthInfoCallback"

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

    .line 357
    const-string v0, "android.hardware.health@2.0::IHealthInfoCallback"

    return-object v0
.end method

.method public final linkToDeath(Landroid/os/IHwBinder$DeathRecipient;J)Z
    .registers 4

    .line 376
    const/4 p1, 0x1

    return p1
.end method

.method public final notifySyspropsChanged()V
    .registers 1

    .line 398
    invoke-static {}, Landroid/os/HwBinder;->enableInstrumentation()V

    .line 400
    return-void
.end method

.method public onTransact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V
    .registers 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 428
    const-string v0, "android.hidl.base@1.0::IBase"

    const/high16 v1, -0x80000000

    const/4 v2, 0x0

    const/4 v3, 0x1

    sparse-switch p1, :sswitch_data_182

    goto/16 :goto_181

    .line 601
    :sswitch_b
    and-int/lit8 p1, p4, 0x1

    if-eqz p1, :cond_10

    move v2, v3

    .line 602
    :cond_10
    if-eqz v2, :cond_181

    .line 603
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 604
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 605
    goto/16 :goto_181

    .line 588
    :sswitch_1a
    and-int/lit8 p1, p4, 0x1

    if-eqz p1, :cond_1f

    move v2, v3

    .line 589
    :cond_1f
    if-eq v2, v3, :cond_29

    .line 590
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 591
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 592
    goto/16 :goto_181

    .line 593
    :cond_29
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 595
    invoke-virtual {p0}, Landroid/hardware/health/V2_0/IHealthInfoCallback$Stub;->notifySyspropsChanged()V

    .line 596
    goto/16 :goto_181

    .line 572
    :sswitch_31
    and-int/lit8 p1, p4, 0x1

    if-eqz p1, :cond_36

    goto :goto_37

    :cond_36
    move v3, v2

    .line 573
    :goto_37
    if-eqz v3, :cond_41

    .line 574
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 575
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 576
    goto/16 :goto_181

    .line 577
    :cond_41
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 579
    invoke-virtual {p0}, Landroid/hardware/health/V2_0/IHealthInfoCallback$Stub;->getDebugInfo()Landroid/hidl/base/V1_0/DebugInfo;

    move-result-object p1

    .line 580
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 581
    invoke-virtual {p1, p3}, Landroid/hidl/base/V1_0/DebugInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 582
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 583
    goto/16 :goto_181

    .line 557
    :sswitch_53
    and-int/lit8 p1, p4, 0x1

    if-eqz p1, :cond_58

    goto :goto_59

    :cond_58
    move v3, v2

    .line 558
    :goto_59
    if-eqz v3, :cond_63

    .line 559
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 560
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 561
    goto/16 :goto_181

    .line 562
    :cond_63
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 564
    invoke-virtual {p0}, Landroid/hardware/health/V2_0/IHealthInfoCallback$Stub;->ping()V

    .line 565
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 566
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 567
    goto/16 :goto_181

    .line 547
    :sswitch_71
    and-int/lit8 p1, p4, 0x1

    if-eqz p1, :cond_76

    move v2, v3

    .line 548
    :cond_76
    if-eqz v2, :cond_181

    .line 549
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 550
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 551
    goto/16 :goto_181

    .line 534
    :sswitch_80
    and-int/lit8 p1, p4, 0x1

    if-eqz p1, :cond_85

    move v2, v3

    .line 535
    :cond_85
    if-eq v2, v3, :cond_8f

    .line 536
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 537
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 538
    goto/16 :goto_181

    .line 539
    :cond_8f
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 541
    invoke-virtual {p0}, Landroid/hardware/health/V2_0/IHealthInfoCallback$Stub;->setHALInstrumentation()V

    .line 542
    goto/16 :goto_181

    .line 495
    :sswitch_97
    and-int/lit8 p1, p4, 0x1

    if-eqz p1, :cond_9c

    goto :goto_9d

    :cond_9c
    move v3, v2

    .line 496
    :goto_9d
    if-eqz v3, :cond_a7

    .line 497
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 498
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 499
    goto/16 :goto_181

    .line 500
    :cond_a7
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 502
    invoke-virtual {p0}, Landroid/hardware/health/V2_0/IHealthInfoCallback$Stub;->getHashChain()Ljava/util/ArrayList;

    move-result-object p1

    .line 503
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 505
    new-instance p2, Landroid/os/HwBlob;

    const/16 p4, 0x10

    invoke-direct {p2, p4}, Landroid/os/HwBlob;-><init>(I)V

    .line 507
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p4

    .line 508
    const-wide/16 v0, 0x8

    invoke-virtual {p2, v0, v1, p4}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 509
    const-wide/16 v0, 0xc

    invoke-virtual {p2, v0, v1, v2}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 510
    new-instance v0, Landroid/os/HwBlob;

    mul-int/lit8 v1, p4, 0x20

    invoke-direct {v0, v1}, Landroid/os/HwBlob;-><init>(I)V

    .line 511
    nop

    :goto_ce
    if-ge v2, p4, :cond_ef

    .line 513
    mul-int/lit8 v1, v2, 0x20

    int-to-long v3, v1

    .line 514
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    .line 516
    if-eqz v1, :cond_e7

    array-length v5, v1

    const/16 v6, 0x20

    if-ne v5, v6, :cond_e7

    .line 520
    invoke-virtual {v0, v3, v4, v1}, Landroid/os/HwBlob;->putInt8Array(J[B)V

    .line 521
    nop

    .line 511
    add-int/lit8 v2, v2, 0x1

    goto :goto_ce

    .line 517
    :cond_e7
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Array element is not of the expected length"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 524
    :cond_ef
    const-wide/16 v1, 0x0

    invoke-virtual {p2, v1, v2, v0}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    .line 526
    invoke-virtual {p3, p2}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    .line 528
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 529
    goto/16 :goto_181

    .line 479
    :sswitch_fc
    and-int/lit8 p1, p4, 0x1

    if-eqz p1, :cond_101

    goto :goto_102

    :cond_101
    move v3, v2

    .line 480
    :goto_102
    if-eqz v3, :cond_10c

    .line 481
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 482
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 483
    goto/16 :goto_181

    .line 484
    :cond_10c
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 486
    invoke-virtual {p0}, Landroid/hardware/health/V2_0/IHealthInfoCallback$Stub;->interfaceDescriptor()Ljava/lang/String;

    move-result-object p1

    .line 487
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 488
    invoke-virtual {p3, p1}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 489
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 490
    goto/16 :goto_181

    .line 462
    :sswitch_11e
    and-int/lit8 p1, p4, 0x1

    if-eqz p1, :cond_123

    goto :goto_124

    :cond_123
    move v3, v2

    .line 463
    :goto_124
    if-eqz v3, :cond_12d

    .line 464
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 465
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 466
    goto :goto_181

    .line 467
    :cond_12d
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 469
    invoke-virtual {p2}, Landroid/os/HwParcel;->readNativeHandle()Landroid/os/NativeHandle;

    move-result-object p1

    .line 470
    invoke-virtual {p2}, Landroid/os/HwParcel;->readStringVector()Ljava/util/ArrayList;

    move-result-object p2

    .line 471
    invoke-virtual {p0, p1, p2}, Landroid/hardware/health/V2_0/IHealthInfoCallback$Stub;->debug(Landroid/os/NativeHandle;Ljava/util/ArrayList;)V

    .line 472
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 473
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 474
    goto :goto_181

    .line 446
    :sswitch_142
    and-int/lit8 p1, p4, 0x1

    if-eqz p1, :cond_147

    goto :goto_148

    :cond_147
    move v3, v2

    .line 447
    :goto_148
    if-eqz v3, :cond_151

    .line 448
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 449
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 450
    goto :goto_181

    .line 451
    :cond_151
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 453
    invoke-virtual {p0}, Landroid/hardware/health/V2_0/IHealthInfoCallback$Stub;->interfaceChain()Ljava/util/ArrayList;

    move-result-object p1

    .line 454
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 455
    invoke-virtual {p3, p1}, Landroid/os/HwParcel;->writeStringVector(Ljava/util/ArrayList;)V

    .line 456
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 457
    goto :goto_181

    .line 431
    :sswitch_162
    and-int/lit8 p1, p4, 0x1

    if-eqz p1, :cond_167

    move v2, v3

    .line 432
    :cond_167
    if-eq v2, v3, :cond_170

    .line 433
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 434
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 435
    goto :goto_181

    .line 436
    :cond_170
    const-string p1, "android.hardware.health@2.0::IHealthInfoCallback"

    invoke-virtual {p2, p1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 438
    new-instance p1, Landroid/hardware/health/V2_0/HealthInfo;

    invoke-direct {p1}, Landroid/hardware/health/V2_0/HealthInfo;-><init>()V

    .line 439
    invoke-virtual {p1, p2}, Landroid/hardware/health/V2_0/HealthInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 440
    invoke-virtual {p0, p1}, Landroid/hardware/health/V2_0/IHealthInfoCallback$Stub;->healthInfoChanged(Landroid/hardware/health/V2_0/HealthInfo;)V

    .line 441
    nop

    .line 610
    :cond_181
    :goto_181
    return-void

    :sswitch_data_182
    .sparse-switch
        0x1 -> :sswitch_162
        0xf43484e -> :sswitch_142
        0xf444247 -> :sswitch_11e
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

    .line 382
    return-void
.end method

.method public queryLocalInterface(Ljava/lang/String;)Landroid/os/IHwInterface;
    .registers 3

    .line 410
    const-string v0, "android.hardware.health@2.0::IHealthInfoCallback"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_9

    .line 411
    return-object p0

    .line 413
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

    .line 417
    invoke-virtual {p0, p1}, Landroid/hardware/health/V2_0/IHealthInfoCallback$Stub;->registerService(Ljava/lang/String;)V

    .line 418
    return-void
.end method

.method public final setHALInstrumentation()V
    .registers 1

    .line 372
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 422
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/hardware/health/V2_0/IHealthInfoCallback$Stub;->interfaceDescriptor()Ljava/lang/String;

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

    .line 404
    const/4 p1, 0x1

    return p1
.end method
