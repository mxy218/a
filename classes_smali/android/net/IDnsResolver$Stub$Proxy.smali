.class Landroid/net/IDnsResolver$Stub$Proxy;
.super Ljava/lang/Object;
.source "IDnsResolver.java"

# interfaces
.implements Landroid/net/IDnsResolver;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/IDnsResolver$Stub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Proxy"
.end annotation


# static fields
.field public static sDefaultImpl:Landroid/net/IDnsResolver;


# instance fields
.field private mCachedVersion:I

.field private mRemote:Landroid/os/IBinder;


# direct methods
.method constructor <init>(Landroid/os/IBinder;)V
    .registers 3

    .line 262
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 265
    const/4 v0, -0x1

    iput v0, p0, Landroid/net/IDnsResolver$Stub$Proxy;->mCachedVersion:I

    .line 263
    iput-object p1, p0, Landroid/net/IDnsResolver$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    .line 264
    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 2

    .line 268
    iget-object v0, p0, Landroid/net/IDnsResolver$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-object v0
.end method

.method public createNetworkCache(I)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 460
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 461
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 463
    :try_start_8
    const-string v2, "android.net.IDnsResolver"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 464
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 465
    iget-object v2, p0, Landroid/net/IDnsResolver$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x8

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 466
    if-nez v2, :cond_2f

    invoke-static {}, Landroid/net/IDnsResolver$Stub;->getDefaultImpl()Landroid/net/IDnsResolver;

    move-result-object v2

    if-eqz v2, :cond_2f

    .line 467
    invoke-static {}, Landroid/net/IDnsResolver$Stub;->getDefaultImpl()Landroid/net/IDnsResolver;

    move-result-object v2

    invoke-interface {v2, p1}, Landroid/net/IDnsResolver;->createNetworkCache(I)V
    :try_end_28
    .catchall {:try_start_8 .. :try_end_28} :catchall_3a

    .line 473
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 474
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 468
    return-void

    .line 470
    :cond_2f
    :try_start_2f
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_32
    .catchall {:try_start_2f .. :try_end_32} :catchall_3a

    .line 473
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 474
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 475
    nop

    .line 476
    return-void

    .line 473
    :catchall_3a
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 474
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw p1
.end method

.method public destroyNetworkCache(I)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 479
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 480
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 482
    :try_start_8
    const-string v2, "android.net.IDnsResolver"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 483
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 484
    iget-object v2, p0, Landroid/net/IDnsResolver$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x9

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 485
    if-nez v2, :cond_2f

    invoke-static {}, Landroid/net/IDnsResolver$Stub;->getDefaultImpl()Landroid/net/IDnsResolver;

    move-result-object v2

    if-eqz v2, :cond_2f

    .line 486
    invoke-static {}, Landroid/net/IDnsResolver$Stub;->getDefaultImpl()Landroid/net/IDnsResolver;

    move-result-object v2

    invoke-interface {v2, p1}, Landroid/net/IDnsResolver;->destroyNetworkCache(I)V
    :try_end_28
    .catchall {:try_start_8 .. :try_end_28} :catchall_3a

    .line 492
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 493
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 487
    return-void

    .line 489
    :cond_2f
    :try_start_2f
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_32
    .catchall {:try_start_2f .. :try_end_32} :catchall_3a

    .line 492
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 493
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 494
    nop

    .line 495
    return-void

    .line 492
    :catchall_3a
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 493
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw p1
.end method

.method public getInterfaceDescriptor()Ljava/lang/String;
    .registers 2

    .line 272
    const-string v0, "android.net.IDnsResolver"

    return-object v0
.end method

.method public getInterfaceVersion()I
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 517
    iget v0, p0, Landroid/net/IDnsResolver$Stub$Proxy;->mCachedVersion:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_33

    .line 518
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 519
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 521
    :try_start_d
    const-string v2, "android.net.IDnsResolver"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 522
    iget-object v2, p0, Landroid/net/IDnsResolver$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const v3, 0xffffff

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 523
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 524
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Landroid/net/IDnsResolver$Stub$Proxy;->mCachedVersion:I
    :try_end_24
    .catchall {:try_start_d .. :try_end_24} :catchall_2b

    .line 526
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 527
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 528
    goto :goto_33

    .line 526
    :catchall_2b
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 527
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v2

    .line 530
    :cond_33
    :goto_33
    iget v0, p0, Landroid/net/IDnsResolver$Stub$Proxy;->mCachedVersion:I

    return v0
.end method

.method public getPrefix64(I)Ljava/lang/String;
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 439
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 440
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 443
    :try_start_8
    const-string v2, "android.net.IDnsResolver"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 444
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 445
    iget-object v2, p0, Landroid/net/IDnsResolver$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x7

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 446
    if-nez v2, :cond_2f

    invoke-static {}, Landroid/net/IDnsResolver$Stub;->getDefaultImpl()Landroid/net/IDnsResolver;

    move-result-object v2

    if-eqz v2, :cond_2f

    .line 447
    invoke-static {}, Landroid/net/IDnsResolver$Stub;->getDefaultImpl()Landroid/net/IDnsResolver;

    move-result-object v2

    invoke-interface {v2, p1}, Landroid/net/IDnsResolver;->getPrefix64(I)Ljava/lang/String;

    move-result-object p1
    :try_end_28
    .catchall {:try_start_8 .. :try_end_28} :catchall_3e

    .line 453
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 454
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 447
    return-object p1

    .line 449
    :cond_2f
    :try_start_2f
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 450
    invoke-virtual {v1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1
    :try_end_36
    .catchall {:try_start_2f .. :try_end_36} :catchall_3e

    .line 453
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 454
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 455
    nop

    .line 456
    return-object p1

    .line 453
    :catchall_3e
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 454
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw p1
.end method

.method public getResolverInfo(I[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[I[I[I)V
    .registers 20
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 340
    move-object v0, p2

    move-object v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v9

    .line 341
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v10

    .line 343
    :try_start_12
    const-string v1, "android.net.IDnsResolver"

    invoke-virtual {v9, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 344
    move v2, p1

    invoke-virtual {v9, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 345
    const/4 v1, -0x1

    if-nez v0, :cond_22

    .line 346
    invoke-virtual {v9, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_26

    .line 349
    :cond_22
    array-length v3, v0

    invoke-virtual {v9, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 351
    :goto_26
    if-nez v4, :cond_2c

    .line 352
    invoke-virtual {v9, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_30

    .line 355
    :cond_2c
    array-length v3, v4

    invoke-virtual {v9, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 357
    :goto_30
    if-nez v5, :cond_36

    .line 358
    invoke-virtual {v9, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_3a

    .line 361
    :cond_36
    array-length v3, v5

    invoke-virtual {v9, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 363
    :goto_3a
    if-nez v6, :cond_40

    .line 364
    invoke-virtual {v9, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_44

    .line 367
    :cond_40
    array-length v3, v6

    invoke-virtual {v9, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 369
    :goto_44
    if-nez v7, :cond_4a

    .line 370
    invoke-virtual {v9, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_4e

    .line 373
    :cond_4a
    array-length v3, v7

    invoke-virtual {v9, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 375
    :goto_4e
    if-nez v8, :cond_54

    .line 376
    invoke-virtual {v9, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_58

    .line 379
    :cond_54
    array-length v1, v8

    invoke-virtual {v9, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 381
    :goto_58
    move-object v1, p0

    iget-object v1, v1, Landroid/net/IDnsResolver$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x4

    const/4 v11, 0x0

    invoke-interface {v1, v3, v9, v10, v11}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    .line 382
    if-nez v1, :cond_82

    invoke-static {}, Landroid/net/IDnsResolver$Stub;->getDefaultImpl()Landroid/net/IDnsResolver;

    move-result-object v1

    if-eqz v1, :cond_82

    .line 383
    invoke-static {}, Landroid/net/IDnsResolver$Stub;->getDefaultImpl()Landroid/net/IDnsResolver;

    move-result-object v1

    move v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    invoke-interface/range {v1 .. v8}, Landroid/net/IDnsResolver;->getResolverInfo(I[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[I[I[I)V
    :try_end_7b
    .catchall {:try_start_12 .. :try_end_7b} :catchall_9f

    .line 395
    invoke-virtual {v10}, Landroid/os/Parcel;->recycle()V

    .line 396
    invoke-virtual {v9}, Landroid/os/Parcel;->recycle()V

    .line 384
    return-void

    .line 386
    :cond_82
    :try_start_82
    invoke-virtual {v10}, Landroid/os/Parcel;->readException()V

    .line 387
    invoke-virtual {v10, p2}, Landroid/os/Parcel;->readStringArray([Ljava/lang/String;)V

    .line 388
    invoke-virtual {v10, p3}, Landroid/os/Parcel;->readStringArray([Ljava/lang/String;)V

    .line 389
    invoke-virtual {v10, v5}, Landroid/os/Parcel;->readStringArray([Ljava/lang/String;)V

    .line 390
    invoke-virtual {v10, v6}, Landroid/os/Parcel;->readIntArray([I)V

    .line 391
    invoke-virtual {v10, v7}, Landroid/os/Parcel;->readIntArray([I)V

    .line 392
    invoke-virtual {v10, v8}, Landroid/os/Parcel;->readIntArray([I)V
    :try_end_97
    .catchall {:try_start_82 .. :try_end_97} :catchall_9f

    .line 395
    invoke-virtual {v10}, Landroid/os/Parcel;->recycle()V

    .line 396
    invoke-virtual {v9}, Landroid/os/Parcel;->recycle()V

    .line 397
    nop

    .line 398
    return-void

    .line 395
    :catchall_9f
    move-exception v0

    invoke-virtual {v10}, Landroid/os/Parcel;->recycle()V

    .line 396
    invoke-virtual {v9}, Landroid/os/Parcel;->recycle()V

    throw v0
.end method

.method public isAlive()Z
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 276
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 277
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 280
    :try_start_8
    const-string v2, "android.net.IDnsResolver"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 281
    iget-object v2, p0, Landroid/net/IDnsResolver$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v2, v4, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 282
    if-nez v2, :cond_2c

    invoke-static {}, Landroid/net/IDnsResolver$Stub;->getDefaultImpl()Landroid/net/IDnsResolver;

    move-result-object v2

    if-eqz v2, :cond_2c

    .line 283
    invoke-static {}, Landroid/net/IDnsResolver$Stub;->getDefaultImpl()Landroid/net/IDnsResolver;

    move-result-object v2

    invoke-interface {v2}, Landroid/net/IDnsResolver;->isAlive()Z

    move-result v2
    :try_end_25
    .catchall {:try_start_8 .. :try_end_25} :catchall_3e

    .line 289
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 290
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 283
    return v2

    .line 285
    :cond_2c
    :try_start_2c
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 286
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2
    :try_end_33
    .catchall {:try_start_2c .. :try_end_33} :catchall_3e

    if-eqz v2, :cond_36

    move v3, v4

    .line 289
    :cond_36
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 290
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 291
    nop

    .line 292
    return v3

    .line 289
    :catchall_3e
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 290
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v2
.end method

.method public registerEventListener(Landroid/net/metrics/INetdEventListener;)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 296
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 297
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 299
    :try_start_8
    const-string v2, "android.net.IDnsResolver"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 300
    if-eqz p1, :cond_14

    invoke-interface {p1}, Landroid/net/metrics/INetdEventListener;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    goto :goto_15

    :cond_14
    const/4 v2, 0x0

    :goto_15
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 301
    iget-object v2, p0, Landroid/net/IDnsResolver$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x2

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 302
    if-nez v2, :cond_36

    invoke-static {}, Landroid/net/IDnsResolver$Stub;->getDefaultImpl()Landroid/net/IDnsResolver;

    move-result-object v2

    if-eqz v2, :cond_36

    .line 303
    invoke-static {}, Landroid/net/IDnsResolver$Stub;->getDefaultImpl()Landroid/net/IDnsResolver;

    move-result-object v2

    invoke-interface {v2, p1}, Landroid/net/IDnsResolver;->registerEventListener(Landroid/net/metrics/INetdEventListener;)V
    :try_end_2f
    .catchall {:try_start_8 .. :try_end_2f} :catchall_41

    .line 309
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 310
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 304
    return-void

    .line 306
    :cond_36
    :try_start_36
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_39
    .catchall {:try_start_36 .. :try_end_39} :catchall_41

    .line 309
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 310
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 311
    nop

    .line 312
    return-void

    .line 309
    :catchall_41
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 310
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw p1
.end method

.method public setLogSeverity(I)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 498
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 499
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 501
    :try_start_8
    const-string v2, "android.net.IDnsResolver"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 502
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 503
    iget-object v2, p0, Landroid/net/IDnsResolver$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xa

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 504
    if-nez v2, :cond_2f

    invoke-static {}, Landroid/net/IDnsResolver$Stub;->getDefaultImpl()Landroid/net/IDnsResolver;

    move-result-object v2

    if-eqz v2, :cond_2f

    .line 505
    invoke-static {}, Landroid/net/IDnsResolver$Stub;->getDefaultImpl()Landroid/net/IDnsResolver;

    move-result-object v2

    invoke-interface {v2, p1}, Landroid/net/IDnsResolver;->setLogSeverity(I)V
    :try_end_28
    .catchall {:try_start_8 .. :try_end_28} :catchall_3a

    .line 511
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 512
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 506
    return-void

    .line 508
    :cond_2f
    :try_start_2f
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_32
    .catchall {:try_start_2f .. :try_end_32} :catchall_3a

    .line 511
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 512
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 513
    nop

    .line 514
    return-void

    .line 511
    :catchall_3a
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 512
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw p1
.end method

.method public setResolverConfiguration(Landroid/net/ResolverParamsParcel;)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 315
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 316
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 318
    :try_start_8
    const-string v2, "android.net.IDnsResolver"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 319
    const/4 v2, 0x0

    if-eqz p1, :cond_18

    .line 320
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 321
    invoke-virtual {p1, v0, v2}, Landroid/net/ResolverParamsParcel;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_1b

    .line 324
    :cond_18
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 326
    :goto_1b
    iget-object v3, p0, Landroid/net/IDnsResolver$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v4, 0x3

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 327
    if-nez v2, :cond_38

    invoke-static {}, Landroid/net/IDnsResolver$Stub;->getDefaultImpl()Landroid/net/IDnsResolver;

    move-result-object v2

    if-eqz v2, :cond_38

    .line 328
    invoke-static {}, Landroid/net/IDnsResolver$Stub;->getDefaultImpl()Landroid/net/IDnsResolver;

    move-result-object v2

    invoke-interface {v2, p1}, Landroid/net/IDnsResolver;->setResolverConfiguration(Landroid/net/ResolverParamsParcel;)V
    :try_end_31
    .catchall {:try_start_8 .. :try_end_31} :catchall_43

    .line 334
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 335
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 329
    return-void

    .line 331
    :cond_38
    :try_start_38
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_3b
    .catchall {:try_start_38 .. :try_end_3b} :catchall_43

    .line 334
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 335
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 336
    nop

    .line 337
    return-void

    .line 334
    :catchall_43
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 335
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw p1
.end method

.method public startPrefix64Discovery(I)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 401
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 402
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 404
    :try_start_8
    const-string v2, "android.net.IDnsResolver"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 405
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 406
    iget-object v2, p0, Landroid/net/IDnsResolver$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x5

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 407
    if-nez v2, :cond_2e

    invoke-static {}, Landroid/net/IDnsResolver$Stub;->getDefaultImpl()Landroid/net/IDnsResolver;

    move-result-object v2

    if-eqz v2, :cond_2e

    .line 408
    invoke-static {}, Landroid/net/IDnsResolver$Stub;->getDefaultImpl()Landroid/net/IDnsResolver;

    move-result-object v2

    invoke-interface {v2, p1}, Landroid/net/IDnsResolver;->startPrefix64Discovery(I)V
    :try_end_27
    .catchall {:try_start_8 .. :try_end_27} :catchall_39

    .line 414
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 415
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 409
    return-void

    .line 411
    :cond_2e
    :try_start_2e
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_31
    .catchall {:try_start_2e .. :try_end_31} :catchall_39

    .line 414
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 415
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 416
    nop

    .line 417
    return-void

    .line 414
    :catchall_39
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 415
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw p1
.end method

.method public stopPrefix64Discovery(I)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 420
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 421
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 423
    :try_start_8
    const-string v2, "android.net.IDnsResolver"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 424
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 425
    iget-object v2, p0, Landroid/net/IDnsResolver$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x6

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 426
    if-nez v2, :cond_2e

    invoke-static {}, Landroid/net/IDnsResolver$Stub;->getDefaultImpl()Landroid/net/IDnsResolver;

    move-result-object v2

    if-eqz v2, :cond_2e

    .line 427
    invoke-static {}, Landroid/net/IDnsResolver$Stub;->getDefaultImpl()Landroid/net/IDnsResolver;

    move-result-object v2

    invoke-interface {v2, p1}, Landroid/net/IDnsResolver;->stopPrefix64Discovery(I)V
    :try_end_27
    .catchall {:try_start_8 .. :try_end_27} :catchall_39

    .line 433
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 434
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 428
    return-void

    .line 430
    :cond_2e
    :try_start_2e
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_31
    .catchall {:try_start_2e .. :try_end_31} :catchall_39

    .line 433
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 434
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 435
    nop

    .line 436
    return-void

    .line 433
    :catchall_39
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 434
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw p1
.end method
