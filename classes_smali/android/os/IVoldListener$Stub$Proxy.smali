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
    .param p1, "remote"  # Landroid/os/IBinder;

    .line 207
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 208
    iput-object p1, p0, Landroid/os/IVoldListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    .line 209
    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 2

    .line 212
    iget-object v0, p0, Landroid/os/IVoldListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-object v0
.end method

.method public getInterfaceDescriptor()Ljava/lang/String;
    .registers 2

    .line 216
    const-string v0, "android.os.IVoldListener"

    return-object v0
.end method

.method public onDiskCreated(Ljava/lang/String;Ljava/lang/String;I)V
    .registers 8
    .param p1, "diskId"  # Ljava/lang/String;
    .param p2, "uuid"  # Ljava/lang/String;
    .param p3, "flags"  # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 223
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 225
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_4
    const-string v1, "android.os.IVoldListener"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 226
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 227
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 228
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 229
    iget-object v1, p0, Landroid/os/IVoldListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-interface {v1, v3, v0, v2, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    .line 230
    .local v1, "_status":Z
    if-nez v1, :cond_2d

    invoke-static {}, Landroid/os/IVoldListener$Stub;->getDefaultImpl()Landroid/os/IVoldListener;

    move-result-object v2

    if-eqz v2, :cond_2d

    .line 231
    invoke-static {}, Landroid/os/IVoldListener$Stub;->getDefaultImpl()Landroid/os/IVoldListener;

    move-result-object v2

    invoke-interface {v2, p1, p2, p3}, Landroid/os/IVoldListener;->onDiskCreated(Ljava/lang/String;Ljava/lang/String;I)V
    :try_end_29
    .catchall {:try_start_4 .. :try_end_29} :catchall_32

    .line 236
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 232
    return-void

    .line 236
    .end local v1  # "_status":Z
    :cond_2d
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 237
    nop

    .line 238
    return-void

    .line 236
    :catchall_32
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v1
.end method

.method public onDiskDestroyed(Ljava/lang/String;)V
    .registers 7
    .param p1, "diskId"  # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 278
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 280
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_4
    const-string v1, "android.os.IVoldListener"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 281
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 282
    iget-object v1, p0, Landroid/os/IVoldListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x4

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    .line 283
    .local v1, "_status":Z
    if-nez v1, :cond_28

    invoke-static {}, Landroid/os/IVoldListener$Stub;->getDefaultImpl()Landroid/os/IVoldListener;

    move-result-object v2

    if-eqz v2, :cond_28

    .line 284
    invoke-static {}, Landroid/os/IVoldListener$Stub;->getDefaultImpl()Landroid/os/IVoldListener;

    move-result-object v2

    invoke-interface {v2, p1}, Landroid/os/IVoldListener;->onDiskDestroyed(Ljava/lang/String;)V
    :try_end_24
    .catchall {:try_start_4 .. :try_end_24} :catchall_2d

    .line 289
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 285
    return-void

    .line 289
    .end local v1  # "_status":Z
    :cond_28
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 290
    nop

    .line 291
    return-void

    .line 289
    :catchall_2d
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v1
.end method

.method public onDiskMetadataChanged(Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;)V
    .registers 15
    .param p1, "diskId"  # Ljava/lang/String;
    .param p2, "sizeBytes"  # J
    .param p4, "label"  # Ljava/lang/String;
    .param p5, "sysPath"  # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 259
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 261
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_4
    const-string v1, "android.os.IVoldListener"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 262
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 263
    invoke-virtual {v0, p2, p3}, Landroid/os/Parcel;->writeLong(J)V

    .line 264
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 265
    invoke-virtual {v0, p5}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 266
    iget-object v1, p0, Landroid/os/IVoldListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x3

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    .line 267
    .local v1, "_status":Z
    if-nez v1, :cond_35

    invoke-static {}, Landroid/os/IVoldListener$Stub;->getDefaultImpl()Landroid/os/IVoldListener;

    move-result-object v2

    if-eqz v2, :cond_35

    .line 268
    invoke-static {}, Landroid/os/IVoldListener$Stub;->getDefaultImpl()Landroid/os/IVoldListener;

    move-result-object v3

    move-object v4, p1

    move-wide v5, p2

    move-object v7, p4

    move-object v8, p5

    invoke-interface/range {v3 .. v8}, Landroid/os/IVoldListener;->onDiskMetadataChanged(Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;)V
    :try_end_31
    .catchall {:try_start_4 .. :try_end_31} :catchall_3a

    .line 273
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 269
    return-void

    .line 273
    .end local v1  # "_status":Z
    :cond_35
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 274
    nop

    .line 275
    return-void

    .line 273
    :catchall_3a
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v1
.end method

.method public onDiskScanned(Ljava/lang/String;)V
    .registers 7
    .param p1, "diskId"  # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 243
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 245
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_4
    const-string v1, "android.os.IVoldListener"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 246
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 247
    iget-object v1, p0, Landroid/os/IVoldListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    .line 248
    .local v1, "_status":Z
    if-nez v1, :cond_28

    invoke-static {}, Landroid/os/IVoldListener$Stub;->getDefaultImpl()Landroid/os/IVoldListener;

    move-result-object v2

    if-eqz v2, :cond_28

    .line 249
    invoke-static {}, Landroid/os/IVoldListener$Stub;->getDefaultImpl()Landroid/os/IVoldListener;

    move-result-object v2

    invoke-interface {v2, p1}, Landroid/os/IVoldListener;->onDiskScanned(Ljava/lang/String;)V
    :try_end_24
    .catchall {:try_start_4 .. :try_end_24} :catchall_2d

    .line 254
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 250
    return-void

    .line 254
    .end local v1  # "_status":Z
    :cond_28
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 255
    nop

    .line 256
    return-void

    .line 254
    :catchall_2d
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v1
.end method

.method public onVolumeCreated(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
    .registers 10
    .param p1, "volId"  # Ljava/lang/String;
    .param p2, "type"  # I
    .param p3, "diskId"  # Ljava/lang/String;
    .param p4, "partGuid"  # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 294
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 296
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_4
    const-string v1, "android.os.IVoldListener"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 297
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 298
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 299
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 300
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 301
    iget-object v1, p0, Landroid/os/IVoldListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x5

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    .line 302
    .local v1, "_status":Z
    if-nez v1, :cond_31

    invoke-static {}, Landroid/os/IVoldListener$Stub;->getDefaultImpl()Landroid/os/IVoldListener;

    move-result-object v2

    if-eqz v2, :cond_31

    .line 303
    invoke-static {}, Landroid/os/IVoldListener$Stub;->getDefaultImpl()Landroid/os/IVoldListener;

    move-result-object v2

    invoke-interface {v2, p1, p2, p3, p4}, Landroid/os/IVoldListener;->onVolumeCreated(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
    :try_end_2d
    .catchall {:try_start_4 .. :try_end_2d} :catchall_36

    .line 308
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 304
    return-void

    .line 308
    .end local v1  # "_status":Z
    :cond_31
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 309
    nop

    .line 310
    return-void

    .line 308
    :catchall_36
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v1
.end method

.method public onVolumeDestroyed(Ljava/lang/String;)V
    .registers 7
    .param p1, "volId"  # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 383
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 385
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_4
    const-string v1, "android.os.IVoldListener"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 386
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 387
    iget-object v1, p0, Landroid/os/IVoldListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0xa

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    .line 388
    .local v1, "_status":Z
    if-nez v1, :cond_29

    invoke-static {}, Landroid/os/IVoldListener$Stub;->getDefaultImpl()Landroid/os/IVoldListener;

    move-result-object v2

    if-eqz v2, :cond_29

    .line 389
    invoke-static {}, Landroid/os/IVoldListener$Stub;->getDefaultImpl()Landroid/os/IVoldListener;

    move-result-object v2

    invoke-interface {v2, p1}, Landroid/os/IVoldListener;->onVolumeDestroyed(Ljava/lang/String;)V
    :try_end_25
    .catchall {:try_start_4 .. :try_end_25} :catchall_2e

    .line 394
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 390
    return-void

    .line 394
    .end local v1  # "_status":Z
    :cond_29
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 395
    nop

    .line 396
    return-void

    .line 394
    :catchall_2e
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v1
.end method

.method public onVolumeInternalPathChanged(Ljava/lang/String;Ljava/lang/String;)V
    .registers 8
    .param p1, "volId"  # Ljava/lang/String;
    .param p2, "internalPath"  # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 366
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 368
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_4
    const-string v1, "android.os.IVoldListener"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 369
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 370
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 371
    iget-object v1, p0, Landroid/os/IVoldListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x9

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    .line 372
    .local v1, "_status":Z
    if-nez v1, :cond_2c

    invoke-static {}, Landroid/os/IVoldListener$Stub;->getDefaultImpl()Landroid/os/IVoldListener;

    move-result-object v2

    if-eqz v2, :cond_2c

    .line 373
    invoke-static {}, Landroid/os/IVoldListener$Stub;->getDefaultImpl()Landroid/os/IVoldListener;

    move-result-object v2

    invoke-interface {v2, p1, p2}, Landroid/os/IVoldListener;->onVolumeInternalPathChanged(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_28
    .catchall {:try_start_4 .. :try_end_28} :catchall_31

    .line 378
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 374
    return-void

    .line 378
    .end local v1  # "_status":Z
    :cond_2c
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 379
    nop

    .line 380
    return-void

    .line 378
    :catchall_31
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v1
.end method

.method public onVolumeMetadataChanged(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 10
    .param p1, "volId"  # Ljava/lang/String;
    .param p2, "fsType"  # Ljava/lang/String;
    .param p3, "fsUuid"  # Ljava/lang/String;
    .param p4, "fsLabel"  # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 330
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 332
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_4
    const-string v1, "android.os.IVoldListener"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 333
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 334
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 335
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 336
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 337
    iget-object v1, p0, Landroid/os/IVoldListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x7

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    .line 338
    .local v1, "_status":Z
    if-nez v1, :cond_31

    invoke-static {}, Landroid/os/IVoldListener$Stub;->getDefaultImpl()Landroid/os/IVoldListener;

    move-result-object v2

    if-eqz v2, :cond_31

    .line 339
    invoke-static {}, Landroid/os/IVoldListener$Stub;->getDefaultImpl()Landroid/os/IVoldListener;

    move-result-object v2

    invoke-interface {v2, p1, p2, p3, p4}, Landroid/os/IVoldListener;->onVolumeMetadataChanged(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2d
    .catchall {:try_start_4 .. :try_end_2d} :catchall_36

    .line 344
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 340
    return-void

    .line 344
    .end local v1  # "_status":Z
    :cond_31
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 345
    nop

    .line 346
    return-void

    .line 344
    :catchall_36
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v1
.end method

.method public onVolumePathChanged(Ljava/lang/String;Ljava/lang/String;)V
    .registers 8
    .param p1, "volId"  # Ljava/lang/String;
    .param p2, "path"  # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 349
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 351
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_4
    const-string v1, "android.os.IVoldListener"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 352
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 353
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 354
    iget-object v1, p0, Landroid/os/IVoldListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x8

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    .line 355
    .local v1, "_status":Z
    if-nez v1, :cond_2c

    invoke-static {}, Landroid/os/IVoldListener$Stub;->getDefaultImpl()Landroid/os/IVoldListener;

    move-result-object v2

    if-eqz v2, :cond_2c

    .line 356
    invoke-static {}, Landroid/os/IVoldListener$Stub;->getDefaultImpl()Landroid/os/IVoldListener;

    move-result-object v2

    invoke-interface {v2, p1, p2}, Landroid/os/IVoldListener;->onVolumePathChanged(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_28
    .catchall {:try_start_4 .. :try_end_28} :catchall_31

    .line 361
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 357
    return-void

    .line 361
    .end local v1  # "_status":Z
    :cond_2c
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 362
    nop

    .line 363
    return-void

    .line 361
    :catchall_31
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v1
.end method

.method public onVolumeStateChanged(Ljava/lang/String;I)V
    .registers 8
    .param p1, "volId"  # Ljava/lang/String;
    .param p2, "state"  # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 313
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 315
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_4
    const-string v1, "android.os.IVoldListener"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 316
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 317
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 318
    iget-object v1, p0, Landroid/os/IVoldListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x6

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    .line 319
    .local v1, "_status":Z
    if-nez v1, :cond_2b

    invoke-static {}, Landroid/os/IVoldListener$Stub;->getDefaultImpl()Landroid/os/IVoldListener;

    move-result-object v2

    if-eqz v2, :cond_2b

    .line 320
    invoke-static {}, Landroid/os/IVoldListener$Stub;->getDefaultImpl()Landroid/os/IVoldListener;

    move-result-object v2

    invoke-interface {v2, p1, p2}, Landroid/os/IVoldListener;->onVolumeStateChanged(Ljava/lang/String;I)V
    :try_end_27
    .catchall {:try_start_4 .. :try_end_27} :catchall_30

    .line 325
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 321
    return-void

    .line 325
    .end local v1  # "_status":Z
    :cond_2b
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 326
    nop

    .line 327
    return-void

    .line 325
    :catchall_30
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v1
.end method
