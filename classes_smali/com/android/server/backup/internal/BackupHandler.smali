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

.field public static final MSG_WIDGET_BROADCAST:I = 0xd


# instance fields
.field private final backupManagerService:Lcom/android/server/backup/UserBackupManagerService;

.field private final mAgentTimeoutParameters:Lcom/android/server/backup/BackupAgentTimeoutParameters;


# direct methods
.method public constructor <init>(Lcom/android/server/backup/UserBackupManagerService;Landroid/os/Looper;)V
    .registers 5
    .param p1, "backupManagerService"  # Lcom/android/server/backup/UserBackupManagerService;
    .param p2, "looper"  # Landroid/os/Looper;

    .line 91
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 92
    iput-object p1, p0, Lcom/android/server/backup/internal/BackupHandler;->backupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    .line 93
    nop

    .line 94
    invoke-virtual {p1}, Lcom/android/server/backup/UserBackupManagerService;->getAgentTimeoutParameters()Lcom/android/server/backup/BackupAgentTimeoutParameters;

    move-result-object v0

    .line 93
    const-string v1, "Timeout parameters cannot be null"

    invoke-static {v0, v1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/backup/BackupAgentTimeoutParameters;

    iput-object v0, p0, Lcom/android/server/backup/internal/BackupHandler;->mAgentTimeoutParameters:Lcom/android/server/backup/BackupAgentTimeoutParameters;

    .line 96
    return-void
.end method

.method static synthetic lambda$handleMessage$0(Lcom/android/server/backup/TransportManager;Lcom/android/server/backup/transport/TransportClient;Ljava/lang/String;)V
    .registers 3
    .param p0, "transportManager"  # Lcom/android/server/backup/TransportManager;
    .param p1, "transportClient"  # Lcom/android/server/backup/transport/TransportClient;
    .param p2, "caller"  # Ljava/lang/String;

    .line 158
    nop

    .line 159
    invoke-virtual {p0, p1, p2}, Lcom/android/server/backup/TransportManager;->disposeOfTransportClient(Lcom/android/server/backup/transport/TransportClient;Ljava/lang/String;)V

    .line 158
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 24
    .param p1, "msg"  # Landroid/os/Message;

    .line 100
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    iget-object v0, v1, Lcom/android/server/backup/internal/BackupHandler;->backupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    invoke-virtual {v0}, Lcom/android/server/backup/UserBackupManagerService;->getTransportManager()Lcom/android/server/backup/TransportManager;

    move-result-object v3

    .line 101
    .local v3, "transportManager":Lcom/android/server/backup/TransportManager;
    iget v0, v2, Landroid/os/Message;->what:I

    const/4 v4, 0x1

    const/4 v5, 0x0

    packed-switch v0, :pswitch_data_474

    :pswitch_11  #0x5, 0x7, 0xb, 0x13
    goto/16 :goto_472

    .line 210
    :pswitch_13  #0x15
    :try_start_13
    iget-object v0, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/util/Pair;

    .line 212
    .local v0, "taskWithResult":Landroid/util/Pair;, "Landroid/util/Pair<Lcom/android/server/backup/BackupRestoreTask;Ljava/lang/Long;>;"
    iget-object v4, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v4, Lcom/android/server/backup/BackupRestoreTask;

    iget-object v5, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v5, Ljava/lang/Long;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    invoke-interface {v4, v5, v6}, Lcom/android/server/backup/BackupRestoreTask;->operationComplete(J)V
    :try_end_26
    .catch Ljava/lang/ClassCastException; {:try_start_13 .. :try_end_26} :catch_28

    .line 215
    .end local v0  # "taskWithResult":Landroid/util/Pair;, "Landroid/util/Pair<Lcom/android/server/backup/BackupRestoreTask;Ljava/lang/Long;>;"
    goto/16 :goto_472

    .line 213
    :catch_28
    move-exception v0

    .line 214
    .local v0, "e":Ljava/lang/ClassCastException;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Invalid completion in flight, obj="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "BackupManagerService"

    invoke-static {v5, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 216
    .end local v0  # "e":Ljava/lang/ClassCastException;
    goto/16 :goto_472

    .line 197
    :pswitch_43  #0x14
    :try_start_43
    iget-object v0, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/backup/BackupRestoreTask;

    .line 201
    .local v0, "task":Lcom/android/server/backup/BackupRestoreTask;
    invoke-interface {v0}, Lcom/android/server/backup/BackupRestoreTask;->execute()V
    :try_end_4a
    .catch Ljava/lang/ClassCastException; {:try_start_43 .. :try_end_4a} :catch_4c

    .line 204
    .end local v0  # "task":Lcom/android/server/backup/BackupRestoreTask;
    goto/16 :goto_472

    .line 202
    :catch_4c
    move-exception v0

    .line 203
    .local v0, "e":Ljava/lang/ClassCastException;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Invalid backup/restore task in flight, obj="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "BackupManagerService"

    invoke-static {v5, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 205
    .end local v0  # "e":Ljava/lang/ClassCastException;
    goto/16 :goto_472

    .line 348
    :pswitch_67  #0x11, 0x12
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Timeout message received for token="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v2, Landroid/os/Message;->arg1:I

    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v4, "BackupManagerService"

    invoke-static {v4, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 349
    iget-object v0, v1, Lcom/android/server/backup/internal/BackupHandler;->backupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    iget v4, v2, Landroid/os/Message;->arg1:I

    invoke-virtual {v0, v4, v5}, Lcom/android/server/backup/UserBackupManagerService;->handleCancel(IZ)V

    .line 350
    goto/16 :goto_472

    .line 428
    :pswitch_8c  #0x10
    iget-object v0, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    .line 432
    .local v0, "pkgName":Ljava/lang/String;
    iget-object v4, v1, Lcom/android/server/backup/internal/BackupHandler;->backupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    invoke-virtual {v4, v0}, Lcom/android/server/backup/UserBackupManagerService;->dataChangedImpl(Ljava/lang/String;)V

    .line 433
    goto/16 :goto_472

    .line 405
    .end local v0  # "pkgName":Ljava/lang/String;
    :pswitch_97  #0xf
    iget-object v0, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/backup/params/BackupParams;

    .line 409
    .local v0, "params":Lcom/android/server/backup/params/BackupParams;
    iget-object v5, v1, Lcom/android/server/backup/internal/BackupHandler;->backupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    invoke-virtual {v5, v4}, Lcom/android/server/backup/UserBackupManagerService;->setBackupRunning(Z)V

    .line 410
    iget-object v4, v1, Lcom/android/server/backup/internal/BackupHandler;->backupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    invoke-virtual {v4}, Lcom/android/server/backup/UserBackupManagerService;->getWakelock()Landroid/os/PowerManager$WakeLock;

    move-result-object v4

    invoke-virtual {v4}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 412
    iget-object v5, v1, Lcom/android/server/backup/internal/BackupHandler;->backupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    iget-object v6, v0, Lcom/android/server/backup/params/BackupParams;->transportClient:Lcom/android/server/backup/transport/TransportClient;

    iget-object v7, v0, Lcom/android/server/backup/params/BackupParams;->dirName:Ljava/lang/String;

    iget-object v8, v0, Lcom/android/server/backup/params/BackupParams;->kvPackages:Ljava/util/ArrayList;

    const/4 v9, 0x0

    iget-object v10, v0, Lcom/android/server/backup/params/BackupParams;->observer:Landroid/app/backup/IBackupObserver;

    iget-object v11, v0, Lcom/android/server/backup/params/BackupParams;->monitor:Landroid/app/backup/IBackupManagerMonitor;

    iget-object v12, v0, Lcom/android/server/backup/params/BackupParams;->listener:Lcom/android/server/backup/internal/OnTaskFinishedListener;

    iget-object v13, v0, Lcom/android/server/backup/params/BackupParams;->fullPackages:Ljava/util/ArrayList;

    const/4 v14, 0x1

    iget-boolean v15, v0, Lcom/android/server/backup/params/BackupParams;->nonIncrementalBackup:Z

    invoke-static/range {v5 .. v15}, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->start(Lcom/android/server/backup/UserBackupManagerService;Lcom/android/server/backup/transport/TransportClient;Ljava/lang/String;Ljava/util/List;Lcom/android/server/backup/DataChangedJournal;Landroid/app/backup/IBackupObserver;Landroid/app/backup/IBackupManagerMonitor;Lcom/android/server/backup/internal/OnTaskFinishedListener;Ljava/util/List;ZZ)Lcom/android/server/backup/keyvalue/KeyValueBackupTask;

    .line 424
    goto/16 :goto_472

    .line 234
    .end local v0  # "params":Lcom/android/server/backup/params/BackupParams;
    :pswitch_c2  #0xe
    iget-object v0, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;

    .line 235
    .local v0, "task":Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;
    new-instance v4, Ljava/lang/Thread;

    const-string/jumbo v5, "transport-backup"

    invoke-direct {v4, v0, v5}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/lang/Thread;->start()V

    .line 236
    goto/16 :goto_472

    .line 399
    .end local v0  # "task":Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;
    :pswitch_d3  #0xd
    iget-object v0, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/content/Intent;

    .line 400
    .local v0, "intent":Landroid/content/Intent;
    iget-object v4, v1, Lcom/android/server/backup/internal/BackupHandler;->backupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    invoke-virtual {v4}, Lcom/android/server/backup/UserBackupManagerService;->getContext()Landroid/content/Context;

    move-result-object v4

    sget-object v5, Landroid/os/UserHandle;->SYSTEM:Landroid/os/UserHandle;

    invoke-virtual {v4, v0, v5}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 401
    goto/16 :goto_472

    .line 302
    .end local v0  # "intent":Landroid/content/Intent;
    :pswitch_e4  #0xc
    iget-object v0, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/backup/params/ClearRetryParams;

    .line 303
    .local v0, "params":Lcom/android/server/backup/params/ClearRetryParams;
    iget-object v4, v1, Lcom/android/server/backup/internal/BackupHandler;->backupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    iget-object v5, v0, Lcom/android/server/backup/params/ClearRetryParams;->transportName:Ljava/lang/String;

    iget-object v6, v0, Lcom/android/server/backup/params/ClearRetryParams;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v5, v6}, Lcom/android/server/backup/UserBackupManagerService;->clearBackupData(Ljava/lang/String;Ljava/lang/String;)V

    .line 304
    goto/16 :goto_472

    .line 279
    .end local v0  # "params":Lcom/android/server/backup/params/ClearRetryParams;
    :pswitch_f3  #0xa
    iget-object v0, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/backup/params/AdbRestoreParams;

    .line 280
    .local v0, "params":Lcom/android/server/backup/params/AdbRestoreParams;
    new-instance v11, Lcom/android/server/backup/restore/PerformAdbRestoreTask;

    iget-object v5, v1, Lcom/android/server/backup/internal/BackupHandler;->backupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    iget-object v6, v0, Lcom/android/server/backup/params/AdbRestoreParams;->fd:Landroid/os/ParcelFileDescriptor;

    iget-object v7, v0, Lcom/android/server/backup/params/AdbRestoreParams;->curPassword:Ljava/lang/String;

    iget-object v8, v0, Lcom/android/server/backup/params/AdbRestoreParams;->encryptPassword:Ljava/lang/String;

    iget-object v9, v0, Lcom/android/server/backup/params/AdbRestoreParams;->observer:Landroid/app/backup/IFullBackupRestoreObserver;

    iget-object v10, v0, Lcom/android/server/backup/params/AdbRestoreParams;->latch:Ljava/util/concurrent/atomic/AtomicBoolean;

    move-object v4, v11

    invoke-direct/range {v4 .. v10}, Lcom/android/server/backup/restore/PerformAdbRestoreTask;-><init>(Lcom/android/server/backup/UserBackupManagerService;Landroid/os/ParcelFileDescriptor;Ljava/lang/String;Ljava/lang/String;Landroid/app/backup/IFullBackupRestoreObserver;Ljava/util/concurrent/atomic/AtomicBoolean;)V

    .line 284
    .local v4, "task":Lcom/android/server/backup/restore/PerformAdbRestoreTask;
    new-instance v5, Ljava/lang/Thread;

    const-string v6, "adb-restore"

    invoke-direct {v5, v4, v6}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/lang/Thread;->start()V

    .line 285
    goto/16 :goto_472

    .line 371
    .end local v0  # "params":Lcom/android/server/backup/params/AdbRestoreParams;
    .end local v4  # "task":Lcom/android/server/backup/restore/PerformAdbRestoreTask;
    :pswitch_115  #0x9
    iget-object v0, v1, Lcom/android/server/backup/internal/BackupHandler;->backupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    invoke-virtual {v0}, Lcom/android/server/backup/UserBackupManagerService;->getAdbBackupRestoreConfirmations()Landroid/util/SparseArray;

    move-result-object v4

    monitor-enter v4

    .line 372
    :try_start_11c
    iget-object v0, v1, Lcom/android/server/backup/internal/BackupHandler;->backupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    invoke-virtual {v0}, Lcom/android/server/backup/UserBackupManagerService;->getAdbBackupRestoreConfirmations()Landroid/util/SparseArray;

    move-result-object v0

    iget v5, v2, Landroid/os/Message;->arg1:I

    invoke-virtual {v0, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/backup/params/AdbParams;

    move-object v5, v0

    .line 374
    .local v5, "params":Lcom/android/server/backup/params/AdbParams;
    if-eqz v5, :cond_150

    .line 375
    const-string v0, "BackupManagerService"

    const-string v6, "Full backup/restore timed out waiting for user confirmation"

    invoke-static {v0, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 378
    iget-object v0, v1, Lcom/android/server/backup/internal/BackupHandler;->backupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    invoke-virtual {v0, v5}, Lcom/android/server/backup/UserBackupManagerService;->signalAdbBackupRestoreCompletion(Lcom/android/server/backup/params/AdbParams;)V

    .line 381
    iget-object v0, v1, Lcom/android/server/backup/internal/BackupHandler;->backupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    invoke-virtual {v0}, Lcom/android/server/backup/UserBackupManagerService;->getAdbBackupRestoreConfirmations()Landroid/util/SparseArray;

    move-result-object v0

    iget v6, v2, Landroid/os/Message;->arg1:I

    invoke-virtual {v0, v6}, Landroid/util/SparseArray;->delete(I)V

    .line 384
    iget-object v0, v5, Lcom/android/server/backup/params/AdbParams;->observer:Landroid/app/backup/IFullBackupRestoreObserver;
    :try_end_146
    .catchall {:try_start_11c .. :try_end_146} :catchall_16b

    if-eqz v0, :cond_168

    .line 386
    :try_start_148
    iget-object v0, v5, Lcom/android/server/backup/params/AdbParams;->observer:Landroid/app/backup/IFullBackupRestoreObserver;

    invoke-interface {v0}, Landroid/app/backup/IFullBackupRestoreObserver;->onTimeout()V
    :try_end_14d
    .catch Landroid/os/RemoteException; {:try_start_148 .. :try_end_14d} :catch_14e
    .catchall {:try_start_148 .. :try_end_14d} :catchall_16b

    goto :goto_14f

    .line 387
    :catch_14e
    move-exception v0

    .line 389
    :goto_14f
    goto :goto_168

    .line 392
    :cond_150
    :try_start_150
    const-string v0, "BackupManagerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "couldn\'t find params for token "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, v2, Landroid/os/Message;->arg1:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 394
    .end local v5  # "params":Lcom/android/server/backup/params/AdbParams;
    :cond_168
    :goto_168
    monitor-exit v4

    .line 395
    goto/16 :goto_472

    .line 394
    :catchall_16b
    move-exception v0

    monitor-exit v4
    :try_end_16d
    .catchall {:try_start_150 .. :try_end_16d} :catchall_16b

    throw v0

    .line 354
    :pswitch_16e  #0x8
    iget-object v4, v1, Lcom/android/server/backup/internal/BackupHandler;->backupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    monitor-enter v4

    .line 355
    :try_start_171
    iget-object v0, v1, Lcom/android/server/backup/internal/BackupHandler;->backupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    invoke-virtual {v0}, Lcom/android/server/backup/UserBackupManagerService;->getActiveRestoreSession()Lcom/android/server/backup/restore/ActiveRestoreSession;

    move-result-object v0

    if-eqz v0, :cond_1a2

    .line 360
    const-string v0, "BackupManagerService"

    const-string v5, "Restore session timed out; aborting"

    invoke-static {v0, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 361
    iget-object v0, v1, Lcom/android/server/backup/internal/BackupHandler;->backupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    invoke-virtual {v0}, Lcom/android/server/backup/UserBackupManagerService;->getActiveRestoreSession()Lcom/android/server/backup/restore/ActiveRestoreSession;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/backup/restore/ActiveRestoreSession;->markTimedOut()V

    .line 362
    new-instance v0, Lcom/android/server/backup/restore/ActiveRestoreSession$EndRestoreRunnable;

    iget-object v5, v1, Lcom/android/server/backup/internal/BackupHandler;->backupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    invoke-virtual {v5}, Lcom/android/server/backup/UserBackupManagerService;->getActiveRestoreSession()Lcom/android/server/backup/restore/ActiveRestoreSession;

    move-result-object v5

    invoke-static {v5}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v6, v1, Lcom/android/server/backup/internal/BackupHandler;->backupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    iget-object v7, v1, Lcom/android/server/backup/internal/BackupHandler;->backupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    .line 364
    invoke-virtual {v7}, Lcom/android/server/backup/UserBackupManagerService;->getActiveRestoreSession()Lcom/android/server/backup/restore/ActiveRestoreSession;

    move-result-object v7

    invoke-direct {v0, v5, v6, v7}, Lcom/android/server/backup/restore/ActiveRestoreSession$EndRestoreRunnable;-><init>(Lcom/android/server/backup/restore/ActiveRestoreSession;Lcom/android/server/backup/UserBackupManagerService;Lcom/android/server/backup/restore/ActiveRestoreSession;)V

    .line 362
    invoke-virtual {v1, v0}, Lcom/android/server/backup/internal/BackupHandler;->post(Ljava/lang/Runnable;)Z

    .line 366
    :cond_1a2
    monitor-exit v4

    .line 367
    goto/16 :goto_472

    .line 366
    :catchall_1a5
    move-exception v0

    monitor-exit v4
    :try_end_1a7
    .catchall {:try_start_171 .. :try_end_1a7} :catchall_1a5

    throw v0

    .line 309
    :pswitch_1a8  #0x6
    const/4 v4, 0x0

    .line 310
    .local v4, "sets":[Landroid/app/backup/RestoreSet;
    iget-object v0, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v6, v0

    check-cast v6, Lcom/android/server/backup/params/RestoreGetSetsParams;

    .line 311
    .local v6, "params":Lcom/android/server/backup/params/RestoreGetSetsParams;
    const-string v7, "BH/MSG_RUN_GET_RESTORE_SETS"

    .line 313
    .local v7, "callerLogString":Ljava/lang/String;
    const/16 v8, 0x8

    :try_start_1b2
    iget-object v0, v6, Lcom/android/server/backup/params/RestoreGetSetsParams;->transportClient:Lcom/android/server/backup/transport/TransportClient;

    .line 314
    invoke-virtual {v0, v7}, Lcom/android/server/backup/transport/TransportClient;->connectOrThrow(Ljava/lang/String;)Lcom/android/internal/backup/IBackupTransport;

    move-result-object v0

    move-object v9, v0

    .line 315
    .local v9, "transport":Lcom/android/internal/backup/IBackupTransport;
    invoke-interface {v9}, Lcom/android/internal/backup/IBackupTransport;->getAvailableRestoreSets()[Landroid/app/backup/RestoreSet;

    move-result-object v0

    move-object v4, v0

    .line 317
    iget-object v10, v6, Lcom/android/server/backup/params/RestoreGetSetsParams;->session:Lcom/android/server/backup/restore/ActiveRestoreSession;

    monitor-enter v10
    :try_end_1c1
    .catch Ljava/lang/Exception; {:try_start_1b2 .. :try_end_1c1} :catch_217
    .catchall {:try_start_1b2 .. :try_end_1c1} :catchall_213

    .line 318
    :try_start_1c1
    iget-object v0, v6, Lcom/android/server/backup/params/RestoreGetSetsParams;->session:Lcom/android/server/backup/restore/ActiveRestoreSession;

    invoke-virtual {v0, v4}, Lcom/android/server/backup/restore/ActiveRestoreSession;->setRestoreSets([Landroid/app/backup/RestoreSet;)V

    .line 319
    monitor-exit v10
    :try_end_1c7
    .catchall {:try_start_1c1 .. :try_end_1c7} :catchall_210

    .line 320
    if-nez v4, :cond_1d0

    .line 321
    const/16 v0, 0xb0f

    :try_start_1cb
    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v0, v5}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I
    :try_end_1d0
    .catch Ljava/lang/Exception; {:try_start_1cb .. :try_end_1d0} :catch_217
    .catchall {:try_start_1cb .. :try_end_1d0} :catchall_213

    .line 326
    .end local v9  # "transport":Lcom/android/internal/backup/IBackupTransport;
    :cond_1d0
    iget-object v0, v6, Lcom/android/server/backup/params/RestoreGetSetsParams;->observer:Landroid/app/backup/IRestoreObserver;

    if-eqz v0, :cond_1fe

    .line 328
    :try_start_1d4
    iget-object v0, v6, Lcom/android/server/backup/params/RestoreGetSetsParams;->observer:Landroid/app/backup/IRestoreObserver;

    invoke-interface {v0, v4}, Landroid/app/backup/IRestoreObserver;->restoreSetsAvailable([Landroid/app/backup/RestoreSet;)V
    :try_end_1d9
    .catch Landroid/os/RemoteException; {:try_start_1d4 .. :try_end_1d9} :catch_1f6
    .catch Ljava/lang/Exception; {:try_start_1d4 .. :try_end_1d9} :catch_1da

    goto :goto_1fe

    .line 331
    :catch_1da
    move-exception v0

    .line 332
    .local v0, "e":Ljava/lang/Exception;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    :goto_1e0
    const-string v9, "Restore observer threw: "

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v9, "BackupManagerService"

    invoke-static {v9, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1fe

    .line 329
    .end local v0  # "e":Ljava/lang/Exception;
    :catch_1f6
    move-exception v0

    .line 330
    .local v0, "re":Landroid/os/RemoteException;
    const-string v5, "BackupManagerService"

    const-string v9, "Unable to report listing to observer"

    invoke-static {v5, v9}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 337
    .end local v0  # "re":Landroid/os/RemoteException;
    :cond_1fe
    :goto_1fe
    invoke-virtual {v1, v8}, Lcom/android/server/backup/internal/BackupHandler;->removeMessages(I)V

    .line 338
    iget-object v0, v1, Lcom/android/server/backup/internal/BackupHandler;->mAgentTimeoutParameters:Lcom/android/server/backup/BackupAgentTimeoutParameters;

    .line 339
    invoke-virtual {v0}, Lcom/android/server/backup/BackupAgentTimeoutParameters;->getRestoreAgentTimeoutMillis()J

    move-result-wide v9

    .line 338
    invoke-virtual {v1, v8, v9, v10}, Lcom/android/server/backup/internal/BackupHandler;->sendEmptyMessageDelayed(IJ)Z

    .line 341
    iget-object v0, v6, Lcom/android/server/backup/params/RestoreGetSetsParams;->listener:Lcom/android/server/backup/internal/OnTaskFinishedListener;

    invoke-interface {v0, v7}, Lcom/android/server/backup/internal/OnTaskFinishedListener;->onFinished(Ljava/lang/String;)V

    .line 342
    goto :goto_24d

    .line 319
    .restart local v9  # "transport":Lcom/android/internal/backup/IBackupTransport;
    :catchall_210
    move-exception v0

    :try_start_211
    monitor-exit v10
    :try_end_212
    .catchall {:try_start_211 .. :try_end_212} :catchall_210

    .end local v3  # "transportManager":Lcom/android/server/backup/TransportManager;
    .end local v4  # "sets":[Landroid/app/backup/RestoreSet;
    .end local v6  # "params":Lcom/android/server/backup/params/RestoreGetSetsParams;
    .end local v7  # "callerLogString":Ljava/lang/String;
    .end local p0  # "this":Lcom/android/server/backup/internal/BackupHandler;
    .end local p1  # "msg":Landroid/os/Message;
    :try_start_212
    throw v0
    :try_end_213
    .catch Ljava/lang/Exception; {:try_start_212 .. :try_end_213} :catch_217
    .catchall {:try_start_212 .. :try_end_213} :catchall_213

    .line 326
    .end local v9  # "transport":Lcom/android/internal/backup/IBackupTransport;
    .restart local v3  # "transportManager":Lcom/android/server/backup/TransportManager;
    .restart local v4  # "sets":[Landroid/app/backup/RestoreSet;
    .restart local v6  # "params":Lcom/android/server/backup/params/RestoreGetSetsParams;
    .restart local v7  # "callerLogString":Ljava/lang/String;
    .restart local p0  # "this":Lcom/android/server/backup/internal/BackupHandler;
    .restart local p1  # "msg":Landroid/os/Message;
    :catchall_213
    move-exception v0

    move-object v5, v4

    move-object v4, v0

    goto :goto_24f

    .line 323
    :catch_217
    move-exception v0

    .line 324
    .local v0, "e":Ljava/lang/Exception;
    :try_start_218
    const-string v5, "BackupManagerService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Error from transport getting set list: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v5, v9}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_232
    .catchall {:try_start_218 .. :try_end_232} :catchall_213

    .line 326
    nop

    .end local v0  # "e":Ljava/lang/Exception;
    iget-object v0, v6, Lcom/android/server/backup/params/RestoreGetSetsParams;->observer:Landroid/app/backup/IRestoreObserver;

    if-eqz v0, :cond_1fe

    .line 328
    :try_start_237
    iget-object v0, v6, Lcom/android/server/backup/params/RestoreGetSetsParams;->observer:Landroid/app/backup/IRestoreObserver;

    invoke-interface {v0, v4}, Landroid/app/backup/IRestoreObserver;->restoreSetsAvailable([Landroid/app/backup/RestoreSet;)V
    :try_end_23c
    .catch Landroid/os/RemoteException; {:try_start_237 .. :try_end_23c} :catch_244
    .catch Ljava/lang/Exception; {:try_start_237 .. :try_end_23c} :catch_23d

    goto :goto_1fe

    .line 331
    :catch_23d
    move-exception v0

    .line 332
    .restart local v0  # "e":Ljava/lang/Exception;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    goto :goto_1e0

    .line 329
    .end local v0  # "e":Ljava/lang/Exception;
    :catch_244
    move-exception v0

    .line 330
    .local v0, "re":Landroid/os/RemoteException;
    const-string v5, "BackupManagerService"

    const-string v9, "Unable to report listing to observer"

    invoke-static {v5, v9}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .end local v0  # "re":Landroid/os/RemoteException;
    goto :goto_1fe

    .line 343
    :goto_24d
    goto/16 :goto_472

    .line 326
    .end local v4  # "sets":[Landroid/app/backup/RestoreSet;
    .local v5, "sets":[Landroid/app/backup/RestoreSet;
    :goto_24f
    iget-object v0, v6, Lcom/android/server/backup/params/RestoreGetSetsParams;->observer:Landroid/app/backup/IRestoreObserver;

    if-eqz v0, :cond_27d

    .line 328
    :try_start_253
    iget-object v0, v6, Lcom/android/server/backup/params/RestoreGetSetsParams;->observer:Landroid/app/backup/IRestoreObserver;

    invoke-interface {v0, v5}, Landroid/app/backup/IRestoreObserver;->restoreSetsAvailable([Landroid/app/backup/RestoreSet;)V
    :try_end_258
    .catch Landroid/os/RemoteException; {:try_start_253 .. :try_end_258} :catch_275
    .catch Ljava/lang/Exception; {:try_start_253 .. :try_end_258} :catch_259

    goto :goto_27d

    .line 331
    :catch_259
    move-exception v0

    .line 332
    .local v0, "e":Ljava/lang/Exception;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Restore observer threw: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const-string v10, "BackupManagerService"

    invoke-static {v10, v9}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_27d

    .line 329
    .end local v0  # "e":Ljava/lang/Exception;
    :catch_275
    move-exception v0

    .line 330
    .local v0, "re":Landroid/os/RemoteException;
    const-string v9, "BackupManagerService"

    const-string v10, "Unable to report listing to observer"

    invoke-static {v9, v10}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 337
    .end local v0  # "re":Landroid/os/RemoteException;
    :cond_27d
    :goto_27d
    invoke-virtual {v1, v8}, Lcom/android/server/backup/internal/BackupHandler;->removeMessages(I)V

    .line 338
    iget-object v0, v1, Lcom/android/server/backup/internal/BackupHandler;->mAgentTimeoutParameters:Lcom/android/server/backup/BackupAgentTimeoutParameters;

    .line 339
    invoke-virtual {v0}, Lcom/android/server/backup/BackupAgentTimeoutParameters;->getRestoreAgentTimeoutMillis()J

    move-result-wide v9

    .line 338
    invoke-virtual {v1, v8, v9, v10}, Lcom/android/server/backup/internal/BackupHandler;->sendEmptyMessageDelayed(IJ)Z

    .line 341
    iget-object v0, v6, Lcom/android/server/backup/params/RestoreGetSetsParams;->listener:Lcom/android/server/backup/internal/OnTaskFinishedListener;

    invoke-interface {v0, v7}, Lcom/android/server/backup/internal/OnTaskFinishedListener;->onFinished(Ljava/lang/String;)V

    throw v4

    .line 289
    .end local v5  # "sets":[Landroid/app/backup/RestoreSet;
    .end local v6  # "params":Lcom/android/server/backup/params/RestoreGetSetsParams;
    .end local v7  # "callerLogString":Ljava/lang/String;
    :pswitch_28f  #0x4
    iget-object v0, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/backup/params/ClearParams;

    .line 290
    .local v0, "params":Lcom/android/server/backup/params/ClearParams;
    new-instance v4, Lcom/android/server/backup/internal/PerformClearTask;

    iget-object v5, v1, Lcom/android/server/backup/internal/BackupHandler;->backupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    iget-object v6, v0, Lcom/android/server/backup/params/ClearParams;->transportClient:Lcom/android/server/backup/transport/TransportClient;

    iget-object v7, v0, Lcom/android/server/backup/params/ClearParams;->packageInfo:Landroid/content/pm/PackageInfo;

    iget-object v8, v0, Lcom/android/server/backup/params/ClearParams;->listener:Lcom/android/server/backup/internal/OnTaskFinishedListener;

    invoke-direct {v4, v5, v6, v7, v8}, Lcom/android/server/backup/internal/PerformClearTask;-><init>(Lcom/android/server/backup/UserBackupManagerService;Lcom/android/server/backup/transport/TransportClient;Landroid/content/pm/PackageInfo;Lcom/android/server/backup/internal/OnTaskFinishedListener;)V

    .line 296
    .local v4, "task":Ljava/lang/Runnable;
    invoke-interface {v4}, Ljava/lang/Runnable;->run()V

    .line 297
    goto/16 :goto_472

    .line 240
    .end local v0  # "params":Lcom/android/server/backup/params/ClearParams;
    .end local v4  # "task":Ljava/lang/Runnable;
    :pswitch_2a5  #0x3
    iget-object v0, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v5, v0

    check-cast v5, Lcom/android/server/backup/params/RestoreParams;

    .line 241
    .local v5, "params":Lcom/android/server/backup/params/RestoreParams;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "MSG_RUN_RESTORE observer="

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v5, Lcom/android/server/backup/params/RestoreParams;->observer:Landroid/app/backup/IRestoreObserver;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v6, "BackupManagerService"

    invoke-static {v6, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 243
    new-instance v0, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;

    iget-object v8, v1, Lcom/android/server/backup/internal/BackupHandler;->backupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    iget-object v9, v5, Lcom/android/server/backup/params/RestoreParams;->transportClient:Lcom/android/server/backup/transport/TransportClient;

    iget-object v10, v5, Lcom/android/server/backup/params/RestoreParams;->observer:Landroid/app/backup/IRestoreObserver;

    iget-object v11, v5, Lcom/android/server/backup/params/RestoreParams;->monitor:Landroid/app/backup/IBackupManagerMonitor;

    iget-wide v12, v5, Lcom/android/server/backup/params/RestoreParams;->token:J

    iget-object v14, v5, Lcom/android/server/backup/params/RestoreParams;->packageInfo:Landroid/content/pm/PackageInfo;

    iget v15, v5, Lcom/android/server/backup/params/RestoreParams;->pmToken:I

    iget-boolean v6, v5, Lcom/android/server/backup/params/RestoreParams;->isSystemRestore:Z

    iget-object v7, v5, Lcom/android/server/backup/params/RestoreParams;->filterSet:[Ljava/lang/String;

    iget-object v4, v5, Lcom/android/server/backup/params/RestoreParams;->listener:Lcom/android/server/backup/internal/OnTaskFinishedListener;

    move-object/from16 v17, v7

    move-object v7, v0

    move/from16 v16, v6

    move-object/from16 v18, v4

    invoke-direct/range {v7 .. v18}, Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;-><init>(Lcom/android/server/backup/UserBackupManagerService;Lcom/android/server/backup/transport/TransportClient;Landroid/app/backup/IRestoreObserver;Landroid/app/backup/IBackupManagerMonitor;JLandroid/content/pm/PackageInfo;IZ[Ljava/lang/String;Lcom/android/server/backup/internal/OnTaskFinishedListener;)V

    move-object v4, v0

    .line 256
    .local v4, "task":Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;
    iget-object v0, v1, Lcom/android/server/backup/internal/BackupHandler;->backupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    invoke-virtual {v0}, Lcom/android/server/backup/UserBackupManagerService;->getPendingRestores()Ljava/util/Queue;

    move-result-object v6

    monitor-enter v6

    .line 257
    :try_start_2ea
    iget-object v0, v1, Lcom/android/server/backup/internal/BackupHandler;->backupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    invoke-virtual {v0}, Lcom/android/server/backup/UserBackupManagerService;->isRestoreInProgress()Z

    move-result v0

    if-eqz v0, :cond_303

    .line 259
    const-string v0, "BackupManagerService"

    const-string v7, "Restore in progress, queueing."

    invoke-static {v0, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 261
    iget-object v0, v1, Lcom/android/server/backup/internal/BackupHandler;->backupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    invoke-virtual {v0}, Lcom/android/server/backup/UserBackupManagerService;->getPendingRestores()Ljava/util/Queue;

    move-result-object v0

    invoke-interface {v0, v4}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    goto :goto_319

    .line 266
    :cond_303
    const-string v0, "BackupManagerService"

    const-string v7, "Starting restore."

    invoke-static {v0, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 268
    iget-object v0, v1, Lcom/android/server/backup/internal/BackupHandler;->backupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    const/4 v7, 0x1

    invoke-virtual {v0, v7}, Lcom/android/server/backup/UserBackupManagerService;->setRestoreInProgress(Z)V

    .line 269
    const/16 v0, 0x14

    invoke-virtual {v1, v0, v4}, Lcom/android/server/backup/internal/BackupHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 270
    .local v0, "restoreMsg":Landroid/os/Message;
    invoke-virtual {v1, v0}, Lcom/android/server/backup/internal/BackupHandler;->sendMessage(Landroid/os/Message;)Z

    .line 272
    .end local v0  # "restoreMsg":Landroid/os/Message;
    :goto_319
    monitor-exit v6

    .line 273
    goto/16 :goto_472

    .line 272
    :catchall_31c
    move-exception v0

    monitor-exit v6
    :try_end_31e
    .catchall {:try_start_2ea .. :try_end_31e} :catchall_31c

    throw v0

    .line 222
    .end local v4  # "task":Lcom/android/server/backup/restore/PerformUnifiedRestoreTask;
    .end local v5  # "params":Lcom/android/server/backup/params/RestoreParams;
    :pswitch_31f  #0x2
    iget-object v0, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/backup/params/AdbBackupParams;

    .line 223
    .local v0, "params":Lcom/android/server/backup/params/AdbBackupParams;
    new-instance v20, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;

    iget-object v5, v1, Lcom/android/server/backup/internal/BackupHandler;->backupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    iget-object v6, v0, Lcom/android/server/backup/params/AdbBackupParams;->fd:Landroid/os/ParcelFileDescriptor;

    iget-object v7, v0, Lcom/android/server/backup/params/AdbBackupParams;->observer:Landroid/app/backup/IFullBackupRestoreObserver;

    iget-boolean v8, v0, Lcom/android/server/backup/params/AdbBackupParams;->includeApks:Z

    iget-boolean v9, v0, Lcom/android/server/backup/params/AdbBackupParams;->includeObbs:Z

    iget-boolean v10, v0, Lcom/android/server/backup/params/AdbBackupParams;->includeShared:Z

    iget-boolean v11, v0, Lcom/android/server/backup/params/AdbBackupParams;->doWidgets:Z

    iget-object v12, v0, Lcom/android/server/backup/params/AdbBackupParams;->curPassword:Ljava/lang/String;

    iget-object v13, v0, Lcom/android/server/backup/params/AdbBackupParams;->encryptPassword:Ljava/lang/String;

    iget-boolean v14, v0, Lcom/android/server/backup/params/AdbBackupParams;->allApps:Z

    iget-boolean v15, v0, Lcom/android/server/backup/params/AdbBackupParams;->includeSystem:Z

    iget-boolean v4, v0, Lcom/android/server/backup/params/AdbBackupParams;->doCompress:Z

    iget-boolean v2, v0, Lcom/android/server/backup/params/AdbBackupParams;->includeKeyValue:Z

    move-object/from16 v21, v3

    .end local v3  # "transportManager":Lcom/android/server/backup/TransportManager;
    .local v21, "transportManager":Lcom/android/server/backup/TransportManager;
    iget-object v3, v0, Lcom/android/server/backup/params/AdbBackupParams;->packages:[Ljava/lang/String;

    iget-object v1, v0, Lcom/android/server/backup/params/AdbBackupParams;->latch:Ljava/util/concurrent/atomic/AtomicBoolean;

    move/from16 v16, v4

    move-object/from16 v4, v20

    move/from16 v17, v2

    move-object/from16 v18, v3

    move-object/from16 v19, v1

    invoke-direct/range {v4 .. v19}, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;-><init>(Lcom/android/server/backup/UserBackupManagerService;Landroid/os/ParcelFileDescriptor;Landroid/app/backup/IFullBackupRestoreObserver;ZZZZLjava/lang/String;Ljava/lang/String;ZZZZ[Ljava/lang/String;Ljava/util/concurrent/atomic/AtomicBoolean;)V

    move-object/from16 v1, v20

    .line 229
    .local v1, "task":Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;
    new-instance v2, Ljava/lang/Thread;

    const-string v3, "adb-backup"

    invoke-direct {v2, v1, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    .line 230
    move-object/from16 v1, p0

    move-object/from16 v3, v21

    goto/16 :goto_472

    .line 103
    .end local v0  # "params":Lcom/android/server/backup/params/AdbBackupParams;
    .end local v1  # "task":Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;
    .end local v21  # "transportManager":Lcom/android/server/backup/TransportManager;
    .restart local v3  # "transportManager":Lcom/android/server/backup/TransportManager;
    :pswitch_364  #0x1
    move-object/from16 v21, v3

    .end local v3  # "transportManager":Lcom/android/server/backup/TransportManager;
    .restart local v21  # "transportManager":Lcom/android/server/backup/TransportManager;
    move-object/from16 v1, p0

    iget-object v0, v1, Lcom/android/server/backup/internal/BackupHandler;->backupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/android/server/backup/UserBackupManagerService;->setLastBackupPass(J)V

    .line 105
    const-string v2, "BH/MSG_RUN_BACKUP"

    .line 106
    .local v2, "callerLogString":Ljava/lang/String;
    nop

    .line 107
    move-object/from16 v3, v21

    .end local v21  # "transportManager":Lcom/android/server/backup/TransportManager;
    .restart local v3  # "transportManager":Lcom/android/server/backup/TransportManager;
    invoke-virtual {v3, v2}, Lcom/android/server/backup/TransportManager;->getCurrentTransportClient(Ljava/lang/String;)Lcom/android/server/backup/transport/TransportClient;

    move-result-object v4

    .line 109
    .local v4, "transportClient":Lcom/android/server/backup/transport/TransportClient;
    const/4 v0, 0x0

    if-eqz v4, :cond_382

    .line 110
    invoke-virtual {v4, v2}, Lcom/android/server/backup/transport/TransportClient;->connect(Ljava/lang/String;)Lcom/android/internal/backup/IBackupTransport;

    move-result-object v6

    goto :goto_383

    .line 111
    :cond_382
    move-object v6, v0

    :goto_383
    move-object/from16 v17, v6

    .line 112
    .local v17, "transport":Lcom/android/internal/backup/IBackupTransport;
    if-nez v17, :cond_3af

    .line 113
    if-eqz v4, :cond_38d

    .line 114
    nop

    .line 115
    invoke-virtual {v3, v4, v2}, Lcom/android/server/backup/TransportManager;->disposeOfTransportClient(Lcom/android/server/backup/transport/TransportClient;Ljava/lang/String;)V

    .line 117
    :cond_38d
    const-string v0, "BackupManagerService"

    const-string v6, "Backup requested but no transport available"

    invoke-static {v0, v6}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 118
    iget-object v0, v1, Lcom/android/server/backup/internal/BackupHandler;->backupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    invoke-virtual {v0}, Lcom/android/server/backup/UserBackupManagerService;->getQueueLock()Ljava/lang/Object;

    move-result-object v6

    monitor-enter v6

    .line 119
    :try_start_39b
    iget-object v0, v1, Lcom/android/server/backup/internal/BackupHandler;->backupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    invoke-virtual {v0, v5}, Lcom/android/server/backup/UserBackupManagerService;->setBackupRunning(Z)V

    .line 120
    monitor-exit v6
    :try_end_3a1
    .catchall {:try_start_39b .. :try_end_3a1} :catchall_3ac

    .line 121
    iget-object v0, v1, Lcom/android/server/backup/internal/BackupHandler;->backupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    invoke-virtual {v0}, Lcom/android/server/backup/UserBackupManagerService;->getWakelock()Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 122
    goto/16 :goto_472

    .line 120
    :catchall_3ac
    move-exception v0

    :try_start_3ad
    monitor-exit v6
    :try_end_3ae
    .catchall {:try_start_3ad .. :try_end_3ae} :catchall_3ac

    throw v0

    .line 126
    :cond_3af
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    move-object v15, v6

    .line 127
    .local v15, "queue":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v6, v1, Lcom/android/server/backup/internal/BackupHandler;->backupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    invoke-virtual {v6}, Lcom/android/server/backup/UserBackupManagerService;->getJournal()Lcom/android/server/backup/DataChangedJournal;

    move-result-object v18

    .line 128
    .local v18, "oldJournal":Lcom/android/server/backup/DataChangedJournal;
    iget-object v6, v1, Lcom/android/server/backup/internal/BackupHandler;->backupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    invoke-virtual {v6}, Lcom/android/server/backup/UserBackupManagerService;->getQueueLock()Ljava/lang/Object;

    move-result-object v6

    monitor-enter v6

    .line 132
    :try_start_3c2
    iget-object v7, v1, Lcom/android/server/backup/internal/BackupHandler;->backupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    invoke-virtual {v7}, Lcom/android/server/backup/UserBackupManagerService;->getPendingBackups()Ljava/util/HashMap;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/HashMap;->size()I

    move-result v7
    :try_end_3cc
    .catchall {:try_start_3c2 .. :try_end_3cc} :catchall_46b

    if-lez v7, :cond_409

    .line 133
    :try_start_3ce
    iget-object v7, v1, Lcom/android/server/backup/internal/BackupHandler;->backupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    invoke-virtual {v7}, Lcom/android/server/backup/UserBackupManagerService;->getPendingBackups()Ljava/util/HashMap;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_3dc
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_3ef

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/backup/keyvalue/BackupRequest;

    .line 134
    .local v8, "b":Lcom/android/server/backup/keyvalue/BackupRequest;
    iget-object v9, v8, Lcom/android/server/backup/keyvalue/BackupRequest;->packageName:Ljava/lang/String;

    invoke-interface {v15, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 135
    nop

    .end local v8  # "b":Lcom/android/server/backup/keyvalue/BackupRequest;
    goto :goto_3dc

    .line 137
    :cond_3ef
    const-string v7, "BackupManagerService"

    const-string v8, "clearing pending backups"

    invoke-static {v7, v8}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 139
    iget-object v7, v1, Lcom/android/server/backup/internal/BackupHandler;->backupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    invoke-virtual {v7}, Lcom/android/server/backup/UserBackupManagerService;->getPendingBackups()Ljava/util/HashMap;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/HashMap;->clear()V

    .line 142
    iget-object v7, v1, Lcom/android/server/backup/internal/BackupHandler;->backupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    invoke-virtual {v7, v0}, Lcom/android/server/backup/UserBackupManagerService;->setJournal(Lcom/android/server/backup/DataChangedJournal;)V
    :try_end_404
    .catchall {:try_start_3ce .. :try_end_404} :catchall_405

    goto :goto_409

    .line 145
    :catchall_405
    move-exception v0

    move-object/from16 v20, v15

    goto :goto_46e

    :cond_409
    :goto_409
    :try_start_409
    monitor-exit v6
    :try_end_40a
    .catchall {:try_start_409 .. :try_end_40a} :catchall_46b

    .line 152
    const/16 v19, 0x1

    .line 153
    .local v19, "staged":Z
    invoke-interface {v15}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_441

    .line 156
    :try_start_412
    new-instance v13, Lcom/android/server/backup/internal/-$$Lambda$BackupHandler$TJcRazGYTaUxjeiX6mPLlipfZUI;

    invoke-direct {v13, v3, v4}, Lcom/android/server/backup/internal/-$$Lambda$BackupHandler$TJcRazGYTaUxjeiX6mPLlipfZUI;-><init>(Lcom/android/server/backup/TransportManager;Lcom/android/server/backup/transport/TransportClient;)V

    .line 160
    .local v13, "listener":Lcom/android/server/backup/internal/OnTaskFinishedListener;
    iget-object v6, v1, Lcom/android/server/backup/internal/BackupHandler;->backupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    .line 163
    invoke-interface/range {v17 .. v17}, Lcom/android/internal/backup/IBackupTransport;->transportDirName()Ljava/lang/String;

    move-result-object v8

    const/4 v11, 0x0

    const/4 v12, 0x0

    .line 169
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v14
    :try_end_423
    .catch Ljava/lang/Exception; {:try_start_412 .. :try_end_423} :catch_434

    const/4 v0, 0x0

    const/16 v16, 0x0

    .line 160
    move-object v7, v4

    move-object v9, v15

    move-object/from16 v10, v18

    move-object/from16 v20, v15

    .end local v15  # "queue":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local v20, "queue":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    move v15, v0

    :try_start_42d
    invoke-static/range {v6 .. v16}, Lcom/android/server/backup/keyvalue/KeyValueBackupTask;->start(Lcom/android/server/backup/UserBackupManagerService;Lcom/android/server/backup/transport/TransportClient;Ljava/lang/String;Ljava/util/List;Lcom/android/server/backup/DataChangedJournal;Landroid/app/backup/IBackupObserver;Landroid/app/backup/IBackupManagerMonitor;Lcom/android/server/backup/internal/OnTaskFinishedListener;Ljava/util/List;ZZ)Lcom/android/server/backup/keyvalue/KeyValueBackupTask;
    :try_end_430
    .catch Ljava/lang/Exception; {:try_start_42d .. :try_end_430} :catch_432

    .line 178
    nop

    .end local v13  # "listener":Lcom/android/server/backup/internal/OnTaskFinishedListener;
    goto :goto_44c

    .line 172
    :catch_432
    move-exception v0

    goto :goto_437

    .end local v20  # "queue":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v15  # "queue":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :catch_434
    move-exception v0

    move-object/from16 v20, v15

    .line 175
    .end local v15  # "queue":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local v0, "e":Ljava/lang/Exception;
    .restart local v20  # "queue":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :goto_437
    const-string v6, "BackupManagerService"

    const-string v7, "Transport became unavailable attempting backup or error initializing backup task"

    invoke-static {v6, v7, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 177
    const/16 v19, 0x0

    .line 178
    .end local v0  # "e":Ljava/lang/Exception;
    goto :goto_44c

    .line 180
    .end local v20  # "queue":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v15  # "queue":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_441
    move-object/from16 v20, v15

    .end local v15  # "queue":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v20  # "queue":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string v0, "BackupManagerService"

    const-string v6, "Backup requested but nothing pending"

    invoke-static {v0, v6}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 181
    const/16 v19, 0x0

    .line 184
    :goto_44c
    if-nez v19, :cond_472

    .line 185
    invoke-virtual {v3, v4, v2}, Lcom/android/server/backup/TransportManager;->disposeOfTransportClient(Lcom/android/server/backup/transport/TransportClient;Ljava/lang/String;)V

    .line 187
    iget-object v0, v1, Lcom/android/server/backup/internal/BackupHandler;->backupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    invoke-virtual {v0}, Lcom/android/server/backup/UserBackupManagerService;->getQueueLock()Ljava/lang/Object;

    move-result-object v6

    monitor-enter v6

    .line 188
    :try_start_458
    iget-object v0, v1, Lcom/android/server/backup/internal/BackupHandler;->backupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    invoke-virtual {v0, v5}, Lcom/android/server/backup/UserBackupManagerService;->setBackupRunning(Z)V

    .line 189
    monitor-exit v6
    :try_end_45e
    .catchall {:try_start_458 .. :try_end_45e} :catchall_468

    .line 190
    iget-object v0, v1, Lcom/android/server/backup/internal/BackupHandler;->backupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    invoke-virtual {v0}, Lcom/android/server/backup/UserBackupManagerService;->getWakelock()Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    goto :goto_472

    .line 189
    :catchall_468
    move-exception v0

    :try_start_469
    monitor-exit v6
    :try_end_46a
    .catchall {:try_start_469 .. :try_end_46a} :catchall_468

    throw v0

    .line 145
    .end local v19  # "staged":Z
    .end local v20  # "queue":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v15  # "queue":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :catchall_46b
    move-exception v0

    move-object/from16 v20, v15

    .end local v15  # "queue":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v20  # "queue":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :goto_46e
    :try_start_46e
    monitor-exit v6
    :try_end_46f
    .catchall {:try_start_46e .. :try_end_46f} :catchall_470

    throw v0

    :catchall_470
    move-exception v0

    goto :goto_46e

    .line 436
    .end local v2  # "callerLogString":Ljava/lang/String;
    .end local v4  # "transportClient":Lcom/android/server/backup/transport/TransportClient;
    .end local v17  # "transport":Lcom/android/internal/backup/IBackupTransport;
    .end local v18  # "oldJournal":Lcom/android/server/backup/DataChangedJournal;
    .end local v20  # "queue":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_472
    :goto_472
    return-void

    nop

    :pswitch_data_474
    .packed-switch 0x1
        :pswitch_364  #00000001
        :pswitch_31f  #00000002
        :pswitch_2a5  #00000003
        :pswitch_28f  #00000004
        :pswitch_11  #00000005
        :pswitch_1a8  #00000006
        :pswitch_11  #00000007
        :pswitch_16e  #00000008
        :pswitch_115  #00000009
        :pswitch_f3  #0000000a
        :pswitch_11  #0000000b
        :pswitch_e4  #0000000c
        :pswitch_d3  #0000000d
        :pswitch_c2  #0000000e
        :pswitch_97  #0000000f
        :pswitch_8c  #00000010
        :pswitch_67  #00000011
        :pswitch_67  #00000012
        :pswitch_11  #00000013
        :pswitch_43  #00000014
        :pswitch_13  #00000015
    .end packed-switch
.end method
