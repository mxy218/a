.class public Lcom/android/server/backup/internal/RunBackupReceiver;
.super Landroid/content/BroadcastReceiver;
.source "RunBackupReceiver.java"


# instance fields
.field private final mUserBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/backup/UserBackupManagerService;)V
    .registers 2

    .line 42
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 43
    iput-object p1, p0, Lcom/android/server/backup/internal/RunBackupReceiver;->mUserBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    .line 44
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 5

    .line 58
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string p2, "android.app.backup.intent.RUN"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_d

    .line 59
    return-void

    .line 62
    :cond_d
    iget-object p1, p0, Lcom/android/server/backup/internal/RunBackupReceiver;->mUserBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    invoke-virtual {p1}, Lcom/android/server/backup/UserBackupManagerService;->getQueueLock()Ljava/lang/Object;

    move-result-object p1

    monitor-enter p1

    .line 63
    :try_start_14
    iget-object p2, p0, Lcom/android/server/backup/internal/RunBackupReceiver;->mUserBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    invoke-virtual {p2}, Lcom/android/server/backup/UserBackupManagerService;->getPendingInits()Landroid/util/ArraySet;

    move-result-object p2

    invoke-virtual {p2}, Landroid/util/ArraySet;->size()I

    move-result p2
    :try_end_1e
    .catchall {:try_start_14 .. :try_end_1e} :catchall_af

    if-lez p2, :cond_3c

    .line 70
    :try_start_20
    iget-object p2, p0, Lcom/android/server/backup/internal/RunBackupReceiver;->mUserBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    invoke-virtual {p2}, Lcom/android/server/backup/UserBackupManagerService;->getRunInitIntent()Landroid/app/PendingIntent;

    move-result-object p2

    .line 71
    iget-object v0, p0, Lcom/android/server/backup/internal/RunBackupReceiver;->mUserBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    invoke-virtual {v0}, Lcom/android/server/backup/UserBackupManagerService;->getAlarmManager()Landroid/app/AlarmManager;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 72
    invoke-virtual {p2}, Landroid/app/PendingIntent;->send()V
    :try_end_32
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_20 .. :try_end_32} :catch_33
    .catchall {:try_start_20 .. :try_end_32} :catchall_af

    goto :goto_3b

    .line 73
    :catch_33
    move-exception p2

    .line 74
    :try_start_34
    const-string p2, "BackupManagerService"

    const-string v0, "Run init intent cancelled"

    invoke-static {p2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 75
    :goto_3b
    goto :goto_81

    .line 78
    :cond_3c
    iget-object p2, p0, Lcom/android/server/backup/internal/RunBackupReceiver;->mUserBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    invoke-virtual {p2}, Lcom/android/server/backup/UserBackupManagerService;->isEnabled()Z

    move-result p2

    if-eqz p2, :cond_83

    iget-object p2, p0, Lcom/android/server/backup/internal/RunBackupReceiver;->mUserBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    .line 79
    invoke-virtual {p2}, Lcom/android/server/backup/UserBackupManagerService;->isSetupComplete()Z

    move-result p2

    if-nez p2, :cond_4d

    goto :goto_83

    .line 90
    :cond_4d
    iget-object p2, p0, Lcom/android/server/backup/internal/RunBackupReceiver;->mUserBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    invoke-virtual {p2}, Lcom/android/server/backup/UserBackupManagerService;->isBackupRunning()Z

    move-result p2

    if-eqz p2, :cond_5e

    .line 91
    const-string p2, "BackupManagerService"

    const-string v0, "Backup time but one already running"

    invoke-static {p2, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 92
    monitor-exit p1

    return-void

    .line 96
    :cond_5e
    const-string p2, "BackupManagerService"

    const-string v0, "Running a backup pass"

    invoke-static {p2, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    iget-object p2, p0, Lcom/android/server/backup/internal/RunBackupReceiver;->mUserBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Lcom/android/server/backup/UserBackupManagerService;->setBackupRunning(Z)V

    .line 102
    iget-object p2, p0, Lcom/android/server/backup/internal/RunBackupReceiver;->mUserBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    invoke-virtual {p2}, Lcom/android/server/backup/UserBackupManagerService;->getWakelock()Lcom/android/server/backup/UserBackupManagerService$BackupWakeLock;

    move-result-object p2

    invoke-virtual {p2}, Lcom/android/server/backup/UserBackupManagerService$BackupWakeLock;->acquire()V

    .line 104
    iget-object p2, p0, Lcom/android/server/backup/internal/RunBackupReceiver;->mUserBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    invoke-virtual {p2}, Lcom/android/server/backup/UserBackupManagerService;->getBackupHandler()Landroid/os/Handler;

    move-result-object p2

    .line 105
    invoke-virtual {p2, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 106
    invoke-virtual {p2, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 108
    :goto_81
    monitor-exit p1

    .line 109
    return-void

    .line 80
    :cond_83
    :goto_83
    const-string p2, "BackupManagerService"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Backup pass but enabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/backup/internal/RunBackupReceiver;->mUserBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    .line 83
    invoke-virtual {v1}, Lcom/android/server/backup/UserBackupManagerService;->isEnabled()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " setupComplete="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/backup/internal/RunBackupReceiver;->mUserBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    .line 85
    invoke-virtual {v1}, Lcom/android/server/backup/UserBackupManagerService;->isSetupComplete()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 80
    invoke-static {p2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    monitor-exit p1

    return-void

    .line 108
    :catchall_af
    move-exception p2

    monitor-exit p1
    :try_end_b1
    .catchall {:try_start_34 .. :try_end_b1} :catchall_af

    throw p2
.end method
