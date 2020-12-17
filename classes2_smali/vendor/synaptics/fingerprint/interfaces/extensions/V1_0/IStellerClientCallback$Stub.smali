.class public abstract Lvendor/synaptics/fingerprint/interfaces/extensions/V1_0/IStellerClientCallback$Stub;
.super Landroid/os/HwBinder;
.source "IStellerClientCallback.java"

# interfaces
.implements Lvendor/synaptics/fingerprint/interfaces/extensions/V1_0/IStellerClientCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lvendor/synaptics/fingerprint/interfaces/extensions/V1_0/IStellerClientCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 283
    invoke-direct {p0}, Landroid/os/HwBinder;-><init>()V

    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IHwBinder;
    .registers 1

    .line 286
    return-object p0
.end method

.method public final getDebugInfo()Landroid/hidl/base/V1_0/DebugInfo;
    .registers 4

    .line 328
    new-instance v0, Landroid/hidl/base/V1_0/DebugInfo;

    invoke-direct {v0}, Landroid/hidl/base/V1_0/DebugInfo;-><init>()V

    .line 329
    .local v0, "info":Landroid/hidl/base/V1_0/DebugInfo;
    const/4 v1, -0x1

    iput v1, v0, Landroid/hidl/base/V1_0/DebugInfo;->pid:I

    .line 330
    const-wide/16 v1, 0x0

    iput-wide v1, v0, Landroid/hidl/base/V1_0/DebugInfo;->ptr:J

    .line 331
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

    .line 304
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
        0x17t
        0x21t
        -0x3et
        -0x60t
        -0x7at
        -0x7ft
        0x6bt
        -0x57t
        -0x10t
        -0x41t
        0x71t
        0x1ct
        -0x6bt
        0x29t
        -0x2ft
        0x70t
        -0x57t
        -0x70t
        -0x21t
        0x17t
        -0x80t
        0x9t
        0x3t
        -0x30t
        -0x6ct
        0x2et
        0x18t
        0x78t
        -0x78t
        -0x40t
        0x76t
        0x1t
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

    .line 291
    new-instance v0, Ljava/util/ArrayList;

    const-string v1, "vendor.synaptics.fingerprint.interfaces.extensions@1.0::IStellerClientCallback"

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

    .line 298
    const-string v0, "vendor.synaptics.fingerprint.interfaces.extensions@1.0::IStellerClientCallback"

    return-object v0
.end method

.method public final linkToDeath(Landroid/os/IHwBinder$DeathRecipient;J)Z
    .registers 5
    .param p1, "recipient"  # Landroid/os/IHwBinder$DeathRecipient;
    .param p2, "cookie"  # J

    .line 317
    const/4 v0, 0x1

    return v0
.end method

.method public final notifySyspropsChanged()V
    .registers 1

    .line 336
    invoke-static {}, Landroid/os/SystemProperties;->reportSyspropChanged()V

    .line 337
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

    .line 365
    const-string v0, "vendor.synaptics.fingerprint.interfaces.extensions@1.0::IStellerClientCallback"

    const/4 v1, 0x1

    if-eq p1, v1, :cond_be

    const/4 v1, 0x2

    if-eq p1, v1, :cond_b3

    const/4 v0, 0x0

    const-string v1, "android.hidl.base@1.0::IBase"

    sparse-switch p1, :sswitch_data_ca

    goto/16 :goto_c9

    .line 476
    :sswitch_10
    invoke-virtual {p2, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 478
    invoke-virtual {p0}, Lvendor/synaptics/fingerprint/interfaces/extensions/V1_0/IStellerClientCallback$Stub;->notifySyspropsChanged()V

    .line 479
    goto/16 :goto_c9

    .line 465
    :sswitch_18
    invoke-virtual {p2, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 467
    invoke-virtual {p0}, Lvendor/synaptics/fingerprint/interfaces/extensions/V1_0/IStellerClientCallback$Stub;->getDebugInfo()Landroid/hidl/base/V1_0/DebugInfo;

    move-result-object v1

    .line 468
    .local v1, "_hidl_out_info":Landroid/hidl/base/V1_0/DebugInfo;
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 469
    invoke-virtual {v1, p3}, Landroid/hidl/base/V1_0/DebugInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 470
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 471
    goto/16 :goto_c9

    .line 460
    .end local v1  # "_hidl_out_info":Landroid/hidl/base/V1_0/DebugInfo;
    :sswitch_2a
    goto/16 :goto_c9

    .line 455
    :sswitch_2c
    goto/16 :goto_c9

    .line 447
    :sswitch_2e
    invoke-virtual {p2, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 449
    invoke-virtual {p0}, Lvendor/synaptics/fingerprint/interfaces/extensions/V1_0/IStellerClientCallback$Stub;->setHALInstrumentation()V

    .line 450
    goto/16 :goto_c9

    .line 417
    :sswitch_36
    invoke-virtual {p2, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 419
    invoke-virtual {p0}, Lvendor/synaptics/fingerprint/interfaces/extensions/V1_0/IStellerClientCallback$Stub;->getHashChain()Ljava/util/ArrayList;

    move-result-object v1

    .line 420
    .local v1, "_hidl_out_hashchain":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 422
    new-instance v2, Landroid/os/HwBlob;

    const/16 v3, 0x10

    invoke-direct {v2, v3}, Landroid/os/HwBlob;-><init>(I)V

    .line 424
    .local v2, "_hidl_blob":Landroid/os/HwBlob;
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 425
    .local v3, "_hidl_vec_size":I
    const-wide/16 v4, 0x8

    invoke-virtual {v2, v4, v5, v3}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 426
    const-wide/16 v4, 0xc

    invoke-virtual {v2, v4, v5, v0}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 427
    new-instance v0, Landroid/os/HwBlob;

    mul-int/lit8 v4, v3, 0x20

    invoke-direct {v0, v4}, Landroid/os/HwBlob;-><init>(I)V

    .line 428
    .local v0, "childBlob":Landroid/os/HwBlob;
    const/4 v4, 0x0

    .local v4, "_hidl_index_0":I
    :goto_5d
    if-ge v4, v3, :cond_7b

    .line 430
    mul-int/lit8 v5, v4, 0x20

    int-to-long v5, v5

    .line 431
    .local v5, "_hidl_array_offset_1":J
    const/4 v7, 0x0

    .local v7, "_hidl_index_1_0":I
    :goto_63
    const/16 v8, 0x20

    if-ge v7, v8, :cond_78

    .line 432
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [B

    aget-byte v8, v8, v7

    invoke-virtual {v0, v5, v6, v8}, Landroid/os/HwBlob;->putInt8(JB)V

    .line 433
    const-wide/16 v8, 0x1

    add-long/2addr v5, v8

    .line 431
    add-int/lit8 v7, v7, 0x1

    goto :goto_63

    .line 428
    .end local v5  # "_hidl_array_offset_1":J
    .end local v7  # "_hidl_index_1_0":I
    :cond_78
    add-int/lit8 v4, v4, 0x1

    goto :goto_5d

    .line 437
    .end local v4  # "_hidl_index_0":I
    :cond_7b
    const-wide/16 v4, 0x0

    invoke-virtual {v2, v4, v5, v0}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    .line 439
    .end local v0  # "childBlob":Landroid/os/HwBlob;
    .end local v3  # "_hidl_vec_size":I
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    .line 441
    .end local v2  # "_hidl_blob":Landroid/os/HwBlob;
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 442
    goto :goto_c9

    .line 406
    .end local v1  # "_hidl_out_hashchain":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    :sswitch_87
    invoke-virtual {p2, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 408
    invoke-virtual {p0}, Lvendor/synaptics/fingerprint/interfaces/extensions/V1_0/IStellerClientCallback$Stub;->interfaceDescriptor()Ljava/lang/String;

    move-result-object v1

    .line 409
    .local v1, "_hidl_out_descriptor":Ljava/lang/String;
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 410
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 411
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 412
    goto :goto_c9

    .line 397
    .end local v1  # "_hidl_out_descriptor":Ljava/lang/String;
    :sswitch_98
    invoke-virtual {p2, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 399
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 400
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 401
    goto :goto_c9

    .line 386
    :sswitch_a2
    invoke-virtual {p2, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 388
    invoke-virtual {p0}, Lvendor/synaptics/fingerprint/interfaces/extensions/V1_0/IStellerClientCallback$Stub;->interfaceChain()Ljava/util/ArrayList;

    move-result-object v1

    .line 389
    .local v1, "_hidl_out_descriptors":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 390
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStringVector(Ljava/util/ArrayList;)V

    .line 391
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 392
    goto :goto_c9

    .line 377
    .end local v1  # "_hidl_out_descriptors":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_b3
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 379
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 380
    .local v0, "state":I
    invoke-virtual {p0, v0}, Lvendor/synaptics/fingerprint/interfaces/extensions/V1_0/IStellerClientCallback$Stub;->atuStatus(I)V

    .line 381
    goto :goto_c9

    .line 368
    .end local v0  # "state":I
    :cond_be
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 370
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 371
    .local v0, "ctrl":I
    invoke-virtual {p0, v0}, Lvendor/synaptics/fingerprint/interfaces/extensions/V1_0/IStellerClientCallback$Stub;->hbmCtrl(I)V

    .line 372
    nop

    .line 488
    .end local v0  # "ctrl":I
    :goto_c9
    return-void

    :sswitch_data_ca
    .sparse-switch
        0xf43484e -> :sswitch_a2
        0xf444247 -> :sswitch_98
        0xf445343 -> :sswitch_87
        0xf485348 -> :sswitch_36
        0xf494e54 -> :sswitch_2e
        0xf4c5444 -> :sswitch_2c
        0xf504e47 -> :sswitch_2a
        0xf524546 -> :sswitch_18
        0xf535953 -> :sswitch_10
    .end sparse-switch
.end method

.method public final ping()V
    .registers 1

    .line 322
    return-void
.end method

.method public queryLocalInterface(Ljava/lang/String;)Landroid/os/IHwInterface;
    .registers 3
    .param p1, "descriptor"  # Ljava/lang/String;

    .line 347
    const-string v0, "vendor.synaptics.fingerprint.interfaces.extensions@1.0::IStellerClientCallback"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 348
    return-object p0

    .line 350
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

    .line 354
    invoke-virtual {p0, p1}, Lvendor/synaptics/fingerprint/interfaces/extensions/V1_0/IStellerClientCallback$Stub;->registerService(Ljava/lang/String;)V

    .line 355
    return-void
.end method

.method public final setHALInstrumentation()V
    .registers 1

    .line 313
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 359
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lvendor/synaptics/fingerprint/interfaces/extensions/V1_0/IStellerClientCallback$Stub;->interfaceDescriptor()Ljava/lang/String;

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

    .line 341
    const/4 v0, 0x1

    return v0
.end method
