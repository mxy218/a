.class public Lcom/android/server/backup/utils/FullBackupRestoreObserverUtils;
.super Ljava/lang/Object;
.source "FullBackupRestoreObserverUtils.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static sendEndRestore(Landroid/app/backup/IFullBackupRestoreObserver;)Landroid/app/backup/IFullBackupRestoreObserver;
    .registers 2

    .line 78
    if-eqz p0, :cond_f

    .line 80
    :try_start_2
    invoke-interface {p0}, Landroid/app/backup/IFullBackupRestoreObserver;->onEndRestore()V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_5} :catch_6

    .line 84
    goto :goto_f

    .line 81
    :catch_6
    move-exception p0

    .line 82
    const-string p0, "BackupManagerService"

    const-string v0, "full restore observer went away: endRestore"

    invoke-static {p0, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 83
    const/4 p0, 0x0

    .line 86
    :cond_f
    :goto_f
    return-object p0
.end method

.method public static sendOnRestorePackage(Landroid/app/backup/IFullBackupRestoreObserver;Ljava/lang/String;)Landroid/app/backup/IFullBackupRestoreObserver;
    .registers 2

    .line 58
    if-eqz p0, :cond_f

    .line 61
    :try_start_2
    invoke-interface {p0, p1}, Landroid/app/backup/IFullBackupRestoreObserver;->onRestorePackage(Ljava/lang/String;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_5} :catch_6

    .line 65
    goto :goto_f

    .line 62
    :catch_6
    move-exception p0

    .line 63
    const-string p0, "BackupManagerService"

    const-string p1, "full restore observer went away: restorePackage"

    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 64
    const/4 p0, 0x0

    .line 67
    :cond_f
    :goto_f
    return-object p0
.end method

.method public static sendStartRestore(Landroid/app/backup/IFullBackupRestoreObserver;)Landroid/app/backup/IFullBackupRestoreObserver;
    .registers 2

    .line 37
    if-eqz p0, :cond_f

    .line 39
    :try_start_2
    invoke-interface {p0}, Landroid/app/backup/IFullBackupRestoreObserver;->onStartRestore()V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_5} :catch_6

    .line 43
    goto :goto_f

    .line 40
    :catch_6
    move-exception p0

    .line 41
    const-string p0, "BackupManagerService"

    const-string v0, "full restore observer went away: startRestore"

    invoke-static {p0, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 42
    const/4 p0, 0x0

    .line 45
    :cond_f
    :goto_f
    return-object p0
.end method
