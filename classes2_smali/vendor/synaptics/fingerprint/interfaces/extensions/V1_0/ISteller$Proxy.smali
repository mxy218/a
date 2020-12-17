.class public final Lvendor/synaptics/fingerprint/interfaces/extensions/V1_0/ISteller$Proxy;
.super Ljava/lang/Object;
.source "ISteller.java"

# interfaces
.implements Lvendor/synaptics/fingerprint/interfaces/extensions/V1_0/ISteller;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lvendor/synaptics/fingerprint/interfaces/extensions/V1_0/ISteller;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Proxy"
.end annotation


# instance fields
.field private mRemote:Landroid/os/IHwBinder;


# direct methods
.method public constructor <init>(Landroid/os/IHwBinder;)V
    .registers 3
    .param p1, "remote"  # Landroid/os/IHwBinder;

    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/IHwBinder;

    iput-object v0, p0, Lvendor/synaptics/fingerprint/interfaces/extensions/V1_0/ISteller$Proxy;->mRemote:Landroid/os/IHwBinder;

    .line 75
    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IHwBinder;
    .registers 2

    .line 79
    iget-object v0, p0, Lvendor/synaptics/fingerprint/interfaces/extensions/V1_0/ISteller$Proxy;->mRemote:Landroid/os/IHwBinder;

    return-object v0
.end method

.method public auxTemplateUpdate([BILvendor/synaptics/fingerprint/interfaces/extensions/V1_0/IStellerClientCallback;)I
    .registers 12
    .param p1, "hat"  # [B
    .param p2, "data"  # I
    .param p3, "callback"  # Lvendor/synaptics/fingerprint/interfaces/extensions/V1_0/IStellerClientCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 118
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 119
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "vendor.synaptics.fingerprint.interfaces.extensions@1.0::ISteller"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 121
    new-instance v1, Landroid/os/HwBlob;

    const/16 v2, 0x45

    invoke-direct {v1, v2}, Landroid/os/HwBlob;-><init>(I)V

    .line 123
    .local v1, "_hidl_blob":Landroid/os/HwBlob;
    const-wide/16 v3, 0x0

    .line 124
    .local v3, "_hidl_array_offset_0":J
    const/4 v5, 0x0

    .local v5, "_hidl_index_0_0":I
    :goto_14
    if-ge v5, v2, :cond_21

    .line 125
    aget-byte v6, p1, v5

    invoke-virtual {v1, v3, v4, v6}, Landroid/os/HwBlob;->putInt8(JB)V

    .line 126
    const-wide/16 v6, 0x1

    add-long/2addr v3, v6

    .line 124
    add-int/lit8 v5, v5, 0x1

    goto :goto_14

    .line 129
    .end local v3  # "_hidl_array_offset_0":J
    .end local v5  # "_hidl_index_0_0":I
    :cond_21
    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    .line 131
    .end local v1  # "_hidl_blob":Landroid/os/HwBlob;
    invoke-virtual {v0, p2}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 132
    if-nez p3, :cond_2b

    const/4 v1, 0x0

    goto :goto_2f

    :cond_2b
    invoke-interface {p3}, Lvendor/synaptics/fingerprint/interfaces/extensions/V1_0/IStellerClientCallback;->asBinder()Landroid/os/IHwBinder;

    move-result-object v1

    :goto_2f
    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeStrongBinder(Landroid/os/IHwBinder;)V

    .line 134
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 136
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_37
    iget-object v2, p0, Lvendor/synaptics/fingerprint/interfaces/extensions/V1_0/ISteller$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/4 v3, 0x2

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 137
    invoke-virtual {v1}, Landroid/os/HwParcel;->verifySuccess()V

    .line 138
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    .line 140
    invoke-virtual {v1}, Landroid/os/HwParcel;->readInt32()I

    move-result v2
    :try_end_48
    .catchall {:try_start_37 .. :try_end_48} :catchall_4d

    .line 141
    .local v2, "_hidl_out_ret":I
    nop

    .line 143
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 141
    return v2

    .line 143
    .end local v2  # "_hidl_out_ret":I
    :catchall_4d
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 144
    throw v2
.end method

.method public getDebugInfo()Landroid/hidl/base/V1_0/DebugInfo;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 266
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 267
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "android.hidl.base@1.0::IBase"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 269
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 271
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_f
    iget-object v2, p0, Lvendor/synaptics/fingerprint/interfaces/extensions/V1_0/ISteller$Proxy;->mRemote:Landroid/os/IHwBinder;

    const v3, 0xf524546

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 272
    invoke-virtual {v1}, Landroid/os/HwParcel;->verifySuccess()V

    .line 273
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    .line 275
    new-instance v2, Landroid/hidl/base/V1_0/DebugInfo;

    invoke-direct {v2}, Landroid/hidl/base/V1_0/DebugInfo;-><init>()V

    .line 276
    .local v2, "_hidl_out_info":Landroid/hidl/base/V1_0/DebugInfo;
    invoke-virtual {v2, v1}, Landroid/hidl/base/V1_0/DebugInfo;->readFromParcel(Landroid/os/HwParcel;)V
    :try_end_26
    .catchall {:try_start_f .. :try_end_26} :catchall_2b

    .line 277
    nop

    .line 279
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 277
    return-object v2

    .line 279
    .end local v2  # "_hidl_out_info":Landroid/hidl/base/V1_0/DebugInfo;
    :catchall_2b
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 280
    throw v2
.end method

.method public getHashChain()Ljava/util/ArrayList;
    .registers 16
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

    .line 189
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 190
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "android.hidl.base@1.0::IBase"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 192
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 194
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_f
    iget-object v2, p0, Lvendor/synaptics/fingerprint/interfaces/extensions/V1_0/ISteller$Proxy;->mRemote:Landroid/os/IHwBinder;

    const v3, 0xf485348

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 195
    invoke-virtual {v1}, Landroid/os/HwParcel;->verifySuccess()V

    .line 196
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    .line 198
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    move-object v10, v2

    .line 200
    .local v10, "_hidl_out_hashchain":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    const-wide/16 v2, 0x10

    invoke-virtual {v1, v2, v3}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    move-result-object v2

    move-object v11, v2

    .line 202
    .local v11, "_hidl_blob":Landroid/os/HwBlob;
    const-wide/16 v2, 0x8

    invoke-virtual {v11, v2, v3}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v2

    move v12, v2

    .line 203
    .local v12, "_hidl_vec_size":I
    mul-int/lit8 v2, v12, 0x20

    int-to-long v3, v2

    .line 204
    invoke-virtual {v11}, Landroid/os/HwBlob;->handle()J

    move-result-wide v5

    const-wide/16 v7, 0x0

    const/4 v9, 0x1

    .line 203
    move-object v2, v1

    invoke-virtual/range {v2 .. v9}, Landroid/os/HwParcel;->readEmbeddedBuffer(JJJZ)Landroid/os/HwBlob;

    move-result-object v2

    .line 207
    .local v2, "childBlob":Landroid/os/HwBlob;
    invoke-virtual {v10}, Ljava/util/ArrayList;->clear()V

    .line 208
    const/4 v3, 0x0

    .local v3, "_hidl_index_0":I
    :goto_45
    if-ge v3, v12, :cond_64

    .line 209
    const/16 v4, 0x20

    new-array v5, v4, [B

    .line 211
    .local v5, "_hidl_vec_element":[B
    mul-int/lit8 v6, v3, 0x20

    int-to-long v6, v6

    .line 212
    .local v6, "_hidl_array_offset_1":J
    const/4 v8, 0x0

    .local v8, "_hidl_index_1_0":I
    :goto_4f
    if-ge v8, v4, :cond_5d

    .line 213
    invoke-virtual {v2, v6, v7}, Landroid/os/HwBlob;->getInt8(J)B

    move-result v9

    aput-byte v9, v5, v8

    .line 214
    const-wide/16 v13, 0x1

    add-long/2addr v6, v13

    .line 212
    add-int/lit8 v8, v8, 0x1

    goto :goto_4f

    .line 217
    .end local v6  # "_hidl_array_offset_1":J
    .end local v8  # "_hidl_index_1_0":I
    :cond_5d
    invoke-virtual {v10, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_60
    .catchall {:try_start_f .. :try_end_60} :catchall_69

    .line 208
    nop

    .end local v5  # "_hidl_vec_element":[B
    add-int/lit8 v3, v3, 0x1

    goto :goto_45

    .line 221
    .end local v2  # "childBlob":Landroid/os/HwBlob;
    .end local v3  # "_hidl_index_0":I
    .end local v11  # "_hidl_blob":Landroid/os/HwBlob;
    .end local v12  # "_hidl_vec_size":I
    :cond_64
    nop

    .line 223
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 221
    return-object v10

    .line 223
    .end local v10  # "_hidl_out_hashchain":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    :catchall_69
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 224
    throw v2
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

    .line 151
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 152
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "android.hidl.base@1.0::IBase"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 154
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 156
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_f
    iget-object v2, p0, Lvendor/synaptics/fingerprint/interfaces/extensions/V1_0/ISteller$Proxy;->mRemote:Landroid/os/IHwBinder;

    const v3, 0xf43484e

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 157
    invoke-virtual {v1}, Landroid/os/HwParcel;->verifySuccess()V

    .line 158
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    .line 160
    invoke-virtual {v1}, Landroid/os/HwParcel;->readStringVector()Ljava/util/ArrayList;

    move-result-object v2
    :try_end_22
    .catchall {:try_start_f .. :try_end_22} :catchall_27

    .line 161
    .local v2, "_hidl_out_descriptors":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    nop

    .line 163
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 161
    return-object v2

    .line 163
    .end local v2  # "_hidl_out_descriptors":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :catchall_27
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 164
    throw v2
.end method

.method public interfaceDescriptor()Ljava/lang/String;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 170
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 171
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "android.hidl.base@1.0::IBase"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 173
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 175
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_f
    iget-object v2, p0, Lvendor/synaptics/fingerprint/interfaces/extensions/V1_0/ISteller$Proxy;->mRemote:Landroid/os/IHwBinder;

    const v3, 0xf445343

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 176
    invoke-virtual {v1}, Landroid/os/HwParcel;->verifySuccess()V

    .line 177
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    .line 179
    invoke-virtual {v1}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2
    :try_end_22
    .catchall {:try_start_f .. :try_end_22} :catchall_27

    .line 180
    .local v2, "_hidl_out_descriptor":Ljava/lang/String;
    nop

    .line 182
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 180
    return-object v2

    .line 182
    .end local v2  # "_hidl_out_descriptor":Ljava/lang/String;
    :catchall_27
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 183
    throw v2
.end method

.method public linkToDeath(Landroid/os/IHwBinder$DeathRecipient;J)Z
    .registers 5
    .param p1, "recipient"  # Landroid/os/IHwBinder$DeathRecipient;
    .param p2, "cookie"  # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 245
    iget-object v0, p0, Lvendor/synaptics/fingerprint/interfaces/extensions/V1_0/ISteller$Proxy;->mRemote:Landroid/os/IHwBinder;

    invoke-interface {v0, p1, p2, p3}, Landroid/os/IHwBinder;->linkToDeath(Landroid/os/IHwBinder$DeathRecipient;J)Z

    move-result v0

    return v0
.end method

.method public notify(IILvendor/synaptics/fingerprint/interfaces/extensions/V1_0/IStellerClientCallback;)I
    .registers 9
    .param p1, "status"  # I
    .param p2, "data"  # I
    .param p3, "callback"  # Lvendor/synaptics/fingerprint/interfaces/extensions/V1_0/IStellerClientCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 96
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 97
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "vendor.synaptics.fingerprint.interfaces.extensions@1.0::ISteller"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 98
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 99
    invoke-virtual {v0, p2}, Landroid/os/HwParcel;->writeInt32(I)V

    .line 100
    if-nez p3, :cond_14

    const/4 v1, 0x0

    goto :goto_18

    :cond_14
    invoke-interface {p3}, Lvendor/synaptics/fingerprint/interfaces/extensions/V1_0/IStellerClientCallback;->asBinder()Landroid/os/IHwBinder;

    move-result-object v1

    :goto_18
    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeStrongBinder(Landroid/os/IHwBinder;)V

    .line 102
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 104
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_20
    iget-object v2, p0, Lvendor/synaptics/fingerprint/interfaces/extensions/V1_0/ISteller$Proxy;->mRemote:Landroid/os/IHwBinder;

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 105
    invoke-virtual {v1}, Landroid/os/HwParcel;->verifySuccess()V

    .line 106
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    .line 108
    invoke-virtual {v1}, Landroid/os/HwParcel;->readInt32()I

    move-result v2
    :try_end_31
    .catchall {:try_start_20 .. :try_end_31} :catchall_36

    .line 109
    .local v2, "_hidl_out_ret":I
    nop

    .line 111
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 109
    return v2

    .line 111
    .end local v2  # "_hidl_out_ret":I
    :catchall_36
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 112
    throw v2
.end method

.method public notifySyspropsChanged()V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 286
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 287
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "android.hidl.base@1.0::IBase"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 289
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 291
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_f
    iget-object v2, p0, Lvendor/synaptics/fingerprint/interfaces/extensions/V1_0/ISteller$Proxy;->mRemote:Landroid/os/IHwBinder;

    const v3, 0xf535953

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 292
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_1b
    .catchall {:try_start_f .. :try_end_1b} :catchall_20

    .line 294
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 295
    nop

    .line 296
    return-void

    .line 294
    :catchall_20
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 295
    throw v2
.end method

.method public ping()V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 250
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 251
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "android.hidl.base@1.0::IBase"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 253
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 255
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_f
    iget-object v2, p0, Lvendor/synaptics/fingerprint/interfaces/extensions/V1_0/ISteller$Proxy;->mRemote:Landroid/os/IHwBinder;

    const v3, 0xf504e47

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 256
    invoke-virtual {v1}, Landroid/os/HwParcel;->verifySuccess()V

    .line 257
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_1e
    .catchall {:try_start_f .. :try_end_1e} :catchall_23

    .line 259
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 260
    nop

    .line 261
    return-void

    .line 259
    :catchall_23
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 260
    throw v2
.end method

.method public setHALInstrumentation()V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 230
    new-instance v0, Landroid/os/HwParcel;

    invoke-direct {v0}, Landroid/os/HwParcel;-><init>()V

    .line 231
    .local v0, "_hidl_request":Landroid/os/HwParcel;
    const-string v1, "android.hidl.base@1.0::IBase"

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 233
    new-instance v1, Landroid/os/HwParcel;

    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 235
    .local v1, "_hidl_reply":Landroid/os/HwParcel;
    :try_start_f
    iget-object v2, p0, Lvendor/synaptics/fingerprint/interfaces/extensions/V1_0/ISteller$Proxy;->mRemote:Landroid/os/IHwBinder;

    const v3, 0xf494e54

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 236
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_1b
    .catchall {:try_start_f .. :try_end_1b} :catchall_20

    .line 238
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 239
    nop

    .line 240
    return-void

    .line 238
    :catchall_20
    move-exception v2

    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 239
    throw v2
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 85
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lvendor/synaptics/fingerprint/interfaces/extensions/V1_0/ISteller$Proxy;->interfaceDescriptor()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "@Proxy"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_15} :catch_16

    return-object v0

    .line 86
    :catch_16
    move-exception v0

    .line 89
    const-string v0, "[class or subclass of vendor.synaptics.fingerprint.interfaces.extensions@1.0::ISteller]@Proxy"

    return-object v0
.end method

.method public unlinkToDeath(Landroid/os/IHwBinder$DeathRecipient;)Z
    .registers 3
    .param p1, "recipient"  # Landroid/os/IHwBinder$DeathRecipient;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 301
    iget-object v0, p0, Lvendor/synaptics/fingerprint/interfaces/extensions/V1_0/ISteller$Proxy;->mRemote:Landroid/os/IHwBinder;

    invoke-interface {v0, p1}, Landroid/os/IHwBinder;->unlinkToDeath(Landroid/os/IHwBinder$DeathRecipient;)Z

    move-result v0

    return v0
.end method
