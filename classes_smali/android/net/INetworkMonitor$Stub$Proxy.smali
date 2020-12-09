.class Landroid/net/INetworkMonitor$Stub$Proxy;
.super Ljava/lang/Object;
.source "INetworkMonitor.java"

# interfaces
.implements Landroid/net/INetworkMonitor;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/INetworkMonitor$Stub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Proxy"
.end annotation


# static fields
.field public static sDefaultImpl:Landroid/net/INetworkMonitor;


# instance fields
.field private mCachedVersion:I

.field private mRemote:Landroid/os/IBinder;


# direct methods
.method constructor <init>(Landroid/os/IBinder;)V
    .registers 3

    .line 221
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 224
    const/4 v0, -0x1

    iput v0, p0, Landroid/net/INetworkMonitor$Stub$Proxy;->mCachedVersion:I

    .line 222
    iput-object p1, p0, Landroid/net/INetworkMonitor$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    .line 223
    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 2

    .line 227
    iget-object v0, p0, Landroid/net/INetworkMonitor$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-object v0
.end method

.method public forceReevaluation(I)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 296
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 298
    :try_start_4
    const-string v1, "android.net.INetworkMonitor"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 299
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 300
    iget-object v1, p0, Landroid/net/INetworkMonitor$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x5

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    .line 301
    if-nez v1, :cond_28

    invoke-static {}, Landroid/net/INetworkMonitor$Stub;->getDefaultImpl()Landroid/net/INetworkMonitor;

    move-result-object v1

    if-eqz v1, :cond_28

    .line 302
    invoke-static {}, Landroid/net/INetworkMonitor$Stub;->getDefaultImpl()Landroid/net/INetworkMonitor;

    move-result-object v1

    invoke-interface {v1, p1}, Landroid/net/INetworkMonitor;->forceReevaluation(I)V
    :try_end_24
    .catchall {:try_start_4 .. :try_end_24} :catchall_2d

    .line 307
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 303
    return-void

    .line 307
    :cond_28
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 308
    nop

    .line 309
    return-void

    .line 307
    :catchall_2d
    move-exception p1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw p1
.end method

.method public getInterfaceDescriptor()Ljava/lang/String;
    .registers 2

    .line 231
    const-string v0, "android.net.INetworkMonitor"

    return-object v0
.end method

.method public getInterfaceVersion()I
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 438
    iget v0, p0, Landroid/net/INetworkMonitor$Stub$Proxy;->mCachedVersion:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_33

    .line 439
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 440
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 442
    :try_start_d
    const-string v2, "android.net.INetworkMonitor"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 443
    iget-object v2, p0, Landroid/net/INetworkMonitor$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const v3, 0xffffff

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 444
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 445
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Landroid/net/INetworkMonitor$Stub$Proxy;->mCachedVersion:I
    :try_end_24
    .catchall {:try_start_d .. :try_end_24} :catchall_2b

    .line 447
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 448
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 449
    goto :goto_33

    .line 447
    :catchall_2b
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 448
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v2

    .line 451
    :cond_33
    :goto_33
    iget v0, p0, Landroid/net/INetworkMonitor$Stub$Proxy;->mCachedVersion:I

    return v0
.end method

.method public launchCaptivePortalApp()V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 250
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 252
    :try_start_4
    const-string v1, "android.net.INetworkMonitor"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 253
    iget-object v1, p0, Landroid/net/INetworkMonitor$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    .line 254
    if-nez v1, :cond_25

    invoke-static {}, Landroid/net/INetworkMonitor$Stub;->getDefaultImpl()Landroid/net/INetworkMonitor;

    move-result-object v1

    if-eqz v1, :cond_25

    .line 255
    invoke-static {}, Landroid/net/INetworkMonitor$Stub;->getDefaultImpl()Landroid/net/INetworkMonitor;

    move-result-object v1

    invoke-interface {v1}, Landroid/net/INetworkMonitor;->launchCaptivePortalApp()V
    :try_end_21
    .catchall {:try_start_4 .. :try_end_21} :catchall_2a

    .line 260
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 256
    return-void

    .line 260
    :cond_25
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 261
    nop

    .line 262
    return-void

    .line 260
    :catchall_2a
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v1
.end method

.method public notifyCaptivePortalAppFinished(I)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 265
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 267
    :try_start_4
    const-string v1, "android.net.INetworkMonitor"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 268
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 269
    iget-object v1, p0, Landroid/net/INetworkMonitor$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x3

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    .line 270
    if-nez v1, :cond_28

    invoke-static {}, Landroid/net/INetworkMonitor$Stub;->getDefaultImpl()Landroid/net/INetworkMonitor;

    move-result-object v1

    if-eqz v1, :cond_28

    .line 271
    invoke-static {}, Landroid/net/INetworkMonitor$Stub;->getDefaultImpl()Landroid/net/INetworkMonitor;

    move-result-object v1

    invoke-interface {v1, p1}, Landroid/net/INetworkMonitor;->notifyCaptivePortalAppFinished(I)V
    :try_end_24
    .catchall {:try_start_4 .. :try_end_24} :catchall_2d

    .line 276
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 272
    return-void

    .line 276
    :cond_28
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 277
    nop

    .line 278
    return-void

    .line 276
    :catchall_2d
    move-exception p1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw p1
.end method

.method public notifyDnsResponse(I)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 334
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 336
    :try_start_4
    const-string v1, "android.net.INetworkMonitor"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 337
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 338
    iget-object v1, p0, Landroid/net/INetworkMonitor$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x7

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    .line 339
    if-nez v1, :cond_28

    invoke-static {}, Landroid/net/INetworkMonitor$Stub;->getDefaultImpl()Landroid/net/INetworkMonitor;

    move-result-object v1

    if-eqz v1, :cond_28

    .line 340
    invoke-static {}, Landroid/net/INetworkMonitor$Stub;->getDefaultImpl()Landroid/net/INetworkMonitor;

    move-result-object v1

    invoke-interface {v1, p1}, Landroid/net/INetworkMonitor;->notifyDnsResponse(I)V
    :try_end_24
    .catchall {:try_start_4 .. :try_end_24} :catchall_2d

    .line 345
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 341
    return-void

    .line 345
    :cond_28
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 346
    nop

    .line 347
    return-void

    .line 345
    :catchall_2d
    move-exception p1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw p1
.end method

.method public notifyLinkPropertiesChanged(Landroid/net/LinkProperties;)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 394
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 396
    :try_start_4
    const-string v1, "android.net.INetworkMonitor"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 397
    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz p1, :cond_14

    .line 398
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 399
    invoke-virtual {p1, v0, v2}, Landroid/net/LinkProperties;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_17

    .line 402
    :cond_14
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 404
    :goto_17
    iget-object v2, p0, Landroid/net/INetworkMonitor$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xa

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v4, v1}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    .line 405
    if-nez v1, :cond_33

    invoke-static {}, Landroid/net/INetworkMonitor$Stub;->getDefaultImpl()Landroid/net/INetworkMonitor;

    move-result-object v1

    if-eqz v1, :cond_33

    .line 406
    invoke-static {}, Landroid/net/INetworkMonitor$Stub;->getDefaultImpl()Landroid/net/INetworkMonitor;

    move-result-object v1

    invoke-interface {v1, p1}, Landroid/net/INetworkMonitor;->notifyLinkPropertiesChanged(Landroid/net/LinkProperties;)V
    :try_end_2f
    .catchall {:try_start_4 .. :try_end_2f} :catchall_38

    .line 411
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 407
    return-void

    .line 411
    :cond_33
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 412
    nop

    .line 413
    return-void

    .line 411
    :catchall_38
    move-exception p1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw p1
.end method

.method public notifyNetworkCapabilitiesChanged(Landroid/net/NetworkCapabilities;)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 416
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 418
    :try_start_4
    const-string v1, "android.net.INetworkMonitor"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 419
    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz p1, :cond_14

    .line 420
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 421
    invoke-virtual {p1, v0, v2}, Landroid/net/NetworkCapabilities;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_17

    .line 424
    :cond_14
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 426
    :goto_17
    iget-object v2, p0, Landroid/net/INetworkMonitor$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xb

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v4, v1}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    .line 427
    if-nez v1, :cond_33

    invoke-static {}, Landroid/net/INetworkMonitor$Stub;->getDefaultImpl()Landroid/net/INetworkMonitor;

    move-result-object v1

    if-eqz v1, :cond_33

    .line 428
    invoke-static {}, Landroid/net/INetworkMonitor$Stub;->getDefaultImpl()Landroid/net/INetworkMonitor;

    move-result-object v1

    invoke-interface {v1, p1}, Landroid/net/INetworkMonitor;->notifyNetworkCapabilitiesChanged(Landroid/net/NetworkCapabilities;)V
    :try_end_2f
    .catchall {:try_start_4 .. :try_end_2f} :catchall_38

    .line 433
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 429
    return-void

    .line 433
    :cond_33
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 434
    nop

    .line 435
    return-void

    .line 433
    :catchall_38
    move-exception p1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw p1
.end method

.method public notifyNetworkConnected(Landroid/net/LinkProperties;Landroid/net/NetworkCapabilities;)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 350
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 352
    :try_start_4
    const-string v1, "android.net.INetworkMonitor"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 353
    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz p1, :cond_14

    .line 354
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 355
    invoke-virtual {p1, v0, v2}, Landroid/net/LinkProperties;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_17

    .line 358
    :cond_14
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 360
    :goto_17
    if-eqz p2, :cond_20

    .line 361
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 362
    invoke-virtual {p2, v0, v2}, Landroid/net/NetworkCapabilities;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_23

    .line 365
    :cond_20
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 367
    :goto_23
    iget-object v2, p0, Landroid/net/INetworkMonitor$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x8

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v4, v1}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    .line 368
    if-nez v1, :cond_3f

    invoke-static {}, Landroid/net/INetworkMonitor$Stub;->getDefaultImpl()Landroid/net/INetworkMonitor;

    move-result-object v1

    if-eqz v1, :cond_3f

    .line 369
    invoke-static {}, Landroid/net/INetworkMonitor$Stub;->getDefaultImpl()Landroid/net/INetworkMonitor;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Landroid/net/INetworkMonitor;->notifyNetworkConnected(Landroid/net/LinkProperties;Landroid/net/NetworkCapabilities;)V
    :try_end_3b
    .catchall {:try_start_4 .. :try_end_3b} :catchall_44

    .line 374
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 370
    return-void

    .line 374
    :cond_3f
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 375
    nop

    .line 376
    return-void

    .line 374
    :catchall_44
    move-exception p1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw p1
.end method

.method public notifyNetworkDisconnected()V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 379
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 381
    :try_start_4
    const-string v1, "android.net.INetworkMonitor"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 382
    iget-object v1, p0, Landroid/net/INetworkMonitor$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x9

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    .line 383
    if-nez v1, :cond_26

    invoke-static {}, Landroid/net/INetworkMonitor$Stub;->getDefaultImpl()Landroid/net/INetworkMonitor;

    move-result-object v1

    if-eqz v1, :cond_26

    .line 384
    invoke-static {}, Landroid/net/INetworkMonitor$Stub;->getDefaultImpl()Landroid/net/INetworkMonitor;

    move-result-object v1

    invoke-interface {v1}, Landroid/net/INetworkMonitor;->notifyNetworkDisconnected()V
    :try_end_22
    .catchall {:try_start_4 .. :try_end_22} :catchall_2b

    .line 389
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 385
    return-void

    .line 389
    :cond_26
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 390
    nop

    .line 391
    return-void

    .line 389
    :catchall_2b
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v1
.end method

.method public notifyPrivateDnsChanged(Landroid/net/PrivateDnsConfigParcel;)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 312
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 314
    :try_start_4
    const-string v1, "android.net.INetworkMonitor"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 315
    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz p1, :cond_14

    .line 316
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 317
    invoke-virtual {p1, v0, v2}, Landroid/net/PrivateDnsConfigParcel;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_17

    .line 320
    :cond_14
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 322
    :goto_17
    iget-object v2, p0, Landroid/net/INetworkMonitor$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x6

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v4, v1}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    .line 323
    if-nez v1, :cond_32

    invoke-static {}, Landroid/net/INetworkMonitor$Stub;->getDefaultImpl()Landroid/net/INetworkMonitor;

    move-result-object v1

    if-eqz v1, :cond_32

    .line 324
    invoke-static {}, Landroid/net/INetworkMonitor$Stub;->getDefaultImpl()Landroid/net/INetworkMonitor;

    move-result-object v1

    invoke-interface {v1, p1}, Landroid/net/INetworkMonitor;->notifyPrivateDnsChanged(Landroid/net/PrivateDnsConfigParcel;)V
    :try_end_2e
    .catchall {:try_start_4 .. :try_end_2e} :catchall_37

    .line 329
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 325
    return-void

    .line 329
    :cond_32
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 330
    nop

    .line 331
    return-void

    .line 329
    :catchall_37
    move-exception p1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw p1
.end method

.method public setAcceptPartialConnectivity()V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 281
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 283
    :try_start_4
    const-string v1, "android.net.INetworkMonitor"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 284
    iget-object v1, p0, Landroid/net/INetworkMonitor$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x4

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    .line 285
    if-nez v1, :cond_25

    invoke-static {}, Landroid/net/INetworkMonitor$Stub;->getDefaultImpl()Landroid/net/INetworkMonitor;

    move-result-object v1

    if-eqz v1, :cond_25

    .line 286
    invoke-static {}, Landroid/net/INetworkMonitor$Stub;->getDefaultImpl()Landroid/net/INetworkMonitor;

    move-result-object v1

    invoke-interface {v1}, Landroid/net/INetworkMonitor;->setAcceptPartialConnectivity()V
    :try_end_21
    .catchall {:try_start_4 .. :try_end_21} :catchall_2a

    .line 291
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 287
    return-void

    .line 291
    :cond_25
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 292
    nop

    .line 293
    return-void

    .line 291
    :catchall_2a
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v1
.end method

.method public start()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 235
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 237
    :try_start_4
    const-string v1, "android.net.INetworkMonitor"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 238
    iget-object v1, p0, Landroid/net/INetworkMonitor$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-interface {v1, v3, v0, v2, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    .line 239
    if-nez v1, :cond_24

    invoke-static {}, Landroid/net/INetworkMonitor$Stub;->getDefaultImpl()Landroid/net/INetworkMonitor;

    move-result-object v1

    if-eqz v1, :cond_24

    .line 240
    invoke-static {}, Landroid/net/INetworkMonitor$Stub;->getDefaultImpl()Landroid/net/INetworkMonitor;

    move-result-object v1

    invoke-interface {v1}, Landroid/net/INetworkMonitor;->start()V
    :try_end_20
    .catchall {:try_start_4 .. :try_end_20} :catchall_29

    .line 245
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 241
    return-void

    .line 245
    :cond_24
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 246
    nop

    .line 247
    return-void

    .line 245
    :catchall_29
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v1
.end method
