.class public abstract Lvendor/synaptics/fingerprint/interfaces/extensions/V1_0/ISensorTest$Stub;
.super Landroid/os/HwBinder;
.source "ISensorTest.java"

# interfaces
.implements Lvendor/synaptics/fingerprint/interfaces/extensions/V1_0/ISensorTest;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lvendor/synaptics/fingerprint/interfaces/extensions/V1_0/ISensorTest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 357
    invoke-direct {p0}, Landroid/os/HwBinder;-><init>()V

    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IHwBinder;
    .registers 1

    .line 360
    return-object p0
.end method

.method public final getDebugInfo()Landroid/hidl/base/V1_0/DebugInfo;
    .registers 4

    .line 402
    new-instance v0, Landroid/hidl/base/V1_0/DebugInfo;

    invoke-direct {v0}, Landroid/hidl/base/V1_0/DebugInfo;-><init>()V

    .line 403
    .local v0, "info":Landroid/hidl/base/V1_0/DebugInfo;
    const/4 v1, -0x1

    iput v1, v0, Landroid/hidl/base/V1_0/DebugInfo;->pid:I

    .line 404
    const-wide/16 v1, 0x0

    iput-wide v1, v0, Landroid/hidl/base/V1_0/DebugInfo;->ptr:J

    .line 405
    const/4 v1, 0x0

    iput v1, v0, Landroid/hidl/base/V1_0/DebugInfo;->arch:I

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

    .line 378
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
        0x31t
        -0x66t
        -0x46t
        -0x3t
        0x29t
        -0x42t
        0x1dt
        -0x1ft
        0x20t
        0x6at
        -0x1at
        0x7ft
        0x3bt
        0xft
        -0x48t
        0x40t
        0x71t
        -0xat
        -0xdt
        0xet
        0x24t
        -0x53t
        -0x73t
        0x73t
        -0x33t
        0x3ct
        -0x44t
        0x3ct
        -0x13t
        0x7t
        0x22t
        0x38t
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

    .line 365
    new-instance v0, Ljava/util/ArrayList;

    const-string v1, "vendor.synaptics.fingerprint.interfaces.extensions@1.0::ISensorTest"

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

    .line 372
    const-string v0, "vendor.synaptics.fingerprint.interfaces.extensions@1.0::ISensorTest"

    return-object v0
.end method

.method public final linkToDeath(Landroid/os/IHwBinder$DeathRecipient;J)Z
    .registers 5
    .param p1, "recipient"  # Landroid/os/IHwBinder$DeathRecipient;
    .param p2, "cookie"  # J

    .line 391
    const/4 v0, 0x1

    return v0
.end method

.method public final notifySyspropsChanged()V
    .registers 1

    .line 410
    invoke-static {}, Landroid/os/SystemProperties;->reportSyspropChanged()V

    .line 411
    return-void
.end method

.method public onTransact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V
    .registers 15
    .param p1, "_hidl_code"  # I
    .param p2, "_hidl_request"  # Landroid/os/HwParcel;
    .param p3, "_hidl_reply"  # Landroid/os/HwParcel;
    .param p4, "_hidl_flags"  # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 439
    const/4 v0, 0x1

    const-string v1, "vendor.synaptics.fingerprint.interfaces.extensions@1.0::ISensorTest"

    const/4 v2, 0x0

    if-eq p1, v0, :cond_11c

    const/4 v0, 0x2

    if-eq p1, v0, :cond_10b

    const/4 v0, 0x3

    if-eq p1, v0, :cond_f2

    const/4 v0, 0x4

    if-eq p1, v0, :cond_d9

    const/4 v0, 0x5

    if-eq p1, v0, :cond_c0

    const-string v0, "android.hidl.base@1.0::IBase"

    sparse-switch p1, :sswitch_data_13e

    goto/16 :goto_13d

    .line 593
    :sswitch_19
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 595
    invoke-virtual {p0}, Lvendor/synaptics/fingerprint/interfaces/extensions/V1_0/ISensorTest$Stub;->notifySyspropsChanged()V

    .line 596
    goto/16 :goto_13d

    .line 582
    :sswitch_21
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 584
    invoke-virtual {p0}, Lvendor/synaptics/fingerprint/interfaces/extensions/V1_0/ISensorTest$Stub;->getDebugInfo()Landroid/hidl/base/V1_0/DebugInfo;

    move-result-object v0

    .line 585
    .local v0, "_hidl_out_info":Landroid/hidl/base/V1_0/DebugInfo;
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 586
    invoke-virtual {v0, p3}, Landroid/hidl/base/V1_0/DebugInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 587
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 588
    goto/16 :goto_13d

    .line 577
    .end local v0  # "_hidl_out_info":Landroid/hidl/base/V1_0/DebugInfo;
    :sswitch_33
    goto/16 :goto_13d

    .line 572
    :sswitch_35
    goto/16 :goto_13d

    .line 564
    :sswitch_37
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 566
    invoke-virtual {p0}, Lvendor/synaptics/fingerprint/interfaces/extensions/V1_0/ISensorTest$Stub;->setHALInstrumentation()V

    .line 567
    goto/16 :goto_13d

    .line 534
    :sswitch_3f
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 536
    invoke-virtual {p0}, Lvendor/synaptics/fingerprint/interfaces/extensions/V1_0/ISensorTest$Stub;->getHashChain()Ljava/util/ArrayList;

    move-result-object v0

    .line 537
    .local v0, "_hidl_out_hashchain":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 539
    new-instance v1, Landroid/os/HwBlob;

    const/16 v3, 0x10

    invoke-direct {v1, v3}, Landroid/os/HwBlob;-><init>(I)V

    .line 541
    .local v1, "_hidl_blob":Landroid/os/HwBlob;
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 542
    .local v3, "_hidl_vec_size":I
    const-wide/16 v4, 0x8

    invoke-virtual {v1, v4, v5, v3}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 543
    const-wide/16 v4, 0xc

    invoke-virtual {v1, v4, v5, v2}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 544
    new-instance v2, Landroid/os/HwBlob;

    mul-int/lit8 v4, v3, 0x20

    invoke-direct {v2, v4}, Landroid/os/HwBlob;-><init>(I)V

    .line 545
    .local v2, "childBlob":Landroid/os/HwBlob;
    const/4 v4, 0x0

    .local v4, "_hidl_index_0":I
    :goto_66
    if-ge v4, v3, :cond_84

    .line 547
    mul-int/lit8 v5, v4, 0x20

    int-to-long v5, v5

    .line 548
    .local v5, "_hidl_array_offset_1":J
    const/4 v7, 0x0

    .local v7, "_hidl_index_1_0":I
    :goto_6c
    const/16 v8, 0x20

    if-ge v7, v8, :cond_81

    .line 549
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [B

    aget-byte v8, v8, v7

    invoke-virtual {v2, v5, v6, v8}, Landroid/os/HwBlob;->putInt8(JB)V

    .line 550
    const-wide/16 v8, 0x1

    add-long/2addr v5, v8

    .line 548
    add-int/lit8 v7, v7, 0x1

    goto :goto_6c

    .line 545
    .end local v5  # "_hidl_array_offset_1":J
    .end local v7  # "_hidl_index_1_0":I
    :cond_81
    add-int/lit8 v4, v4, 0x1

    goto :goto_66

    .line 554
    .end local v4  # "_hidl_index_0":I
    :cond_84
    const-wide/16 v4, 0x0

    invoke-virtual {v1, v4, v5, v2}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    .line 556
    .end local v2  # "childBlob":Landroid/os/HwBlob;
    .end local v3  # "_hidl_vec_size":I
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    .line 558
    .end local v1  # "_hidl_blob":Landroid/os/HwBlob;
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 559
    goto/16 :goto_13d

    .line 523
    .end local v0  # "_hidl_out_hashchain":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    :sswitch_91
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 525
    invoke-virtual {p0}, Lvendor/synaptics/fingerprint/interfaces/extensions/V1_0/ISensorTest$Stub;->interfaceDescriptor()Ljava/lang/String;

    move-result-object v0

    .line 526
    .local v0, "_hidl_out_descriptor":Ljava/lang/String;
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 527
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 528
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 529
    goto/16 :goto_13d

    .line 514
    .end local v0  # "_hidl_out_descriptor":Ljava/lang/String;
    :sswitch_a3
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 516
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 517
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 518
    goto/16 :goto_13d

    .line 503
    :sswitch_ae
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 505
    invoke-virtual {p0}, Lvendor/synaptics/fingerprint/interfaces/extensions/V1_0/ISensorTest$Stub;->interfaceChain()Ljava/util/ArrayList;

    move-result-object v0

    .line 506
    .local v0, "_hidl_out_descriptors":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 507
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStringVector(Ljava/util/ArrayList;)V

    .line 508
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 509
    goto/16 :goto_13d

    .line 491
    .end local v0  # "_hidl_out_descriptors":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_c0
    invoke-virtual {p2, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 493
    invoke-virtual {p2}, Landroid/os/HwParcel;->readStrongBinder()Landroid/os/IHwBinder;

    move-result-object v0

    invoke-static {v0}, Lvendor/synaptics/fingerprint/interfaces/extensions/V1_0/ISensorTestClientCallback;->asInterface(Landroid/os/IHwBinder;)Lvendor/synaptics/fingerprint/interfaces/extensions/V1_0/ISensorTestClientCallback;

    move-result-object v0

    .line 494
    .local v0, "callback":Lvendor/synaptics/fingerprint/interfaces/extensions/V1_0/ISensorTestClientCallback;
    invoke-virtual {p0, v0}, Lvendor/synaptics/fingerprint/interfaces/extensions/V1_0/ISensorTest$Stub;->getSensorInfo(Lvendor/synaptics/fingerprint/interfaces/extensions/V1_0/ISensorTestClientCallback;)I

    move-result v1

    .line 495
    .local v1, "_hidl_out_ret":I
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 496
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 497
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 498
    goto :goto_13d

    .line 479
    .end local v0  # "callback":Lvendor/synaptics/fingerprint/interfaces/extensions/V1_0/ISensorTestClientCallback;
    .end local v1  # "_hidl_out_ret":I
    :cond_d9
    invoke-virtual {p2, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 481
    invoke-virtual {p2}, Landroid/os/HwParcel;->readStrongBinder()Landroid/os/IHwBinder;

    move-result-object v0

    invoke-static {v0}, Lvendor/synaptics/fingerprint/interfaces/extensions/V1_0/ISensorTestClientCallback;->asInterface(Landroid/os/IHwBinder;)Lvendor/synaptics/fingerprint/interfaces/extensions/V1_0/ISensorTestClientCallback;

    move-result-object v0

    .line 482
    .restart local v0  # "callback":Lvendor/synaptics/fingerprint/interfaces/extensions/V1_0/ISensorTestClientCallback;
    invoke-virtual {p0, v0}, Lvendor/synaptics/fingerprint/interfaces/extensions/V1_0/ISensorTest$Stub;->cancelCaptureTest(Lvendor/synaptics/fingerprint/interfaces/extensions/V1_0/ISensorTestClientCallback;)I

    move-result v1

    .line 483
    .restart local v1  # "_hidl_out_ret":I
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 484
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 485
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 486
    goto :goto_13d

    .line 467
    .end local v0  # "callback":Lvendor/synaptics/fingerprint/interfaces/extensions/V1_0/ISensorTestClientCallback;
    .end local v1  # "_hidl_out_ret":I
    :cond_f2
    invoke-virtual {p2, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 469
    invoke-virtual {p2}, Landroid/os/HwParcel;->readStrongBinder()Landroid/os/IHwBinder;

    move-result-object v0

    invoke-static {v0}, Lvendor/synaptics/fingerprint/interfaces/extensions/V1_0/ISensorTestClientCallback;->asInterface(Landroid/os/IHwBinder;)Lvendor/synaptics/fingerprint/interfaces/extensions/V1_0/ISensorTestClientCallback;

    move-result-object v0

    .line 470
    .restart local v0  # "callback":Lvendor/synaptics/fingerprint/interfaces/extensions/V1_0/ISensorTestClientCallback;
    invoke-virtual {p0, v0}, Lvendor/synaptics/fingerprint/interfaces/extensions/V1_0/ISensorTest$Stub;->captureTest(Lvendor/synaptics/fingerprint/interfaces/extensions/V1_0/ISensorTestClientCallback;)I

    move-result v1

    .line 471
    .restart local v1  # "_hidl_out_ret":I
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 472
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 473
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 474
    goto :goto_13d

    .line 456
    .end local v0  # "callback":Lvendor/synaptics/fingerprint/interfaces/extensions/V1_0/ISensorTestClientCallback;
    .end local v1  # "_hidl_out_ret":I
    :cond_10b
    invoke-virtual {p2, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 458
    invoke-virtual {p0}, Lvendor/synaptics/fingerprint/interfaces/extensions/V1_0/ISensorTest$Stub;->spiSelfTest()I

    move-result v0

    .line 459
    .local v0, "_hidl_out_ret":I
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 460
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 461
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 462
    goto :goto_13d

    .line 442
    .end local v0  # "_hidl_out_ret":I
    :cond_11c
    invoke-virtual {p2, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 444
    new-instance v0, Lvendor/synaptics/fingerprint/interfaces/extensions/V1_0/SensortestCmd;

    invoke-direct {v0}, Lvendor/synaptics/fingerprint/interfaces/extensions/V1_0/SensortestCmd;-><init>()V

    .line 445
    .local v0, "testCmd":Lvendor/synaptics/fingerprint/interfaces/extensions/V1_0/SensortestCmd;
    invoke-virtual {v0, p2}, Lvendor/synaptics/fingerprint/interfaces/extensions/V1_0/SensortestCmd;->readFromParcel(Landroid/os/HwParcel;)V

    .line 446
    invoke-virtual {p2}, Landroid/os/HwParcel;->readStrongBinder()Landroid/os/IHwBinder;

    move-result-object v1

    invoke-static {v1}, Lvendor/synaptics/fingerprint/interfaces/extensions/V1_0/ISensorTestClientCallback;->asInterface(Landroid/os/IHwBinder;)Lvendor/synaptics/fingerprint/interfaces/extensions/V1_0/ISensorTestClientCallback;

    move-result-object v1

    .line 447
    .local v1, "callback":Lvendor/synaptics/fingerprint/interfaces/extensions/V1_0/ISensorTestClientCallback;
    invoke-virtual {p0, v0, v1}, Lvendor/synaptics/fingerprint/interfaces/extensions/V1_0/ISensorTest$Stub;->startSensorTest(Lvendor/synaptics/fingerprint/interfaces/extensions/V1_0/SensortestCmd;Lvendor/synaptics/fingerprint/interfaces/extensions/V1_0/ISensorTestClientCallback;)I

    move-result v3

    .line 448
    .local v3, "_hidl_out_ret":I
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 449
    invoke-virtual {p3, v3}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 450
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 451
    nop

    .line 605
    .end local v0  # "testCmd":Lvendor/synaptics/fingerprint/interfaces/extensions/V1_0/SensortestCmd;
    .end local v1  # "callback":Lvendor/synaptics/fingerprint/interfaces/extensions/V1_0/ISensorTestClientCallback;
    .end local v3  # "_hidl_out_ret":I
    :goto_13d
    return-void

    :sswitch_data_13e
    .sparse-switch
        0xf43484e -> :sswitch_ae
        0xf444247 -> :sswitch_a3
        0xf445343 -> :sswitch_91
        0xf485348 -> :sswitch_3f
        0xf494e54 -> :sswitch_37
        0xf4c5444 -> :sswitch_35
        0xf504e47 -> :sswitch_33
        0xf524546 -> :sswitch_21
        0xf535953 -> :sswitch_19
    .end sparse-switch
.end method

.method public final ping()V
    .registers 1

    .line 396
    return-void
.end method

.method public queryLocalInterface(Ljava/lang/String;)Landroid/os/IHwInterface;
    .registers 3
    .param p1, "descriptor"  # Ljava/lang/String;

    .line 421
    const-string v0, "vendor.synaptics.fingerprint.interfaces.extensions@1.0::ISensorTest"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 422
    return-object p0

    .line 424
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

    .line 428
    invoke-virtual {p0, p1}, Lvendor/synaptics/fingerprint/interfaces/extensions/V1_0/ISensorTest$Stub;->registerService(Ljava/lang/String;)V

    .line 429
    return-void
.end method

.method public final setHALInstrumentation()V
    .registers 1

    .line 387
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 433
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lvendor/synaptics/fingerprint/interfaces/extensions/V1_0/ISensorTest$Stub;->interfaceDescriptor()Ljava/lang/String;

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

    .line 415
    const/4 v0, 0x1

    return v0
.end method
