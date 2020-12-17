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
    .param p1, "fd"  # Landroid/os/NativeHandle;
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
    .local p2, "options":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    return-void
.end method

.method public final getDebugInfo()Landroid/hidl/base/V1_0/DebugInfo;
    .registers 4

    .line 391
    new-instance v0, Landroid/hidl/base/V1_0/DebugInfo;

    invoke-direct {v0}, Landroid/hidl/base/V1_0/DebugInfo;-><init>()V

    .line 392
    .local v0, "info":Landroid/hidl/base/V1_0/DebugInfo;
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
    .registers 5
    .param p1, "recipient"  # Landroid/os/IHwBinder$DeathRecipient;
    .param p2, "cookie"  # J

    .line 379
    const/4 v0, 0x1

    return v0
.end method

.method public final notifySyspropsChanged()V
    .registers 1

    .line 401
    invoke-static {}, Landroid/os/HwBinder;->enableInstrumentation()V

    .line 403
    return-void
.end method

.method public onTransact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V
    .registers 16
    .param p1, "_hidl_code"  # I
    .param p2, "_hidl_request"  # Landroid/os/HwParcel;
    .param p3, "_hidl_reply"  # Landroid/os/HwParcel;
    .param p4, "_hidl_flags"  # I
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

    sparse-switch p1, :sswitch_data_184

    goto/16 :goto_183

    .line 604
    :sswitch_b
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_10

    move v2, v3

    :cond_10
    move v0, v2

    .line 605
    .local v0, "_hidl_is_oneway":Z
    if-eqz v0, :cond_183

    .line 606
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 607
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 608
    goto/16 :goto_183

    .line 591
    .end local v0  # "_hidl_is_oneway":Z
    :sswitch_1b
    and-int/lit8 v4, p4, 0x1

    if-eqz v4, :cond_20

    move v2, v3

    .line 592
    .local v2, "_hidl_is_oneway":Z
    :cond_20
    if-eq v2, v3, :cond_2a

    .line 593
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 594
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 595
    goto/16 :goto_183

    .line 596
    :cond_2a
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 598
    invoke-virtual {p0}, Landroid/hardware/broadcastradio/V2_0/ICloseHandle$Stub;->notifySyspropsChanged()V

    .line 599
    goto/16 :goto_183

    .line 575
    .end local v2  # "_hidl_is_oneway":Z
    :sswitch_32
    and-int/lit8 v4, p4, 0x1

    if-eqz v4, :cond_37

    goto :goto_38

    :cond_37
    move v3, v2

    .line 576
    .local v3, "_hidl_is_oneway":Z
    :goto_38
    if-eqz v3, :cond_42

    .line 577
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 578
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 579
    goto/16 :goto_183

    .line 580
    :cond_42
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 582
    invoke-virtual {p0}, Landroid/hardware/broadcastradio/V2_0/ICloseHandle$Stub;->getDebugInfo()Landroid/hidl/base/V1_0/DebugInfo;

    move-result-object v0

    .line 583
    .local v0, "_hidl_out_info":Landroid/hidl/base/V1_0/DebugInfo;
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 584
    invoke-virtual {v0, p3}, Landroid/hidl/base/V1_0/DebugInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 585
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 586
    goto/16 :goto_183

    .line 560
    .end local v0  # "_hidl_out_info":Landroid/hidl/base/V1_0/DebugInfo;
    .end local v3  # "_hidl_is_oneway":Z
    :sswitch_54
    and-int/lit8 v4, p4, 0x1

    if-eqz v4, :cond_59

    goto :goto_5a

    :cond_59
    move v3, v2

    .line 561
    .restart local v3  # "_hidl_is_oneway":Z
    :goto_5a
    if-eqz v3, :cond_64

    .line 562
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 563
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 564
    goto/16 :goto_183

    .line 565
    :cond_64
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 567
    invoke-virtual {p0}, Landroid/hardware/broadcastradio/V2_0/ICloseHandle$Stub;->ping()V

    .line 568
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 569
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 570
    goto/16 :goto_183

    .line 550
    .end local v3  # "_hidl_is_oneway":Z
    :sswitch_72
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_77

    move v2, v3

    :cond_77
    move v0, v2

    .line 551
    .local v0, "_hidl_is_oneway":Z
    if-eqz v0, :cond_183

    .line 552
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 553
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 554
    goto/16 :goto_183

    .line 537
    .end local v0  # "_hidl_is_oneway":Z
    :sswitch_82
    and-int/lit8 v4, p4, 0x1

    if-eqz v4, :cond_87

    move v2, v3

    .line 538
    .restart local v2  # "_hidl_is_oneway":Z
    :cond_87
    if-eq v2, v3, :cond_91

    .line 539
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 540
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 541
    goto/16 :goto_183

    .line 542
    :cond_91
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 544
    invoke-virtual {p0}, Landroid/hardware/broadcastradio/V2_0/ICloseHandle$Stub;->setHALInstrumentation()V

    .line 545
    goto/16 :goto_183

    .line 498
    .end local v2  # "_hidl_is_oneway":Z
    :sswitch_99
    and-int/lit8 v4, p4, 0x1

    if-eqz v4, :cond_9e

    goto :goto_9f

    :cond_9e
    move v3, v2

    .line 499
    .restart local v3  # "_hidl_is_oneway":Z
    :goto_9f
    if-eqz v3, :cond_a9

    .line 500
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 501
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 502
    goto/16 :goto_183

    .line 503
    :cond_a9
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 505
    invoke-virtual {p0}, Landroid/hardware/broadcastradio/V2_0/ICloseHandle$Stub;->getHashChain()Ljava/util/ArrayList;

    move-result-object v0

    .line 506
    .local v0, "_hidl_out_hashchain":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 508
    new-instance v1, Landroid/os/HwBlob;

    const/16 v4, 0x10

    invoke-direct {v1, v4}, Landroid/os/HwBlob;-><init>(I)V

    .line 510
    .local v1, "_hidl_blob":Landroid/os/HwBlob;
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 511
    .local v4, "_hidl_vec_size":I
    const-wide/16 v5, 0x8

    invoke-virtual {v1, v5, v6, v4}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 512
    const-wide/16 v5, 0xc

    invoke-virtual {v1, v5, v6, v2}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 513
    new-instance v2, Landroid/os/HwBlob;

    mul-int/lit8 v5, v4, 0x20

    invoke-direct {v2, v5}, Landroid/os/HwBlob;-><init>(I)V

    .line 514
    .local v2, "childBlob":Landroid/os/HwBlob;
    const/4 v5, 0x0

    .local v5, "_hidl_index_0":I
    :goto_d0
    if-ge v5, v4, :cond_f1

    .line 516
    mul-int/lit8 v6, v5, 0x20

    int-to-long v6, v6

    .line 517
    .local v6, "_hidl_array_offset_1":J
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [B

    .line 519
    .local v8, "_hidl_array_item_1":[B
    if-eqz v8, :cond_e9

    array-length v9, v8

    const/16 v10, 0x20

    if-ne v9, v10, :cond_e9

    .line 523
    invoke-virtual {v2, v6, v7, v8}, Landroid/os/HwBlob;->putInt8Array(J[B)V

    .line 524
    nop

    .line 514
    .end local v6  # "_hidl_array_offset_1":J
    .end local v8  # "_hidl_array_item_1":[B
    add-int/lit8 v5, v5, 0x1

    goto :goto_d0

    .line 520
    .restart local v6  # "_hidl_array_offset_1":J
    .restart local v8  # "_hidl_array_item_1":[B
    :cond_e9
    new-instance v9, Ljava/lang/IllegalArgumentException;

    const-string v10, "Array element is not of the expected length"

    invoke-direct {v9, v10}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 527
    .end local v5  # "_hidl_index_0":I
    .end local v6  # "_hidl_array_offset_1":J
    .end local v8  # "_hidl_array_item_1":[B
    :cond_f1
    const-wide/16 v5, 0x0

    invoke-virtual {v1, v5, v6, v2}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    .line 529
    .end local v2  # "childBlob":Landroid/os/HwBlob;
    .end local v4  # "_hidl_vec_size":I
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    .line 531
    .end local v1  # "_hidl_blob":Landroid/os/HwBlob;
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 532
    goto/16 :goto_183

    .line 482
    .end local v0  # "_hidl_out_hashchain":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    .end local v3  # "_hidl_is_oneway":Z
    :sswitch_fe
    and-int/lit8 v4, p4, 0x1

    if-eqz v4, :cond_103

    goto :goto_104

    :cond_103
    move v3, v2

    .line 483
    .restart local v3  # "_hidl_is_oneway":Z
    :goto_104
    if-eqz v3, :cond_10e

    .line 484
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 485
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 486
    goto/16 :goto_183

    .line 487
    :cond_10e
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 489
    invoke-virtual {p0}, Landroid/hardware/broadcastradio/V2_0/ICloseHandle$Stub;->interfaceDescriptor()Ljava/lang/String;

    move-result-object v0

    .line 490
    .local v0, "_hidl_out_descriptor":Ljava/lang/String;
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 491
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 492
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 493
    goto/16 :goto_183

    .line 465
    .end local v0  # "_hidl_out_descriptor":Ljava/lang/String;
    .end local v3  # "_hidl_is_oneway":Z
    :sswitch_120
    and-int/lit8 v4, p4, 0x1

    if-eqz v4, :cond_125

    goto :goto_126

    :cond_125
    move v3, v2

    .line 466
    .restart local v3  # "_hidl_is_oneway":Z
    :goto_126
    if-eqz v3, :cond_12f

    .line 467
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 468
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 469
    goto :goto_183

    .line 470
    :cond_12f
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 472
    invoke-virtual {p2}, Landroid/os/HwParcel;->readNativeHandle()Landroid/os/NativeHandle;

    move-result-object v0

    .line 473
    .local v0, "fd":Landroid/os/NativeHandle;
    invoke-virtual {p2}, Landroid/os/HwParcel;->readStringVector()Ljava/util/ArrayList;

    move-result-object v1

    .line 474
    .local v1, "options":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {p0, v0, v1}, Landroid/hardware/broadcastradio/V2_0/ICloseHandle$Stub;->debug(Landroid/os/NativeHandle;Ljava/util/ArrayList;)V

    .line 475
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 476
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 477
    goto :goto_183

    .line 449
    .end local v0  # "fd":Landroid/os/NativeHandle;
    .end local v1  # "options":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v3  # "_hidl_is_oneway":Z
    :sswitch_144
    and-int/lit8 v4, p4, 0x1

    if-eqz v4, :cond_149

    goto :goto_14a

    :cond_149
    move v3, v2

    .line 450
    .restart local v3  # "_hidl_is_oneway":Z
    :goto_14a
    if-eqz v3, :cond_153

    .line 451
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 452
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 453
    goto :goto_183

    .line 454
    :cond_153
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 456
    invoke-virtual {p0}, Landroid/hardware/broadcastradio/V2_0/ICloseHandle$Stub;->interfaceChain()Ljava/util/ArrayList;

    move-result-object v0

    .line 457
    .local v0, "_hidl_out_descriptors":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 458
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStringVector(Ljava/util/ArrayList;)V

    .line 459
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 460
    goto :goto_183

    .line 434
    .end local v0  # "_hidl_out_descriptors":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v3  # "_hidl_is_oneway":Z
    :sswitch_164
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_169

    goto :goto_16a

    :cond_169
    move v3, v2

    :goto_16a
    move v0, v3

    .line 435
    .local v0, "_hidl_is_oneway":Z
    if-eqz v0, :cond_174

    .line 436
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 437
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 438
    goto :goto_183

    .line 439
    :cond_174
    const-string v1, "android.hardware.broadcastradio@2.0::ICloseHandle"

    invoke-virtual {p2, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 441
    invoke-virtual {p0}, Landroid/hardware/broadcastradio/V2_0/ICloseHandle$Stub;->close()V

    .line 442
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 443
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 444
    nop

    .line 613
    .end local v0  # "_hidl_is_oneway":Z
    :cond_183
    :goto_183
    return-void

    :sswitch_data_184
    .sparse-switch
        0x1 -> :sswitch_164
        0xf43484e -> :sswitch_144
        0xf444247 -> :sswitch_120
        0xf445343 -> :sswitch_fe
        0xf485348 -> :sswitch_99
        0xf494e54 -> :sswitch_82
        0xf4c5444 -> :sswitch_72
        0xf504e47 -> :sswitch_54
        0xf524546 -> :sswitch_32
        0xf535953 -> :sswitch_1b
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
    .param p1, "descriptor"  # Ljava/lang/String;

    .line 413
    const-string v0, "android.hardware.broadcastradio@2.0::ICloseHandle"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 414
    return-object p0

    .line 416
    :cond_9
    const/4 v0, 0x0

    return-object v0
.end method

.method public registerAsService(Ljava/lang/String;)V
    .registers 2
    .param p1, "serviceName"  # Ljava/lang/String;
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
    .registers 3
    .param p1, "recipient"  # Landroid/os/IHwBinder$DeathRecipient;

    .line 407
    const/4 v0, 0x1

    return v0
.end method
