.class public final Landroid/hardware/weaver/V1_0/IWeaver$Proxy;
.super Ljava/lang/Object;
.source "IWeaver.java"

# interfaces
.implements Landroid/hardware/weaver/V1_0/IWeaver;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/weaver/V1_0/IWeaver;
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

    .line 175
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 176
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/IHwBinder;

    iput-object p1, p0, Landroid/hardware/weaver/V1_0/IWeaver$Proxy;->mRemote:Landroid/os/IHwBinder;

    .line 177
    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IHwBinder;
    .registers 2

    .line 181
    iget-object v0, p0, Landroid/hardware/weaver/V1_0/IWeaver$Proxy;->mRemote:Landroid/os/IHwBinder;

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

    .line 294
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 295
    const-string v1, "android.hidl.base@1.0::IBase"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 296
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeNativeHandle(Landroid/os/NativeHandle;)V

    .line 297
    invoke-virtual {v0, p2}, Landroid/os/HwParcel;->writeStringVector(Ljava/util/ArrayList;)V

    .line 299
    new-instance p1, Landroid/os/HwParcel;

    invoke-direct {p1}, Landroid/os/HwParcel;-><init>()V

    .line 301
    :try_start_15
    iget-object p2, p0, Landroid/hardware/weaver/V1_0/IWeaver$Proxy;->mRemote:Landroid/os/IHwBinder;

    const v1, 0xf444247

    const/4 v2, 0x0

    invoke-interface {p2, v1, v0, p1, v2}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 302
    invoke-virtual {p1}, Landroid/os/HwParcel;->verifySuccess()V

    .line 303
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_24
    .catchall {:try_start_15 .. :try_end_24} :catchall_29

    .line 305
    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 306
    nop

    .line 307
    return-void

    .line 305
    :catchall_29
    move-exception p2

    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    throw p2
.end method

.method public final equals(Ljava/lang/Object;)Z
    .registers 2

    .line 196
    invoke-static {p0, p1}, Landroid/os/HidlSupport;->interfacesEqual(Landroid/os/IHwInterface;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public getConfig(Landroid/hardware/weaver/V1_0/IWeaver$getConfigCallback;)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 208
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 209
    const-string v1, "android.hardware.weaver@1.0::IWeaver"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 211
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 213
    :try_start_f
    iget-object v2, p0, Landroid/hardware/weaver/V1_0/IWeaver$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 214
    invoke-virtual {v1}, Landroid/os/HwParcel;->verifySuccess()V

    .line 215
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    .line 217
    invoke-virtual {v1}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 218
    new-instance v2, Landroid/hardware/weaver/V1_0/WeaverConfig;

    invoke-direct {v2}, Landroid/hardware/weaver/V1_0/WeaverConfig;-><init>()V

    .line 219
    invoke-virtual {v2, v1}, Landroid/hardware/weaver/V1_0/WeaverConfig;->readFromParcel(Landroid/os/HwParcel;)V

    .line 220
    invoke-interface {p1, v0, v2}, Landroid/hardware/weaver/V1_0/IWeaver$getConfigCallback;->onValues(ILandroid/hardware/weaver/V1_0/WeaverConfig;)V
    :try_end_2b
    .catchall {:try_start_f .. :try_end_2b} :catchall_30

    .line 222
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 223
    nop

    .line 224
    return-void

    .line 222
    :catchall_30
    move-exception p1

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    throw p1
.end method

.method public getDebugInfo()Landroid/hidl/base/V1_0/DebugInfo;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 406
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 407
    const-string v1, "android.hidl.base@1.0::IBase"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 409
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 411
    :try_start_f
    iget-object v2, p0, Landroid/hardware/weaver/V1_0/IWeaver$Proxy;->mRemote:Landroid/os/IHwBinder;

    const v3, 0xf524546

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 412
    invoke-virtual {v1}, Landroid/os/HwParcel;->verifySuccess()V

    .line 413
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    .line 415
    new-instance v0, Landroid/hidl/base/V1_0/DebugInfo;

    invoke-direct {v0}, Landroid/hidl/base/V1_0/DebugInfo;-><init>()V

    .line 416
    invoke-virtual {v0, v1}, Landroid/hidl/base/V1_0/DebugInfo;->readFromParcel(Landroid/os/HwParcel;)V
    :try_end_26
    .catchall {:try_start_f .. :try_end_26} :catchall_2b

    .line 417
    nop

    .line 419
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 417
    return-object v0

    .line 419
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

    .line 331
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 332
    const-string v1, "android.hidl.base@1.0::IBase"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 334
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 336
    :try_start_f
    iget-object v2, p0, Landroid/hardware/weaver/V1_0/IWeaver$Proxy;->mRemote:Landroid/os/IHwBinder;

    const v3, 0xf485348

    const/4 v10, 0x0

    invoke-interface {v2, v3, v0, v1, v10}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 337
    invoke-virtual {v1}, Landroid/os/HwParcel;->verifySuccess()V

    .line 338
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    .line 340
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 342
    const-wide/16 v2, 0x10

    invoke-virtual {v1, v2, v3}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    move-result-object v2

    .line 344
    const-wide/16 v3, 0x8

    invoke-virtual {v2, v3, v4}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v11

    .line 345
    mul-int/lit8 v3, v11, 0x20

    int-to-long v3, v3

    .line 346
    invoke-virtual {v2}, Landroid/os/HwBlob;->handle()J

    move-result-wide v5

    const-wide/16 v7, 0x0

    const/4 v9, 0x1

    .line 345
    move-object v2, v1

    invoke-virtual/range {v2 .. v9}, Landroid/os/HwParcel;->readEmbeddedBuffer(JJJZ)Landroid/os/HwBlob;

    move-result-object v2

    .line 349
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 350
    nop

    :goto_42
    if-ge v10, v11, :cond_55

    .line 351
    const/16 v3, 0x20

    new-array v4, v3, [B

    .line 353
    mul-int/lit8 v5, v10, 0x20

    int-to-long v5, v5

    .line 354
    invoke-virtual {v2, v5, v6, v4, v3}, Landroid/os/HwBlob;->copyToInt8Array(J[BI)V

    .line 355
    nop

    .line 357
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_52
    .catchall {:try_start_f .. :try_end_52} :catchall_5a

    .line 350
    add-int/lit8 v10, v10, 0x1

    goto :goto_42

    .line 361
    :cond_55
    nop

    .line 363
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 361
    return-object v0

    .line 363
    :catchall_5a
    move-exception v0

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    throw v0
.end method

.method public final hashCode()I
    .registers 2

    .line 201
    invoke-virtual {p0}, Landroid/hardware/weaver/V1_0/IWeaver$Proxy;->asBinder()Landroid/os/IHwBinder;

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

    .line 275
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 276
    const-string v1, "android.hidl.base@1.0::IBase"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 278
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 280
    :try_start_f
    iget-object v2, p0, Landroid/hardware/weaver/V1_0/IWeaver$Proxy;->mRemote:Landroid/os/IHwBinder;

    const v3, 0xf43484e

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 281
    invoke-virtual {v1}, Landroid/os/HwParcel;->verifySuccess()V

    .line 282
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    .line 284
    invoke-virtual {v1}, Landroid/os/HwParcel;->readStringVector()Ljava/util/ArrayList;

    move-result-object v0
    :try_end_22
    .catchall {:try_start_f .. :try_end_22} :catchall_27

    .line 285
    nop

    .line 287
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 285
    return-object v0

    .line 287
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

    .line 312
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 313
    const-string v1, "android.hidl.base@1.0::IBase"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 315
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 317
    :try_start_f
    iget-object v2, p0, Landroid/hardware/weaver/V1_0/IWeaver$Proxy;->mRemote:Landroid/os/IHwBinder;

    const v3, 0xf445343

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 318
    invoke-virtual {v1}, Landroid/os/HwParcel;->verifySuccess()V

    .line 319
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    .line 321
    invoke-virtual {v1}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v0
    :try_end_22
    .catchall {:try_start_f .. :try_end_22} :catchall_27

    .line 322
    nop

    .line 324
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 322
    return-object v0

    .line 324
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

    .line 385
    iget-object v0, p0, Landroid/hardware/weaver/V1_0/IWeaver$Proxy;->mRemote:Landroid/os/IHwBinder;

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

    .line 426
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 427
    const-string v1, "android.hidl.base@1.0::IBase"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 429
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 431
    :try_start_f
    iget-object v2, p0, Landroid/hardware/weaver/V1_0/IWeaver$Proxy;->mRemote:Landroid/os/IHwBinder;

    const v3, 0xf535953

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 432
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_1b
    .catchall {:try_start_f .. :try_end_1b} :catchall_20

    .line 434
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 435
    nop

    .line 436
    return-void

    .line 434
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

    .line 390
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 391
    const-string v1, "android.hidl.base@1.0::IBase"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 393
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 395
    :try_start_f
    iget-object v2, p0, Landroid/hardware/weaver/V1_0/IWeaver$Proxy;->mRemote:Landroid/os/IHwBinder;

    const v3, 0xf504e47

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 396
    invoke-virtual {v1}, Landroid/os/HwParcel;->verifySuccess()V

    .line 397
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_1e
    .catchall {:try_start_f .. :try_end_1e} :catchall_23

    .line 399
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 400
    nop

    .line 401
    return-void

    .line 399
    :catchall_23
    move-exception v0

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    throw v0
.end method

.method public read(ILjava/util/ArrayList;Landroid/hardware/weaver/V1_0/IWeaver$readCallback;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Byte;",
            ">;",
            "Landroid/hardware/weaver/V1_0/IWeaver$readCallback;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 251
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 252
    const-string v1, "android.hardware.weaver@1.0::IWeaver"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 253
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 254
    invoke-virtual {v0, p2}, Landroid/os/HwParcel;->writeInt8Vector(Ljava/util/ArrayList;)V

    .line 256
    new-instance p1, Landroid/os/HwParcel;

    invoke-direct {p1}, Landroid/os/HwParcel;-><init>()V

    .line 258
    :try_start_15
    iget-object p2, p0, Landroid/hardware/weaver/V1_0/IWeaver$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/4 v1, 0x3

    const/4 v2, 0x0

    invoke-interface {p2, v1, v0, p1, v2}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 259
    invoke-virtual {p1}, Landroid/os/HwParcel;->verifySuccess()V

    .line 260
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    .line 262
    invoke-virtual {p1}, Landroid/os/HwParcel;->readInt32()I

    move-result p2

    .line 263
    new-instance v0, Landroid/hardware/weaver/V1_0/WeaverReadResponse;

    invoke-direct {v0}, Landroid/hardware/weaver/V1_0/WeaverReadResponse;-><init>()V

    .line 264
    invoke-virtual {v0, p1}, Landroid/hardware/weaver/V1_0/WeaverReadResponse;->readFromParcel(Landroid/os/HwParcel;)V

    .line 265
    invoke-interface {p3, p2, v0}, Landroid/hardware/weaver/V1_0/IWeaver$readCallback;->onValues(ILandroid/hardware/weaver/V1_0/WeaverReadResponse;)V
    :try_end_31
    .catchall {:try_start_15 .. :try_end_31} :catchall_36

    .line 267
    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 268
    nop

    .line 269
    return-void

    .line 267
    :catchall_36
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

    .line 370
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 371
    const-string v1, "android.hidl.base@1.0::IBase"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 373
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 375
    :try_start_f
    iget-object v2, p0, Landroid/hardware/weaver/V1_0/IWeaver$Proxy;->mRemote:Landroid/os/IHwBinder;

    const v3, 0xf494e54

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 376
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_1b
    .catchall {:try_start_f .. :try_end_1b} :catchall_20

    .line 378
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 379
    nop

    .line 380
    return-void

    .line 378
    :catchall_20
    move-exception v0

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    throw v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 187
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/hardware/weaver/V1_0/IWeaver$Proxy;->interfaceDescriptor()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "@Proxy"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_15} :catch_16

    return-object v0

    .line 188
    :catch_16
    move-exception v0

    .line 191
    const-string v0, "[class or subclass of android.hardware.weaver@1.0::IWeaver]@Proxy"

    return-object v0
.end method

.method public unlinkToDeath(Landroid/os/IHwBinder$DeathRecipient;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 441
    iget-object v0, p0, Landroid/hardware/weaver/V1_0/IWeaver$Proxy;->mRemote:Landroid/os/IHwBinder;

    invoke-interface {v0, p1}, Landroid/os/IHwBinder;->unlinkToDeath(Landroid/os/IHwBinder$DeathRecipient;)Z

    move-result p1

    return p1
.end method

.method public write(ILjava/util/ArrayList;Ljava/util/ArrayList;)I
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Byte;",
            ">;",
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

    .line 229
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 230
    const-string v1, "android.hardware.weaver@1.0::IWeaver"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 231
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 232
    invoke-virtual {v0, p2}, Landroid/os/HwParcel;->writeInt8Vector(Ljava/util/ArrayList;)V

    .line 233
    invoke-virtual {v0, p3}, Landroid/os/HwParcel;->writeInt8Vector(Ljava/util/ArrayList;)V

    .line 235
    new-instance p1, Landroid/os/HwParcel;

    invoke-direct {p1}, Landroid/os/HwParcel;-><init>()V

    .line 237
    :try_start_18
    iget-object p2, p0, Landroid/hardware/weaver/V1_0/IWeaver$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/4 p3, 0x2

    const/4 v1, 0x0

    invoke-interface {p2, p3, v0, p1, v1}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 238
    invoke-virtual {p1}, Landroid/os/HwParcel;->verifySuccess()V

    .line 239
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    .line 241
    invoke-virtual {p1}, Landroid/os/HwParcel;->readInt32()I

    move-result p2
    :try_end_29
    .catchall {:try_start_18 .. :try_end_29} :catchall_2e

    .line 242
    nop

    .line 244
    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 242
    return p2

    .line 244
    :catchall_2e
    move-exception p2

    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    throw p2
.end method
