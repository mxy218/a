.class public abstract Lcom/android/settingslib/media/MediaManager;
.super Ljava/lang/Object;
.source "MediaManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settingslib/media/MediaManager$MediaDeviceCallback;
    }
.end annotation


# instance fields
.field protected final mCallbacks:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection<",
            "Lcom/android/settingslib/media/MediaManager$MediaDeviceCallback;",
            ">;"
        }
    .end annotation
.end field

.field protected mContext:Landroid/content/Context;

.field protected final mMediaDevices:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/settingslib/media/MediaDevice;",
            ">;"
        }
    .end annotation
.end field

.field protected mNotification:Landroid/app/Notification;


# direct methods
.method constructor <init>(Landroid/content/Context;Landroid/app/Notification;)V
    .registers 4

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settingslib/media/MediaManager;->mCallbacks:Ljava/util/Collection;

    .line 34
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settingslib/media/MediaManager;->mMediaDevices:Ljava/util/List;

    .line 40
    iput-object p1, p0, Lcom/android/settingslib/media/MediaManager;->mContext:Landroid/content/Context;

    .line 41
    iput-object p2, p0, Lcom/android/settingslib/media/MediaManager;->mNotification:Landroid/app/Notification;

    return-void
.end method


# virtual methods
.method protected dispatchConnectedDeviceChanged(Ljava/lang/String;)V
    .registers 4

    .line 113
    iget-object v0, p0, Lcom/android/settingslib/media/MediaManager;->mCallbacks:Ljava/util/Collection;

    monitor-enter v0

    .line 114
    :try_start_3
    iget-object p0, p0, Lcom/android/settingslib/media/MediaManager;->mCallbacks:Ljava/util/Collection;

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_9
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_19

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settingslib/media/MediaManager$MediaDeviceCallback;

    .line 115
    invoke-interface {v1, p1}, Lcom/android/settingslib/media/MediaManager$MediaDeviceCallback;->onConnectedDeviceChanged(Ljava/lang/String;)V

    goto :goto_9

    .line 117
    :cond_19
    monitor-exit v0

    return-void

    :catchall_1b
    move-exception p0

    monitor-exit v0
    :try_end_1d
    .catchall {:try_start_3 .. :try_end_1d} :catchall_1b

    throw p0
.end method

.method protected dispatchDataChanged()V
    .registers 3

    .line 121
    iget-object v0, p0, Lcom/android/settingslib/media/MediaManager;->mCallbacks:Ljava/util/Collection;

    monitor-enter v0

    .line 122
    :try_start_3
    iget-object p0, p0, Lcom/android/settingslib/media/MediaManager;->mCallbacks:Ljava/util/Collection;

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_9
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_19

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settingslib/media/MediaManager$MediaDeviceCallback;

    .line 123
    invoke-interface {v1}, Lcom/android/settingslib/media/MediaManager$MediaDeviceCallback;->onDeviceAttributesChanged()V

    goto :goto_9

    .line 125
    :cond_19
    monitor-exit v0

    return-void

    :catchall_1b
    move-exception p0

    monitor-exit v0
    :try_end_1d
    .catchall {:try_start_3 .. :try_end_1d} :catchall_1b

    throw p0
.end method

.method protected dispatchDeviceAdded(Lcom/android/settingslib/media/MediaDevice;)V
    .registers 4

    .line 81
    iget-object v0, p0, Lcom/android/settingslib/media/MediaManager;->mCallbacks:Ljava/util/Collection;

    monitor-enter v0

    .line 82
    :try_start_3
    iget-object p0, p0, Lcom/android/settingslib/media/MediaManager;->mCallbacks:Ljava/util/Collection;

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_9
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_19

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settingslib/media/MediaManager$MediaDeviceCallback;

    .line 83
    invoke-interface {v1, p1}, Lcom/android/settingslib/media/MediaManager$MediaDeviceCallback;->onDeviceAdded(Lcom/android/settingslib/media/MediaDevice;)V

    goto :goto_9

    .line 85
    :cond_19
    monitor-exit v0

    return-void

    :catchall_1b
    move-exception p0

    monitor-exit v0
    :try_end_1d
    .catchall {:try_start_3 .. :try_end_1d} :catchall_1b

    throw p0
.end method

.method protected dispatchDeviceListAdded()V
    .registers 6

    .line 97
    iget-object v0, p0, Lcom/android/settingslib/media/MediaManager;->mCallbacks:Ljava/util/Collection;

    monitor-enter v0

    .line 98
    :try_start_3
    iget-object v1, p0, Lcom/android/settingslib/media/MediaManager;->mCallbacks:Ljava/util/Collection;

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_9
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_20

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/settingslib/media/MediaManager$MediaDeviceCallback;

    .line 99
    new-instance v3, Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/android/settingslib/media/MediaManager;->mMediaDevices:Ljava/util/List;

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-interface {v2, v3}, Lcom/android/settingslib/media/MediaManager$MediaDeviceCallback;->onDeviceListAdded(Ljava/util/List;)V

    goto :goto_9

    .line 101
    :cond_20
    monitor-exit v0

    return-void

    :catchall_22
    move-exception p0

    monitor-exit v0
    :try_end_24
    .catchall {:try_start_3 .. :try_end_24} :catchall_22

    throw p0
.end method

.method protected dispatchDeviceListRemoved(Ljava/util/List;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/settingslib/media/MediaDevice;",
            ">;)V"
        }
    .end annotation

    .line 105
    iget-object v0, p0, Lcom/android/settingslib/media/MediaManager;->mCallbacks:Ljava/util/Collection;

    monitor-enter v0

    .line 106
    :try_start_3
    iget-object p0, p0, Lcom/android/settingslib/media/MediaManager;->mCallbacks:Ljava/util/Collection;

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_9
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_19

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settingslib/media/MediaManager$MediaDeviceCallback;

    .line 107
    invoke-interface {v1, p1}, Lcom/android/settingslib/media/MediaManager$MediaDeviceCallback;->onDeviceListRemoved(Ljava/util/List;)V

    goto :goto_9

    .line 109
    :cond_19
    monitor-exit v0

    return-void

    :catchall_1b
    move-exception p0

    monitor-exit v0
    :try_end_1d
    .catchall {:try_start_3 .. :try_end_1d} :catchall_1b

    throw p0
.end method

.method protected dispatchDeviceRemoved(Lcom/android/settingslib/media/MediaDevice;)V
    .registers 4

    .line 89
    iget-object v0, p0, Lcom/android/settingslib/media/MediaManager;->mCallbacks:Ljava/util/Collection;

    monitor-enter v0

    .line 90
    :try_start_3
    iget-object p0, p0, Lcom/android/settingslib/media/MediaManager;->mCallbacks:Ljava/util/Collection;

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_9
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_19

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settingslib/media/MediaManager$MediaDeviceCallback;

    .line 91
    invoke-interface {v1, p1}, Lcom/android/settingslib/media/MediaManager$MediaDeviceCallback;->onDeviceRemoved(Lcom/android/settingslib/media/MediaDevice;)V

    goto :goto_9

    .line 93
    :cond_19
    monitor-exit v0

    return-void

    :catchall_1b
    move-exception p0

    monitor-exit v0
    :try_end_1d
    .catchall {:try_start_3 .. :try_end_1d} :catchall_1b

    throw p0
.end method

.method protected findMediaDevice(Ljava/lang/String;)Lcom/android/settingslib/media/MediaDevice;
    .registers 4

    .line 71
    iget-object p0, p0, Lcom/android/settingslib/media/MediaManager;->mMediaDevices:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_6
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1d

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settingslib/media/MediaDevice;

    .line 72
    invoke-virtual {v0}, Lcom/android/settingslib/media/MediaDevice;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    return-object v0

    :cond_1d
    const-string p0, "MediaManager"

    const-string p1, "findMediaDevice() can\'t found device"

    .line 76
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0
.end method

.method protected registerCallback(Lcom/android/settingslib/media/MediaManager$MediaDeviceCallback;)V
    .registers 4

    .line 45
    iget-object v0, p0, Lcom/android/settingslib/media/MediaManager;->mCallbacks:Ljava/util/Collection;

    monitor-enter v0

    .line 46
    :try_start_3
    iget-object v1, p0, Lcom/android/settingslib/media/MediaManager;->mCallbacks:Ljava/util/Collection;

    invoke-interface {v1, p1}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_10

    .line 47
    iget-object p0, p0, Lcom/android/settingslib/media/MediaManager;->mCallbacks:Ljava/util/Collection;

    invoke-interface {p0, p1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 49
    :cond_10
    monitor-exit v0

    return-void

    :catchall_12
    move-exception p0

    monitor-exit v0
    :try_end_14
    .catchall {:try_start_3 .. :try_end_14} :catchall_12

    throw p0
.end method

.method protected unregisterCallback(Lcom/android/settingslib/media/MediaManager$MediaDeviceCallback;)V
    .registers 4

    .line 53
    iget-object v0, p0, Lcom/android/settingslib/media/MediaManager;->mCallbacks:Ljava/util/Collection;

    monitor-enter v0

    .line 54
    :try_start_3
    iget-object v1, p0, Lcom/android/settingslib/media/MediaManager;->mCallbacks:Ljava/util/Collection;

    invoke-interface {v1, p1}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_10

    .line 55
    iget-object p0, p0, Lcom/android/settingslib/media/MediaManager;->mCallbacks:Ljava/util/Collection;

    invoke-interface {p0, p1}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    .line 57
    :cond_10
    monitor-exit v0

    return-void

    :catchall_12
    move-exception p0

    monitor-exit v0
    :try_end_14
    .catchall {:try_start_3 .. :try_end_14} :catchall_12

    throw p0
.end method
