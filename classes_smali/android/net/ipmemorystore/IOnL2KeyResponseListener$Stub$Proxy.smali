.class Landroid/net/ipmemorystore/IOnL2KeyResponseListener$Stub$Proxy;
.super Ljava/lang/Object;
.source "IOnL2KeyResponseListener.java"

# interfaces
.implements Landroid/net/ipmemorystore/IOnL2KeyResponseListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/ipmemorystore/IOnL2KeyResponseListener$Stub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Proxy"
.end annotation


# static fields
.field public static sDefaultImpl:Landroid/net/ipmemorystore/IOnL2KeyResponseListener;


# instance fields
.field private mCachedVersion:I

.field private mRemote:Landroid/os/IBinder;


# direct methods
.method constructor <init>(Landroid/os/IBinder;)V
    .registers 3
    .param p1, "remote"  # Landroid/os/IBinder;

    .line 99
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 102
    const/4 v0, -0x1

    iput v0, p0, Landroid/net/ipmemorystore/IOnL2KeyResponseListener$Stub$Proxy;->mCachedVersion:I

    .line 100
    iput-object p1, p0, Landroid/net/ipmemorystore/IOnL2KeyResponseListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    .line 101
    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 2

    .line 105
    iget-object v0, p0, Landroid/net/ipmemorystore/IOnL2KeyResponseListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-object v0
.end method

.method public getInterfaceDescriptor()Ljava/lang/String;
    .registers 2

    .line 109
    const-string v0, "android.net.ipmemorystore.IOnL2KeyResponseListener"

    return-object v0
.end method

.method public getInterfaceVersion()I
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 136
    iget v0, p0, Landroid/net/ipmemorystore/IOnL2KeyResponseListener$Stub$Proxy;->mCachedVersion:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_33

    .line 137
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 138
    .local v0, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 140
    .local v1, "reply":Landroid/os/Parcel;
    :try_start_d
    const-string v2, "android.net.ipmemorystore.IOnL2KeyResponseListener"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 141
    iget-object v2, p0, Landroid/net/ipmemorystore/IOnL2KeyResponseListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const v3, 0xffffff

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 142
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 143
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Landroid/net/ipmemorystore/IOnL2KeyResponseListener$Stub$Proxy;->mCachedVersion:I
    :try_end_24
    .catchall {:try_start_d .. :try_end_24} :catchall_2b

    .line 145
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 146
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 147
    goto :goto_33

    .line 145
    :catchall_2b
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 146
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v2

    .line 149
    .end local v0  # "data":Landroid/os/Parcel;
    .end local v1  # "reply":Landroid/os/Parcel;
    :cond_33
    :goto_33
    iget v0, p0, Landroid/net/ipmemorystore/IOnL2KeyResponseListener$Stub$Proxy;->mCachedVersion:I

    return v0
.end method

.method public onL2KeyResponse(Landroid/net/ipmemorystore/StatusParcelable;Ljava/lang/String;)V
    .registers 7
    .param p1, "status"  # Landroid/net/ipmemorystore/StatusParcelable;
    .param p2, "l2Key"  # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 113
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 115
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_4
    const-string v1, "android.net.ipmemorystore.IOnL2KeyResponseListener"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 116
    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz p1, :cond_14

    .line 117
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 118
    invoke-virtual {p1, v0, v1}, Landroid/net/ipmemorystore/StatusParcelable;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_17

    .line 121
    :cond_14
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 123
    :goto_17
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 124
    iget-object v1, p0, Landroid/net/ipmemorystore/IOnL2KeyResponseListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x0

    invoke-interface {v1, v2, v0, v3, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    .line 125
    .local v1, "_status":Z
    if-nez v1, :cond_34

    invoke-static {}, Landroid/net/ipmemorystore/IOnL2KeyResponseListener$Stub;->getDefaultImpl()Landroid/net/ipmemorystore/IOnL2KeyResponseListener;

    move-result-object v2

    if-eqz v2, :cond_34

    .line 126
    invoke-static {}, Landroid/net/ipmemorystore/IOnL2KeyResponseListener$Stub;->getDefaultImpl()Landroid/net/ipmemorystore/IOnL2KeyResponseListener;

    move-result-object v2

    invoke-interface {v2, p1, p2}, Landroid/net/ipmemorystore/IOnL2KeyResponseListener;->onL2KeyResponse(Landroid/net/ipmemorystore/StatusParcelable;Ljava/lang/String;)V
    :try_end_30
    .catchall {:try_start_4 .. :try_end_30} :catchall_39

    .line 131
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 127
    return-void

    .line 131
    .end local v1  # "_status":Z
    :cond_34
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 132
    nop

    .line 133
    return-void

    .line 131
    :catchall_39
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v1
.end method
