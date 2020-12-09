.class public abstract Landroid/hidl/manager/V1_2/IClientCallback$Stub;
.super Landroid/os/HwBinder;
.source "IClientCallback.java"

# interfaces
.implements Landroid/hidl/manager/V1_2/IClientCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hidl/manager/V1_2/IClientCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 342
    invoke-direct {p0}, Landroid/os/HwBinder;-><init>()V

    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IHwBinder;
    .registers 1

    .line 345
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

    .line 358
    return-void
.end method

.method public final getDebugInfo()Landroid/hidl/base/V1_0/DebugInfo;
    .registers 4

    .line 395
    new-instance v0, Landroid/hidl/base/V1_0/DebugInfo;

    invoke-direct {v0}, Landroid/hidl/base/V1_0/DebugInfo;-><init>()V

    .line 396
    invoke-static {}, Landroid/os/HidlSupport;->getPidIfSharable()I

    move-result v1

    iput v1, v0, Landroid/hidl/base/V1_0/DebugInfo;->pid:I

    .line 397
    const-wide/16 v1, 0x0

    iput-wide v1, v0, Landroid/hidl/base/V1_0/DebugInfo;->ptr:J

    .line 398
    const/4 v1, 0x0

    iput v1, v0, Landroid/hidl/base/V1_0/DebugInfo;->arch:I

    .line 399
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

    .line 370
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
        -0x5bt
        0x70t
        -0x3t
        0x43t
        0x6at
        -0x13t
        0x5et
        -0x12t
        -0x16t
        0x24t
        -0x6bt
        -0x47t
        0x26t
        0x7et
        0x7ft
        -0x64t
        0x48t
        0x8t
        -0x2bt
        0x1et
        -0x3t
        0x4ct
        -0x65t
        -0x60t
        -0x6ft
        0x3bt
        -0x6ft
        0x2t
        -0x15t
        -0x6dt
        -0x52t
        -0x13t
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

    .line 350
    new-instance v0, Ljava/util/ArrayList;

    const-string v1, "android.hidl.manager@1.2::IClientCallback"

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

    .line 364
    const-string v0, "android.hidl.manager@1.2::IClientCallback"

    return-object v0
.end method

.method public final linkToDeath(Landroid/os/IHwBinder$DeathRecipient;J)Z
    .registers 4

    .line 383
    const/4 p1, 0x1

    return p1
.end method

.method public final notifySyspropsChanged()V
    .registers 1

    .line 405
    invoke-static {}, Landroid/os/HwBinder;->enableInstrumentation()V

    .line 407
    return-void
.end method

.method public onTransact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V
    .registers 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 435
    const-string v0, "android.hidl.base@1.0::IBase"

    const/high16 v1, -0x80000000

    const/4 v2, 0x0

    const/4 v3, 0x1

    sparse-switch p1, :sswitch_data_186

    goto/16 :goto_185

    .line 608
    :sswitch_b
    and-int/lit8 p1, p4, 0x1

    if-eqz p1, :cond_10

    move v2, v3

    .line 609
    :cond_10
    if-eqz v2, :cond_185

    .line 610
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 611
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 612
    goto/16 :goto_185

    .line 595
    :sswitch_1a
    and-int/lit8 p1, p4, 0x1

    if-eqz p1, :cond_1f

    move v2, v3

    .line 596
    :cond_1f
    if-eq v2, v3, :cond_29

    .line 597
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 598
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 599
    goto/16 :goto_185

    .line 600
    :cond_29
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 602
    invoke-virtual {p0}, Landroid/hidl/manager/V1_2/IClientCallback$Stub;->notifySyspropsChanged()V

    .line 603
    goto/16 :goto_185

    .line 579
    :sswitch_31
    and-int/lit8 p1, p4, 0x1

    if-eqz p1, :cond_36

    goto :goto_37

    :cond_36
    move v3, v2

    .line 580
    :goto_37
    if-eqz v3, :cond_41

    .line 581
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 582
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 583
    goto/16 :goto_185

    .line 584
    :cond_41
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 586
    invoke-virtual {p0}, Landroid/hidl/manager/V1_2/IClientCallback$Stub;->getDebugInfo()Landroid/hidl/base/V1_0/DebugInfo;

    move-result-object p1

    .line 587
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 588
    invoke-virtual {p1, p3}, Landroid/hidl/base/V1_0/DebugInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 589
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 590
    goto/16 :goto_185

    .line 564
    :sswitch_53
    and-int/lit8 p1, p4, 0x1

    if-eqz p1, :cond_58

    goto :goto_59

    :cond_58
    move v3, v2

    .line 565
    :goto_59
    if-eqz v3, :cond_63

    .line 566
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 567
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 568
    goto/16 :goto_185

    .line 569
    :cond_63
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 571
    invoke-virtual {p0}, Landroid/hidl/manager/V1_2/IClientCallback$Stub;->ping()V

    .line 572
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 573
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 574
    goto/16 :goto_185

    .line 554
    :sswitch_71
    and-int/lit8 p1, p4, 0x1

    if-eqz p1, :cond_76

    move v2, v3

    .line 555
    :cond_76
    if-eqz v2, :cond_185

    .line 556
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 557
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 558
    goto/16 :goto_185

    .line 541
    :sswitch_80
    and-int/lit8 p1, p4, 0x1

    if-eqz p1, :cond_85

    move v2, v3

    .line 542
    :cond_85
    if-eq v2, v3, :cond_8f

    .line 543
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 544
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 545
    goto/16 :goto_185

    .line 546
    :cond_8f
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 548
    invoke-virtual {p0}, Landroid/hidl/manager/V1_2/IClientCallback$Stub;->setHALInstrumentation()V

    .line 549
    goto/16 :goto_185

    .line 502
    :sswitch_97
    and-int/lit8 p1, p4, 0x1

    if-eqz p1, :cond_9c

    goto :goto_9d

    :cond_9c
    move v3, v2

    .line 503
    :goto_9d
    if-eqz v3, :cond_a7

    .line 504
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 505
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 506
    goto/16 :goto_185

    .line 507
    :cond_a7
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 509
    invoke-virtual {p0}, Landroid/hidl/manager/V1_2/IClientCallback$Stub;->getHashChain()Ljava/util/ArrayList;

    move-result-object p1

    .line 510
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 512
    new-instance p2, Landroid/os/HwBlob;

    const/16 p4, 0x10

    invoke-direct {p2, p4}, Landroid/os/HwBlob;-><init>(I)V

    .line 514
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p4

    .line 515
    const-wide/16 v0, 0x8

    invoke-virtual {p2, v0, v1, p4}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 516
    const-wide/16 v0, 0xc

    invoke-virtual {p2, v0, v1, v2}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 517
    new-instance v0, Landroid/os/HwBlob;

    mul-int/lit8 v1, p4, 0x20

    invoke-direct {v0, v1}, Landroid/os/HwBlob;-><init>(I)V

    .line 518
    nop

    :goto_ce
    if-ge v2, p4, :cond_ef

    .line 520
    mul-int/lit8 v1, v2, 0x20

    int-to-long v3, v1

    .line 521
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    .line 523
    if-eqz v1, :cond_e7

    array-length v5, v1

    const/16 v6, 0x20

    if-ne v5, v6, :cond_e7

    .line 527
    invoke-virtual {v0, v3, v4, v1}, Landroid/os/HwBlob;->putInt8Array(J[B)V

    .line 528
    nop

    .line 518
    add-int/lit8 v2, v2, 0x1

    goto :goto_ce

    .line 524
    :cond_e7
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Array element is not of the expected length"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 531
    :cond_ef
    const-wide/16 v1, 0x0

    invoke-virtual {p2, v1, v2, v0}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    .line 533
    invoke-virtual {p3, p2}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    .line 535
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 536
    goto/16 :goto_185

    .line 486
    :sswitch_fc
    and-int/lit8 p1, p4, 0x1

    if-eqz p1, :cond_101

    goto :goto_102

    :cond_101
    move v3, v2

    .line 487
    :goto_102
    if-eqz v3, :cond_10c

    .line 488
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 489
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 490
    goto/16 :goto_185

    .line 491
    :cond_10c
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 493
    invoke-virtual {p0}, Landroid/hidl/manager/V1_2/IClientCallback$Stub;->interfaceDescriptor()Ljava/lang/String;

    move-result-object p1

    .line 494
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 495
    invoke-virtual {p3, p1}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 496
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 497
    goto/16 :goto_185

    .line 469
    :sswitch_11e
    and-int/lit8 p1, p4, 0x1

    if-eqz p1, :cond_123

    goto :goto_124

    :cond_123
    move v3, v2

    .line 470
    :goto_124
    if-eqz v3, :cond_12d

    .line 471
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 472
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 473
    goto :goto_185

    .line 474
    :cond_12d
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 476
    invoke-virtual {p2}, Landroid/os/HwParcel;->readNativeHandle()Landroid/os/NativeHandle;

    move-result-object p1

    .line 477
    invoke-virtual {p2}, Landroid/os/HwParcel;->readStringVector()Ljava/util/ArrayList;

    move-result-object p2

    .line 478
    invoke-virtual {p0, p1, p2}, Landroid/hidl/manager/V1_2/IClientCallback$Stub;->debug(Landroid/os/NativeHandle;Ljava/util/ArrayList;)V

    .line 479
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 480
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 481
    goto :goto_185

    .line 453
    :sswitch_142
    and-int/lit8 p1, p4, 0x1

    if-eqz p1, :cond_147

    goto :goto_148

    :cond_147
    move v3, v2

    .line 454
    :goto_148
    if-eqz v3, :cond_151

    .line 455
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 456
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 457
    goto :goto_185

    .line 458
    :cond_151
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 460
    invoke-virtual {p0}, Landroid/hidl/manager/V1_2/IClientCallback$Stub;->interfaceChain()Ljava/util/ArrayList;

    move-result-object p1

    .line 461
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 462
    invoke-virtual {p3, p1}, Landroid/os/HwParcel;->writeStringVector(Ljava/util/ArrayList;)V

    .line 463
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 464
    goto :goto_185

    .line 438
    :sswitch_162
    and-int/lit8 p1, p4, 0x1

    if-eqz p1, :cond_167

    move v2, v3

    .line 439
    :cond_167
    if-eq v2, v3, :cond_170

    .line 440
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 441
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 442
    goto :goto_185

    .line 443
    :cond_170
    const-string p1, "android.hidl.manager@1.2::IClientCallback"

    invoke-virtual {p2, p1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 445
    invoke-virtual {p2}, Landroid/os/HwParcel;->readStrongBinder()Landroid/os/IHwBinder;

    move-result-object p1

    invoke-static {p1}, Landroid/hidl/base/V1_0/IBase;->asInterface(Landroid/os/IHwBinder;)Landroid/hidl/base/V1_0/IBase;

    move-result-object p1

    .line 446
    invoke-virtual {p2}, Landroid/os/HwParcel;->readBool()Z

    move-result p2

    .line 447
    invoke-virtual {p0, p1, p2}, Landroid/hidl/manager/V1_2/IClientCallback$Stub;->onClients(Landroid/hidl/base/V1_0/IBase;Z)V

    .line 448
    nop

    .line 617
    :cond_185
    :goto_185
    return-void

    :sswitch_data_186
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

    .line 389
    return-void
.end method

.method public queryLocalInterface(Ljava/lang/String;)Landroid/os/IHwInterface;
    .registers 3

    .line 417
    const-string v0, "android.hidl.manager@1.2::IClientCallback"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_9

    .line 418
    return-object p0

    .line 420
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

    .line 424
    invoke-virtual {p0, p1}, Landroid/hidl/manager/V1_2/IClientCallback$Stub;->registerService(Ljava/lang/String;)V

    .line 425
    return-void
.end method

.method public final setHALInstrumentation()V
    .registers 1

    .line 379
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 429
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/hidl/manager/V1_2/IClientCallback$Stub;->interfaceDescriptor()Ljava/lang/String;

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

    .line 411
    const/4 p1, 0x1

    return p1
.end method
