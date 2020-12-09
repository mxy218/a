.class public Lcom/android/server/backup/restore/ActiveRestoreSession;
.super Landroid/app/backup/IRestoreSession$Stub;
.source "ActiveRestoreSession.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/backup/restore/ActiveRestoreSession$EndRestoreRunnable;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "RestoreSession"


# instance fields
.field private final mBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

.field mEnded:Z

.field private final mPackageName:Ljava/lang/String;

.field public mRestoreSets:[Landroid/app/backup/RestoreSet;

.field mTimedOut:Z

.field private final mTransportManager:Lcom/android/server/backup/TransportManager;

.field private final mTransportName:Ljava/lang/String;

.field private final mUserId:I


# direct methods
.method public constructor <init>(Lcom/android/server/backup/UserBackupManagerService;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    .line 66
    invoke-direct {p0}, Landroid/app/backup/IRestoreSession$Stub;-><init>()V

    .line 59
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/backup/restore/ActiveRestoreSession;->mRestoreSets:[Landroid/app/backup/RestoreSet;

    .line 60
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/backup/restore/ActiveRestoreSession;->mEnded:Z

    .line 61
    iput-boolean v0, p0, Lcom/android/server/backup/restore/ActiveRestoreSession;->mTimedOut:Z

    .line 67
    iput-object p1, p0, Lcom/android/server/backup/restore/ActiveRestoreSession;->mBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    .line 68
    iput-object p2, p0, Lcom/android/server/backup/restore/ActiveRestoreSession;->mPackageName:Ljava/lang/String;

    .line 69
    invoke-virtual {p1}, Lcom/android/server/backup/UserBackupManagerService;->getTransportManager()Lcom/android/server/backup/TransportManager;

    move-result-object p2

    iput-object p2, p0, Lcom/android/server/backup/restore/ActiveRestoreSession;->mTransportManager:Lcom/android/server/backup/TransportManager;

    .line 70
    iput-object p3, p0, Lcom/android/server/backup/restore/ActiveRestoreSession;->mTransportName:Ljava/lang/String;

    .line 71
    invoke-virtual {p1}, Lcom/android/server/backup/UserBackupManagerService;->getUserId()I

    move-result p1

    iput p1, p0, Lcom/android/server/backup/restore/ActiveRestoreSession;->mUserId:I

    .line 72
    return-void
.end method

.method static synthetic lambda$getAvailableRestoreSets$0(Lcom/android/server/backup/TransportManager;Lcom/android/server/backup/transport/TransportClient;Lcom/android/server/backup/UserBackupManagerService$BackupWakeLock;Ljava/lang/String;)V
    .registers 4

    .line 118
    invoke-virtual {p0, p1, p3}, Lcom/android/server/backup/TransportManager;->disposeOfTransportClient(Lcom/android/server/backup/transport/TransportClient;Ljava/lang/String;)V

    .line 119
    invoke-virtual {p2}, Lcom/android/server/backup/UserBackupManagerService$BackupWakeLock;->release()V

    .line 120
    return-void
.end method

.method static synthetic lambda$restoreAll$1(Landroid/app/backup/IRestoreObserver;Landroid/app/backup/IBackupManagerMonitor;JLcom/android/server/backup/transport/TransportClient;Lcom/android/server/backup/internal/OnTaskFinishedListener;)Lcom/android/server/backup/params/RestoreParams;
    .registers 12

    .line 176
    move-object v0, p4

    move-object v1, p0

    move-object v2, p1

    move-wide v3, p2

    move-object v5, p5

    invoke-static/range {v0 .. v5}, Lcom/android/server/backup/params/RestoreParams;->createForRestoreAll(Lcom/android/server/backup/transport/TransportClient;Landroid/app/backup/IRestoreObserver;Landroid/app/backup/IBackupManagerMonitor;JLcom/android/server/backup/internal/OnTaskFinishedListener;)Lcom/android/server/backup/params/RestoreParams;

    move-result-object p0

    return-object p0
.end method

.method static synthetic lambda$restorePackage$3(Landroid/app/backup/IRestoreObserver;Landroid/app/backup/IBackupManagerMonitor;JLandroid/content/pm/PackageInfo;Lcom/android/server/backup/transport/TransportClient;Lcom/android/server/backup/internal/OnTaskFinishedListener;)Lcom/android/server/backup/params/RestoreParams;
    .registers 14

    .line 360
    move-object v0, p5

    move-object v1, p0

    move-object v2, p1

    move-wide v3, p2

    move-object v5, p4

    move-object v6, p6

    invoke-static/range {v0 .. v6}, Lcom/android/server/backup/params/RestoreParams;->createForSinglePackage(Lcom/android/server/backup/transport/TransportClient;Landroid/app/backup/IRestoreObserver;Landroid/app/backup/IBackupManagerMonitor;JLandroid/content/pm/PackageInfo;Lcom/android/server/backup/internal/OnTaskFinishedListener;)Lcom/android/server/backup/params/RestoreParams;

    move-result-object p0

    return-object p0
.end method

.method static synthetic lambda$restorePackages$2(Landroid/app/backup/IRestoreObserver;Landroid/app/backup/IBackupManagerMonitor;J[Ljava/lang/String;Lcom/android/server/backup/transport/TransportClient;Lcom/android/server/backup/internal/OnTaskFinishedListener;)Lcom/android/server/backup/params/RestoreParams;
    .registers 15

    .line 267
    array-length v0, p4

    const/4 v1, 0x1

    if-le v0, v1, :cond_6

    move v6, v1

    goto :goto_8

    :cond_6
    const/4 v0, 0x0

    move v6, v0

    :goto_8
    move-object v0, p5

    move-object v1, p0

    move-object v2, p1

    move-wide v3, p2

    move-object v5, p4

    move-object v7, p6

    invoke-static/range {v0 .. v7}, Lcom/android/server/backup/params/RestoreParams;->createForRestorePackages(Lcom/android/server/backup/transport/TransportClient;Landroid/app/backup/IRestoreObserver;Landroid/app/backup/IBackupManagerMonitor;J[Ljava/lang/String;ZLcom/android/server/backup/internal/OnTaskFinishedListener;)Lcom/android/server/backup/params/RestoreParams;

    move-result-object v0

    return-object v0
.end method

.method static synthetic lambda$sendRestoreToHandlerLocked$4(Lcom/android/server/backup/TransportManager;Lcom/android/server/backup/transport/TransportClient;Lcom/android/server/backup/UserBackupManagerService$BackupWakeLock;Ljava/lang/String;)V
    .registers 4

    .line 403
    invoke-virtual {p0, p1, p3}, Lcom/android/server/backup/TransportManager;->disposeOfTransportClient(Lcom/android/server/backup/transport/TransportClient;Ljava/lang/String;)V

    .line 404
    invoke-virtual {p2}, Lcom/android/server/backup/UserBackupManagerService$BackupWakeLock;->release()V

    .line 405
    return-void
.end method

.method private sendRestoreToHandlerLocked(Ljava/util/function/BiFunction;Ljava/lang/String;)I
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/BiFunction<",
            "Lcom/android/server/backup/transport/TransportClient;",
            "Lcom/android/server/backup/internal/OnTaskFinishedListener;",
            "Lcom/android/server/backup/params/RestoreParams;",
            ">;",
            "Ljava/lang/String;",
            ")I"
        }
    .end annotation

    .line 383
    iget-object v0, p0, Lcom/android/server/backup/restore/ActiveRestoreSession;->mTransportManager:Lcom/android/server/backup/TransportManager;

    iget-object v1, p0, Lcom/android/server/backup/restore/ActiveRestoreSession;->mTransportName:Ljava/lang/String;

    .line 384
    invoke-virtual {v0, v1, p2}, Lcom/android/server/backup/TransportManager;->getTransportClient(Ljava/lang/String;Ljava/lang/String;)Lcom/android/server/backup/transport/TransportClient;

    move-result-object p2

    .line 385
    if-nez p2, :cond_29

    .line 386
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Transport "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/android/server/backup/restore/ActiveRestoreSession;->mTransportName:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " got unregistered"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "RestoreSession"

    invoke-static {p2, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 387
    const/4 p1, -0x1

    return p1

    .line 391
    :cond_29
    iget-object v0, p0, Lcom/android/server/backup/restore/ActiveRestoreSession;->mBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    invoke-virtual {v0}, Lcom/android/server/backup/UserBackupManagerService;->getBackupHandler()Landroid/os/Handler;

    move-result-object v0

    .line 392
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 394
    iget-object v1, p0, Lcom/android/server/backup/restore/ActiveRestoreSession;->mBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    invoke-virtual {v1}, Lcom/android/server/backup/UserBackupManagerService;->getWakelock()Lcom/android/server/backup/UserBackupManagerService$BackupWakeLock;

    move-result-object v1

    .line 395
    invoke-virtual {v1}, Lcom/android/server/backup/UserBackupManagerService$BackupWakeLock;->acquire()V

    .line 401
    iget-object v2, p0, Lcom/android/server/backup/restore/ActiveRestoreSession;->mTransportManager:Lcom/android/server/backup/TransportManager;

    .line 402
    new-instance v3, Lcom/android/server/backup/restore/-$$Lambda$ActiveRestoreSession$71PrH3wEYYMIUjX_IpwtAdchLA8;

    invoke-direct {v3, v2, p2, v1}, Lcom/android/server/backup/restore/-$$Lambda$ActiveRestoreSession$71PrH3wEYYMIUjX_IpwtAdchLA8;-><init>(Lcom/android/server/backup/TransportManager;Lcom/android/server/backup/transport/TransportClient;Lcom/android/server/backup/UserBackupManagerService$BackupWakeLock;)V

    .line 406
    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 407
    invoke-interface {p1, p2, v3}, Ljava/util/function/BiFunction;->apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 408
    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 409
    const/4 p1, 0x0

    return p1
.end method


# virtual methods
.method public declared-synchronized endRestoreSession()V
    .registers 4

    monitor-enter p0

    .line 437
    :try_start_1
    const-string v0, "RestoreSession"

    const-string v1, "endRestoreSession"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 440
    iget-boolean v0, p0, Lcom/android/server/backup/restore/ActiveRestoreSession;->mTimedOut:Z

    if-eqz v0, :cond_15

    .line 441
    const-string v0, "RestoreSession"

    const-string v1, "Session already timed out"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_13
    .catchall {:try_start_1 .. :try_end_13} :catchall_33

    .line 442
    monitor-exit p0

    return-void

    .line 445
    :cond_15
    :try_start_15
    iget-boolean v0, p0, Lcom/android/server/backup/restore/ActiveRestoreSession;->mEnded:Z

    if-nez v0, :cond_2b

    .line 449
    iget-object v0, p0, Lcom/android/server/backup/restore/ActiveRestoreSession;->mBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    invoke-virtual {v0}, Lcom/android/server/backup/UserBackupManagerService;->getBackupHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/server/backup/restore/ActiveRestoreSession$EndRestoreRunnable;

    iget-object v2, p0, Lcom/android/server/backup/restore/ActiveRestoreSession;->mBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    invoke-direct {v1, p0, v2, p0}, Lcom/android/server/backup/restore/ActiveRestoreSession$EndRestoreRunnable;-><init>(Lcom/android/server/backup/restore/ActiveRestoreSession;Lcom/android/server/backup/UserBackupManagerService;Lcom/android/server/backup/restore/ActiveRestoreSession;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_29
    .catchall {:try_start_15 .. :try_end_29} :catchall_33

    .line 451
    monitor-exit p0

    return-void

    .line 446
    :cond_2b
    :try_start_2b
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Restore session already ended"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_33
    .catchall {:try_start_2b .. :try_end_33} :catchall_33

    .line 436
    :catchall_33
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getAvailableRestoreSets(Landroid/app/backup/IRestoreObserver;Landroid/app/backup/IBackupManagerMonitor;)I
    .registers 15

    monitor-enter p0

    .line 81
    :try_start_1
    iget-object v0, p0, Lcom/android/server/backup/restore/ActiveRestoreSession;->mBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    invoke-virtual {v0}, Lcom/android/server/backup/UserBackupManagerService;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.BACKUP"

    const-string v2, "getAvailableRestoreSets"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 84
    if-eqz p1, :cond_99

    .line 88
    iget-boolean v0, p0, Lcom/android/server/backup/restore/ActiveRestoreSession;->mEnded:Z

    if-nez v0, :cond_91

    .line 92
    iget-boolean v0, p0, Lcom/android/server/backup/restore/ActiveRestoreSession;->mTimedOut:Z

    const/4 v1, -0x1

    if-eqz v0, :cond_22

    .line 93
    const-string p1, "RestoreSession"

    const-string p2, "Session already timed out"

    invoke-static {p1, p2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_20
    .catchall {:try_start_1 .. :try_end_20} :catchall_a1

    .line 94
    monitor-exit p0

    return v1

    .line 97
    :cond_22
    :try_start_22
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2
    :try_end_26
    .catchall {:try_start_22 .. :try_end_26} :catchall_a1

    .line 99
    :try_start_26
    iget-object v0, p0, Lcom/android/server/backup/restore/ActiveRestoreSession;->mTransportManager:Lcom/android/server/backup/TransportManager;

    iget-object v4, p0, Lcom/android/server/backup/restore/ActiveRestoreSession;->mTransportName:Ljava/lang/String;

    const-string v5, "RestoreSession.getAvailableRestoreSets()"

    .line 100
    invoke-virtual {v0, v4, v5}, Lcom/android/server/backup/TransportManager;->getTransportClient(Ljava/lang/String;Ljava/lang/String;)Lcom/android/server/backup/transport/TransportClient;

    move-result-object v7

    .line 102
    if-nez v7, :cond_3f

    .line 103
    const-string p1, "RestoreSession"

    const-string p2, "Null transport client getting restore sets"

    invoke-static {p1, p2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_39
    .catch Ljava/lang/Exception; {:try_start_26 .. :try_end_39} :catch_7f
    .catchall {:try_start_26 .. :try_end_39} :catchall_7d

    .line 104
    nop

    .line 130
    :try_start_3a
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_3d
    .catchall {:try_start_3a .. :try_end_3d} :catchall_a1

    .line 104
    monitor-exit p0

    return v1

    .line 110
    :cond_3f
    :try_start_3f
    iget-object v0, p0, Lcom/android/server/backup/restore/ActiveRestoreSession;->mBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    invoke-virtual {v0}, Lcom/android/server/backup/UserBackupManagerService;->getBackupHandler()Landroid/os/Handler;

    move-result-object v0

    const/16 v4, 0x8

    invoke-virtual {v0, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 112
    iget-object v0, p0, Lcom/android/server/backup/restore/ActiveRestoreSession;->mBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    invoke-virtual {v0}, Lcom/android/server/backup/UserBackupManagerService;->getWakelock()Lcom/android/server/backup/UserBackupManagerService$BackupWakeLock;

    move-result-object v0

    .line 113
    invoke-virtual {v0}, Lcom/android/server/backup/UserBackupManagerService$BackupWakeLock;->acquire()V

    .line 116
    iget-object v4, p0, Lcom/android/server/backup/restore/ActiveRestoreSession;->mTransportManager:Lcom/android/server/backup/TransportManager;

    .line 117
    new-instance v11, Lcom/android/server/backup/restore/-$$Lambda$ActiveRestoreSession$sCvtVwpXah9lCpJqxZ9YbNMLXas;

    invoke-direct {v11, v4, v7, v0}, Lcom/android/server/backup/restore/-$$Lambda$ActiveRestoreSession$sCvtVwpXah9lCpJqxZ9YbNMLXas;-><init>(Lcom/android/server/backup/TransportManager;Lcom/android/server/backup/transport/TransportClient;Lcom/android/server/backup/UserBackupManagerService$BackupWakeLock;)V

    .line 121
    iget-object v0, p0, Lcom/android/server/backup/restore/ActiveRestoreSession;->mBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    invoke-virtual {v0}, Lcom/android/server/backup/UserBackupManagerService;->getBackupHandler()Landroid/os/Handler;

    move-result-object v0

    const/4 v4, 0x6

    new-instance v5, Lcom/android/server/backup/params/RestoreGetSetsParams;

    move-object v6, v5

    move-object v8, p0

    move-object v9, p1

    move-object v10, p2

    invoke-direct/range {v6 .. v11}, Lcom/android/server/backup/params/RestoreGetSetsParams;-><init>(Lcom/android/server/backup/transport/TransportClient;Lcom/android/server/backup/restore/ActiveRestoreSession;Landroid/app/backup/IRestoreObserver;Landroid/app/backup/IBackupManagerMonitor;Lcom/android/server/backup/internal/OnTaskFinishedListener;)V

    invoke-virtual {v0, v4, v5}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 124
    iget-object p2, p0, Lcom/android/server/backup/restore/ActiveRestoreSession;->mBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    invoke-virtual {p2}, Lcom/android/server/backup/UserBackupManagerService;->getBackupHandler()Landroid/os/Handler;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_77
    .catch Ljava/lang/Exception; {:try_start_3f .. :try_end_77} :catch_7f
    .catchall {:try_start_3f .. :try_end_77} :catchall_7d

    .line 125
    const/4 p1, 0x0

    .line 130
    :try_start_78
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_7b
    .catchall {:try_start_78 .. :try_end_7b} :catchall_a1

    .line 125
    monitor-exit p0

    return p1

    .line 130
    :catchall_7d
    move-exception p1

    goto :goto_8d

    .line 126
    :catch_7f
    move-exception p1

    .line 127
    :try_start_80
    const-string p2, "RestoreSession"

    const-string v0, "Error in getAvailableRestoreSets"

    invoke-static {p2, v0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_87
    .catchall {:try_start_80 .. :try_end_87} :catchall_7d

    .line 128
    nop

    .line 130
    :try_start_88
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_8b
    .catchall {:try_start_88 .. :try_end_8b} :catchall_a1

    .line 128
    monitor-exit p0

    return v1

    .line 130
    :goto_8d
    :try_start_8d
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p1

    .line 89
    :cond_91
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Restore session already ended"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 85
    :cond_99
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Observer must not be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_a1
    .catchall {:try_start_8d .. :try_end_a1} :catchall_a1

    .line 80
    :catchall_a1
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public markTimedOut()V
    .registers 2

    .line 75
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/backup/restore/ActiveRestoreSession;->mTimedOut:Z

    .line 76
    return-void
.end method

.method public declared-synchronized restoreAll(JLandroid/app/backup/IRestoreObserver;Landroid/app/backup/IBackupManagerMonitor;)I
    .registers 10

    monitor-enter p0

    .line 136
    :try_start_1
    iget-object v0, p0, Lcom/android/server/backup/restore/ActiveRestoreSession;->mBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    invoke-virtual {v0}, Lcom/android/server/backup/UserBackupManagerService;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.BACKUP"

    const-string/jumbo v2, "performRestore"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 141
    const-string v0, "RestoreSession"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "restoreAll token="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1, p2}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " observer="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 145
    iget-boolean v0, p0, Lcom/android/server/backup/restore/ActiveRestoreSession;->mEnded:Z

    if-nez v0, :cond_e0

    .line 149
    iget-boolean v0, p0, Lcom/android/server/backup/restore/ActiveRestoreSession;->mTimedOut:Z

    const/4 v1, -0x1

    if-eqz v0, :cond_44

    .line 150
    const-string p1, "RestoreSession"

    const-string p2, "Session already timed out"

    invoke-static {p1, p2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_42
    .catchall {:try_start_1 .. :try_end_42} :catchall_e8

    .line 151
    monitor-exit p0

    return v1

    .line 154
    :cond_44
    :try_start_44
    iget-object v0, p0, Lcom/android/server/backup/restore/ActiveRestoreSession;->mRestoreSets:[Landroid/app/backup/RestoreSet;

    if-nez v0, :cond_51

    .line 155
    const-string p1, "RestoreSession"

    const-string p2, "Ignoring restoreAll() with no restore set"

    invoke-static {p1, p2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4f
    .catchall {:try_start_44 .. :try_end_4f} :catchall_e8

    .line 156
    monitor-exit p0

    return v1

    .line 159
    :cond_51
    :try_start_51
    iget-object v0, p0, Lcom/android/server/backup/restore/ActiveRestoreSession;->mPackageName:Ljava/lang/String;

    if-eqz v0, :cond_5e

    .line 160
    const-string p1, "RestoreSession"

    const-string p2, "Ignoring restoreAll() on single-package session"

    invoke-static {p1, p2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5c
    .catchall {:try_start_51 .. :try_end_5c} :catchall_e8

    .line 161
    monitor-exit p0

    return v1

    .line 164
    :cond_5e
    :try_start_5e
    iget-object v0, p0, Lcom/android/server/backup/restore/ActiveRestoreSession;->mTransportManager:Lcom/android/server/backup/TransportManager;

    iget-object v2, p0, Lcom/android/server/backup/restore/ActiveRestoreSession;->mTransportName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/android/server/backup/TransportManager;->isTransportRegistered(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_87

    .line 165
    const-string p1, "RestoreSession"

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Transport "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lcom/android/server/backup/restore/ActiveRestoreSession;->mTransportName:Ljava/lang/String;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, " not registered"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_85
    .catchall {:try_start_5e .. :try_end_85} :catchall_e8

    .line 166
    monitor-exit p0

    return v1

    .line 169
    :cond_87
    :try_start_87
    iget-object v0, p0, Lcom/android/server/backup/restore/ActiveRestoreSession;->mBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    invoke-virtual {v0}, Lcom/android/server/backup/UserBackupManagerService;->getQueueLock()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0
    :try_end_8e
    .catchall {:try_start_87 .. :try_end_8e} :catchall_e8

    .line 170
    const/4 v2, 0x0

    :goto_8f
    :try_start_8f
    iget-object v3, p0, Lcom/android/server/backup/restore/ActiveRestoreSession;->mRestoreSets:[Landroid/app/backup/RestoreSet;

    array-length v3, v3

    if-ge v2, v3, :cond_bb

    .line 171
    iget-object v3, p0, Lcom/android/server/backup/restore/ActiveRestoreSession;->mRestoreSets:[Landroid/app/backup/RestoreSet;

    aget-object v3, v3, v2

    iget-wide v3, v3, Landroid/app/backup/RestoreSet;->token:J

    cmp-long v3, p1, v3

    if-nez v3, :cond_b8

    .line 172
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1
    :try_end_a2
    .catchall {:try_start_8f .. :try_end_a2} :catchall_dd

    .line 174
    :try_start_a2
    new-instance v3, Lcom/android/server/backup/restore/-$$Lambda$ActiveRestoreSession$iPMdVI7x_J8xmayWzH6Euhd5674;

    invoke-direct {v3, p3, p4, p1, p2}, Lcom/android/server/backup/restore/-$$Lambda$ActiveRestoreSession$iPMdVI7x_J8xmayWzH6Euhd5674;-><init>(Landroid/app/backup/IRestoreObserver;Landroid/app/backup/IBackupManagerMonitor;J)V

    const-string p1, "RestoreSession.restoreAll()"

    invoke-direct {p0, v3, p1}, Lcom/android/server/backup/restore/ActiveRestoreSession;->sendRestoreToHandlerLocked(Ljava/util/function/BiFunction;Ljava/lang/String;)I

    move-result p1
    :try_end_ad
    .catchall {:try_start_a2 .. :try_end_ad} :catchall_b3

    .line 184
    :try_start_ad
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    monitor-exit v0
    :try_end_b1
    .catchall {:try_start_ad .. :try_end_b1} :catchall_dd

    .line 174
    monitor-exit p0

    return p1

    .line 184
    :catchall_b3
    move-exception p1

    :try_start_b4
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p1

    .line 170
    :cond_b8
    add-int/lit8 v2, v2, 0x1

    goto :goto_8f

    .line 188
    :cond_bb
    monitor-exit v0
    :try_end_bc
    .catchall {:try_start_b4 .. :try_end_bc} :catchall_dd

    .line 190
    :try_start_bc
    const-string p3, "RestoreSession"

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Restore token "

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1, p2}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " not found"

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p3, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_db
    .catchall {:try_start_bc .. :try_end_db} :catchall_e8

    .line 191
    monitor-exit p0

    return v1

    .line 188
    :catchall_dd
    move-exception p1

    :try_start_de
    monitor-exit v0
    :try_end_df
    .catchall {:try_start_de .. :try_end_df} :catchall_dd

    :try_start_df
    throw p1

    .line 146
    :cond_e0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Restore session already ended"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_e8
    .catchall {:try_start_df .. :try_end_e8} :catchall_e8

    .line 135
    :catchall_e8
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized restorePackage(Ljava/lang/String;Landroid/app/backup/IRestoreObserver;Landroid/app/backup/IBackupManagerMonitor;)I
    .registers 14

    monitor-enter p0

    .line 290
    :try_start_1
    const-string v0, "RestoreSession"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "restorePackage pkg="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " obs="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string/jumbo v2, "monitor="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 294
    iget-boolean v0, p0, Lcom/android/server/backup/restore/ActiveRestoreSession;->mEnded:Z

    if-nez v0, :cond_171

    .line 298
    iget-boolean v0, p0, Lcom/android/server/backup/restore/ActiveRestoreSession;->mTimedOut:Z

    const/4 v1, -0x1

    if-eqz v0, :cond_3b

    .line 299
    const-string p1, "RestoreSession"

    const-string p2, "Session already timed out"

    invoke-static {p1, p2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_39
    .catchall {:try_start_1 .. :try_end_39} :catchall_179

    .line 300
    monitor-exit p0

    return v1

    .line 303
    :cond_3b
    :try_start_3b
    iget-object v0, p0, Lcom/android/server/backup/restore/ActiveRestoreSession;->mPackageName:Ljava/lang/String;

    if-eqz v0, :cond_69

    .line 304
    iget-object v0, p0, Lcom/android/server/backup/restore/ActiveRestoreSession;->mPackageName:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_69

    .line 305
    const-string p2, "RestoreSession"

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Ignoring attempt to restore pkg="

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " on session for package "

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/android/server/backup/restore/ActiveRestoreSession;->mPackageName:Ljava/lang/String;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_67
    .catchall {:try_start_3b .. :try_end_67} :catchall_179

    .line 307
    monitor-exit p0

    return v1

    .line 313
    :cond_69
    :try_start_69
    iget-object v0, p0, Lcom/android/server/backup/restore/ActiveRestoreSession;->mBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    invoke-virtual {v0}, Lcom/android/server/backup/UserBackupManagerService;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const/4 v2, 0x0

    iget v3, p0, Lcom/android/server/backup/restore/ActiveRestoreSession;->mUserId:I

    invoke-virtual {v0, p1, v2, v3}, Landroid/content/pm/PackageManager;->getPackageInfoAsUser(Ljava/lang/String;II)Landroid/content/pm/PackageInfo;

    move-result-object v9
    :try_end_76
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_69 .. :try_end_76} :catch_158
    .catchall {:try_start_69 .. :try_end_76} :catchall_179

    .line 318
    nop

    .line 322
    :try_start_77
    iget-object v0, p0, Lcom/android/server/backup/restore/ActiveRestoreSession;->mBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    invoke-virtual {v0}, Lcom/android/server/backup/UserBackupManagerService;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v2, "android.permission.BACKUP"

    .line 324
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v3

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    .line 322
    invoke-virtual {v0, v2, v3, v4}, Landroid/content/Context;->checkPermission(Ljava/lang/String;II)I

    move-result v0

    .line 325
    if-ne v0, v1, :cond_c3

    iget-object v0, v9, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 326
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    if-ne v0, v2, :cond_98

    goto :goto_c3

    .line 327
    :cond_98
    const-string p2, "RestoreSession"

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "restorePackage: bad packageName="

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " or calling uid="

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 328
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 327
    invoke-static {p2, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 329
    new-instance p1, Ljava/lang/SecurityException;

    const-string p2, "No permission to restore other packages"

    invoke-direct {p1, p2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 332
    :cond_c3
    :goto_c3
    iget-object v0, p0, Lcom/android/server/backup/restore/ActiveRestoreSession;->mTransportManager:Lcom/android/server/backup/TransportManager;

    iget-object v2, p0, Lcom/android/server/backup/restore/ActiveRestoreSession;->mTransportName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/android/server/backup/TransportManager;->isTransportRegistered(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_ec

    .line 333
    const-string p1, "RestoreSession"

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Transport "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lcom/android/server/backup/restore/ActiveRestoreSession;->mTransportName:Ljava/lang/String;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, " not registered"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_ea
    .catchall {:try_start_77 .. :try_end_ea} :catchall_179

    .line 334
    monitor-exit p0

    return v1

    .line 338
    :cond_ec
    :try_start_ec
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2
    :try_end_f0
    .catchall {:try_start_ec .. :try_end_f0} :catchall_179

    .line 342
    :try_start_f0
    iget-object v0, p0, Lcom/android/server/backup/restore/ActiveRestoreSession;->mBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    invoke-virtual {v0, p1}, Lcom/android/server/backup/UserBackupManagerService;->getAvailableRestoreToken(Ljava/lang/String;)J

    move-result-wide v7

    .line 344
    const-string v0, "RestoreSession"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "restorePackage pkg="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " token="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 345
    invoke-static {v7, v8}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 344
    invoke-static {v0, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 351
    const-wide/16 v4, 0x0

    cmp-long v0, v7, v4

    if-nez v0, :cond_12c

    .line 353
    const-string p1, "RestoreSession"

    const-string p2, "No data available for this package; not restoring"

    invoke-static {p1, p2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_126
    .catchall {:try_start_f0 .. :try_end_126} :catchall_153

    .line 355
    nop

    .line 369
    :try_start_127
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_12a
    .catchall {:try_start_127 .. :try_end_12a} :catchall_179

    .line 355
    monitor-exit p0

    return v1

    .line 358
    :cond_12c
    :try_start_12c
    new-instance v0, Lcom/android/server/backup/restore/-$$Lambda$ActiveRestoreSession$tb1mCMujBEuhHsxQ6tX_mYJVCII;

    move-object v4, v0

    move-object v5, p2

    move-object v6, p3

    invoke-direct/range {v4 .. v9}, Lcom/android/server/backup/restore/-$$Lambda$ActiveRestoreSession$tb1mCMujBEuhHsxQ6tX_mYJVCII;-><init>(Landroid/app/backup/IRestoreObserver;Landroid/app/backup/IBackupManagerMonitor;JLandroid/content/pm/PackageInfo;)V

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "RestoreSession.restorePackage("

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Lcom/android/server/backup/restore/ActiveRestoreSession;->sendRestoreToHandlerLocked(Ljava/util/function/BiFunction;Ljava/lang/String;)I

    move-result p1
    :try_end_14e
    .catchall {:try_start_12c .. :try_end_14e} :catchall_153

    .line 369
    :try_start_14e
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_151
    .catchall {:try_start_14e .. :try_end_151} :catchall_179

    .line 358
    monitor-exit p0

    return p1

    .line 369
    :catchall_153
    move-exception p1

    :try_start_154
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p1

    .line 315
    :catch_158
    move-exception p2

    .line 316
    const-string p2, "RestoreSession"

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Asked to restore nonexistent pkg "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_16f
    .catchall {:try_start_154 .. :try_end_16f} :catchall_179

    .line 317
    monitor-exit p0

    return v1

    .line 295
    :cond_171
    :try_start_171
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Restore session already ended"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_179
    .catchall {:try_start_171 .. :try_end_179} :catchall_179

    .line 289
    :catchall_179
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized restorePackages(JLandroid/app/backup/IRestoreObserver;[Ljava/lang/String;Landroid/app/backup/IBackupManagerMonitor;)I
    .registers 16

    monitor-enter p0

    .line 197
    :try_start_1
    iget-object v0, p0, Lcom/android/server/backup/restore/ActiveRestoreSession;->mBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    invoke-virtual {v0}, Lcom/android/server/backup/UserBackupManagerService;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.BACKUP"

    const-string/jumbo v2, "performRestore"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 202
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 203
    const-string/jumbo v1, "restorePackages token="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 204
    invoke-static {p1, p2}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 205
    const-string v1, " observer="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 206
    if-nez p3, :cond_31

    .line 207
    const-string/jumbo v1, "null"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_38

    .line 209
    :cond_31
    invoke-virtual {p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 211
    :goto_38
    const-string v1, " monitor="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 212
    if-nez p5, :cond_46

    .line 213
    const-string/jumbo v1, "null"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_4d

    .line 215
    :cond_46
    invoke-virtual {p5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 217
    :goto_4d
    const-string v1, " packages="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 218
    const/4 v1, 0x0

    if-nez p4, :cond_5c

    .line 219
    const-string/jumbo v2, "null"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_7e

    .line 221
    :cond_5c
    const/16 v2, 0x7b

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 222
    nop

    .line 223
    array-length v2, p4

    const/4 v3, 0x1

    move v4, v3

    move v3, v1

    :goto_66
    if-ge v3, v2, :cond_79

    aget-object v5, p4, v3

    .line 224
    if-nez v4, :cond_72

    .line 225
    const-string v6, ", "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_73

    .line 227
    :cond_72
    move v4, v1

    .line 229
    :goto_73
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 223
    add-int/lit8 v3, v3, 0x1

    goto :goto_66

    .line 231
    :cond_79
    const/16 v2, 0x7d

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 233
    :goto_7e
    const-string v2, "RestoreSession"

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 236
    iget-boolean v0, p0, Lcom/android/server/backup/restore/ActiveRestoreSession;->mEnded:Z

    if-nez v0, :cond_14f

    .line 240
    iget-boolean v0, p0, Lcom/android/server/backup/restore/ActiveRestoreSession;->mTimedOut:Z

    const/4 v2, -0x1

    if-eqz v0, :cond_99

    .line 241
    const-string p1, "RestoreSession"

    const-string p2, "Session already timed out"

    invoke-static {p1, p2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_97
    .catchall {:try_start_1 .. :try_end_97} :catchall_157

    .line 242
    monitor-exit p0

    return v2

    .line 245
    :cond_99
    :try_start_99
    iget-object v0, p0, Lcom/android/server/backup/restore/ActiveRestoreSession;->mRestoreSets:[Landroid/app/backup/RestoreSet;

    if-nez v0, :cond_a6

    .line 246
    const-string p1, "RestoreSession"

    const-string p2, "Ignoring restoreAll() with no restore set"

    invoke-static {p1, p2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_a4
    .catchall {:try_start_99 .. :try_end_a4} :catchall_157

    .line 247
    monitor-exit p0

    return v2

    .line 250
    :cond_a6
    :try_start_a6
    iget-object v0, p0, Lcom/android/server/backup/restore/ActiveRestoreSession;->mPackageName:Ljava/lang/String;

    if-eqz v0, :cond_b3

    .line 251
    const-string p1, "RestoreSession"

    const-string p2, "Ignoring restoreAll() on single-package session"

    invoke-static {p1, p2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_b1
    .catchall {:try_start_a6 .. :try_end_b1} :catchall_157

    .line 252
    monitor-exit p0

    return v2

    .line 255
    :cond_b3
    :try_start_b3
    iget-object v0, p0, Lcom/android/server/backup/restore/ActiveRestoreSession;->mTransportManager:Lcom/android/server/backup/TransportManager;

    iget-object v3, p0, Lcom/android/server/backup/restore/ActiveRestoreSession;->mTransportName:Ljava/lang/String;

    invoke-virtual {v0, v3}, Lcom/android/server/backup/TransportManager;->isTransportRegistered(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_dc

    .line 256
    const-string p1, "RestoreSession"

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Transport "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lcom/android/server/backup/restore/ActiveRestoreSession;->mTransportName:Ljava/lang/String;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, " not registered"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_da
    .catchall {:try_start_b3 .. :try_end_da} :catchall_157

    .line 257
    monitor-exit p0

    return v2

    .line 260
    :cond_dc
    :try_start_dc
    iget-object v0, p0, Lcom/android/server/backup/restore/ActiveRestoreSession;->mBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    invoke-virtual {v0}, Lcom/android/server/backup/UserBackupManagerService;->getQueueLock()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0
    :try_end_e3
    .catchall {:try_start_dc .. :try_end_e3} :catchall_157

    .line 261
    nop

    :goto_e4
    :try_start_e4
    iget-object v3, p0, Lcom/android/server/backup/restore/ActiveRestoreSession;->mRestoreSets:[Landroid/app/backup/RestoreSet;

    array-length v3, v3

    if-ge v1, v3, :cond_12a

    .line 262
    iget-object v3, p0, Lcom/android/server/backup/restore/ActiveRestoreSession;->mRestoreSets:[Landroid/app/backup/RestoreSet;

    aget-object v3, v3, v1

    iget-wide v3, v3, Landroid/app/backup/RestoreSet;->token:J

    cmp-long v3, p1, v3

    if-nez v3, :cond_127

    .line 263
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1
    :try_end_f7
    .catchall {:try_start_e4 .. :try_end_f7} :catchall_14c

    .line 265
    :try_start_f7
    new-instance v9, Lcom/android/server/backup/restore/-$$Lambda$ActiveRestoreSession$gXVTdFUn9LSjuKEXaGOyKBxki6Q;

    move-object v3, v9

    move-object v4, p3

    move-object v5, p5

    move-wide v6, p1

    move-object v8, p4

    invoke-direct/range {v3 .. v8}, Lcom/android/server/backup/restore/-$$Lambda$ActiveRestoreSession$gXVTdFUn9LSjuKEXaGOyKBxki6Q;-><init>(Landroid/app/backup/IRestoreObserver;Landroid/app/backup/IBackupManagerMonitor;J[Ljava/lang/String;)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "RestoreSession.restorePackages("

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length p2, p4

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " packages)"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, v9, p1}, Lcom/android/server/backup/restore/ActiveRestoreSession;->sendRestoreToHandlerLocked(Ljava/util/function/BiFunction;Ljava/lang/String;)I

    move-result p1
    :try_end_11c
    .catchall {:try_start_f7 .. :try_end_11c} :catchall_122

    .line 277
    :try_start_11c
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    monitor-exit v0
    :try_end_120
    .catchall {:try_start_11c .. :try_end_120} :catchall_14c

    .line 265
    monitor-exit p0

    return p1

    .line 277
    :catchall_122
    move-exception p1

    :try_start_123
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p1

    .line 261
    :cond_127
    add-int/lit8 v1, v1, 0x1

    goto :goto_e4

    .line 281
    :cond_12a
    monitor-exit v0
    :try_end_12b
    .catchall {:try_start_123 .. :try_end_12b} :catchall_14c

    .line 283
    :try_start_12b
    const-string p3, "RestoreSession"

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string p5, "Restore token "

    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1, p2}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " not found"

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p3, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_14a
    .catchall {:try_start_12b .. :try_end_14a} :catchall_157

    .line 284
    monitor-exit p0

    return v2

    .line 281
    :catchall_14c
    move-exception p1

    :try_start_14d
    monitor-exit v0
    :try_end_14e
    .catchall {:try_start_14d .. :try_end_14e} :catchall_14c

    :try_start_14e
    throw p1

    .line 237
    :cond_14f
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Restore session already ended"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_157
    .catchall {:try_start_14e .. :try_end_157} :catchall_157

    .line 196
    :catchall_157
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public setRestoreSets([Landroid/app/backup/RestoreSet;)V
    .registers 2

    .line 374
    iput-object p1, p0, Lcom/android/server/backup/restore/ActiveRestoreSession;->mRestoreSets:[Landroid/app/backup/RestoreSet;

    .line 375
    return-void
.end method
