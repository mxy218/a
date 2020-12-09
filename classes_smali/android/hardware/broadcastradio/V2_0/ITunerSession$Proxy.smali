.class public final Landroid/hardware/broadcastradio/V2_0/ITunerSession$Proxy;
.super Ljava/lang/Object;
.source "ITunerSession.java"

# interfaces
.implements Landroid/hardware/broadcastradio/V2_0/ITunerSession;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/broadcastradio/V2_0/ITunerSession;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Proxy"
.end annotation


# instance fields
.field private mRemote:Landroid/os/IHwBinder;


# direct methods
.method public constructor <init>(Landroid/os/IHwBinder;)V
    .registers 2

    .line 287
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 288
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/IHwBinder;

    iput-object p1, p0, Landroid/hardware/broadcastradio/V2_0/ITunerSession$Proxy;->mRemote:Landroid/os/IHwBinder;

    .line 289
    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IHwBinder;
    .registers 2

    .line 293
    iget-object v0, p0, Landroid/hardware/broadcastradio/V2_0/ITunerSession$Proxy;->mRemote:Landroid/os/IHwBinder;

    return-object v0
.end method

.method public cancel()V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 381
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 382
    const-string v1, "android.hardware.broadcastradio@2.0::ITunerSession"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 384
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 386
    :try_start_f
    iget-object v2, p0, Landroid/hardware/broadcastradio/V2_0/ITunerSession$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/4 v3, 0x4

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 387
    invoke-virtual {v1}, Landroid/os/HwParcel;->verifySuccess()V

    .line 388
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_1c
    .catchall {:try_start_f .. :try_end_1c} :catchall_21

    .line 390
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 391
    nop

    .line 392
    return-void

    .line 390
    :catchall_21
    move-exception v0

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    throw v0
.end method

.method public close()V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 515
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 516
    const-string v1, "android.hardware.broadcastradio@2.0::ITunerSession"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 518
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 520
    :try_start_f
    iget-object v2, p0, Landroid/hardware/broadcastradio/V2_0/ITunerSession$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0xb

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 521
    invoke-virtual {v1}, Landroid/os/HwParcel;->verifySuccess()V

    .line 522
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_1d
    .catchall {:try_start_f .. :try_end_1d} :catchall_22

    .line 524
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 525
    nop

    .line 526
    return-void

    .line 524
    :catchall_22
    move-exception v0

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    throw v0
.end method

.method public debug(Landroid/os/NativeHandle;Ljava/util/ArrayList;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/NativeHandle;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 551
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 552
    const-string v1, "android.hidl.base@1.0::IBase"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 553
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeNativeHandle(Landroid/os/NativeHandle;)V

    .line 554
    invoke-virtual {v0, p2}, Landroid/os/HwParcel;->writeStringVector(Ljava/util/ArrayList;)V

    .line 556
    new-instance p1, Landroid/os/HwParcel;

    invoke-direct {p1}, Landroid/os/HwParcel;-><init>()V

    .line 558
    :try_start_15
    iget-object p2, p0, Landroid/hardware/broadcastradio/V2_0/ITunerSession$Proxy;->mRemote:Landroid/os/IHwBinder;

    const v1, 0xf444247

    const/4 v2, 0x0

    invoke-interface {p2, v1, v0, p1, v2}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 559
    invoke-virtual {p1}, Landroid/os/HwParcel;->verifySuccess()V

    .line 560
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_24
    .catchall {:try_start_15 .. :try_end_24} :catchall_29

    .line 562
    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 563
    nop

    .line 564
    return-void

    .line 562
    :catchall_29
    move-exception p2

    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    throw p2
.end method

.method public final equals(Ljava/lang/Object;)Z
    .registers 2

    .line 308
    invoke-static {p0, p1}, Landroid/os/HidlSupport;->interfacesEqual(Landroid/os/IHwInterface;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public getDebugInfo()Landroid/hidl/base/V1_0/DebugInfo;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 663
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 664
    const-string v1, "android.hidl.base@1.0::IBase"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 666
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 668
    :try_start_f
    iget-object v2, p0, Landroid/hardware/broadcastradio/V2_0/ITunerSession$Proxy;->mRemote:Landroid/os/IHwBinder;

    const v3, 0xf524546

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 669
    invoke-virtual {v1}, Landroid/os/HwParcel;->verifySuccess()V

    .line 670
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    .line 672
    new-instance v0, Landroid/hidl/base/V1_0/DebugInfo;

    invoke-direct {v0}, Landroid/hidl/base/V1_0/DebugInfo;-><init>()V

    .line 673
    invoke-virtual {v0, v1}, Landroid/hidl/base/V1_0/DebugInfo;->readFromParcel(Landroid/os/HwParcel;)V
    :try_end_26
    .catchall {:try_start_f .. :try_end_26} :catchall_2b

    .line 674
    nop

    .line 676
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 674
    return-object v0

    .line 676
    :catchall_2b
    move-exception v0

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    throw v0
.end method

.method public getHashChain()Ljava/util/ArrayList;
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "[B>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 588
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 589
    const-string v1, "android.hidl.base@1.0::IBase"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 591
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 593
    :try_start_f
    iget-object v2, p0, Landroid/hardware/broadcastradio/V2_0/ITunerSession$Proxy;->mRemote:Landroid/os/IHwBinder;

    const v3, 0xf485348

    const/4 v10, 0x0

    invoke-interface {v2, v3, v0, v1, v10}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 594
    invoke-virtual {v1}, Landroid/os/HwParcel;->verifySuccess()V

    .line 595
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    .line 597
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 599
    const-wide/16 v2, 0x10

    invoke-virtual {v1, v2, v3}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    move-result-object v2

    .line 601
    const-wide/16 v3, 0x8

    invoke-virtual {v2, v3, v4}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v11

    .line 602
    mul-int/lit8 v3, v11, 0x20

    int-to-long v3, v3

    .line 603
    invoke-virtual {v2}, Landroid/os/HwBlob;->handle()J

    move-result-wide v5

    const-wide/16 v7, 0x0

    const/4 v9, 0x1

    .line 602
    move-object v2, v1

    invoke-virtual/range {v2 .. v9}, Landroid/os/HwParcel;->readEmbeddedBuffer(JJJZ)Landroid/os/HwBlob;

    move-result-object v2

    .line 606
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 607
    nop

    :goto_42
    if-ge v10, v11, :cond_55

    .line 608
    const/16 v3, 0x20

    new-array v4, v3, [B

    .line 610
    mul-int/lit8 v5, v10, 0x20

    int-to-long v5, v5

    .line 611
    invoke-virtual {v2, v5, v6, v4, v3}, Landroid/os/HwBlob;->copyToInt8Array(J[BI)V

    .line 612
    nop

    .line 614
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_52
    .catchall {:try_start_f .. :try_end_52} :catchall_5a

    .line 607
    add-int/lit8 v10, v10, 0x1

    goto :goto_42

    .line 618
    :cond_55
    nop

    .line 620
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 618
    return-object v0

    .line 620
    :catchall_5a
    move-exception v0

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    throw v0
.end method

.method public getParameters(Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/ArrayList<",
            "Landroid/hardware/broadcastradio/V2_0/VendorKeyValue;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 495
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 496
    const-string v1, "android.hardware.broadcastradio@2.0::ITunerSession"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 497
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeStringVector(Ljava/util/ArrayList;)V

    .line 499
    new-instance p1, Landroid/os/HwParcel;

    invoke-direct {p1}, Landroid/os/HwParcel;-><init>()V

    .line 501
    :try_start_12
    iget-object v1, p0, Landroid/hardware/broadcastradio/V2_0/ITunerSession$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v2, 0xa

    const/4 v3, 0x0

    invoke-interface {v1, v2, v0, p1, v3}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 502
    invoke-virtual {p1}, Landroid/os/HwParcel;->verifySuccess()V

    .line 503
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    .line 505
    invoke-static {p1}, Landroid/hardware/broadcastradio/V2_0/VendorKeyValue;->readVectorFromParcel(Landroid/os/HwParcel;)Ljava/util/ArrayList;

    move-result-object v0
    :try_end_24
    .catchall {:try_start_12 .. :try_end_24} :catchall_29

    .line 506
    nop

    .line 508
    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 506
    return-object v0

    .line 508
    :catchall_29
    move-exception v0

    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    throw v0
.end method

.method public final hashCode()I
    .registers 2

    .line 313
    invoke-virtual {p0}, Landroid/hardware/broadcastradio/V2_0/ITunerSession$Proxy;->asBinder()Landroid/os/IHwBinder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public interfaceChain()Ljava/util/ArrayList;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 532
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 533
    const-string v1, "android.hidl.base@1.0::IBase"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 535
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 537
    :try_start_f
    iget-object v2, p0, Landroid/hardware/broadcastradio/V2_0/ITunerSession$Proxy;->mRemote:Landroid/os/IHwBinder;

    const v3, 0xf43484e

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 538
    invoke-virtual {v1}, Landroid/os/HwParcel;->verifySuccess()V

    .line 539
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    .line 541
    invoke-virtual {v1}, Landroid/os/HwParcel;->readStringVector()Ljava/util/ArrayList;

    move-result-object v0
    :try_end_22
    .catchall {:try_start_f .. :try_end_22} :catchall_27

    .line 542
    nop

    .line 544
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 542
    return-object v0

    .line 544
    :catchall_27
    move-exception v0

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    throw v0
.end method

.method public interfaceDescriptor()Ljava/lang/String;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 569
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 570
    const-string v1, "android.hidl.base@1.0::IBase"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 572
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 574
    :try_start_f
    iget-object v2, p0, Landroid/hardware/broadcastradio/V2_0/ITunerSession$Proxy;->mRemote:Landroid/os/IHwBinder;

    const v3, 0xf445343

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 575
    invoke-virtual {v1}, Landroid/os/HwParcel;->verifySuccess()V

    .line 576
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    .line 578
    invoke-virtual {v1}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v0
    :try_end_22
    .catchall {:try_start_f .. :try_end_22} :catchall_27

    .line 579
    nop

    .line 581
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 579
    return-object v0

    .line 581
    :catchall_27
    move-exception v0

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    throw v0
.end method

.method public isConfigFlagSet(ILandroid/hardware/broadcastradio/V2_0/ITunerSession$isConfigFlagSetCallback;)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 433
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 434
    const-string v1, "android.hardware.broadcastradio@2.0::ITunerSession"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 435
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 437
    new-instance p1, Landroid/os/HwParcel;

    invoke-direct {p1}, Landroid/os/HwParcel;-><init>()V

    .line 439
    :try_start_12
    iget-object v1, p0, Landroid/hardware/broadcastradio/V2_0/ITunerSession$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/4 v2, 0x7

    const/4 v3, 0x0

    invoke-interface {v1, v2, v0, p1, v3}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 440
    invoke-virtual {p1}, Landroid/os/HwParcel;->verifySuccess()V

    .line 441
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    .line 443
    invoke-virtual {p1}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 444
    invoke-virtual {p1}, Landroid/os/HwParcel;->readBool()Z

    move-result v1

    .line 445
    invoke-interface {p2, v0, v1}, Landroid/hardware/broadcastradio/V2_0/ITunerSession$isConfigFlagSetCallback;->onValues(IZ)V
    :try_end_2a
    .catchall {:try_start_12 .. :try_end_2a} :catchall_2f

    .line 447
    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 448
    nop

    .line 449
    return-void

    .line 447
    :catchall_2f
    move-exception p2

    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    throw p2
.end method

.method public linkToDeath(Landroid/os/IHwBinder$DeathRecipient;J)Z
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 642
    iget-object v0, p0, Landroid/hardware/broadcastradio/V2_0/ITunerSession$Proxy;->mRemote:Landroid/os/IHwBinder;

    invoke-interface {v0, p1, p2, p3}, Landroid/os/IHwBinder;->linkToDeath(Landroid/os/IHwBinder$DeathRecipient;J)Z

    move-result p1

    return p1
.end method

.method public notifySyspropsChanged()V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 683
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 684
    const-string v1, "android.hidl.base@1.0::IBase"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 686
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 688
    :try_start_f
    iget-object v2, p0, Landroid/hardware/broadcastradio/V2_0/ITunerSession$Proxy;->mRemote:Landroid/os/IHwBinder;

    const v3, 0xf535953

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 689
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_1b
    .catchall {:try_start_f .. :try_end_1b} :catchall_20

    .line 691
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 692
    nop

    .line 693
    return-void

    .line 691
    :catchall_20
    move-exception v0

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    throw v0
.end method

.method public ping()V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 647
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 648
    const-string v1, "android.hidl.base@1.0::IBase"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 650
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 652
    :try_start_f
    iget-object v2, p0, Landroid/hardware/broadcastradio/V2_0/ITunerSession$Proxy;->mRemote:Landroid/os/IHwBinder;

    const v3, 0xf504e47

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 653
    invoke-virtual {v1}, Landroid/os/HwParcel;->verifySuccess()V

    .line 654
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_1e
    .catchall {:try_start_f .. :try_end_1e} :catchall_23

    .line 656
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 657
    nop

    .line 658
    return-void

    .line 656
    :catchall_23
    move-exception v0

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    throw v0
.end method

.method public scan(ZZ)I
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 340
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 341
    const-string v1, "android.hardware.broadcastradio@2.0::ITunerSession"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 342
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeBool(Z)V

    .line 343
    invoke-virtual {v0, p2}, Landroid/os/HwParcel;->writeBool(Z)V

    .line 345
    new-instance p1, Landroid/os/HwParcel;

    invoke-direct {p1}, Landroid/os/HwParcel;-><init>()V

    .line 347
    :try_start_15
    iget-object p2, p0, Landroid/hardware/broadcastradio/V2_0/ITunerSession$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-interface {p2, v1, v0, p1, v2}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 348
    invoke-virtual {p1}, Landroid/os/HwParcel;->verifySuccess()V

    .line 349
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    .line 351
    invoke-virtual {p1}, Landroid/os/HwParcel;->readInt32()I

    move-result p2
    :try_end_26
    .catchall {:try_start_15 .. :try_end_26} :catchall_2b

    .line 352
    nop

    .line 354
    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 352
    return p2

    .line 354
    :catchall_2b
    move-exception p2

    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    throw p2
.end method

.method public setConfigFlag(IZ)I
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 454
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 455
    const-string v1, "android.hardware.broadcastradio@2.0::ITunerSession"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 456
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 457
    invoke-virtual {v0, p2}, Landroid/os/HwParcel;->writeBool(Z)V

    .line 459
    new-instance p1, Landroid/os/HwParcel;

    invoke-direct {p1}, Landroid/os/HwParcel;-><init>()V

    .line 461
    :try_start_15
    iget-object p2, p0, Landroid/hardware/broadcastradio/V2_0/ITunerSession$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v1, 0x8

    const/4 v2, 0x0

    invoke-interface {p2, v1, v0, p1, v2}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 462
    invoke-virtual {p1}, Landroid/os/HwParcel;->verifySuccess()V

    .line 463
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    .line 465
    invoke-virtual {p1}, Landroid/os/HwParcel;->readInt32()I

    move-result p2
    :try_end_27
    .catchall {:try_start_15 .. :try_end_27} :catchall_2c

    .line 466
    nop

    .line 468
    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 466
    return p2

    .line 468
    :catchall_2c
    move-exception p2

    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    throw p2
.end method

.method public setHALInstrumentation()V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 627
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 628
    const-string v1, "android.hidl.base@1.0::IBase"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 630
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 632
    :try_start_f
    iget-object v2, p0, Landroid/hardware/broadcastradio/V2_0/ITunerSession$Proxy;->mRemote:Landroid/os/IHwBinder;

    const v3, 0xf494e54

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 633
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_1b
    .catchall {:try_start_f .. :try_end_1b} :catchall_20

    .line 635
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 636
    nop

    .line 637
    return-void

    .line 635
    :catchall_20
    move-exception v0

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    throw v0
.end method

.method public setParameters(Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/hardware/broadcastradio/V2_0/VendorKeyValue;",
            ">;)",
            "Ljava/util/ArrayList<",
            "Landroid/hardware/broadcastradio/V2_0/VendorKeyValue;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 475
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 476
    const-string v1, "android.hardware.broadcastradio@2.0::ITunerSession"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 477
    invoke-static {v0, p1}, Landroid/hardware/broadcastradio/V2_0/VendorKeyValue;->writeVectorToParcel(Landroid/os/HwParcel;Ljava/util/ArrayList;)V

    .line 479
    new-instance p1, Landroid/os/HwParcel;

    invoke-direct {p1}, Landroid/os/HwParcel;-><init>()V

    .line 481
    :try_start_12
    iget-object v1, p0, Landroid/hardware/broadcastradio/V2_0/ITunerSession$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v2, 0x9

    const/4 v3, 0x0

    invoke-interface {v1, v2, v0, p1, v3}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 482
    invoke-virtual {p1}, Landroid/os/HwParcel;->verifySuccess()V

    .line 483
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    .line 485
    invoke-static {p1}, Landroid/hardware/broadcastradio/V2_0/VendorKeyValue;->readVectorFromParcel(Landroid/os/HwParcel;)Ljava/util/ArrayList;

    move-result-object v0
    :try_end_24
    .catchall {:try_start_12 .. :try_end_24} :catchall_29

    .line 486
    nop

    .line 488
    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 486
    return-object v0

    .line 488
    :catchall_29
    move-exception v0

    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    throw v0
.end method

.method public startProgramListUpdates(Landroid/hardware/broadcastradio/V2_0/ProgramFilter;)I
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 397
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 398
    const-string v1, "android.hardware.broadcastradio@2.0::ITunerSession"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 399
    invoke-virtual {p1, v0}, Landroid/hardware/broadcastradio/V2_0/ProgramFilter;->writeToParcel(Landroid/os/HwParcel;)V

    .line 401
    new-instance p1, Landroid/os/HwParcel;

    invoke-direct {p1}, Landroid/os/HwParcel;-><init>()V

    .line 403
    :try_start_12
    iget-object v1, p0, Landroid/hardware/broadcastradio/V2_0/ITunerSession$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/4 v2, 0x5

    const/4 v3, 0x0

    invoke-interface {v1, v2, v0, p1, v3}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 404
    invoke-virtual {p1}, Landroid/os/HwParcel;->verifySuccess()V

    .line 405
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    .line 407
    invoke-virtual {p1}, Landroid/os/HwParcel;->readInt32()I

    move-result v0
    :try_end_23
    .catchall {:try_start_12 .. :try_end_23} :catchall_28

    .line 408
    nop

    .line 410
    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 408
    return v0

    .line 410
    :catchall_28
    move-exception v0

    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    throw v0
.end method

.method public step(Z)I
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 361
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 362
    const-string v1, "android.hardware.broadcastradio@2.0::ITunerSession"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 363
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeBool(Z)V

    .line 365
    new-instance p1, Landroid/os/HwParcel;

    invoke-direct {p1}, Landroid/os/HwParcel;-><init>()V

    .line 367
    :try_start_12
    iget-object v1, p0, Landroid/hardware/broadcastradio/V2_0/ITunerSession$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/4 v2, 0x3

    const/4 v3, 0x0

    invoke-interface {v1, v2, v0, p1, v3}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 368
    invoke-virtual {p1}, Landroid/os/HwParcel;->verifySuccess()V

    .line 369
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    .line 371
    invoke-virtual {p1}, Landroid/os/HwParcel;->readInt32()I

    move-result v0
    :try_end_23
    .catchall {:try_start_12 .. :try_end_23} :catchall_28

    .line 372
    nop

    .line 374
    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 372
    return v0

    .line 374
    :catchall_28
    move-exception v0

    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    throw v0
.end method

.method public stopProgramListUpdates()V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 417
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 418
    const-string v1, "android.hardware.broadcastradio@2.0::ITunerSession"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 420
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 422
    :try_start_f
    iget-object v2, p0, Landroid/hardware/broadcastradio/V2_0/ITunerSession$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/4 v3, 0x6

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 423
    invoke-virtual {v1}, Landroid/os/HwParcel;->verifySuccess()V

    .line 424
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_1c
    .catchall {:try_start_f .. :try_end_1c} :catchall_21

    .line 426
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 427
    nop

    .line 428
    return-void

    .line 426
    :catchall_21
    move-exception v0

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    throw v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 299
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/hardware/broadcastradio/V2_0/ITunerSession$Proxy;->interfaceDescriptor()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "@Proxy"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_15} :catch_16

    return-object v0

    .line 300
    :catch_16
    move-exception v0

    .line 303
    const-string v0, "[class or subclass of android.hardware.broadcastradio@2.0::ITunerSession]@Proxy"

    return-object v0
.end method

.method public tune(Landroid/hardware/broadcastradio/V2_0/ProgramSelector;)I
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 320
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 321
    const-string v1, "android.hardware.broadcastradio@2.0::ITunerSession"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 322
    invoke-virtual {p1, v0}, Landroid/hardware/broadcastradio/V2_0/ProgramSelector;->writeToParcel(Landroid/os/HwParcel;)V

    .line 324
    new-instance p1, Landroid/os/HwParcel;

    invoke-direct {p1}, Landroid/os/HwParcel;-><init>()V

    .line 326
    :try_start_12
    iget-object v1, p0, Landroid/hardware/broadcastradio/V2_0/ITunerSession$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-interface {v1, v2, v0, p1, v3}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 327
    invoke-virtual {p1}, Landroid/os/HwParcel;->verifySuccess()V

    .line 328
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    .line 330
    invoke-virtual {p1}, Landroid/os/HwParcel;->readInt32()I

    move-result v0
    :try_end_23
    .catchall {:try_start_12 .. :try_end_23} :catchall_28

    .line 331
    nop

    .line 333
    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 331
    return v0

    .line 333
    :catchall_28
    move-exception v0

    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    throw v0
.end method

.method public unlinkToDeath(Landroid/os/IHwBinder$DeathRecipient;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 698
    iget-object v0, p0, Landroid/hardware/broadcastradio/V2_0/ITunerSession$Proxy;->mRemote:Landroid/os/IHwBinder;

    invoke-interface {v0, p1}, Landroid/os/IHwBinder;->unlinkToDeath(Landroid/os/IHwBinder$DeathRecipient;)Z

    move-result p1

    return p1
.end method
