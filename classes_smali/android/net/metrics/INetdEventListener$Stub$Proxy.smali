.class Landroid/net/metrics/INetdEventListener$Stub$Proxy;
.super Ljava/lang/Object;
.source "INetdEventListener.java"

# interfaces
.implements Landroid/net/metrics/INetdEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/metrics/INetdEventListener$Stub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Proxy"
.end annotation


# static fields
.field public static sDefaultImpl:Landroid/net/metrics/INetdEventListener;


# instance fields
.field private mCachedVersion:I

.field private mRemote:Landroid/os/IBinder;


# direct methods
.method constructor <init>(Landroid/os/IBinder;)V
    .registers 3
    .param p1, "remote"  # Landroid/os/IBinder;

    .line 288
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 291
    const/4 v0, -0x1

    iput v0, p0, Landroid/net/metrics/INetdEventListener$Stub$Proxy;->mCachedVersion:I

    .line 289
    iput-object p1, p0, Landroid/net/metrics/INetdEventListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    .line 290
    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 2

    .line 294
    iget-object v0, p0, Landroid/net/metrics/INetdEventListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-object v0
.end method

.method public getInterfaceDescriptor()Ljava/lang/String;
    .registers 2

    .line 298
    const-string v0, "android.net.metrics.INetdEventListener"

    return-object v0
.end method

.method public getInterfaceVersion()I
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 503
    iget v0, p0, Landroid/net/metrics/INetdEventListener$Stub$Proxy;->mCachedVersion:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_33

    .line 504
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 505
    .local v0, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 507
    .local v1, "reply":Landroid/os/Parcel;
    :try_start_d
    const-string v2, "android.net.metrics.INetdEventListener"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 508
    iget-object v2, p0, Landroid/net/metrics/INetdEventListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const v3, 0xffffff

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 509
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 510
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Landroid/net/metrics/INetdEventListener$Stub$Proxy;->mCachedVersion:I
    :try_end_24
    .catchall {:try_start_d .. :try_end_24} :catchall_2b

    .line 512
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 513
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 514
    goto :goto_33

    .line 512
    :catchall_2b
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 513
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v2

    .line 516
    .end local v0  # "data":Landroid/os/Parcel;
    .end local v1  # "reply":Landroid/os/Parcel;
    :cond_33
    :goto_33
    iget v0, p0, Landroid/net/metrics/INetdEventListener$Stub$Proxy;->mCachedVersion:I

    return v0
.end method

.method public onConnectEvent(IIILjava/lang/String;II)V
    .registers 23
    .param p1, "netId"  # I
    .param p2, "error"  # I
    .param p3, "latencyMs"  # I
    .param p4, "ipAddr"  # Ljava/lang/String;
    .param p5, "port"  # I
    .param p6, "uid"  # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 376
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 378
    .local v1, "_data":Landroid/os/Parcel;
    :try_start_4
    const-string v0, "android.net.metrics.INetdEventListener"

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V
    :try_end_9
    .catchall {:try_start_4 .. :try_end_9} :catchall_70

    .line 379
    move/from16 v9, p1

    :try_start_b
    invoke-virtual {v1, v9}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_e
    .catchall {:try_start_b .. :try_end_e} :catchall_6c

    .line 380
    move/from16 v10, p2

    :try_start_10
    invoke-virtual {v1, v10}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_13
    .catchall {:try_start_10 .. :try_end_13} :catchall_68

    .line 381
    move/from16 v11, p3

    :try_start_15
    invoke-virtual {v1, v11}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_18
    .catchall {:try_start_15 .. :try_end_18} :catchall_64

    .line 382
    move-object/from16 v12, p4

    :try_start_1a
    invoke-virtual {v1, v12}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V
    :try_end_1d
    .catchall {:try_start_1a .. :try_end_1d} :catchall_60

    .line 383
    move/from16 v13, p5

    :try_start_1f
    invoke-virtual {v1, v13}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_22
    .catchall {:try_start_1f .. :try_end_22} :catchall_5c

    .line 384
    move/from16 v14, p6

    :try_start_24
    invoke-virtual {v1, v14}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_27
    .catchall {:try_start_24 .. :try_end_27} :catchall_58

    .line 385
    move-object/from16 v15, p0

    :try_start_29
    iget-object v0, v15, Landroid/net/metrics/INetdEventListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x3

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v0, v2, v1, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    .line 386
    .local v0, "_status":Z
    if-nez v0, :cond_51

    invoke-static {}, Landroid/net/metrics/INetdEventListener$Stub;->getDefaultImpl()Landroid/net/metrics/INetdEventListener;

    move-result-object v2

    if-eqz v2, :cond_51

    .line 387
    invoke-static {}, Landroid/net/metrics/INetdEventListener$Stub;->getDefaultImpl()Landroid/net/metrics/INetdEventListener;

    move-result-object v2

    move/from16 v3, p1

    move/from16 v4, p2

    move/from16 v5, p3

    move-object/from16 v6, p4

    move/from16 v7, p5

    move/from16 v8, p6

    invoke-interface/range {v2 .. v8}, Landroid/net/metrics/INetdEventListener;->onConnectEvent(IIILjava/lang/String;II)V
    :try_end_4d
    .catchall {:try_start_29 .. :try_end_4d} :catchall_56

    .line 392
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 388
    return-void

    .line 392
    .end local v0  # "_status":Z
    :cond_51
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 393
    nop

    .line 394
    return-void

    .line 392
    :catchall_56
    move-exception v0

    goto :goto_7f

    :catchall_58
    move-exception v0

    move-object/from16 v15, p0

    goto :goto_7f

    :catchall_5c
    move-exception v0

    move-object/from16 v15, p0

    goto :goto_7d

    :catchall_60
    move-exception v0

    move-object/from16 v15, p0

    goto :goto_7b

    :catchall_64
    move-exception v0

    move-object/from16 v15, p0

    goto :goto_79

    :catchall_68
    move-exception v0

    move-object/from16 v15, p0

    goto :goto_77

    :catchall_6c
    move-exception v0

    move-object/from16 v15, p0

    goto :goto_75

    :catchall_70
    move-exception v0

    move-object/from16 v15, p0

    move/from16 v9, p1

    :goto_75
    move/from16 v10, p2

    :goto_77
    move/from16 v11, p3

    :goto_79
    move-object/from16 v12, p4

    :goto_7b
    move/from16 v13, p5

    :goto_7d
    move/from16 v14, p6

    :goto_7f
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    throw v0
.end method

.method public onDnsEvent(IIIILjava/lang/String;[Ljava/lang/String;II)V
    .registers 25
    .param p1, "netId"  # I
    .param p2, "eventType"  # I
    .param p3, "returnCode"  # I
    .param p4, "latencyMs"  # I
    .param p5, "hostname"  # Ljava/lang/String;
    .param p6, "ipAddresses"  # [Ljava/lang/String;
    .param p7, "ipAddressesCount"  # I
    .param p8, "uid"  # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 316
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 318
    .local v1, "_data":Landroid/os/Parcel;
    :try_start_4
    const-string v0, "android.net.metrics.INetdEventListener"

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V
    :try_end_9
    .catchall {:try_start_4 .. :try_end_9} :catchall_6d

    .line 319
    move/from16 v11, p1

    :try_start_b
    invoke-virtual {v1, v11}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_e
    .catchall {:try_start_b .. :try_end_e} :catchall_6b

    .line 320
    move/from16 v12, p2

    :try_start_10
    invoke-virtual {v1, v12}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_13
    .catchall {:try_start_10 .. :try_end_13} :catchall_69

    .line 321
    move/from16 v13, p3

    :try_start_15
    invoke-virtual {v1, v13}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_18
    .catchall {:try_start_15 .. :try_end_18} :catchall_67

    .line 322
    move/from16 v14, p4

    :try_start_1a
    invoke-virtual {v1, v14}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1d
    .catchall {:try_start_1a .. :try_end_1d} :catchall_65

    .line 323
    move-object/from16 v15, p5

    :try_start_1f
    invoke-virtual {v1, v15}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 324
    move-object/from16 v10, p6

    invoke-virtual {v1, v10}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 325
    move/from16 v9, p7

    invoke-virtual {v1, v9}, Landroid/os/Parcel;->writeInt(I)V

    .line 326
    move/from16 v8, p8

    invoke-virtual {v1, v8}, Landroid/os/Parcel;->writeInt(I)V

    .line 327
    move-object/from16 v7, p0

    iget-object v0, v7, Landroid/net/metrics/INetdEventListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-interface {v0, v3, v1, v2, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    .line 328
    .local v0, "_status":Z
    if-nez v0, :cond_5e

    invoke-static {}, Landroid/net/metrics/INetdEventListener$Stub;->getDefaultImpl()Landroid/net/metrics/INetdEventListener;

    move-result-object v2

    if-eqz v2, :cond_5e

    .line 329
    invoke-static {}, Landroid/net/metrics/INetdEventListener$Stub;->getDefaultImpl()Landroid/net/metrics/INetdEventListener;

    move-result-object v2

    move/from16 v3, p1

    move/from16 v4, p2

    move/from16 v5, p3

    move/from16 v6, p4

    move-object/from16 v7, p5

    move-object/from16 v8, p6

    move/from16 v9, p7

    move/from16 v10, p8

    invoke-interface/range {v2 .. v10}, Landroid/net/metrics/INetdEventListener;->onDnsEvent(IIIILjava/lang/String;[Ljava/lang/String;II)V
    :try_end_5a
    .catchall {:try_start_1f .. :try_end_5a} :catchall_63

    .line 334
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 330
    return-void

    .line 334
    .end local v0  # "_status":Z
    :cond_5e
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 335
    nop

    .line 336
    return-void

    .line 334
    :catchall_63
    move-exception v0

    goto :goto_78

    :catchall_65
    move-exception v0

    goto :goto_76

    :catchall_67
    move-exception v0

    goto :goto_74

    :catchall_69
    move-exception v0

    goto :goto_72

    :catchall_6b
    move-exception v0

    goto :goto_70

    :catchall_6d
    move-exception v0

    move/from16 v11, p1

    :goto_70
    move/from16 v12, p2

    :goto_72
    move/from16 v13, p3

    :goto_74
    move/from16 v14, p4

    :goto_76
    move-object/from16 v15, p5

    :goto_78
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    throw v0
.end method

.method public onNat64PrefixEvent(IZLjava/lang/String;I)V
    .registers 10
    .param p1, "netId"  # I
    .param p2, "added"  # Z
    .param p3, "prefixString"  # Ljava/lang/String;
    .param p4, "prefixLength"  # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 484
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 486
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_4
    const-string v1, "android.net.metrics.INetdEventListener"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 487
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 488
    const/4 v1, 0x1

    if-eqz p2, :cond_11

    move v2, v1

    goto :goto_12

    :cond_11
    const/4 v2, 0x0

    :goto_12
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 489
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 490
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeInt(I)V

    .line 491
    iget-object v2, p0, Landroid/net/metrics/INetdEventListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x6

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v4, v1}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    .line 492
    .local v1, "_status":Z
    if-nez v1, :cond_36

    invoke-static {}, Landroid/net/metrics/INetdEventListener$Stub;->getDefaultImpl()Landroid/net/metrics/INetdEventListener;

    move-result-object v2

    if-eqz v2, :cond_36

    .line 493
    invoke-static {}, Landroid/net/metrics/INetdEventListener$Stub;->getDefaultImpl()Landroid/net/metrics/INetdEventListener;

    move-result-object v2

    invoke-interface {v2, p1, p2, p3, p4}, Landroid/net/metrics/INetdEventListener;->onNat64PrefixEvent(IZLjava/lang/String;I)V
    :try_end_32
    .catchall {:try_start_4 .. :try_end_32} :catchall_3b

    .line 498
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 494
    return-void

    .line 498
    .end local v1  # "_status":Z
    :cond_36
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 499
    nop

    .line 500
    return-void

    .line 498
    :catchall_3b
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v1
.end method

.method public onPrivateDnsValidationEvent(ILjava/lang/String;Ljava/lang/String;Z)V
    .registers 10
    .param p1, "netId"  # I
    .param p2, "ipAddress"  # Ljava/lang/String;
    .param p3, "hostname"  # Ljava/lang/String;
    .param p4, "validated"  # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 347
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 349
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_4
    const-string v1, "android.net.metrics.INetdEventListener"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 350
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 351
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 352
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 353
    const/4 v1, 0x1

    if-eqz p4, :cond_17

    move v2, v1

    goto :goto_18

    :cond_17
    const/4 v2, 0x0

    :goto_18
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 354
    iget-object v2, p0, Landroid/net/metrics/INetdEventListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x2

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v4, v1}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    .line 355
    .local v1, "_status":Z
    if-nez v1, :cond_36

    invoke-static {}, Landroid/net/metrics/INetdEventListener$Stub;->getDefaultImpl()Landroid/net/metrics/INetdEventListener;

    move-result-object v2

    if-eqz v2, :cond_36

    .line 356
    invoke-static {}, Landroid/net/metrics/INetdEventListener$Stub;->getDefaultImpl()Landroid/net/metrics/INetdEventListener;

    move-result-object v2

    invoke-interface {v2, p1, p2, p3, p4}, Landroid/net/metrics/INetdEventListener;->onPrivateDnsValidationEvent(ILjava/lang/String;Ljava/lang/String;Z)V
    :try_end_32
    .catchall {:try_start_4 .. :try_end_32} :catchall_3b

    .line 361
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 357
    return-void

    .line 361
    .end local v1  # "_status":Z
    :cond_36
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 362
    nop

    .line 363
    return-void

    .line 361
    :catchall_3b
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v1
.end method

.method public onTcpSocketStatsEvent([I[I[I[I[I)V
    .registers 15
    .param p1, "networkIds"  # [I
    .param p2, "sentPackets"  # [I
    .param p3, "lostPackets"  # [I
    .param p4, "rttUs"  # [I
    .param p5, "sentAckDiffMs"  # [I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 454
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 456
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_4
    const-string v1, "android.net.metrics.INetdEventListener"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 457
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 458
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 459
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 460
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 461
    invoke-virtual {v0, p5}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 462
    iget-object v1, p0, Landroid/net/metrics/INetdEventListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x5

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    .line 463
    .local v1, "_status":Z
    if-nez v1, :cond_39

    invoke-static {}, Landroid/net/metrics/INetdEventListener$Stub;->getDefaultImpl()Landroid/net/metrics/INetdEventListener;

    move-result-object v2

    if-eqz v2, :cond_39

    .line 464
    invoke-static {}, Landroid/net/metrics/INetdEventListener$Stub;->getDefaultImpl()Landroid/net/metrics/INetdEventListener;

    move-result-object v3

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    move-object v7, p4

    move-object v8, p5

    invoke-interface/range {v3 .. v8}, Landroid/net/metrics/INetdEventListener;->onTcpSocketStatsEvent([I[I[I[I[I)V
    :try_end_35
    .catchall {:try_start_4 .. :try_end_35} :catchall_3e

    .line 469
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 465
    return-void

    .line 469
    .end local v1  # "_status":Z
    :cond_39
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 470
    nop

    .line 471
    return-void

    .line 469
    :catchall_3e
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v1
.end method

.method public onWakeupEvent(Ljava/lang/String;III[BLjava/lang/String;Ljava/lang/String;IIJ)V
    .registers 28
    .param p1, "prefix"  # Ljava/lang/String;
    .param p2, "uid"  # I
    .param p3, "ethertype"  # I
    .param p4, "ipNextHeader"  # I
    .param p5, "dstHw"  # [B
    .param p6, "srcIp"  # Ljava/lang/String;
    .param p7, "dstIp"  # Ljava/lang/String;
    .param p8, "srcPort"  # I
    .param p9, "dstPort"  # I
    .param p10, "timestampNs"  # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 412
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 414
    .local v1, "_data":Landroid/os/Parcel;
    :try_start_4
    const-string v0, "android.net.metrics.INetdEventListener"

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V
    :try_end_9
    .catchall {:try_start_4 .. :try_end_9} :catchall_76

    .line 415
    move-object/from16 v14, p1

    :try_start_b
    invoke-virtual {v1, v14}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V
    :try_end_e
    .catchall {:try_start_b .. :try_end_e} :catchall_74

    .line 416
    move/from16 v15, p2

    :try_start_10
    invoke-virtual {v1, v15}, Landroid/os/Parcel;->writeInt(I)V

    .line 417
    move/from16 v12, p3

    invoke-virtual {v1, v12}, Landroid/os/Parcel;->writeInt(I)V

    .line 418
    move/from16 v13, p4

    invoke-virtual {v1, v13}, Landroid/os/Parcel;->writeInt(I)V

    .line 419
    move-object/from16 v11, p5

    invoke-virtual {v1, v11}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 420
    move-object/from16 v10, p6

    invoke-virtual {v1, v10}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 421
    move-object/from16 v9, p7

    invoke-virtual {v1, v9}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 422
    move/from16 v8, p8

    invoke-virtual {v1, v8}, Landroid/os/Parcel;->writeInt(I)V

    .line 423
    move/from16 v7, p9

    invoke-virtual {v1, v7}, Landroid/os/Parcel;->writeInt(I)V

    .line 424
    move-wide/from16 v5, p10

    invoke-virtual {v1, v5, v6}, Landroid/os/Parcel;->writeLong(J)V

    .line 425
    move-object/from16 v4, p0

    iget-object v0, v4, Landroid/net/metrics/INetdEventListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x4

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v0, v2, v1, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    .line 426
    .local v0, "_status":Z
    if-nez v0, :cond_6d

    invoke-static {}, Landroid/net/metrics/INetdEventListener$Stub;->getDefaultImpl()Landroid/net/metrics/INetdEventListener;

    move-result-object v2

    if-eqz v2, :cond_6d

    .line 427
    invoke-static {}, Landroid/net/metrics/INetdEventListener$Stub;->getDefaultImpl()Landroid/net/metrics/INetdEventListener;

    move-result-object v2

    move-object/from16 v3, p1

    move/from16 v4, p2

    move/from16 v5, p3

    move/from16 v6, p4

    move-object/from16 v7, p5

    move-object/from16 v8, p6

    move-object/from16 v9, p7

    move/from16 v10, p8

    move/from16 v11, p9

    move-wide/from16 v12, p10

    invoke-interface/range {v2 .. v13}, Landroid/net/metrics/INetdEventListener;->onWakeupEvent(Ljava/lang/String;III[BLjava/lang/String;Ljava/lang/String;IIJ)V
    :try_end_69
    .catchall {:try_start_10 .. :try_end_69} :catchall_72

    .line 432
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 428
    return-void

    .line 432
    .end local v0  # "_status":Z
    :cond_6d
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 433
    nop

    .line 434
    return-void

    .line 432
    :catchall_72
    move-exception v0

    goto :goto_7b

    :catchall_74
    move-exception v0

    goto :goto_79

    :catchall_76
    move-exception v0

    move-object/from16 v14, p1

    :goto_79
    move/from16 v15, p2

    :goto_7b
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    throw v0
.end method
