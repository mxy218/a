.class public final Landroid/hardware/vibrator/V1_0/IVibrator$Proxy;
.super Ljava/lang/Object;
.source "IVibrator.java"

# interfaces
.implements Landroid/hardware/vibrator/V1_0/IVibrator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/vibrator/V1_0/IVibrator;
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

    .line 163
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 164
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/IHwBinder;

    iput-object p1, p0, Landroid/hardware/vibrator/V1_0/IVibrator$Proxy;->mRemote:Landroid/os/IHwBinder;

    .line 165
    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IHwBinder;
    .registers 2

    .line 169
    iget-object v0, p0, Landroid/hardware/vibrator/V1_0/IVibrator$Proxy;->mRemote:Landroid/os/IHwBinder;

    return-object v0
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

    .line 316
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 317
    const-string v1, "android.hidl.base@1.0::IBase"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 318
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeNativeHandle(Landroid/os/NativeHandle;)V

    .line 319
    invoke-virtual {v0, p2}, Landroid/os/HwParcel;->writeStringVector(Ljava/util/ArrayList;)V

    .line 321
    new-instance p1, Landroid/os/HwParcel;

    invoke-direct {p1}, Landroid/os/HwParcel;-><init>()V

    .line 323
    :try_start_15
    iget-object p2, p0, Landroid/hardware/vibrator/V1_0/IVibrator$Proxy;->mRemote:Landroid/os/IHwBinder;

    const v1, 0xf444247

    const/4 v2, 0x0

    invoke-interface {p2, v1, v0, p1, v2}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 324
    invoke-virtual {p1}, Landroid/os/HwParcel;->verifySuccess()V

    .line 325
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_24
    .catchall {:try_start_15 .. :try_end_24} :catchall_29

    .line 327
    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 328
    nop

    .line 329
    return-void

    .line 327
    :catchall_29
    move-exception p2

    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    throw p2
.end method

.method public final equals(Ljava/lang/Object;)Z
    .registers 2

    .line 184
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

    .line 428
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 429
    const-string v1, "android.hidl.base@1.0::IBase"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 431
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 433
    :try_start_f
    iget-object v2, p0, Landroid/hardware/vibrator/V1_0/IVibrator$Proxy;->mRemote:Landroid/os/IHwBinder;

    const v3, 0xf524546

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 434
    invoke-virtual {v1}, Landroid/os/HwParcel;->verifySuccess()V

    .line 435
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    .line 437
    new-instance v0, Landroid/hidl/base/V1_0/DebugInfo;

    invoke-direct {v0}, Landroid/hidl/base/V1_0/DebugInfo;-><init>()V

    .line 438
    invoke-virtual {v0, v1}, Landroid/hidl/base/V1_0/DebugInfo;->readFromParcel(Landroid/os/HwParcel;)V
    :try_end_26
    .catchall {:try_start_f .. :try_end_26} :catchall_2b

    .line 439
    nop

    .line 441
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 439
    return-object v0

    .line 441
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

    .line 353
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 354
    const-string v1, "android.hidl.base@1.0::IBase"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 356
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 358
    :try_start_f
    iget-object v2, p0, Landroid/hardware/vibrator/V1_0/IVibrator$Proxy;->mRemote:Landroid/os/IHwBinder;

    const v3, 0xf485348

    const/4 v10, 0x0

    invoke-interface {v2, v3, v0, v1, v10}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 359
    invoke-virtual {v1}, Landroid/os/HwParcel;->verifySuccess()V

    .line 360
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    .line 362
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 364
    const-wide/16 v2, 0x10

    invoke-virtual {v1, v2, v3}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    move-result-object v2

    .line 366
    const-wide/16 v3, 0x8

    invoke-virtual {v2, v3, v4}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v11

    .line 367
    mul-int/lit8 v3, v11, 0x20

    int-to-long v3, v3

    .line 368
    invoke-virtual {v2}, Landroid/os/HwBlob;->handle()J

    move-result-wide v5

    const-wide/16 v7, 0x0

    const/4 v9, 0x1

    .line 367
    move-object v2, v1

    invoke-virtual/range {v2 .. v9}, Landroid/os/HwParcel;->readEmbeddedBuffer(JJJZ)Landroid/os/HwBlob;

    move-result-object v2

    .line 371
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 372
    nop

    :goto_42
    if-ge v10, v11, :cond_55

    .line 373
    const/16 v3, 0x20

    new-array v4, v3, [B

    .line 375
    mul-int/lit8 v5, v10, 0x20

    int-to-long v5, v5

    .line 376
    invoke-virtual {v2, v5, v6, v4, v3}, Landroid/os/HwBlob;->copyToInt8Array(J[BI)V

    .line 377
    nop

    .line 379
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_52
    .catchall {:try_start_f .. :try_end_52} :catchall_5a

    .line 372
    add-int/lit8 v10, v10, 0x1

    goto :goto_42

    .line 383
    :cond_55
    nop

    .line 385
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 383
    return-object v0

    .line 385
    :catchall_5a
    move-exception v0

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    throw v0
.end method

.method public final hashCode()I
    .registers 2

    .line 189
    invoke-virtual {p0}, Landroid/hardware/vibrator/V1_0/IVibrator$Proxy;->asBinder()Landroid/os/IHwBinder;

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

    .line 297
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 298
    const-string v1, "android.hidl.base@1.0::IBase"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 300
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 302
    :try_start_f
    iget-object v2, p0, Landroid/hardware/vibrator/V1_0/IVibrator$Proxy;->mRemote:Landroid/os/IHwBinder;

    const v3, 0xf43484e

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 303
    invoke-virtual {v1}, Landroid/os/HwParcel;->verifySuccess()V

    .line 304
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    .line 306
    invoke-virtual {v1}, Landroid/os/HwParcel;->readStringVector()Ljava/util/ArrayList;

    move-result-object v0
    :try_end_22
    .catchall {:try_start_f .. :try_end_22} :catchall_27

    .line 307
    nop

    .line 309
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 307
    return-object v0

    .line 309
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

    .line 334
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 335
    const-string v1, "android.hidl.base@1.0::IBase"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 337
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 339
    :try_start_f
    iget-object v2, p0, Landroid/hardware/vibrator/V1_0/IVibrator$Proxy;->mRemote:Landroid/os/IHwBinder;

    const v3, 0xf445343

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 340
    invoke-virtual {v1}, Landroid/os/HwParcel;->verifySuccess()V

    .line 341
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    .line 343
    invoke-virtual {v1}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v0
    :try_end_22
    .catchall {:try_start_f .. :try_end_22} :catchall_27

    .line 344
    nop

    .line 346
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 344
    return-object v0

    .line 346
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

    .line 407
    iget-object v0, p0, Landroid/hardware/vibrator/V1_0/IVibrator$Proxy;->mRemote:Landroid/os/IHwBinder;

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

    .line 448
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 449
    const-string v1, "android.hidl.base@1.0::IBase"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 451
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 453
    :try_start_f
    iget-object v2, p0, Landroid/hardware/vibrator/V1_0/IVibrator$Proxy;->mRemote:Landroid/os/IHwBinder;

    const v3, 0xf535953

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 454
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_1b
    .catchall {:try_start_f .. :try_end_1b} :catchall_20

    .line 456
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 457
    nop

    .line 458
    return-void

    .line 456
    :catchall_20
    move-exception v0

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    throw v0
.end method

.method public off()I
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 216
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 217
    const-string v1, "android.hardware.vibrator@1.0::IVibrator"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 219
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 221
    :try_start_f
    iget-object v2, p0, Landroid/hardware/vibrator/V1_0/IVibrator$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/4 v3, 0x2

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 222
    invoke-virtual {v1}, Landroid/os/HwParcel;->verifySuccess()V

    .line 223
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    .line 225
    invoke-virtual {v1}, Landroid/os/HwParcel;->readInt32()I

    move-result v0
    :try_end_20
    .catchall {:try_start_f .. :try_end_20} :catchall_25

    .line 226
    nop

    .line 228
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 226
    return v0

    .line 228
    :catchall_25
    move-exception v0

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    throw v0
.end method

.method public on(I)I
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 196
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 197
    const-string v1, "android.hardware.vibrator@1.0::IVibrator"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 198
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 200
    new-instance p1, Landroid/os/HwParcel;

    invoke-direct {p1}, Landroid/os/HwParcel;-><init>()V

    .line 202
    :try_start_12
    iget-object v1, p0, Landroid/hardware/vibrator/V1_0/IVibrator$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-interface {v1, v2, v0, p1, v3}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 203
    invoke-virtual {p1}, Landroid/os/HwParcel;->verifySuccess()V

    .line 204
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    .line 206
    invoke-virtual {p1}, Landroid/os/HwParcel;->readInt32()I

    move-result v0
    :try_end_23
    .catchall {:try_start_12 .. :try_end_23} :catchall_28

    .line 207
    nop

    .line 209
    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 207
    return v0

    .line 209
    :catchall_28
    move-exception v0

    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    throw v0
.end method

.method public perform(IBLandroid/hardware/vibrator/V1_0/IVibrator$performCallback;)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 274
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 275
    const-string v1, "android.hardware.vibrator@1.0::IVibrator"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 276
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 277
    invoke-virtual {v0, p2}, Landroid/os/HwParcel;->writeInt8(B)V

    .line 279
    new-instance p1, Landroid/os/HwParcel;

    invoke-direct {p1}, Landroid/os/HwParcel;-><init>()V

    .line 281
    :try_start_15
    iget-object p2, p0, Landroid/hardware/vibrator/V1_0/IVibrator$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/4 v1, 0x5

    const/4 v2, 0x0

    invoke-interface {p2, v1, v0, p1, v2}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 282
    invoke-virtual {p1}, Landroid/os/HwParcel;->verifySuccess()V

    .line 283
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    .line 285
    invoke-virtual {p1}, Landroid/os/HwParcel;->readInt32()I

    move-result p2

    .line 286
    invoke-virtual {p1}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 287
    invoke-interface {p3, p2, v0}, Landroid/hardware/vibrator/V1_0/IVibrator$performCallback;->onValues(II)V
    :try_end_2d
    .catchall {:try_start_15 .. :try_end_2d} :catchall_32

    .line 289
    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 290
    nop

    .line 291
    return-void

    .line 289
    :catchall_32
    move-exception p2

    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    throw p2
.end method

.method public ping()V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 412
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 413
    const-string v1, "android.hidl.base@1.0::IBase"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 415
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 417
    :try_start_f
    iget-object v2, p0, Landroid/hardware/vibrator/V1_0/IVibrator$Proxy;->mRemote:Landroid/os/IHwBinder;

    const v3, 0xf504e47

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 418
    invoke-virtual {v1}, Landroid/os/HwParcel;->verifySuccess()V

    .line 419
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_1e
    .catchall {:try_start_f .. :try_end_1e} :catchall_23

    .line 421
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 422
    nop

    .line 423
    return-void

    .line 421
    :catchall_23
    move-exception v0

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    throw v0
.end method

.method public setAmplitude(B)I
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 254
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 255
    const-string v1, "android.hardware.vibrator@1.0::IVibrator"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 256
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt8(B)V

    .line 258
    new-instance p1, Landroid/os/HwParcel;

    invoke-direct {p1}, Landroid/os/HwParcel;-><init>()V

    .line 260
    :try_start_12
    iget-object v1, p0, Landroid/hardware/vibrator/V1_0/IVibrator$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/4 v2, 0x4

    const/4 v3, 0x0

    invoke-interface {v1, v2, v0, p1, v3}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 261
    invoke-virtual {p1}, Landroid/os/HwParcel;->verifySuccess()V

    .line 262
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    .line 264
    invoke-virtual {p1}, Landroid/os/HwParcel;->readInt32()I

    move-result v0
    :try_end_23
    .catchall {:try_start_12 .. :try_end_23} :catchall_28

    .line 265
    nop

    .line 267
    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 265
    return v0

    .line 267
    :catchall_28
    move-exception v0

    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    throw v0
.end method

.method public setHALInstrumentation()V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 392
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 393
    const-string v1, "android.hidl.base@1.0::IBase"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 395
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 397
    :try_start_f
    iget-object v2, p0, Landroid/hardware/vibrator/V1_0/IVibrator$Proxy;->mRemote:Landroid/os/IHwBinder;

    const v3, 0xf494e54

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 398
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_1b
    .catchall {:try_start_f .. :try_end_1b} :catchall_20

    .line 400
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 401
    nop

    .line 402
    return-void

    .line 400
    :catchall_20
    move-exception v0

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    throw v0
.end method

.method public supportsAmplitudeControl()Z
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 235
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 236
    const-string v1, "android.hardware.vibrator@1.0::IVibrator"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 238
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 240
    :try_start_f
    iget-object v2, p0, Landroid/hardware/vibrator/V1_0/IVibrator$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/4 v3, 0x3

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 241
    invoke-virtual {v1}, Landroid/os/HwParcel;->verifySuccess()V

    .line 242
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    .line 244
    invoke-virtual {v1}, Landroid/os/HwParcel;->readBool()Z

    move-result v0
    :try_end_20
    .catchall {:try_start_f .. :try_end_20} :catchall_25

    .line 245
    nop

    .line 247
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 245
    return v0

    .line 247
    :catchall_25
    move-exception v0

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    throw v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 175
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/hardware/vibrator/V1_0/IVibrator$Proxy;->interfaceDescriptor()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "@Proxy"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_15} :catch_16

    return-object v0

    .line 176
    :catch_16
    move-exception v0

    .line 179
    const-string v0, "[class or subclass of android.hardware.vibrator@1.0::IVibrator]@Proxy"

    return-object v0
.end method

.method public unlinkToDeath(Landroid/os/IHwBinder$DeathRecipient;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 463
    iget-object v0, p0, Landroid/hardware/vibrator/V1_0/IVibrator$Proxy;->mRemote:Landroid/os/IHwBinder;

    invoke-interface {v0, p1}, Landroid/os/IHwBinder;->unlinkToDeath(Landroid/os/IHwBinder$DeathRecipient;)Z

    move-result p1

    return p1
.end method
