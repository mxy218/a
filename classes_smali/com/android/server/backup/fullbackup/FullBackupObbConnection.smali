.class public Lcom/android/server/backup/fullbackup/FullBackupObbConnection;
.super Ljava/lang/Object;
.source "FullBackupObbConnection.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# instance fields
.field private backupManagerService:Lcom/android/server/backup/UserBackupManagerService;

.field private final mAgentTimeoutParameters:Lcom/android/server/backup/BackupAgentTimeoutParameters;

.field volatile mService:Lcom/android/internal/backup/IObbBackupService;


# direct methods
.method public constructor <init>(Lcom/android/server/backup/UserBackupManagerService;)V
    .registers 3

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    iput-object p1, p0, Lcom/android/server/backup/fullbackup/FullBackupObbConnection;->backupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    .line 54
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/backup/fullbackup/FullBackupObbConnection;->mService:Lcom/android/internal/backup/IObbBackupService;

    .line 55
    nop

    .line 56
    invoke-virtual {p1}, Lcom/android/server/backup/UserBackupManagerService;->getAgentTimeoutParameters()Lcom/android/server/backup/BackupAgentTimeoutParameters;

    move-result-object p1

    .line 55
    const-string v0, "Timeout parameters cannot be null"

    invoke-static {p1, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/backup/BackupAgentTimeoutParameters;

    iput-object p1, p0, Lcom/android/server/backup/fullbackup/FullBackupObbConnection;->mAgentTimeoutParameters:Lcom/android/server/backup/BackupAgentTimeoutParameters;

    .line 58
    return-void
.end method

.method private waitForConnection()V
    .registers 2

    .line 125
    monitor-enter p0

    .line 126
    :goto_1
    :try_start_1
    iget-object v0, p0, Lcom/android/server/backup/fullbackup/FullBackupObbConnection;->mService:Lcom/android/internal/backup/IObbBackupService;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_d

    if-nez v0, :cond_b

    .line 131
    :try_start_5
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_8
    .catch Ljava/lang/InterruptedException; {:try_start_5 .. :try_end_8} :catch_9
    .catchall {:try_start_5 .. :try_end_8} :catchall_d

    .line 132
    :goto_8
    goto :goto_1

    :catch_9
    move-exception v0

    goto :goto_8

    .line 137
    :cond_b
    :try_start_b
    monitor-exit p0

    .line 138
    return-void

    .line 137
    :catchall_d
    move-exception v0

    monitor-exit p0
    :try_end_f
    .catchall {:try_start_b .. :try_end_f} :catchall_d

    throw v0
.end method


# virtual methods
.method public backupObbs(Landroid/content/pm/PackageInfo;Ljava/io/OutputStream;)Z
    .registers 15

    .line 76
    const-string v0, "I/O error closing down OBB backup"

    const-string v1, "BackupManagerService"

    .line 77
    invoke-direct {p0}, Lcom/android/server/backup/fullbackup/FullBackupObbConnection;->waitForConnection()V

    .line 79
    nop

    .line 81
    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    :try_start_b
    invoke-static {}, Landroid/os/ParcelFileDescriptor;->createPipe()[Landroid/os/ParcelFileDescriptor;

    move-result-object v4

    .line 82
    iget-object v5, p0, Lcom/android/server/backup/fullbackup/FullBackupObbConnection;->backupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    invoke-virtual {v5}, Lcom/android/server/backup/UserBackupManagerService;->generateRandomIntegerToken()I

    move-result v5

    .line 83
    iget-object v6, p0, Lcom/android/server/backup/fullbackup/FullBackupObbConnection;->mAgentTimeoutParameters:Lcom/android/server/backup/BackupAgentTimeoutParameters;

    .line 84
    invoke-virtual {v6}, Lcom/android/server/backup/BackupAgentTimeoutParameters;->getFullBackupAgentTimeoutMillis()J

    move-result-wide v8

    .line 85
    iget-object v6, p0, Lcom/android/server/backup/fullbackup/FullBackupObbConnection;->backupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    const/4 v10, 0x0

    const/4 v11, 0x0

    move v7, v5

    invoke-virtual/range {v6 .. v11}, Lcom/android/server/backup/UserBackupManagerService;->prepareOperationTimeout(IJLcom/android/server/backup/BackupRestoreTask;I)V

    .line 87
    iget-object v6, p0, Lcom/android/server/backup/fullbackup/FullBackupObbConnection;->mService:Lcom/android/internal/backup/IObbBackupService;

    iget-object v7, p1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    aget-object v8, v4, v2

    iget-object v9, p0, Lcom/android/server/backup/fullbackup/FullBackupObbConnection;->backupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    .line 88
    invoke-virtual {v9}, Lcom/android/server/backup/UserBackupManagerService;->getBackupManagerBinder()Landroid/app/backup/IBackupManager;

    move-result-object v9

    .line 87
    invoke-interface {v6, v7, v8, v5, v9}, Lcom/android/internal/backup/IObbBackupService;->backupObbs(Ljava/lang/String;Landroid/os/ParcelFileDescriptor;ILandroid/app/backup/IBackupManager;)V

    .line 89
    aget-object v6, v4, v3

    invoke-static {v6, p2}, Lcom/android/server/backup/utils/FullBackupUtils;->routeSocketDataToOutput(Landroid/os/ParcelFileDescriptor;Ljava/io/OutputStream;)V

    .line 90
    iget-object v6, p0, Lcom/android/server/backup/fullbackup/FullBackupObbConnection;->backupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    invoke-virtual {v6, v5}, Lcom/android/server/backup/UserBackupManagerService;->waitUntilOperationComplete(I)Z

    move-result p1
    :try_end_3d
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_3d} :catch_5b
    .catchall {:try_start_b .. :try_end_3d} :catchall_59

    .line 95
    :try_start_3d
    invoke-virtual {p2}, Ljava/io/OutputStream;->flush()V

    .line 96
    nop

    .line 97
    aget-object p2, v4, v3

    if-eqz p2, :cond_4a

    .line 98
    aget-object p2, v4, v3

    invoke-virtual {p2}, Landroid/os/ParcelFileDescriptor;->close()V

    .line 100
    :cond_4a
    aget-object p2, v4, v2

    if-eqz p2, :cond_53

    .line 101
    aget-object p2, v4, v2

    invoke-virtual {p2}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_53
    .catch Ljava/io/IOException; {:try_start_3d .. :try_end_53} :catch_54

    .line 106
    :cond_53
    goto :goto_8e

    .line 104
    :catch_54
    move-exception p2

    .line 105
    invoke-static {v1, v0, p2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 107
    goto :goto_8e

    .line 94
    :catchall_59
    move-exception p1

    goto :goto_8f

    .line 91
    :catch_5b
    move-exception v5

    .line 92
    :try_start_5c
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unable to back up OBBs for "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_70
    .catchall {:try_start_5c .. :try_end_70} :catchall_59

    .line 95
    :try_start_70
    invoke-virtual {p2}, Ljava/io/OutputStream;->flush()V

    .line 96
    if-eqz v4, :cond_87

    .line 97
    aget-object p1, v4, v3

    if-eqz p1, :cond_7e

    .line 98
    aget-object p1, v4, v3

    invoke-virtual {p1}, Landroid/os/ParcelFileDescriptor;->close()V

    .line 100
    :cond_7e
    aget-object p1, v4, v2

    if-eqz p1, :cond_87

    .line 101
    aget-object p1, v4, v2

    invoke-virtual {p1}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_87
    .catch Ljava/io/IOException; {:try_start_70 .. :try_end_87} :catch_88

    .line 106
    :cond_87
    goto :goto_8d

    .line 104
    :catch_88
    move-exception p1

    .line 105
    invoke-static {v1, v0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 107
    nop

    .line 108
    :goto_8d
    move p1, v3

    :goto_8e
    return p1

    .line 95
    :goto_8f
    :try_start_8f
    invoke-virtual {p2}, Ljava/io/OutputStream;->flush()V

    .line 96
    if-eqz v4, :cond_a6

    .line 97
    aget-object p2, v4, v3

    if-eqz p2, :cond_9d

    .line 98
    aget-object p2, v4, v3

    invoke-virtual {p2}, Landroid/os/ParcelFileDescriptor;->close()V

    .line 100
    :cond_9d
    aget-object p2, v4, v2

    if-eqz p2, :cond_a6

    .line 101
    aget-object p2, v4, v2

    invoke-virtual {p2}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_a6
    .catch Ljava/io/IOException; {:try_start_8f .. :try_end_a6} :catch_a7

    .line 106
    :cond_a6
    goto :goto_ab

    .line 104
    :catch_a7
    move-exception p2

    .line 105
    invoke-static {v1, v0, p2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 106
    :goto_ab
    throw p1
.end method

.method public establish()V
    .registers 5

    .line 64
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.android.sharedstoragebackup"

    const-string v3, "com.android.sharedstoragebackup.ObbBackupService"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v0

    .line 67
    iget-object v1, p0, Lcom/android/server/backup/fullbackup/FullBackupObbConnection;->backupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    invoke-virtual {v1}, Lcom/android/server/backup/UserBackupManagerService;->getContext()Landroid/content/Context;

    move-result-object v1

    sget-object v2, Landroid/os/UserHandle;->SYSTEM:Landroid/os/UserHandle;

    const/4 v3, 0x1

    invoke-virtual {v1, v0, p0, v3, v2}, Landroid/content/Context;->bindServiceAsUser(Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z

    .line 69
    return-void
.end method

.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .registers 3

    .line 142
    monitor-enter p0

    .line 143
    :try_start_1
    invoke-static {p2}, Lcom/android/internal/backup/IObbBackupService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/backup/IObbBackupService;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/backup/fullbackup/FullBackupObbConnection;->mService:Lcom/android/internal/backup/IObbBackupService;

    .line 147
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 148
    monitor-exit p0

    .line 149
    return-void

    .line 148
    :catchall_c
    move-exception p1

    monitor-exit p0
    :try_end_e
    .catchall {:try_start_1 .. :try_end_e} :catchall_c

    throw p1
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .registers 2

    .line 153
    monitor-enter p0

    .line 154
    const/4 p1, 0x0

    :try_start_2
    iput-object p1, p0, Lcom/android/server/backup/fullbackup/FullBackupObbConnection;->mService:Lcom/android/internal/backup/IObbBackupService;

    .line 158
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 159
    monitor-exit p0

    .line 160
    return-void

    .line 159
    :catchall_9
    move-exception p1

    monitor-exit p0
    :try_end_b
    .catchall {:try_start_2 .. :try_end_b} :catchall_9

    throw p1
.end method

.method public restoreObbFile(Ljava/lang/String;Landroid/os/ParcelFileDescriptor;JILjava/lang/String;JJILandroid/app/backup/IBackupManager;)V
    .registers 26

    .line 114
    invoke-direct {p0}, Lcom/android/server/backup/fullbackup/FullBackupObbConnection;->waitForConnection()V

    .line 117
    move-object v0, p0

    :try_start_4
    iget-object v0, v0, Lcom/android/server/backup/fullbackup/FullBackupObbConnection;->mService:Lcom/android/internal/backup/IObbBackupService;

    move-object v1, p1

    move-object v2, p2

    move-wide/from16 v3, p3

    move/from16 v5, p5

    move-object/from16 v6, p6

    move-wide/from16 v7, p7

    move-wide/from16 v9, p9

    move/from16 v11, p11

    move-object/from16 v12, p12

    invoke-interface/range {v0 .. v12}, Lcom/android/internal/backup/IObbBackupService;->restoreObbFile(Ljava/lang/String;Landroid/os/ParcelFileDescriptor;JILjava/lang/String;JJILandroid/app/backup/IBackupManager;)V
    :try_end_19
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_19} :catch_1a

    .line 121
    goto :goto_32

    .line 119
    :catch_1a
    move-exception v0

    .line 120
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unable to restore OBBs for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object v2, p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "BackupManagerService"

    invoke-static {v2, v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 122
    :goto_32
    return-void
.end method

.method public tearDown()V
    .registers 2

    .line 72
    iget-object v0, p0, Lcom/android/server/backup/fullbackup/FullBackupObbConnection;->backupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    invoke-virtual {v0}, Lcom/android/server/backup/UserBackupManagerService;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 73
    return-void
.end method
