.class public Lcom/android/server/backup/internal/BackupHandler;
.super Landroid/os/Handler;
.source "BackupHandler.java"


# static fields
.field public static final MSG_BACKUP_OPERATION_TIMEOUT:I = 0x11

.field public static final MSG_BACKUP_RESTORE_STEP:I = 0x14

.field public static final MSG_FULL_CONFIRMATION_TIMEOUT:I = 0x9

.field public static final MSG_OP_COMPLETE:I = 0x15

.field public static final MSG_REQUEST_BACKUP:I = 0xf

.field public static final MSG_RESTORE_OPERATION_TIMEOUT:I = 0x12

.field public static final MSG_RESTORE_SESSION_TIMEOUT:I = 0x8

.field public static final MSG_RETRY_CLEAR:I = 0xc

.field public static final MSG_RETRY_INIT:I = 0xb

.field public static final MSG_RUN_ADB_BACKUP:I = 0x2

.field public static final MSG_RUN_ADB_RESTORE:I = 0xa

.field public static final MSG_RUN_BACKUP:I = 0x1

.field public static final MSG_RUN_CLEAR:I = 0x4

.field public static final MSG_RUN_FULL_TRANSPORT_BACKUP:I = 0xe

.field public static final MSG_RUN_GET_RESTORE_SETS:I = 0x6

.field public static final MSG_RUN_RESTORE:I = 0x3

.field public static final MSG_SCHEDULE_BACKUP_PACKAGE:I = 0x10

.field public static final MSG_STOP:I = 0x16

.field public static final MSG_WIDGET_BROADCAST:I = 0xd


# instance fields
.field private final backupManagerService:Lcom/android/server/backup/UserBackupManagerService;

.field private final mAgentTimeoutParameters:Lcom/android/server/backup/BackupAgentTimeoutParameters;

.field private final mBackupThread:Landroid/os/HandlerThread;

.field private volatile mIsStopping:Z


# direct methods
.method public constructor <init>(Lcom/android/server/backup/UserBackupManagerService;Landroid/os/HandlerThread;)V
    .registers 4

    .line 98
    invoke-virtual {p2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 94
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/backup/internal/BackupHandler;->mIsStopping:Z

    .line 99
    iput-object p2, p0, Lcom/android/server/backup/internal/BackupHandler;->mBackupThread:Landroid/os/HandlerThread;

    .line 100
    iput-object p1, p0, Lcom/android/server/backup/internal/BackupHandler;->backupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    .line 101
    nop

    .line 102
    invoke-virtual {p1}, Lcom/android/server/backup/UserBackupManagerService;->getAgentTimeoutParameters()Lcom/android/server/backup/BackupAgentTimeoutParameters;

    move-result-object p1

    .line 101
    const-string p2, "Timeout parameters cannot be null"

    invoke-static {p1, p2}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/backup/BackupAgentTimeoutParameters;

    iput-object p1, p0, Lcom/android/server/backup/internal/BackupHandler;->mAgentTimeoutParameters:Lcom/android/server/backup/BackupAgentTimeoutParameters;

    .line 104
    return-void
.end method

.method static synthetic lambda$handleMessage$0(Lcom/android/server/backup/TransportManager;Lcom/android/server/backup/transport/TransportClient;Ljava/lang/String;)V
    .registers 3

    .line 186
    nop

    .line 187
    invoke-virtual {p0, p1, p2}, Lcom/android/server/backup/TransportManager;->disposeOfTransportClient(Lcom/android/server/backup/transport/TransportClient;Ljava/lang/String;)V

    .line 186
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 21

    .line 117
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    iget v0, v2, Landroid/os/Message;->what:I

    const/16 v3, 0x16

    if-ne v0, v3, :cond_1f

    .line 118
    const-string v0, "BackupManagerService"

    const-string v3, "Stopping backup handler"

    invoke-static {v0, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 119
    iget-object v0, v1, Lcom/android/server/backup/internal/BackupHandler;->backupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    invoke-virtual {v0}, Lcom/android/server/backup/UserBackupManagerService;->getWakelock()Lcom/android/server/backup/UserBackupManagerService$BackupWakeLock;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/backup/UserBackupManagerService$BackupWakeLock;->quit()V

    .line 120
    iget-object v0, v1, Lcom/android/server/backup/internal/BackupHandler;->mBackupThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quitSafely()Z

    .line 123
    :cond_1f
    iget-boolean v0, v1, Lcom/android/server/backup/internal/BackupHandler;->mIsStopping:Z

    if-eqz v0, :cond_24

    .line 125
    return-void

    .line 128
    :cond_24
    iget-object v0, v1, Lcom/android/server/backup/internal/BackupHandler;->backupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    invoke-virtual {v0}, Lcom/android/server/backup/UserBackupManagerService;->getTransportManager()Lcom/android/server/backup/TransportManager;

    move-result-object v3

    .line 129
    iget v0, v2, Landroid/os/Message;->what:I

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    packed-switch v0, :pswitch_data_46a

    :pswitch_32  #0x5, 0x7, 0xb, 0x13
    goto/16 :goto_468

    .line 238
    :pswitch_34  #0x15
    :try_start_34
    iget-object v0, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/util/Pair;

    .line 240
    iget-object v1, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Lcom/android/server/backup/BackupRestoreTask;

    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-interface {v1, v3, v4}, Lcom/android/server/backup/BackupRestoreTask;->operationComplete(J)V
    :try_end_47
    .catch Ljava/lang/ClassCastException; {:try_start_34 .. :try_end_47} :catch_49

    .line 243
    goto/16 :goto_468

    .line 241
    :catch_49
    move-exception v0

    .line 242
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid completion in flight, obj="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BackupManagerService"

    invoke-static {v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 244
    goto/16 :goto_468

    .line 225
    :pswitch_64  #0x14
    :try_start_64
    iget-object v0, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/backup/BackupRestoreTask;

    .line 229
    invoke-interface {v0}, Lcom/android/server/backup/BackupRestoreTask;->execute()V
    :try_end_6b
    .catch Ljava/lang/ClassCastException; {:try_start_64 .. :try_end_6b} :catch_6d

    .line 232
    goto/16 :goto_468

    .line 230
    :catch_6d
    move-exception v0

    .line 231
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid backup/restore task in flight, obj="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BackupManagerService"

    invoke-static {v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 233
    goto/16 :goto_468

    .line 376
    :pswitch_88  #0x11, 0x12
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Timeout message received for token="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v2, Landroid/os/Message;->arg1:I

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v3, "BackupManagerService"

    invoke-static {v3, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 377
    iget-object v0, v1, Lcom/android/server/backup/internal/BackupHandler;->backupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    iget v1, v2, Landroid/os/Message;->arg1:I

    invoke-virtual {v0, v1, v6}, Lcom/android/server/backup/UserBackupManagerService;->handleCancel(IZ)V

    .line 378
    goto/16 :goto_468

    .line 456
    :pswitch_ad  #0x10
    iget-object v0, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    .line 460
    iget-object v1, v1, Lcom/android/server/backup/internal/BackupHandler;->backupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    invoke-virtual {v1, v0}, Lcom/android/server/backup/UserBackupManagerService;->dataChangedImpl(Ljava/lang/String;)V

    .line 461
    goto/16 :goto_468

    .line 433
    :pswitch_b8  #0xf
    iget-object v0, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/backup/params/BackupParams;

    .line 437
    iget-object v2, v1, Lcom/android/server/backup/internal/BackupHandler;->backupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    invoke-virtual {v2, v4}, Lcom/android/server/backup/UserBackupManagerService;->setBackupRunning(Z)V

    .line 438
    iget-object v2, v1, Lcom/android/server/backup/internal/BackupHandler;->backupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    invoke-virtual {v2}, Lcom/android/server/backup/UserBackupManagerService;->getWakelock()Lcom/android/server/backup/UserBackupManagerService$BackupWakeLock;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/backup/UserBackupManagerService$BackupWakeLock;->acquire()V

    .line 440
    iget-object v3, v1, Lcom/android/server/backup/internal/BackupHandler;->backupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    iget-object v4, v0, Lcom/android/server/backup/params/BackupParams;->transportClient:Lcom/android/server/backup/transport/TransportClient;

    iget-object v5, v0, Lcom/android/server/backup/params/BackupParams;->dirName:Ljava/lang/String;

    iget-object v6, v0, Lcom/android/server/backup/params/BackupParams;->kvPackages:Ljava/util/ArrayList;

    const/4 v7, 0x0

    iget-object v8, v0, Lcom/android/server/backup/params/BackupParams;->observer:Landroid/app/backup/IBackupObserver;

    iget-object v9, v0, Lcom/android/server/backup/params/BackupParams;->monitor:Landroid/app/backup/IBackupManagerMonitor;

    iget-object v10, v0, Lcom/android/server/backup/params/BackupParams;->listener:Lcom/android/server/backup/internal/OnTaskFinishedListener;

    iget-object v11, v0, Lcom/android/server/backup/params/BackupParams;->fullPackages:Ljava/util/ArrayList;

    const/4 v12, 0x1

    iget-boolean v13, v0, Lcom/android/server/backup/params/BackupParams;->nonIncrementalBackup:Z

    invoke-static/range {v3 .. v13}, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->start(Lcom/android/server/backup/UserBackupManagerService;Lcom/android/server/backup/transport/TransportClient;Ljava/lang/String;Ljava/util/List;Lcom/android/server/backup/DataChangedJournal;Landroid/app/backup/IBackupObserver;Landroid/app/backup/IBackupManagerMonitor;Lcom/android/server/backup/internal/OnTaskFinishedListener;Ljava/util/List;ZZ)Lcom/android/server/backup/keyvalue/KeyValueBackupTask;

    .line 452
    goto/16 :goto_468

    .line 262
    :pswitch_e3  #0xe
    iget-object v0, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;

    .line 263
    new-instance v1, Ljava/lang/Thread;

    const-string/jumbo v2, "transport-backup"

    invoke-direct {v1, v0, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 264
    goto/16 :goto_468

    .line 427
    :pswitch_f4  #0xd
    iget-object v0, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/content/Intent;

    .line 428
    iget-object v1, v1, Lcom/android/server/backup/internal/BackupHandler;->backupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    invoke-virtual {v1}, Lcom/android/server/backup/UserBackupManagerService;->getContext()Landroid/content/Context;

    move-result-object v1

    sget-object v2, Landroid/os/UserHandle;->SYSTEM:Landroid/os/UserHandle;

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 429
    goto/16 :goto_468

    .line 330
    :pswitch_105  #0xc
    iget-object v0, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/backup/params/ClearRetryParams;

    .line 331
    iget-object v1, v1, Lcom/android/server/backup/internal/BackupHandler;->backupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    iget-object v2, v0, Lcom/android/server/backup/params/ClearRetryParams;->transportName:Ljava/lang/String;

    iget-object v0, v0, Lcom/android/server/backup/params/ClearRetryParams;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Lcom/android/server/backup/UserBackupManagerService;->clearBackupData(Ljava/lang/String;Ljava/lang/String;)V

    .line 332
    goto/16 :goto_468

    .line 307
    :pswitch_114  #0xa
    iget-object v0, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/backup/params/AdbRestoreParams;

    .line 308
    new-instance v8, Lcom/android/server/backup/restore/PerformAdbRestoreTask;

    iget-object v2, v1, Lcom/android/server/backup/internal/BackupHandler;->backupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    iget-object v3, v0, Lcom/android/server/backup/params/AdbRestoreParams;->fd:Landroid/os/ParcelFileDescriptor;

    iget-object v4, v0, Lcom/android/server/backup/params/AdbRestoreParams;->curPassword:Ljava/lang/String;

    iget-object v5, v0, Lcom/android/server/backup/params/AdbRestoreParams;->encryptPassword:Ljava/lang/String;

    iget-object v6, v0, Lcom/android/server/backup/params/AdbRestoreParams;->observer:Landroid/app/backup/IFullBackupRestoreObserver;

    iget-object v7, v0, Lcom/android/server/backup/params/AdbRestoreParams;->latch:Ljava/util/concurrent/atomic/AtomicBoolean;

    move-object v1, v8

    invoke-direct/range {v1 .. v7}, Lcom/android/server/backup/restore/PerformAdbRestoreTask;-><init>(Lcom/android/server/backup/UserBackupManagerService;Landroid/os/ParcelFileDescriptor;Ljava/lang/String;Ljava/lang/String;Landroid/app/backup/IFullBackupRestoreObserver;Ljava/util/concurrent/atomic/AtomicBoolean;)V

    .line 312
    new-instance v0, Ljava/lang/Thread;

    const-string v1, "adb-restore"

    invoke-direct {v0, v8, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 313
    goto/16 :goto_468

    .line 399
    :pswitch_136  #0x9
    iget-object v0, v1, Lcom/android/server/backup/internal/BackupHandler;->backupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    invoke-virtual {v0}, Lcom/android/server/backup/UserBackupManagerService;->getAdbBackupRestoreConfirmations()Landroid/util/SparseArray;

    move-result-object v3

    monitor-enter v3

    .line 400
    :try_start_13d
    iget-object v0, v1, Lcom/android/server/backup/internal/BackupHandler;->backupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    invoke-virtual {v0}, Lcom/android/server/backup/UserBackupManagerService;->getAdbBackupRestoreConfirmations()Landroid/util/SparseArray;

    move-result-object v0

    iget v4, v2, Landroid/os/Message;->arg1:I

    invoke-virtual {v0, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/backup/params/AdbParams;

    .line 402
    if-eqz v0, :cond_170

    .line 403
    const-string v4, "BackupManagerService"

    const-string v5, "Full backup/restore timed out waiting for user confirmation"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 406
    iget-object v4, v1, Lcom/android/server/backup/internal/BackupHandler;->backupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    invoke-virtual {v4, v0}, Lcom/android/server/backup/UserBackupManagerService;->signalAdbBackupRestoreCompletion(Lcom/android/server/backup/params/AdbParams;)V

    .line 409
    iget-object v1, v1, Lcom/android/server/backup/internal/BackupHandler;->backupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    invoke-virtual {v1}, Lcom/android/server/backup/UserBackupManagerService;->getAdbBackupRestoreConfirmations()Landroid/util/SparseArray;

    move-result-object v1

    iget v2, v2, Landroid/os/Message;->arg1:I

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->delete(I)V

    .line 412
    iget-object v1, v0, Lcom/android/server/backup/params/AdbParams;->observer:Landroid/app/backup/IFullBackupRestoreObserver;
    :try_end_166
    .catchall {:try_start_13d .. :try_end_166} :catchall_18b

    if-eqz v1, :cond_188

    .line 414
    :try_start_168
    iget-object v0, v0, Lcom/android/server/backup/params/AdbParams;->observer:Landroid/app/backup/IFullBackupRestoreObserver;

    invoke-interface {v0}, Landroid/app/backup/IFullBackupRestoreObserver;->onTimeout()V
    :try_end_16d
    .catch Landroid/os/RemoteException; {:try_start_168 .. :try_end_16d} :catch_16e
    .catchall {:try_start_168 .. :try_end_16d} :catchall_18b

    goto :goto_16f

    .line 415
    :catch_16e
    move-exception v0

    .line 417
    :goto_16f
    goto :goto_188

    .line 420
    :cond_170
    :try_start_170
    const-string v0, "BackupManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "couldn\'t find params for token "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v2, Landroid/os/Message;->arg1:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 422
    :cond_188
    :goto_188
    monitor-exit v3

    .line 423
    goto/16 :goto_468

    .line 422
    :catchall_18b
    move-exception v0

    monitor-exit v3
    :try_end_18d
    .catchall {:try_start_170 .. :try_end_18d} :catchall_18b

    throw v0

    .line 382
    :pswitch_18e  #0x8
    iget-object v3, v1, Lcom/android/server/backup/internal/BackupHandler;->backupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    monitor-enter v3

    .line 383
    :try_start_191
    iget-object v0, v1, Lcom/android/server/backup/internal/BackupHandler;->backupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    invoke-virtual {v0}, Lcom/android/server/backup/UserBackupManagerService;->getActiveRestoreSession()Lcom/android/server/backup/restore/ActiveRestoreSession;

    move-result-object v0

    if-eqz v0, :cond_1c2

    .line 388
    const-string v0, "BackupManagerService"

    const-string v2, "Restore session timed out; aborting"

    invoke-static {v0, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 389
    iget-object v0, v1, Lcom/android/server/backup/internal/BackupHandler;->backupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    invoke-virtual {v0}, Lcom/android/server/backup/UserBackupManagerService;->getActiveRestoreSession()Lcom/android/server/backup/restore/ActiveRestoreSession;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/backup/restore/ActiveRestoreSession;->markTimedOut()V

    .line 390
    new-instance v0, Lcom/android/server/backup/restore/ActiveRestoreSession$EndRestoreRunnable;

    iget-object v2, v1, Lcom/android/server/backup/internal/BackupHandler;->backupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    invoke-virtual {v2}, Lcom/android/server/backup/UserBackupManagerService;->getActiveRestoreSession()Lcom/android/server/backup/restore/ActiveRestoreSession;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v4, v1, Lcom/android/server/backup/internal/BackupHandler;->backupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    iget-object v5, v1, Lcom/android/server/backup/internal/BackupHandler;->backupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    .line 392
    invoke-virtual {v5}, Lcom/android/server/backup/UserBackupManagerService;->getActiveRestoreSession()Lcom/android/server/backup/restore/ActiveRestoreSession;

    move-result-object v5

    invoke-direct {v0, v2, v4, v5}, Lcom/android/server/backup/restore/ActiveRestoreSession$EndRestoreRunnable;-><init>(Lcom/android/server/backup/restore/ActiveRestoreSession;Lcom/android/server/backup/UserBackupManagerService;Lcom/android/server/backup/restore/ActiveRestoreSession;)V

    .line 390
    invoke-virtual {v1, v0}, Lcom/android/server/backup/internal/BackupHandler;->post(Ljava/lang/Runnable;)Z

    .line 394
    :cond_1c2
    monitor-exit v3

    .line 395
    goto/16 :goto_468

    .line 394
    :catchall_1c5
    move-exception v0

    monitor-exit v3
    :try_end_1c7
    .catchall {:try_start_191 .. :try_end_1c7} :catchall_1c5

    throw v0

    .line 337
    :pswitch_1c8  #0x6
    nop

    .line 338
    iget-object v0, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v2, v0

    check-cast v2, Lcom/android/server/backup/params/RestoreGetSetsParams;

    .line 339
    const-string v3, "BH/MSG_RUN_GET_RESTORE_SETS"

    .line 341
    const/16 v4, 0x8

    :try_start_1d2
    iget-object v0, v2, Lcom/android/server/backup/params/RestoreGetSetsParams;->transportClient:Lcom/android/server/backup/transport/TransportClient;

    .line 342
    invoke-virtual {v0, v3}, Lcom/android/server/backup/transport/TransportClient;->connectOrThrow(Ljava/lang/String;)Lcom/android/internal/backup/IBackupTransport;

    move-result-object v0

    .line 343
    invoke-interface {v0}, Lcom/android/internal/backup/IBackupTransport;->getAvailableRestoreSets()[Landroid/app/backup/RestoreSet;

    move-result-object v5

    .line 345
    iget-object v7, v2, Lcom/android/server/backup/params/RestoreGetSetsParams;->session:Lcom/android/server/backup/restore/ActiveRestoreSession;

    monitor-enter v7
    :try_end_1df
    .catch Ljava/lang/Exception; {:try_start_1d2 .. :try_end_1df} :catch_238
    .catchall {:try_start_1d2 .. :try_end_1df} :catchall_231

    .line 346
    :try_start_1df
    iget-object v0, v2, Lcom/android/server/backup/params/RestoreGetSetsParams;->session:Lcom/android/server/backup/restore/ActiveRestoreSession;

    invoke-virtual {v0, v5}, Lcom/android/server/backup/restore/ActiveRestoreSession;->setRestoreSets([Landroid/app/backup/RestoreSet;)V

    .line 347
    monitor-exit v7
    :try_end_1e5
    .catchall {:try_start_1df .. :try_end_1e5} :catchall_22e

    .line 348
    if-nez v5, :cond_1ee

    .line 349
    const/16 v0, 0xb0f

    :try_start_1e9
    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v0, v6}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I
    :try_end_1ee
    .catch Ljava/lang/Exception; {:try_start_1e9 .. :try_end_1ee} :catch_238
    .catchall {:try_start_1e9 .. :try_end_1ee} :catchall_231

    .line 354
    :cond_1ee
    iget-object v0, v2, Lcom/android/server/backup/params/RestoreGetSetsParams;->observer:Landroid/app/backup/IRestoreObserver;

    if-eqz v0, :cond_21c

    .line 356
    :try_start_1f2
    iget-object v0, v2, Lcom/android/server/backup/params/RestoreGetSetsParams;->observer:Landroid/app/backup/IRestoreObserver;

    invoke-interface {v0, v5}, Landroid/app/backup/IRestoreObserver;->restoreSetsAvailable([Landroid/app/backup/RestoreSet;)V
    :try_end_1f7
    .catch Landroid/os/RemoteException; {:try_start_1f2 .. :try_end_1f7} :catch_214
    .catch Ljava/lang/Exception; {:try_start_1f2 .. :try_end_1f7} :catch_1f8

    goto :goto_21c

    .line 359
    :catch_1f8
    move-exception v0

    .line 360
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    :goto_1fe
    const-string v6, "Restore observer threw: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v5, "BackupManagerService"

    invoke-static {v5, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_21c

    .line 357
    :catch_214
    move-exception v0

    .line 358
    const-string v0, "BackupManagerService"

    const-string v5, "Unable to report listing to observer"

    invoke-static {v0, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 365
    :cond_21c
    :goto_21c
    invoke-virtual {v1, v4}, Lcom/android/server/backup/internal/BackupHandler;->removeMessages(I)V

    .line 366
    iget-object v0, v1, Lcom/android/server/backup/internal/BackupHandler;->mAgentTimeoutParameters:Lcom/android/server/backup/BackupAgentTimeoutParameters;

    .line 367
    invoke-virtual {v0}, Lcom/android/server/backup/BackupAgentTimeoutParameters;->getRestoreAgentTimeoutMillis()J

    move-result-wide v5

    .line 366
    invoke-virtual {v1, v4, v5, v6}, Lcom/android/server/backup/internal/BackupHandler;->sendEmptyMessageDelayed(IJ)Z

    .line 369
    iget-object v0, v2, Lcom/android/server/backup/params/RestoreGetSetsParams;->listener:Lcom/android/server/backup/internal/OnTaskFinishedListener;

    invoke-interface {v0, v3}, Lcom/android/server/backup/internal/OnTaskFinishedListener;->onFinished(Ljava/lang/String;)V

    .line 370
    goto :goto_26d

    .line 347
    :catchall_22e
    move-exception v0

    :try_start_22f
    monitor-exit v7
    :try_end_230
    .catchall {:try_start_22f .. :try_end_230} :catchall_22e

    :try_start_230
    throw v0
    :try_end_231
    .catch Ljava/lang/Exception; {:try_start_230 .. :try_end_231} :catch_238
    .catchall {:try_start_230 .. :try_end_231} :catchall_231

    .line 354
    :catchall_231
    move-exception v0

    move-object/from16 v18, v5

    move-object v5, v0

    move-object/from16 v0, v18

    goto :goto_26f

    .line 351
    :catch_238
    move-exception v0

    .line 352
    :try_start_239
    const-string v6, "BackupManagerService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Error from transport getting set list: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_253
    .catchall {:try_start_239 .. :try_end_253} :catchall_231

    .line 354
    iget-object v0, v2, Lcom/android/server/backup/params/RestoreGetSetsParams;->observer:Landroid/app/backup/IRestoreObserver;

    if-eqz v0, :cond_21c

    .line 356
    :try_start_257
    iget-object v0, v2, Lcom/android/server/backup/params/RestoreGetSetsParams;->observer:Landroid/app/backup/IRestoreObserver;

    invoke-interface {v0, v5}, Landroid/app/backup/IRestoreObserver;->restoreSetsAvailable([Landroid/app/backup/RestoreSet;)V
    :try_end_25c
    .catch Landroid/os/RemoteException; {:try_start_257 .. :try_end_25c} :catch_264
    .catch Ljava/lang/Exception; {:try_start_257 .. :try_end_25c} :catch_25d

    goto :goto_21c

    .line 359
    :catch_25d
    move-exception v0

    .line 360
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    goto :goto_1fe

    .line 357
    :catch_264
    move-exception v0

    .line 358
    const-string v0, "BackupManagerService"

    const-string v5, "Unable to report listing to observer"

    invoke-static {v0, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_21c

    .line 371
    :goto_26d
    goto/16 :goto_468

    .line 354
    :goto_26f
    iget-object v6, v2, Lcom/android/server/backup/params/RestoreGetSetsParams;->observer:Landroid/app/backup/IRestoreObserver;

    if-eqz v6, :cond_29d

    .line 356
    :try_start_273
    iget-object v6, v2, Lcom/android/server/backup/params/RestoreGetSetsParams;->observer:Landroid/app/backup/IRestoreObserver;

    invoke-interface {v6, v0}, Landroid/app/backup/IRestoreObserver;->restoreSetsAvailable([Landroid/app/backup/RestoreSet;)V
    :try_end_278
    .catch Landroid/os/RemoteException; {:try_start_273 .. :try_end_278} :catch_295
    .catch Ljava/lang/Exception; {:try_start_273 .. :try_end_278} :catch_279

    goto :goto_29d

    .line 359
    :catch_279
    move-exception v0

    .line 360
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Restore observer threw: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v6, "BackupManagerService"

    invoke-static {v6, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_29d

    .line 357
    :catch_295
    move-exception v0

    .line 358
    const-string v0, "BackupManagerService"

    const-string v6, "Unable to report listing to observer"

    invoke-static {v0, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 365
    :cond_29d
    :goto_29d
    invoke-virtual {v1, v4}, Lcom/android/server/backup/internal/BackupHandler;->removeMessages(I)V

    .line 366
    iget-object v0, v1, Lcom/android/server/backup/internal/BackupHandler;->mAgentTimeoutParameters:Lcom/android/server/backup/BackupAgentTimeoutParameters;

    .line 367
    invoke-virtual {v0}, Lcom/android/server/backup/BackupAgentTimeoutParameters;->getRestoreAgentTimeoutMillis()J

    move-result-wide v6

    .line 366
    invoke-virtual {v1, v4, v6, v7}, Lcom/android/server/backup/internal/BackupHandler;->sendEmptyMessageDelayed(IJ)Z

    .line 369
    iget-object v0, v2, Lcom/android/server/backup/params/RestoreGetSetsParams;->listener:Lcom/android/server/backup/internal/OnTaskFinishedListener;

    invoke-interface {v0, v3}, Lcom/android/server/backup/internal/OnTaskFinishedListener;->onFinished(Ljava/lang/String;)V

    throw v5

    .line 317
    :pswitch_2af  #0x4
    iget-object v0, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/backup/params/ClearParams;

    .line 318
    new-instance v2, Lcom/android/server/backup/internal/PerformClearTask;

    iget-object v1, v1, Lcom/android/server/backup/internal/BackupHandler;->backupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    iget-object v3, v0, Lcom/android/server/backup/params/ClearParams;->transportClient:Lcom/android/server/backup/transport/TransportClient;

    iget-object v4, v0, Lcom/android/server/backup/params/ClearParams;->packageInfo:Landroid/content/pm/PackageInfo;

    iget-object v0, v0, Lcom/android/server/backup/params/ClearParams;->listener:Lcom/android/server/backup/internal/OnTaskFinishedListener;

    invoke-direct {v2, v1, v3, v4, v0}, Lcom/android/server/backup/internal/PerformClearTask;-><init>(Lcom/android/server/backup/UserBackupManagerService;Lcom/android/server/backup/transport/TransportClient;Landroid/content/pm/PackageInfo;Lcom/android/server/backup/internal/OnTaskFinishedListener;)V

    .line 324
    invoke-interface {v2}, Ljava/lang/Runnable;->run()V

    .line 325
    goto/16 :goto_468

    .line 268
    :pswitch_2c5  #0x3
    iget-object v0, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/backup/params/RestoreParams;

    .line 269
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "MSG_RUN_RESTORE observer="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v0, Lcom/android/server/backup/params/RestoreParams;->observer:Landroid/app/backup/IRestoreObserver;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "BackupManagerService"

    invoke-static {v3, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 271
    new-instance v2, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;

    iget-object v6, v1, Lcom/android/server/backup/internal/BackupHandler;->backupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    iget-object v7, v0, Lcom/android/server/backup/params/RestoreParams;->transportClient:Lcom/android/server/backup/transport/TransportClient;

    iget-object v8, v0, Lcom/android/server/backup/params/RestoreParams;->observer:Landroid/app/backup/IRestoreObserver;

    iget-object v9, v0, Lcom/android/server/backup/params/RestoreParams;->monitor:Landroid/app/backup/IBackupManagerMonitor;

    iget-wide v10, v0, Lcom/android/server/backup/params/RestoreParams;->token:J

    iget-object v12, v0, Lcom/android/server/backup/params/RestoreParams;->packageInfo:Landroid/content/pm/PackageInfo;

    iget v13, v0, Lcom/android/server/backup/params/RestoreParams;->pmToken:I

    iget-boolean v14, v0, Lcom/android/server/backup/params/RestoreParams;->isSystemRestore:Z

    iget-object v15, v0, Lcom/android/server/backup/params/RestoreParams;->filterSet:[Ljava/lang/String;

    iget-object v0, v0, Lcom/android/server/backup/params/RestoreParams;->listener:Lcom/android/server/backup/internal/OnTaskFinishedListener;

    move-object v5, v2

    move-object/from16 v16, v0

    invoke-direct/range {v5 .. v16}, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;-><init>(Lcom/android/server/backup/UserBackupManagerService;Lcom/android/server/backup/transport/TransportClient;Landroid/app/backup/IRestoreObserver;Landroid/app/backup/IBackupManagerMonitor;JLandroid/content/pm/PackageInfo;IZ[Ljava/lang/String;Lcom/android/server/backup/internal/OnTaskFinishedListener;)V

    .line 284
    iget-object v0, v1, Lcom/android/server/backup/internal/BackupHandler;->backupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    invoke-virtual {v0}, Lcom/android/server/backup/UserBackupManagerService;->getPendingRestores()Ljava/util/Queue;

    move-result-object v3

    monitor-enter v3

    .line 285
    :try_start_304
    iget-object v0, v1, Lcom/android/server/backup/internal/BackupHandler;->backupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    invoke-virtual {v0}, Lcom/android/server/backup/UserBackupManagerService;->isRestoreInProgress()Z

    move-result v0

    if-eqz v0, :cond_31d

    .line 287
    const-string v0, "BackupManagerService"

    const-string v4, "Restore in progress, queueing."

    invoke-static {v0, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 289
    iget-object v0, v1, Lcom/android/server/backup/internal/BackupHandler;->backupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    invoke-virtual {v0}, Lcom/android/server/backup/UserBackupManagerService;->getPendingRestores()Ljava/util/Queue;

    move-result-object v0

    invoke-interface {v0, v2}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    goto :goto_332

    .line 294
    :cond_31d
    const-string v0, "BackupManagerService"

    const-string v5, "Starting restore."

    invoke-static {v0, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 296
    iget-object v0, v1, Lcom/android/server/backup/internal/BackupHandler;->backupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    invoke-virtual {v0, v4}, Lcom/android/server/backup/UserBackupManagerService;->setRestoreInProgress(Z)V

    .line 297
    const/16 v0, 0x14

    invoke-virtual {v1, v0, v2}, Lcom/android/server/backup/internal/BackupHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 298
    invoke-virtual {v1, v0}, Lcom/android/server/backup/internal/BackupHandler;->sendMessage(Landroid/os/Message;)Z

    .line 300
    :goto_332
    monitor-exit v3

    .line 301
    goto/16 :goto_468

    .line 300
    :catchall_335
    move-exception v0

    monitor-exit v3
    :try_end_337
    .catchall {:try_start_304 .. :try_end_337} :catchall_335

    throw v0

    .line 250
    :pswitch_338  #0x2
    iget-object v0, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/backup/params/AdbBackupParams;

    .line 251
    new-instance v15, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;

    iget-object v2, v1, Lcom/android/server/backup/internal/BackupHandler;->backupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    iget-object v3, v0, Lcom/android/server/backup/params/AdbBackupParams;->fd:Landroid/os/ParcelFileDescriptor;

    iget-object v4, v0, Lcom/android/server/backup/params/AdbBackupParams;->observer:Landroid/app/backup/IFullBackupRestoreObserver;

    iget-boolean v5, v0, Lcom/android/server/backup/params/AdbBackupParams;->includeApks:Z

    iget-boolean v6, v0, Lcom/android/server/backup/params/AdbBackupParams;->includeObbs:Z

    iget-boolean v7, v0, Lcom/android/server/backup/params/AdbBackupParams;->includeShared:Z

    iget-boolean v8, v0, Lcom/android/server/backup/params/AdbBackupParams;->doWidgets:Z

    iget-object v9, v0, Lcom/android/server/backup/params/AdbBackupParams;->curPassword:Ljava/lang/String;

    iget-object v10, v0, Lcom/android/server/backup/params/AdbBackupParams;->encryptPassword:Ljava/lang/String;

    iget-boolean v11, v0, Lcom/android/server/backup/params/AdbBackupParams;->allApps:Z

    iget-boolean v12, v0, Lcom/android/server/backup/params/AdbBackupParams;->includeSystem:Z

    iget-boolean v13, v0, Lcom/android/server/backup/params/AdbBackupParams;->doCompress:Z

    iget-boolean v14, v0, Lcom/android/server/backup/params/AdbBackupParams;->includeKeyValue:Z

    iget-object v1, v0, Lcom/android/server/backup/params/AdbBackupParams;->packages:[Ljava/lang/String;

    iget-object v0, v0, Lcom/android/server/backup/params/AdbBackupParams;->latch:Ljava/util/concurrent/atomic/AtomicBoolean;

    move-object/from16 v16, v1

    move-object v1, v15

    move-object/from16 v17, v15

    move-object/from16 v15, v16

    move-object/from16 v16, v0

    invoke-direct/range {v1 .. v16}, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;-><init>(Lcom/android/server/backup/UserBackupManagerService;Landroid/os/ParcelFileDescriptor;Landroid/app/backup/IFullBackupRestoreObserver;ZZZZLjava/lang/String;Ljava/lang/String;ZZZZ[Ljava/lang/String;Ljava/util/concurrent/atomic/AtomicBoolean;)V

    .line 257
    new-instance v0, Ljava/lang/Thread;

    const-string v1, "adb-backup"

    move-object/from16 v2, v17

    invoke-direct {v0, v2, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 258
    goto/16 :goto_468

    .line 131
    :pswitch_376  #0x1
    iget-object v0, v1, Lcom/android/server/backup/internal/BackupHandler;->backupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    invoke-virtual {v0, v7, v8}, Lcom/android/server/backup/UserBackupManagerService;->setLastBackupPass(J)V

    .line 133
    const-string v2, "BH/MSG_RUN_BACKUP"

    .line 134
    nop

    .line 135
    invoke-virtual {v3, v2}, Lcom/android/server/backup/TransportManager;->getCurrentTransportClient(Ljava/lang/String;)Lcom/android/server/backup/transport/TransportClient;

    move-result-object v15

    .line 137
    if-eqz v15, :cond_38d

    .line 138
    invoke-virtual {v15, v2}, Lcom/android/server/backup/transport/TransportClient;->connect(Ljava/lang/String;)Lcom/android/internal/backup/IBackupTransport;

    move-result-object v0

    goto :goto_38e

    .line 139
    :cond_38d
    move-object v0, v5

    .line 140
    :goto_38e
    if-nez v0, :cond_3b8

    .line 141
    if-eqz v15, :cond_396

    .line 142
    nop

    .line 143
    invoke-virtual {v3, v15, v2}, Lcom/android/server/backup/TransportManager;->disposeOfTransportClient(Lcom/android/server/backup/transport/TransportClient;Ljava/lang/String;)V

    .line 145
    :cond_396
    const-string v0, "BackupManagerService"

    const-string v2, "Backup requested but no transport available"

    invoke-static {v0, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 146
    iget-object v0, v1, Lcom/android/server/backup/internal/BackupHandler;->backupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    invoke-virtual {v0}, Lcom/android/server/backup/UserBackupManagerService;->getQueueLock()Ljava/lang/Object;

    move-result-object v7

    monitor-enter v7

    .line 147
    :try_start_3a4
    iget-object v0, v1, Lcom/android/server/backup/internal/BackupHandler;->backupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    invoke-virtual {v0, v6}, Lcom/android/server/backup/UserBackupManagerService;->setBackupRunning(Z)V

    .line 148
    monitor-exit v7
    :try_end_3aa
    .catchall {:try_start_3a4 .. :try_end_3aa} :catchall_3b5

    .line 149
    iget-object v0, v1, Lcom/android/server/backup/internal/BackupHandler;->backupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    invoke-virtual {v0}, Lcom/android/server/backup/UserBackupManagerService;->getWakelock()Lcom/android/server/backup/UserBackupManagerService$BackupWakeLock;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/backup/UserBackupManagerService$BackupWakeLock;->release()V

    .line 150
    goto/16 :goto_468

    .line 148
    :catchall_3b5
    move-exception v0

    :try_start_3b6
    monitor-exit v7
    :try_end_3b7
    .catchall {:try_start_3b6 .. :try_end_3b7} :catchall_3b5

    throw v0

    .line 154
    :cond_3b8
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 155
    iget-object v7, v1, Lcom/android/server/backup/internal/BackupHandler;->backupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    invoke-virtual {v7}, Lcom/android/server/backup/UserBackupManagerService;->getJournal()Lcom/android/server/backup/DataChangedJournal;

    move-result-object v11

    .line 156
    iget-object v7, v1, Lcom/android/server/backup/internal/BackupHandler;->backupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    invoke-virtual {v7}, Lcom/android/server/backup/UserBackupManagerService;->getQueueLock()Ljava/lang/Object;

    move-result-object v7

    monitor-enter v7

    .line 160
    :try_start_3ca
    iget-object v8, v1, Lcom/android/server/backup/internal/BackupHandler;->backupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    invoke-virtual {v8}, Lcom/android/server/backup/UserBackupManagerService;->getPendingBackups()Ljava/util/HashMap;

    move-result-object v8

    invoke-virtual {v8}, Ljava/util/HashMap;->size()I

    move-result v8

    if-lez v8, :cond_40b

    .line 161
    iget-object v8, v1, Lcom/android/server/backup/internal/BackupHandler;->backupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    invoke-virtual {v8}, Lcom/android/server/backup/UserBackupManagerService;->getPendingBackups()Ljava/util/HashMap;

    move-result-object v8

    invoke-virtual {v8}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_3e4
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_3f6

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/backup/keyvalue/BackupRequest;

    .line 162
    iget-object v9, v9, Lcom/android/server/backup/keyvalue/BackupRequest;->packageName:Ljava/lang/String;

    invoke-interface {v10, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 163
    goto :goto_3e4

    .line 165
    :cond_3f6
    const-string v8, "BackupManagerService"

    const-string v9, "clearing pending backups"

    invoke-static {v8, v9}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 167
    iget-object v8, v1, Lcom/android/server/backup/internal/BackupHandler;->backupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    invoke-virtual {v8}, Lcom/android/server/backup/UserBackupManagerService;->getPendingBackups()Ljava/util/HashMap;

    move-result-object v8

    invoke-virtual {v8}, Ljava/util/HashMap;->clear()V

    .line 170
    iget-object v8, v1, Lcom/android/server/backup/internal/BackupHandler;->backupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    invoke-virtual {v8, v5}, Lcom/android/server/backup/UserBackupManagerService;->setJournal(Lcom/android/server/backup/DataChangedJournal;)V

    .line 173
    :cond_40b
    monitor-exit v7
    :try_end_40c
    .catchall {:try_start_3ca .. :try_end_40c} :catchall_465

    .line 180
    nop

    .line 181
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v5

    if-lez v5, :cond_43d

    .line 184
    :try_start_413
    new-instance v14, Lcom/android/server/backup/internal/-$$Lambda$BackupHandler$TJcRazGYTaUxjeiX6mPLlipfZUI;

    invoke-direct {v14, v3, v15}, Lcom/android/server/backup/internal/-$$Lambda$BackupHandler$TJcRazGYTaUxjeiX6mPLlipfZUI;-><init>(Lcom/android/server/backup/TransportManager;Lcom/android/server/backup/transport/TransportClient;)V

    .line 188
    iget-object v7, v1, Lcom/android/server/backup/internal/BackupHandler;->backupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    .line 191
    invoke-interface {v0}, Lcom/android/internal/backup/IBackupTransport;->transportDirName()Ljava/lang/String;

    move-result-object v9

    const/4 v12, 0x0

    const/4 v13, 0x0

    .line 197
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0
    :try_end_424
    .catch Ljava/lang/Exception; {:try_start_413 .. :try_end_424} :catch_431

    const/16 v16, 0x0

    const/16 v17, 0x0

    .line 188
    move-object v8, v15

    move-object v5, v15

    move-object v15, v0

    :try_start_42b
    invoke-static/range {v7 .. v17}, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->start(Lcom/android/server/backup/UserBackupManagerService;Lcom/android/server/backup/transport/TransportClient;Ljava/lang/String;Ljava/util/List;Lcom/android/server/backup/DataChangedJournal;Landroid/app/backup/IBackupObserver;Landroid/app/backup/IBackupManagerMonitor;Lcom/android/server/backup/internal/OnTaskFinishedListener;Ljava/util/List;ZZ)Lcom/android/server/backup/keyvalue/KeyValueBackupTask;
    :try_end_42e
    .catch Ljava/lang/Exception; {:try_start_42b .. :try_end_42e} :catch_42f

    .line 206
    goto :goto_446

    .line 200
    :catch_42f
    move-exception v0

    goto :goto_433

    :catch_431
    move-exception v0

    move-object v5, v15

    .line 203
    :goto_433
    const-string v4, "BackupManagerService"

    const-string v7, "Transport became unavailable attempting backup or error initializing backup task"

    invoke-static {v4, v7, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 205
    nop

    .line 206
    move v4, v6

    goto :goto_446

    .line 208
    :cond_43d
    move-object v5, v15

    const-string v0, "BackupManagerService"

    const-string v4, "Backup requested but nothing pending"

    invoke-static {v0, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 209
    move v4, v6

    .line 212
    :goto_446
    if-nez v4, :cond_468

    .line 213
    invoke-virtual {v3, v5, v2}, Lcom/android/server/backup/TransportManager;->disposeOfTransportClient(Lcom/android/server/backup/transport/TransportClient;Ljava/lang/String;)V

    .line 215
    iget-object v0, v1, Lcom/android/server/backup/internal/BackupHandler;->backupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    invoke-virtual {v0}, Lcom/android/server/backup/UserBackupManagerService;->getQueueLock()Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    .line 216
    :try_start_452
    iget-object v0, v1, Lcom/android/server/backup/internal/BackupHandler;->backupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    invoke-virtual {v0, v6}, Lcom/android/server/backup/UserBackupManagerService;->setBackupRunning(Z)V

    .line 217
    monitor-exit v2
    :try_end_458
    .catchall {:try_start_452 .. :try_end_458} :catchall_462

    .line 218
    iget-object v0, v1, Lcom/android/server/backup/internal/BackupHandler;->backupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    invoke-virtual {v0}, Lcom/android/server/backup/UserBackupManagerService;->getWakelock()Lcom/android/server/backup/UserBackupManagerService$BackupWakeLock;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/backup/UserBackupManagerService$BackupWakeLock;->release()V

    goto :goto_468

    .line 217
    :catchall_462
    move-exception v0

    :try_start_463
    monitor-exit v2
    :try_end_464
    .catchall {:try_start_463 .. :try_end_464} :catchall_462

    throw v0

    .line 173
    :catchall_465
    move-exception v0

    :try_start_466
    monitor-exit v7
    :try_end_467
    .catchall {:try_start_466 .. :try_end_467} :catchall_465

    throw v0

    .line 464
    :cond_468
    :goto_468
    return-void

    nop

    :pswitch_data_46a
    .packed-switch 0x1
        :pswitch_376  #00000001
        :pswitch_338  #00000002
        :pswitch_2c5  #00000003
        :pswitch_2af  #00000004
        :pswitch_32  #00000005
        :pswitch_1c8  #00000006
        :pswitch_32  #00000007
        :pswitch_18e  #00000008
        :pswitch_136  #00000009
        :pswitch_114  #0000000a
        :pswitch_32  #0000000b
        :pswitch_105  #0000000c
        :pswitch_f4  #0000000d
        :pswitch_e3  #0000000e
        :pswitch_b8  #0000000f
        :pswitch_ad  #00000010
        :pswitch_88  #00000011
        :pswitch_88  #00000012
        :pswitch_32  #00000013
        :pswitch_64  #00000014
        :pswitch_34  #00000015
    .end packed-switch
.end method

.method public stop()V
    .registers 2

    .line 112
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/backup/internal/BackupHandler;->mIsStopping:Z

    .line 113
    const/16 v0, 0x16

    invoke-virtual {p0, v0}, Lcom/android/server/backup/internal/BackupHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/backup/internal/BackupHandler;->sendMessage(Landroid/os/Message;)Z

    .line 114
    return-void
.end method
