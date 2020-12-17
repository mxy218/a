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
    .param p1, "backupManagerService"  # Lcom/android/server/backup/UserBackupManagerService;
    .param p2, "packageName"  # Ljava/lang/String;
    .param p3, "transportName"  # Ljava/lang/String;

    .line 67
    invoke-direct {p0}, Landroid/app/backup/IRestoreSession$Stub;-><init>()V

    .line 60
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/backup/restore/ActiveRestoreSession;->mRestoreSets:[Landroid/app/backup/RestoreSet;

    .line 61
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/backup/restore/ActiveRestoreSession;->mEnded:Z

    .line 62
    iput-boolean v0, p0, Lcom/android/server/backup/restore/ActiveRestoreSession;->mTimedOut:Z

    .line 68
    iput-object p1, p0, Lcom/android/server/backup/restore/ActiveRestoreSession;->mBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    .line 69
    iput-object p2, p0, Lcom/android/server/backup/restore/ActiveRestoreSession;->mPackageName:Ljava/lang/String;

    .line 70
    invoke-virtual {p1}, Lcom/android/server/backup/UserBackupManagerService;->getTransportManager()Lcom/android/server/backup/TransportManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/backup/restore/ActiveRestoreSession;->mTransportManager:Lcom/android/server/backup/TransportManager;

    .line 71
    iput-object p3, p0, Lcom/android/server/backup/restore/ActiveRestoreSession;->mTransportName:Ljava/lang/String;

    .line 72
    invoke-virtual {p1}, Lcom/android/server/backup/UserBackupManagerService;->getUserId()I

    move-result v0

    iput v0, p0, Lcom/android/server/backup/restore/ActiveRestoreSession;->mUserId:I

    .line 73
    return-void
.end method

.method static synthetic lambda$getAvailableRestoreSets$0(Lcom/android/server/backup/TransportManager;Lcom/android/server/backup/transport/TransportClient;Landroid/os/PowerManager$WakeLock;Ljava/lang/String;)V
    .registers 4
    .param p0, "transportManager"  # Lcom/android/server/backup/TransportManager;
    .param p1, "transportClient"  # Lcom/android/server/backup/transport/TransportClient;
    .param p2, "wakelock"  # Landroid/os/PowerManager$WakeLock;
    .param p3, "caller"  # Ljava/lang/String;

    .line 119
    invoke-virtual {p0, p1, p3}, Lcom/android/server/backup/TransportManager;->disposeOfTransportClient(Lcom/android/server/backup/transport/TransportClient;Ljava/lang/String;)V

    .line 120
    invoke-virtual {p2}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 121
    return-void
.end method

.method static synthetic lambda$restoreAll$1(Landroid/app/backup/IRestoreObserver;Landroid/app/backup/IBackupManagerMonitor;JLcom/android/server/backup/transport/TransportClient;Lcom/android/server/backup/internal/OnTaskFinishedListener;)Lcom/android/server/backup/params/RestoreParams;
    .registers 12
    .param p0, "observer"  # Landroid/app/backup/IRestoreObserver;
    .param p1, "monitor"  # Landroid/app/backup/IBackupManagerMonitor;
    .param p2, "token"  # J
    .param p4, "transportClient"  # Lcom/android/server/backup/transport/TransportClient;
    .param p5, "listener"  # Lcom/android/server/backup/internal/OnTaskFinishedListener;

    .line 177
    move-object v0, p4

    move-object v1, p0

    move-object v2, p1

    move-wide v3, p2

    move-object v5, p5

    invoke-static/range {v0 .. v5}, Lcom/android/server/backup/params/RestoreParams;->createForRestoreAll(Lcom/android/server/backup/transport/TransportClient;Landroid/app/backup/IRestoreObserver;Landroid/app/backup/IBackupManagerMonitor;JLcom/android/server/backup/internal/OnTaskFinishedListener;)Lcom/android/server/backup/params/RestoreParams;

    move-result-object v0

    return-object v0
.end method

.method static synthetic lambda$restorePackage$3(Landroid/app/backup/IRestoreObserver;Landroid/app/backup/IBackupManagerMonitor;JLandroid/content/pm/PackageInfo;Lcom/android/server/backup/transport/TransportClient;Lcom/android/server/backup/internal/OnTaskFinishedListener;)Lcom/android/server/backup/params/RestoreParams;
    .registers 14
    .param p0, "observer"  # Landroid/app/backup/IRestoreObserver;
    .param p1, "monitor"  # Landroid/app/backup/IBackupManagerMonitor;
    .param p2, "token"  # J
    .param p4, "app"  # Landroid/content/pm/PackageInfo;
    .param p5, "transportClient"  # Lcom/android/server/backup/transport/TransportClient;
    .param p6, "listener"  # Lcom/android/server/backup/internal/OnTaskFinishedListener;

    .line 361
    move-object v0, p5

    move-object v1, p0

    move-object v2, p1

    move-wide v3, p2

    move-object v5, p4

    move-object v6, p6

    invoke-static/range {v0 .. v6}, Lcom/android/server/backup/params/RestoreParams;->createForSinglePackage(Lcom/android/server/backup/transport/TransportClient;Landroid/app/backup/IRestoreObserver;Landroid/app/backup/IBackupManagerMonitor;JLandroid/content/pm/PackageInfo;Lcom/android/server/backup/internal/OnTaskFinishedListener;)Lcom/android/server/backup/params/RestoreParams;

    move-result-object v0

    return-object v0
.end method

.method static synthetic lambda$restorePackages$2(Landroid/app/backup/IRestoreObserver;Landroid/app/backup/IBackupManagerMonitor;J[Ljava/lang/String;Lcom/android/server/backup/transport/TransportClient;Lcom/android/server/backup/internal/OnTaskFinishedListener;)Lcom/android/server/backup/params/RestoreParams;
    .registers 15
    .param p0, "observer"  # Landroid/app/backup/IRestoreObserver;
    .param p1, "monitor"  # Landroid/app/backup/IBackupManagerMonitor;
    .param p2, "token"  # J
    .param p4, "packages"  # [Ljava/lang/String;
    .param p5, "transportClient"  # Lcom/android/server/backup/transport/TransportClient;
    .param p6, "listener"  # Lcom/android/server/backup/internal/OnTaskFinishedListener;

    .line 268
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

.method static synthetic lambda$sendRestoreToHandlerLocked$4(Lcom/android/server/backup/TransportManager;Lcom/android/server/backup/transport/TransportClient;Landroid/os/PowerManager$WakeLock;Ljava/lang/String;)V
    .registers 4
    .param p0, "transportManager"  # Lcom/android/server/backup/TransportManager;
    .param p1, "transportClient"  # Lcom/android/server/backup/transport/TransportClient;
    .param p2, "wakelock"  # Landroid/os/PowerManager$WakeLock;
    .param p3, "caller"  # Ljava/lang/String;

    .line 404
    invoke-virtual {p0, p1, p3}, Lcom/android/server/backup/TransportManager;->disposeOfTransportClient(Lcom/android/server/backup/transport/TransportClient;Ljava/lang/String;)V

    .line 405
    invoke-virtual {p2}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 406
    return-void
.end method

.method private sendRestoreToHandlerLocked(Ljava/util/function/BiFunction;Ljava/lang/String;)I
    .registers 10
    .param p2, "callerLogString"  # Ljava/lang/String;
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

    .line 384
    .local p1, "restoreParamsBuilder":Ljava/util/function/BiFunction;, "Ljava/util/function/BiFunction<Lcom/android/server/backup/transport/TransportClient;Lcom/android/server/backup/internal/OnTaskFinishedListener;Lcom/android/server/backup/params/RestoreParams;>;"
    iget-object v0, p0, Lcom/android/server/backup/restore/ActiveRestoreSession;->mTransportManager:Lcom/android/server/backup/TransportManager;

    iget-object v1, p0, Lcom/android/server/backup/restore/ActiveRestoreSession;->mTransportName:Ljava/lang/String;

    .line 385
    invoke-virtual {v0, v1, p2}, Lcom/android/server/backup/TransportManager;->getTransportClient(Ljava/lang/String;Ljava/lang/String;)Lcom/android/server/backup/transport/TransportClient;

    move-result-object v0

    .line 386
    .local v0, "transportClient":Lcom/android/server/backup/transport/TransportClient;
    if-nez v0, :cond_29

    .line 387
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Transport "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/backup/restore/ActiveRestoreSession;->mTransportName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " got unregistered"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "RestoreSession"

    invoke-static {v2, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 388
    const/4 v1, -0x1

    return v1

    .line 392
    :cond_29
    iget-object v1, p0, Lcom/android/server/backup/restore/ActiveRestoreSession;->mBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    invoke-virtual {v1}, Lcom/android/server/backup/UserBackupManagerService;->getBackupHandler()Landroid/os/Handler;

    move-result-object v1

    .line 393
    .local v1, "backupHandler":Landroid/os/Handler;
    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 395
    iget-object v2, p0, Lcom/android/server/backup/restore/ActiveRestoreSession;->mBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    invoke-virtual {v2}, Lcom/android/server/backup/UserBackupManagerService;->getWakelock()Landroid/os/PowerManager$WakeLock;

    move-result-object v2

    .line 396
    .local v2, "wakelock":Landroid/os/PowerManager$WakeLock;
    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 402
    iget-object v3, p0, Lcom/android/server/backup/restore/ActiveRestoreSession;->mTransportManager:Lcom/android/server/backup/TransportManager;

    .line 403
    .local v3, "transportManager":Lcom/android/server/backup/TransportManager;
    new-instance v4, Lcom/android/server/backup/restore/-$$Lambda$ActiveRestoreSession$0QlkHke0fYNRb0nGuyNs6WmyPDM;

    .local v4, "listener":Lcom/android/server/backup/internal/OnTaskFinishedListener;
    invoke-direct {v4, v3, v0, v2}, Lcom/android/server/backup/restore/-$$Lambda$ActiveRestoreSession$0QlkHke0fYNRb0nGuyNs6WmyPDM;-><init>(Lcom/android/server/backup/TransportManager;Lcom/android/server/backup/transport/TransportClient;Landroid/os/PowerManager$WakeLock;)V

    .line 407
    const/4 v5, 0x3

    invoke-virtual {v1, v5}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v5

    .line 408
    .local v5, "msg":Landroid/os/Message;
    invoke-interface {p1, v0, v4}, Ljava/util/function/BiFunction;->apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    iput-object v6, v5, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 409
    invoke-virtual {v1, v5}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 410
    const/4 v6, 0x0

    return v6
.end method


# virtual methods
.method public declared-synchronized endRestoreSession()V
    .registers 4

    monitor-enter p0

    .line 438
    :try_start_1
    const-string v0, "RestoreSession"

    const-string v1, "endRestoreSession"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 441
    iget-boolean v0, p0, Lcom/android/server/backup/restore/ActiveRestoreSession;->mTimedOut:Z

    if-eqz v0, :cond_15

    .line 442
    const-string v0, "RestoreSession"

    const-string v1, "Session already timed out"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_13
    .catchall {:try_start_1 .. :try_end_13} :catchall_33

    .line 443
    monitor-exit p0

    return-void

    .line 446
    .end local p0  # "this":Lcom/android/server/backup/restore/ActiveRestoreSession;
    :cond_15
    :try_start_15
    iget-boolean v0, p0, Lcom/android/server/backup/restore/ActiveRestoreSession;->mEnded:Z

    if-nez v0, :cond_2b

    .line 450
    iget-object v0, p0, Lcom/android/server/backup/restore/ActiveRestoreSession;->mBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    invoke-virtual {v0}, Lcom/android/server/backup/UserBackupManagerService;->getBackupHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/server/backup/restore/ActiveRestoreSession$EndRestoreRunnable;

    iget-object v2, p0, Lcom/android/server/backup/restore/ActiveRestoreSession;->mBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    invoke-direct {v1, p0, v2, p0}, Lcom/android/server/backup/restore/ActiveRestoreSession$EndRestoreRunnable;-><init>(Lcom/android/server/backup/restore/ActiveRestoreSession;Lcom/android/server/backup/UserBackupManagerService;Lcom/android/server/backup/restore/ActiveRestoreSession;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_29
    .catchall {:try_start_15 .. :try_end_29} :catchall_33

    .line 452
    monitor-exit p0

    return-void

    .line 447
    :cond_2b
    :try_start_2b
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Restore session already ended"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_33
    .catchall {:try_start_2b .. :try_end_33} :catchall_33

    .line 437
    :catchall_33
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getAvailableRestoreSets(Landroid/app/backup/IRestoreObserver;Landroid/app/backup/IBackupManagerMonitor;)I
    .registers 19
    .param p1, "observer"  # Landroid/app/backup/IRestoreObserver;
    .param p2, "monitor"  # Landroid/app/backup/IBackupManagerMonitor;

    move-object/from16 v7, p0

    monitor-enter p0

    .line 82
    :try_start_3
    iget-object v0, v7, Lcom/android/server/backup/restore/ActiveRestoreSession;->mBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    invoke-virtual {v0}, Lcom/android/server/backup/UserBackupManagerService;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.BACKUP"

    const-string v2, "getAvailableRestoreSets"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 85
    if-eqz p1, :cond_a2

    .line 89
    iget-boolean v0, v7, Lcom/android/server/backup/restore/ActiveRestoreSession;->mEnded:Z

    if-nez v0, :cond_9a

    .line 93
    iget-boolean v0, v7, Lcom/android/server/backup/restore/ActiveRestoreSession;->mTimedOut:Z

    const/4 v8, -0x1

    if-eqz v0, :cond_24

    .line 94
    const-string v0, "RestoreSession"

    const-string v1, "Session already timed out"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_22
    .catchall {:try_start_3 .. :try_end_22} :catchall_aa

    .line 95
    monitor-exit p0

    return v8

    .line 98
    .end local p0  # "this":Lcom/android/server/backup/restore/ActiveRestoreSession;
    :cond_24
    :try_start_24
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0
    :try_end_28
    .catchall {:try_start_24 .. :try_end_28} :catchall_aa

    move-wide v9, v0

    .line 100
    .local v9, "oldId":J
    :try_start_29
    iget-object v0, v7, Lcom/android/server/backup/restore/ActiveRestoreSession;->mTransportManager:Lcom/android/server/backup/TransportManager;

    iget-object v1, v7, Lcom/android/server/backup/restore/ActiveRestoreSession;->mTransportName:Ljava/lang/String;

    const-string v2, "RestoreSession.getAvailableRestoreSets()"

    .line 101
    invoke-virtual {v0, v1, v2}, Lcom/android/server/backup/TransportManager;->getTransportClient(Ljava/lang/String;Ljava/lang/String;)Lcom/android/server/backup/transport/TransportClient;

    move-result-object v0

    .line 103
    .local v0, "transportClient":Lcom/android/server/backup/transport/TransportClient;
    if-nez v0, :cond_42

    .line 104
    const-string v1, "RestoreSession"

    const-string v2, "Null transport client getting restore sets"

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3c
    .catch Ljava/lang/Exception; {:try_start_29 .. :try_end_3c} :catch_88
    .catchall {:try_start_29 .. :try_end_3c} :catchall_86

    .line 105
    nop

    .line 131
    :try_start_3d
    invoke-static {v9, v10}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_40
    .catchall {:try_start_3d .. :try_end_40} :catchall_aa

    .line 105
    monitor-exit p0

    return v8

    .line 111
    :cond_42
    :try_start_42
    iget-object v1, v7, Lcom/android/server/backup/restore/ActiveRestoreSession;->mBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    invoke-virtual {v1}, Lcom/android/server/backup/UserBackupManagerService;->getBackupHandler()Landroid/os/Handler;

    move-result-object v1

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 113
    iget-object v1, v7, Lcom/android/server/backup/restore/ActiveRestoreSession;->mBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    invoke-virtual {v1}, Lcom/android/server/backup/UserBackupManagerService;->getWakelock()Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    move-object v11, v1

    .line 114
    .local v11, "wakelock":Landroid/os/PowerManager$WakeLock;
    invoke-virtual {v11}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 117
    iget-object v1, v7, Lcom/android/server/backup/restore/ActiveRestoreSession;->mTransportManager:Lcom/android/server/backup/TransportManager;

    move-object v12, v1

    .line 118
    .local v12, "transportManager":Lcom/android/server/backup/TransportManager;
    new-instance v6, Lcom/android/server/backup/restore/-$$Lambda$ActiveRestoreSession$0wzV_GqtA0thM1WxLthNBKD3Ygw;

    invoke-direct {v6, v12, v0, v11}, Lcom/android/server/backup/restore/-$$Lambda$ActiveRestoreSession$0wzV_GqtA0thM1WxLthNBKD3Ygw;-><init>(Lcom/android/server/backup/TransportManager;Lcom/android/server/backup/transport/TransportClient;Landroid/os/PowerManager$WakeLock;)V

    .line 122
    .local v6, "listener":Lcom/android/server/backup/internal/OnTaskFinishedListener;
    iget-object v1, v7, Lcom/android/server/backup/restore/ActiveRestoreSession;->mBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    invoke-virtual {v1}, Lcom/android/server/backup/UserBackupManagerService;->getBackupHandler()Landroid/os/Handler;

    move-result-object v13

    const/4 v14, 0x6

    new-instance v15, Lcom/android/server/backup/params/RestoreGetSetsParams;

    move-object v1, v15

    move-object v2, v0

    move-object/from16 v3, p0

    move-object/from16 v4, p1

    move-object/from16 v5, p2

    invoke-direct/range {v1 .. v6}, Lcom/android/server/backup/params/RestoreGetSetsParams;-><init>(Lcom/android/server/backup/transport/TransportClient;Lcom/android/server/backup/restore/ActiveRestoreSession;Landroid/app/backup/IRestoreObserver;Landroid/app/backup/IBackupManagerMonitor;Lcom/android/server/backup/internal/OnTaskFinishedListener;)V

    invoke-virtual {v13, v14, v15}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 125
    .local v1, "msg":Landroid/os/Message;
    iget-object v2, v7, Lcom/android/server/backup/restore/ActiveRestoreSession;->mBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    invoke-virtual {v2}, Lcom/android/server/backup/UserBackupManagerService;->getBackupHandler()Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_80
    .catch Ljava/lang/Exception; {:try_start_42 .. :try_end_80} :catch_88
    .catchall {:try_start_42 .. :try_end_80} :catchall_86

    .line 126
    const/4 v2, 0x0

    .line 131
    :try_start_81
    invoke-static {v9, v10}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_84
    .catchall {:try_start_81 .. :try_end_84} :catchall_aa

    .line 126
    monitor-exit p0

    return v2

    .line 131
    .end local v0  # "transportClient":Lcom/android/server/backup/transport/TransportClient;
    .end local v1  # "msg":Landroid/os/Message;
    .end local v6  # "listener":Lcom/android/server/backup/internal/OnTaskFinishedListener;
    .end local v11  # "wakelock":Landroid/os/PowerManager$WakeLock;
    .end local v12  # "transportManager":Lcom/android/server/backup/TransportManager;
    :catchall_86
    move-exception v0

    goto :goto_96

    .line 127
    :catch_88
    move-exception v0

    .line 128
    .local v0, "e":Ljava/lang/Exception;
    :try_start_89
    const-string v1, "RestoreSession"

    const-string v2, "Error in getAvailableRestoreSets"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_90
    .catchall {:try_start_89 .. :try_end_90} :catchall_86

    .line 129
    nop

    .line 131
    :try_start_91
    invoke-static {v9, v10}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_94
    .catchall {:try_start_91 .. :try_end_94} :catchall_aa

    .line 129
    monitor-exit p0

    return v8

    .line 131
    .end local v0  # "e":Ljava/lang/Exception;
    :goto_96
    :try_start_96
    invoke-static {v9, v10}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0

    .line 90
    .end local v9  # "oldId":J
    :cond_9a
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Restore session already ended"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 86
    :cond_a2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Observer must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_aa
    .catchall {:try_start_96 .. :try_end_aa} :catchall_aa

    .line 81
    .end local p1  # "observer":Landroid/app/backup/IRestoreObserver;
    .end local p2  # "monitor":Landroid/app/backup/IBackupManagerMonitor;
    :catchall_aa
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public markTimedOut()V
    .registers 2

    .line 76
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/backup/restore/ActiveRestoreSession;->mTimedOut:Z

    .line 77
    return-void
.end method

.method public declared-synchronized restoreAll(JLandroid/app/backup/IRestoreObserver;Landroid/app/backup/IBackupManagerMonitor;)I
    .registers 11
    .param p1, "token"  # J
    .param p3, "observer"  # Landroid/app/backup/IRestoreObserver;
    .param p4, "monitor"  # Landroid/app/backup/IBackupManagerMonitor;

    monitor-enter p0

    .line 137
    :try_start_1
    iget-object v0, p0, Lcom/android/server/backup/restore/ActiveRestoreSession;->mBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    invoke-virtual {v0}, Lcom/android/server/backup/UserBackupManagerService;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.BACKUP"

    const-string/jumbo v2, "performRestore"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 142
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

    .line 146
    iget-boolean v0, p0, Lcom/android/server/backup/restore/ActiveRestoreSession;->mEnded:Z

    if-nez v0, :cond_e2

    .line 150
    iget-boolean v0, p0, Lcom/android/server/backup/restore/ActiveRestoreSession;->mTimedOut:Z

    const/4 v1, -0x1

    if-eqz v0, :cond_44

    .line 151
    const-string v0, "RestoreSession"

    const-string v2, "Session already timed out"

    invoke-static {v0, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_42
    .catchall {:try_start_1 .. :try_end_42} :catchall_ea

    .line 152
    monitor-exit p0

    return v1

    .line 155
    .end local p0  # "this":Lcom/android/server/backup/restore/ActiveRestoreSession;
    :cond_44
    :try_start_44
    iget-object v0, p0, Lcom/android/server/backup/restore/ActiveRestoreSession;->mRestoreSets:[Landroid/app/backup/RestoreSet;

    if-nez v0, :cond_51

    .line 156
    const-string v0, "RestoreSession"

    const-string v2, "Ignoring restoreAll() with no restore set"

    invoke-static {v0, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4f
    .catchall {:try_start_44 .. :try_end_4f} :catchall_ea

    .line 157
    monitor-exit p0

    return v1

    .line 160
    :cond_51
    :try_start_51
    iget-object v0, p0, Lcom/android/server/backup/restore/ActiveRestoreSession;->mPackageName:Ljava/lang/String;

    if-eqz v0, :cond_5e

    .line 161
    const-string v0, "RestoreSession"

    const-string v2, "Ignoring restoreAll() on single-package session"

    invoke-static {v0, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5c
    .catchall {:try_start_51 .. :try_end_5c} :catchall_ea

    .line 162
    monitor-exit p0

    return v1

    .line 165
    :cond_5e
    :try_start_5e
    iget-object v0, p0, Lcom/android/server/backup/restore/ActiveRestoreSession;->mTransportManager:Lcom/android/server/backup/TransportManager;

    iget-object v2, p0, Lcom/android/server/backup/restore/ActiveRestoreSession;->mTransportName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/android/server/backup/TransportManager;->isTransportRegistered(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_87

    .line 166
    const-string v0, "RestoreSession"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Transport "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/backup/restore/ActiveRestoreSession;->mTransportName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " not registered"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_85
    .catchall {:try_start_5e .. :try_end_85} :catchall_ea

    .line 167
    monitor-exit p0

    return v1

    .line 170
    :cond_87
    :try_start_87
    iget-object v0, p0, Lcom/android/server/backup/restore/ActiveRestoreSession;->mBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    invoke-virtual {v0}, Lcom/android/server/backup/UserBackupManagerService;->getQueueLock()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0
    :try_end_8e
    .catchall {:try_start_87 .. :try_end_8e} :catchall_ea

    .line 171
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_8f
    :try_start_8f
    iget-object v3, p0, Lcom/android/server/backup/restore/ActiveRestoreSession;->mRestoreSets:[Landroid/app/backup/RestoreSet;

    array-length v3, v3
    :try_end_92
    .catchall {:try_start_8f .. :try_end_92} :catchall_df

    if-ge v2, v3, :cond_bd

    .line 172
    :try_start_94
    iget-object v3, p0, Lcom/android/server/backup/restore/ActiveRestoreSession;->mRestoreSets:[Landroid/app/backup/RestoreSet;

    aget-object v3, v3, v2

    iget-wide v3, v3, Landroid/app/backup/RestoreSet;->token:J

    cmp-long v3, p1, v3

    if-nez v3, :cond_b8

    .line 173
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v3
    :try_end_a2
    .catchall {:try_start_94 .. :try_end_a2} :catchall_bb

    .line 175
    .local v3, "oldId":J
    :try_start_a2
    new-instance v1, Lcom/android/server/backup/restore/-$$Lambda$ActiveRestoreSession$iPMdVI7x_J8xmayWzH6Euhd5674;

    invoke-direct {v1, p3, p4, p1, p2}, Lcom/android/server/backup/restore/-$$Lambda$ActiveRestoreSession$iPMdVI7x_J8xmayWzH6Euhd5674;-><init>(Landroid/app/backup/IRestoreObserver;Landroid/app/backup/IBackupManagerMonitor;J)V

    const-string v5, "RestoreSession.restoreAll()"

    invoke-direct {p0, v1, v5}, Lcom/android/server/backup/restore/ActiveRestoreSession;->sendRestoreToHandlerLocked(Ljava/util/function/BiFunction;Ljava/lang/String;)I

    move-result v1
    :try_end_ad
    .catchall {:try_start_a2 .. :try_end_ad} :catchall_b3

    .line 185
    :try_start_ad
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    monitor-exit v0
    :try_end_b1
    .catchall {:try_start_ad .. :try_end_b1} :catchall_bb

    .line 175
    monitor-exit p0

    return v1

    .line 185
    .restart local p0  # "this":Lcom/android/server/backup/restore/ActiveRestoreSession;
    :catchall_b3
    move-exception v1

    :try_start_b4
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .end local p0  # "this":Lcom/android/server/backup/restore/ActiveRestoreSession;
    .end local p1  # "token":J
    .end local p3  # "observer":Landroid/app/backup/IRestoreObserver;
    .end local p4  # "monitor":Landroid/app/backup/IBackupManagerMonitor;
    throw v1
    :try_end_b8
    .catchall {:try_start_b4 .. :try_end_b8} :catchall_bb

    .line 171
    .end local v3  # "oldId":J
    .restart local p0  # "this":Lcom/android/server/backup/restore/ActiveRestoreSession;
    .restart local p1  # "token":J
    .restart local p3  # "observer":Landroid/app/backup/IRestoreObserver;
    .restart local p4  # "monitor":Landroid/app/backup/IBackupManagerMonitor;
    :cond_b8
    add-int/lit8 v2, v2, 0x1

    goto :goto_8f

    .line 189
    .end local v2  # "i":I
    :catchall_bb
    move-exception v1

    goto :goto_e0

    :cond_bd
    :try_start_bd
    monitor-exit v0
    :try_end_be
    .catchall {:try_start_bd .. :try_end_be} :catchall_df

    .line 191
    :try_start_be
    const-string v0, "RestoreSession"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Restore token "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1, p2}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " not found"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_dd
    .catchall {:try_start_be .. :try_end_dd} :catchall_ea

    .line 192
    monitor-exit p0

    return v1

    .line 189
    .end local p0  # "this":Lcom/android/server/backup/restore/ActiveRestoreSession;
    :catchall_df
    move-exception v1

    :goto_e0
    :try_start_e0
    monitor-exit v0
    :try_end_e1
    .catchall {:try_start_e0 .. :try_end_e1} :catchall_df

    :try_start_e1
    throw v1

    .line 147
    :cond_e2
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Restore session already ended"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_ea
    .catchall {:try_start_e1 .. :try_end_ea} :catchall_ea

    .line 136
    .end local p1  # "token":J
    .end local p3  # "observer":Landroid/app/backup/IRestoreObserver;
    .end local p4  # "monitor":Landroid/app/backup/IBackupManagerMonitor;
    :catchall_ea
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized restorePackage(Ljava/lang/String;Landroid/app/backup/IRestoreObserver;Landroid/app/backup/IBackupManagerMonitor;)I
    .registers 22
    .param p1, "packageName"  # Ljava/lang/String;
    .param p2, "observer"  # Landroid/app/backup/IRestoreObserver;
    .param p3, "monitor"  # Landroid/app/backup/IBackupManagerMonitor;

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    monitor-enter p0

    .line 291
    :try_start_5
    const-string v0, "RestoreSession"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "restorePackage pkg="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " obs="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v4, p2

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string/jumbo v5, "monitor="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v11, p3

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 295
    iget-boolean v0, v1, Lcom/android/server/backup/restore/ActiveRestoreSession;->mEnded:Z

    if-nez v0, :cond_183

    .line 299
    iget-boolean v0, v1, Lcom/android/server/backup/restore/ActiveRestoreSession;->mTimedOut:Z

    const/4 v3, -0x1

    if-eqz v0, :cond_43

    .line 300
    const-string v0, "RestoreSession"

    const-string v5, "Session already timed out"

    invoke-static {v0, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_41
    .catchall {:try_start_5 .. :try_end_41} :catchall_18b

    .line 301
    monitor-exit p0

    return v3

    .line 304
    .end local p0  # "this":Lcom/android/server/backup/restore/ActiveRestoreSession;
    :cond_43
    :try_start_43
    iget-object v0, v1, Lcom/android/server/backup/restore/ActiveRestoreSession;->mPackageName:Ljava/lang/String;

    if-eqz v0, :cond_71

    .line 305
    iget-object v0, v1, Lcom/android/server/backup/restore/ActiveRestoreSession;->mPackageName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_71

    .line 306
    const-string v0, "RestoreSession"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Ignoring attempt to restore pkg="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " on session for package "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v1, Lcom/android/server/backup/restore/ActiveRestoreSession;->mPackageName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6f
    .catchall {:try_start_43 .. :try_end_6f} :catchall_18b

    .line 308
    monitor-exit p0

    return v3

    .line 314
    :cond_71
    :try_start_71
    iget-object v0, v1, Lcom/android/server/backup/restore/ActiveRestoreSession;->mBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    invoke-virtual {v0}, Lcom/android/server/backup/UserBackupManagerService;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const/4 v5, 0x0

    iget v6, v1, Lcom/android/server/backup/restore/ActiveRestoreSession;->mUserId:I

    invoke-virtual {v0, v2, v5, v6}, Landroid/content/pm/PackageManager;->getPackageInfoAsUser(Ljava/lang/String;II)Landroid/content/pm/PackageInfo;

    move-result-object v0
    :try_end_7e
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_71 .. :try_end_7e} :catch_16a
    .catchall {:try_start_71 .. :try_end_7e} :catchall_18b

    move-object v12, v0

    .line 319
    .local v12, "app":Landroid/content/pm/PackageInfo;
    nop

    .line 323
    :try_start_80
    iget-object v0, v1, Lcom/android/server/backup/restore/ActiveRestoreSession;->mBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    invoke-virtual {v0}, Lcom/android/server/backup/UserBackupManagerService;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v5, "android.permission.BACKUP"

    .line 325
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v6

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v7

    .line 323
    invoke-virtual {v0, v5, v6, v7}, Landroid/content/Context;->checkPermission(Ljava/lang/String;II)I

    move-result v0

    move v13, v0

    .line 326
    .local v13, "perm":I
    if-ne v13, v3, :cond_cd

    iget-object v0, v12, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 327
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v5

    if-ne v0, v5, :cond_a2

    goto :goto_cd

    .line 328
    :cond_a2
    const-string v0, "RestoreSession"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "restorePackage: bad packageName="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " or calling uid="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 329
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 328
    invoke-static {v0, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 330
    new-instance v0, Ljava/lang/SecurityException;

    const-string v3, "No permission to restore other packages"

    invoke-direct {v0, v3}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 333
    :cond_cd
    :goto_cd
    iget-object v0, v1, Lcom/android/server/backup/restore/ActiveRestoreSession;->mTransportManager:Lcom/android/server/backup/TransportManager;

    iget-object v5, v1, Lcom/android/server/backup/restore/ActiveRestoreSession;->mTransportName:Ljava/lang/String;

    invoke-virtual {v0, v5}, Lcom/android/server/backup/TransportManager;->isTransportRegistered(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_f6

    .line 334
    const-string v0, "RestoreSession"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Transport "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v1, Lcom/android/server/backup/restore/ActiveRestoreSession;->mTransportName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " not registered"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_f4
    .catchall {:try_start_80 .. :try_end_f4} :catchall_18b

    .line 335
    monitor-exit p0

    return v3

    .line 339
    :cond_f6
    :try_start_f6
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v5
    :try_end_fa
    .catchall {:try_start_f6 .. :try_end_fa} :catchall_18b

    move-wide v14, v5

    .line 343
    .local v14, "oldId":J
    :try_start_fb
    iget-object v0, v1, Lcom/android/server/backup/restore/ActiveRestoreSession;->mBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    invoke-virtual {v0, v2}, Lcom/android/server/backup/UserBackupManagerService;->getAvailableRestoreToken(Ljava/lang/String;)J

    move-result-wide v5

    move-wide/from16 v16, v5

    .line 345
    .local v16, "token":J
    const-string v0, "RestoreSession"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "restorePackage pkg="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " token="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 346
    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 345
    invoke-static {v0, v5}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 352
    const-wide/16 v5, 0x0

    cmp-long v0, v16, v5

    if-nez v0, :cond_139

    .line 354
    const-string v0, "RestoreSession"

    const-string v5, "No data available for this package; not restoring"

    invoke-static {v0, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_133
    .catchall {:try_start_fb .. :try_end_133} :catchall_165

    .line 356
    nop

    .line 370
    :try_start_134
    invoke-static {v14, v15}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_137
    .catchall {:try_start_134 .. :try_end_137} :catchall_18b

    .line 356
    monitor-exit p0

    return v3

    .line 359
    :cond_139
    :try_start_139
    new-instance v0, Lcom/android/server/backup/restore/-$$Lambda$ActiveRestoreSession$tb1mCMujBEuhHsxQ6tX_mYJVCII;

    move-object v5, v0

    move-object/from16 v6, p2

    move-object/from16 v7, p3

    move-wide/from16 v8, v16

    move-object v10, v12

    invoke-direct/range {v5 .. v10}, Lcom/android/server/backup/restore/-$$Lambda$ActiveRestoreSession$tb1mCMujBEuhHsxQ6tX_mYJVCII;-><init>(Landroid/app/backup/IRestoreObserver;Landroid/app/backup/IBackupManagerMonitor;JLandroid/content/pm/PackageInfo;)V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "RestoreSession.restorePackage("

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ")"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v0, v3}, Lcom/android/server/backup/restore/ActiveRestoreSession;->sendRestoreToHandlerLocked(Ljava/util/function/BiFunction;Ljava/lang/String;)I

    move-result v0
    :try_end_160
    .catchall {:try_start_139 .. :try_end_160} :catchall_165

    .line 370
    :try_start_160
    invoke-static {v14, v15}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_163
    .catchall {:try_start_160 .. :try_end_163} :catchall_18b

    .line 359
    monitor-exit p0

    return v0

    .line 370
    .end local v16  # "token":J
    :catchall_165
    move-exception v0

    :try_start_166
    invoke-static {v14, v15}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0

    .line 316
    .end local v12  # "app":Landroid/content/pm/PackageInfo;
    .end local v13  # "perm":I
    .end local v14  # "oldId":J
    :catch_16a
    move-exception v0

    .line 317
    .local v0, "nnf":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v5, "RestoreSession"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Asked to restore nonexistent pkg "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_181
    .catchall {:try_start_166 .. :try_end_181} :catchall_18b

    .line 318
    monitor-exit p0

    return v3

    .line 296
    .end local v0  # "nnf":Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_183
    :try_start_183
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v3, "Restore session already ended"

    invoke-direct {v0, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_18b
    .catchall {:try_start_183 .. :try_end_18b} :catchall_18b

    .line 290
    .end local p1  # "packageName":Ljava/lang/String;
    .end local p2  # "observer":Landroid/app/backup/IRestoreObserver;
    .end local p3  # "monitor":Landroid/app/backup/IBackupManagerMonitor;
    :catchall_18b
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized restorePackages(JLandroid/app/backup/IRestoreObserver;[Ljava/lang/String;Landroid/app/backup/IBackupManagerMonitor;)I
    .registers 19
    .param p1, "token"  # J
    .param p3, "observer"  # Landroid/app/backup/IRestoreObserver;
    .param p4, "packages"  # [Ljava/lang/String;
    .param p5, "monitor"  # Landroid/app/backup/IBackupManagerMonitor;

    move-object v1, p0

    move-object/from16 v8, p4

    monitor-enter p0

    .line 198
    :try_start_4
    iget-object v0, v1, Lcom/android/server/backup/restore/ActiveRestoreSession;->mBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    invoke-virtual {v0}, Lcom/android/server/backup/UserBackupManagerService;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v2, "android.permission.BACKUP"

    const-string/jumbo v3, "performRestore"

    invoke-virtual {v0, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 203
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v2, 0x80

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 204
    .local v0, "b":Ljava/lang/StringBuilder;
    const-string/jumbo v2, "restorePackages token="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 205
    invoke-static {p1, p2}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 206
    const-string v2, " observer="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 207
    if-nez p3, :cond_34

    .line 208
    const-string/jumbo v2, "null"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3b

    .line 210
    .end local p0  # "this":Lcom/android/server/backup/restore/ActiveRestoreSession;
    :cond_34
    invoke-virtual/range {p3 .. p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 212
    :goto_3b
    const-string v2, " monitor="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 213
    if-nez p5, :cond_49

    .line 214
    const-string/jumbo v2, "null"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_50

    .line 216
    :cond_49
    invoke-virtual/range {p5 .. p5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 218
    :goto_50
    const-string v2, " packages="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 219
    const/4 v2, 0x0

    if-nez v8, :cond_5f

    .line 220
    const-string/jumbo v3, "null"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_81

    .line 222
    :cond_5f
    const/16 v3, 0x7b

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 223
    const/4 v3, 0x1

    .line 224
    .local v3, "first":Z
    array-length v4, v8

    move v5, v3

    move v3, v2

    .end local v3  # "first":Z
    .local v5, "first":Z
    :goto_68
    if-ge v3, v4, :cond_7c

    aget-object v6, v8, v3

    .line 225
    .local v6, "s":Ljava/lang/String;
    if-nez v5, :cond_74

    .line 226
    const-string v7, ", "

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_75

    .line 228
    :cond_74
    const/4 v5, 0x0

    .line 230
    :goto_75
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 224
    nop

    .end local v6  # "s":Ljava/lang/String;
    add-int/lit8 v3, v3, 0x1

    goto :goto_68

    .line 232
    :cond_7c
    const/16 v3, 0x7d

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 234
    .end local v5  # "first":Z
    :goto_81
    const-string v3, "RestoreSession"

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 237
    nop

    .end local v0  # "b":Ljava/lang/StringBuilder;
    iget-boolean v0, v1, Lcom/android/server/backup/restore/ActiveRestoreSession;->mEnded:Z

    if-nez v0, :cond_15a

    .line 241
    iget-boolean v0, v1, Lcom/android/server/backup/restore/ActiveRestoreSession;->mTimedOut:Z

    const/4 v3, -0x1

    if-eqz v0, :cond_9d

    .line 242
    const-string v0, "RestoreSession"

    const-string v2, "Session already timed out"

    invoke-static {v0, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_9b
    .catchall {:try_start_4 .. :try_end_9b} :catchall_162

    .line 243
    monitor-exit p0

    return v3

    .line 246
    :cond_9d
    :try_start_9d
    iget-object v0, v1, Lcom/android/server/backup/restore/ActiveRestoreSession;->mRestoreSets:[Landroid/app/backup/RestoreSet;

    if-nez v0, :cond_aa

    .line 247
    const-string v0, "RestoreSession"

    const-string v2, "Ignoring restoreAll() with no restore set"

    invoke-static {v0, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_a8
    .catchall {:try_start_9d .. :try_end_a8} :catchall_162

    .line 248
    monitor-exit p0

    return v3

    .line 251
    :cond_aa
    :try_start_aa
    iget-object v0, v1, Lcom/android/server/backup/restore/ActiveRestoreSession;->mPackageName:Ljava/lang/String;

    if-eqz v0, :cond_b7

    .line 252
    const-string v0, "RestoreSession"

    const-string v2, "Ignoring restoreAll() on single-package session"

    invoke-static {v0, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_b5
    .catchall {:try_start_aa .. :try_end_b5} :catchall_162

    .line 253
    monitor-exit p0

    return v3

    .line 256
    :cond_b7
    :try_start_b7
    iget-object v0, v1, Lcom/android/server/backup/restore/ActiveRestoreSession;->mTransportManager:Lcom/android/server/backup/TransportManager;

    iget-object v4, v1, Lcom/android/server/backup/restore/ActiveRestoreSession;->mTransportName:Ljava/lang/String;

    invoke-virtual {v0, v4}, Lcom/android/server/backup/TransportManager;->isTransportRegistered(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_e0

    .line 257
    const-string v0, "RestoreSession"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Transport "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v1, Lcom/android/server/backup/restore/ActiveRestoreSession;->mTransportName:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " not registered"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_de
    .catchall {:try_start_b7 .. :try_end_de} :catchall_162

    .line 258
    monitor-exit p0

    return v3

    .line 261
    :cond_e0
    :try_start_e0
    iget-object v0, v1, Lcom/android/server/backup/restore/ActiveRestoreSession;->mBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    invoke-virtual {v0}, Lcom/android/server/backup/UserBackupManagerService;->getQueueLock()Ljava/lang/Object;

    move-result-object v9

    monitor-enter v9
    :try_end_e7
    .catchall {:try_start_e0 .. :try_end_e7} :catchall_162

    .line 262
    move v0, v2

    move v10, v0

    .local v10, "i":I
    :goto_e9
    :try_start_e9
    iget-object v0, v1, Lcom/android/server/backup/restore/ActiveRestoreSession;->mRestoreSets:[Landroid/app/backup/RestoreSet;

    array-length v0, v0
    :try_end_ec
    .catchall {:try_start_e9 .. :try_end_ec} :catchall_157

    if-ge v10, v0, :cond_135

    .line 263
    :try_start_ee
    iget-object v0, v1, Lcom/android/server/backup/restore/ActiveRestoreSession;->mRestoreSets:[Landroid/app/backup/RestoreSet;

    aget-object v0, v0, v10

    iget-wide v4, v0, Landroid/app/backup/RestoreSet;->token:J

    cmp-long v0, p1, v4

    if-nez v0, :cond_130

    .line 264
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2
    :try_end_fc
    .catchall {:try_start_ee .. :try_end_fc} :catchall_133

    move-wide v11, v2

    .line 266
    .local v11, "oldId":J
    :try_start_fd
    new-instance v0, Lcom/android/server/backup/restore/-$$Lambda$ActiveRestoreSession$gXVTdFUn9LSjuKEXaGOyKBxki6Q;

    move-object v2, v0

    move-object/from16 v3, p3

    move-object/from16 v4, p5

    move-wide v5, p1

    move-object/from16 v7, p4

    invoke-direct/range {v2 .. v7}, Lcom/android/server/backup/restore/-$$Lambda$ActiveRestoreSession$gXVTdFUn9LSjuKEXaGOyKBxki6Q;-><init>(Landroid/app/backup/IRestoreObserver;Landroid/app/backup/IBackupManagerMonitor;J[Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "RestoreSession.restorePackages("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v3, v8

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " packages)"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v0, v2}, Lcom/android/server/backup/restore/ActiveRestoreSession;->sendRestoreToHandlerLocked(Ljava/util/function/BiFunction;Ljava/lang/String;)I

    move-result v0
    :try_end_125
    .catchall {:try_start_fd .. :try_end_125} :catchall_12b

    .line 278
    :try_start_125
    invoke-static {v11, v12}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    monitor-exit v9
    :try_end_129
    .catchall {:try_start_125 .. :try_end_129} :catchall_133

    .line 266
    monitor-exit p0

    return v0

    .line 278
    .restart local p0  # "this":Lcom/android/server/backup/restore/ActiveRestoreSession;
    :catchall_12b
    move-exception v0

    :try_start_12c
    invoke-static {v11, v12}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .end local p0  # "this":Lcom/android/server/backup/restore/ActiveRestoreSession;
    .end local p1  # "token":J
    .end local p3  # "observer":Landroid/app/backup/IRestoreObserver;
    .end local p4  # "packages":[Ljava/lang/String;
    .end local p5  # "monitor":Landroid/app/backup/IBackupManagerMonitor;
    throw v0
    :try_end_130
    .catchall {:try_start_12c .. :try_end_130} :catchall_133

    .line 262
    .end local v11  # "oldId":J
    .restart local p0  # "this":Lcom/android/server/backup/restore/ActiveRestoreSession;
    .restart local p1  # "token":J
    .restart local p3  # "observer":Landroid/app/backup/IRestoreObserver;
    .restart local p4  # "packages":[Ljava/lang/String;
    .restart local p5  # "monitor":Landroid/app/backup/IBackupManagerMonitor;
    :cond_130
    add-int/lit8 v10, v10, 0x1

    goto :goto_e9

    .line 282
    .end local v10  # "i":I
    :catchall_133
    move-exception v0

    goto :goto_158

    :cond_135
    :try_start_135
    monitor-exit v9
    :try_end_136
    .catchall {:try_start_135 .. :try_end_136} :catchall_157

    .line 284
    :try_start_136
    const-string v0, "RestoreSession"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Restore token "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1, p2}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " not found"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_155
    .catchall {:try_start_136 .. :try_end_155} :catchall_162

    .line 285
    monitor-exit p0

    return v3

    .line 282
    .end local p0  # "this":Lcom/android/server/backup/restore/ActiveRestoreSession;
    :catchall_157
    move-exception v0

    :goto_158
    :try_start_158
    monitor-exit v9
    :try_end_159
    .catchall {:try_start_158 .. :try_end_159} :catchall_157

    :try_start_159
    throw v0

    .line 238
    :cond_15a
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "Restore session already ended"

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_162
    .catchall {:try_start_159 .. :try_end_162} :catchall_162

    .line 197
    .end local p1  # "token":J
    .end local p3  # "observer":Landroid/app/backup/IRestoreObserver;
    .end local p4  # "packages":[Ljava/lang/String;
    .end local p5  # "monitor":Landroid/app/backup/IBackupManagerMonitor;
    :catchall_162
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setRestoreSets([Landroid/app/backup/RestoreSet;)V
    .registers 2
    .param p1, "restoreSets"  # [Landroid/app/backup/RestoreSet;

    .line 375
    iput-object p1, p0, Lcom/android/server/backup/restore/ActiveRestoreSession;->mRestoreSets:[Landroid/app/backup/RestoreSet;

    .line 376
    return-void
.end method
