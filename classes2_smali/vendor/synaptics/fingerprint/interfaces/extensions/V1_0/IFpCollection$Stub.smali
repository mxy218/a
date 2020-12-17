.class public abstract Lvendor/synaptics/fingerprint/interfaces/extensions/V1_0/IFpCollection$Stub;
.super Landroid/os/HwBinder;
.source "IFpCollection.java"

# interfaces
.implements Lvendor/synaptics/fingerprint/interfaces/extensions/V1_0/IFpCollection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lvendor/synaptics/fingerprint/interfaces/extensions/V1_0/IFpCollection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 292
    invoke-direct {p0}, Landroid/os/HwBinder;-><init>()V

    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IHwBinder;
    .registers 1

    .line 295
    return-object p0
.end method

.method public final getDebugInfo()Landroid/hidl/base/V1_0/DebugInfo;
    .registers 4

    .line 337
    new-instance v0, Landroid/hidl/base/V1_0/DebugInfo;

    invoke-direct {v0}, Landroid/hidl/base/V1_0/DebugInfo;-><init>()V

    .line 338
    .local v0, "info":Landroid/hidl/base/V1_0/DebugInfo;
    const/4 v1, -0x1

    iput v1, v0, Landroid/hidl/base/V1_0/DebugInfo;->pid:I

    .line 339
    const-wide/16 v1, 0x0

    iput-wide v1, v0, Landroid/hidl/base/V1_0/DebugInfo;->ptr:J

    .line 340
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

    .line 313
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
        -0xct
        0x1et
        -0x76t
        -0x63t
        -0x61t
        -0x3t
        0x77t
        0x77t
        0x1et
        0x2t
        -0x6dt
        0x22t
        0x19t
        -0x16t
        -0x62t
        -0x25t
        -0x4ft
        -0x50t
        0x71t
        -0x3et
        0x73t
        -0x49t
        -0xft
        0x68t
        -0x1at
        -0x48t
        0x10t
        0x5ct
        -0x55t
        0x5bt
        -0x15t
        -0x1at
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

    .line 300
    new-instance v0, Ljava/util/ArrayList;

    const-string v1, "vendor.synaptics.fingerprint.interfaces.extensions@1.0::IFpCollection"

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

    .line 307
    const-string v0, "vendor.synaptics.fingerprint.interfaces.extensions@1.0::IFpCollection"

    return-object v0
.end method

.method public final linkToDeath(Landroid/os/IHwBinder$DeathRecipient;J)Z
    .registers 5
    .param p1, "recipient"  # Landroid/os/IHwBinder$DeathRecipient;
    .param p2, "cookie"  # J

    .line 326
    const/4 v0, 0x1

    return v0
.end method

.method public final notifySyspropsChanged()V
    .registers 1

    .line 345
    invoke-static {}, Landroid/os/SystemProperties;->reportSyspropChanged()V

    .line 346
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

    .line 374
    const-string v0, "vendor.synaptics.fingerprint.interfaces.extensions@1.0::IFpCollection"

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eq p1, v1, :cond_cc

    const/4 v1, 0x2

    if-eq p1, v1, :cond_b3

    const-string v0, "android.hidl.base@1.0::IBase"

    sparse-switch p1, :sswitch_data_ea

    goto/16 :goto_e9

    .line 492
    :sswitch_10
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 494
    invoke-virtual {p0}, Lvendor/synaptics/fingerprint/interfaces/extensions/V1_0/IFpCollection$Stub;->notifySyspropsChanged()V

    .line 495
    goto/16 :goto_e9

    .line 481
    :sswitch_18
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 483
    invoke-virtual {p0}, Lvendor/synaptics/fingerprint/interfaces/extensions/V1_0/IFpCollection$Stub;->getDebugInfo()Landroid/hidl/base/V1_0/DebugInfo;

    move-result-object v0

    .line 484
    .local v0, "_hidl_out_info":Landroid/hidl/base/V1_0/DebugInfo;
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 485
    invoke-virtual {v0, p3}, Landroid/hidl/base/V1_0/DebugInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 486
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 487
    goto/16 :goto_e9

    .line 476
    .end local v0  # "_hidl_out_info":Landroid/hidl/base/V1_0/DebugInfo;
    :sswitch_2a
    goto/16 :goto_e9

    .line 471
    :sswitch_2c
    goto/16 :goto_e9

    .line 463
    :sswitch_2e
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 465
    invoke-virtual {p0}, Lvendor/synaptics/fingerprint/interfaces/extensions/V1_0/IFpCollection$Stub;->setHALInstrumentation()V

    .line 466
    goto/16 :goto_e9

    .line 433
    :sswitch_36
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 435
    invoke-virtual {p0}, Lvendor/synaptics/fingerprint/interfaces/extensions/V1_0/IFpCollection$Stub;->getHashChain()Ljava/util/ArrayList;

    move-result-object v0

    .line 436
    .local v0, "_hidl_out_hashchain":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 438
    new-instance v1, Landroid/os/HwBlob;

    const/16 v3, 0x10

    invoke-direct {v1, v3}, Landroid/os/HwBlob;-><init>(I)V

    .line 440
    .local v1, "_hidl_blob":Landroid/os/HwBlob;
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 441
    .local v3, "_hidl_vec_size":I
    const-wide/16 v4, 0x8

    invoke-virtual {v1, v4, v5, v3}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 442
    const-wide/16 v4, 0xc

    invoke-virtual {v1, v4, v5, v2}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 443
    new-instance v2, Landroid/os/HwBlob;

    mul-int/lit8 v4, v3, 0x20

    invoke-direct {v2, v4}, Landroid/os/HwBlob;-><init>(I)V

    .line 444
    .local v2, "childBlob":Landroid/os/HwBlob;
    const/4 v4, 0x0

    .local v4, "_hidl_index_0":I
    :goto_5d
    if-ge v4, v3, :cond_7b

    .line 446
    mul-int/lit8 v5, v4, 0x20

    int-to-long v5, v5

    .line 447
    .local v5, "_hidl_array_offset_1":J
    const/4 v7, 0x0

    .local v7, "_hidl_index_1_0":I
    :goto_63
    const/16 v8, 0x20

    if-ge v7, v8, :cond_78

    .line 448
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [B

    aget-byte v8, v8, v7

    invoke-virtual {v2, v5, v6, v8}, Landroid/os/HwBlob;->putInt8(JB)V

    .line 449
    const-wide/16 v8, 0x1

    add-long/2addr v5, v8

    .line 447
    add-int/lit8 v7, v7, 0x1

    goto :goto_63

    .line 444
    .end local v5  # "_hidl_array_offset_1":J
    .end local v7  # "_hidl_index_1_0":I
    :cond_78
    add-int/lit8 v4, v4, 0x1

    goto :goto_5d

    .line 453
    .end local v4  # "_hidl_index_0":I
    :cond_7b
    const-wide/16 v4, 0x0

    invoke-virtual {v1, v4, v5, v2}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    .line 455
    .end local v2  # "childBlob":Landroid/os/HwBlob;
    .end local v3  # "_hidl_vec_size":I
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    .line 457
    .end local v1  # "_hidl_blob":Landroid/os/HwBlob;
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 458
    goto :goto_e9

    .line 422
    .end local v0  # "_hidl_out_hashchain":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    :sswitch_87
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 424
    invoke-virtual {p0}, Lvendor/synaptics/fingerprint/interfaces/extensions/V1_0/IFpCollection$Stub;->interfaceDescriptor()Ljava/lang/String;

    move-result-object v0

    .line 425
    .local v0, "_hidl_out_descriptor":Ljava/lang/String;
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 426
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 427
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 428
    goto :goto_e9

    .line 413
    .end local v0  # "_hidl_out_descriptor":Ljava/lang/String;
    :sswitch_98
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 415
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 416
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 417
    goto :goto_e9

    .line 402
    :sswitch_a2
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 404
    invoke-virtual {p0}, Lvendor/synaptics/fingerprint/interfaces/extensions/V1_0/IFpCollection$Stub;->interfaceChain()Ljava/util/ArrayList;

    move-result-object v0

    .line 405
    .local v0, "_hidl_out_descriptors":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 406
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStringVector(Ljava/util/ArrayList;)V

    .line 407
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 408
    goto :goto_e9

    .line 390
    .end local v0  # "_hidl_out_descriptors":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_b3
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 392
    invoke-virtual {p2}, Landroid/os/HwParcel;->readStrongBinder()Landroid/os/IHwBinder;

    move-result-object v0

    invoke-static {v0}, Lvendor/synaptics/fingerprint/interfaces/extensions/V1_0/IFpCollectionClientCallback;->asInterface(Landroid/os/IHwBinder;)Lvendor/synaptics/fingerprint/interfaces/extensions/V1_0/IFpCollectionClientCallback;

    move-result-object v0

    .line 393
    .local v0, "callback":Lvendor/synaptics/fingerprint/interfaces/extensions/V1_0/IFpCollectionClientCallback;
    invoke-virtual {p0, v0}, Lvendor/synaptics/fingerprint/interfaces/extensions/V1_0/IFpCollection$Stub;->cancelCapture(Lvendor/synaptics/fingerprint/interfaces/extensions/V1_0/IFpCollectionClientCallback;)I

    move-result v1

    .line 394
    .local v1, "_hidl_out_ret":I
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 395
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 396
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 397
    goto :goto_e9

    .line 377
    .end local v0  # "callback":Lvendor/synaptics/fingerprint/interfaces/extensions/V1_0/IFpCollectionClientCallback;
    .end local v1  # "_hidl_out_ret":I
    :cond_cc
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 379
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 380
    .local v0, "imageName":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/HwParcel;->readStrongBinder()Landroid/os/IHwBinder;

    move-result-object v1

    invoke-static {v1}, Lvendor/synaptics/fingerprint/interfaces/extensions/V1_0/IFpCollectionClientCallback;->asInterface(Landroid/os/IHwBinder;)Lvendor/synaptics/fingerprint/interfaces/extensions/V1_0/IFpCollectionClientCallback;

    move-result-object v1

    .line 381
    .local v1, "callback":Lvendor/synaptics/fingerprint/interfaces/extensions/V1_0/IFpCollectionClientCallback;
    invoke-virtual {p0, v0, v1}, Lvendor/synaptics/fingerprint/interfaces/extensions/V1_0/IFpCollection$Stub;->captureFpImage(Ljava/lang/String;Lvendor/synaptics/fingerprint/interfaces/extensions/V1_0/IFpCollectionClientCallback;)I

    move-result v3

    .line 382
    .local v3, "_hidl_out_ret":I
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 383
    invoke-virtual {p3, v3}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 384
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 385
    nop

    .line 504
    .end local v0  # "imageName":Ljava/lang/String;
    .end local v1  # "callback":Lvendor/synaptics/fingerprint/interfaces/extensions/V1_0/IFpCollectionClientCallback;
    .end local v3  # "_hidl_out_ret":I
    :goto_e9
    return-void

    :sswitch_data_ea
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

    .line 331
    return-void
.end method

.method public queryLocalInterface(Ljava/lang/String;)Landroid/os/IHwInterface;
    .registers 3
    .param p1, "descriptor"  # Ljava/lang/String;

    .line 356
    const-string v0, "vendor.synaptics.fingerprint.interfaces.extensions@1.0::IFpCollection"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 357
    return-object p0

    .line 359
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

    .line 363
    invoke-virtual {p0, p1}, Lvendor/synaptics/fingerprint/interfaces/extensions/V1_0/IFpCollection$Stub;->registerService(Ljava/lang/String;)V

    .line 364
    return-void
.end method

.method public final setHALInstrumentation()V
    .registers 1

    .line 322
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 368
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lvendor/synaptics/fingerprint/interfaces/extensions/V1_0/IFpCollection$Stub;->interfaceDescriptor()Ljava/lang/String;

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

    .line 350
    const/4 v0, 0x1

    return v0
.end method
