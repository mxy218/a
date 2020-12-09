.class Landroid/os/IVoldListener$Stub$Proxy;
.super Ljava/lang/Object;
.source "IVoldListener.java"

# interfaces
.implements Landroid/os/IVoldListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/IVoldListener$Stub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Proxy"
.end annotation


# static fields
.field public static sDefaultImpl:Landroid/os/IVoldListener;


# instance fields
.field private mRemote:Landroid/os/IBinder;


# direct methods
.method constructor <init>(Landroid/os/IBinder;)V
    .registers 2

    .line 200
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 201
    iput-object p1, p0, Landroid/os/IVoldListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    .line 202
    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 2

    .line 205
    iget-object v0, p0, Landroid/os/IVoldListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-object v0
.end method

.method public getInterfaceDescriptor()Ljava/lang/String;
    .registers 2

    .line 209
    const-string v0, "android.os.IVoldListener"

    return-object v0
.end method

.method public onDiskCreated(Ljava/lang/String;I)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 213
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 215
    :try_start_4
    const-string v1, "android.os.IVoldListener"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 216
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 217
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 218
    iget-object v1, p0, Landroid/os/IVoldListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-interface {v1, v3, v0, v2, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    .line 219
    if-nez v1, :cond_2a

    invoke-static {}, Landroid/os/IVoldListener$Stub;->getDefaultImpl()Landroid/os/IVoldListener;

    move-result-object v1

    if-eqz v1, :cond_2a

    .line 220
    invoke-static {}, Landroid/os/IVoldListener$Stub;->getDefaultImpl()Landroid/os/IVoldListener;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Landroid/os/IVoldListener;->onDiskCreated(Ljava/lang/String;I)V
    :try_end_26
    .catchall {:try_start_4 .. :try_end_26} :catchall_2f

    .line 225
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 221
    return-void

    .line 225
    :cond_2a
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 226
    nop

    .line 227
    return-void

    .line 225
    :catchall_2f
    move-exception p1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw p1
.end method

.method public onDiskDestroyed(Ljava/lang/String;)V
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
    const-string v1, "android.os.IVoldListener"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 268
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 269
    iget-object v1, p0, Landroid/os/IVoldListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x4

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    .line 270
    if-nez v1, :cond_28

    invoke-static {}, Landroid/os/IVoldListener$Stub;->getDefaultImpl()Landroid/os/IVoldListener;

    move-result-object v1

    if-eqz v1, :cond_28

    .line 271
    invoke-static {}, Landroid/os/IVoldListener$Stub;->getDefaultImpl()Landroid/os/IVoldListener;

    move-result-object v1

    invoke-interface {v1, p1}, Landroid/os/IVoldListener;->onDiskDestroyed(Ljava/lang/String;)V
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

.method public onDiskMetadataChanged(Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;)V
    .registers 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 246
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 248
    :try_start_4
    const-string v1, "android.os.IVoldListener"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 249
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 250
    invoke-virtual {v0, p2, p3}, Landroid/os/Parcel;->writeLong(J)V

    .line 251
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 252
    invoke-virtual {v0, p5}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 253
    iget-object v1, p0, Landroid/os/IVoldListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x3

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    .line 254
    if-nez v1, :cond_35

    invoke-static {}, Landroid/os/IVoldListener$Stub;->getDefaultImpl()Landroid/os/IVoldListener;

    move-result-object v1

    if-eqz v1, :cond_35

    .line 255
    invoke-static {}, Landroid/os/IVoldListener$Stub;->getDefaultImpl()Landroid/os/IVoldListener;

    move-result-object v2

    move-object v3, p1

    move-wide v4, p2

    move-object v6, p4

    move-object v7, p5

    invoke-interface/range {v2 .. v7}, Landroid/os/IVoldListener;->onDiskMetadataChanged(Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;)V
    :try_end_31
    .catchall {:try_start_4 .. :try_end_31} :catchall_3a

    .line 260
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 256
    return-void

    .line 260
    :cond_35
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 261
    nop

    .line 262
    return-void

    .line 260
    :catchall_3a
    move-exception p1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw p1
.end method

.method public onDiskScanned(Ljava/lang/String;)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 230
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 232
    :try_start_4
    const-string v1, "android.os.IVoldListener"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 233
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 234
    iget-object v1, p0, Landroid/os/IVoldListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    .line 235
    if-nez v1, :cond_28

    invoke-static {}, Landroid/os/IVoldListener$Stub;->getDefaultImpl()Landroid/os/IVoldListener;

    move-result-object v1

    if-eqz v1, :cond_28

    .line 236
    invoke-static {}, Landroid/os/IVoldListener$Stub;->getDefaultImpl()Landroid/os/IVoldListener;

    move-result-object v1

    invoke-interface {v1, p1}, Landroid/os/IVoldListener;->onDiskScanned(Ljava/lang/String;)V
    :try_end_24
    .catchall {:try_start_4 .. :try_end_24} :catchall_2d

    .line 241
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 237
    return-void

    .line 241
    :cond_28
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 242
    nop

    .line 243
    return-void

    .line 241
    :catchall_2d
    move-exception p1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw p1
.end method

.method public onVolumeCreated(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
    .registers 10
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
    const-string v1, "android.os.IVoldListener"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 284
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 285
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 286
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 287
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 288
    iget-object v1, p0, Landroid/os/IVoldListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x5

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    .line 289
    if-nez v1, :cond_31

    invoke-static {}, Landroid/os/IVoldListener$Stub;->getDefaultImpl()Landroid/os/IVoldListener;

    move-result-object v1

    if-eqz v1, :cond_31

    .line 290
    invoke-static {}, Landroid/os/IVoldListener$Stub;->getDefaultImpl()Landroid/os/IVoldListener;

    move-result-object v1

    invoke-interface {v1, p1, p2, p3, p4}, Landroid/os/IVoldListener;->onVolumeCreated(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
    :try_end_2d
    .catchall {:try_start_4 .. :try_end_2d} :catchall_36

    .line 295
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 291
    return-void

    .line 295
    :cond_31
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 296
    nop

    .line 297
    return-void

    .line 295
    :catchall_36
    move-exception p1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw p1
.end method

.method public onVolumeDestroyed(Ljava/lang/String;)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 370
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 372
    :try_start_4
    const-string v1, "android.os.IVoldListener"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 373
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 374
    iget-object v1, p0, Landroid/os/IVoldListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0xa

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    .line 375
    if-nez v1, :cond_29

    invoke-static {}, Landroid/os/IVoldListener$Stub;->getDefaultImpl()Landroid/os/IVoldListener;

    move-result-object v1

    if-eqz v1, :cond_29

    .line 376
    invoke-static {}, Landroid/os/IVoldListener$Stub;->getDefaultImpl()Landroid/os/IVoldListener;

    move-result-object v1

    invoke-interface {v1, p1}, Landroid/os/IVoldListener;->onVolumeDestroyed(Ljava/lang/String;)V
    :try_end_25
    .catchall {:try_start_4 .. :try_end_25} :catchall_2e

    .line 381
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 377
    return-void

    .line 381
    :cond_29
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 382
    nop

    .line 383
    return-void

    .line 381
    :catchall_2e
    move-exception p1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw p1
.end method

.method public onVolumeInternalPathChanged(Ljava/lang/String;Ljava/lang/String;)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 353
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 355
    :try_start_4
    const-string v1, "android.os.IVoldListener"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 356
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 357
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 358
    iget-object v1, p0, Landroid/os/IVoldListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x9

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    .line 359
    if-nez v1, :cond_2c

    invoke-static {}, Landroid/os/IVoldListener$Stub;->getDefaultImpl()Landroid/os/IVoldListener;

    move-result-object v1

    if-eqz v1, :cond_2c

    .line 360
    invoke-static {}, Landroid/os/IVoldListener$Stub;->getDefaultImpl()Landroid/os/IVoldListener;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Landroid/os/IVoldListener;->onVolumeInternalPathChanged(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_28
    .catchall {:try_start_4 .. :try_end_28} :catchall_31

    .line 365
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 361
    return-void

    .line 365
    :cond_2c
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 366
    nop

    .line 367
    return-void

    .line 365
    :catchall_31
    move-exception p1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw p1
.end method

.method public onVolumeMetadataChanged(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 317
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 319
    :try_start_4
    const-string v1, "android.os.IVoldListener"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 320
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 321
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 322
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 323
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 324
    iget-object v1, p0, Landroid/os/IVoldListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x7

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    .line 325
    if-nez v1, :cond_31

    invoke-static {}, Landroid/os/IVoldListener$Stub;->getDefaultImpl()Landroid/os/IVoldListener;

    move-result-object v1

    if-eqz v1, :cond_31

    .line 326
    invoke-static {}, Landroid/os/IVoldListener$Stub;->getDefaultImpl()Landroid/os/IVoldListener;

    move-result-object v1

    invoke-interface {v1, p1, p2, p3, p4}, Landroid/os/IVoldListener;->onVolumeMetadataChanged(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2d
    .catchall {:try_start_4 .. :try_end_2d} :catchall_36

    .line 331
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 327
    return-void

    .line 331
    :cond_31
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 332
    nop

    .line 333
    return-void

    .line 331
    :catchall_36
    move-exception p1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw p1
.end method

.method public onVolumePathChanged(Ljava/lang/String;Ljava/lang/String;)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 336
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 338
    :try_start_4
    const-string v1, "android.os.IVoldListener"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 339
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 340
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 341
    iget-object v1, p0, Landroid/os/IVoldListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x8

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    .line 342
    if-nez v1, :cond_2c

    invoke-static {}, Landroid/os/IVoldListener$Stub;->getDefaultImpl()Landroid/os/IVoldListener;

    move-result-object v1

    if-eqz v1, :cond_2c

    .line 343
    invoke-static {}, Landroid/os/IVoldListener$Stub;->getDefaultImpl()Landroid/os/IVoldListener;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Landroid/os/IVoldListener;->onVolumePathChanged(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_28
    .catchall {:try_start_4 .. :try_end_28} :catchall_31

    .line 348
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 344
    return-void

    .line 348
    :cond_2c
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 349
    nop

    .line 350
    return-void

    .line 348
    :catchall_31
    move-exception p1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw p1
.end method

.method public onVolumeStateChanged(Ljava/lang/String;I)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 300
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 302
    :try_start_4
    const-string v1, "android.os.IVoldListener"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 303
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 304
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 305
    iget-object v1, p0, Landroid/os/IVoldListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x6

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    .line 306
    if-nez v1, :cond_2b

    invoke-static {}, Landroid/os/IVoldListener$Stub;->getDefaultImpl()Landroid/os/IVoldListener;

    move-result-object v1

    if-eqz v1, :cond_2b

    .line 307
    invoke-static {}, Landroid/os/IVoldListener$Stub;->getDefaultImpl()Landroid/os/IVoldListener;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Landroid/os/IVoldListener;->onVolumeStateChanged(Ljava/lang/String;I)V
    :try_end_27
    .catchall {:try_start_4 .. :try_end_27} :catchall_30

    .line 312
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 308
    return-void

    .line 312
    :cond_2b
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 313
    nop

    .line 314
    return-void

    .line 312
    :catchall_30
    move-exception p1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw p1
.end method
