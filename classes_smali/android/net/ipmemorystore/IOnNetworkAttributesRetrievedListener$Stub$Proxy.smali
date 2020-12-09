.class Landroid/net/ipmemorystore/IOnNetworkAttributesRetrievedListener$Stub$Proxy;
.super Ljava/lang/Object;
.source "IOnNetworkAttributesRetrievedListener.java"

# interfaces
.implements Landroid/net/ipmemorystore/IOnNetworkAttributesRetrievedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/ipmemorystore/IOnNetworkAttributesRetrievedListener$Stub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Proxy"
.end annotation


# static fields
.field public static sDefaultImpl:Landroid/net/ipmemorystore/IOnNetworkAttributesRetrievedListener;


# instance fields
.field private mCachedVersion:I

.field private mRemote:Landroid/os/IBinder;


# direct methods
.method constructor <init>(Landroid/os/IBinder;)V
    .registers 3

    .line 106
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 109
    const/4 v0, -0x1

    iput v0, p0, Landroid/net/ipmemorystore/IOnNetworkAttributesRetrievedListener$Stub$Proxy;->mCachedVersion:I

    .line 107
    iput-object p1, p0, Landroid/net/ipmemorystore/IOnNetworkAttributesRetrievedListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    .line 108
    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 2

    .line 112
    iget-object v0, p0, Landroid/net/ipmemorystore/IOnNetworkAttributesRetrievedListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-object v0
.end method

.method public getInterfaceDescriptor()Ljava/lang/String;
    .registers 2

    .line 116
    const-string v0, "android.net.ipmemorystore.IOnNetworkAttributesRetrievedListener"

    return-object v0
.end method

.method public getInterfaceVersion()I
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 150
    iget v0, p0, Landroid/net/ipmemorystore/IOnNetworkAttributesRetrievedListener$Stub$Proxy;->mCachedVersion:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_33

    .line 151
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 152
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 154
    :try_start_d
    const-string v2, "android.net.ipmemorystore.IOnNetworkAttributesRetrievedListener"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 155
    iget-object v2, p0, Landroid/net/ipmemorystore/IOnNetworkAttributesRetrievedListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const v3, 0xffffff

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 156
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 157
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Landroid/net/ipmemorystore/IOnNetworkAttributesRetrievedListener$Stub$Proxy;->mCachedVersion:I
    :try_end_24
    .catchall {:try_start_d .. :try_end_24} :catchall_2b

    .line 159
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 160
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 161
    goto :goto_33

    .line 159
    :catchall_2b
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 160
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v2

    .line 163
    :cond_33
    :goto_33
    iget v0, p0, Landroid/net/ipmemorystore/IOnNetworkAttributesRetrievedListener$Stub$Proxy;->mCachedVersion:I

    return v0
.end method

.method public onNetworkAttributesRetrieved(Landroid/net/ipmemorystore/StatusParcelable;Ljava/lang/String;Landroid/net/ipmemorystore/NetworkAttributesParcelable;)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 120
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 122
    :try_start_4
    const-string v1, "android.net.ipmemorystore.IOnNetworkAttributesRetrievedListener"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 123
    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz p1, :cond_14

    .line 124
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 125
    invoke-virtual {p1, v0, v2}, Landroid/net/ipmemorystore/StatusParcelable;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_17

    .line 128
    :cond_14
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 130
    :goto_17
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 131
    if-eqz p3, :cond_23

    .line 132
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 133
    invoke-virtual {p3, v0, v2}, Landroid/net/ipmemorystore/NetworkAttributesParcelable;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_26

    .line 136
    :cond_23
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 138
    :goto_26
    iget-object v2, p0, Landroid/net/ipmemorystore/IOnNetworkAttributesRetrievedListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x0

    invoke-interface {v2, v1, v0, v3, v1}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    .line 139
    if-nez v1, :cond_40

    invoke-static {}, Landroid/net/ipmemorystore/IOnNetworkAttributesRetrievedListener$Stub;->getDefaultImpl()Landroid/net/ipmemorystore/IOnNetworkAttributesRetrievedListener;

    move-result-object v1

    if-eqz v1, :cond_40

    .line 140
    invoke-static {}, Landroid/net/ipmemorystore/IOnNetworkAttributesRetrievedListener$Stub;->getDefaultImpl()Landroid/net/ipmemorystore/IOnNetworkAttributesRetrievedListener;

    move-result-object v1

    invoke-interface {v1, p1, p2, p3}, Landroid/net/ipmemorystore/IOnNetworkAttributesRetrievedListener;->onNetworkAttributesRetrieved(Landroid/net/ipmemorystore/StatusParcelable;Ljava/lang/String;Landroid/net/ipmemorystore/NetworkAttributesParcelable;)V
    :try_end_3c
    .catchall {:try_start_4 .. :try_end_3c} :catchall_45

    .line 145
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 141
    return-void

    .line 145
    :cond_40
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 146
    nop

    .line 147
    return-void

    .line 145
    :catchall_45
    move-exception p1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw p1
.end method
