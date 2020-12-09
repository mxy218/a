.class public abstract Lcom/android/server/backup/fullbackup/FullBackupTask;
.super Ljava/lang/Object;
.source "FullBackupTask.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field mObserver:Landroid/app/backup/IFullBackupRestoreObserver;


# direct methods
.method constructor <init>(Landroid/app/backup/IFullBackupRestoreObserver;)V
    .registers 2

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-object p1, p0, Lcom/android/server/backup/fullbackup/FullBackupTask;->mObserver:Landroid/app/backup/IFullBackupRestoreObserver;

    .line 34
    return-void
.end method


# virtual methods
.method final sendEndBackup()V
    .registers 3

    .line 61
    iget-object v0, p0, Lcom/android/server/backup/fullbackup/FullBackupTask;->mObserver:Landroid/app/backup/IFullBackupRestoreObserver;

    if-eqz v0, :cond_13

    .line 63
    :try_start_4
    invoke-interface {v0}, Landroid/app/backup/IFullBackupRestoreObserver;->onEndBackup()V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_7} :catch_8

    .line 67
    goto :goto_13

    .line 64
    :catch_8
    move-exception v0

    .line 65
    const-string v0, "BackupManagerService"

    const-string v1, "full backup observer went away: endBackup"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 66
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/backup/fullbackup/FullBackupTask;->mObserver:Landroid/app/backup/IFullBackupRestoreObserver;

    .line 69
    :cond_13
    :goto_13
    return-void
.end method

.method final sendOnBackupPackage(Ljava/lang/String;)V
    .registers 3

    .line 49
    iget-object v0, p0, Lcom/android/server/backup/fullbackup/FullBackupTask;->mObserver:Landroid/app/backup/IFullBackupRestoreObserver;

    if-eqz v0, :cond_13

    .line 52
    :try_start_4
    invoke-interface {v0, p1}, Landroid/app/backup/IFullBackupRestoreObserver;->onBackupPackage(Ljava/lang/String;)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_7} :catch_8

    .line 56
    goto :goto_13

    .line 53
    :catch_8
    move-exception p1

    .line 54
    const-string p1, "BackupManagerService"

    const-string v0, "full backup observer went away: backupPackage"

    invoke-static {p1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 55
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/server/backup/fullbackup/FullBackupTask;->mObserver:Landroid/app/backup/IFullBackupRestoreObserver;

    .line 58
    :cond_13
    :goto_13
    return-void
.end method

.method final sendStartBackup()V
    .registers 3

    .line 38
    iget-object v0, p0, Lcom/android/server/backup/fullbackup/FullBackupTask;->mObserver:Landroid/app/backup/IFullBackupRestoreObserver;

    if-eqz v0, :cond_13

    .line 40
    :try_start_4
    invoke-interface {v0}, Landroid/app/backup/IFullBackupRestoreObserver;->onStartBackup()V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_7} :catch_8

    .line 44
    goto :goto_13

    .line 41
    :catch_8
    move-exception v0

    .line 42
    const-string v0, "BackupManagerService"

    const-string v1, "full backup observer went away: startBackup"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 43
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/backup/fullbackup/FullBackupTask;->mObserver:Landroid/app/backup/IFullBackupRestoreObserver;

    .line 46
    :cond_13
    :goto_13
    return-void
.end method
