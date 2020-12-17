.class Landroid/net/IIpMemoryStore$Stub$Proxy;
.super Ljava/lang/Object;
.source "IIpMemoryStore.java"

# interfaces
.implements Landroid/net/IIpMemoryStore;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/IIpMemoryStore$Stub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Proxy"
.end annotation


# static fields
.field public static sDefaultImpl:Landroid/net/IIpMemoryStore;


# instance fields
.field private mCachedVersion:I

.field private mRemote:Landroid/os/IBinder;


# direct methods
.method constructor <init>(Landroid/os/IBinder;)V
    .registers 3
    .param p1, "remote"  # Landroid/os/IBinder;

    .line 197
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 200
    const/4 v0, -0x1

    iput v0, p0, Landroid/net/IIpMemoryStore$Stub$Proxy;->mCachedVersion:I

    .line 198
    iput-object p1, p0, Landroid/net/IIpMemoryStore$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    .line 199
    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 2

    .line 203
    iget-object v0, p0, Landroid/net/IIpMemoryStore$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-object v0
.end method

.method public factoryReset()V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 338
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 340
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_4
    const-string v1, "android.net.IIpMemoryStore"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 341
    iget-object v1, p0, Landroid/net/IIpMemoryStore$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x7

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    .line 342
    .local v1, "_status":Z
    if-nez v1, :cond_25

    invoke-static {}, Landroid/net/IIpMemoryStore$Stub;->getDefaultImpl()Landroid/net/IIpMemoryStore;

    move-result-object v2

    if-eqz v2, :cond_25

    .line 343
    invoke-static {}, Landroid/net/IIpMemoryStore$Stub;->getDefaultImpl()Landroid/net/IIpMemoryStore;

    move-result-object v2

    invoke-interface {v2}, Landroid/net/IIpMemoryStore;->factoryReset()V
    :try_end_21
    .catchall {:try_start_4 .. :try_end_21} :catchall_2a

    .line 348
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 344
    return-void

    .line 348
    .end local v1  # "_status":Z
    :cond_25
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 349
    nop

    .line 350
    return-void

    .line 348
    :catchall_2a
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v1
.end method

.method public findL2Key(Landroid/net/ipmemorystore/NetworkAttributesParcelable;Landroid/net/ipmemorystore/IOnL2KeyResponseListener;)V
    .registers 8
    .param p1, "attributes"  # Landroid/net/ipmemorystore/NetworkAttributesParcelable;
    .param p2, "listener"  # Landroid/net/ipmemorystore/IOnL2KeyResponseListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 261
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 263
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_4
    const-string v1, "android.net.IIpMemoryStore"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 264
    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz p1, :cond_14

    .line 265
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 266
    invoke-virtual {p1, v0, v2}, Landroid/net/ipmemorystore/NetworkAttributesParcelable;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_17

    .line 269
    :cond_14
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 271
    :goto_17
    const/4 v2, 0x0

    if-eqz p2, :cond_1f

    invoke-interface {p2}, Landroid/net/ipmemorystore/IOnL2KeyResponseListener;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    goto :goto_20

    :cond_1f
    move-object v3, v2

    :goto_20
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 272
    iget-object v3, p0, Landroid/net/IIpMemoryStore$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v4, 0x3

    invoke-interface {v3, v4, v0, v2, v1}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    .line 273
    .local v1, "_status":Z
    if-nez v1, :cond_3d

    invoke-static {}, Landroid/net/IIpMemoryStore$Stub;->getDefaultImpl()Landroid/net/IIpMemoryStore;

    move-result-object v2

    if-eqz v2, :cond_3d

    .line 274
    invoke-static {}, Landroid/net/IIpMemoryStore$Stub;->getDefaultImpl()Landroid/net/IIpMemoryStore;

    move-result-object v2

    invoke-interface {v2, p1, p2}, Landroid/net/IIpMemoryStore;->findL2Key(Landroid/net/ipmemorystore/NetworkAttributesParcelable;Landroid/net/ipmemorystore/IOnL2KeyResponseListener;)V
    :try_end_39
    .catchall {:try_start_4 .. :try_end_39} :catchall_42

    .line 279
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 275
    return-void

    .line 279
    .end local v1  # "_status":Z
    :cond_3d
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 280
    nop

    .line 281
    return-void

    .line 279
    :catchall_42
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v1
.end method

.method public getInterfaceDescriptor()Ljava/lang/String;
    .registers 2

    .line 207
    const-string v0, "android.net.IIpMemoryStore"

    return-object v0
.end method

.method public getInterfaceVersion()I
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 353
    iget v0, p0, Landroid/net/IIpMemoryStore$Stub$Proxy;->mCachedVersion:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_33

    .line 354
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 355
    .local v0, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 357
    .local v1, "reply":Landroid/os/Parcel;
    :try_start_d
    const-string v2, "android.net.IIpMemoryStore"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 358
    iget-object v2, p0, Landroid/net/IIpMemoryStore$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const v3, 0xffffff

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 359
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 360
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Landroid/net/IIpMemoryStore$Stub$Proxy;->mCachedVersion:I
    :try_end_24
    .catchall {:try_start_d .. :try_end_24} :catchall_2b

    .line 362
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 363
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 364
    goto :goto_33

    .line 362
    :catchall_2b
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 363
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v2

    .line 366
    .end local v0  # "data":Landroid/os/Parcel;
    .end local v1  # "reply":Landroid/os/Parcel;
    :cond_33
    :goto_33
    iget v0, p0, Landroid/net/IIpMemoryStore$Stub$Proxy;->mCachedVersion:I

    return v0
.end method

.method public isSameNetwork(Ljava/lang/String;Ljava/lang/String;Landroid/net/ipmemorystore/IOnSameL3NetworkResponseListener;)V
    .registers 9
    .param p1, "l2Key1"  # Ljava/lang/String;
    .param p2, "l2Key2"  # Ljava/lang/String;
    .param p3, "listener"  # Landroid/net/ipmemorystore/IOnSameL3NetworkResponseListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 284
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 286
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_4
    const-string v1, "android.net.IIpMemoryStore"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 287
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 288
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 289
    const/4 v1, 0x0

    if-eqz p3, :cond_17

    invoke-interface {p3}, Landroid/net/ipmemorystore/IOnSameL3NetworkResponseListener;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    goto :goto_18

    :cond_17
    move-object v2, v1

    :goto_18
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 290
    iget-object v2, p0, Landroid/net/IIpMemoryStore$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x4

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    .line 291
    .local v1, "_status":Z
    if-nez v1, :cond_36

    invoke-static {}, Landroid/net/IIpMemoryStore$Stub;->getDefaultImpl()Landroid/net/IIpMemoryStore;

    move-result-object v2

    if-eqz v2, :cond_36

    .line 292
    invoke-static {}, Landroid/net/IIpMemoryStore$Stub;->getDefaultImpl()Landroid/net/IIpMemoryStore;

    move-result-object v2

    invoke-interface {v2, p1, p2, p3}, Landroid/net/IIpMemoryStore;->isSameNetwork(Ljava/lang/String;Ljava/lang/String;Landroid/net/ipmemorystore/IOnSameL3NetworkResponseListener;)V
    :try_end_32
    .catchall {:try_start_4 .. :try_end_32} :catchall_3b

    .line 297
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 293
    return-void

    .line 297
    .end local v1  # "_status":Z
    :cond_36
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 298
    nop

    .line 299
    return-void

    .line 297
    :catchall_3b
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v1
.end method

.method public retrieveBlob(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/net/ipmemorystore/IOnBlobRetrievedListener;)V
    .registers 10
    .param p1, "l2Key"  # Ljava/lang/String;
    .param p2, "clientId"  # Ljava/lang/String;
    .param p3, "name"  # Ljava/lang/String;
    .param p4, "listener"  # Landroid/net/ipmemorystore/IOnBlobRetrievedListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 319
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 321
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_4
    const-string v1, "android.net.IIpMemoryStore"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 322
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 323
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 324
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 325
    const/4 v1, 0x0

    if-eqz p4, :cond_1a

    invoke-interface {p4}, Landroid/net/ipmemorystore/IOnBlobRetrievedListener;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    goto :goto_1b

    :cond_1a
    move-object v2, v1

    :goto_1b
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 326
    iget-object v2, p0, Landroid/net/IIpMemoryStore$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x6

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    .line 327
    .local v1, "_status":Z
    if-nez v1, :cond_39

    invoke-static {}, Landroid/net/IIpMemoryStore$Stub;->getDefaultImpl()Landroid/net/IIpMemoryStore;

    move-result-object v2

    if-eqz v2, :cond_39

    .line 328
    invoke-static {}, Landroid/net/IIpMemoryStore$Stub;->getDefaultImpl()Landroid/net/IIpMemoryStore;

    move-result-object v2

    invoke-interface {v2, p1, p2, p3, p4}, Landroid/net/IIpMemoryStore;->retrieveBlob(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/net/ipmemorystore/IOnBlobRetrievedListener;)V
    :try_end_35
    .catchall {:try_start_4 .. :try_end_35} :catchall_3e

    .line 333
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 329
    return-void

    .line 333
    .end local v1  # "_status":Z
    :cond_39
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 334
    nop

    .line 335
    return-void

    .line 333
    :catchall_3e
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v1
.end method

.method public retrieveNetworkAttributes(Ljava/lang/String;Landroid/net/ipmemorystore/IOnNetworkAttributesRetrievedListener;)V
    .registers 8
    .param p1, "l2Key"  # Ljava/lang/String;
    .param p2, "listener"  # Landroid/net/ipmemorystore/IOnNetworkAttributesRetrievedListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 302
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 304
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_4
    const-string v1, "android.net.IIpMemoryStore"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 305
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 306
    const/4 v1, 0x0

    if-eqz p2, :cond_14

    invoke-interface {p2}, Landroid/net/ipmemorystore/IOnNetworkAttributesRetrievedListener;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    goto :goto_15

    :cond_14
    move-object v2, v1

    :goto_15
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 307
    iget-object v2, p0, Landroid/net/IIpMemoryStore$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x5

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    .line 308
    .local v1, "_status":Z
    if-nez v1, :cond_33

    invoke-static {}, Landroid/net/IIpMemoryStore$Stub;->getDefaultImpl()Landroid/net/IIpMemoryStore;

    move-result-object v2

    if-eqz v2, :cond_33

    .line 309
    invoke-static {}, Landroid/net/IIpMemoryStore$Stub;->getDefaultImpl()Landroid/net/IIpMemoryStore;

    move-result-object v2

    invoke-interface {v2, p1, p2}, Landroid/net/IIpMemoryStore;->retrieveNetworkAttributes(Ljava/lang/String;Landroid/net/ipmemorystore/IOnNetworkAttributesRetrievedListener;)V
    :try_end_2f
    .catchall {:try_start_4 .. :try_end_2f} :catchall_38

    .line 314
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 310
    return-void

    .line 314
    .end local v1  # "_status":Z
    :cond_33
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 315
    nop

    .line 316
    return-void

    .line 314
    :catchall_38
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v1
.end method

.method public storeBlob(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/net/ipmemorystore/Blob;Landroid/net/ipmemorystore/IOnStatusListener;)V
    .registers 15
    .param p1, "l2Key"  # Ljava/lang/String;
    .param p2, "clientId"  # Ljava/lang/String;
    .param p3, "name"  # Ljava/lang/String;
    .param p4, "data"  # Landroid/net/ipmemorystore/Blob;
    .param p5, "listener"  # Landroid/net/ipmemorystore/IOnStatusListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 235
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 237
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_4
    const-string v1, "android.net.IIpMemoryStore"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 238
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 239
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 240
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 241
    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz p4, :cond_1d

    .line 242
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 243
    invoke-virtual {p4, v0, v2}, Landroid/net/ipmemorystore/Blob;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_20

    .line 246
    :cond_1d
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 248
    :goto_20
    const/4 v2, 0x0

    if-eqz p5, :cond_28

    invoke-interface {p5}, Landroid/net/ipmemorystore/IOnStatusListener;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    goto :goto_29

    :cond_28
    move-object v3, v2

    :goto_29
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 249
    iget-object v3, p0, Landroid/net/IIpMemoryStore$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v4, 0x2

    invoke-interface {v3, v4, v0, v2, v1}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    .line 250
    .local v1, "_status":Z
    if-nez v1, :cond_4b

    invoke-static {}, Landroid/net/IIpMemoryStore$Stub;->getDefaultImpl()Landroid/net/IIpMemoryStore;

    move-result-object v2

    if-eqz v2, :cond_4b

    .line 251
    invoke-static {}, Landroid/net/IIpMemoryStore$Stub;->getDefaultImpl()Landroid/net/IIpMemoryStore;

    move-result-object v3

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    move-object v7, p4

    move-object v8, p5

    invoke-interface/range {v3 .. v8}, Landroid/net/IIpMemoryStore;->storeBlob(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/net/ipmemorystore/Blob;Landroid/net/ipmemorystore/IOnStatusListener;)V
    :try_end_47
    .catchall {:try_start_4 .. :try_end_47} :catchall_50

    .line 256
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 252
    return-void

    .line 256
    .end local v1  # "_status":Z
    :cond_4b
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 257
    nop

    .line 258
    return-void

    .line 256
    :catchall_50
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v1
.end method

.method public storeNetworkAttributes(Ljava/lang/String;Landroid/net/ipmemorystore/NetworkAttributesParcelable;Landroid/net/ipmemorystore/IOnStatusListener;)V
    .registers 8
    .param p1, "l2Key"  # Ljava/lang/String;
    .param p2, "attributes"  # Landroid/net/ipmemorystore/NetworkAttributesParcelable;
    .param p3, "listener"  # Landroid/net/ipmemorystore/IOnStatusListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 211
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 213
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_4
    const-string v1, "android.net.IIpMemoryStore"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 214
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 215
    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz p2, :cond_17

    .line 216
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 217
    invoke-virtual {p2, v0, v1}, Landroid/net/ipmemorystore/NetworkAttributesParcelable;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_1a

    .line 220
    :cond_17
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 222
    :goto_1a
    const/4 v1, 0x0

    if-eqz p3, :cond_22

    invoke-interface {p3}, Landroid/net/ipmemorystore/IOnStatusListener;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    goto :goto_23

    :cond_22
    move-object v3, v1

    :goto_23
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 223
    iget-object v3, p0, Landroid/net/IIpMemoryStore$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    invoke-interface {v3, v2, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    .line 224
    .local v1, "_status":Z
    if-nez v1, :cond_3f

    invoke-static {}, Landroid/net/IIpMemoryStore$Stub;->getDefaultImpl()Landroid/net/IIpMemoryStore;

    move-result-object v2

    if-eqz v2, :cond_3f

    .line 225
    invoke-static {}, Landroid/net/IIpMemoryStore$Stub;->getDefaultImpl()Landroid/net/IIpMemoryStore;

    move-result-object v2

    invoke-interface {v2, p1, p2, p3}, Landroid/net/IIpMemoryStore;->storeNetworkAttributes(Ljava/lang/String;Landroid/net/ipmemorystore/NetworkAttributesParcelable;Landroid/net/ipmemorystore/IOnStatusListener;)V
    :try_end_3b
    .catchall {:try_start_4 .. :try_end_3b} :catchall_44

    .line 230
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 226
    return-void

    .line 230
    .end local v1  # "_status":Z
    :cond_3f
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 231
    nop

    .line 232
    return-void

    .line 230
    :catchall_44
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v1
.end method
