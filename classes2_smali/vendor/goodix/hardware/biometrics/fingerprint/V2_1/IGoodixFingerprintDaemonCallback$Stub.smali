.class public abstract Lvendor/goodix/hardware/biometrics/fingerprint/V2_1/IGoodixFingerprintDaemonCallback$Stub;
.super Landroid/os/HwBinder;
.source "IGoodixFingerprintDaemonCallback.java"

# interfaces
.implements Lvendor/goodix/hardware/biometrics/fingerprint/V2_1/IGoodixFingerprintDaemonCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lvendor/goodix/hardware/biometrics/fingerprint/V2_1/IGoodixFingerprintDaemonCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 284
    invoke-direct {p0}, Landroid/os/HwBinder;-><init>()V

    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IHwBinder;
    .registers 1

    .line 287
    return-object p0
.end method

.method public final getDebugInfo()Landroid/hidl/base/V1_0/DebugInfo;
    .registers 4

    .line 329
    new-instance v0, Landroid/hidl/base/V1_0/DebugInfo;

    invoke-direct {v0}, Landroid/hidl/base/V1_0/DebugInfo;-><init>()V

    .line 330
    .local v0, "info":Landroid/hidl/base/V1_0/DebugInfo;
    invoke-static {}, Landroid/os/HidlSupport;->getPidIfSharable()I

    move-result v1

    iput v1, v0, Landroid/hidl/base/V1_0/DebugInfo;->pid:I

    .line 331
    const-wide/16 v1, 0x0

    iput-wide v1, v0, Landroid/hidl/base/V1_0/DebugInfo;->ptr:J

    .line 332
    const/4 v1, 0x0

    iput v1, v0, Landroid/hidl/base/V1_0/DebugInfo;->arch:I

    .line 333
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

    .line 305
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
        0x40t
        0x47t
        0x6ft
        -0x5dt
        0x44t
        0x77t
        0x7et
        -0x3at
        -0x6at
        0x49t
        0x5t
        0x53t
        0x36t
        -0x68t
        0x1et
        0x4ct
        -0x4ct
        0x2at
        0x2t
        -0x57t
        0x54t
        -0x4ft
        -0x79t
        -0x44t
        0x13t
        -0x9t
        -0x58t
        -0x5t
        -0x12t
        -0x45t
        -0x4at
        -0x19t
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

    .line 292
    new-instance v0, Ljava/util/ArrayList;

    const-string v1, "vendor.goodix.hardware.biometrics.fingerprint@2.1::IGoodixFingerprintDaemonCallback"

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

    .line 299
    const-string v0, "vendor.goodix.hardware.biometrics.fingerprint@2.1::IGoodixFingerprintDaemonCallback"

    return-object v0
.end method

.method public final linkToDeath(Landroid/os/IHwBinder$DeathRecipient;J)Z
    .registers 5
    .param p1, "recipient"  # Landroid/os/IHwBinder$DeathRecipient;
    .param p2, "cookie"  # J

    .line 318
    const/4 v0, 0x1

    return v0
.end method

.method public final notifySyspropsChanged()V
    .registers 1

    .line 338
    invoke-static {}, Landroid/os/HwBinder;->enableInstrumentation()V

    .line 339
    return-void
.end method

.method public onTransact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V
    .registers 19
    .param p1, "_hidl_code"  # I
    .param p2, "_hidl_request"  # Landroid/os/HwParcel;
    .param p3, "_hidl_reply"  # Landroid/os/HwParcel;
    .param p4, "_hidl_flags"  # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 367
    move-object/from16 v0, p2

    move-object/from16 v1, p3

    const-string v2, "android.hidl.base@1.0::IBase"

    const/high16 v3, -0x80000000

    const/4 v4, 0x0

    const/4 v5, 0x1

    sparse-switch p1, :sswitch_data_17c

    goto/16 :goto_17b

    .line 533
    :sswitch_f
    and-int/lit8 v2, p4, 0x1

    if-eqz v2, :cond_14

    move v4, v5

    :cond_14
    move v2, v4

    .line 534
    .local v2, "_hidl_is_oneway":Z
    if-eqz v2, :cond_17b

    .line 535
    invoke-virtual {v1, v3}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 536
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 537
    goto/16 :goto_17b

    .line 520
    .end local v2  # "_hidl_is_oneway":Z
    :sswitch_1f
    and-int/lit8 v6, p4, 0x1

    if-eqz v6, :cond_24

    move v4, v5

    .line 521
    .local v4, "_hidl_is_oneway":Z
    :cond_24
    if-eq v4, v5, :cond_2e

    .line 522
    invoke-virtual {v1, v3}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 523
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 524
    goto/16 :goto_17b

    .line 525
    :cond_2e
    invoke-virtual {v0, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 527
    invoke-virtual {p0}, Lvendor/goodix/hardware/biometrics/fingerprint/V2_1/IGoodixFingerprintDaemonCallback$Stub;->notifySyspropsChanged()V

    .line 528
    goto/16 :goto_17b

    .line 504
    .end local v4  # "_hidl_is_oneway":Z
    :sswitch_36
    and-int/lit8 v6, p4, 0x1

    if-eqz v6, :cond_3b

    goto :goto_3c

    :cond_3b
    move v5, v4

    .line 505
    .local v5, "_hidl_is_oneway":Z
    :goto_3c
    if-eqz v5, :cond_46

    .line 506
    invoke-virtual {v1, v3}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 507
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 508
    goto/16 :goto_17b

    .line 509
    :cond_46
    invoke-virtual {v0, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 511
    invoke-virtual {p0}, Lvendor/goodix/hardware/biometrics/fingerprint/V2_1/IGoodixFingerprintDaemonCallback$Stub;->getDebugInfo()Landroid/hidl/base/V1_0/DebugInfo;

    move-result-object v2

    .line 512
    .local v2, "_hidl_out_info":Landroid/hidl/base/V1_0/DebugInfo;
    invoke-virtual {v1, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 513
    invoke-virtual {v2, v1}, Landroid/hidl/base/V1_0/DebugInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 514
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 515
    goto/16 :goto_17b

    .line 489
    .end local v2  # "_hidl_out_info":Landroid/hidl/base/V1_0/DebugInfo;
    .end local v5  # "_hidl_is_oneway":Z
    :sswitch_58
    and-int/lit8 v6, p4, 0x1

    if-eqz v6, :cond_5d

    goto :goto_5e

    :cond_5d
    move v5, v4

    .line 490
    .restart local v5  # "_hidl_is_oneway":Z
    :goto_5e
    if-eqz v5, :cond_68

    .line 491
    invoke-virtual {v1, v3}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 492
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 493
    goto/16 :goto_17b

    .line 494
    :cond_68
    invoke-virtual {v0, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 496
    invoke-virtual {p0}, Lvendor/goodix/hardware/biometrics/fingerprint/V2_1/IGoodixFingerprintDaemonCallback$Stub;->ping()V

    .line 497
    invoke-virtual {v1, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 498
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 499
    goto/16 :goto_17b

    .line 479
    .end local v5  # "_hidl_is_oneway":Z
    :sswitch_76
    and-int/lit8 v2, p4, 0x1

    if-eqz v2, :cond_7b

    move v4, v5

    :cond_7b
    move v2, v4

    .line 480
    .local v2, "_hidl_is_oneway":Z
    if-eqz v2, :cond_17b

    .line 481
    invoke-virtual {v1, v3}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 482
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 483
    goto/16 :goto_17b

    .line 466
    .end local v2  # "_hidl_is_oneway":Z
    :sswitch_86
    and-int/lit8 v6, p4, 0x1

    if-eqz v6, :cond_8b

    move v4, v5

    .line 467
    .restart local v4  # "_hidl_is_oneway":Z
    :cond_8b
    if-eq v4, v5, :cond_95

    .line 468
    invoke-virtual {v1, v3}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 469
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 470
    goto/16 :goto_17b

    .line 471
    :cond_95
    invoke-virtual {v0, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 473
    invoke-virtual {p0}, Lvendor/goodix/hardware/biometrics/fingerprint/V2_1/IGoodixFingerprintDaemonCallback$Stub;->setHALInstrumentation()V

    .line 474
    goto/16 :goto_17b

    .line 433
    .end local v4  # "_hidl_is_oneway":Z
    :sswitch_9d
    and-int/lit8 v6, p4, 0x1

    if-eqz v6, :cond_a2

    goto :goto_a3

    :cond_a2
    move v5, v4

    .line 434
    .restart local v5  # "_hidl_is_oneway":Z
    :goto_a3
    if-eqz v5, :cond_ad

    .line 435
    invoke-virtual {v1, v3}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 436
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 437
    goto/16 :goto_17b

    .line 438
    :cond_ad
    invoke-virtual {v0, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 440
    invoke-virtual {p0}, Lvendor/goodix/hardware/biometrics/fingerprint/V2_1/IGoodixFingerprintDaemonCallback$Stub;->getHashChain()Ljava/util/ArrayList;

    move-result-object v2

    .line 441
    .local v2, "_hidl_out_hashchain":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    invoke-virtual {v1, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 443
    new-instance v3, Landroid/os/HwBlob;

    const/16 v6, 0x10

    invoke-direct {v3, v6}, Landroid/os/HwBlob;-><init>(I)V

    .line 445
    .local v3, "_hidl_blob":Landroid/os/HwBlob;
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v6

    .line 446
    .local v6, "_hidl_vec_size":I
    const-wide/16 v7, 0x8

    invoke-virtual {v3, v7, v8, v6}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 447
    const-wide/16 v7, 0xc

    invoke-virtual {v3, v7, v8, v4}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 448
    new-instance v4, Landroid/os/HwBlob;

    mul-int/lit8 v7, v6, 0x20

    invoke-direct {v4, v7}, Landroid/os/HwBlob;-><init>(I)V

    .line 449
    .local v4, "childBlob":Landroid/os/HwBlob;
    const/4 v7, 0x0

    .local v7, "_hidl_index_0":I
    :goto_d4
    if-ge v7, v6, :cond_e6

    .line 451
    mul-int/lit8 v8, v7, 0x20

    int-to-long v8, v8

    .line 452
    .local v8, "_hidl_array_offset_1":J
    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, [B

    invoke-virtual {v4, v8, v9, v10}, Landroid/os/HwBlob;->putInt8Array(J[B)V

    .line 453
    nop

    .line 449
    .end local v8  # "_hidl_array_offset_1":J
    add-int/lit8 v7, v7, 0x1

    goto :goto_d4

    .line 456
    .end local v7  # "_hidl_index_0":I
    :cond_e6
    const-wide/16 v7, 0x0

    invoke-virtual {v3, v7, v8, v4}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    .line 458
    .end local v4  # "childBlob":Landroid/os/HwBlob;
    .end local v6  # "_hidl_vec_size":I
    invoke-virtual {v1, v3}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    .line 460
    .end local v3  # "_hidl_blob":Landroid/os/HwBlob;
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 461
    goto/16 :goto_17b

    .line 417
    .end local v2  # "_hidl_out_hashchain":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    .end local v5  # "_hidl_is_oneway":Z
    :sswitch_f3
    and-int/lit8 v6, p4, 0x1

    if-eqz v6, :cond_f8

    goto :goto_f9

    :cond_f8
    move v5, v4

    .line 418
    .restart local v5  # "_hidl_is_oneway":Z
    :goto_f9
    if-eqz v5, :cond_103

    .line 419
    invoke-virtual {v1, v3}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 420
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 421
    goto/16 :goto_17b

    .line 422
    :cond_103
    invoke-virtual {v0, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 424
    invoke-virtual {p0}, Lvendor/goodix/hardware/biometrics/fingerprint/V2_1/IGoodixFingerprintDaemonCallback$Stub;->interfaceDescriptor()Ljava/lang/String;

    move-result-object v2

    .line 425
    .local v2, "_hidl_out_descriptor":Ljava/lang/String;
    invoke-virtual {v1, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 426
    invoke-virtual {v1, v2}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 427
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 428
    goto/16 :goto_17b

    .line 403
    .end local v2  # "_hidl_out_descriptor":Ljava/lang/String;
    .end local v5  # "_hidl_is_oneway":Z
    :sswitch_115
    and-int/lit8 v6, p4, 0x1

    if-eqz v6, :cond_11a

    goto :goto_11b

    :cond_11a
    move v5, v4

    .line 404
    .restart local v5  # "_hidl_is_oneway":Z
    :goto_11b
    if-eqz v5, :cond_124

    .line 405
    invoke-virtual {v1, v3}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 406
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 407
    goto :goto_17b

    .line 408
    :cond_124
    invoke-virtual {v0, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 410
    invoke-virtual {v1, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 411
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 412
    goto :goto_17b

    .line 387
    .end local v5  # "_hidl_is_oneway":Z
    :sswitch_12e
    and-int/lit8 v6, p4, 0x1

    if-eqz v6, :cond_133

    goto :goto_134

    :cond_133
    move v5, v4

    .line 388
    .restart local v5  # "_hidl_is_oneway":Z
    :goto_134
    if-eqz v5, :cond_13d

    .line 389
    invoke-virtual {v1, v3}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 390
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 391
    goto :goto_17b

    .line 392
    :cond_13d
    invoke-virtual {v0, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 394
    invoke-virtual {p0}, Lvendor/goodix/hardware/biometrics/fingerprint/V2_1/IGoodixFingerprintDaemonCallback$Stub;->interfaceChain()Ljava/util/ArrayList;

    move-result-object v2

    .line 395
    .local v2, "_hidl_out_descriptors":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v1, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 396
    invoke-virtual {v1, v2}, Landroid/os/HwParcel;->writeStringVector(Ljava/util/ArrayList;)V

    .line 397
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 398
    goto :goto_17b

    .line 370
    .end local v2  # "_hidl_out_descriptors":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v5  # "_hidl_is_oneway":Z
    :sswitch_14e
    and-int/lit8 v2, p4, 0x1

    if-eqz v2, :cond_153

    move v4, v5

    :cond_153
    move v2, v4

    .line 371
    .local v2, "_hidl_is_oneway":Z
    if-eq v2, v5, :cond_15d

    .line 372
    invoke-virtual {v1, v3}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 373
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 374
    goto :goto_17b

    .line 375
    :cond_15d
    const-string v3, "vendor.goodix.hardware.biometrics.fingerprint@2.1::IGoodixFingerprintDaemonCallback"

    invoke-virtual {v0, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 377
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt64()J

    move-result-wide v10

    .line 378
    .local v10, "devId":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v3

    .line 379
    .local v3, "msgId":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v12

    .line 380
    .local v12, "cmdId":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt8Vector()Ljava/util/ArrayList;

    move-result-object v13

    .line 381
    .local v13, "msg_data":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    move-object v4, p0

    move-wide v5, v10

    move v7, v3

    move v8, v12

    move-object v9, v13

    invoke-virtual/range {v4 .. v9}, Lvendor/goodix/hardware/biometrics/fingerprint/V2_1/IGoodixFingerprintDaemonCallback$Stub;->onDaemonMessage(JIILjava/util/ArrayList;)V

    .line 382
    nop

    .line 542
    .end local v2  # "_hidl_is_oneway":Z
    .end local v3  # "msgId":I
    .end local v10  # "devId":J
    .end local v12  # "cmdId":I
    .end local v13  # "msg_data":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    :cond_17b
    :goto_17b
    return-void

    :sswitch_data_17c
    .sparse-switch
        0x1 -> :sswitch_14e
        0xf43484e -> :sswitch_12e
        0xf444247 -> :sswitch_115
        0xf445343 -> :sswitch_f3
        0xf485348 -> :sswitch_9d
        0xf494e54 -> :sswitch_86
        0xf4c5444 -> :sswitch_76
        0xf504e47 -> :sswitch_58
        0xf524546 -> :sswitch_36
        0xf535953 -> :sswitch_1f
        0xf555444 -> :sswitch_f
    .end sparse-switch
.end method

.method public final ping()V
    .registers 1

    .line 323
    return-void
.end method

.method public queryLocalInterface(Ljava/lang/String;)Landroid/os/IHwInterface;
    .registers 3
    .param p1, "descriptor"  # Ljava/lang/String;

    .line 349
    const-string v0, "vendor.goodix.hardware.biometrics.fingerprint@2.1::IGoodixFingerprintDaemonCallback"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 350
    return-object p0

    .line 352
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

    .line 356
    invoke-virtual {p0, p1}, Lvendor/goodix/hardware/biometrics/fingerprint/V2_1/IGoodixFingerprintDaemonCallback$Stub;->registerService(Ljava/lang/String;)V

    .line 357
    return-void
.end method

.method public final setHALInstrumentation()V
    .registers 1

    .line 314
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 361
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lvendor/goodix/hardware/biometrics/fingerprint/V2_1/IGoodixFingerprintDaemonCallback$Stub;->interfaceDescriptor()Ljava/lang/String;

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

    .line 343
    const/4 v0, 0x1

    return v0
.end method
