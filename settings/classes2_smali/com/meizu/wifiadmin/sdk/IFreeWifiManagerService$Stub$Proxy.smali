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
