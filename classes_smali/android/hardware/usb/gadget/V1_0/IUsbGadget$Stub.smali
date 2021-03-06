.class public abstract Landroid/hardware/usb/gadget/V1_0/IUsbGadget$Stub;
.super Landroid/os/HwBinder;
.source "IUsbGadget.java"

# interfaces
.implements Landroid/hardware/usb/gadget/V1_0/IUsbGadget;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/usb/gadget/V1_0/IUsbGadget;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 365
    invoke-direct {p0}, Landroid/os/HwBinder;-><init>()V

    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IHwBinder;
    .registers 1

    .line 368
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

    .line 381
    .local p2, "options":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    return-void
.end method

.method public final getDebugInfo()Landroid/hidl/base/V1_0/DebugInfo;
    .registers 4

    .line 418
    new-instance v0, Landroid/hidl/base/V1_0/DebugInfo;

    invoke-direct {v0}, Landroid/hidl/base/V1_0/DebugInfo;-><init>()V

    .line 419
    .local v0, "info":Landroid/hidl/base/V1_0/DebugInfo;
    invoke-static {}, Landroid/os/HidlSupport;->getPidIfSharable()I

    move-result v1

    iput v1, v0, Landroid/hidl/base/V1_0/DebugInfo;->pid:I

    .line 420
    const-wide/16 v1, 0x0

    iput-wide v1, v0, Landroid/hidl/base/V1_0/DebugInfo;->ptr:J

    .line 421
    const/4 v1, 0x0

    iput v1, v0, Landroid/hidl/base/V1_0/DebugInfo;->arch:I

    .line 422
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

    .line 393
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
        -0x73t
        -0x21t
        -0x59t
        0x54t
        0x27t
        0x72t
        -0x34t
        0x7bt
        -0x36t
        0x19t
        -0x69t
        0x2bt
        0x2dt
        -0x7bt
        0x62t
        0x64t
        -0x11t
        -0x5dt
        0x19t
        0x14t
        -0x41t
        -0x30t
        -0x68t
        -0x52t
        -0x49t
        -0x3et
        0x7t
        -0x63t
        -0x6bt
        0x1t
        -0x6ct
        -0x35t
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

    .line 373
    new-instance v0, Ljava/util/ArrayList;

    const-string v1, "android.hardware.usb.gadget@1.0::IUsbGadget"

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

    .line 387
    const-string v0, "android.hardware.usb.gadget@1.0::IUsbGadget"

    return-object v0
.end method

.method public final linkToDeath(Landroid/os/IHwBinder$DeathRecipient;J)Z
    .registers 5
    .param p1, "recipient"  # Landroid/os/IHwBinder$DeathRecipient;
    .param p2, "cookie"  # J

    .line 406
    const/4 v0, 0x1

    return v0
.end method

.method public final notifySyspropsChanged()V
    .registers 1

    .line 428
    invoke-static {}, Landroid/os/HwBinder;->enableInstrumentation()V

    .line 430
    return-void
.end method

.method public onTransact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V
    .registers 21
    .param p1, "_hidl_code"  # I
    .param p2, "_hidl_request"  # Landroid/os/HwParcel;
    .param p3, "_hidl_reply"  # Landroid/os/HwParcel;
    .param p4, "_hidl_flags"  # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 458
    move-object/from16 v6, p0

    move/from16 v7, p1

    move-object/from16 v8, p2

    move-object/from16 v9, p3

    const-string v0, "android.hardware.usb.gadget@1.0::IUsbGadget"

    const/high16 v1, -0x80000000

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eq v7, v3, :cond_192

    const/4 v4, 0x2

    if-eq v7, v4, :cond_175

    const-string v0, "android.hidl.base@1.0::IBase"

    sparse-switch v7, :sswitch_data_1be

    goto/16 :goto_1bd

    .line 646
    :sswitch_1a
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_1f

    move v2, v3

    :cond_1f
    move v0, v2

    .line 647
    .local v0, "_hidl_is_oneway":Z
    if-eqz v0, :cond_1bd

    .line 648
    invoke-virtual {v9, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 649
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 650
    goto/16 :goto_1bd

    .line 633
    .end local v0  # "_hidl_is_oneway":Z
    :sswitch_2a
    and-int/lit8 v4, p4, 0x1

    if-eqz v4, :cond_2f

    move v2, v3

    .line 634
    .local v2, "_hidl_is_oneway":Z
    :cond_2f
    if-eq v2, v3, :cond_39

    .line 635
    invoke-virtual {v9, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 636
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 637
    goto/16 :goto_1bd

    .line 638
    :cond_39
    invoke-virtual {v8, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 640
    invoke-virtual/range {p0 .. p0}, Landroid/hardware/usb/gadget/V1_0/IUsbGadget$Stub;->notifySyspropsChanged()V

    .line 641
    goto/16 :goto_1bd

    .line 617
    .end local v2  # "_hidl_is_oneway":Z
    :sswitch_41
    and-int/lit8 v4, p4, 0x1

    if-eqz v4, :cond_46

    goto :goto_47

    :cond_46
    move v3, v2

    .line 618
    .local v3, "_hidl_is_oneway":Z
    :goto_47
    if-eqz v3, :cond_51

    .line 619
    invoke-virtual {v9, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 620
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 621
    goto/16 :goto_1bd

    .line 622
    :cond_51
    invoke-virtual {v8, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 624
    invoke-virtual/range {p0 .. p0}, Landroid/hardware/usb/gadget/V1_0/IUsbGadget$Stub;->getDebugInfo()Landroid/hidl/base/V1_0/DebugInfo;

    move-result-object v0

    .line 625
    .local v0, "_hidl_out_info":Landroid/hidl/base/V1_0/DebugInfo;
    invoke-virtual {v9, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 626
    invoke-virtual {v0, v9}, Landroid/hidl/base/V1_0/DebugInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 627
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 628
    goto/16 :goto_1bd

    .line 602
    .end local v0  # "_hidl_out_info":Landroid/hidl/base/V1_0/DebugInfo;
    .end local v3  # "_hidl_is_oneway":Z
    :sswitch_63
    and-int/lit8 v4, p4, 0x1

    if-eqz v4, :cond_68

    goto :goto_69

    :cond_68
    move v3, v2

    .line 603
    .restart local v3  # "_hidl_is_oneway":Z
    :goto_69
    if-eqz v3, :cond_73

    .line 604
    invoke-virtual {v9, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 605
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 606
    goto/16 :goto_1bd

    .line 607
    :cond_73
    invoke-virtual {v8, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 609
    invoke-virtual/range {p0 .. p0}, Landroid/hardware/usb/gadget/V1_0/IUsbGadget$Stub;->ping()V

    .line 610
    invoke-virtual {v9, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 611
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 612
    goto/16 :goto_1bd

    .line 592
    .end local v3  # "_hidl_is_oneway":Z
    :sswitch_81
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_86

    move v2, v3

    :cond_86
    move v0, v2

    .line 593
    .local v0, "_hidl_is_oneway":Z
    if-eqz v0, :cond_1bd

    .line 594
    invoke-virtual {v9, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 595
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 596
    goto/16 :goto_1bd

    .line 579
    .end local v0  # "_hidl_is_oneway":Z
    :sswitch_91
    and-int/lit8 v4, p4, 0x1

    if-eqz v4, :cond_96

    move v2, v3

    .line 580
    .restart local v2  # "_hidl_is_oneway":Z
    :cond_96
    if-eq v2, v3, :cond_a0

    .line 581
    invoke-virtual {v9, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 582
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 583
    goto/16 :goto_1bd

    .line 584
    :cond_a0
    invoke-virtual {v8, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 586
    invoke-virtual/range {p0 .. p0}, Landroid/hardware/usb/gadget/V1_0/IUsbGadget$Stub;->setHALInstrumentation()V

    .line 587
    goto/16 :goto_1bd

    .line 540
    .end local v2  # "_hidl_is_oneway":Z
    :sswitch_a8
    and-int/lit8 v4, p4, 0x1

    if-eqz v4, :cond_ad

    goto :goto_ae

    :cond_ad
    move v3, v2

    .line 541
    .restart local v3  # "_hidl_is_oneway":Z
    :goto_ae
    if-eqz v3, :cond_b8

    .line 542
    invoke-virtual {v9, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 543
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 544
    goto/16 :goto_1bd

    .line 545
    :cond_b8
    invoke-virtual {v8, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 547
    invoke-virtual/range {p0 .. p0}, Landroid/hardware/usb/gadget/V1_0/IUsbGadget$Stub;->getHashChain()Ljava/util/ArrayList;

    move-result-object v0

    .line 548
    .local v0, "_hidl_out_hashchain":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    invoke-virtual {v9, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 550
    new-instance v1, Landroid/os/HwBlob;

    const/16 v4, 0x10

    invoke-direct {v1, v4}, Landroid/os/HwBlob;-><init>(I)V

    .line 552
    .local v1, "_hidl_blob":Landroid/os/HwBlob;
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 553
    .local v4, "_hidl_vec_size":I
    const-wide/16 v10, 0x8

    invoke-virtual {v1, v10, v11, v4}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 554
    const-wide/16 v10, 0xc

    invoke-virtual {v1, v10, v11, v2}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 555
    new-instance v2, Landroid/os/HwBlob;

    mul-int/lit8 v5, v4, 0x20

    invoke-direct {v2, v5}, Landroid/os/HwBlob;-><init>(I)V

    .line 556
    .local v2, "childBlob":Landroid/os/HwBlob;
    const/4 v5, 0x0

    .local v5, "_hidl_index_0":I
    :goto_df
    if-ge v5, v4, :cond_100

    .line 558
    mul-int/lit8 v10, v5, 0x20

    int-to-long v10, v10

    .line 559
    .local v10, "_hidl_array_offset_1":J
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, [B

    .line 561
    .local v12, "_hidl_array_item_1":[B
    if-eqz v12, :cond_f8

    array-length v13, v12

    const/16 v14, 0x20

    if-ne v13, v14, :cond_f8

    .line 565
    invoke-virtual {v2, v10, v11, v12}, Landroid/os/HwBlob;->putInt8Array(J[B)V

    .line 566
    nop

    .line 556
    .end local v10  # "_hidl_array_offset_1":J
    .end local v12  # "_hidl_array_item_1":[B
    add-int/lit8 v5, v5, 0x1

    goto :goto_df

    .line 562
    .restart local v10  # "_hidl_array_offset_1":J
    .restart local v12  # "_hidl_array_item_1":[B
    :cond_f8
    new-instance v13, Ljava/lang/IllegalArgumentException;

    const-string v14, "Array element is not of the expected length"

    invoke-direct {v13, v14}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v13

    .line 569
    .end local v5  # "_hidl_index_0":I
    .end local v10  # "_hidl_array_offset_1":J
    .end local v12  # "_hidl_array_item_1":[B
    :cond_100
    const-wide/16 v10, 0x0

    invoke-virtual {v1, v10, v11, v2}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    .line 571
    .end local v2  # "childBlob":Landroid/os/HwBlob;
    .end local v4  # "_hidl_vec_size":I
    invoke-virtual {v9, v1}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    .line 573
    .end local v1  # "_hidl_blob":Landroid/os/HwBlob;
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 574
    goto/16 :goto_1bd

    .line 524
    .end local v0  # "_hidl_out_hashchain":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    .end local v3  # "_hidl_is_oneway":Z
    :sswitch_10d
    and-int/lit8 v4, p4, 0x1

    if-eqz v4, :cond_112

    goto :goto_113

    :cond_112
    move v3, v2

    .line 525
    .restart local v3  # "_hidl_is_oneway":Z
    :goto_113
    if-eqz v3, :cond_11d

    .line 526
    invoke-virtual {v9, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 527
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 528
    goto/16 :goto_1bd

    .line 529
    :cond_11d
    invoke-virtual {v8, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 531
    invoke-virtual/range {p0 .. p0}, Landroid/hardware/usb/gadget/V1_0/IUsbGadget$Stub;->interfaceDescriptor()Ljava/lang/String;

    move-result-object v0

    .line 532
    .local v0, "_hidl_out_descriptor":Ljava/lang/String;
    invoke-virtual {v9, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 533
    invoke-virtual {v9, v0}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 534
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 535
    goto/16 :goto_1bd

    .line 507
    .end local v0  # "_hidl_out_descriptor":Ljava/lang/String;
    .end local v3  # "_hidl_is_oneway":Z
    :sswitch_12f
    and-int/lit8 v4, p4, 0x1

    if-eqz v4, :cond_134

    goto :goto_135

    :cond_134
    move v3, v2

    .line 508
    .restart local v3  # "_hidl_is_oneway":Z
    :goto_135
    if-eqz v3, :cond_13f

    .line 509
    invoke-virtual {v9, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 510
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 511
    goto/16 :goto_1bd

    .line 512
    :cond_13f
    invoke-virtual {v8, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 514
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readNativeHandle()Landroid/os/NativeHandle;

    move-result-object v0

    .line 515
    .local v0, "fd":Landroid/os/NativeHandle;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readStringVector()Ljava/util/ArrayList;

    move-result-object v1

    .line 516
    .local v1, "options":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v6, v0, v1}, Landroid/hardware/usb/gadget/V1_0/IUsbGadget$Stub;->debug(Landroid/os/NativeHandle;Ljava/util/ArrayList;)V

    .line 517
    invoke-virtual {v9, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 518
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 519
    goto/16 :goto_1bd

    .line 491
    .end local v0  # "fd":Landroid/os/NativeHandle;
    .end local v1  # "options":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v3  # "_hidl_is_oneway":Z
    :sswitch_155
    and-int/lit8 v4, p4, 0x1

    if-eqz v4, :cond_15a

    goto :goto_15b

    :cond_15a
    move v3, v2

    .line 492
    .restart local v3  # "_hidl_is_oneway":Z
    :goto_15b
    if-eqz v3, :cond_164

    .line 493
    invoke-virtual {v9, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 494
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 495
    goto :goto_1bd

    .line 496
    :cond_164
    invoke-virtual {v8, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 498
    invoke-virtual/range {p0 .. p0}, Landroid/hardware/usb/gadget/V1_0/IUsbGadget$Stub;->interfaceChain()Ljava/util/ArrayList;

    move-result-object v0

    .line 499
    .local v0, "_hidl_out_descriptors":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v9, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 500
    invoke-virtual {v9, v0}, Landroid/os/HwParcel;->writeStringVector(Ljava/util/ArrayList;)V

    .line 501
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 502
    goto :goto_1bd

    .line 477
    .end local v0  # "_hidl_out_descriptors":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v3  # "_hidl_is_oneway":Z
    :cond_175
    and-int/lit8 v4, p4, 0x1

    if-eqz v4, :cond_17a

    move v2, v3

    .line 478
    .local v2, "_hidl_is_oneway":Z
    :cond_17a
    if-eq v2, v3, :cond_183

    .line 479
    invoke-virtual {v9, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 480
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 481
    goto :goto_1bd

    .line 482
    :cond_183
    invoke-virtual {v8, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 484
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readStrongBinder()Landroid/os/IHwBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/hardware/usb/gadget/V1_0/IUsbGadgetCallback;->asInterface(Landroid/os/IHwBinder;)Landroid/hardware/usb/gadget/V1_0/IUsbGadgetCallback;

    move-result-object v0

    .line 485
    .local v0, "callback":Landroid/hardware/usb/gadget/V1_0/IUsbGadgetCallback;
    invoke-virtual {v6, v0}, Landroid/hardware/usb/gadget/V1_0/IUsbGadget$Stub;->getCurrentUsbFunctions(Landroid/hardware/usb/gadget/V1_0/IUsbGadgetCallback;)V

    .line 486
    goto :goto_1bd

    .line 461
    .end local v0  # "callback":Landroid/hardware/usb/gadget/V1_0/IUsbGadgetCallback;
    .end local v2  # "_hidl_is_oneway":Z
    :cond_192
    and-int/lit8 v4, p4, 0x1

    if-eqz v4, :cond_197

    move v2, v3

    :cond_197
    move v10, v2

    .line 462
    .local v10, "_hidl_is_oneway":Z
    if-eq v10, v3, :cond_1a1

    .line 463
    invoke-virtual {v9, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 464
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 465
    goto :goto_1bd

    .line 466
    :cond_1a1
    invoke-virtual {v8, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 468
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt64()J

    move-result-wide v11

    .line 469
    .local v11, "functions":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readStrongBinder()Landroid/os/IHwBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/hardware/usb/gadget/V1_0/IUsbGadgetCallback;->asInterface(Landroid/os/IHwBinder;)Landroid/hardware/usb/gadget/V1_0/IUsbGadgetCallback;

    move-result-object v13

    .line 470
    .local v13, "callback":Landroid/hardware/usb/gadget/V1_0/IUsbGadgetCallback;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt64()J

    move-result-wide v14

    .line 471
    .local v14, "timeout":J
    move-object/from16 v0, p0

    move-wide v1, v11

    move-object v3, v13

    move-wide v4, v14

    invoke-virtual/range {v0 .. v5}, Landroid/hardware/usb/gadget/V1_0/IUsbGadget$Stub;->setCurrentUsbFunctions(JLandroid/hardware/usb/gadget/V1_0/IUsbGadgetCallback;J)V

    .line 472
    nop

    .line 655
    .end local v10  # "_hidl_is_oneway":Z
    .end local v11  # "functions":J
    .end local v13  # "callback":Landroid/hardware/usb/gadget/V1_0/IUsbGadgetCallback;
    .end local v14  # "timeout":J
    :cond_1bd
    :goto_1bd
    return-void

    :sswitch_data_1be
    .sparse-switch
        0xf43484e -> :sswitch_155
        0xf444247 -> :sswitch_12f
        0xf445343 -> :sswitch_10d
        0xf485348 -> :sswitch_a8
        0xf494e54 -> :sswitch_91
        0xf4c5444 -> :sswitch_81
        0xf504e47 -> :sswitch_63
        0xf524546 -> :sswitch_41
        0xf535953 -> :sswitch_2a
        0xf555444 -> :sswitch_1a
    .end sparse-switch
.end method

.method public final ping()V
    .registers 1

    .line 412
    return-void
.end method

.method public queryLocalInterface(Ljava/lang/String;)Landroid/os/IHwInterface;
    .registers 3
    .param p1, "descriptor"  # Ljava/lang/String;

    .line 440
    const-string v0, "android.hardware.usb.gadget@1.0::IUsbGadget"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 441
    return-object p0

    .line 443
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

    .line 447
    invoke-virtual {p0, p1}, Landroid/hardware/usb/gadget/V1_0/IUsbGadget$Stub;->registerService(Ljava/lang/String;)V

    .line 448
    return-void
.end method

.method public final setHALInstrumentation()V
    .registers 1

    .line 402
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 452
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/hardware/usb/gadget/V1_0/IUsbGadget$Stub;->interfaceDescriptor()Ljava/lang/String;

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

    .line 434
    const/4 v0, 0x1

    return v0
.end method
