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

    .line 368
    .local p2, "options":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    return-void
.end method

.method public final getDebugInfo()Landroid/hidl/base/V1_0/DebugInfo;
    .registers 4

    .line 405
    new-instance v0, Landroid/hidl/base/V1_0/DebugInfo;

    invoke-direct {v0}, Landroid/hidl/base/V1_0/DebugInfo;-><init>()V

    .line 406
    .local v0, "info":Landroid/hidl/base/V1_0/DebugInfo;
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
    .registers 5
    .param p1, "recipient"  # Landroid/os/IHwBinder$DeathRecipient;
    .param p2, "cookie"  # J

    .line 393
    const/4 v0, 0x1

    return v0
.end method

.method public final notifySyspropsChanged()V
    .registers 1

    .line 415
    invoke-static {}, Landroid/os/HwBinder;->enableInstrumentation()V

    .line 417
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

    .line 445
    const-string v0, "android.hidl.base@1.0::IBase"

    const/high16 v1, -0x80000000

    const/4 v2, 0x0

    const/4 v3, 0x1

    sparse-switch p1, :sswitch_data_180

    goto/16 :goto_17f

    .line 617
    :sswitch_b
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_10

    move v2, v3

    :cond_10
    move v0, v2

    .line 618
    .local v0, "_hidl_is_oneway":Z
    if-eqz v0, :cond_17f

    .line 619
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 620
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 621
    goto/16 :goto_17f

    .line 604
    .end local v0  # "_hidl_is_oneway":Z
    :sswitch_1b
    and-int/lit8 v4, p4, 0x1

    if-eqz v4, :cond_20

    move v2, v3

    .line 605
    .local v2, "_hidl_is_oneway":Z
    :cond_20
    if-eq v2, v3, :cond_2a

    .line 606
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 607
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 608
    goto/16 :goto_17f

    .line 609
    :cond_2a
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 611
    invoke-virtual {p0}, Landroid/hardware/authsecret/V1_0/IAuthSecret$Stub;->notifySyspropsChanged()V

    .line 612
    goto/16 :goto_17f

    .line 588
    .end local v2  # "_hidl_is_oneway":Z
    :sswitch_32
    and-int/lit8 v4, p4, 0x1

    if-eqz v4, :cond_37

    goto :goto_38

    :cond_37
    move v3, v2

    .line 589
    .local v3, "_hidl_is_oneway":Z
    :goto_38
    if-eqz v3, :cond_42

    .line 590
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 591
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 592
    goto/16 :goto_17f

    .line 593
    :cond_42
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 595
    invoke-virtual {p0}, Landroid/hardware/authsecret/V1_0/IAuthSecret$Stub;->getDebugInfo()Landroid/hidl/base/V1_0/DebugInfo;

    move-result-object v0

    .line 596
    .local v0, "_hidl_out_info":Landroid/hidl/base/V1_0/DebugInfo;
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 597
    invoke-virtual {v0, p3}, Landroid/hidl/base/V1_0/DebugInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 598
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 599
    goto/16 :goto_17f

    .line 573
    .end local v0  # "_hidl_out_info":Landroid/hidl/base/V1_0/DebugInfo;
    .end local v3  # "_hidl_is_oneway":Z
    :sswitch_54
    and-int/lit8 v4, p4, 0x1

    if-eqz v4, :cond_59

    goto :goto_5a

    :cond_59
    move v3, v2

    .line 574
    .restart local v3  # "_hidl_is_oneway":Z
    :goto_5a
    if-eqz v3, :cond_64

    .line 575
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 576
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 577
    goto/16 :goto_17f

    .line 578
    :cond_64
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 580
    invoke-virtual {p0}, Landroid/hardware/authsecret/V1_0/IAuthSecret$Stub;->ping()V

    .line 581
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 582
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 583
    goto/16 :goto_17f

    .line 563
    .end local v3  # "_hidl_is_oneway":Z
    :sswitch_72
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_77

    move v2, v3

    :cond_77
    move v0, v2

    .line 564
    .local v0, "_hidl_is_oneway":Z
    if-eqz v0, :cond_17f

    .line 565
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 566
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 567
    goto/16 :goto_17f

    .line 550
    .end local v0  # "_hidl_is_oneway":Z
    :sswitch_82
    and-int/lit8 v4, p4, 0x1

    if-eqz v4, :cond_87

    move v2, v3

    .line 551
    .restart local v2  # "_hidl_is_oneway":Z
    :cond_87
    if-eq v2, v3, :cond_91

    .line 552
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 553
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 554
    goto/16 :goto_17f

    .line 555
    :cond_91
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 557
    invoke-virtual {p0}, Landroid/hardware/authsecret/V1_0/IAuthSecret$Stub;->setHALInstrumentation()V

    .line 558
    goto/16 :goto_17f

    .line 511
    .end local v2  # "_hidl_is_oneway":Z
    :sswitch_99
    and-int/lit8 v4, p4, 0x1

    if-eqz v4, :cond_9e

    goto :goto_9f

    :cond_9e
    move v3, v2

    .line 512
    .restart local v3  # "_hidl_is_oneway":Z
    :goto_9f
    if-eqz v3, :cond_a9

    .line 513
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 514
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 515
    goto/16 :goto_17f

    .line 516
    :cond_a9
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 518
    invoke-virtual {p0}, Landroid/hardware/authsecret/V1_0/IAuthSecret$Stub;->getHashChain()Ljava/util/ArrayList;

    move-result-object v0

    .line 519
    .local v0, "_hidl_out_hashchain":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 521
    new-instance v1, Landroid/os/HwBlob;

    const/16 v4, 0x10

    invoke-direct {v1, v4}, Landroid/os/HwBlob;-><init>(I)V

    .line 523
    .local v1, "_hidl_blob":Landroid/os/HwBlob;
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 524
    .local v4, "_hidl_vec_size":I
    const-wide/16 v5, 0x8

    invoke-virtual {v1, v5, v6, v4}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 525
    const-wide/16 v5, 0xc

    invoke-virtual {v1, v5, v6, v2}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 526
    new-instance v2, Landroid/os/HwBlob;

    mul-int/lit8 v5, v4, 0x20

    invoke-direct {v2, v5}, Landroid/os/HwBlob;-><init>(I)V

    .line 527
    .local v2, "childBlob":Landroid/os/HwBlob;
    const/4 v5, 0x0

    .local v5, "_hidl_index_0":I
    :goto_d0
    if-ge v5, v4, :cond_f1

    .line 529
    mul-int/lit8 v6, v5, 0x20

    int-to-long v6, v6

    .line 530
    .local v6, "_hidl_array_offset_1":J
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [B

    .line 532
    .local v8, "_hidl_array_item_1":[B
    if-eqz v8, :cond_e9

    array-length v9, v8

    const/16 v10, 0x20

    if-ne v9, v10, :cond_e9

    .line 536
    invoke-virtual {v2, v6, v7, v8}, Landroid/os/HwBlob;->putInt8Array(J[B)V

    .line 537
    nop

    .line 527
    .end local v6  # "_hidl_array_offset_1":J
    .end local v8  # "_hidl_array_item_1":[B
    add-int/lit8 v5, v5, 0x1

    goto :goto_d0

    .line 533
    .restart local v6  # "_hidl_array_offset_1":J
    .restart local v8  # "_hidl_array_item_1":[B
    :cond_e9
    new-instance v9, Ljava/lang/IllegalArgumentException;

    const-string v10, "Array element is not of the expected length"

    invoke-direct {v9, v10}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 540
    .end local v5  # "_hidl_index_0":I
    .end local v6  # "_hidl_array_offset_1":J
    .end local v8  # "_hidl_array_item_1":[B
    :cond_f1
    const-wide/16 v5, 0x0

    invoke-virtual {v1, v5, v6, v2}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    .line 542
    .end local v2  # "childBlob":Landroid/os/HwBlob;
    .end local v4  # "_hidl_vec_size":I
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    .line 544
    .end local v1  # "_hidl_blob":Landroid/os/HwBlob;
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 545
    goto/16 :goto_17f

    .line 495
    .end local v0  # "_hidl_out_hashchain":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    .end local v3  # "_hidl_is_oneway":Z
    :sswitch_fe
    and-int/lit8 v4, p4, 0x1

    if-eqz v4, :cond_103

    goto :goto_104

    :cond_103
    move v3, v2

    .line 496
    .restart local v3  # "_hidl_is_oneway":Z
    :goto_104
    if-eqz v3, :cond_10e

    .line 497
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 498
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 499
    goto/16 :goto_17f

    .line 500
    :cond_10e
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 502
    invoke-virtual {p0}, Landroid/hardware/authsecret/V1_0/IAuthSecret$Stub;->interfaceDescriptor()Ljava/lang/String;

    move-result-object v0

    .line 503
    .local v0, "_hidl_out_descriptor":Ljava/lang/String;
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 504
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 505
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 506
    goto :goto_17f

    .line 478
    .end local v0  # "_hidl_out_descriptor":Ljava/lang/String;
    .end local v3  # "_hidl_is_oneway":Z
    :sswitch_11f
    and-int/lit8 v4, p4, 0x1

    if-eqz v4, :cond_124

    goto :goto_125

    :cond_124
    move v3, v2

    .line 479
    .restart local v3  # "_hidl_is_oneway":Z
    :goto_125
    if-eqz v3, :cond_12e

    .line 480
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 481
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 482
    goto :goto_17f

    .line 483
    :cond_12e
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 485
    invoke-virtual {p2}, Landroid/os/HwParcel;->readNativeHandle()Landroid/os/NativeHandle;

    move-result-object v0

    .line 486
    .local v0, "fd":Landroid/os/NativeHandle;
    invoke-virtual {p2}, Landroid/os/HwParcel;->readStringVector()Ljava/util/ArrayList;

    move-result-object v1

    .line 487
    .local v1, "options":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {p0, v0, v1}, Landroid/hardware/authsecret/V1_0/IAuthSecret$Stub;->debug(Landroid/os/NativeHandle;Ljava/util/ArrayList;)V

    .line 488
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 489
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 490
    goto :goto_17f

    .line 462
    .end local v0  # "fd":Landroid/os/NativeHandle;
    .end local v1  # "options":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v3  # "_hidl_is_oneway":Z
    :sswitch_143
    and-int/lit8 v4, p4, 0x1

    if-eqz v4, :cond_148

    goto :goto_149

    :cond_148
    move v3, v2

    .line 463
    .restart local v3  # "_hidl_is_oneway":Z
    :goto_149
    if-eqz v3, :cond_152

    .line 464
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 465
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 466
    goto :goto_17f

    .line 467
    :cond_152
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 469
    invoke-virtual {p0}, Landroid/hardware/authsecret/V1_0/IAuthSecret$Stub;->interfaceChain()Ljava/util/ArrayList;

    move-result-object v0

    .line 470
    .local v0, "_hidl_out_descriptors":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 471
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStringVector(Ljava/util/ArrayList;)V

    .line 472
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 473
    goto :goto_17f

    .line 448
    .end local v0  # "_hidl_out_descriptors":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v3  # "_hidl_is_oneway":Z
    :sswitch_163
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_168

    move v2, v3

    :cond_168
    move v0, v2

    .line 449
    .local v0, "_hidl_is_oneway":Z
    if-eq v0, v3, :cond_172

    .line 450
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 451
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 452
    goto :goto_17f

    .line 453
    :cond_172
    const-string v1, "android.hardware.authsecret@1.0::IAuthSecret"

    invoke-virtual {p2, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 455
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt8Vector()Ljava/util/ArrayList;

    move-result-object v1

    .line 456
    .local v1, "secret":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    invoke-virtual {p0, v1}, Landroid/hardware/authsecret/V1_0/IAuthSecret$Stub;->primaryUserCredential(Ljava/util/ArrayList;)V

    .line 457
    nop

    .line 626
    .end local v0  # "_hidl_is_oneway":Z
    .end local v1  # "secret":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    :cond_17f
    :goto_17f
    return-void

    :sswitch_data_180
    .sparse-switch
        0x1 -> :sswitch_163
        0xf43484e -> :sswitch_143
        0xf444247 -> :sswitch_11f
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

    .line 399
    return-void
.end method

.method public queryLocalInterface(Ljava/lang/String;)Landroid/os/IHwInterface;
    .registers 3
    .param p1, "descriptor"  # Ljava/lang/String;

    .line 427
    const-string v0, "android.hardware.authsecret@1.0::IAuthSecret"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 428
    return-object p0

    .line 430
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
    .registers 3
    .param p1, "recipient"  # Landroid/os/IHwBinder$DeathRecipient;

    .line 421
    const/4 v0, 0x1

    return v0
.end method
