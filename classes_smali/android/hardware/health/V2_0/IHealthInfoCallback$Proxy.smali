.class public final Landroid/hardware/health/V2_0/IHealthInfoCallback$Proxy;
.super Ljava/lang/Object;
.source "IHealthInfoCallback.java"

# interfaces
.implements Landroid/hardware/health/V2_0/IHealthInfoCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/health/V2_0/IHealthInfoCallback;
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

    .line 115
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 116
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/IHwBinder;

    iput-object p1, p0, Landroid/hardware/health/V2_0/IHealthInfoCallback$Proxy;->mRemote:Landroid/os/IHwBinder;

    .line 117
    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IHwBinder;
    .registers 2

    .line 121
    iget-object v0, p0, Landroid/hardware/health/V2_0/IHealthInfoCallback$Proxy;->mRemote:Landroid/os/IHwBinder;

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

    .line 184
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 185
    const-string v1, "android.hidl.base@1.0::IBase"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 186
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeNativeHandle(Landroid/os/NativeHandle;)V

    .line 187
    invoke-virtual {v0, p2}, Landroid/os/HwParcel;->writeStringVector(Ljava/util/ArrayList;)V

    .line 189
    new-instance p1, Landroid/os/HwParcel;

    invoke-direct {p1}, Landroid/os/HwParcel;-><init>()V

    .line 191
    :try_start_15
    iget-object p2, p0, Landroid/hardware/health/V2_0/IHealthInfoCallback$Proxy;->mRemote:Landroid/os/IHwBinder;

    const v1, 0xf444247

    const/4 v2, 0x0

    invoke-interface {p2, v1, v0, p1, v2}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 192
    invoke-virtual {p1}, Landroid/os/HwParcel;->verifySuccess()V

    .line 193
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_24
    .catchall {:try_start_15 .. :try_end_24} :catchall_29

    .line 195
    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 196
    nop

    .line 197
    return-void

    .line 195
    :catchall_29
    move-exception p2

    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    throw p2
.end method

.method public final equals(Ljava/lang/Object;)Z
    .registers 2

    .line 136
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

    .line 296
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 297
    const-string v1, "android.hidl.base@1.0::IBase"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 299
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 301
    :try_start_f
    iget-object v2, p0, Landroid/hardware/health/V2_0/IHealthInfoCallback$Proxy;->mRemote:Landroid/os/IHwBinder;

    const v3, 0xf524546

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 302
    invoke-virtual {v1}, Landroid/os/HwParcel;->verifySuccess()V

    .line 303
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    .line 305
    new-instance v0, Landroid/hidl/base/V1_0/DebugInfo;

    invoke-direct {v0}, Landroid/hidl/base/V1_0/DebugInfo;-><init>()V

    .line 306
    invoke-virtual {v0, v1}, Landroid/hidl/base/V1_0/DebugInfo;->readFromParcel(Landroid/os/HwParcel;)V
    :try_end_26
    .catchall {:try_start_f .. :try_end_26} :catchall_2b

    .line 307
    nop

    .line 309
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 307
    return-object v0

    .line 309
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

    .line 221
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 222
    const-string v1, "android.hidl.base@1.0::IBase"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 224
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 226
    :try_start_f
    iget-object v2, p0, Landroid/hardware/health/V2_0/IHealthInfoCallback$Proxy;->mRemote:Landroid/os/IHwBinder;

    const v3, 0xf485348

    const/4 v10, 0x0

    invoke-interface {v2, v3, v0, v1, v10}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 227
    invoke-virtual {v1}, Landroid/os/HwParcel;->verifySuccess()V

    .line 228
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    .line 230
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 232
    const-wide/16 v2, 0x10

    invoke-virtual {v1, v2, v3}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    move-result-object v2

    .line 234
    const-wide/16 v3, 0x8

    invoke-virtual {v2, v3, v4}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v11

    .line 235
    mul-int/lit8 v3, v11, 0x20

    int-to-long v3, v3

    .line 236
    invoke-virtual {v2}, Landroid/os/HwBlob;->handle()J

    move-result-wide v5

    const-wide/16 v7, 0x0

    const/4 v9, 0x1

    .line 235
    move-object v2, v1

    invoke-virtual/range {v2 .. v9}, Landroid/os/HwParcel;->readEmbeddedBuffer(JJJZ)Landroid/os/HwBlob;

    move-result-object v2

    .line 239
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 240
    nop

    :goto_42
    if-ge v10, v11, :cond_55

    .line 241
    const/16 v3, 0x20

    new-array v4, v3, [B

    .line 243
    mul-int/lit8 v5, v10, 0x20

    int-to-long v5, v5

    .line 244
    invoke-virtual {v2, v5, v6, v4, v3}, Landroid/os/HwBlob;->copyToInt8Array(J[BI)V

    .line 245
    nop

    .line 247
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_52
    .catchall {:try_start_f .. :try_end_52} :catchall_5a

    .line 240
    add-int/lit8 v10, v10, 0x1

    goto :goto_42

    .line 251
    :cond_55
    nop

    .line 253
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 251
    return-object v0

    .line 253
    :catchall_5a
    move-exception v0

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    throw v0
.end method

.method public final hashCode()I
    .registers 2

    .line 141
    invoke-virtual {p0}, Landroid/hardware/health/V2_0/IHealthInfoCallback$Proxy;->asBinder()Landroid/os/IHwBinder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public healthInfoChanged(Landroid/hardware/health/V2_0/HealthInfo;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 148
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 149
    const-string v1, "android.hardware.health@2.0::IHealthInfoCallback"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 150
    invoke-virtual {p1, v0}, Landroid/hardware/health/V2_0/HealthInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 152
    new-instance p1, Landroid/os/HwParcel;

    invoke-direct {p1}, Landroid/os/HwParcel;-><init>()V

    .line 154
    :try_start_12
    iget-object v1, p0, Landroid/hardware/health/V2_0/IHealthInfoCallback$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/4 v2, 0x1

    invoke-interface {v1, v2, v0, p1, v2}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 155
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_1b
    .catchall {:try_start_12 .. :try_end_1b} :catchall_20

    .line 157
    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 158
    nop

    .line 159
    return-void

    .line 157
    :catchall_20
    move-exception v0

    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    throw v0
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

    .line 165
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 166
    const-string v1, "android.hidl.base@1.0::IBase"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 168
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 170
    :try_start_f
    iget-object v2, p0, Landroid/hardware/health/V2_0/IHealthInfoCallback$Proxy;->mRemote:Landroid/os/IHwBinder;

    const v3, 0xf43484e

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 171
    invoke-virtual {v1}, Landroid/os/HwParcel;->verifySuccess()V

    .line 172
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    .line 174
    invoke-virtual {v1}, Landroid/os/HwParcel;->readStringVector()Ljava/util/ArrayList;

    move-result-object v0
    :try_end_22
    .catchall {:try_start_f .. :try_end_22} :catchall_27

    .line 175
    nop

    .line 177
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 175
    return-object v0

    .line 177
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

    .line 202
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 203
    const-string v1, "android.hidl.base@1.0::IBase"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 205
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 207
    :try_start_f
    iget-object v2, p0, Landroid/hardware/health/V2_0/IHealthInfoCallback$Proxy;->mRemote:Landroid/os/IHwBinder;

    const v3, 0xf445343

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 208
    invoke-virtual {v1}, Landroid/os/HwParcel;->verifySuccess()V

    .line 209
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    .line 211
    invoke-virtual {v1}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v0
    :try_end_22
    .catchall {:try_start_f .. :try_end_22} :catchall_27

    .line 212
    nop

    .line 214
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 212
    return-object v0

    .line 214
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

    .line 275
    iget-object v0, p0, Landroid/hardware/health/V2_0/IHealthInfoCallback$Proxy;->mRemote:Landroid/os/IHwBinder;

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

    .line 316
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 317
    const-string v1, "android.hidl.base@1.0::IBase"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 319
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 321
    :try_start_f
    iget-object v2, p0, Landroid/hardware/health/V2_0/IHealthInfoCallback$Proxy;->mRemote:Landroid/os/IHwBinder;

    const v3, 0xf535953

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 322
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_1b
    .catchall {:try_start_f .. :try_end_1b} :catchall_20

    .line 324
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 325
    nop

    .line 326
    return-void

    .line 324
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

    .line 280
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 281
    const-string v1, "android.hidl.base@1.0::IBase"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 283
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 285
    :try_start_f
    iget-object v2, p0, Landroid/hardware/health/V2_0/IHealthInfoCallback$Proxy;->mRemote:Landroid/os/IHwBinder;

    const v3, 0xf504e47

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 286
    invoke-virtual {v1}, Landroid/os/HwParcel;->verifySuccess()V

    .line 287
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_1e
    .catchall {:try_start_f .. :try_end_1e} :catchall_23

    .line 289
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 290
    nop

    .line 291
    return-void

    .line 289
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

    .line 260
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 261
    const-string v1, "android.hidl.base@1.0::IBase"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 263
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 265
    :try_start_f
    iget-object v2, p0, Landroid/hardware/health/V2_0/IHealthInfoCallback$Proxy;->mRemote:Landroid/os/IHwBinder;

    const v3, 0xf494e54

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 266
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_1b
    .catchall {:try_start_f .. :try_end_1b} :catchall_20

    .line 268
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 269
    nop

    .line 270
    return-void

    .line 268
    :catchall_20
    move-exception v0

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    throw v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 127
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/hardware/health/V2_0/IHealthInfoCallback$Proxy;->interfaceDescriptor()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "@Proxy"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_15} :catch_16

    return-object v0

    .line 128
    :catch_16
    move-exception v0

    .line 131
    const-string v0, "[class or subclass of android.hardware.health@2.0::IHealthInfoCallback]@Proxy"

    return-object v0
.end method

.method public unlinkToDeath(Landroid/os/IHwBinder$DeathRecipient;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 331
    iget-object v0, p0, Landroid/hardware/health/V2_0/IHealthInfoCallback$Proxy;->mRemote:Landroid/os/IHwBinder;

    invoke-interface {v0, p1}, Landroid/os/IHwBinder;->unlinkToDeath(Landroid/os/IHwBinder$DeathRecipient;)Z

    move-result p1

    return p1
.end method
