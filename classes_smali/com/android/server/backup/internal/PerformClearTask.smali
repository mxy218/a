.class public Lcom/android/server/backup/internal/PerformClearTask;
.super Ljava/lang/Object;
.source "PerformClearTask.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final mBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

.field private final mListener:Lcom/android/server/backup/internal/OnTaskFinishedListener;

.field private final mPackage:Landroid/content/pm/PackageInfo;

.field private final mTransportClient:Lcom/android/server/backup/transport/TransportClient;

.field private final mTransportManager:Lcom/android/server/backup/TransportManager;


# direct methods
.method constructor <init>(Lcom/android/server/backup/UserBackupManagerService;Lcom/android/server/backup/transport/TransportClient;Landroid/content/pm/PackageInfo;Lcom/android/server/backup/internal/OnTaskFinishedListener;)V
    .registers 5

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput-object p1, p0, Lcom/android/server/backup/internal/PerformClearTask;->mBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    .line 42
    invoke-virtual {p1}, Lcom/android/server/backup/UserBackupManagerService;->getTransportManager()Lcom/android/server/backup/TransportManager;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/backup/internal/PerformClearTask;->mTransportManager:Lcom/android/server/backup/TransportManager;

    .line 43
    iput-object p2, p0, Lcom/android/server/backup/internal/PerformClearTask;->mTransportClient:Lcom/android/server/backup/transport/TransportClient;

    .line 44
    iput-object p3, p0, Lcom/android/server/backup/internal/PerformClearTask;->mPackage:Landroid/content/pm/PackageInfo;

    .line 45
    iput-object p4, p0, Lcom/android/server/backup/internal/PerformClearTask;->mListener:Lcom/android/server/backup/internal/OnTaskFinishedListener;

    .line 46
    return-void
.end method


# virtual methods
.method public run()V
    .registers 8

    .line 49
    const-string v0, "Unable to mark clear operation finished: "

    const-string v1, "BackupManagerService"

    const-string v2, "PerformClearTask.run()"

    .line 50
    nop

    .line 53
    const/4 v3, 0x0

    :try_start_8
    iget-object v4, p0, Lcom/android/server/backup/internal/PerformClearTask;->mTransportManager:Lcom/android/server/backup/TransportManager;

    iget-object v5, p0, Lcom/android/server/backup/internal/PerformClearTask;->mTransportClient:Lcom/android/server/backup/transport/TransportClient;

    .line 54
    invoke-virtual {v5}, Lcom/android/server/backup/transport/TransportClient;->getTransportComponent()Landroid/content/ComponentName;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/server/backup/TransportManager;->getTransportDirName(Landroid/content/ComponentName;)Ljava/lang/String;

    move-result-object v4

    .line 55
    new-instance v5, Ljava/io/File;

    iget-object v6, p0, Lcom/android/server/backup/internal/PerformClearTask;->mBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    invoke-virtual {v6}, Lcom/android/server/backup/UserBackupManagerService;->getBaseStateDir()Ljava/io/File;

    move-result-object v6

    invoke-direct {v5, v6, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 56
    new-instance v4, Ljava/io/File;

    iget-object v6, p0, Lcom/android/server/backup/internal/PerformClearTask;->mPackage:Landroid/content/pm/PackageInfo;

    iget-object v6, v6, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-direct {v4, v5, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 57
    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    .line 59
    iget-object v4, p0, Lcom/android/server/backup/internal/PerformClearTask;->mTransportClient:Lcom/android/server/backup/transport/TransportClient;

    invoke-virtual {v4, v2}, Lcom/android/server/backup/transport/TransportClient;->connectOrThrow(Ljava/lang/String;)Lcom/android/internal/backup/IBackupTransport;

    move-result-object v3

    .line 62
    iget-object v4, p0, Lcom/android/server/backup/internal/PerformClearTask;->mPackage:Landroid/content/pm/PackageInfo;

    invoke-interface {v3, v4}, Lcom/android/internal/backup/IBackupTransport;->clearBackupData(Landroid/content/pm/PackageInfo;)I
    :try_end_36
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_36} :catch_44
    .catchall {:try_start_8 .. :try_end_36} :catchall_42

    .line 66
    nop

    .line 69
    :try_start_37
    invoke-interface {v3}, Lcom/android/internal/backup/IBackupTransport;->finishBackup()I
    :try_end_3a
    .catch Ljava/lang/Exception; {:try_start_37 .. :try_end_3a} :catch_3b

    goto :goto_6c

    .line 70
    :catch_3b
    move-exception v3

    .line 72
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    goto :goto_73

    .line 66
    :catchall_42
    move-exception v4

    goto :goto_94

    .line 63
    :catch_44
    move-exception v4

    .line 64
    :try_start_45
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Transport threw clearing data for "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/android/server/backup/internal/PerformClearTask;->mPackage:Landroid/content/pm/PackageInfo;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, ": "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_67
    .catchall {:try_start_45 .. :try_end_67} :catchall_42

    .line 66
    if-eqz v3, :cond_84

    .line 69
    :try_start_69
    invoke-interface {v3}, Lcom/android/internal/backup/IBackupTransport;->finishBackup()I
    :try_end_6c
    .catch Ljava/lang/Exception; {:try_start_69 .. :try_end_6c} :catch_6d

    .line 73
    :goto_6c
    goto :goto_84

    .line 70
    :catch_6d
    move-exception v3

    .line 72
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    :goto_73
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 75
    :cond_84
    :goto_84
    iget-object v0, p0, Lcom/android/server/backup/internal/PerformClearTask;->mListener:Lcom/android/server/backup/internal/OnTaskFinishedListener;

    invoke-interface {v0, v2}, Lcom/android/server/backup/internal/OnTaskFinishedListener;->onFinished(Ljava/lang/String;)V

    .line 77
    iget-object v0, p0, Lcom/android/server/backup/internal/PerformClearTask;->mBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    invoke-virtual {v0}, Lcom/android/server/backup/UserBackupManagerService;->getWakelock()Lcom/android/server/backup/UserBackupManagerService$BackupWakeLock;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/backup/UserBackupManagerService$BackupWakeLock;->release()V

    .line 78
    nop

    .line 79
    return-void

    .line 66
    :goto_94
    if-eqz v3, :cond_b1

    .line 69
    :try_start_96
    invoke-interface {v3}, Lcom/android/internal/backup/IBackupTransport;->finishBackup()I
    :try_end_99
    .catch Ljava/lang/Exception; {:try_start_96 .. :try_end_99} :catch_9a

    .line 73
    goto :goto_b1

    .line 70
    :catch_9a
    move-exception v3

    .line 72
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 75
    :cond_b1
    :goto_b1
    iget-object v0, p0, Lcom/android/server/backup/internal/PerformClearTask;->mListener:Lcom/android/server/backup/internal/OnTaskFinishedListener;

    invoke-interface {v0, v2}, Lcom/android/server/backup/internal/OnTaskFinishedListener;->onFinished(Ljava/lang/String;)V

    .line 77
    iget-object v0, p0, Lcom/android/server/backup/internal/PerformClearTask;->mBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    invoke-virtual {v0}, Lcom/android/server/backup/UserBackupManagerService;->getWakelock()Lcom/android/server/backup/UserBackupManagerService$BackupWakeLock;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/backup/UserBackupManagerService$BackupWakeLock;->release()V

    throw v4
.end method
