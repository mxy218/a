.class Landroid/os/IVoldTaskListener$Stub$Proxy;
.super Ljava/lang/Object;
.source "IVoldTaskListener.java"

# interfaces
.implements Landroid/os/IVoldTaskListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/IVoldTaskListener$Stub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Proxy"
.end annotation


# static fields
.field public static sDefaultImpl:Landroid/os/IVoldTaskListener;


# instance fields
.field private mRemote:Landroid/os/IBinder;


# direct methods
.method constructor <init>(Landroid/os/IBinder;)V
    .registers 2

    .line 100
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 101
    iput-object p1, p0, Landroid/os/IVoldTaskListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    .line 102
    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 2

    .line 105
    iget-object v0, p0, Landroid/os/IVoldTaskListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-object v0
.end method

.method public getInterfaceDescriptor()Ljava/lang/String;
    .registers 2

    .line 109
    const-string v0, "android.os.IVoldTaskListener"

    return-object v0
.end method

.method public onFinished(ILandroid/os/PersistableBundle;)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 136
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 138
    :try_start_4
    const-string v1, "android.os.IVoldTaskListener"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 139
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 140
    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz p2, :cond_17

    .line 141
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 142
    invoke-virtual {p2, v0, v2}, Landroid/os/PersistableBundle;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_1a

    .line 145
    :cond_17
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 147
    :goto_1a
    iget-object v2, p0, Landroid/os/IVoldTaskListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x2

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v4, v1}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    .line 148
    if-nez v1, :cond_35

    invoke-static {}, Landroid/os/IVoldTaskListener$Stub;->getDefaultImpl()Landroid/os/IVoldTaskListener;

    move-result-object v1

    if-eqz v1, :cond_35

    .line 149
    invoke-static {}, Landroid/os/IVoldTaskListener$Stub;->getDefaultImpl()Landroid/os/IVoldTaskListener;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Landroid/os/IVoldTaskListener;->onFinished(ILandroid/os/PersistableBundle;)V
    :try_end_31
    .catchall {:try_start_4 .. :try_end_31} :catchall_3a

    .line 154
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 150
    return-void

    .line 154
    :cond_35
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 155
    nop

    .line 156
    return-void

    .line 154
    :catchall_3a
    move-exception p1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw p1
.end method

.method public onStatus(ILandroid/os/PersistableBundle;)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 113
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 115
    :try_start_4
    const-string v1, "android.os.IVoldTaskListener"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 116
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 117
    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz p2, :cond_17

    .line 118
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 119
    invoke-virtual {p2, v0, v1}, Landroid/os/PersistableBundle;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_1a

    .line 122
    :cond_17
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 124
    :goto_1a
    iget-object v1, p0, Landroid/os/IVoldTaskListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x0

    invoke-interface {v1, v2, v0, v3, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    .line 125
    if-nez v1, :cond_34

    invoke-static {}, Landroid/os/IVoldTaskListener$Stub;->getDefaultImpl()Landroid/os/IVoldTaskListener;

    move-result-object v1

    if-eqz v1, :cond_34

    .line 126
    invoke-static {}, Landroid/os/IVoldTaskListener$Stub;->getDefaultImpl()Landroid/os/IVoldTaskListener;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Landroid/os/IVoldTaskListener;->onStatus(ILandroid/os/PersistableBundle;)V
    :try_end_30
    .catchall {:try_start_4 .. :try_end_30} :catchall_39

    .line 131
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 127
    return-void

    .line 131
    :cond_34
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 132
    nop

    .line 133
    return-void

    .line 131
    :catchall_39
    move-exception p1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw p1
.end method
