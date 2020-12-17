.class Landroid/nonvccUsageStats/INonVccStatsInterfaces$Stub$Proxy;
.super Ljava/lang/Object;
.source "INonVccStatsInterfaces.java"

# interfaces
.implements Landroid/nonvccUsageStats/INonVccStatsInterfaces;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/nonvccUsageStats/INonVccStatsInterfaces$Stub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Proxy"
.end annotation


# instance fields
.field private mRemote:Landroid/os/IBinder;


# direct methods
.method constructor <init>(Landroid/os/IBinder;)V
    .registers 2

    .line 110
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 111
    iput-object p1, p0, Landroid/nonvccUsageStats/INonVccStatsInterfaces$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 1

    .line 115
    iget-object p0, p0, Landroid/nonvccUsageStats/INonVccStatsInterfaces$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-object p0
.end method

.method public getInterfaceDescriptor()Ljava/lang/String;
    .registers 1

    const-string p0, "android.nonvccUsageStats.INonVccStatsInterfaces"

    return-object p0
.end method

.method public onAppEvent(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 173
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    :try_start_4
    const-string v1, "android.nonvccUsageStats.INonVccStatsInterfaces"

    .line 175
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 176
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 177
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 178
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeMap(Ljava/util/Map;)V

    .line 179
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 180
    iget-object p0, p0, Landroid/nonvccUsageStats/INonVccStatsInterfaces$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 p1, 0x3

    const/4 p2, 0x0

    const/4 p3, 0x1

    invoke-interface {p0, p1, v0, p2, p3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_1d
    .catchall {:try_start_4 .. :try_end_1d} :catchall_21

    .line 183
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_21
    move-exception p0

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw p0
.end method

.method public onAppEventRealtime(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 196
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    :try_start_4
    const-string v1, "android.nonvccUsageStats.INonVccStatsInterfaces"

    .line 198
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 199
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 200
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 201
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeMap(Ljava/util/Map;)V

    .line 202
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 203
    iget-object p0, p0, Landroid/nonvccUsageStats/INonVccStatsInterfaces$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 p1, 0x4

    const/4 p2, 0x0

    const/4 p3, 0x1

    invoke-interface {p0, p1, v0, p2, p3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_1d
    .catchall {:try_start_4 .. :try_end_1d} :catchall_21

    .line 206
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_21
    move-exception p0

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw p0
.end method

.method public onOsEvent(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 130
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    :try_start_4
    const-string v1, "android.nonvccUsageStats.INonVccStatsInterfaces"

    .line 132
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 133
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 134
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 135
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeMap(Ljava/util/Map;)V

    .line 136
    iget-object p0, p0, Landroid/nonvccUsageStats/INonVccStatsInterfaces$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 p1, 0x0

    const/4 p2, 0x1

    invoke-interface {p0, p2, v0, p1, p2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_19
    .catchall {:try_start_4 .. :try_end_19} :catchall_1d

    .line 139
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_1d
    move-exception p0

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw p0
.end method

.method public onOsEventRealtime(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 151
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    :try_start_4
    const-string v1, "android.nonvccUsageStats.INonVccStatsInterfaces"

    .line 153
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 154
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 155
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 156
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeMap(Ljava/util/Map;)V

    .line 157
    iget-object p0, p0, Landroid/nonvccUsageStats/INonVccStatsInterfaces$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 p1, 0x2

    const/4 p2, 0x0

    const/4 p3, 0x1

    invoke-interface {p0, p1, v0, p2, p3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_1a
    .catchall {:try_start_4 .. :try_end_1a} :catchall_1e

    .line 160
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_1e
    move-exception p0

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw p0
.end method
