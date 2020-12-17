.class public abstract Lvendor/synaptics/fingerprint/interfaces/extensions/V1_0/ISensorTestClientCallback$Stub;
.super Landroid/os/HwBinder;
.source "ISensorTestClientCallback.java"

# interfaces
.implements Lvendor/synaptics/fingerprint/interfaces/extensions/V1_0/ISensorTestClientCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lvendor/synaptics/fingerprint/interfaces/extensions/V1_0/ISensorTestClientCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 319
    invoke-direct {p0}, Landroid/os/HwBinder;-><init>()V

    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IHwBinder;
    .registers 1

    .line 322
    return-object p0
.end method

.method public final getDebugInfo()Landroid/hidl/base/V1_0/DebugInfo;
    .registers 4

    .line 364
    new-instance v0, Landroid/hidl/base/V1_0/DebugInfo;

    invoke-direct {v0}, Landroid/hidl/base/V1_0/DebugInfo;-><init>()V

    .line 365
    .local v0, "info":Landroid/hidl/base/V1_0/DebugInfo;
    const/4 v1, -0x1

    iput v1, v0, Landroid/hidl/base/V1_0/DebugInfo;->pid:I

    .line 366
    const-wide/16 v1, 0x0

    iput-wide v1, v0, Landroid/hidl/base/V1_0/DebugInfo;->ptr:J

    .line 367
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

    .line 340
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
        0x8t
        0x7et
        -0x29t
        0x1at
        0x73t
        -0x26t
        0x3at
        -0x75t
        0x7t
        0x5at
        0x24t
        0x1ct
        0x34t
        -0x4at
        -0x4at
        -0x43t
        0x7dt
        0x68t
        -0x7bt
        -0x29t
        0x5ft
        -0x49t
        -0x1ct
        -0x13t
        -0x57t
        0x48t
        0x22t
        0xct
        0x4et
        0x6t
        -0x62t
        0x9t
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

    .line 327
    new-instance v0, Ljava/util/ArrayList;

    const-string v1, "vendor.synaptics.fingerprint.interfaces.extensions@1.0::ISensorTestClientCallback"

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

    .line 334
    const-string v0, "vendor.synaptics.fingerprint.interfaces.extensions@1.0::ISensorTestClientCallback"

    return-object v0
.end method

.method public final linkToDeath(Landroid/os/IHwBinder$DeathRecipient;J)Z
    .registers 5
    .param p1, "recipient"  # Landroid/os/IHwBinder$DeathRecipient;
    .param p2, "cookie"  # J

    .line 353
    const/4 v0, 0x1

    return v0
.end method

.method public final notifySyspropsChanged()V
    .registers 1

    .line 372
    invoke-static {}, Landroid/os/SystemProperties;->reportSyspropChanged()V

    .line 373
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

    .line 401
    const/4 v0, 0x1

    const-string v1, "vendor.synaptics.fingerprint.interfaces.extensions@1.0::ISensorTestClientCallback"

    if-eq p1, v0, :cond_e2

    const/4 v0, 0x2

    if-eq p1, v0, :cond_d7

    const/4 v0, 0x3

    if-eq p1, v0, :cond_c8

    const/4 v0, 0x4

    if-eq p1, v0, :cond_b9

    const/4 v0, 0x0

    const-string v1, "android.hidl.base@1.0::IBase"

    sparse-switch p1, :sswitch_data_ea

    goto/16 :goto_e9

    .line 531
    :sswitch_16
    invoke-virtual {p2, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 533
    invoke-virtual {p0}, Lvendor/synaptics/fingerprint/interfaces/extensions/V1_0/ISensorTestClientCallback$Stub;->notifySyspropsChanged()V

    .line 534
    goto/16 :goto_e9

    .line 520
    :sswitch_1e
    invoke-virtual {p2, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 522
    invoke-virtual {p0}, Lvendor/synaptics/fingerprint/interfaces/extensions/V1_0/ISensorTestClientCallback$Stub;->getDebugInfo()Landroid/hidl/base/V1_0/DebugInfo;

    move-result-object v1

    .line 523
    .local v1, "_hidl_out_info":Landroid/hidl/base/V1_0/DebugInfo;
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 524
    invoke-virtual {v1, p3}, Landroid/hidl/base/V1_0/DebugInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 525
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 526
    goto/16 :goto_e9

    .line 515
    .end local v1  # "_hidl_out_info":Landroid/hidl/base/V1_0/DebugInfo;
    :sswitch_30
    goto/16 :goto_e9

    .line 510
    :sswitch_32
    goto/16 :goto_e9

    .line 502
    :sswitch_34
    invoke-virtual {p2, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 504
    invoke-virtual {p0}, Lvendor/synaptics/fingerprint/interfaces/extensions/V1_0/ISensorTestClientCallback$Stub;->setHALInstrumentation()V

    .line 505
    goto/16 :goto_e9

    .line 472
    :sswitch_3c
    invoke-virtual {p2, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 474
    invoke-virtual {p0}, Lvendor/synaptics/fingerprint/interfaces/extensions/V1_0/ISensorTestClientCallback$Stub;->getHashChain()Ljava/util/ArrayList;

    move-result-object v1

    .line 475
    .local v1, "_hidl_out_hashchain":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 477
    new-instance v2, Landroid/os/HwBlob;

    const/16 v3, 0x10

    invoke-direct {v2, v3}, Landroid/os/HwBlob;-><init>(I)V

    .line 479
    .local v2, "_hidl_blob":Landroid/os/HwBlob;
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 480
    .local v3, "_hidl_vec_size":I
    const-wide/16 v4, 0x8

    invoke-virtual {v2, v4, v5, v3}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 481
    const-wide/16 v4, 0xc

    invoke-virtual {v2, v4, v5, v0}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 482
    new-instance v0, Landroid/os/HwBlob;

    mul-int/lit8 v4, v3, 0x20

    invoke-direct {v0, v4}, Landroid/os/HwBlob;-><init>(I)V

    .line 483
    .local v0, "childBlob":Landroid/os/HwBlob;
    const/4 v4, 0x0

    .local v4, "_hidl_index_0":I
    :goto_63
    if-ge v4, v3, :cond_81

    .line 485
    mul-int/lit8 v5, v4, 0x20

    int-to-long v5, v5

    .line 486
    .local v5, "_hidl_array_offset_1":J
    const/4 v7, 0x0

    .local v7, "_hidl_index_1_0":I
    :goto_69
    const/16 v8, 0x20

    if-ge v7, v8, :cond_7e

    .line 487
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [B

    aget-byte v8, v8, v7

    invoke-virtual {v0, v5, v6, v8}, Landroid/os/HwBlob;->putInt8(JB)V

    .line 488
    const-wide/16 v8, 0x1

    add-long/2addr v5, v8

    .line 486
    add-int/lit8 v7, v7, 0x1

    goto :goto_69

    .line 483
    .end local v5  # "_hidl_array_offset_1":J
    .end local v7  # "_hidl_index_1_0":I
    :cond_7e
    add-int/lit8 v4, v4, 0x1

    goto :goto_63

    .line 492
    .end local v4  # "_hidl_index_0":I
    :cond_81
    const-wide/16 v4, 0x0

    invoke-virtual {v2, v4, v5, v0}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    .line 494
    .end local v0  # "childBlob":Landroid/os/HwBlob;
    .end local v3  # "_hidl_vec_size":I
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    .line 496
    .end local v2  # "_hidl_blob":Landroid/os/HwBlob;
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 497
    goto :goto_e9

    .line 461
    .end local v1  # "_hidl_out_hashchain":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    :sswitch_8d
    invoke-virtual {p2, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 463
    invoke-virtual {p0}, Lvendor/synaptics/fingerprint/interfaces/extensions/V1_0/ISensorTestClientCallback$Stub;->interfaceDescriptor()Ljava/lang/String;

    move-result-object v1

    .line 464
    .local v1, "_hidl_out_descriptor":Ljava/lang/String;
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 465
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 466
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 467
    goto :goto_e9

    .line 452
    .end local v1  # "_hidl_out_descriptor":Ljava/lang/String;
    :sswitch_9e
    invoke-virtual {p2, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 454
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 455
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 456
    goto :goto_e9

    .line 441
    :sswitch_a8
    invoke-virtual {p2, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 443
    invoke-virtual {p0}, Lvendor/synaptics/fingerprint/interfaces/extensions/V1_0/ISensorTestClientCallback$Stub;->interfaceChain()Ljava/util/ArrayList;

    move-result-object v1

    .line 444
    .local v1, "_hidl_out_descriptors":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 445
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStringVector(Ljava/util/ArrayList;)V

    .line 446
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 447
    goto :goto_e9

    .line 431
    .end local v1  # "_hidl_out_descriptors":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_b9
    invoke-virtual {p2, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 433
    new-instance v0, Lvendor/synaptics/fingerprint/interfaces/extensions/V1_0/SensorInfo;

    invoke-direct {v0}, Lvendor/synaptics/fingerprint/interfaces/extensions/V1_0/SensorInfo;-><init>()V

    .line 434
    .local v0, "info":Lvendor/synaptics/fingerprint/interfaces/extensions/V1_0/SensorInfo;
    invoke-virtual {v0, p2}, Lvendor/synaptics/fingerprint/interfaces/extensions/V1_0/SensorInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 435
    invoke-virtual {p0, v0}, Lvendor/synaptics/fingerprint/interfaces/extensions/V1_0/ISensorTestClientCallback$Stub;->onSensorInfoGet(Lvendor/synaptics/fingerprint/interfaces/extensions/V1_0/SensorInfo;)V

    .line 436
    goto :goto_e9

    .line 421
    .end local v0  # "info":Lvendor/synaptics/fingerprint/interfaces/extensions/V1_0/SensorInfo;
    :cond_c8
    invoke-virtual {p2, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 423
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 424
    .local v0, "eventId":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 425
    .local v1, "error":I
    invoke-virtual {p0, v0, v1}, Lvendor/synaptics/fingerprint/interfaces/extensions/V1_0/ISensorTestClientCallback$Stub;->onAcquired(II)V

    .line 426
    goto :goto_e9

    .line 412
    .end local v0  # "eventId":I
    .end local v1  # "error":I
    :cond_d7
    invoke-virtual {p2, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 414
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 415
    .local v0, "binResult":I
    invoke-virtual {p0, v0}, Lvendor/synaptics/fingerprint/interfaces/extensions/V1_0/ISensorTestClientCallback$Stub;->onSensorTestEnd(I)V

    .line 416
    goto :goto_e9

    .line 404
    .end local v0  # "binResult":I
    :cond_e2
    invoke-virtual {p2, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 406
    invoke-virtual {p0}, Lvendor/synaptics/fingerprint/interfaces/extensions/V1_0/ISensorTestClientCallback$Stub;->onSensorTestStart()V

    .line 407
    nop

    .line 543
    :goto_e9
    return-void

    :sswitch_data_ea
    .sparse-switch
        0xf43484e -> :sswitch_a8
        0xf444247 -> :sswitch_9e
        0xf445343 -> :sswitch_8d
        0xf485348 -> :sswitch_3c
        0xf494e54 -> :sswitch_34
        0xf4c5444 -> :sswitch_32
        0xf504e47 -> :sswitch_30
        0xf524546 -> :sswitch_1e
        0xf535953 -> :sswitch_16
    .end sparse-switch
.end method

.method public final ping()V
    .registers 1

    .line 358
    return-void
.end method

.method public queryLocalInterface(Ljava/lang/String;)Landroid/os/IHwInterface;
    .registers 3
    .param p1, "descriptor"  # Ljava/lang/String;

    .line 383
    const-string v0, "vendor.synaptics.fingerprint.interfaces.extensions@1.0::ISensorTestClientCallback"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 384
    return-object p0

    .line 386
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

    .line 390
    invoke-virtual {p0, p1}, Lvendor/synaptics/fingerprint/interfaces/extensions/V1_0/ISensorTestClientCallback$Stub;->registerService(Ljava/lang/String;)V

    .line 391
    return-void
.end method

.method public final setHALInstrumentation()V
    .registers 1

    .line 349
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 395
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lvendor/synaptics/fingerprint/interfaces/extensions/V1_0/ISensorTestClientCallback$Stub;->interfaceDescriptor()Ljava/lang/String;

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

    .line 377
    const/4 v0, 0x1

    return v0
.end method
