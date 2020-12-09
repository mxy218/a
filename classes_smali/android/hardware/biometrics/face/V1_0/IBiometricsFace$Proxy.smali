.class public final Landroid/hardware/biometrics/face/V1_0/IBiometricsFace$Proxy;
.super Ljava/lang/Object;
.source "IBiometricsFace.java"

# interfaces
.implements Landroid/hardware/biometrics/face/V1_0/IBiometricsFace;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/biometrics/face/V1_0/IBiometricsFace;
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

    .line 339
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 340
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/IHwBinder;

    iput-object p1, p0, Landroid/hardware/biometrics/face/V1_0/IBiometricsFace$Proxy;->mRemote:Landroid/os/IHwBinder;

    .line 341
    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IHwBinder;
    .registers 2

    .line 345
    iget-object v0, p0, Landroid/hardware/biometrics/face/V1_0/IBiometricsFace$Proxy;->mRemote:Landroid/os/IHwBinder;

    return-object v0
.end method

.method public authenticate(J)I
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 599
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 600
    const-string v1, "android.hardware.biometrics.face@1.0::IBiometricsFace"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 601
    invoke-virtual {v0, p1, p2}, Landroid/os/HwParcel;->writeInt64(J)V

    .line 603
    new-instance p1, Landroid/os/HwParcel;

    invoke-direct {p1}, Landroid/os/HwParcel;-><init>()V

    .line 605
    :try_start_12
    iget-object p2, p0, Landroid/hardware/biometrics/face/V1_0/IBiometricsFace$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v1, 0xc

    const/4 v2, 0x0

    invoke-interface {p2, v1, v0, p1, v2}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 606
    invoke-virtual {p1}, Landroid/os/HwParcel;->verifySuccess()V

    .line 607
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    .line 609
    invoke-virtual {p1}, Landroid/os/HwParcel;->readInt32()I

    move-result p2
    :try_end_24
    .catchall {:try_start_12 .. :try_end_24} :catchall_29

    .line 610
    nop

    .line 612
    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 610
    return p2

    .line 612
    :catchall_29
    move-exception p2

    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    throw p2
.end method

.method public cancel()I
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 541
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 542
    const-string v1, "android.hardware.biometrics.face@1.0::IBiometricsFace"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 544
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 546
    :try_start_f
    iget-object v2, p0, Landroid/hardware/biometrics/face/V1_0/IBiometricsFace$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x9

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 547
    invoke-virtual {v1}, Landroid/os/HwParcel;->verifySuccess()V

    .line 548
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    .line 550
    invoke-virtual {v1}, Landroid/os/HwParcel;->readInt32()I

    move-result v0
    :try_end_21
    .catchall {:try_start_f .. :try_end_21} :catchall_26

    .line 551
    nop

    .line 553
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 551
    return v0

    .line 553
    :catchall_26
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

    .line 678
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 679
    const-string v1, "android.hidl.base@1.0::IBase"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 680
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeNativeHandle(Landroid/os/NativeHandle;)V

    .line 681
    invoke-virtual {v0, p2}, Landroid/os/HwParcel;->writeStringVector(Ljava/util/ArrayList;)V

    .line 683
    new-instance p1, Landroid/os/HwParcel;

    invoke-direct {p1}, Landroid/os/HwParcel;-><init>()V

    .line 685
    :try_start_15
    iget-object p2, p0, Landroid/hardware/biometrics/face/V1_0/IBiometricsFace$Proxy;->mRemote:Landroid/os/IHwBinder;

    const v1, 0xf444247

    const/4 v2, 0x0

    invoke-interface {p2, v1, v0, p1, v2}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 686
    invoke-virtual {p1}, Landroid/os/HwParcel;->verifySuccess()V

    .line 687
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_24
    .catchall {:try_start_15 .. :try_end_24} :catchall_29

    .line 689
    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 690
    nop

    .line 691
    return-void

    .line 689
    :catchall_29
    move-exception p2

    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    throw p2
.end method

.method public enroll(Ljava/util/ArrayList;ILjava/util/ArrayList;)I
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Byte;",
            ">;I",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;)I"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 435
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 436
    const-string v1, "android.hardware.biometrics.face@1.0::IBiometricsFace"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 437
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt8Vector(Ljava/util/ArrayList;)V

    .line 438
    invoke-virtual {v0, p2}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 439
    invoke-virtual {v0, p3}, Landroid/os/HwParcel;->writeInt32Vector(Ljava/util/ArrayList;)V

    .line 441
    new-instance p1, Landroid/os/HwParcel;

    invoke-direct {p1}, Landroid/os/HwParcel;-><init>()V

    .line 443
    :try_start_18
    iget-object p2, p0, Landroid/hardware/biometrics/face/V1_0/IBiometricsFace$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/4 p3, 0x4

    const/4 v1, 0x0

    invoke-interface {p2, p3, v0, p1, v1}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 444
    invoke-virtual {p1}, Landroid/os/HwParcel;->verifySuccess()V

    .line 445
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    .line 447
    invoke-virtual {p1}, Landroid/os/HwParcel;->readInt32()I

    move-result p2
    :try_end_29
    .catchall {:try_start_18 .. :try_end_29} :catchall_2e

    .line 448
    nop

    .line 450
    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 448
    return p2

    .line 450
    :catchall_2e
    move-exception p2

    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    throw p2
.end method

.method public enumerate()I
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 560
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 561
    const-string v1, "android.hardware.biometrics.face@1.0::IBiometricsFace"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 563
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 565
    :try_start_f
    iget-object v2, p0, Landroid/hardware/biometrics/face/V1_0/IBiometricsFace$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0xa

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 566
    invoke-virtual {v1}, Landroid/os/HwParcel;->verifySuccess()V

    .line 567
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    .line 569
    invoke-virtual {v1}, Landroid/os/HwParcel;->readInt32()I

    move-result v0
    :try_end_21
    .catchall {:try_start_f .. :try_end_21} :catchall_26

    .line 570
    nop

    .line 572
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 570
    return v0

    .line 572
    :catchall_26
    move-exception v0

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    throw v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .registers 2

    .line 360
    invoke-static {p0, p1}, Landroid/os/HidlSupport;->interfacesEqual(Landroid/os/IHwInterface;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public generateChallenge(I)Landroid/hardware/biometrics/face/V1_0/OptionalUint64;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 414
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 415
    const-string v1, "android.hardware.biometrics.face@1.0::IBiometricsFace"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 416
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 418
    new-instance p1, Landroid/os/HwParcel;

    invoke-direct {p1}, Landroid/os/HwParcel;-><init>()V

    .line 420
    :try_start_12
    iget-object v1, p0, Landroid/hardware/biometrics/face/V1_0/IBiometricsFace$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/4 v2, 0x3

    const/4 v3, 0x0

    invoke-interface {v1, v2, v0, p1, v3}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 421
    invoke-virtual {p1}, Landroid/os/HwParcel;->verifySuccess()V

    .line 422
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    .line 424
    new-instance v0, Landroid/hardware/biometrics/face/V1_0/OptionalUint64;

    invoke-direct {v0}, Landroid/hardware/biometrics/face/V1_0/OptionalUint64;-><init>()V

    .line 425
    invoke-virtual {v0, p1}, Landroid/hardware/biometrics/face/V1_0/OptionalUint64;->readFromParcel(Landroid/os/HwParcel;)V
    :try_end_27
    .catchall {:try_start_12 .. :try_end_27} :catchall_2c

    .line 426
    nop

    .line 428
    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 426
    return-object v0

    .line 428
    :catchall_2c
    move-exception v0

    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    throw v0
.end method

.method public getAuthenticatorId()Landroid/hardware/biometrics/face/V1_0/OptionalUint64;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 521
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 522
    const-string v1, "android.hardware.biometrics.face@1.0::IBiometricsFace"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 524
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 526
    :try_start_f
    iget-object v2, p0, Landroid/hardware/biometrics/face/V1_0/IBiometricsFace$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0x8

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 527
    invoke-virtual {v1}, Landroid/os/HwParcel;->verifySuccess()V

    .line 528
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    .line 530
    new-instance v0, Landroid/hardware/biometrics/face/V1_0/OptionalUint64;

    invoke-direct {v0}, Landroid/hardware/biometrics/face/V1_0/OptionalUint64;-><init>()V

    .line 531
    invoke-virtual {v0, v1}, Landroid/hardware/biometrics/face/V1_0/OptionalUint64;->readFromParcel(Landroid/os/HwParcel;)V
    :try_end_25
    .catchall {:try_start_f .. :try_end_25} :catchall_2a

    .line 532
    nop

    .line 534
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 532
    return-object v0

    .line 534
    :catchall_2a
    move-exception v0

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    throw v0
.end method

.method public getDebugInfo()Landroid/hidl/base/V1_0/DebugInfo;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 790
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 791
    const-string v1, "android.hidl.base@1.0::IBase"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 793
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 795
    :try_start_f
    iget-object v2, p0, Landroid/hardware/biometrics/face/V1_0/IBiometricsFace$Proxy;->mRemote:Landroid/os/IHwBinder;

    const v3, 0xf524546

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 796
    invoke-virtual {v1}, Landroid/os/HwParcel;->verifySuccess()V

    .line 797
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    .line 799
    new-instance v0, Landroid/hidl/base/V1_0/DebugInfo;

    invoke-direct {v0}, Landroid/hidl/base/V1_0/DebugInfo;-><init>()V

    .line 800
    invoke-virtual {v0, v1}, Landroid/hidl/base/V1_0/DebugInfo;->readFromParcel(Landroid/os/HwParcel;)V
    :try_end_26
    .catchall {:try_start_f .. :try_end_26} :catchall_2b

    .line 801
    nop

    .line 803
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 801
    return-object v0

    .line 803
    :catchall_2b
    move-exception v0

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    throw v0
.end method

.method public getFeature(II)Landroid/hardware/biometrics/face/V1_0/OptionalBool;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 499
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 500
    const-string v1, "android.hardware.biometrics.face@1.0::IBiometricsFace"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 501
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 502
    invoke-virtual {v0, p2}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 504
    new-instance p1, Landroid/os/HwParcel;

    invoke-direct {p1}, Landroid/os/HwParcel;-><init>()V

    .line 506
    :try_start_15
    iget-object p2, p0, Landroid/hardware/biometrics/face/V1_0/IBiometricsFace$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/4 v1, 0x7

    const/4 v2, 0x0

    invoke-interface {p2, v1, v0, p1, v2}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 507
    invoke-virtual {p1}, Landroid/os/HwParcel;->verifySuccess()V

    .line 508
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    .line 510
    new-instance p2, Landroid/hardware/biometrics/face/V1_0/OptionalBool;

    invoke-direct {p2}, Landroid/hardware/biometrics/face/V1_0/OptionalBool;-><init>()V

    .line 511
    invoke-virtual {p2, p1}, Landroid/hardware/biometrics/face/V1_0/OptionalBool;->readFromParcel(Landroid/os/HwParcel;)V
    :try_end_2a
    .catchall {:try_start_15 .. :try_end_2a} :catchall_2f

    .line 512
    nop

    .line 514
    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 512
    return-object p2

    .line 514
    :catchall_2f
    move-exception p2

    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    throw p2
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

    .line 715
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 716
    const-string v1, "android.hidl.base@1.0::IBase"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 718
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 720
    :try_start_f
    iget-object v2, p0, Landroid/hardware/biometrics/face/V1_0/IBiometricsFace$Proxy;->mRemote:Landroid/os/IHwBinder;

    const v3, 0xf485348

    const/4 v10, 0x0

    invoke-interface {v2, v3, v0, v1, v10}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 721
    invoke-virtual {v1}, Landroid/os/HwParcel;->verifySuccess()V

    .line 722
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    .line 724
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 726
    const-wide/16 v2, 0x10

    invoke-virtual {v1, v2, v3}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    move-result-object v2

    .line 728
    const-wide/16 v3, 0x8

    invoke-virtual {v2, v3, v4}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v11

    .line 729
    mul-int/lit8 v3, v11, 0x20

    int-to-long v3, v3

    .line 730
    invoke-virtual {v2}, Landroid/os/HwBlob;->handle()J

    move-result-wide v5

    const-wide/16 v7, 0x0

    const/4 v9, 0x1

    .line 729
    move-object v2, v1

    invoke-virtual/range {v2 .. v9}, Landroid/os/HwParcel;->readEmbeddedBuffer(JJJZ)Landroid/os/HwBlob;

    move-result-object v2

    .line 733
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 734
    nop

    :goto_42
    if-ge v10, v11, :cond_55

    .line 735
    const/16 v3, 0x20

    new-array v4, v3, [B

    .line 737
    mul-int/lit8 v5, v10, 0x20

    int-to-long v5, v5

    .line 738
    invoke-virtual {v2, v5, v6, v4, v3}, Landroid/os/HwBlob;->copyToInt8Array(J[BI)V

    .line 739
    nop

    .line 741
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_52
    .catchall {:try_start_f .. :try_end_52} :catchall_5a

    .line 734
    add-int/lit8 v10, v10, 0x1

    goto :goto_42

    .line 745
    :cond_55
    nop

    .line 747
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 745
    return-object v0

    .line 747
    :catchall_5a
    move-exception v0

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    throw v0
.end method

.method public final hashCode()I
    .registers 2

    .line 365
    invoke-virtual {p0}, Landroid/hardware/biometrics/face/V1_0/IBiometricsFace$Proxy;->asBinder()Landroid/os/IHwBinder;

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

    .line 659
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 660
    const-string v1, "android.hidl.base@1.0::IBase"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 662
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 664
    :try_start_f
    iget-object v2, p0, Landroid/hardware/biometrics/face/V1_0/IBiometricsFace$Proxy;->mRemote:Landroid/os/IHwBinder;

    const v3, 0xf43484e

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 665
    invoke-virtual {v1}, Landroid/os/HwParcel;->verifySuccess()V

    .line 666
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    .line 668
    invoke-virtual {v1}, Landroid/os/HwParcel;->readStringVector()Ljava/util/ArrayList;

    move-result-object v0
    :try_end_22
    .catchall {:try_start_f .. :try_end_22} :catchall_27

    .line 669
    nop

    .line 671
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 669
    return-object v0

    .line 671
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

    .line 696
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 697
    const-string v1, "android.hidl.base@1.0::IBase"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 699
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 701
    :try_start_f
    iget-object v2, p0, Landroid/hardware/biometrics/face/V1_0/IBiometricsFace$Proxy;->mRemote:Landroid/os/IHwBinder;

    const v3, 0xf445343

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 702
    invoke-virtual {v1}, Landroid/os/HwParcel;->verifySuccess()V

    .line 703
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    .line 705
    invoke-virtual {v1}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v0
    :try_end_22
    .catchall {:try_start_f .. :try_end_22} :catchall_27

    .line 706
    nop

    .line 708
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 706
    return-object v0

    .line 708
    :catchall_27
    move-exception v0

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    throw v0
.end method

.method public linkToDeath(Landroid/os/IHwBinder$DeathRecipient;J)Z
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 769
    iget-object v0, p0, Landroid/hardware/biometrics/face/V1_0/IBiometricsFace$Proxy;->mRemote:Landroid/os/IHwBinder;

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

    .line 810
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 811
    const-string v1, "android.hidl.base@1.0::IBase"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 813
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 815
    :try_start_f
    iget-object v2, p0, Landroid/hardware/biometrics/face/V1_0/IBiometricsFace$Proxy;->mRemote:Landroid/os/IHwBinder;

    const v3, 0xf535953

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 816
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_1b
    .catchall {:try_start_f .. :try_end_1b} :catchall_20

    .line 818
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 819
    nop

    .line 820
    return-void

    .line 818
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

    .line 774
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 775
    const-string v1, "android.hidl.base@1.0::IBase"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 777
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 779
    :try_start_f
    iget-object v2, p0, Landroid/hardware/biometrics/face/V1_0/IBiometricsFace$Proxy;->mRemote:Landroid/os/IHwBinder;

    const v3, 0xf504e47

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 780
    invoke-virtual {v1}, Landroid/os/HwParcel;->verifySuccess()V

    .line 781
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_1e
    .catchall {:try_start_f .. :try_end_1e} :catchall_23

    .line 783
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 784
    nop

    .line 785
    return-void

    .line 783
    :catchall_23
    move-exception v0

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    throw v0
.end method

.method public remove(I)I
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 579
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 580
    const-string v1, "android.hardware.biometrics.face@1.0::IBiometricsFace"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 581
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 583
    new-instance p1, Landroid/os/HwParcel;

    invoke-direct {p1}, Landroid/os/HwParcel;-><init>()V

    .line 585
    :try_start_12
    iget-object v1, p0, Landroid/hardware/biometrics/face/V1_0/IBiometricsFace$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v2, 0xb

    const/4 v3, 0x0

    invoke-interface {v1, v2, v0, p1, v3}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 586
    invoke-virtual {p1}, Landroid/os/HwParcel;->verifySuccess()V

    .line 587
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    .line 589
    invoke-virtual {p1}, Landroid/os/HwParcel;->readInt32()I

    move-result v0
    :try_end_24
    .catchall {:try_start_12 .. :try_end_24} :catchall_29

    .line 590
    nop

    .line 592
    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 590
    return v0

    .line 592
    :catchall_29
    move-exception v0

    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    throw v0
.end method

.method public resetLockout(Ljava/util/ArrayList;)I
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Byte;",
            ">;)I"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 638
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 639
    const-string v1, "android.hardware.biometrics.face@1.0::IBiometricsFace"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 640
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt8Vector(Ljava/util/ArrayList;)V

    .line 642
    new-instance p1, Landroid/os/HwParcel;

    invoke-direct {p1}, Landroid/os/HwParcel;-><init>()V

    .line 644
    :try_start_12
    iget-object v1, p0, Landroid/hardware/biometrics/face/V1_0/IBiometricsFace$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v2, 0xe

    const/4 v3, 0x0

    invoke-interface {v1, v2, v0, p1, v3}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 645
    invoke-virtual {p1}, Landroid/os/HwParcel;->verifySuccess()V

    .line 646
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    .line 648
    invoke-virtual {p1}, Landroid/os/HwParcel;->readInt32()I

    move-result v0
    :try_end_24
    .catchall {:try_start_12 .. :try_end_24} :catchall_29

    .line 649
    nop

    .line 651
    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 649
    return v0

    .line 651
    :catchall_29
    move-exception v0

    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    throw v0
.end method

.method public revokeChallenge()I
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 457
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 458
    const-string v1, "android.hardware.biometrics.face@1.0::IBiometricsFace"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 460
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 462
    :try_start_f
    iget-object v2, p0, Landroid/hardware/biometrics/face/V1_0/IBiometricsFace$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/4 v3, 0x5

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 463
    invoke-virtual {v1}, Landroid/os/HwParcel;->verifySuccess()V

    .line 464
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    .line 466
    invoke-virtual {v1}, Landroid/os/HwParcel;->readInt32()I

    move-result v0
    :try_end_20
    .catchall {:try_start_f .. :try_end_20} :catchall_25

    .line 467
    nop

    .line 469
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 467
    return v0

    .line 469
    :catchall_25
    move-exception v0

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    throw v0
.end method

.method public setActiveUser(ILjava/lang/String;)I
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 393
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 394
    const-string v1, "android.hardware.biometrics.face@1.0::IBiometricsFace"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 395
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 396
    invoke-virtual {v0, p2}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 398
    new-instance p1, Landroid/os/HwParcel;

    invoke-direct {p1}, Landroid/os/HwParcel;-><init>()V

    .line 400
    :try_start_15
    iget-object p2, p0, Landroid/hardware/biometrics/face/V1_0/IBiometricsFace$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-interface {p2, v1, v0, p1, v2}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 401
    invoke-virtual {p1}, Landroid/os/HwParcel;->verifySuccess()V

    .line 402
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    .line 404
    invoke-virtual {p1}, Landroid/os/HwParcel;->readInt32()I

    move-result p2
    :try_end_26
    .catchall {:try_start_15 .. :try_end_26} :catchall_2b

    .line 405
    nop

    .line 407
    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 405
    return p2

    .line 407
    :catchall_2b
    move-exception p2

    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    throw p2
.end method

.method public setCallback(Landroid/hardware/biometrics/face/V1_0/IBiometricsFaceClientCallback;)Landroid/hardware/biometrics/face/V1_0/OptionalUint64;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 372
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 373
    const-string v1, "android.hardware.biometrics.face@1.0::IBiometricsFace"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 374
    if-nez p1, :cond_e

    const/4 p1, 0x0

    goto :goto_12

    :cond_e
    invoke-interface {p1}, Landroid/hardware/biometrics/face/V1_0/IBiometricsFaceClientCallback;->asBinder()Landroid/os/IHwBinder;

    move-result-object p1

    :goto_12
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeStrongBinder(Landroid/os/IHwBinder;)V

    .line 376
    new-instance p1, Landroid/os/HwParcel;

    invoke-direct {p1}, Landroid/os/HwParcel;-><init>()V

    .line 378
    :try_start_1a
    iget-object v1, p0, Landroid/hardware/biometrics/face/V1_0/IBiometricsFace$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-interface {v1, v2, v0, p1, v3}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 379
    invoke-virtual {p1}, Landroid/os/HwParcel;->verifySuccess()V

    .line 380
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    .line 382
    new-instance v0, Landroid/hardware/biometrics/face/V1_0/OptionalUint64;

    invoke-direct {v0}, Landroid/hardware/biometrics/face/V1_0/OptionalUint64;-><init>()V

    .line 383
    invoke-virtual {v0, p1}, Landroid/hardware/biometrics/face/V1_0/OptionalUint64;->readFromParcel(Landroid/os/HwParcel;)V
    :try_end_2f
    .catchall {:try_start_1a .. :try_end_2f} :catchall_34

    .line 384
    nop

    .line 386
    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 384
    return-object v0

    .line 386
    :catchall_34
    move-exception v0

    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    throw v0
.end method

.method public setFeature(IZLjava/util/ArrayList;I)I
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IZ",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Byte;",
            ">;I)I"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 476
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 477
    const-string v1, "android.hardware.biometrics.face@1.0::IBiometricsFace"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 478
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 479
    invoke-virtual {v0, p2}, Landroid/os/HwParcel;->writeBool(Z)V

    .line 480
    invoke-virtual {v0, p3}, Landroid/os/HwParcel;->writeInt8Vector(Ljava/util/ArrayList;)V

    .line 481
    invoke-virtual {v0, p4}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 483
    new-instance p1, Landroid/os/HwParcel;

    invoke-direct {p1}, Landroid/os/HwParcel;-><init>()V

    .line 485
    :try_start_1b
    iget-object p2, p0, Landroid/hardware/biometrics/face/V1_0/IBiometricsFace$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/4 p3, 0x6

    const/4 p4, 0x0

    invoke-interface {p2, p3, v0, p1, p4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 486
    invoke-virtual {p1}, Landroid/os/HwParcel;->verifySuccess()V

    .line 487
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    .line 489
    invoke-virtual {p1}, Landroid/os/HwParcel;->readInt32()I

    move-result p2
    :try_end_2c
    .catchall {:try_start_1b .. :try_end_2c} :catchall_31

    .line 490
    nop

    .line 492
    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 490
    return p2

    .line 492
    :catchall_31
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

    .line 754
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 755
    const-string v1, "android.hidl.base@1.0::IBase"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 757
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 759
    :try_start_f
    iget-object v2, p0, Landroid/hardware/biometrics/face/V1_0/IBiometricsFace$Proxy;->mRemote:Landroid/os/IHwBinder;

    const v3, 0xf494e54

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 760
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_1b
    .catchall {:try_start_f .. :try_end_1b} :catchall_20

    .line 762
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 763
    nop

    .line 764
    return-void

    .line 762
    :catchall_20
    move-exception v0

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    throw v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 351
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/hardware/biometrics/face/V1_0/IBiometricsFace$Proxy;->interfaceDescriptor()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "@Proxy"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_15} :catch_16

    return-object v0

    .line 352
    :catch_16
    move-exception v0

    .line 355
    const-string v0, "[class or subclass of android.hardware.biometrics.face@1.0::IBiometricsFace]@Proxy"

    return-object v0
.end method

.method public unlinkToDeath(Landroid/os/IHwBinder$DeathRecipient;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 825
    iget-object v0, p0, Landroid/hardware/biometrics/face/V1_0/IBiometricsFace$Proxy;->mRemote:Landroid/os/IHwBinder;

    invoke-interface {v0, p1}, Landroid/os/IHwBinder;->unlinkToDeath(Landroid/os/IHwBinder$DeathRecipient;)Z

    move-result p1

    return p1
.end method

.method public userActivity()I
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 619
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 620
    const-string v1, "android.hardware.biometrics.face@1.0::IBiometricsFace"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 622
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 624
    :try_start_f
    iget-object v2, p0, Landroid/hardware/biometrics/face/V1_0/IBiometricsFace$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/16 v3, 0xd

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 625
    invoke-virtual {v1}, Landroid/os/HwParcel;->verifySuccess()V

    .line 626
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    .line 628
    invoke-virtual {v1}, Landroid/os/HwParcel;->readInt32()I

    move-result v0
    :try_end_21
    .catchall {:try_start_f .. :try_end_21} :catchall_26

    .line 629
    nop

    .line 631
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 629
    return v0

    .line 631
    :catchall_26
    move-exception v0

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    throw v0
.end method
