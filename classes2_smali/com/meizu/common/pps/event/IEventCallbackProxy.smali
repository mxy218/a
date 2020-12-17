.class public Lcom/meizu/common/pps/event/IEventCallbackProxy;
.super Ljava/lang/Object;
.source "IEventCallbackProxy.java"

# interfaces
.implements Lcom/meizu/common/pps/event/IEventCallback;


# instance fields
.field private mRemote:Landroid/os/IBinder;


# direct methods
.method public constructor <init>(Landroid/os/IBinder;)V
    .registers 2
    .param p1, "remote"  # Landroid/os/IBinder;

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput-object p1, p0, Lcom/meizu/common/pps/event/IEventCallbackProxy;->mRemote:Landroid/os/IBinder;

    .line 18
    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 2

    .line 22
    iget-object v0, p0, Lcom/meizu/common/pps/event/IEventCallbackProxy;->mRemote:Landroid/os/IBinder;

    return-object v0
.end method

.method public dumpData(Ljava/io/FileDescriptor;[Ljava/lang/String;)V
    .registers 8
    .param p1, "fd"  # Ljava/io/FileDescriptor;
    .param p2, "args"  # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 79
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 81
    .local v0, "data":Landroid/os/Parcel;
    :try_start_4
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeFileDescriptor(Ljava/io/FileDescriptor;)V

    .line 82
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 83
    iget-object v1, p0, Lcom/meizu/common/pps/event/IEventCallbackProxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x3

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_12
    .catchall {:try_start_4 .. :try_end_12} :catchall_17

    .line 85
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 86
    nop

    .line 87
    return-void

    .line 85
    :catchall_17
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v1
.end method

.method public getInterfaceDescriptor()Ljava/lang/String;
    .registers 2

    .line 26
    const-string v0, "com.meizu.common.pps.IEvent"

    return-object v0
.end method

.method public getWorkingList(I)Ljava/util/List;
    .registers 8
    .param p1, "type"  # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 106
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 107
    .local v0, "reply":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 108
    .local v1, "data":Landroid/os/Parcel;
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 110
    .local v2, "workingList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :try_start_d
    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 111
    iget-object v3, p0, Lcom/meizu/common/pps/event/IEventCallbackProxy;->mRemote:Landroid/os/IBinder;

    const/4 v4, 0x7

    const/4 v5, 0x0

    invoke-interface {v3, v4, v1, v0, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 112
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->readStringList(Ljava/util/List;)V
    :try_end_1a
    .catchall {:try_start_d .. :try_end_1a} :catchall_22

    .line 114
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 115
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 116
    nop

    .line 117
    return-object v2

    .line 114
    :catchall_22
    move-exception v3

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 115
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v3
.end method

.method public isSensorFastest(I)Z
    .registers 8
    .param p1, "uid"  # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 122
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 123
    .local v0, "reply":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 124
    .local v1, "data":Landroid/os/Parcel;
    const/4 v2, 0x1

    .line 126
    .local v2, "isSensorFastest":Z
    :try_start_9
    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 127
    iget-object v3, p0, Lcom/meizu/common/pps/event/IEventCallbackProxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x8

    const/4 v5, 0x0

    invoke-interface {v3, v4, v1, v0, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 128
    invoke-virtual {v0}, Landroid/os/Parcel;->readInt()I

    move-result v3
    :try_end_18
    .catchall {:try_start_9 .. :try_end_18} :catchall_24

    if-eqz v3, :cond_1b

    const/4 v5, 0x1

    :cond_1b
    move v2, v5

    .line 130
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 131
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 132
    nop

    .line 133
    return v2

    .line 130
    :catchall_24
    move-exception v3

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 131
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v3
.end method

.method public myPid()I
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 91
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 92
    .local v0, "reply":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 93
    .local v1, "data":Landroid/os/Parcel;
    const/4 v2, -0x1

    .line 95
    .local v2, "pid":I
    :try_start_9
    iget-object v3, p0, Lcom/meizu/common/pps/event/IEventCallbackProxy;->mRemote:Landroid/os/IBinder;

    const/4 v4, 0x4

    const/4 v5, 0x0

    invoke-interface {v3, v4, v1, v0, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 96
    invoke-virtual {v0}, Landroid/os/Parcel;->readInt()I

    move-result v3
    :try_end_14
    .catchall {:try_start_9 .. :try_end_14} :catchall_1d

    move v2, v3

    .line 98
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 99
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 100
    nop

    .line 101
    return v2

    .line 98
    :catchall_1d
    move-exception v3

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 99
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v3
.end method

.method public onDataCollectEvent(ILcom/meizu/common/pps/event/Args;)V
    .registers 8
    .param p1, "event"  # I
    .param p2, "args"  # Lcom/meizu/common/pps/event/Args;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 67
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 69
    .local v0, "data":Landroid/os/Parcel;
    :try_start_4
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 70
    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1}, Lcom/meizu/common/pps/event/Args;->writeToParcel(Landroid/os/Parcel;I)V

    .line 71
    iget-object v2, p0, Lcom/meizu/common/pps/event/IEventCallbackProxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x6

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v4, v1}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_12
    .catchall {:try_start_4 .. :try_end_12} :catchall_17

    .line 73
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 74
    nop

    .line 75
    return-void

    .line 73
    :catchall_17
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v1
.end method

.method public onProcessEvent(ILcom/meizu/common/pps/event/Args;)V
    .registers 8
    .param p1, "event"  # I
    .param p2, "args"  # Lcom/meizu/common/pps/event/Args;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 31
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 33
    .local v0, "data":Landroid/os/Parcel;
    :try_start_4
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 34
    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1}, Lcom/meizu/common/pps/event/Args;->writeToParcel(Landroid/os/Parcel;I)V

    .line 35
    iget-object v2, p0, Lcom/meizu/common/pps/event/IEventCallbackProxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v4, v1}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_12
    .catchall {:try_start_4 .. :try_end_12} :catchall_17

    .line 37
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 38
    nop

    .line 39
    return-void

    .line 37
    :catchall_17
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v1
.end method

.method public onSystemEvent(ILcom/meizu/common/pps/event/Args;)V
    .registers 8
    .param p1, "event"  # I
    .param p2, "args"  # Lcom/meizu/common/pps/event/Args;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 43
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 45
    .local v0, "data":Landroid/os/Parcel;
    :try_start_4
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 46
    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1}, Lcom/meizu/common/pps/event/Args;->writeToParcel(Landroid/os/Parcel;I)V

    .line 47
    iget-object v2, p0, Lcom/meizu/common/pps/event/IEventCallbackProxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x2

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v4, v1}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_12
    .catchall {:try_start_4 .. :try_end_12} :catchall_17

    .line 49
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 50
    nop

    .line 51
    return-void

    .line 49
    :catchall_17
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v1
.end method

.method public onUEvent(ILcom/meizu/common/pps/event/Args;)V
    .registers 8
    .param p1, "event"  # I
    .param p2, "args"  # Lcom/meizu/common/pps/event/Args;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 55
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 57
    .local v0, "data":Landroid/os/Parcel;
    :try_start_4
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 58
    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1}, Lcom/meizu/common/pps/event/Args;->writeToParcel(Landroid/os/Parcel;I)V

    .line 59
    iget-object v2, p0, Lcom/meizu/common/pps/event/IEventCallbackProxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x5

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v4, v1}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_12
    .catchall {:try_start_4 .. :try_end_12} :catchall_17

    .line 61
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 62
    nop

    .line 63
    return-void

    .line 61
    :catchall_17
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v1
.end method
