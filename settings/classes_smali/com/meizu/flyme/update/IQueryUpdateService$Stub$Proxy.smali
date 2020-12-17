.class Lcom/meizu/flyme/update/IQueryUpdateService$Stub$Proxy;
.super Ljava/lang/Object;
.source "IQueryUpdateService.java"

# interfaces
.implements Lcom/meizu/flyme/update/IQueryUpdateService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/flyme/update/IQueryUpdateService$Stub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Proxy"
.end annotation


# static fields
.field public static sDefaultImpl:Lcom/meizu/flyme/update/IQueryUpdateService;


# instance fields
.field private mRemote:Landroid/os/IBinder;


# direct methods
.method constructor <init>(Landroid/os/IBinder;)V
    .registers 2

    .line 115
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 116
    iput-object p1, p0, Lcom/meizu/flyme/update/IQueryUpdateService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 1

    .line 120
    iget-object p0, p0, Lcom/meizu/flyme/update/IQueryUpdateService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-object p0
.end method

.method public hasUpdate(Ljava/lang/String;)Z
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 128
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 129
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_8
    const-string v2, "com.meizu.flyme.update.IQueryUpdateService"

    .line 132
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 133
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 134
    iget-object p0, p0, Lcom/meizu/flyme/update/IQueryUpdateService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-interface {p0, v3, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    if-nez p0, :cond_2f

    .line 135
    invoke-static {}, Lcom/meizu/flyme/update/IQueryUpdateService$Stub;->getDefaultImpl()Lcom/meizu/flyme/update/IQueryUpdateService;

    move-result-object p0

    if-eqz p0, :cond_2f

    .line 136
    invoke-static {}, Lcom/meizu/flyme/update/IQueryUpdateService$Stub;->getDefaultImpl()Lcom/meizu/flyme/update/IQueryUpdateService;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/meizu/flyme/update/IQueryUpdateService;->hasUpdate(Ljava/lang/String;)Z

    move-result p0
    :try_end_28
    .catchall {:try_start_8 .. :try_end_28} :catchall_40

    .line 142
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 143
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p0

    .line 138
    :cond_2f
    :try_start_2f
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 139
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p0
    :try_end_36
    .catchall {:try_start_2f .. :try_end_36} :catchall_40

    if-eqz p0, :cond_39

    move v2, v3

    .line 142
    :cond_39
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 143
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v2

    :catchall_40
    move-exception p0

    .line 142
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 143
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw p0
.end method

.method public registerListener(Ljava/lang/String;Lcom/meizu/flyme/update/IUpdateChangeListener;)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 168
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 169
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_8
    const-string v2, "com.meizu.flyme.update.IQueryUpdateService"

    .line 171
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 172
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    if-eqz p2, :cond_17

    .line 173
    invoke-interface {p2}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    goto :goto_18

    :cond_17
    const/4 v2, 0x0

    :goto_18
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 174
    iget-object p0, p0, Lcom/meizu/flyme/update/IQueryUpdateService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x3

    const/4 v3, 0x0

    invoke-interface {p0, v2, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    if-nez p0, :cond_39

    .line 175
    invoke-static {}, Lcom/meizu/flyme/update/IQueryUpdateService$Stub;->getDefaultImpl()Lcom/meizu/flyme/update/IQueryUpdateService;

    move-result-object p0

    if-eqz p0, :cond_39

    .line 176
    invoke-static {}, Lcom/meizu/flyme/update/IQueryUpdateService$Stub;->getDefaultImpl()Lcom/meizu/flyme/update/IQueryUpdateService;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Lcom/meizu/flyme/update/IQueryUpdateService;->registerListener(Ljava/lang/String;Lcom/meizu/flyme/update/IUpdateChangeListener;)V
    :try_end_32
    .catchall {:try_start_8 .. :try_end_32} :catchall_43

    .line 182
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 183
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 179
    :cond_39
    :try_start_39
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_3c
    .catchall {:try_start_39 .. :try_end_3c} :catchall_43

    .line 182
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 183
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_43
    move-exception p0

    .line 182
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 183
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw p0
.end method
