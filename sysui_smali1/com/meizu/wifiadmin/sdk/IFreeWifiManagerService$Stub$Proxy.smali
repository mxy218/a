.class Lcom/meizu/wifiadmin/sdk/IFreeWifiManagerService$Stub$Proxy;
.super Ljava/lang/Object;
.source "IFreeWifiManagerService.java"

# interfaces
.implements Lcom/meizu/wifiadmin/sdk/IFreeWifiManagerService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/wifiadmin/sdk/IFreeWifiManagerService$Stub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Proxy"
.end annotation


# static fields
.field public static sDefaultImpl:Lcom/meizu/wifiadmin/sdk/IFreeWifiManagerService;


# instance fields
.field private mRemote:Landroid/os/IBinder;


# direct methods
.method constructor <init>(Landroid/os/IBinder;)V
    .registers 2

    .line 202
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 203
    iput-object p1, p0, Lcom/meizu/wifiadmin/sdk/IFreeWifiManagerService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 1

    .line 207
    iget-object p0, p0, Lcom/meizu/wifiadmin/sdk/IFreeWifiManagerService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-object p0
.end method

.method public getInterfaceDescriptor()Ljava/lang/String;
    .registers 1

    const-string p0, "com.meizu.wifiadmin.sdk.IFreeWifiManagerService"

    return-object p0
.end method

.method public registerCallback(Lcom/meizu/wifiadmin/sdk/IFreeWifiManagerCallback;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 215
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 216
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_8
    const-string v2, "com.meizu.wifiadmin.sdk.IFreeWifiManagerService"

    .line 218
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    if-eqz p1, :cond_14

    .line 219
    invoke-interface {p1}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    goto :goto_15

    :cond_14
    const/4 v2, 0x0

    :goto_15
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 220
    iget-object p0, p0, Lcom/meizu/wifiadmin/sdk/IFreeWifiManagerService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-interface {p0, v2, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    if-nez p0, :cond_36

    .line 221
    invoke-static {}, Lcom/meizu/wifiadmin/sdk/IFreeWifiManagerService$Stub;->getDefaultImpl()Lcom/meizu/wifiadmin/sdk/IFreeWifiManagerService;

    move-result-object p0

    if-eqz p0, :cond_36

    .line 222
    invoke-static {}, Lcom/meizu/wifiadmin/sdk/IFreeWifiManagerService$Stub;->getDefaultImpl()Lcom/meizu/wifiadmin/sdk/IFreeWifiManagerService;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/meizu/wifiadmin/sdk/IFreeWifiManagerService;->registerCallback(Lcom/meizu/wifiadmin/sdk/IFreeWifiManagerCallback;)V
    :try_end_2f
    .catchall {:try_start_8 .. :try_end_2f} :catchall_40

    .line 228
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 229
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 225
    :cond_36
    :try_start_36
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_39
    .catchall {:try_start_36 .. :try_end_39} :catchall_40

    .line 228
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 229
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_40
    move-exception p0

    .line 228
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 229
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw p0
.end method

.method public remoteConnect(Landroid/os/Bundle;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 277
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 278
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_8
    const-string v2, "com.meizu.wifiadmin.sdk.IFreeWifiManagerService"

    .line 280
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v2, 0x0

    if-eqz p1, :cond_18

    const/4 v3, 0x1

    .line 282
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 283
    invoke-virtual {p1, v0, v2}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_1b

    .line 286
    :cond_18
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 288
    :goto_1b
    iget-object p0, p0, Lcom/meizu/wifiadmin/sdk/IFreeWifiManagerService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x4

    invoke-interface {p0, v3, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    if-nez p0, :cond_38

    .line 289
    invoke-static {}, Lcom/meizu/wifiadmin/sdk/IFreeWifiManagerService$Stub;->getDefaultImpl()Lcom/meizu/wifiadmin/sdk/IFreeWifiManagerService;

    move-result-object p0

    if-eqz p0, :cond_38

    .line 290
    invoke-static {}, Lcom/meizu/wifiadmin/sdk/IFreeWifiManagerService$Stub;->getDefaultImpl()Lcom/meizu/wifiadmin/sdk/IFreeWifiManagerService;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/meizu/wifiadmin/sdk/IFreeWifiManagerService;->remoteConnect(Landroid/os/Bundle;)V
    :try_end_31
    .catchall {:try_start_8 .. :try_end_31} :catchall_42

    .line 296
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 297
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 293
    :cond_38
    :try_start_38
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_3b
    .catchall {:try_start_38 .. :try_end_3b} :catchall_42

    .line 296
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 297
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_42
    move-exception p0

    .line 296
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 297
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw p0
.end method

.method public remoteGetFeatureState()I
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 333
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 334
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_8
    const-string v2, "com.meizu.wifiadmin.sdk.IFreeWifiManagerService"

    .line 337
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 338
    iget-object p0, p0, Lcom/meizu/wifiadmin/sdk/IFreeWifiManagerService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x6

    const/4 v3, 0x0

    invoke-interface {p0, v2, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    if-nez p0, :cond_2c

    .line 339
    invoke-static {}, Lcom/meizu/wifiadmin/sdk/IFreeWifiManagerService$Stub;->getDefaultImpl()Lcom/meizu/wifiadmin/sdk/IFreeWifiManagerService;

    move-result-object p0

    if-eqz p0, :cond_2c

    .line 340
    invoke-static {}, Lcom/meizu/wifiadmin/sdk/IFreeWifiManagerService$Stub;->getDefaultImpl()Lcom/meizu/wifiadmin/sdk/IFreeWifiManagerService;

    move-result-object p0

    invoke-interface {p0}, Lcom/meizu/wifiadmin/sdk/IFreeWifiManagerService;->remoteGetFeatureState()I

    move-result p0
    :try_end_25
    .catchall {:try_start_8 .. :try_end_25} :catchall_3a

    .line 346
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 347
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p0

    .line 342
    :cond_2c
    :try_start_2c
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 343
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p0
    :try_end_33
    .catchall {:try_start_2c .. :try_end_33} :catchall_3a

    .line 346
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 347
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p0

    :catchall_3a
    move-exception p0

    .line 346
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 347
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw p0
.end method

.method public remoteGetFreeWifiList()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 357
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 358
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_8
    const-string v2, "com.meizu.wifiadmin.sdk.IFreeWifiManagerService"

    .line 360
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 361
    iget-object p0, p0, Lcom/meizu/wifiadmin/sdk/IFreeWifiManagerService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x7

    const/4 v3, 0x0

    invoke-interface {p0, v2, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    if-nez p0, :cond_2b

    .line 362
    invoke-static {}, Lcom/meizu/wifiadmin/sdk/IFreeWifiManagerService$Stub;->getDefaultImpl()Lcom/meizu/wifiadmin/sdk/IFreeWifiManagerService;

    move-result-object p0

    if-eqz p0, :cond_2b

    .line 363
    invoke-static {}, Lcom/meizu/wifiadmin/sdk/IFreeWifiManagerService$Stub;->getDefaultImpl()Lcom/meizu/wifiadmin/sdk/IFreeWifiManagerService;

    move-result-object p0

    invoke-interface {p0}, Lcom/meizu/wifiadmin/sdk/IFreeWifiManagerService;->remoteGetFreeWifiList()V
    :try_end_24
    .catchall {:try_start_8 .. :try_end_24} :catchall_35

    .line 369
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 370
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 366
    :cond_2b
    :try_start_2b
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_2e
    .catchall {:try_start_2b .. :try_end_2e} :catchall_35

    .line 369
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 370
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_35
    move-exception p0

    .line 369
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 370
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw p0
.end method

.method public remoteLogin(Landroid/os/Bundle;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 305
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 306
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_8
    const-string v2, "com.meizu.wifiadmin.sdk.IFreeWifiManagerService"

    .line 308
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v2, 0x0

    if-eqz p1, :cond_18

    const/4 v3, 0x1

    .line 310
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 311
    invoke-virtual {p1, v0, v2}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_1b

    .line 314
    :cond_18
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 316
    :goto_1b
    iget-object p0, p0, Lcom/meizu/wifiadmin/sdk/IFreeWifiManagerService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x5

    invoke-interface {p0, v3, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    if-nez p0, :cond_38

    .line 317
    invoke-static {}, Lcom/meizu/wifiadmin/sdk/IFreeWifiManagerService$Stub;->getDefaultImpl()Lcom/meizu/wifiadmin/sdk/IFreeWifiManagerService;

    move-result-object p0

    if-eqz p0, :cond_38

    .line 318
    invoke-static {}, Lcom/meizu/wifiadmin/sdk/IFreeWifiManagerService$Stub;->getDefaultImpl()Lcom/meizu/wifiadmin/sdk/IFreeWifiManagerService;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/meizu/wifiadmin/sdk/IFreeWifiManagerService;->remoteLogin(Landroid/os/Bundle;)V
    :try_end_31
    .catchall {:try_start_8 .. :try_end_31} :catchall_42

    .line 324
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 325
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 321
    :cond_38
    :try_start_38
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_3b
    .catchall {:try_start_38 .. :try_end_3b} :catchall_42

    .line 324
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 325
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_42
    move-exception p0

    .line 324
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 325
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw p0
.end method

.method public remoteQuery()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 256
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 257
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_8
    const-string v2, "com.meizu.wifiadmin.sdk.IFreeWifiManagerService"

    .line 259
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 260
    iget-object p0, p0, Lcom/meizu/wifiadmin/sdk/IFreeWifiManagerService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x3

    const/4 v3, 0x0

    invoke-interface {p0, v2, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    if-nez p0, :cond_2b

    .line 261
    invoke-static {}, Lcom/meizu/wifiadmin/sdk/IFreeWifiManagerService$Stub;->getDefaultImpl()Lcom/meizu/wifiadmin/sdk/IFreeWifiManagerService;

    move-result-object p0

    if-eqz p0, :cond_2b

    .line 262
    invoke-static {}, Lcom/meizu/wifiadmin/sdk/IFreeWifiManagerService$Stub;->getDefaultImpl()Lcom/meizu/wifiadmin/sdk/IFreeWifiManagerService;

    move-result-object p0

    invoke-interface {p0}, Lcom/meizu/wifiadmin/sdk/IFreeWifiManagerService;->remoteQuery()V
    :try_end_24
    .catchall {:try_start_8 .. :try_end_24} :catchall_35

    .line 268
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 269
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 265
    :cond_2b
    :try_start_2b
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_2e
    .catchall {:try_start_2b .. :try_end_2e} :catchall_35

    .line 268
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 269
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_35
    move-exception p0

    .line 268
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 269
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw p0
.end method

.method public remoteSendExtraCommand(Ljava/lang/String;Landroid/os/Bundle;)Z
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 378
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 379
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_8
    const-string v2, "com.meizu.wifiadmin.sdk.IFreeWifiManagerService"

    .line 382
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 383
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz p2, :cond_1b

    .line 385
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 386
    invoke-virtual {p2, v0, v3}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_1e

    .line 389
    :cond_1b
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 391
    :goto_1e
    iget-object p0, p0, Lcom/meizu/wifiadmin/sdk/IFreeWifiManagerService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x8

    invoke-interface {p0, v4, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    if-nez p0, :cond_3d

    .line 392
    invoke-static {}, Lcom/meizu/wifiadmin/sdk/IFreeWifiManagerService$Stub;->getDefaultImpl()Lcom/meizu/wifiadmin/sdk/IFreeWifiManagerService;

    move-result-object p0

    if-eqz p0, :cond_3d

    .line 393
    invoke-static {}, Lcom/meizu/wifiadmin/sdk/IFreeWifiManagerService$Stub;->getDefaultImpl()Lcom/meizu/wifiadmin/sdk/IFreeWifiManagerService;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Lcom/meizu/wifiadmin/sdk/IFreeWifiManagerService;->remoteSendExtraCommand(Ljava/lang/String;Landroid/os/Bundle;)Z

    move-result p0
    :try_end_36
    .catchall {:try_start_8 .. :try_end_36} :catchall_58

    .line 402
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 403
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p0

    .line 395
    :cond_3d
    :try_start_3d
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 396
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p0

    if-eqz p0, :cond_47

    goto :goto_48

    :cond_47
    move v2, v3

    .line 397
    :goto_48
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p0

    if-eqz p0, :cond_51

    .line 398
    invoke-virtual {p2, v1}, Landroid/os/Bundle;->readFromParcel(Landroid/os/Parcel;)V
    :try_end_51
    .catchall {:try_start_3d .. :try_end_51} :catchall_58

    .line 402
    :cond_51
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 403
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v2

    :catchall_58
    move-exception p0

    .line 402
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 403
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw p0
.end method

.method public unRegisterCallback(Lcom/meizu/wifiadmin/sdk/IFreeWifiManagerCallback;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 234
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 235
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_8
    const-string v2, "com.meizu.wifiadmin.sdk.IFreeWifiManagerService"

    .line 237
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    if-eqz p1, :cond_14

    .line 238
    invoke-interface {p1}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    goto :goto_15

    :cond_14
    const/4 v2, 0x0

    :goto_15
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 239
    iget-object p0, p0, Lcom/meizu/wifiadmin/sdk/IFreeWifiManagerService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-interface {p0, v2, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    if-nez p0, :cond_36

    .line 240
    invoke-static {}, Lcom/meizu/wifiadmin/sdk/IFreeWifiManagerService$Stub;->getDefaultImpl()Lcom/meizu/wifiadmin/sdk/IFreeWifiManagerService;

    move-result-object p0

    if-eqz p0, :cond_36

    .line 241
    invoke-static {}, Lcom/meizu/wifiadmin/sdk/IFreeWifiManagerService$Stub;->getDefaultImpl()Lcom/meizu/wifiadmin/sdk/IFreeWifiManagerService;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/meizu/wifiadmin/sdk/IFreeWifiManagerService;->unRegisterCallback(Lcom/meizu/wifiadmin/sdk/IFreeWifiManagerCallback;)V
    :try_end_2f
    .catchall {:try_start_8 .. :try_end_2f} :catchall_40

    .line 247
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 248
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 244
    :cond_36
    :try_start_36
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_39
    .catchall {:try_start_36 .. :try_end_39} :catchall_40

    .line 247
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 248
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_40
    move-exception p0

    .line 247
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 248
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw p0
.end method
