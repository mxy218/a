.class Landroid/net/ipmemorystore/IOnStatusListener$Stub$Proxy;
.super Ljava/lang/Object;
.source "IOnStatusListener.java"

# interfaces
.implements Landroid/net/ipmemorystore/IOnStatusListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/ipmemorystore/IOnStatusListener$Stub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Proxy"
.end annotation


# static fields
.field public static sDefaultImpl:Landroid/net/ipmemorystore/IOnStatusListener;


# instance fields
.field private mCachedVersion:I

.field private mRemote:Landroid/os/IBinder;


# direct methods
.method constructor <init>(Landroid/os/IBinder;)V
    .registers 3

    .line 97
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 100
    const/4 v0, -0x1

    iput v0, p0, Landroid/net/ipmemorystore/IOnStatusListener$Stub$Proxy;->mCachedVersion:I

    .line 98
    iput-object p1, p0, Landroid/net/ipmemorystore/IOnStatusListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    .line 99
    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 2

    .line 103
    iget-object v0, p0, Landroid/net/ipmemorystore/IOnStatusListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-object v0
.end method

.method public getInterfaceDescriptor()Ljava/lang/String;
    .registers 2

    .line 107
    const-string v0, "android.net.ipmemorystore.IOnStatusListener"

    return-object v0
.end method

.method public getInterfaceVersion()I
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 133
    iget v0, p0, Landroid/net/ipmemorystore/IOnStatusListener$Stub$Proxy;->mCachedVersion:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_33

    .line 134
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 135
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 137
    :try_start_d
    const-string v2, "android.net.ipmemorystore.IOnStatusListener"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 138
    iget-object v2, p0, Landroid/net/ipmemorystore/IOnStatusListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const v3, 0xffffff

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 139
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 140
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Landroid/net/ipmemorystore/IOnStatusListener$Stub$Proxy;->mCachedVersion:I
    :try_end_24
    .catchall {:try_start_d .. :try_end_24} :catchall_2b

    .line 142
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 143
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 144
    goto :goto_33

    .line 142
    :catchall_2b
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 143
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v2

    .line 146
    :cond_33
    :goto_33
    iget v0, p0, Landroid/net/ipmemorystore/IOnStatusListener$Stub$Proxy;->mCachedVersion:I

    return v0
.end method

.method public onComplete(Landroid/net/ipmemorystore/StatusParcelable;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 111
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 113
    :try_start_4
    const-string v1, "android.net.ipmemorystore.IOnStatusListener"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 114
    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz p1, :cond_14

    .line 115
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 116
    invoke-virtual {p1, v0, v1}, Landroid/net/ipmemorystore/StatusParcelable;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_17

    .line 119
    :cond_14
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 121
    :goto_17
    iget-object v1, p0, Landroid/net/ipmemorystore/IOnStatusListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x0

    invoke-interface {v1, v2, v0, v3, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    .line 122
    if-nez v1, :cond_31

    invoke-static {}, Landroid/net/ipmemorystore/IOnStatusListener$Stub;->getDefaultImpl()Landroid/net/ipmemorystore/IOnStatusListener;

    move-result-object v1

    if-eqz v1, :cond_31

    .line 123
    invoke-static {}, Landroid/net/ipmemorystore/IOnStatusListener$Stub;->getDefaultImpl()Landroid/net/ipmemorystore/IOnStatusListener;

    move-result-object v1

    invoke-interface {v1, p1}, Landroid/net/ipmemorystore/IOnStatusListener;->onComplete(Landroid/net/ipmemorystore/StatusParcelable;)V
    :try_end_2d
    .catchall {:try_start_4 .. :try_end_2d} :catchall_36

    .line 128
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 124
    return-void

    .line 128
    :cond_31
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 129
    nop

    .line 130
    return-void

    .line 128
    :catchall_36
    move-exception p1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw p1
.end method
