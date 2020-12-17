.class Lcom/meizu/wifiadmin/sdk/IFreeWifiManagerCallback$Stub$Proxy;
.super Ljava/lang/Object;
.source "IFreeWifiManagerCallback.java"

# interfaces
.implements Lcom/meizu/wifiadmin/sdk/IFreeWifiManagerCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/wifiadmin/sdk/IFreeWifiManagerCallback$Stub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Proxy"
.end annotation


# static fields
.field public static sDefaultImpl:Lcom/meizu/wifiadmin/sdk/IFreeWifiManagerCallback;


# instance fields
.field private mRemote:Landroid/os/IBinder;


# direct methods
.method constructor <init>(Landroid/os/IBinder;)V
    .registers 2

    .line 95
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 96
    iput-object p1, p0, Lcom/meizu/wifiadmin/sdk/IFreeWifiManagerCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 1

    .line 100
    iget-object p0, p0, Lcom/meizu/wifiadmin/sdk/IFreeWifiManagerCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-object p0
.end method

.method public getInterfaceDescriptor()Ljava/lang/String;
    .registers 1

    const-string p0, "com.meizu.wifiadmin.sdk.IFreeWifiManagerCallback"

    return-object p0
.end method

.method public onLoginCallBack(I)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 133
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 134
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_8
    const-string v2, "com.meizu.wifiadmin.sdk.IFreeWifiManagerCallback"

    .line 136
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 137
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 138
    iget-object p0, p0, Lcom/meizu/wifiadmin/sdk/IFreeWifiManagerCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-interface {p0, v2, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    if-nez p0, :cond_2e

    .line 139
    invoke-static {}, Lcom/meizu/wifiadmin/sdk/IFreeWifiManagerCallback$Stub;->getDefaultImpl()Lcom/meizu/wifiadmin/sdk/IFreeWifiManagerCallback;

    move-result-object p0

    if-eqz p0, :cond_2e

    .line 140
    invoke-static {}, Lcom/meizu/wifiadmin/sdk/IFreeWifiManagerCallback$Stub;->getDefaultImpl()Lcom/meizu/wifiadmin/sdk/IFreeWifiManagerCallback;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/meizu/wifiadmin/sdk/IFreeWifiManagerCallback;->onLoginCallBack(I)V
    :try_end_27
    .catchall {:try_start_8 .. :try_end_27} :catchall_38

    .line 146
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 147
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 143
    :cond_2e
    :try_start_2e
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_31
    .catchall {:try_start_2e .. :try_end_31} :catchall_38

    .line 146
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 147
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_38
    move-exception p0

    .line 146
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 147
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw p0
.end method

.method public onQueryCallback(Ljava/util/List;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/os/Bundle;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 111
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 112
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_8
    const-string v2, "com.meizu.wifiadmin.sdk.IFreeWifiManagerCallback"

    .line 114
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 115
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 116
    iget-object p0, p0, Lcom/meizu/wifiadmin/sdk/IFreeWifiManagerCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-interface {p0, v2, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    if-nez p0, :cond_2e

    .line 117
    invoke-static {}, Lcom/meizu/wifiadmin/sdk/IFreeWifiManagerCallback$Stub;->getDefaultImpl()Lcom/meizu/wifiadmin/sdk/IFreeWifiManagerCallback;

    move-result-object p0

    if-eqz p0, :cond_2e

    .line 118
    invoke-static {}, Lcom/meizu/wifiadmin/sdk/IFreeWifiManagerCallback$Stub;->getDefaultImpl()Lcom/meizu/wifiadmin/sdk/IFreeWifiManagerCallback;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/meizu/wifiadmin/sdk/IFreeWifiManagerCallback;->onQueryCallback(Ljava/util/List;)V
    :try_end_27
    .catchall {:try_start_8 .. :try_end_27} :catchall_38

    .line 124
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 125
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 121
    :cond_2e
    :try_start_2e
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_31
    .catchall {:try_start_2e .. :try_end_31} :catchall_38

    .line 124
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 125
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_38
    move-exception p0

    .line 124
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 125
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw p0
.end method
