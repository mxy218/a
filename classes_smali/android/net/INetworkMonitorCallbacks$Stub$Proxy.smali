.class Landroid/net/INetworkMonitorCallbacks$Stub$Proxy;
.super Ljava/lang/Object;
.source "INetworkMonitorCallbacks.java"

# interfaces
.implements Landroid/net/INetworkMonitorCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/INetworkMonitorCallbacks$Stub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Proxy"
.end annotation


# static fields
.field public static sDefaultImpl:Landroid/net/INetworkMonitorCallbacks;


# instance fields
.field private mCachedVersion:I

.field private mRemote:Landroid/os/IBinder;


# direct methods
.method constructor <init>(Landroid/os/IBinder;)V
    .registers 3

    .line 143
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 146
    const/4 v0, -0x1

    iput v0, p0, Landroid/net/INetworkMonitorCallbacks$Stub$Proxy;->mCachedVersion:I

    .line 144
    iput-object p1, p0, Landroid/net/INetworkMonitorCallbacks$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    .line 145
    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 2

    .line 149
    iget-object v0, p0, Landroid/net/INetworkMonitorCallbacks$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-object v0
.end method

.method public getInterfaceDescriptor()Ljava/lang/String;
    .registers 2

    .line 153
    const-string v0, "android.net.INetworkMonitorCallbacks"

    return-object v0
.end method

.method public getInterfaceVersion()I
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 244
    iget v0, p0, Landroid/net/INetworkMonitorCallbacks$Stub$Proxy;->mCachedVersion:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_33

    .line 245
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 246
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 248
    :try_start_d
    const-string v2, "android.net.INetworkMonitorCallbacks"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 249
    iget-object v2, p0, Landroid/net/INetworkMonitorCallbacks$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const v3, 0xffffff

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 250
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 251
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Landroid/net/INetworkMonitorCallbacks$Stub$Proxy;->mCachedVersion:I
    :try_end_24
    .catchall {:try_start_d .. :try_end_24} :catchall_2b

    .line 253
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 254
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 255
    goto :goto_33

    .line 253
    :catchall_2b
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 254
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v2

    .line 257
    :cond_33
    :goto_33
    iget v0, p0, Landroid/net/INetworkMonitorCallbacks$Stub$Proxy;->mCachedVersion:I

    return v0
.end method

.method public hideProvisioningNotification()V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 229
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 231
    :try_start_4
    const-string v1, "android.net.INetworkMonitorCallbacks"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 232
    iget-object v1, p0, Landroid/net/INetworkMonitorCallbacks$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x5

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    .line 233
    if-nez v1, :cond_25

    invoke-static {}, Landroid/net/INetworkMonitorCallbacks$Stub;->getDefaultImpl()Landroid/net/INetworkMonitorCallbacks;

    move-result-object v1

    if-eqz v1, :cond_25

    .line 234
    invoke-static {}, Landroid/net/INetworkMonitorCallbacks$Stub;->getDefaultImpl()Landroid/net/INetworkMonitorCallbacks;

    move-result-object v1

    invoke-interface {v1}, Landroid/net/INetworkMonitorCallbacks;->hideProvisioningNotification()V
    :try_end_21
    .catchall {:try_start_4 .. :try_end_21} :catchall_2a

    .line 239
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 235
    return-void

    .line 239
    :cond_25
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 240
    nop

    .line 241
    return-void

    .line 239
    :catchall_2a
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v1
.end method

.method public notifyNetworkTested(ILjava/lang/String;)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 173
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 175
    :try_start_4
    const-string v1, "android.net.INetworkMonitorCallbacks"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 176
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 177
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 178
    iget-object v1, p0, Landroid/net/INetworkMonitorCallbacks$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    .line 179
    if-nez v1, :cond_2b

    invoke-static {}, Landroid/net/INetworkMonitorCallbacks$Stub;->getDefaultImpl()Landroid/net/INetworkMonitorCallbacks;

    move-result-object v1

    if-eqz v1, :cond_2b

    .line 180
    invoke-static {}, Landroid/net/INetworkMonitorCallbacks$Stub;->getDefaultImpl()Landroid/net/INetworkMonitorCallbacks;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Landroid/net/INetworkMonitorCallbacks;->notifyNetworkTested(ILjava/lang/String;)V
    :try_end_27
    .catchall {:try_start_4 .. :try_end_27} :catchall_30

    .line 185
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 181
    return-void

    .line 185
    :cond_2b
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 186
    nop

    .line 187
    return-void

    .line 185
    :catchall_30
    move-exception p1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw p1
.end method

.method public notifyPrivateDnsConfigResolved(Landroid/net/PrivateDnsConfigParcel;)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 190
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 192
    :try_start_4
    const-string v1, "android.net.INetworkMonitorCallbacks"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 193
    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz p1, :cond_14

    .line 194
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 195
    invoke-virtual {p1, v0, v2}, Landroid/net/PrivateDnsConfigParcel;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_17

    .line 198
    :cond_14
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 200
    :goto_17
    iget-object v2, p0, Landroid/net/INetworkMonitorCallbacks$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x3

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v4, v1}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    .line 201
    if-nez v1, :cond_32

    invoke-static {}, Landroid/net/INetworkMonitorCallbacks$Stub;->getDefaultImpl()Landroid/net/INetworkMonitorCallbacks;

    move-result-object v1

    if-eqz v1, :cond_32

    .line 202
    invoke-static {}, Landroid/net/INetworkMonitorCallbacks$Stub;->getDefaultImpl()Landroid/net/INetworkMonitorCallbacks;

    move-result-object v1

    invoke-interface {v1, p1}, Landroid/net/INetworkMonitorCallbacks;->notifyPrivateDnsConfigResolved(Landroid/net/PrivateDnsConfigParcel;)V
    :try_end_2e
    .catchall {:try_start_4 .. :try_end_2e} :catchall_37

    .line 207
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 203
    return-void

    .line 207
    :cond_32
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 208
    nop

    .line 209
    return-void

    .line 207
    :catchall_37
    move-exception p1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw p1
.end method

.method public onNetworkMonitorCreated(Landroid/net/INetworkMonitor;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 157
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 159
    :try_start_4
    const-string v1, "android.net.INetworkMonitorCallbacks"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 160
    const/4 v1, 0x0

    if-eqz p1, :cond_11

    invoke-interface {p1}, Landroid/net/INetworkMonitor;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    goto :goto_12

    :cond_11
    move-object v2, v1

    :goto_12
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 161
    iget-object v2, p0, Landroid/net/INetworkMonitorCallbacks$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x1

    invoke-interface {v2, v3, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    .line 162
    if-nez v1, :cond_2f

    invoke-static {}, Landroid/net/INetworkMonitorCallbacks$Stub;->getDefaultImpl()Landroid/net/INetworkMonitorCallbacks;

    move-result-object v1

    if-eqz v1, :cond_2f

    .line 163
    invoke-static {}, Landroid/net/INetworkMonitorCallbacks$Stub;->getDefaultImpl()Landroid/net/INetworkMonitorCallbacks;

    move-result-object v1

    invoke-interface {v1, p1}, Landroid/net/INetworkMonitorCallbacks;->onNetworkMonitorCreated(Landroid/net/INetworkMonitor;)V
    :try_end_2b
    .catchall {:try_start_4 .. :try_end_2b} :catchall_34

    .line 168
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 164
    return-void

    .line 168
    :cond_2f
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 169
    nop

    .line 170
    return-void

    .line 168
    :catchall_34
    move-exception p1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw p1
.end method

.method public showProvisioningNotification(Ljava/lang/String;Ljava/lang/String;)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 212
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 214
    :try_start_4
    const-string v1, "android.net.INetworkMonitorCallbacks"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 215
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 216
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 217
    iget-object v1, p0, Landroid/net/INetworkMonitorCallbacks$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x4

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    .line 218
    if-nez v1, :cond_2b

    invoke-static {}, Landroid/net/INetworkMonitorCallbacks$Stub;->getDefaultImpl()Landroid/net/INetworkMonitorCallbacks;

    move-result-object v1

    if-eqz v1, :cond_2b

    .line 219
    invoke-static {}, Landroid/net/INetworkMonitorCallbacks$Stub;->getDefaultImpl()Landroid/net/INetworkMonitorCallbacks;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Landroid/net/INetworkMonitorCallbacks;->showProvisioningNotification(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_27
    .catchall {:try_start_4 .. :try_end_27} :catchall_30

    .line 224
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 220
    return-void

    .line 224
    :cond_2b
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 225
    nop

    .line 226
    return-void

    .line 224
    :catchall_30
    move-exception p1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw p1
.end method
