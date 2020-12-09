.class public abstract Landroid/hardware/broadcastradio/V2_0/ICloseHandle$Stub;
.super Landroid/os/HwBinder;
.source "ICloseHandle.java"

# interfaces
.implements Landroid/hardware/broadcastradio/V2_0/ICloseHandle;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/broadcastradio/V2_0/ICloseHandle;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 338
    invoke-direct {p0}, Landroid/os/HwBinder;-><init>()V

    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IHwBinder;
    .registers 1

    .line 341
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

    .line 354
    return-void
.end method

.method public final getDebugInfo()Landroid/hidl/base/V1_0/DebugInfo;
    .registers 4

    .line 391
    new-instance v0, Landroid/hidl/base/V1_0/DebugInfo;

    invoke-direct {v0}, Landroid/hidl/base/V1_0/DebugInfo;-><init>()V

    .line 392
    invoke-static {}, Landroid/os/HidlSupport;->getPidIfSharable()I

    move-result v1

    iput v1, v0, Landroid/hidl/base/V1_0/DebugInfo;->pid:I

    .line 393
    const-wide/16 v1, 0x0

    iput-wide v1, v0, Landroid/hidl/base/V1_0/DebugInfo;->ptr:J

    .line 394
    const/4 v1, 0x0

    iput v1, v0, Landroid/hidl/base/V1_0/DebugInfo;->arch:I

    .line 395
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

    .line 366
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
        -0x1bt
        -0xct
        -0x6at
        0x2t
        -0x70t
        -0x4ct
        -0xdt
        0x8t
        -0x6ft
        0x63t
        -0x23t
        0x43t
        0x25t
        0x1et
        0x1at
        0x3t
        0x2ct
        -0x7ft
        -0x17t
        -0x43t
        -0x49t
        -0x6at
        -0x19t
        0x5at
        -0x79t
        -0x4t
        0x7ct
        0x58t
        0x10t
        -0x3et
        0x62t
        -0x4dt
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

    .line 346
    new-instance v0, Ljava/util/ArrayList;

    const-string v1, "android.hardware.broadcastradio@2.0::ICloseHandle"

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

    .line 360
    const-string v0, "android.hardware.broadcastradio@2.0::ICloseHandle"

    return-object v0
.end method

.method public final linkToDeath(Landroid/os/IHwBinder$DeathRecipient;J)Z
    .registers 4

    .line 379
    const/4 p1, 0x1

    return p1
.end method

.method public final notifySyspropsChanged()V
    .registers 1

    .line 401
    invoke-static {}, Landroid/os/HwBinder;->enableInstrumentation()V

    .line 403
    return-void
.end method

.method public onTransact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V
    .registers 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 431
    const-string v0, "android.hidl.base@1.0::IBase"

    const/high16 v1, -0x80000000

    const/4 v2, 0x0

    const/4 v3, 0x1

    sparse-switch p1, :sswitch_data_182

    goto/16 :goto_180

    .line 604
    :sswitch_b
    and-int/lit8 p1, p4, 0x1

    if-eqz p1, :cond_10

    move v2, v3

    .line 605
    :cond_10
    if-eqz v2, :cond_180

    .line 606
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 607
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 608
    goto/16 :goto_180

    .line 591
    :sswitch_1a
    and-int/lit8 p1, p4, 0x1

    if-eqz p1, :cond_1f

    move v2, v3

    .line 592
    :cond_1f
    if-eq v2, v3, :cond_29

    .line 593
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 594
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 595
    goto/16 :goto_180

    .line 596
    :cond_29
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 598
    invoke-virtual {p0}, Landroid/hardware/broadcastradio/V2_0/ICloseHandle$Stub;->notifySyspropsChanged()V

    .line 599
    goto/16 :goto_180

    .line 575
    :sswitch_31
    and-int/lit8 p1, p4, 0x1

    if-eqz p1, :cond_36

    goto :goto_37

    :cond_36
    move v3, v2

    .line 576
    :goto_37
    if-eqz v3, :cond_41

    .line 577
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 578
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 579
    goto/16 :goto_180

    .line 580
    :cond_41
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 582
    invoke-virtual {p0}, Landroid/hardware/broadcastradio/V2_0/ICloseHandle$Stub;->getDebugInfo()Landroid/hidl/base/V1_0/DebugInfo;

    move-result-object p1

    .line 583
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 584
    invoke-virtual {p1, p3}, Landroid/hidl/base/V1_0/DebugInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 585
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 586
    goto/16 :goto_180

    .line 560
    :sswitch_53
    and-int/lit8 p1, p4, 0x1

    if-eqz p1, :cond_58

    goto :goto_59

    :cond_58
    move v3, v2

    .line 561
    :goto_59
    if-eqz v3, :cond_63

    .line 562
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 563
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 564
    goto/16 :goto_180

    .line 565
    :cond_63
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 567
    invoke-virtual {p0}, Landroid/hardware/broadcastradio/V2_0/ICloseHandle$Stub;->ping()V

    .line 568
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 569
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 570
    goto/16 :goto_180

    .line 550
    :sswitch_71
    and-int/lit8 p1, p4, 0x1

    if-eqz p1, :cond_76

    move v2, v3

    .line 551
    :cond_76
    if-eqz v2, :cond_180

    .line 552
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 553
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 554
    goto/16 :goto_180

    .line 537
    :sswitch_80
    and-int/lit8 p1, p4, 0x1

    if-eqz p1, :cond_85

    move v2, v3

    .line 538
    :cond_85
    if-eq v2, v3, :cond_8f

    .line 539
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 540
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 541
    goto/16 :goto_180

    .line 542
    :cond_8f
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 544
    invoke-virtual {p0}, Landroid/hardware/broadcastradio/V2_0/ICloseHandle$Stub;->setHALInstrumentation()V

    .line 545
    goto/16 :goto_180

    .line 498
    :sswitch_97
    and-int/lit8 p1, p4, 0x1

    if-eqz p1, :cond_9c

    goto :goto_9d

    :cond_9c
    move v3, v2

    .line 499
    :goto_9d
    if-eqz v3, :cond_a7

    .line 500
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 501
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 502
    goto/16 :goto_180

    .line 503
    :cond_a7
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 505
    invoke-virtual {p0}, Landroid/hardware/broadcastradio/V2_0/ICloseHandle$Stub;->getHashChain()Ljava/util/ArrayList;

    move-result-object p1

    .line 506
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 508
    new-instance p2, Landroid/os/HwBlob;

    const/16 p4, 0x10

    invoke-direct {p2, p4}, Landroid/os/HwBlob;-><init>(I)V

    .line 510
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p4

    .line 511
    const-wide/16 v0, 0x8

    invoke-virtual {p2, v0, v1, p4}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 512
    const-wide/16 v0, 0xc

    invoke-virtual {p2, v0, v1, v2}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 513
    new-instance v0, Landroid/os/HwBlob;

    mul-int/lit8 v1, p4, 0x20

    invoke-direct {v0, v1}, Landroid/os/HwBlob;-><init>(I)V

    .line 514
    nop

    :goto_ce
    if-ge v2, p4, :cond_ef

    .line 516
    mul-int/lit8 v1, v2, 0x20

    int-to-long v3, v1

    .line 517
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    .line 519
    if-eqz v1, :cond_e7

    array-length v5, v1

    const/16 v6, 0x20

    if-ne v5, v6, :cond_e7

    .line 523
    invoke-virtual {v0, v3, v4, v1}, Landroid/os/HwBlob;->putInt8Array(J[B)V

    .line 524
    nop

    .line 514
    add-int/lit8 v2, v2, 0x1

    goto :goto_ce

    .line 520
    :cond_e7
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Array element is not of the expected length"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 527
    :cond_ef
    const-wide/16 v1, 0x0

    invoke-virtual {p2, v1, v2, v0}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    .line 529
    invoke-virtual {p3, p2}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    .line 531
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 532
    goto/16 :goto_180

    .line 482
    :sswitch_fc
    and-int/lit8 p1, p4, 0x1

    if-eqz p1, :cond_101

    goto :goto_102

    :cond_101
    move v3, v2

    .line 483
    :goto_102
    if-eqz v3, :cond_10c

    .line 484
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 485
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 486
    goto/16 :goto_180

    .line 487
    :cond_10c
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 489
    invoke-virtual {p0}, Landroid/hardware/broadcastradio/V2_0/ICloseHandle$Stub;->interfaceDescriptor()Ljava/lang/String;

    move-result-object p1

    .line 490
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 491
    invoke-virtual {p3, p1}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 492
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 493
    goto/16 :goto_180

    .line 465
    :sswitch_11e
    and-int/lit8 p1, p4, 0x1

    if-eqz p1, :cond_123

    goto :goto_124

    :cond_123
    move v3, v2

    .line 466
    :goto_124
    if-eqz v3, :cond_12d

    .line 467
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 468
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 469
    goto :goto_180

    .line 470
    :cond_12d
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 472
    invoke-virtual {p2}, Landroid/os/HwParcel;->readNativeHandle()Landroid/os/NativeHandle;

    move-result-object p1

    .line 473
    invoke-virtual {p2}, Landroid/os/HwParcel;->readStringVector()Ljava/util/ArrayList;

    move-result-object p2

    .line 474
    invoke-virtual {p0, p1, p2}, Landroid/hardware/broadcastradio/V2_0/ICloseHandle$Stub;->debug(Landroid/os/NativeHandle;Ljava/util/ArrayList;)V

    .line 475
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 476
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 477
    goto :goto_180

    .line 449
    :sswitch_142
    and-int/lit8 p1, p4, 0x1

    if-eqz p1, :cond_147

    goto :goto_148

    :cond_147
    move v3, v2

    .line 450
    :goto_148
    if-eqz v3, :cond_151

    .line 451
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 452
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 453
    goto :goto_180

    .line 454
    :cond_151
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 456
    invoke-virtual {p0}, Landroid/hardware/broadcastradio/V2_0/ICloseHandle$Stub;->interfaceChain()Ljava/util/ArrayList;

    move-result-object p1

    .line 457
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 458
    invoke-virtual {p3, p1}, Landroid/os/HwParcel;->writeStringVector(Ljava/util/ArrayList;)V

    .line 459
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 460
    goto :goto_180

    .line 434
    :sswitch_162
    and-int/lit8 p1, p4, 0x1

    if-eqz p1, :cond_167

    goto :goto_168

    :cond_167
    move v3, v2

    .line 435
    :goto_168
    if-eqz v3, :cond_171

    .line 436
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 437
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 438
    goto :goto_180

    .line 439
    :cond_171
    const-string p1, "android.hardware.broadcastradio@2.0::ICloseHandle"

    invoke-virtual {p2, p1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 441
    invoke-virtual {p0}, Landroid/hardware/broadcastradio/V2_0/ICloseHandle$Stub;->close()V

    .line 442
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 443
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 444
    nop

    .line 613
    :cond_180
    :goto_180
    return-void

    nop

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

    .line 385
    return-void
.end method

.method public queryLocalInterface(Ljava/lang/String;)Landroid/os/IHwInterface;
    .registers 3

    .line 413
    const-string v0, "android.hardware.broadcastradio@2.0::ICloseHandle"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_9

    .line 414
    return-object p0

    .line 416
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

    .line 420
    invoke-virtual {p0, p1}, Landroid/hardware/broadcastradio/V2_0/ICloseHandle$Stub;->registerService(Ljava/lang/String;)V

    .line 421
    return-void
.end method

.method public final setHALInstrumentation()V
    .registers 1

    .line 375
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 425
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/hardware/broadcastradio/V2_0/ICloseHandle$Stub;->interfaceDescriptor()Ljava/lang/String;

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

    .line 407
    const/4 p1, 0x1

    return p1
.end method
