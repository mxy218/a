.class public Lcom/android/server/broadcastradio/hal2/AnnouncementAggregator;
.super Landroid/hardware/radio/ICloseHandle$Stub;
.source "AnnouncementAggregator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/broadcastradio/hal2/AnnouncementAggregator$DeathRecipient;,
        Lcom/android/server/broadcastradio/hal2/AnnouncementAggregator$ModuleWatcher;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "BcRadio2Srv.AnnAggr"


# instance fields
.field private final mDeathRecipient:Landroid/os/IBinder$DeathRecipient;

.field private mIsClosed:Z
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation
.end field

.field private final mListener:Landroid/hardware/radio/IAnnouncementListener;

.field private final mLock:Ljava/lang/Object;

.field private final mModuleWatchers:Ljava/util/Collection;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection<",
            "Lcom/android/server/broadcastradio/hal2/AnnouncementAggregator$ModuleWatcher;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/hardware/radio/IAnnouncementListener;)V
    .registers 4

    .line 48
    invoke-direct {p0}, Landroid/hardware/radio/ICloseHandle$Stub;-><init>()V

    .line 38
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/broadcastradio/hal2/AnnouncementAggregator;->mLock:Ljava/lang/Object;

    .line 40
    new-instance v0, Lcom/android/server/broadcastradio/hal2/AnnouncementAggregator$DeathRecipient;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/broadcastradio/hal2/AnnouncementAggregator$DeathRecipient;-><init>(Lcom/android/server/broadcastradio/hal2/AnnouncementAggregator;Lcom/android/server/broadcastradio/hal2/AnnouncementAggregator$1;)V

    iput-object v0, p0, Lcom/android/server/broadcastradio/hal2/AnnouncementAggregator;->mDeathRecipient:Landroid/os/IBinder$DeathRecipient;

    .line 42
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/broadcastradio/hal2/AnnouncementAggregator;->mModuleWatchers:Ljava/util/Collection;

    .line 45
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/broadcastradio/hal2/AnnouncementAggregator;->mIsClosed:Z

    .line 49
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/radio/IAnnouncementListener;

    iput-object v1, p0, Lcom/android/server/broadcastradio/hal2/AnnouncementAggregator;->mListener:Landroid/hardware/radio/IAnnouncementListener;

    .line 51
    :try_start_24
    invoke-interface {p1}, Landroid/hardware/radio/IAnnouncementListener;->asBinder()Landroid/os/IBinder;

    move-result-object p1

    iget-object v1, p0, Lcom/android/server/broadcastradio/hal2/AnnouncementAggregator;->mDeathRecipient:Landroid/os/IBinder$DeathRecipient;

    invoke-interface {p1, v1, v0}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_2d
    .catch Landroid/os/RemoteException; {:try_start_24 .. :try_end_2d} :catch_2e

    .line 54
    goto :goto_32

    .line 52
    :catch_2e
    move-exception p1

    .line 53
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 55
    :goto_32
    return-void
.end method

.method static synthetic access$100(Lcom/android/server/broadcastradio/hal2/AnnouncementAggregator;)V
    .registers 1

    .line 35
    invoke-direct {p0}, Lcom/android/server/broadcastradio/hal2/AnnouncementAggregator;->onListUpdated()V

    return-void
.end method

.method private onListUpdated()V
    .registers 5

    .line 84
    iget-object v0, p0, Lcom/android/server/broadcastradio/hal2/AnnouncementAggregator;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 85
    :try_start_3
    iget-boolean v1, p0, Lcom/android/server/broadcastradio/hal2/AnnouncementAggregator;->mIsClosed:Z

    if-eqz v1, :cond_10

    .line 86
    const-string v1, "BcRadio2Srv.AnnAggr"

    const-string v2, "Announcement aggregator is closed, it shouldn\'t receive callbacks"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 87
    monitor-exit v0

    return-void

    .line 89
    :cond_10
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 90
    iget-object v2, p0, Lcom/android/server/broadcastradio/hal2/AnnouncementAggregator;->mModuleWatchers:Ljava/util/Collection;

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1b
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2d

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/broadcastradio/hal2/AnnouncementAggregator$ModuleWatcher;

    .line 91
    iget-object v3, v3, Lcom/android/server/broadcastradio/hal2/AnnouncementAggregator$ModuleWatcher;->currentList:Ljava/util/List;

    invoke-interface {v1, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z
    :try_end_2c
    .catchall {:try_start_3 .. :try_end_2c} :catchall_3d

    .line 92
    goto :goto_1b

    .line 94
    :cond_2d
    :try_start_2d
    iget-object v2, p0, Lcom/android/server/broadcastradio/hal2/AnnouncementAggregator;->mListener:Landroid/hardware/radio/IAnnouncementListener;

    invoke-interface {v2, v1}, Landroid/hardware/radio/IAnnouncementListener;->onListUpdated(Ljava/util/List;)V
    :try_end_32
    .catch Landroid/os/RemoteException; {:try_start_2d .. :try_end_32} :catch_33
    .catchall {:try_start_2d .. :try_end_32} :catchall_3d

    .line 97
    goto :goto_3b

    .line 95
    :catch_33
    move-exception v1

    .line 96
    :try_start_34
    const-string v2, "BcRadio2Srv.AnnAggr"

    const-string v3, "mListener.onListUpdated() failed: "

    invoke-static {v2, v3, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 98
    :goto_3b
    monitor-exit v0

    .line 99
    return-void

    .line 98
    :catchall_3d
    move-exception v1

    monitor-exit v0
    :try_end_3f
    .catchall {:try_start_34 .. :try_end_3f} :catchall_3d

    throw v1
.end method


# virtual methods
.method public close()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 120
    iget-object v0, p0, Lcom/android/server/broadcastradio/hal2/AnnouncementAggregator;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 121
    :try_start_3
    iget-boolean v1, p0, Lcom/android/server/broadcastradio/hal2/AnnouncementAggregator;->mIsClosed:Z

    if-eqz v1, :cond_9

    monitor-exit v0

    return-void

    .line 122
    :cond_9
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/broadcastradio/hal2/AnnouncementAggregator;->mIsClosed:Z

    .line 124
    iget-object v1, p0, Lcom/android/server/broadcastradio/hal2/AnnouncementAggregator;->mListener:Landroid/hardware/radio/IAnnouncementListener;

    invoke-interface {v1}, Landroid/hardware/radio/IAnnouncementListener;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/broadcastradio/hal2/AnnouncementAggregator;->mDeathRecipient:Landroid/os/IBinder$DeathRecipient;

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 126
    iget-object v1, p0, Lcom/android/server/broadcastradio/hal2/AnnouncementAggregator;->mModuleWatchers:Ljava/util/Collection;

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1e
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2e

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/broadcastradio/hal2/AnnouncementAggregator$ModuleWatcher;

    .line 127
    invoke-virtual {v2}, Lcom/android/server/broadcastradio/hal2/AnnouncementAggregator$ModuleWatcher;->close()V

    .line 128
    goto :goto_1e

    .line 129
    :cond_2e
    iget-object v1, p0, Lcom/android/server/broadcastradio/hal2/AnnouncementAggregator;->mModuleWatchers:Ljava/util/Collection;

    invoke-interface {v1}, Ljava/util/Collection;->clear()V

    .line 130
    monitor-exit v0

    .line 131
    return-void

    .line 130
    :catchall_35
    move-exception v1

    monitor-exit v0
    :try_end_37
    .catchall {:try_start_3 .. :try_end_37} :catchall_35

    throw v1
.end method

.method public watchModule(Lcom/android/server/broadcastradio/hal2/RadioModule;[I)V
    .registers 6

    .line 102
    iget-object v0, p0, Lcom/android/server/broadcastradio/hal2/AnnouncementAggregator;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 103
    :try_start_3
    iget-boolean v1, p0, Lcom/android/server/broadcastradio/hal2/AnnouncementAggregator;->mIsClosed:Z

    if-nez v1, :cond_26

    .line 105
    new-instance v1, Lcom/android/server/broadcastradio/hal2/AnnouncementAggregator$ModuleWatcher;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/server/broadcastradio/hal2/AnnouncementAggregator$ModuleWatcher;-><init>(Lcom/android/server/broadcastradio/hal2/AnnouncementAggregator;Lcom/android/server/broadcastradio/hal2/AnnouncementAggregator$1;)V
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_2c

    .line 108
    :try_start_d
    invoke-virtual {p1, p2, v1}, Lcom/android/server/broadcastradio/hal2/RadioModule;->addAnnouncementListener([ILandroid/hardware/radio/IAnnouncementListener;)Landroid/hardware/radio/ICloseHandle;

    move-result-object p1
    :try_end_11
    .catch Landroid/os/RemoteException; {:try_start_d .. :try_end_11} :catch_1c
    .catchall {:try_start_d .. :try_end_11} :catchall_2c

    .line 112
    nop

    .line 113
    :try_start_12
    invoke-virtual {v1, p1}, Lcom/android/server/broadcastradio/hal2/AnnouncementAggregator$ModuleWatcher;->setCloseHandle(Landroid/hardware/radio/ICloseHandle;)V

    .line 114
    iget-object p1, p0, Lcom/android/server/broadcastradio/hal2/AnnouncementAggregator;->mModuleWatchers:Ljava/util/Collection;

    invoke-interface {p1, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 115
    monitor-exit v0

    .line 116
    return-void

    .line 109
    :catch_1c
    move-exception p1

    .line 110
    const-string p2, "BcRadio2Srv.AnnAggr"

    const-string v1, "Failed to add announcement listener"

    invoke-static {p2, v1, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 111
    monitor-exit v0

    return-void

    .line 103
    :cond_26
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1

    .line 115
    :catchall_2c
    move-exception p1

    monitor-exit v0
    :try_end_2e
    .catchall {:try_start_12 .. :try_end_2e} :catchall_2c

    throw p1
.end method
