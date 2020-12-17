.class public abstract Lvendor/goodix/hardware/biometrics/fingerprint/V2_1/IGoodixFingerprintDaemon$Stub;
.super Landroid/os/HwBinder;
.source "IGoodixFingerprintDaemon.java"

# interfaces
.implements Lvendor/goodix/hardware/biometrics/fingerprint/V2_1/IGoodixFingerprintDaemon;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lvendor/goodix/hardware/biometrics/fingerprint/V2_1/IGoodixFingerprintDaemon;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 312
    invoke-direct {p0}, Landroid/os/HwBinder;-><init>()V

    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IHwBinder;
    .registers 1

    .line 315
    return-object p0
.end method

.method public final getDebugInfo()Landroid/hidl/base/V1_0/DebugInfo;
    .registers 4

    .line 357
    new-instance v0, Landroid/hidl/base/V1_0/DebugInfo;

    invoke-direct {v0}, Landroid/hidl/base/V1_0/DebugInfo;-><init>()V

    .line 358
    .local v0, "info":Landroid/hidl/base/V1_0/DebugInfo;
    invoke-static {}, Landroid/os/HidlSupport;->getPidIfSharable()I

    move-result v1

    iput v1, v0, Landroid/hidl/base/V1_0/DebugInfo;->pid:I

    .line 359
    const-wide/16 v1, 0x0

    iput-wide v1, v0, Landroid/hidl/base/V1_0/DebugInfo;->ptr:J

    .line 360
    const/4 v1, 0x0

    iput v1, v0, Landroid/hidl/base/V1_0/DebugInfo;->arch:I

    .line 361
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

    .line 333
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
        0x44t
        -0x1t
        0x78t
        0x69t
        -0x12t
        -0xat
        0xft
        -0x2et
        -0x38t
        -0x58t
        0x60t
        0x14t
        -0x58t
        0x51t
        0x77t
        -0x3at
        -0x16t
        -0x74t
        -0x5ft
        0x3ft
        -0x24t
        0x32t
        0x75t
        0x4bt
        -0xbt
        0x1ct
        0x60t
        0x4bt
        -0x76t
        0x55t
        -0x3bt
        -0x21t
    .end array-data

    :array_34
    .array-data 1
        -0x43t
        -0x26t
        -0x4at
        0x18t
        0x4dt
        0x7at
        0x34t
        0x6dt
        -0x5at
        -0x60t
        0x7dt
        -0x40t
        -0x7et
        -0x74t
        -0xft
        -0x66t
        0x69t
        0x6ft
        0x4ct
        -0x56t
        0x36t
        0x11t
        -0x3bt
        0x1ft
        0x2et
        0x14t
        0x56t
        0x5at
        0x14t
        -0x4ct
        0xft
        -0x27t
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

    .line 320
    new-instance v0, Ljava/util/ArrayList;

    const-string v1, "vendor.goodix.hardware.biometrics.fingerprint@2.1::IGoodixFingerprintDaemon"

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

    .line 327
    const-string v0, "vendor.goodix.hardware.biometrics.fingerprint@2.1::IGoodixFingerprintDaemon"

    return-object v0
.end method

.method public final linkToDeath(Landroid/os/IHwBinder$DeathRecipient;J)Z
    .registers 5
    .param p1, "recipient"  # Landroid/os/IHwBinder$DeathRecipient;
    .param p2, "cookie"  # J

    .line 346
    const/4 v0, 0x1

    return v0
.end method

.method public final notifySyspropsChanged()V
    .registers 1

    .line 366
    invoke-static {}, Landroid/os/HwBinder;->enableInstrumentation()V

    .line 367
    return-void
.end method

.method public onTransact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V
    .registers 14
    .param p1, "_hidl_code"  # I
    .param p2, "_hidl_request"  # Landroid/os/HwParcel;
    .param p3, "_hidl_reply"  # Landroid/os/HwParcel;
    .param p4, "_hidl_flags"  # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 395
    const-string v0, "vendor.goodix.hardware.biometrics.fingerprint@2.1::IGoodixFingerprintDaemon"

    const/high16 v1, -0x80000000

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eq p1, v3, :cond_175

    const/4 v4, 0x2

    if-eq p1, v4, :cond_153

    const-string v0, "android.hidl.base@1.0::IBase"

    sparse-switch p1, :sswitch_data_19a

    goto/16 :goto_199

    .line 582
    :sswitch_12
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_17

    move v2, v3

    :cond_17
    move v0, v2

    .line 583
    .local v0, "_hidl_is_oneway":Z
    if-eqz v0, :cond_199

    .line 584
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 585
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 586
    goto/16 :goto_199

    .line 569
    .end local v0  # "_hidl_is_oneway":Z
    :sswitch_22
    and-int/lit8 v4, p4, 0x1

    if-eqz v4, :cond_27

    move v2, v3

    .line 570
    .local v2, "_hidl_is_oneway":Z
    :cond_27
    if-eq v2, v3, :cond_31

    .line 571
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 572
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 573
    goto/16 :goto_199

    .line 574
    :cond_31
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 576
    invoke-virtual {p0}, Lvendor/goodix/hardware/biometrics/fingerprint/V2_1/IGoodixFingerprintDaemon$Stub;->notifySyspropsChanged()V

    .line 577
    goto/16 :goto_199

    .line 553
    .end local v2  # "_hidl_is_oneway":Z
    :sswitch_39
    and-int/lit8 v4, p4, 0x1

    if-eqz v4, :cond_3e

    goto :goto_3f

    :cond_3e
    move v3, v2

    .line 554
    .local v3, "_hidl_is_oneway":Z
    :goto_3f
    if-eqz v3, :cond_49

    .line 555
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 556
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 557
    goto/16 :goto_199

    .line 558
    :cond_49
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 560
    invoke-virtual {p0}, Lvendor/goodix/hardware/biometrics/fingerprint/V2_1/IGoodixFingerprintDaemon$Stub;->getDebugInfo()Landroid/hidl/base/V1_0/DebugInfo;

    move-result-object v0

    .line 561
    .local v0, "_hidl_out_info":Landroid/hidl/base/V1_0/DebugInfo;
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 562
    invoke-virtual {v0, p3}, Landroid/hidl/base/V1_0/DebugInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 563
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 564
    goto/16 :goto_199

    .line 538
    .end local v0  # "_hidl_out_info":Landroid/hidl/base/V1_0/DebugInfo;
    .end local v3  # "_hidl_is_oneway":Z
    :sswitch_5b
    and-int/lit8 v4, p4, 0x1

    if-eqz v4, :cond_60

    goto :goto_61

    :cond_60
    move v3, v2

    .line 539
    .restart local v3  # "_hidl_is_oneway":Z
    :goto_61
    if-eqz v3, :cond_6b

    .line 540
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 541
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 542
    goto/16 :goto_199

    .line 543
    :cond_6b
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 545
    invoke-virtual {p0}, Lvendor/goodix/hardware/biometrics/fingerprint/V2_1/IGoodixFingerprintDaemon$Stub;->ping()V

    .line 546
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 547
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 548
    goto/16 :goto_199

    .line 528
    .end local v3  # "_hidl_is_oneway":Z
    :sswitch_79
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_7e

    move v2, v3

    :cond_7e
    move v0, v2

    .line 529
    .local v0, "_hidl_is_oneway":Z
    if-eqz v0, :cond_199

    .line 530
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 531
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 532
    goto/16 :goto_199

    .line 515
    .end local v0  # "_hidl_is_oneway":Z
    :sswitch_89
    and-int/lit8 v4, p4, 0x1

    if-eqz v4, :cond_8e

    move v2, v3

    .line 516
    .restart local v2  # "_hidl_is_oneway":Z
    :cond_8e
    if-eq v2, v3, :cond_98

    .line 517
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 518
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 519
    goto/16 :goto_199

    .line 520
    :cond_98
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 522
    invoke-virtual {p0}, Lvendor/goodix/hardware/biometrics/fingerprint/V2_1/IGoodixFingerprintDaemon$Stub;->setHALInstrumentation()V

    .line 523
    goto/16 :goto_199

    .line 482
    .end local v2  # "_hidl_is_oneway":Z
    :sswitch_a0
    and-int/lit8 v4, p4, 0x1

    if-eqz v4, :cond_a5

    goto :goto_a6

    :cond_a5
    move v3, v2

    .line 483
    .restart local v3  # "_hidl_is_oneway":Z
    :goto_a6
    if-eqz v3, :cond_b0

    .line 484
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 485
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 486
    goto/16 :goto_199

    .line 487
    :cond_b0
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 489
    invoke-virtual {p0}, Lvendor/goodix/hardware/biometrics/fingerprint/V2_1/IGoodixFingerprintDaemon$Stub;->getHashChain()Ljava/util/ArrayList;

    move-result-object v0

    .line 490
    .local v0, "_hidl_out_hashchain":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 492
    new-instance v1, Landroid/os/HwBlob;

    const/16 v4, 0x10

    invoke-direct {v1, v4}, Landroid/os/HwBlob;-><init>(I)V

    .line 494
    .local v1, "_hidl_blob":Landroid/os/HwBlob;
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 495
    .local v4, "_hidl_vec_size":I
    const-wide/16 v5, 0x8

    invoke-virtual {v1, v5, v6, v4}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 496
    const-wide/16 v5, 0xc

    invoke-virtual {v1, v5, v6, v2}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 497
    new-instance v2, Landroid/os/HwBlob;

    mul-int/lit8 v5, v4, 0x20

    invoke-direct {v2, v5}, Landroid/os/HwBlob;-><init>(I)V

    .line 498
    .local v2, "childBlob":Landroid/os/HwBlob;
    const/4 v5, 0x0

    .local v5, "_hidl_index_0":I
    :goto_d7
    if-ge v5, v4, :cond_e9

    .line 500
    mul-int/lit8 v6, v5, 0x20

    int-to-long v6, v6

    .line 501
    .local v6, "_hidl_array_offset_1":J
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [B

    invoke-virtual {v2, v6, v7, v8}, Landroid/os/HwBlob;->putInt8Array(J[B)V

    .line 502
    nop

    .line 498
    .end local v6  # "_hidl_array_offset_1":J
    add-int/lit8 v5, v5, 0x1

    goto :goto_d7

    .line 505
    .end local v5  # "_hidl_index_0":I
    :cond_e9
    const-wide/16 v5, 0x0

    invoke-virtual {v1, v5, v6, v2}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    .line 507
    .end local v2  # "childBlob":Landroid/os/HwBlob;
    .end local v4  # "_hidl_vec_size":I
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    .line 509
    .end local v1  # "_hidl_blob":Landroid/os/HwBlob;
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 510
    goto/16 :goto_199

    .line 466
    .end local v0  # "_hidl_out_hashchain":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    .end local v3  # "_hidl_is_oneway":Z
    :sswitch_f6
    and-int/lit8 v4, p4, 0x1

    if-eqz v4, :cond_fb

    goto :goto_fc

    :cond_fb
    move v3, v2

    .line 467
    .restart local v3  # "_hidl_is_oneway":Z
    :goto_fc
    if-eqz v3, :cond_106

    .line 468
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 469
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 470
    goto/16 :goto_199

    .line 471
    :cond_106
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 473
    invoke-virtual {p0}, Lvendor/goodix/hardware/biometrics/fingerprint/V2_1/IGoodixFingerprintDaemon$Stub;->interfaceDescriptor()Ljava/lang/String;

    move-result-object v0

    .line 474
    .local v0, "_hidl_out_descriptor":Ljava/lang/String;
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 475
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 476
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 477
    goto/16 :goto_199

    .line 452
    .end local v0  # "_hidl_out_descriptor":Ljava/lang/String;
    .end local v3  # "_hidl_is_oneway":Z
    :sswitch_118
    and-int/lit8 v4, p4, 0x1

    if-eqz v4, :cond_11d

    goto :goto_11e

    :cond_11d
    move v3, v2

    .line 453
    .restart local v3  # "_hidl_is_oneway":Z
    :goto_11e
    if-eqz v3, :cond_128

    .line 454
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 455
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 456
    goto/16 :goto_199

    .line 457
    :cond_128
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 459
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 460
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 461
    goto/16 :goto_199

    .line 436
    .end local v3  # "_hidl_is_oneway":Z
    :sswitch_133
    and-int/lit8 v4, p4, 0x1

    if-eqz v4, :cond_138

    goto :goto_139

    :cond_138
    move v3, v2

    .line 437
    .restart local v3  # "_hidl_is_oneway":Z
    :goto_139
    if-eqz v3, :cond_142

    .line 438
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 439
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 440
    goto :goto_199

    .line 441
    :cond_142
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 443
    invoke-virtual {p0}, Lvendor/goodix/hardware/biometrics/fingerprint/V2_1/IGoodixFingerprintDaemon$Stub;->interfaceChain()Ljava/util/ArrayList;

    move-result-object v0

    .line 444
    .local v0, "_hidl_out_descriptors":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 445
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStringVector(Ljava/util/ArrayList;)V

    .line 446
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 447
    goto :goto_199

    .line 414
    .end local v0  # "_hidl_out_descriptors":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v3  # "_hidl_is_oneway":Z
    :cond_153
    and-int/lit8 v4, p4, 0x1

    if-eqz v4, :cond_158

    move v2, v3

    .line 415
    .local v2, "_hidl_is_oneway":Z
    :cond_158
    if-eqz v2, :cond_161

    .line 416
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 417
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 418
    goto :goto_199

    .line 419
    :cond_161
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 421
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 422
    .local v0, "cmdId":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt8Vector()Ljava/util/ArrayList;

    move-result-object v1

    .line 423
    .local v1, "in_buf":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    new-instance v3, Lvendor/goodix/hardware/biometrics/fingerprint/V2_1/IGoodixFingerprintDaemon$Stub$1;

    invoke-direct {v3, p0, p3}, Lvendor/goodix/hardware/biometrics/fingerprint/V2_1/IGoodixFingerprintDaemon$Stub$1;-><init>(Lvendor/goodix/hardware/biometrics/fingerprint/V2_1/IGoodixFingerprintDaemon$Stub;Landroid/os/HwParcel;)V

    invoke-virtual {p0, v0, v1, v3}, Lvendor/goodix/hardware/biometrics/fingerprint/V2_1/IGoodixFingerprintDaemon$Stub;->sendCommand(ILjava/util/ArrayList;Lvendor/goodix/hardware/biometrics/fingerprint/V2_1/IGoodixFingerprintDaemon$sendCommandCallback;)V

    .line 431
    goto :goto_199

    .line 398
    .end local v0  # "cmdId":I
    .end local v1  # "in_buf":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    .end local v2  # "_hidl_is_oneway":Z
    :cond_175
    and-int/lit8 v4, p4, 0x1

    if-eqz v4, :cond_17a

    goto :goto_17b

    :cond_17a
    move v3, v2

    .line 399
    .restart local v3  # "_hidl_is_oneway":Z
    :goto_17b
    if-eqz v3, :cond_184

    .line 400
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 401
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 402
    goto :goto_199

    .line 403
    :cond_184
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 405
    invoke-virtual {p2}, Landroid/os/HwParcel;->readStrongBinder()Landroid/os/IHwBinder;

    move-result-object v0

    invoke-static {v0}, Lvendor/goodix/hardware/biometrics/fingerprint/V2_1/IGoodixFingerprintDaemonCallback;->asInterface(Landroid/os/IHwBinder;)Lvendor/goodix/hardware/biometrics/fingerprint/V2_1/IGoodixFingerprintDaemonCallback;

    move-result-object v0

    .line 406
    .local v0, "callback":Lvendor/goodix/hardware/biometrics/fingerprint/V2_1/IGoodixFingerprintDaemonCallback;
    invoke-virtual {p0, v0}, Lvendor/goodix/hardware/biometrics/fingerprint/V2_1/IGoodixFingerprintDaemon$Stub;->setNotify(Lvendor/goodix/hardware/biometrics/fingerprint/V2_1/IGoodixFingerprintDaemonCallback;)V

    .line 407
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 408
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 409
    nop

    .line 591
    .end local v0  # "callback":Lvendor/goodix/hardware/biometrics/fingerprint/V2_1/IGoodixFingerprintDaemonCallback;
    .end local v3  # "_hidl_is_oneway":Z
    :cond_199
    :goto_199
    return-void

    :sswitch_data_19a
    .sparse-switch
        0xf43484e -> :sswitch_133
        0xf444247 -> :sswitch_118
        0xf445343 -> :sswitch_f6
        0xf485348 -> :sswitch_a0
        0xf494e54 -> :sswitch_89
        0xf4c5444 -> :sswitch_79
        0xf504e47 -> :sswitch_5b
        0xf524546 -> :sswitch_39
        0xf535953 -> :sswitch_22
        0xf555444 -> :sswitch_12
    .end sparse-switch
.end method

.method public final ping()V
    .registers 1

    .line 351
    return-void
.end method

.method public queryLocalInterface(Ljava/lang/String;)Landroid/os/IHwInterface;
    .registers 3
    .param p1, "descriptor"  # Ljava/lang/String;

    .line 377
    const-string v0, "vendor.goodix.hardware.biometrics.fingerprint@2.1::IGoodixFingerprintDaemon"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 378
    return-object p0

    .line 380
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

    .line 384
    invoke-virtual {p0, p1}, Lvendor/goodix/hardware/biometrics/fingerprint/V2_1/IGoodixFingerprintDaemon$Stub;->registerService(Ljava/lang/String;)V

    .line 385
    return-void
.end method

.method public final setHALInstrumentation()V
    .registers 1

    .line 342
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 389
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lvendor/goodix/hardware/biometrics/fingerprint/V2_1/IGoodixFingerprintDaemon$Stub;->interfaceDescriptor()Ljava/lang/String;

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

    .line 371
    const/4 v0, 0x1

    return v0
.end method
