.class public abstract Landroid/hardware/tetheroffload/control/V1_0/ITetheringOffloadCallback$Stub;
.super Landroid/os/HwBinder;
.source "ITetheringOffloadCallback.java"

# interfaces
.implements Landroid/hardware/tetheroffload/control/V1_0/ITetheringOffloadCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/tetheroffload/control/V1_0/ITetheringOffloadCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 359
    invoke-direct {p0}, Landroid/os/HwBinder;-><init>()V

    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IHwBinder;
    .registers 1

    .line 362
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

    .line 375
    .local p2, "options":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    return-void
.end method

.method public final getDebugInfo()Landroid/hidl/base/V1_0/DebugInfo;
    .registers 4

    .line 412
    new-instance v0, Landroid/hidl/base/V1_0/DebugInfo;

    invoke-direct {v0}, Landroid/hidl/base/V1_0/DebugInfo;-><init>()V

    .line 413
    .local v0, "info":Landroid/hidl/base/V1_0/DebugInfo;
    invoke-static {}, Landroid/os/HidlSupport;->getPidIfSharable()I

    move-result v1

    iput v1, v0, Landroid/hidl/base/V1_0/DebugInfo;->pid:I

    .line 414
    const-wide/16 v1, 0x0

    iput-wide v1, v0, Landroid/hidl/base/V1_0/DebugInfo;->ptr:J

    .line 415
    const/4 v1, 0x0

    iput v1, v0, Landroid/hidl/base/V1_0/DebugInfo;->arch:I

    .line 416
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

    .line 387
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
        0x7t
        0x65t
        -0x78t
        0x29t
        0x33t
        -0x63t
        0x75t
        -0x6at
        0x20t
        0x16t
        -0x20t
        0xet
        -0x28t
        0x1bt
        0x0t
        0x5at
        -0x2et
        -0x61t
        -0x36t
        0x7at
        -0x3ft
        0x2at
        -0x2dt
        -0x44t
        0x3ct
        -0x33t
        -0x7at
        -0x50t
        -0x73t
        -0x6ct
        -0x3et
        -0x2dt
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

    .line 367
    new-instance v0, Ljava/util/ArrayList;

    const-string v1, "android.hardware.tetheroffload.control@1.0::ITetheringOffloadCallback"

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

    .line 381
    const-string v0, "android.hardware.tetheroffload.control@1.0::ITetheringOffloadCallback"

    return-object v0
.end method

.method public final linkToDeath(Landroid/os/IHwBinder$DeathRecipient;J)Z
    .registers 5
    .param p1, "recipient"  # Landroid/os/IHwBinder$DeathRecipient;
    .param p2, "cookie"  # J

    .line 400
    const/4 v0, 0x1

    return v0
.end method

.method public final notifySyspropsChanged()V
    .registers 1

    .line 422
    invoke-static {}, Landroid/os/HwBinder;->enableInstrumentation()V

    .line 424
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

    .line 452
    const-string v0, "android.hardware.tetheroffload.control@1.0::ITetheringOffloadCallback"

    const/high16 v1, -0x80000000

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eq p1, v3, :cond_189

    const/4 v4, 0x2

    if-eq p1, v4, :cond_16c

    const-string v0, "android.hidl.base@1.0::IBase"

    sparse-switch p1, :sswitch_data_1a4

    goto/16 :goto_1a2

    .line 639
    :sswitch_12
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_17

    move v2, v3

    :cond_17
    move v0, v2

    .line 640
    .local v0, "_hidl_is_oneway":Z
    if-eqz v0, :cond_1a2

    .line 641
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 642
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 643
    goto/16 :goto_1a2

    .line 626
    .end local v0  # "_hidl_is_oneway":Z
    :sswitch_22
    and-int/lit8 v4, p4, 0x1

    if-eqz v4, :cond_27

    move v2, v3

    .line 627
    .local v2, "_hidl_is_oneway":Z
    :cond_27
    if-eq v2, v3, :cond_31

    .line 628
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 629
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 630
    goto/16 :goto_1a2

    .line 631
    :cond_31
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 633
    invoke-virtual {p0}, Landroid/hardware/tetheroffload/control/V1_0/ITetheringOffloadCallback$Stub;->notifySyspropsChanged()V

    .line 634
    goto/16 :goto_1a2

    .line 610
    .end local v2  # "_hidl_is_oneway":Z
    :sswitch_39
    and-int/lit8 v4, p4, 0x1

    if-eqz v4, :cond_3e

    goto :goto_3f

    :cond_3e
    move v3, v2

    .line 611
    .local v3, "_hidl_is_oneway":Z
    :goto_3f
    if-eqz v3, :cond_49

    .line 612
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 613
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 614
    goto/16 :goto_1a2

    .line 615
    :cond_49
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 617
    invoke-virtual {p0}, Landroid/hardware/tetheroffload/control/V1_0/ITetheringOffloadCallback$Stub;->getDebugInfo()Landroid/hidl/base/V1_0/DebugInfo;

    move-result-object v0

    .line 618
    .local v0, "_hidl_out_info":Landroid/hidl/base/V1_0/DebugInfo;
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 619
    invoke-virtual {v0, p3}, Landroid/hidl/base/V1_0/DebugInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 620
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 621
    goto/16 :goto_1a2

    .line 595
    .end local v0  # "_hidl_out_info":Landroid/hidl/base/V1_0/DebugInfo;
    .end local v3  # "_hidl_is_oneway":Z
    :sswitch_5b
    and-int/lit8 v4, p4, 0x1

    if-eqz v4, :cond_60

    goto :goto_61

    :cond_60
    move v3, v2

    .line 596
    .restart local v3  # "_hidl_is_oneway":Z
    :goto_61
    if-eqz v3, :cond_6b

    .line 597
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 598
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 599
    goto/16 :goto_1a2

    .line 600
    :cond_6b
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 602
    invoke-virtual {p0}, Landroid/hardware/tetheroffload/control/V1_0/ITetheringOffloadCallback$Stub;->ping()V

    .line 603
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 604
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 605
    goto/16 :goto_1a2

    .line 585
    .end local v3  # "_hidl_is_oneway":Z
    :sswitch_79
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_7e

    move v2, v3

    :cond_7e
    move v0, v2

    .line 586
    .local v0, "_hidl_is_oneway":Z
    if-eqz v0, :cond_1a2

    .line 587
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 588
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 589
    goto/16 :goto_1a2

    .line 572
    .end local v0  # "_hidl_is_oneway":Z
    :sswitch_89
    and-int/lit8 v4, p4, 0x1

    if-eqz v4, :cond_8e

    move v2, v3

    .line 573
    .restart local v2  # "_hidl_is_oneway":Z
    :cond_8e
    if-eq v2, v3, :cond_98

    .line 574
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 575
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 576
    goto/16 :goto_1a2

    .line 577
    :cond_98
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 579
    invoke-virtual {p0}, Landroid/hardware/tetheroffload/control/V1_0/ITetheringOffloadCallback$Stub;->setHALInstrumentation()V

    .line 580
    goto/16 :goto_1a2

    .line 533
    .end local v2  # "_hidl_is_oneway":Z
    :sswitch_a0
    and-int/lit8 v4, p4, 0x1

    if-eqz v4, :cond_a5

    goto :goto_a6

    :cond_a5
    move v3, v2

    .line 534
    .restart local v3  # "_hidl_is_oneway":Z
    :goto_a6
    if-eqz v3, :cond_b0

    .line 535
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 536
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 537
    goto/16 :goto_1a2

    .line 538
    :cond_b0
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 540
    invoke-virtual {p0}, Landroid/hardware/tetheroffload/control/V1_0/ITetheringOffloadCallback$Stub;->getHashChain()Ljava/util/ArrayList;

    move-result-object v0

    .line 541
    .local v0, "_hidl_out_hashchain":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 543
    new-instance v1, Landroid/os/HwBlob;

    const/16 v4, 0x10

    invoke-direct {v1, v4}, Landroid/os/HwBlob;-><init>(I)V

    .line 545
    .local v1, "_hidl_blob":Landroid/os/HwBlob;
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 546
    .local v4, "_hidl_vec_size":I
    const-wide/16 v5, 0x8

    invoke-virtual {v1, v5, v6, v4}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 547
    const-wide/16 v5, 0xc

    invoke-virtual {v1, v5, v6, v2}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 548
    new-instance v2, Landroid/os/HwBlob;

    mul-int/lit8 v5, v4, 0x20

    invoke-direct {v2, v5}, Landroid/os/HwBlob;-><init>(I)V

    .line 549
    .local v2, "childBlob":Landroid/os/HwBlob;
    const/4 v5, 0x0

    .local v5, "_hidl_index_0":I
    :goto_d7
    if-ge v5, v4, :cond_f8

    .line 551
    mul-int/lit8 v6, v5, 0x20

    int-to-long v6, v6

    .line 552
    .local v6, "_hidl_array_offset_1":J
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [B

    .line 554
    .local v8, "_hidl_array_item_1":[B
    if-eqz v8, :cond_f0

    array-length v9, v8

    const/16 v10, 0x20

    if-ne v9, v10, :cond_f0

    .line 558
    invoke-virtual {v2, v6, v7, v8}, Landroid/os/HwBlob;->putInt8Array(J[B)V

    .line 559
    nop

    .line 549
    .end local v6  # "_hidl_array_offset_1":J
    .end local v8  # "_hidl_array_item_1":[B
    add-int/lit8 v5, v5, 0x1

    goto :goto_d7

    .line 555
    .restart local v6  # "_hidl_array_offset_1":J
    .restart local v8  # "_hidl_array_item_1":[B
    :cond_f0
    new-instance v9, Ljava/lang/IllegalArgumentException;

    const-string v10, "Array element is not of the expected length"

    invoke-direct {v9, v10}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 562
    .end local v5  # "_hidl_index_0":I
    .end local v6  # "_hidl_array_offset_1":J
    .end local v8  # "_hidl_array_item_1":[B
    :cond_f8
    const-wide/16 v5, 0x0

    invoke-virtual {v1, v5, v6, v2}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    .line 564
    .end local v2  # "childBlob":Landroid/os/HwBlob;
    .end local v4  # "_hidl_vec_size":I
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    .line 566
    .end local v1  # "_hidl_blob":Landroid/os/HwBlob;
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 567
    goto/16 :goto_1a2

    .line 517
    .end local v0  # "_hidl_out_hashchain":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    .end local v3  # "_hidl_is_oneway":Z
    :sswitch_105
    and-int/lit8 v4, p4, 0x1

    if-eqz v4, :cond_10a

    goto :goto_10b

    :cond_10a
    move v3, v2

    .line 518
    .restart local v3  # "_hidl_is_oneway":Z
    :goto_10b
    if-eqz v3, :cond_115

    .line 519
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 520
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 521
    goto/16 :goto_1a2

    .line 522
    :cond_115
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 524
    invoke-virtual {p0}, Landroid/hardware/tetheroffload/control/V1_0/ITetheringOffloadCallback$Stub;->interfaceDescriptor()Ljava/lang/String;

    move-result-object v0

    .line 525
    .local v0, "_hidl_out_descriptor":Ljava/lang/String;
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 526
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 527
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 528
    goto/16 :goto_1a2

    .line 500
    .end local v0  # "_hidl_out_descriptor":Ljava/lang/String;
    .end local v3  # "_hidl_is_oneway":Z
    :sswitch_127
    and-int/lit8 v4, p4, 0x1

    if-eqz v4, :cond_12c

    goto :goto_12d

    :cond_12c
    move v3, v2

    .line 501
    .restart local v3  # "_hidl_is_oneway":Z
    :goto_12d
    if-eqz v3, :cond_137

    .line 502
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 503
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 504
    goto/16 :goto_1a2

    .line 505
    :cond_137
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 507
    invoke-virtual {p2}, Landroid/os/HwParcel;->readNativeHandle()Landroid/os/NativeHandle;

    move-result-object v0

    .line 508
    .local v0, "fd":Landroid/os/NativeHandle;
    invoke-virtual {p2}, Landroid/os/HwParcel;->readStringVector()Ljava/util/ArrayList;

    move-result-object v1

    .line 509
    .local v1, "options":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {p0, v0, v1}, Landroid/hardware/tetheroffload/control/V1_0/ITetheringOffloadCallback$Stub;->debug(Landroid/os/NativeHandle;Ljava/util/ArrayList;)V

    .line 510
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 511
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 512
    goto :goto_1a2

    .line 484
    .end local v0  # "fd":Landroid/os/NativeHandle;
    .end local v1  # "options":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v3  # "_hidl_is_oneway":Z
    :sswitch_14c
    and-int/lit8 v4, p4, 0x1

    if-eqz v4, :cond_151

    goto :goto_152

    :cond_151
    move v3, v2

    .line 485
    .restart local v3  # "_hidl_is_oneway":Z
    :goto_152
    if-eqz v3, :cond_15b

    .line 486
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 487
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 488
    goto :goto_1a2

    .line 489
    :cond_15b
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 491
    invoke-virtual {p0}, Landroid/hardware/tetheroffload/control/V1_0/ITetheringOffloadCallback$Stub;->interfaceChain()Ljava/util/ArrayList;

    move-result-object v0

    .line 492
    .local v0, "_hidl_out_descriptors":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 493
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStringVector(Ljava/util/ArrayList;)V

    .line 494
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 495
    goto :goto_1a2

    .line 469
    .end local v0  # "_hidl_out_descriptors":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v3  # "_hidl_is_oneway":Z
    :cond_16c
    and-int/lit8 v4, p4, 0x1

    if-eqz v4, :cond_171

    move v2, v3

    .line 470
    .local v2, "_hidl_is_oneway":Z
    :cond_171
    if-eq v2, v3, :cond_17a

    .line 471
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 472
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 473
    goto :goto_1a2

    .line 474
    :cond_17a
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 476
    new-instance v0, Landroid/hardware/tetheroffload/control/V1_0/NatTimeoutUpdate;

    invoke-direct {v0}, Landroid/hardware/tetheroffload/control/V1_0/NatTimeoutUpdate;-><init>()V

    .line 477
    .local v0, "params":Landroid/hardware/tetheroffload/control/V1_0/NatTimeoutUpdate;
    invoke-virtual {v0, p2}, Landroid/hardware/tetheroffload/control/V1_0/NatTimeoutUpdate;->readFromParcel(Landroid/os/HwParcel;)V

    .line 478
    invoke-virtual {p0, v0}, Landroid/hardware/tetheroffload/control/V1_0/ITetheringOffloadCallback$Stub;->updateTimeout(Landroid/hardware/tetheroffload/control/V1_0/NatTimeoutUpdate;)V

    .line 479
    goto :goto_1a2

    .line 455
    .end local v0  # "params":Landroid/hardware/tetheroffload/control/V1_0/NatTimeoutUpdate;
    .end local v2  # "_hidl_is_oneway":Z
    :cond_189
    and-int/lit8 v4, p4, 0x1

    if-eqz v4, :cond_18e

    move v2, v3

    .line 456
    .restart local v2  # "_hidl_is_oneway":Z
    :cond_18e
    if-eq v2, v3, :cond_197

    .line 457
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 458
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 459
    goto :goto_1a2

    .line 460
    :cond_197
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 462
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 463
    .local v0, "event":I
    invoke-virtual {p0, v0}, Landroid/hardware/tetheroffload/control/V1_0/ITetheringOffloadCallback$Stub;->onEvent(I)V

    .line 464
    nop

    .line 648
    .end local v0  # "event":I
    .end local v2  # "_hidl_is_oneway":Z
    :cond_1a2
    :goto_1a2
    return-void

    nop

    :sswitch_data_1a4
    .sparse-switch
        0xf43484e -> :sswitch_14c
        0xf444247 -> :sswitch_127
        0xf445343 -> :sswitch_105
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

    .line 406
    return-void
.end method

.method public queryLocalInterface(Ljava/lang/String;)Landroid/os/IHwInterface;
    .registers 3
    .param p1, "descriptor"  # Ljava/lang/String;

    .line 434
    const-string v0, "android.hardware.tetheroffload.control@1.0::ITetheringOffloadCallback"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 435
    return-object p0

    .line 437
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

    .line 441
    invoke-virtual {p0, p1}, Landroid/hardware/tetheroffload/control/V1_0/ITetheringOffloadCallback$Stub;->registerService(Ljava/lang/String;)V

    .line 442
    return-void
.end method

.method public final setHALInstrumentation()V
    .registers 1

    .line 396
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 446
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/hardware/tetheroffload/control/V1_0/ITetheringOffloadCallback$Stub;->interfaceDescriptor()Ljava/lang/String;

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

    .line 428
    const/4 v0, 0x1

    return v0
.end method
