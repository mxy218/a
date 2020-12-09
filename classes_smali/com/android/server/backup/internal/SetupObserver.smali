.class public Lcom/android/server/backup/internal/SetupObserver;
.super Landroid/database/ContentObserver;
.source "SetupObserver.java"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mUserBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

.field private final mUserId:I


# direct methods
.method public constructor <init>(Lcom/android/server/backup/UserBackupManagerService;Landroid/os/Handler;)V
    .registers 3

    .line 42
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 43
    iput-object p1, p0, Lcom/android/server/backup/internal/SetupObserver;->mUserBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    .line 44
    invoke-virtual {p1}, Lcom/android/server/backup/UserBackupManagerService;->getContext()Landroid/content/Context;

    move-result-object p2

    iput-object p2, p0, Lcom/android/server/backup/internal/SetupObserver;->mContext:Landroid/content/Context;

    .line 45
    invoke-virtual {p1}, Lcom/android/server/backup/UserBackupManagerService;->getUserId()I

    move-result p1

    iput p1, p0, Lcom/android/server/backup/internal/SetupObserver;->mUserId:I

    .line 46
    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .registers 6

    .line 56
    iget-object p1, p0, Lcom/android/server/backup/internal/SetupObserver;->mUserBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    invoke-virtual {p1}, Lcom/android/server/backup/UserBackupManagerService;->isSetupComplete()Z

    move-result p1

    .line 57
    iget-object v0, p0, Lcom/android/server/backup/internal/SetupObserver;->mContext:Landroid/content/Context;

    iget v1, p0, Lcom/android/server/backup/internal/SetupObserver;->mUserId:I

    invoke-static {v0, v1}, Lcom/android/server/backup/UserBackupManagerService;->getSetupCompleteSettingForUser(Landroid/content/Context;I)Z

    move-result v0

    .line 59
    if-nez p1, :cond_15

    if-eqz v0, :cond_13

    goto :goto_15

    :cond_13
    const/4 v0, 0x0

    goto :goto_16

    :cond_15
    :goto_15
    const/4 v0, 0x1

    .line 60
    :goto_16
    iget-object v1, p0, Lcom/android/server/backup/internal/SetupObserver;->mUserBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    invoke-virtual {v1, v0}, Lcom/android/server/backup/UserBackupManagerService;->setSetupComplete(Z)V

    .line 72
    iget-object v1, p0, Lcom/android/server/backup/internal/SetupObserver;->mUserBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    invoke-virtual {v1}, Lcom/android/server/backup/UserBackupManagerService;->getQueueLock()Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 74
    if-eqz v0, :cond_46

    if-nez p1, :cond_46

    :try_start_26
    iget-object p1, p0, Lcom/android/server/backup/internal/SetupObserver;->mUserBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    .line 76
    invoke-virtual {p1}, Lcom/android/server/backup/UserBackupManagerService;->isEnabled()Z

    move-result p1

    if-eqz p1, :cond_46

    .line 80
    iget-object p1, p0, Lcom/android/server/backup/internal/SetupObserver;->mUserBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    invoke-virtual {p1}, Lcom/android/server/backup/UserBackupManagerService;->getUserId()I

    move-result p1

    iget-object v0, p0, Lcom/android/server/backup/internal/SetupObserver;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/backup/internal/SetupObserver;->mUserBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    .line 81
    invoke-virtual {v2}, Lcom/android/server/backup/UserBackupManagerService;->getConstants()Lcom/android/server/backup/BackupManagerConstants;

    move-result-object v2

    .line 80
    invoke-static {p1, v0, v2}, Lcom/android/server/backup/KeyValueBackupJob;->schedule(ILandroid/content/Context;Lcom/android/server/backup/BackupManagerConstants;)V

    .line 82
    iget-object p1, p0, Lcom/android/server/backup/internal/SetupObserver;->mUserBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    const-wide/16 v2, 0x0

    invoke-virtual {p1, v2, v3}, Lcom/android/server/backup/UserBackupManagerService;->scheduleNextFullBackupJob(J)V

    .line 84
    :cond_46
    monitor-exit v1

    .line 85
    return-void

    .line 84
    :catchall_48
    move-exception p1

    monitor-exit v1
    :try_end_4a
    .catchall {:try_start_26 .. :try_end_4a} :catchall_48

    throw p1
.end method
