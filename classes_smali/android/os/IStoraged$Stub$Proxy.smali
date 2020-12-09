.class Landroid/os/IStoraged$Stub$Proxy;
.super Ljava/lang/Object;
.source "IStoraged.java"

# interfaces
.implements Landroid/os/IStoraged;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/IStoraged$Stub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Proxy"
.end annotation


# static fields
.field public static sDefaultImpl:Landroid/os/IStoraged;


# instance fields
.field private mRemote:Landroid/os/IBinder;


# direct methods
.method constructor <init>(Landroid/os/IBinder;)V
    .registers 2

    .line 100
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 101
    iput-object p1, p0, Landroid/os/IStoraged$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    .line 102
    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 2

    .line 105
    iget-object v0, p0, Landroid/os/IStoraged$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-object v0
.end method

.method public getInterfaceDescriptor()Ljava/lang/String;
    .registers 2

    .line 109
    const-string v0, "android.os.IStoraged"

    return-object v0
.end method

.method public getRecentPerf()I
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 151
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 152
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 155
    :try_start_8
    const-string v2, "android.os.IStoraged"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 156
    iget-object v2, p0, Landroid/os/IStoraged$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x3

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 157
    if-nez v2, :cond_2c

    invoke-static {}, Landroid/os/IStoraged$Stub;->getDefaultImpl()Landroid/os/IStoraged;

    move-result-object v2

    if-eqz v2, :cond_2c

    .line 158
    invoke-static {}, Landroid/os/IStoraged$Stub;->getDefaultImpl()Landroid/os/IStoraged;

    move-result-object v2

    invoke-interface {v2}, Landroid/os/IStoraged;->getRecentPerf()I

    move-result v2
    :try_end_25
    .catchall {:try_start_8 .. :try_end_25} :catchall_3b

    .line 164
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 165
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 158
    return v2

    .line 160
    :cond_2c
    :try_start_2c
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 161
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2
    :try_end_33
    .catchall {:try_start_2c .. :try_end_33} :catchall_3b

    .line 164
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 165
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 166
    nop

    .line 167
    return v2

    .line 164
    :catchall_3b
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 165
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v2
.end method

.method public onUserStarted(I)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 113
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 114
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 116
    :try_start_8
    const-string v2, "android.os.IStoraged"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 117
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 118
    iget-object v2, p0, Landroid/os/IStoraged$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 119
    if-nez v2, :cond_2e

    invoke-static {}, Landroid/os/IStoraged$Stub;->getDefaultImpl()Landroid/os/IStoraged;

    move-result-object v2

    if-eqz v2, :cond_2e

    .line 120
    invoke-static {}, Landroid/os/IStoraged$Stub;->getDefaultImpl()Landroid/os/IStoraged;

    move-result-object v2

    invoke-interface {v2, p1}, Landroid/os/IStoraged;->onUserStarted(I)V
    :try_end_27
    .catchall {:try_start_8 .. :try_end_27} :catchall_39

    .line 126
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 127
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 121
    return-void

    .line 123
    :cond_2e
    :try_start_2e
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_31
    .catchall {:try_start_2e .. :try_end_31} :catchall_39

    .line 126
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 127
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 128
    nop

    .line 129
    return-void

    .line 126
    :catchall_39
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 127
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw p1
.end method

.method public onUserStopped(I)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 132
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 133
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 135
    :try_start_8
    const-string v2, "android.os.IStoraged"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 136
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 137
    iget-object v2, p0, Landroid/os/IStoraged$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x2

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 138
    if-nez v2, :cond_2e

    invoke-static {}, Landroid/os/IStoraged$Stub;->getDefaultImpl()Landroid/os/IStoraged;

    move-result-object v2

    if-eqz v2, :cond_2e

    .line 139
    invoke-static {}, Landroid/os/IStoraged$Stub;->getDefaultImpl()Landroid/os/IStoraged;

    move-result-object v2

    invoke-interface {v2, p1}, Landroid/os/IStoraged;->onUserStopped(I)V
    :try_end_27
    .catchall {:try_start_8 .. :try_end_27} :catchall_39

    .line 145
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 146
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 140
    return-void

    .line 142
    :cond_2e
    :try_start_2e
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_31
    .catchall {:try_start_2e .. :try_end_31} :catchall_39

    .line 145
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 146
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 147
    nop

    .line 148
    return-void

    .line 145
    :catchall_39
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 146
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw p1
.end method
