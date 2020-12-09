.class Landroid/net/ipmemorystore/IOnBlobRetrievedListener$Stub$Proxy;
.super Ljava/lang/Object;
.source "IOnBlobRetrievedListener.java"

# interfaces
.implements Landroid/net/ipmemorystore/IOnBlobRetrievedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/ipmemorystore/IOnBlobRetrievedListener$Stub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Proxy"
.end annotation


# static fields
.field public static sDefaultImpl:Landroid/net/ipmemorystore/IOnBlobRetrievedListener;


# instance fields
.field private mCachedVersion:I

.field private mRemote:Landroid/os/IBinder;


# direct methods
.method constructor <init>(Landroid/os/IBinder;)V
    .registers 3

    .line 108
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 111
    const/4 v0, -0x1

    iput v0, p0, Landroid/net/ipmemorystore/IOnBlobRetrievedListener$Stub$Proxy;->mCachedVersion:I

    .line 109
    iput-object p1, p0, Landroid/net/ipmemorystore/IOnBlobRetrievedListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    .line 110
    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 2

    .line 114
    iget-object v0, p0, Landroid/net/ipmemorystore/IOnBlobRetrievedListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-object v0
.end method

.method public getInterfaceDescriptor()Ljava/lang/String;
    .registers 2

    .line 118
    const-string v0, "android.net.ipmemorystore.IOnBlobRetrievedListener"

    return-object v0
.end method

.method public getInterfaceVersion()I
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 153
    iget v0, p0, Landroid/net/ipmemorystore/IOnBlobRetrievedListener$Stub$Proxy;->mCachedVersion:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_33

    .line 154
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 155
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 157
    :try_start_d
    const-string v2, "android.net.ipmemorystore.IOnBlobRetrievedListener"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 158
    iget-object v2, p0, Landroid/net/ipmemorystore/IOnBlobRetrievedListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const v3, 0xffffff

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 159
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 160
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Landroid/net/ipmemorystore/IOnBlobRetrievedListener$Stub$Proxy;->mCachedVersion:I
    :try_end_24
    .catchall {:try_start_d .. :try_end_24} :catchall_2b

    .line 162
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 163
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 164
    goto :goto_33

    .line 162
    :catchall_2b
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 163
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v2

    .line 166
    :cond_33
    :goto_33
    iget v0, p0, Landroid/net/ipmemorystore/IOnBlobRetrievedListener$Stub$Proxy;->mCachedVersion:I

    return v0
.end method

.method public onBlobRetrieved(Landroid/net/ipmemorystore/StatusParcelable;Ljava/lang/String;Ljava/lang/String;Landroid/net/ipmemorystore/Blob;)V
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 122
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 124
    :try_start_4
    const-string v1, "android.net.ipmemorystore.IOnBlobRetrievedListener"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 125
    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz p1, :cond_14

    .line 126
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 127
    invoke-virtual {p1, v0, v2}, Landroid/net/ipmemorystore/StatusParcelable;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_17

    .line 130
    :cond_14
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 132
    :goto_17
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 133
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 134
    if-eqz p4, :cond_26

    .line 135
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 136
    invoke-virtual {p4, v0, v2}, Landroid/net/ipmemorystore/Blob;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_29

    .line 139
    :cond_26
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 141
    :goto_29
    iget-object v2, p0, Landroid/net/ipmemorystore/IOnBlobRetrievedListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x0

    invoke-interface {v2, v1, v0, v3, v1}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    .line 142
    if-nez v1, :cond_43

    invoke-static {}, Landroid/net/ipmemorystore/IOnBlobRetrievedListener$Stub;->getDefaultImpl()Landroid/net/ipmemorystore/IOnBlobRetrievedListener;

    move-result-object v1

    if-eqz v1, :cond_43

    .line 143
    invoke-static {}, Landroid/net/ipmemorystore/IOnBlobRetrievedListener$Stub;->getDefaultImpl()Landroid/net/ipmemorystore/IOnBlobRetrievedListener;

    move-result-object v1

    invoke-interface {v1, p1, p2, p3, p4}, Landroid/net/ipmemorystore/IOnBlobRetrievedListener;->onBlobRetrieved(Landroid/net/ipmemorystore/StatusParcelable;Ljava/lang/String;Ljava/lang/String;Landroid/net/ipmemorystore/Blob;)V
    :try_end_3f
    .catchall {:try_start_4 .. :try_end_3f} :catchall_48

    .line 148
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 144
    return-void

    .line 148
    :cond_43
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 149
    nop

    .line 150
    return-void

    .line 148
    :catchall_48
    move-exception p1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw p1
.end method
