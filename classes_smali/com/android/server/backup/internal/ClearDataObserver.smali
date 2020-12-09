.class public Lcom/android/server/backup/internal/ClearDataObserver;
.super Landroid/content/pm/IPackageDataObserver$Stub;
.source "ClearDataObserver.java"


# instance fields
.field private backupManagerService:Lcom/android/server/backup/UserBackupManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/backup/UserBackupManagerService;)V
    .registers 2

    .line 27
    invoke-direct {p0}, Landroid/content/pm/IPackageDataObserver$Stub;-><init>()V

    .line 28
    iput-object p1, p0, Lcom/android/server/backup/internal/ClearDataObserver;->backupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    .line 29
    return-void
.end method


# virtual methods
.method public onRemoveCompleted(Ljava/lang/String;Z)V
    .registers 4

    .line 32
    iget-object p1, p0, Lcom/android/server/backup/internal/ClearDataObserver;->backupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    invoke-virtual {p1}, Lcom/android/server/backup/UserBackupManagerService;->getClearDataLock()Ljava/lang/Object;

    move-result-object p1

    monitor-enter p1

    .line 33
    :try_start_7
    iget-object p2, p0, Lcom/android/server/backup/internal/ClearDataObserver;->backupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Lcom/android/server/backup/UserBackupManagerService;->setClearingData(Z)V

    .line 34
    iget-object p2, p0, Lcom/android/server/backup/internal/ClearDataObserver;->backupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    invoke-virtual {p2}, Lcom/android/server/backup/UserBackupManagerService;->getClearDataLock()Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Object;->notifyAll()V

    .line 35
    monitor-exit p1

    .line 36
    return-void

    .line 35
    :catchall_18
    move-exception p2

    monitor-exit p1
    :try_end_1a
    .catchall {:try_start_7 .. :try_end_1a} :catchall_18

    throw p2
.end method
