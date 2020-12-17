.class Landroid/net/IOemNetd$Stub$Proxy;
.super Ljava/lang/Object;
.source "IOemNetd.java"

# interfaces
.implements Landroid/net/IOemNetd;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/IOemNetd$Stub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Proxy"
.end annotation


# static fields
.field public static sDefaultImpl:Landroid/net/IOemNetd;


# instance fields
.field private mCachedVersion:I

.field private mRemote:Landroid/os/IBinder;


# direct methods
.method constructor <init>(Landroid/os/IBinder;)V
    .registers 3
    .param p1, "remote"  # Landroid/os/IBinder;

    .line 231
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 234
    const/4 v0, -0x1

    iput v0, p0, Landroid/net/IOemNetd$Stub$Proxy;->mCachedVersion:I

    .line 232
    iput-object p1, p0, Landroid/net/IOemNetd$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    .line 233
    return-void
.end method


# virtual methods
.method public addHostNames(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 8
    .param p1, "ipAddr"  # Ljava/lang/String;
    .param p2, "hostName"  # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 346
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 347
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 350
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "android.net.IOemNetd"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 351
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 352
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 353
    iget-object v2, p0, Landroid/net/IOemNetd$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x6

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 354
    .local v2, "_status":Z
    if-nez v2, :cond_32

    invoke-static {}, Landroid/net/IOemNetd$Stub;->getDefaultImpl()Landroid/net/IOemNetd;

    move-result-object v3

    if-eqz v3, :cond_32

    .line 355
    invoke-static {}, Landroid/net/IOemNetd$Stub;->getDefaultImpl()Landroid/net/IOemNetd;

    move-result-object v3

    invoke-interface {v3, p1, p2}, Landroid/net/IOemNetd;->addHostNames(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3
    :try_end_2b
    .catchall {:try_start_8 .. :try_end_2b} :catchall_45

    .line 361
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 362
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 355
    return v3

    .line 357
    :cond_32
    :try_start_32
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 358
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3
    :try_end_39
    .catchall {:try_start_32 .. :try_end_39} :catchall_45

    if-eqz v3, :cond_3c

    const/4 v4, 0x1

    :cond_3c
    move v2, v4

    .line 361
    .local v2, "_result":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 362
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 363
    nop

    .line 364
    return v2

    .line 361
    .end local v2  # "_result":Z
    :catchall_45
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 362
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v2
.end method

.method public asBinder()Landroid/os/IBinder;
    .registers 2

    .line 237
    iget-object v0, p0, Landroid/net/IOemNetd$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-object v0
.end method

.method public enableQuickAppRulse(ZLjava/lang/String;)Z
    .registers 9
    .param p1, "enable"  # Z
    .param p2, "port"  # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 386
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 387
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 390
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "android.net.IOemNetd"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 391
    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz p1, :cond_13

    move v4, v2

    goto :goto_14

    :cond_13
    move v4, v3

    :goto_14
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 392
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 393
    iget-object v4, p0, Landroid/net/IOemNetd$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v5, 0x8

    invoke-interface {v4, v5, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v4

    .line 394
    .local v4, "_status":Z
    if-nez v4, :cond_39

    invoke-static {}, Landroid/net/IOemNetd$Stub;->getDefaultImpl()Landroid/net/IOemNetd;

    move-result-object v5

    if-eqz v5, :cond_39

    .line 395
    invoke-static {}, Landroid/net/IOemNetd$Stub;->getDefaultImpl()Landroid/net/IOemNetd;

    move-result-object v2

    invoke-interface {v2, p1, p2}, Landroid/net/IOemNetd;->enableQuickAppRulse(ZLjava/lang/String;)Z

    move-result v2
    :try_end_32
    .catchall {:try_start_8 .. :try_end_32} :catchall_4c

    .line 401
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 402
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 395
    return v2

    .line 397
    :cond_39
    :try_start_39
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 398
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v5
    :try_end_40
    .catchall {:try_start_39 .. :try_end_40} :catchall_4c

    if-eqz v5, :cond_43

    goto :goto_44

    :cond_43
    move v2, v3

    .line 401
    .end local v4  # "_status":Z
    .local v2, "_result":Z
    :goto_44
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 402
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 403
    nop

    .line 404
    return v2

    .line 401
    .end local v2  # "_result":Z
    :catchall_4c
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 402
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v2
.end method

.method public getHostNames()[Ljava/lang/String;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 326
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 327
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 330
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "android.net.IOemNetd"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 331
    iget-object v2, p0, Landroid/net/IOemNetd$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x5

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 332
    .local v2, "_status":Z
    if-nez v2, :cond_2c

    invoke-static {}, Landroid/net/IOemNetd$Stub;->getDefaultImpl()Landroid/net/IOemNetd;

    move-result-object v3

    if-eqz v3, :cond_2c

    .line 333
    invoke-static {}, Landroid/net/IOemNetd$Stub;->getDefaultImpl()Landroid/net/IOemNetd;

    move-result-object v3

    invoke-interface {v3}, Landroid/net/IOemNetd;->getHostNames()[Ljava/lang/String;

    move-result-object v3
    :try_end_25
    .catchall {:try_start_8 .. :try_end_25} :catchall_3c

    .line 339
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 340
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 333
    return-object v3

    .line 335
    :cond_2c
    :try_start_2c
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 336
    invoke-virtual {v1}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v3
    :try_end_33
    .catchall {:try_start_2c .. :try_end_33} :catchall_3c

    move-object v2, v3

    .line 339
    .local v2, "_result":[Ljava/lang/String;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 340
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 341
    nop

    .line 342
    return-object v2

    .line 339
    .end local v2  # "_result":[Ljava/lang/String;
    :catchall_3c
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 340
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v2
.end method

.method public getInterfaceDescriptor()Ljava/lang/String;
    .registers 2

    .line 241
    const-string v0, "android.net.IOemNetd"

    return-object v0
.end method

.method public getInterfaceVersion()I
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 470
    iget v0, p0, Landroid/net/IOemNetd$Stub$Proxy;->mCachedVersion:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_33

    .line 471
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 472
    .local v0, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 474
    .local v1, "reply":Landroid/os/Parcel;
    :try_start_d
    const-string v2, "android.net.IOemNetd"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 475
    iget-object v2, p0, Landroid/net/IOemNetd$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const v3, 0xffffff

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 476
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 477
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Landroid/net/IOemNetd$Stub$Proxy;->mCachedVersion:I
    :try_end_24
    .catchall {:try_start_d .. :try_end_24} :catchall_2b

    .line 479
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 480
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 481
    goto :goto_33

    .line 479
    :catchall_2b
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 480
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v2

    .line 483
    .end local v0  # "data":Landroid/os/Parcel;
    .end local v1  # "reply":Landroid/os/Parcel;
    :cond_33
    :goto_33
    iget v0, p0, Landroid/net/IOemNetd$Stub$Proxy;->mCachedVersion:I

    return v0
.end method

.method public getIptableRules(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;
    .registers 8
    .param p1, "table"  # Ljava/lang/String;
    .param p2, "chain"  # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 408
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 409
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 412
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "android.net.IOemNetd"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 413
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 414
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 415
    iget-object v2, p0, Landroid/net/IOemNetd$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x9

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 416
    .local v2, "_status":Z
    if-nez v2, :cond_33

    invoke-static {}, Landroid/net/IOemNetd$Stub;->getDefaultImpl()Landroid/net/IOemNetd;

    move-result-object v3

    if-eqz v3, :cond_33

    .line 417
    invoke-static {}, Landroid/net/IOemNetd$Stub;->getDefaultImpl()Landroid/net/IOemNetd;

    move-result-object v3

    invoke-interface {v3, p1, p2}, Landroid/net/IOemNetd;->getIptableRules(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3
    :try_end_2c
    .catchall {:try_start_8 .. :try_end_2c} :catchall_43

    .line 423
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 424
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 417
    return-object v3

    .line 419
    :cond_33
    :try_start_33
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 420
    invoke-virtual {v1}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v3
    :try_end_3a
    .catchall {:try_start_33 .. :try_end_3a} :catchall_43

    move-object v2, v3

    .line 423
    .local v2, "_result":[Ljava/lang/String;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 424
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 425
    nop

    .line 426
    return-object v2

    .line 423
    .end local v2  # "_result":[Ljava/lang/String;
    :catchall_43
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 424
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v2
.end method

.method public isAlive()Z
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 245
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 246
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 249
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "android.net.IOemNetd"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 250
    iget-object v2, p0, Landroid/net/IOemNetd$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v2, v4, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 251
    .local v2, "_status":Z
    if-nez v2, :cond_2c

    invoke-static {}, Landroid/net/IOemNetd$Stub;->getDefaultImpl()Landroid/net/IOemNetd;

    move-result-object v5

    if-eqz v5, :cond_2c

    .line 252
    invoke-static {}, Landroid/net/IOemNetd$Stub;->getDefaultImpl()Landroid/net/IOemNetd;

    move-result-object v3

    invoke-interface {v3}, Landroid/net/IOemNetd;->isAlive()Z

    move-result v3
    :try_end_25
    .catchall {:try_start_8 .. :try_end_25} :catchall_3f

    .line 258
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 259
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 252
    return v3

    .line 254
    :cond_2c
    :try_start_2c
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 255
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v5
    :try_end_33
    .catchall {:try_start_2c .. :try_end_33} :catchall_3f

    if-eqz v5, :cond_36

    move v3, v4

    :cond_36
    move v2, v3

    .line 258
    .local v2, "_result":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 259
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 260
    nop

    .line 261
    return v2

    .line 258
    .end local v2  # "_result":Z
    :catchall_3f
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 259
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v2
.end method

.method public notifySmartNetworkPolicyEnabled(Z)V
    .registers 7
    .param p1, "enable"  # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 430
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 431
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 433
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "android.net.IOemNetd"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 434
    const/4 v2, 0x0

    if-eqz p1, :cond_12

    const/4 v3, 0x1

    goto :goto_13

    :cond_12
    move v3, v2

    :goto_13
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 435
    iget-object v3, p0, Landroid/net/IOemNetd$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0xa

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 436
    .local v2, "_status":Z
    if-nez v2, :cond_34

    invoke-static {}, Landroid/net/IOemNetd$Stub;->getDefaultImpl()Landroid/net/IOemNetd;

    move-result-object v3

    if-eqz v3, :cond_34

    .line 437
    invoke-static {}, Landroid/net/IOemNetd$Stub;->getDefaultImpl()Landroid/net/IOemNetd;

    move-result-object v3

    invoke-interface {v3, p1}, Landroid/net/IOemNetd;->notifySmartNetworkPolicyEnabled(Z)V
    :try_end_2d
    .catchall {:try_start_8 .. :try_end_2d} :catchall_3f

    .line 443
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 444
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 438
    return-void

    .line 440
    :cond_34
    :try_start_34
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_37
    .catchall {:try_start_34 .. :try_end_37} :catchall_3f

    .line 443
    .end local v2  # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 444
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 445
    nop

    .line 446
    return-void

    .line 443
    :catchall_3f
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 444
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v2
.end method

.method public onAppNetworkPolicyRequested(I)I
    .registers 7
    .param p1, "uid"  # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 449
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 450
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 453
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "android.net.IOemNetd"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 454
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 455
    iget-object v2, p0, Landroid/net/IOemNetd$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xb

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 456
    .local v2, "_status":Z
    if-nez v2, :cond_30

    invoke-static {}, Landroid/net/IOemNetd$Stub;->getDefaultImpl()Landroid/net/IOemNetd;

    move-result-object v3

    if-eqz v3, :cond_30

    .line 457
    invoke-static {}, Landroid/net/IOemNetd$Stub;->getDefaultImpl()Landroid/net/IOemNetd;

    move-result-object v3

    invoke-interface {v3, p1}, Landroid/net/IOemNetd;->onAppNetworkPolicyRequested(I)I

    move-result v3
    :try_end_29
    .catchall {:try_start_8 .. :try_end_29} :catchall_40

    .line 463
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 464
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 457
    return v3

    .line 459
    :cond_30
    :try_start_30
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 460
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3
    :try_end_37
    .catchall {:try_start_30 .. :try_end_37} :catchall_40

    move v2, v3

    .line 463
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 464
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 465
    nop

    .line 466
    return v2

    .line 463
    .end local v2  # "_result":I
    :catchall_40
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 464
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v2
.end method

.method public registerOemUnsolicitedEventListener(Landroid/net/IOemNetdUnsolicitedEventListener;)V
    .registers 7
    .param p1, "listener"  # Landroid/net/IOemNetdUnsolicitedEventListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 265
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 266
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 268
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "android.net.IOemNetd"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 269
    if-eqz p1, :cond_14

    invoke-interface {p1}, Landroid/net/IOemNetdUnsolicitedEventListener;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    goto :goto_15

    :cond_14
    const/4 v2, 0x0

    :goto_15
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 270
    iget-object v2, p0, Landroid/net/IOemNetd$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x2

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 271
    .local v2, "_status":Z
    if-nez v2, :cond_36

    invoke-static {}, Landroid/net/IOemNetd$Stub;->getDefaultImpl()Landroid/net/IOemNetd;

    move-result-object v3

    if-eqz v3, :cond_36

    .line 272
    invoke-static {}, Landroid/net/IOemNetd$Stub;->getDefaultImpl()Landroid/net/IOemNetd;

    move-result-object v3

    invoke-interface {v3, p1}, Landroid/net/IOemNetd;->registerOemUnsolicitedEventListener(Landroid/net/IOemNetdUnsolicitedEventListener;)V
    :try_end_2f
    .catchall {:try_start_8 .. :try_end_2f} :catchall_41

    .line 278
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 279
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 273
    return-void

    .line 275
    :cond_36
    :try_start_36
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_39
    .catchall {:try_start_36 .. :try_end_39} :catchall_41

    .line 278
    .end local v2  # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 279
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 280
    nop

    .line 281
    return-void

    .line 278
    :catchall_41
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 279
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v2
.end method

.method public resetHosts()V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 368
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 369
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 371
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "android.net.IOemNetd"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 372
    iget-object v2, p0, Landroid/net/IOemNetd$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x7

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 373
    .local v2, "_status":Z
    if-nez v2, :cond_2b

    invoke-static {}, Landroid/net/IOemNetd$Stub;->getDefaultImpl()Landroid/net/IOemNetd;

    move-result-object v3

    if-eqz v3, :cond_2b

    .line 374
    invoke-static {}, Landroid/net/IOemNetd$Stub;->getDefaultImpl()Landroid/net/IOemNetd;

    move-result-object v3

    invoke-interface {v3}, Landroid/net/IOemNetd;->resetHosts()V
    :try_end_24
    .catchall {:try_start_8 .. :try_end_24} :catchall_36

    .line 380
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 381
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 375
    return-void

    .line 377
    :cond_2b
    :try_start_2b
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_2e
    .catchall {:try_start_2b .. :try_end_2e} :catchall_36

    .line 380
    .end local v2  # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 381
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 382
    nop

    .line 383
    return-void

    .line 380
    :catchall_36
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 381
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v2
.end method

.method public runIpCounterCommand([Ljava/lang/String;)[Ljava/lang/String;
    .registers 7
    .param p1, "arguments"  # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 284
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 285
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 288
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "android.net.IOemNetd"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 289
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 290
    iget-object v2, p0, Landroid/net/IOemNetd$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x3

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 291
    .local v2, "_status":Z
    if-nez v2, :cond_2f

    invoke-static {}, Landroid/net/IOemNetd$Stub;->getDefaultImpl()Landroid/net/IOemNetd;

    move-result-object v3

    if-eqz v3, :cond_2f

    .line 292
    invoke-static {}, Landroid/net/IOemNetd$Stub;->getDefaultImpl()Landroid/net/IOemNetd;

    move-result-object v3

    invoke-interface {v3, p1}, Landroid/net/IOemNetd;->runIpCounterCommand([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3
    :try_end_28
    .catchall {:try_start_8 .. :try_end_28} :catchall_3f

    .line 298
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 299
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 292
    return-object v3

    .line 294
    :cond_2f
    :try_start_2f
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 295
    invoke-virtual {v1}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v3
    :try_end_36
    .catchall {:try_start_2f .. :try_end_36} :catchall_3f

    move-object v2, v3

    .line 298
    .local v2, "_result":[Ljava/lang/String;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 299
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 300
    nop

    .line 301
    return-object v2

    .line 298
    .end local v2  # "_result":[Ljava/lang/String;
    :catchall_3f
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 299
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v2
.end method

.method public setFirewallUidChainRule(ILjava/lang/String;Ljava/lang/String;)V
    .registers 9
    .param p1, "uid"  # I
    .param p2, "chain"  # Ljava/lang/String;
    .param p3, "rule"  # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 305
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 306
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 308
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "android.net.IOemNetd"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 309
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 310
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 311
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 312
    iget-object v2, p0, Landroid/net/IOemNetd$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x4

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 313
    .local v2, "_status":Z
    if-nez v2, :cond_34

    invoke-static {}, Landroid/net/IOemNetd$Stub;->getDefaultImpl()Landroid/net/IOemNetd;

    move-result-object v3

    if-eqz v3, :cond_34

    .line 314
    invoke-static {}, Landroid/net/IOemNetd$Stub;->getDefaultImpl()Landroid/net/IOemNetd;

    move-result-object v3

    invoke-interface {v3, p1, p2, p3}, Landroid/net/IOemNetd;->setFirewallUidChainRule(ILjava/lang/String;Ljava/lang/String;)V
    :try_end_2d
    .catchall {:try_start_8 .. :try_end_2d} :catchall_3f

    .line 320
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 321
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 315
    return-void

    .line 317
    :cond_34
    :try_start_34
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_37
    .catchall {:try_start_34 .. :try_end_37} :catchall_3f

    .line 320
    .end local v2  # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 321
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 322
    nop

    .line 323
    return-void

    .line 320
    :catchall_3f
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 321
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v2
.end method
