.class public abstract Lvendor/synaptics/fingerprint/interfaces/extensions/V1_0/ISteller$Stub;
.super Landroid/os/HwBinder;
.source "ISteller.java"

# interfaces
.implements Lvendor/synaptics/fingerprint/interfaces/extensions/V1_0/ISteller;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lvendor/synaptics/fingerprint/interfaces/extensions/V1_0/ISteller;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 305
    invoke-direct {p0}, Landroid/os/HwBinder;-><init>()V

    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IHwBinder;
    .registers 1

    .line 308
    return-object p0
.end method

.method public final getDebugInfo()Landroid/hidl/base/V1_0/DebugInfo;
    .registers 4

    .line 350
    new-instance v0, Landroid/hidl/base/V1_0/DebugInfo;

    invoke-direct {v0}, Landroid/hidl/base/V1_0/DebugInfo;-><init>()V

    .line 351
    .local v0, "info":Landroid/hidl/base/V1_0/DebugInfo;
    const/4 v1, -0x1

    iput v1, v0, Landroid/hidl/base/V1_0/DebugInfo;->pid:I

    .line 352
    const-wide/16 v1, 0x0

    iput-wide v1, v0, Landroid/hidl/base/V1_0/DebugInfo;->ptr:J

    .line 353
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

    .line 326
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
        -0x62t
        -0x3ct
        0x7at
        -0x45t
        0x38t
        -0x19t
        0x56t
        0x66t
        -0x5ct
        -0x29t
        -0x27t
        -0x39t
        0x5et
        0x7t
        0x4at
        0x17t
        -0xet
        0x6dt
        0x31t
        -0x5t
        -0x11t
        -0x2dt
        0x2dt
        0x6ct
        0xet
        -0x74t
        -0x1ct
        0xct
        -0x60t
        0x67t
        -0x6t
        -0x7t
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

    .line 313
    new-instance v0, Ljava/util/ArrayList;

    const-string v1, "vendor.synaptics.fingerprint.interfaces.extensions@1.0::ISteller"

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

    .line 320
    const-string v0, "vendor.synaptics.fingerprint.interfaces.extensions@1.0::ISteller"

    return-object v0
.end method

.method public final linkToDeath(Landroid/os/IHwBinder$DeathRecipient;J)Z
    .registers 5
    .param p1, "recipient"  # Landroid/os/IHwBinder$DeathRecipient;
    .param p2, "cookie"  # J

    .line 339
    const/4 v0, 0x1

    return v0
.end method

.method public final notifySyspropsChanged()V
    .registers 1

    .line 358
    invoke-static {}, Landroid/os/SystemProperties;->reportSyspropChanged()V

    .line 359
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

    .line 387
    const-string v0, "vendor.synaptics.fingerprint.interfaces.extensions@1.0::ISteller"

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eq p1, v1, :cond_ea

    const/4 v1, 0x2

    const-wide/16 v3, 0x1

    if-eq p1, v1, :cond_b4

    const-string v0, "android.hidl.base@1.0::IBase"

    sparse-switch p1, :sswitch_data_10c

    goto/16 :goto_10b

    .line 518
    :sswitch_12
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 520
    invoke-virtual {p0}, Lvendor/synaptics/fingerprint/interfaces/extensions/V1_0/ISteller$Stub;->notifySyspropsChanged()V

    .line 521
    goto/16 :goto_10b

    .line 507
    :sswitch_1a
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 509
    invoke-virtual {p0}, Lvendor/synaptics/fingerprint/interfaces/extensions/V1_0/ISteller$Stub;->getDebugInfo()Landroid/hidl/base/V1_0/DebugInfo;

    move-result-object v0

    .line 510
    .local v0, "_hidl_out_info":Landroid/hidl/base/V1_0/DebugInfo;
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 511
    invoke-virtual {v0, p3}, Landroid/hidl/base/V1_0/DebugInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 512
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 513
    goto/16 :goto_10b

    .line 502
    .end local v0  # "_hidl_out_info":Landroid/hidl/base/V1_0/DebugInfo;
    :sswitch_2c
    goto/16 :goto_10b

    .line 497
    :sswitch_2e
    goto/16 :goto_10b

    .line 489
    :sswitch_30
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 491
    invoke-virtual {p0}, Lvendor/synaptics/fingerprint/interfaces/extensions/V1_0/ISteller$Stub;->setHALInstrumentation()V

    .line 492
    goto/16 :goto_10b

    .line 459
    :sswitch_38
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 461
    invoke-virtual {p0}, Lvendor/synaptics/fingerprint/interfaces/extensions/V1_0/ISteller$Stub;->getHashChain()Ljava/util/ArrayList;

    move-result-object v0

    .line 462
    .local v0, "_hidl_out_hashchain":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 464
    new-instance v1, Landroid/os/HwBlob;

    const/16 v5, 0x10

    invoke-direct {v1, v5}, Landroid/os/HwBlob;-><init>(I)V

    .line 466
    .local v1, "_hidl_blob":Landroid/os/HwBlob;
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v5

    .line 467
    .local v5, "_hidl_vec_size":I
    const-wide/16 v6, 0x8

    invoke-virtual {v1, v6, v7, v5}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 468
    const-wide/16 v6, 0xc

    invoke-virtual {v1, v6, v7, v2}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 469
    new-instance v2, Landroid/os/HwBlob;

    mul-int/lit8 v6, v5, 0x20

    invoke-direct {v2, v6}, Landroid/os/HwBlob;-><init>(I)V

    .line 470
    .local v2, "childBlob":Landroid/os/HwBlob;
    const/4 v6, 0x0

    .local v6, "_hidl_index_0":I
    :goto_5f
    if-ge v6, v5, :cond_7b

    .line 472
    mul-int/lit8 v7, v6, 0x20

    int-to-long v7, v7

    .line 473
    .local v7, "_hidl_array_offset_1":J
    const/4 v9, 0x0

    .local v9, "_hidl_index_1_0":I
    :goto_65
    const/16 v10, 0x20

    if-ge v9, v10, :cond_78

    .line 474
    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, [B

    aget-byte v10, v10, v9

    invoke-virtual {v2, v7, v8, v10}, Landroid/os/HwBlob;->putInt8(JB)V

    .line 475
    add-long/2addr v7, v3

    .line 473
    add-int/lit8 v9, v9, 0x1

    goto :goto_65

    .line 470
    .end local v7  # "_hidl_array_offset_1":J
    .end local v9  # "_hidl_index_1_0":I
    :cond_78
    add-int/lit8 v6, v6, 0x1

    goto :goto_5f

    .line 479
    .end local v6  # "_hidl_index_0":I
    :cond_7b
    const-wide/16 v3, 0x0

    invoke-virtual {v1, v3, v4, v2}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    .line 481
    .end local v2  # "childBlob":Landroid/os/HwBlob;
    .end local v5  # "_hidl_vec_size":I
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    .line 483
    .end local v1  # "_hidl_blob":Landroid/os/HwBlob;
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 484
    goto/16 :goto_10b

    .line 448
    .end local v0  # "_hidl_out_hashchain":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    :sswitch_88
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 450
    invoke-virtual {p0}, Lvendor/synaptics/fingerprint/interfaces/extensions/V1_0/ISteller$Stub;->interfaceDescriptor()Ljava/lang/String;

    move-result-object v0

    .line 451
    .local v0, "_hidl_out_descriptor":Ljava/lang/String;
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 452
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 453
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 454
    goto :goto_10b

    .line 439
    .end local v0  # "_hidl_out_descriptor":Ljava/lang/String;
    :sswitch_99
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 441
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 442
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 443
    goto :goto_10b

    .line 428
    :sswitch_a3
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 430
    invoke-virtual {p0}, Lvendor/synaptics/fingerprint/interfaces/extensions/V1_0/ISteller$Stub;->interfaceChain()Ljava/util/ArrayList;

    move-result-object v0

    .line 431
    .local v0, "_hidl_out_descriptors":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 432
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStringVector(Ljava/util/ArrayList;)V

    .line 433
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 434
    goto :goto_10b

    .line 404
    .end local v0  # "_hidl_out_descriptors":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_b4
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 406
    const/16 v0, 0x45

    new-array v1, v0, [B

    .line 408
    .local v1, "hat":[B
    const-wide/16 v5, 0x45

    invoke-virtual {p2, v5, v6}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    move-result-object v5

    .line 410
    .local v5, "_hidl_blob":Landroid/os/HwBlob;
    const-wide/16 v6, 0x0

    .line 411
    .local v6, "_hidl_array_offset_0":J
    const/4 v8, 0x0

    .local v8, "_hidl_index_0_0":I
    :goto_c4
    if-ge v8, v0, :cond_d0

    .line 412
    invoke-virtual {v5, v6, v7}, Landroid/os/HwBlob;->getInt8(J)B

    move-result v9

    aput-byte v9, v1, v8

    .line 413
    add-long/2addr v6, v3

    .line 411
    add-int/lit8 v8, v8, 0x1

    goto :goto_c4

    .line 417
    .end local v5  # "_hidl_blob":Landroid/os/HwBlob;
    .end local v6  # "_hidl_array_offset_0":J
    .end local v8  # "_hidl_index_0_0":I
    :cond_d0
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 418
    .local v0, "data":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readStrongBinder()Landroid/os/IHwBinder;

    move-result-object v3

    invoke-static {v3}, Lvendor/synaptics/fingerprint/interfaces/extensions/V1_0/IStellerClientCallback;->asInterface(Landroid/os/IHwBinder;)Lvendor/synaptics/fingerprint/interfaces/extensions/V1_0/IStellerClientCallback;

    move-result-object v3

    .line 419
    .local v3, "callback":Lvendor/synaptics/fingerprint/interfaces/extensions/V1_0/IStellerClientCallback;
    invoke-virtual {p0, v1, v0, v3}, Lvendor/synaptics/fingerprint/interfaces/extensions/V1_0/ISteller$Stub;->auxTemplateUpdate([BILvendor/synaptics/fingerprint/interfaces/extensions/V1_0/IStellerClientCallback;)I

    move-result v4

    .line 420
    .local v4, "_hidl_out_ret":I
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 421
    invoke-virtual {p3, v4}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 422
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 423
    goto :goto_10b

    .line 390
    .end local v0  # "data":I
    .end local v1  # "hat":[B
    .end local v3  # "callback":Lvendor/synaptics/fingerprint/interfaces/extensions/V1_0/IStellerClientCallback;
    .end local v4  # "_hidl_out_ret":I
    :cond_ea
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 392
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 393
    .local v0, "status":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 394
    .local v1, "data":I
    invoke-virtual {p2}, Landroid/os/HwParcel;->readStrongBinder()Landroid/os/IHwBinder;

    move-result-object v3

    invoke-static {v3}, Lvendor/synaptics/fingerprint/interfaces/extensions/V1_0/IStellerClientCallback;->asInterface(Landroid/os/IHwBinder;)Lvendor/synaptics/fingerprint/interfaces/extensions/V1_0/IStellerClientCallback;

    move-result-object v3

    .line 395
    .restart local v3  # "callback":Lvendor/synaptics/fingerprint/interfaces/extensions/V1_0/IStellerClientCallback;
    invoke-virtual {p0, v0, v1, v3}, Lvendor/synaptics/fingerprint/interfaces/extensions/V1_0/ISteller$Stub;->notify(IILvendor/synaptics/fingerprint/interfaces/extensions/V1_0/IStellerClientCallback;)I

    move-result v4

    .line 396
    .restart local v4  # "_hidl_out_ret":I
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 397
    invoke-virtual {p3, v4}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 398
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 399
    nop

    .line 530
    .end local v0  # "status":I
    .end local v1  # "data":I
    .end local v3  # "callback":Lvendor/synaptics/fingerprint/interfaces/extensions/V1_0/IStellerClientCallback;
    .end local v4  # "_hidl_out_ret":I
    :goto_10b
    return-void

    :sswitch_data_10c
    .sparse-switch
        0xf43484e -> :sswitch_a3
        0xf444247 -> :sswitch_99
        0xf445343 -> :sswitch_88
        0xf485348 -> :sswitch_38
        0xf494e54 -> :sswitch_30
        0xf4c5444 -> :sswitch_2e
        0xf504e47 -> :sswitch_2c
        0xf524546 -> :sswitch_1a
        0xf535953 -> :sswitch_12
    .end sparse-switch
.end method

.method public final ping()V
    .registers 1

    .line 344
    return-void
.end method

.method public queryLocalInterface(Ljava/lang/String;)Landroid/os/IHwInterface;
    .registers 3
    .param p1, "descriptor"  # Ljava/lang/String;

    .line 369
    const-string v0, "vendor.synaptics.fingerprint.interfaces.extensions@1.0::ISteller"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 370
    return-object p0

    .line 372
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

    .line 376
    invoke-virtual {p0, p1}, Lvendor/synaptics/fingerprint/interfaces/extensions/V1_0/ISteller$Stub;->registerService(Ljava/lang/String;)V

    .line 377
    return-void
.end method

.method public final setHALInstrumentation()V
    .registers 1

    .line 335
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 381
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lvendor/synaptics/fingerprint/interfaces/extensions/V1_0/ISteller$Stub;->interfaceDescriptor()Ljava/lang/String;

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

    .line 363
    const/4 v0, 0x1

    return v0
.end method
