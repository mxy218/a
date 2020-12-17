.class public Lcom/android/server/storage/AppFuseBridge;
.super Ljava/lang/Object;
.source "AppFuseBridge.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/storage/AppFuseBridge$MountScope;
    }
.end annotation


# static fields
.field private static final APPFUSE_MOUNT_NAME_TEMPLATE:Ljava/lang/String; = "/mnt/appfuse/%d_%d"

.field public static final TAG:Ljava/lang/String; = "AppFuseBridge"


# instance fields
.field private mNativeLoop:J
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "this"
        }
    .end annotation
.end field

.field private final mScopes:Landroid/util/SparseArray;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "this"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/server/storage/AppFuseBridge$MountScope;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 3

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/storage/AppFuseBridge;->mScopes:Landroid/util/SparseArray;

    .line 54
    invoke-direct {p0}, Lcom/android/server/storage/AppFuseBridge;->native_new()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/storage/AppFuseBridge;->mNativeLoop:J

    .line 55
    return-void
.end method

.method private native native_add_bridge(JII)I
.end method

.method private native native_delete(J)V
.end method

.method private native native_new()J
.end method

.method private native native_start_loop(J)V
.end method

.method private declared-synchronized onClosed(I)V
    .registers 4
    .param p1, "mountId"  # I

    monitor-enter p0

    .line 120
    :try_start_1
    iget-object v0, p0, Lcom/android/server/storage/AppFuseBridge;->mScopes:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/storage/AppFuseBridge$MountScope;

    .line 121
    .local v0, "scope":Lcom/android/server/storage/AppFuseBridge$MountScope;
    if-eqz v0, :cond_17

    .line 122
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/server/storage/AppFuseBridge$MountScope;->setMountResultLocked(Z)V

    .line 123
    invoke-static {v0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 124
    iget-object v1, p0, Lcom/android/server/storage/AppFuseBridge;->mScopes:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->remove(I)V
    :try_end_17
    .catchall {:try_start_1 .. :try_end_17} :catchall_19

    .line 126
    .end local p0  # "this":Lcom/android/server/storage/AppFuseBridge;
    :cond_17
    monitor-exit p0

    return-void

    .line 119
    .end local v0  # "scope":Lcom/android/server/storage/AppFuseBridge$MountScope;
    .end local p1  # "mountId":I
    :catchall_19
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private declared-synchronized onMount(I)V
    .registers 4
    .param p1, "mountId"  # I

    monitor-enter p0

    .line 112
    :try_start_1
    iget-object v0, p0, Lcom/android/server/storage/AppFuseBridge;->mScopes:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/storage/AppFuseBridge$MountScope;

    .line 113
    .local v0, "scope":Lcom/android/server/storage/AppFuseBridge$MountScope;
    if-eqz v0, :cond_f

    .line 114
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/server/storage/AppFuseBridge$MountScope;->setMountResultLocked(Z)V
    :try_end_f
    .catchall {:try_start_1 .. :try_end_f} :catchall_11

    .line 116
    .end local p0  # "this":Lcom/android/server/storage/AppFuseBridge;
    :cond_f
    monitor-exit p0

    return-void

    .line 111
    .end local v0  # "scope":Lcom/android/server/storage/AppFuseBridge$MountScope;
    .end local p1  # "mountId":I
    :catchall_11
    move-exception p1

    monitor-exit p0

    throw p1
.end method


# virtual methods
.method public addBridge(Lcom/android/server/storage/AppFuseBridge$MountScope;)Landroid/os/ParcelFileDescriptor;
    .registers 6
    .param p1, "mountScope"  # Lcom/android/server/storage/AppFuseBridge$MountScope;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/os/FuseUnavailableMountException;,
            Lcom/android/server/NativeDaemonConnectorException;
        }
    .end annotation

    .line 60
    :try_start_0
    monitor-enter p0
    :try_end_1
    .catchall {:try_start_0 .. :try_end_1} :catchall_50

    .line 61
    :try_start_1
    iget-object v0, p0, Lcom/android/server/storage/AppFuseBridge;->mScopes:Landroid/util/SparseArray;

    iget v1, p1, Lcom/android/server/storage/AppFuseBridge$MountScope;->mountId:I

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v0

    if-gez v0, :cond_d

    const/4 v0, 0x1

    goto :goto_e

    :cond_d
    const/4 v0, 0x0

    :goto_e
    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkArgument(Z)V

    .line 62
    iget-wide v0, p0, Lcom/android/server/storage/AppFuseBridge;->mNativeLoop:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_45

    .line 65
    iget-wide v0, p0, Lcom/android/server/storage/AppFuseBridge;->mNativeLoop:J

    iget v2, p1, Lcom/android/server/storage/AppFuseBridge$MountScope;->mountId:I

    .line 66
    invoke-virtual {p1}, Lcom/android/server/storage/AppFuseBridge$MountScope;->open()Landroid/os/ParcelFileDescriptor;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/ParcelFileDescriptor;->detachFd()I

    move-result v3

    .line 65
    invoke-direct {p0, v0, v1, v2, v3}, Lcom/android/server/storage/AppFuseBridge;->native_add_bridge(JII)I

    move-result v0

    .line 67
    .local v0, "fd":I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_3d

    .line 70
    invoke-static {v0}, Landroid/os/ParcelFileDescriptor;->adoptFd(I)Landroid/os/ParcelFileDescriptor;

    move-result-object v1

    .line 71
    .local v1, "result":Landroid/os/ParcelFileDescriptor;
    iget-object v2, p0, Lcom/android/server/storage/AppFuseBridge;->mScopes:Landroid/util/SparseArray;

    iget v3, p1, Lcom/android/server/storage/AppFuseBridge$MountScope;->mountId:I

    invoke-virtual {v2, v3, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 72
    const/4 p1, 0x0

    .line 73
    monitor-exit p0
    :try_end_39
    .catchall {:try_start_1 .. :try_end_39} :catchall_4d

    .line 76
    invoke-static {p1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 73
    return-object v1

    .line 68
    .end local v1  # "result":Landroid/os/ParcelFileDescriptor;
    :cond_3d
    :try_start_3d
    new-instance v1, Lcom/android/internal/os/FuseUnavailableMountException;

    iget v2, p1, Lcom/android/server/storage/AppFuseBridge$MountScope;->mountId:I

    invoke-direct {v1, v2}, Lcom/android/internal/os/FuseUnavailableMountException;-><init>(I)V

    .end local p0  # "this":Lcom/android/server/storage/AppFuseBridge;
    .end local p1  # "mountScope":Lcom/android/server/storage/AppFuseBridge$MountScope;
    throw v1

    .line 63
    .end local v0  # "fd":I
    .restart local p0  # "this":Lcom/android/server/storage/AppFuseBridge;
    .restart local p1  # "mountScope":Lcom/android/server/storage/AppFuseBridge$MountScope;
    :cond_45
    new-instance v0, Lcom/android/internal/os/FuseUnavailableMountException;

    iget v1, p1, Lcom/android/server/storage/AppFuseBridge$MountScope;->mountId:I

    invoke-direct {v0, v1}, Lcom/android/internal/os/FuseUnavailableMountException;-><init>(I)V

    .end local p0  # "this":Lcom/android/server/storage/AppFuseBridge;
    .end local p1  # "mountScope":Lcom/android/server/storage/AppFuseBridge$MountScope;
    throw v0

    .line 74
    .restart local p0  # "this":Lcom/android/server/storage/AppFuseBridge;
    .restart local p1  # "mountScope":Lcom/android/server/storage/AppFuseBridge$MountScope;
    :catchall_4d
    move-exception v0

    monitor-exit p0
    :try_end_4f
    .catchall {:try_start_3d .. :try_end_4f} :catchall_4d

    .end local p0  # "this":Lcom/android/server/storage/AppFuseBridge;
    .end local p1  # "mountScope":Lcom/android/server/storage/AppFuseBridge$MountScope;
    :try_start_4f
    throw v0
    :try_end_50
    .catchall {:try_start_4f .. :try_end_50} :catchall_50

    .line 76
    .restart local p0  # "this":Lcom/android/server/storage/AppFuseBridge;
    .restart local p1  # "mountScope":Lcom/android/server/storage/AppFuseBridge$MountScope;
    :catchall_50
    move-exception v0

    invoke-static {p1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    throw v0
.end method

.method public openFile(III)Landroid/os/ParcelFileDescriptor;
    .registers 8
    .param p1, "mountId"  # I
    .param p2, "fileId"  # I
    .param p3, "mode"  # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/os/FuseUnavailableMountException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 92
    monitor-enter p0

    .line 93
    :try_start_1
    iget-object v0, p0, Lcom/android/server/storage/AppFuseBridge;->mScopes:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/storage/AppFuseBridge$MountScope;

    .line 94
    .local v0, "scope":Lcom/android/server/storage/AppFuseBridge$MountScope;
    if-eqz v0, :cond_28

    .line 97
    monitor-exit p0
    :try_end_c
    .catchall {:try_start_1 .. :try_end_c} :catchall_2e

    .line 98
    invoke-virtual {v0}, Lcom/android/server/storage/AppFuseBridge$MountScope;->waitForMount()Z

    move-result v1

    .line 99
    .local v1, "result":Z
    if-eqz v1, :cond_22

    .line 103
    :try_start_12
    invoke-static {p3}, Landroid/os/FileUtils;->translateModePfdToPosix(I)I

    move-result v2

    .line 104
    .local v2, "flags":I
    invoke-virtual {v0, p1, p2, v2}, Lcom/android/server/storage/AppFuseBridge$MountScope;->openFile(III)Landroid/os/ParcelFileDescriptor;

    move-result-object v3
    :try_end_1a
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_12 .. :try_end_1a} :catch_1b

    return-object v3

    .line 105
    .end local v2  # "flags":I
    :catch_1b
    move-exception v2

    .line 106
    .local v2, "error":Lcom/android/server/NativeDaemonConnectorException;
    new-instance v3, Lcom/android/internal/os/FuseUnavailableMountException;

    invoke-direct {v3, p1}, Lcom/android/internal/os/FuseUnavailableMountException;-><init>(I)V

    throw v3

    .line 100
    .end local v2  # "error":Lcom/android/server/NativeDaemonConnectorException;
    :cond_22
    new-instance v2, Lcom/android/internal/os/FuseUnavailableMountException;

    invoke-direct {v2, p1}, Lcom/android/internal/os/FuseUnavailableMountException;-><init>(I)V

    throw v2

    .line 95
    .end local v1  # "result":Z
    :cond_28
    :try_start_28
    new-instance v1, Lcom/android/internal/os/FuseUnavailableMountException;

    invoke-direct {v1, p1}, Lcom/android/internal/os/FuseUnavailableMountException;-><init>(I)V

    .end local p0  # "this":Lcom/android/server/storage/AppFuseBridge;
    .end local p1  # "mountId":I
    .end local p2  # "fileId":I
    .end local p3  # "mode":I
    throw v1

    .line 97
    .end local v0  # "scope":Lcom/android/server/storage/AppFuseBridge$MountScope;
    .restart local p0  # "this":Lcom/android/server/storage/AppFuseBridge;
    .restart local p1  # "mountId":I
    .restart local p2  # "fileId":I
    .restart local p3  # "mode":I
    :catchall_2e
    move-exception v0

    monitor-exit p0
    :try_end_30
    .catchall {:try_start_28 .. :try_end_30} :catchall_2e

    throw v0
.end method

.method public run()V
    .registers 3

    .line 82
    iget-wide v0, p0, Lcom/android/server/storage/AppFuseBridge;->mNativeLoop:J

    invoke-direct {p0, v0, v1}, Lcom/android/server/storage/AppFuseBridge;->native_start_loop(J)V

    .line 83
    monitor-enter p0

    .line 84
    :try_start_6
    iget-wide v0, p0, Lcom/android/server/storage/AppFuseBridge;->mNativeLoop:J

    invoke-direct {p0, v0, v1}, Lcom/android/server/storage/AppFuseBridge;->native_delete(J)V

    .line 85
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/server/storage/AppFuseBridge;->mNativeLoop:J

    .line 86
    monitor-exit p0

    .line 87
    return-void

    .line 86
    :catchall_11
    move-exception v0

    monitor-exit p0
    :try_end_13
    .catchall {:try_start_6 .. :try_end_13} :catchall_11

    throw v0
.end method
