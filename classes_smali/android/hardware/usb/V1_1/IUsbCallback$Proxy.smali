.class public final Landroid/hardware/usb/V1_1/IUsbCallback$Proxy;
.super Ljava/lang/Object;
.source "IUsbCallback.java"

# interfaces
.implements Landroid/hardware/usb/V1_1/IUsbCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/usb/V1_1/IUsbCallback;
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

    .line 122
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 123
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/IHwBinder;

    iput-object p1, p0, Landroid/hardware/usb/V1_1/IUsbCallback$Proxy;->mRemote:Landroid/os/IHwBinder;

    .line 124
    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IHwBinder;
    .registers 2

    .line 128
    iget-object v0, p0, Landroid/hardware/usb/V1_1/IUsbCallback$Proxy;->mRemote:Landroid/os/IHwBinder;

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

    .line 228
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 229
    const-string v1, "android.hidl.base@1.0::IBase"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 230
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeNativeHandle(Landroid/os/NativeHandle;)V

    .line 231
    invoke-virtual {v0, p2}, Landroid/os/HwParcel;->writeStringVector(Ljava/util/ArrayList;)V

    .line 233
    new-instance p1, Landroid/os/HwParcel;

    invoke-direct {p1}, Landroid/os/HwParcel;-><init>()V

    .line 235
    :try_start_15
    iget-object p2, p0, Landroid/hardware/usb/V1_1/IUsbCallback$Proxy;->mRemote:Landroid/os/IHwBinder;

    const v1, 0xf444247

    const/4 v2, 0x0

    invoke-interface {p2, v1, v0, p1, v2}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 236
    invoke-virtual {p1}, Landroid/os/HwParcel;->verifySuccess()V

    .line 237
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_24
    .catchall {:try_start_15 .. :try_end_24} :catchall_29

    .line 239
    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 240
    nop

    .line 241
    return-void

    .line 239
    :catchall_29
    move-exception p2

    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    throw p2
.end method

.method public final equals(Ljava/lang/Object;)Z
    .registers 2

    .line 143
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

    .line 340
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 341
    const-string v1, "android.hidl.base@1.0::IBase"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 343
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 345
    :try_start_f
    iget-object v2, p0, Landroid/hardware/usb/V1_1/IUsbCallback$Proxy;->mRemote:Landroid/os/IHwBinder;

    const v3, 0xf524546

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 346
    invoke-virtual {v1}, Landroid/os/HwParcel;->verifySuccess()V

    .line 347
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    .line 349
    new-instance v0, Landroid/hidl/base/V1_0/DebugInfo;

    invoke-direct {v0}, Landroid/hidl/base/V1_0/DebugInfo;-><init>()V

    .line 350
    invoke-virtual {v0, v1}, Landroid/hidl/base/V1_0/DebugInfo;->readFromParcel(Landroid/os/HwParcel;)V
    :try_end_26
    .catchall {:try_start_f .. :try_end_26} :catchall_2b

    .line 351
    nop

    .line 353
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 351
    return-object v0

    .line 353
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

    .line 265
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 266
    const-string v1, "android.hidl.base@1.0::IBase"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 268
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 270
    :try_start_f
    iget-object v2, p0, Landroid/hardware/usb/V1_1/IUsbCallback$Proxy;->mRemote:Landroid/os/IHwBinder;

    const v3, 0xf485348

    const/4 v10, 0x0

    invoke-interface {v2, v3, v0, v1, v10}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 271
    invoke-virtual {v1}, Landroid/os/HwParcel;->verifySuccess()V

    .line 272
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    .line 274
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 276
    const-wide/16 v2, 0x10

    invoke-virtual {v1, v2, v3}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    move-result-object v2

    .line 278
    const-wide/16 v3, 0x8

    invoke-virtual {v2, v3, v4}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v11

    .line 279
    mul-int/lit8 v3, v11, 0x20

    int-to-long v3, v3

    .line 280
    invoke-virtual {v2}, Landroid/os/HwBlob;->handle()J

    move-result-wide v5

    const-wide/16 v7, 0x0

    const/4 v9, 0x1

    .line 279
    move-object v2, v1

    invoke-virtual/range {v2 .. v9}, Landroid/os/HwParcel;->readEmbeddedBuffer(JJJZ)Landroid/os/HwBlob;

    move-result-object v2

    .line 283
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 284
    nop

    :goto_42
    if-ge v10, v11, :cond_55

    .line 285
    const/16 v3, 0x20

    new-array v4, v3, [B

    .line 287
    mul-int/lit8 v5, v10, 0x20

    int-to-long v5, v5

    .line 288
    invoke-virtual {v2, v5, v6, v4, v3}, Landroid/os/HwBlob;->copyToInt8Array(J[BI)V

    .line 289
    nop

    .line 291
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_52
    .catchall {:try_start_f .. :try_end_52} :catchall_5a

    .line 284
    add-int/lit8 v10, v10, 0x1

    goto :goto_42

    .line 295
    :cond_55
    nop

    .line 297
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 295
    return-object v0

    .line 297
    :catchall_5a
    move-exception v0

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    throw v0
.end method

.method public final hashCode()I
    .registers 2

    .line 148
    invoke-virtual {p0}, Landroid/hardware/usb/V1_1/IUsbCallback$Proxy;->asBinder()Landroid/os/IHwBinder;

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

    .line 209
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 210
    const-string v1, "android.hidl.base@1.0::IBase"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 212
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 214
    :try_start_f
    iget-object v2, p0, Landroid/hardware/usb/V1_1/IUsbCallback$Proxy;->mRemote:Landroid/os/IHwBinder;

    const v3, 0xf43484e

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 215
    invoke-virtual {v1}, Landroid/os/HwParcel;->verifySuccess()V

    .line 216
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    .line 218
    invoke-virtual {v1}, Landroid/os/HwParcel;->readStringVector()Ljava/util/ArrayList;

    move-result-object v0
    :try_end_22
    .catchall {:try_start_f .. :try_end_22} :catchall_27

    .line 219
    nop

    .line 221
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 219
    return-object v0

    .line 221
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

    .line 246
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 247
    const-string v1, "android.hidl.base@1.0::IBase"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 249
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 251
    :try_start_f
    iget-object v2, p0, Landroid/hardware/usb/V1_1/IUsbCallback$Proxy;->mRemote:Landroid/os/IHwBinder;

    const v3, 0xf445343

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 252
    invoke-virtual {v1}, Landroid/os/HwParcel;->verifySuccess()V

    .line 253
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    .line 255
    invoke-virtual {v1}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v0
    :try_end_22
    .catchall {:try_start_f .. :try_end_22} :catchall_27

    .line 256
    nop

    .line 258
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 256
    return-object v0

    .line 258
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

    .line 319
    iget-object v0, p0, Landroid/hardware/usb/V1_1/IUsbCallback$Proxy;->mRemote:Landroid/os/IHwBinder;

    invoke-interface {v0, p1, p2, p3}, Landroid/os/IHwBinder;->linkToDeath(Landroid/os/IHwBinder$DeathRecipient;J)Z

    move-result p1

    return p1
.end method

.method public notifyPortStatusChange(Ljava/util/ArrayList;I)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/hardware/usb/V1_0/PortStatus;",
            ">;I)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 155
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 156
    const-string v1, "android.hardware.usb@1.0::IUsbCallback"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 157
    invoke-static {v0, p1}, Landroid/hardware/usb/V1_0/PortStatus;->writeVectorToParcel(Landroid/os/HwParcel;Ljava/util/ArrayList;)V

    .line 158
    invoke-virtual {v0, p2}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 160
    new-instance p1, Landroid/os/HwParcel;

    invoke-direct {p1}, Landroid/os/HwParcel;-><init>()V

    .line 162
    :try_start_15
    iget-object p2, p0, Landroid/hardware/usb/V1_1/IUsbCallback$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/4 v1, 0x1

    invoke-interface {p2, v1, v0, p1, v1}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 163
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_1e
    .catchall {:try_start_15 .. :try_end_1e} :catchall_23

    .line 165
    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 166
    nop

    .line 167
    return-void

    .line 165
    :catchall_23
    move-exception p2

    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    throw p2
.end method

.method public notifyPortStatusChange_1_1(Ljava/util/ArrayList;I)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/hardware/usb/V1_1/PortStatus_1_1;",
            ">;I)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 191
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 192
    const-string v1, "android.hardware.usb@1.1::IUsbCallback"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 193
    invoke-static {v0, p1}, Landroid/hardware/usb/V1_1/PortStatus_1_1;->writeVectorToParcel(Landroid/os/HwParcel;Ljava/util/ArrayList;)V

    .line 194
    invoke-virtual {v0, p2}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 196
    new-instance p1, Landroid/os/HwParcel;

    invoke-direct {p1}, Landroid/os/HwParcel;-><init>()V

    .line 198
    :try_start_15
    iget-object p2, p0, Landroid/hardware/usb/V1_1/IUsbCallback$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/4 v1, 0x3

    const/4 v2, 0x1

    invoke-interface {p2, v1, v0, p1, v2}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 199
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_1f
    .catchall {:try_start_15 .. :try_end_1f} :catchall_24

    .line 201
    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 202
    nop

    .line 203
    return-void

    .line 201
    :catchall_24
    move-exception p2

    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    throw p2
.end method

.method public notifyRoleSwitchStatus(Ljava/lang/String;Landroid/hardware/usb/V1_0/PortRole;I)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 172
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 173
    const-string v1, "android.hardware.usb@1.0::IUsbCallback"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 174
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 175
    invoke-virtual {p2, v0}, Landroid/hardware/usb/V1_0/PortRole;->writeToParcel(Landroid/os/HwParcel;)V

    .line 176
    invoke-virtual {v0, p3}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 178
    new-instance p1, Landroid/os/HwParcel;

    invoke-direct {p1}, Landroid/os/HwParcel;-><init>()V

    .line 180
    :try_start_18
    iget-object p2, p0, Landroid/hardware/usb/V1_1/IUsbCallback$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/4 p3, 0x2

    const/4 v1, 0x1

    invoke-interface {p2, p3, v0, p1, v1}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 181
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_22
    .catchall {:try_start_18 .. :try_end_22} :catchall_27

    .line 183
    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 184
    nop

    .line 185
    return-void

    .line 183
    :catchall_27
    move-exception p2

    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    throw p2
.end method

.method public notifySyspropsChanged()V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 360
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 361
    const-string v1, "android.hidl.base@1.0::IBase"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 363
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 365
    :try_start_f
    iget-object v2, p0, Landroid/hardware/usb/V1_1/IUsbCallback$Proxy;->mRemote:Landroid/os/IHwBinder;

    const v3, 0xf535953

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 366
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_1b
    .catchall {:try_start_f .. :try_end_1b} :catchall_20

    .line 368
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 369
    nop

    .line 370
    return-void

    .line 368
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

    .line 324
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 325
    const-string v1, "android.hidl.base@1.0::IBase"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 327
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 329
    :try_start_f
    iget-object v2, p0, Landroid/hardware/usb/V1_1/IUsbCallback$Proxy;->mRemote:Landroid/os/IHwBinder;

    const v3, 0xf504e47

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 330
    invoke-virtual {v1}, Landroid/os/HwParcel;->verifySuccess()V

    .line 331
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_1e
    .catchall {:try_start_f .. :try_end_1e} :catchall_23

    .line 333
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 334
    nop

    .line 335
    return-void

    .line 333
    :catchall_23
    move-exception v0

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    throw v0
.end method

.method public setHALInstrumentation()V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 304
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 305
    const-string v1, "android.hidl.base@1.0::IBase"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 307
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 309
    :try_start_f
    iget-object v2, p0, Landroid/hardware/usb/V1_1/IUsbCallback$Proxy;->mRemote:Landroid/os/IHwBinder;

    const v3, 0xf494e54

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 310
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_1b
    .catchall {:try_start_f .. :try_end_1b} :catchall_20

    .line 312
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 313
    nop

    .line 314
    return-void

    .line 312
    :catchall_20
    move-exception v0

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    throw v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 134
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/hardware/usb/V1_1/IUsbCallback$Proxy;->interfaceDescriptor()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "@Proxy"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_15} :catch_16

    return-object v0

    .line 135
    :catch_16
    move-exception v0

    .line 138
    const-string v0, "[class or subclass of android.hardware.usb@1.1::IUsbCallback]@Proxy"

    return-object v0
.end method

.method public unlinkToDeath(Landroid/os/IHwBinder$DeathRecipient;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 375
    iget-object v0, p0, Landroid/hardware/usb/V1_1/IUsbCallback$Proxy;->mRemote:Landroid/os/IHwBinder;

    invoke-interface {v0, p1}, Landroid/os/IHwBinder;->unlinkToDeath(Landroid/os/IHwBinder$DeathRecipient;)Z

    move-result p1

    return p1
.end method
