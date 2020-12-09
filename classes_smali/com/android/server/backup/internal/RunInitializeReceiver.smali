.class public Lcom/android/server/backup/internal/RunInitializeReceiver;
.super Landroid/content/BroadcastReceiver;
.source "RunInitializeReceiver.java"


# instance fields
.field private final mUserBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/backup/UserBackupManagerService;)V
    .registers 2

    .line 39
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 40
    iput-object p1, p0, Lcom/android/server/backup/internal/RunInitializeReceiver;->mUserBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    .line 41
    return-void
.end method

.method static synthetic lambda$onReceive$0(Lcom/android/server/backup/UserBackupManagerService$BackupWakeLock;Ljava/lang/String;)V
    .registers 2

    .line 62
    invoke-virtual {p0}, Lcom/android/server/backup/UserBackupManagerService$BackupWakeLock;->release()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 7

    .line 44
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string p2, "android.app.backup.intent.INIT"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_d

    .line 45
    return-void

    .line 48
    :cond_d
    iget-object p1, p0, Lcom/android/server/backup/internal/RunInitializeReceiver;->mUserBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    invoke-virtual {p1}, Lcom/android/server/backup/UserBackupManagerService;->getQueueLock()Ljava/lang/Object;

    move-result-object p1

    monitor-enter p1

    .line 49
    :try_start_14
    iget-object p2, p0, Lcom/android/server/backup/internal/RunInitializeReceiver;->mUserBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    invoke-virtual {p2}, Lcom/android/server/backup/UserBackupManagerService;->getPendingInits()Landroid/util/ArraySet;

    move-result-object p2

    .line 51
    const-string v0, "BackupManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Running a device init; "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p2}, Ljava/util/Set;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " pending"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 54
    invoke-interface {p2}, Ljava/util/Set;->size()I

    move-result v0

    if-lez v0, :cond_6f

    .line 55
    invoke-interface {p2}, Ljava/util/Set;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    invoke-interface {p2, v0}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [Ljava/lang/String;

    .line 57
    iget-object v0, p0, Lcom/android/server/backup/internal/RunInitializeReceiver;->mUserBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    invoke-virtual {v0}, Lcom/android/server/backup/UserBackupManagerService;->clearPendingInits()V

    .line 59
    iget-object v0, p0, Lcom/android/server/backup/internal/RunInitializeReceiver;->mUserBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    .line 60
    invoke-virtual {v0}, Lcom/android/server/backup/UserBackupManagerService;->getWakelock()Lcom/android/server/backup/UserBackupManagerService$BackupWakeLock;

    move-result-object v0

    .line 61
    invoke-virtual {v0}, Lcom/android/server/backup/UserBackupManagerService$BackupWakeLock;->acquire()V

    .line 62
    new-instance v1, Lcom/android/server/backup/internal/-$$Lambda$RunInitializeReceiver$P5klzxUXc7WxTPKz3eSndgIx-xA;

    invoke-direct {v1, v0}, Lcom/android/server/backup/internal/-$$Lambda$RunInitializeReceiver$P5klzxUXc7WxTPKz3eSndgIx-xA;-><init>(Lcom/android/server/backup/UserBackupManagerService$BackupWakeLock;)V

    .line 64
    new-instance v0, Lcom/android/server/backup/internal/PerformInitializeTask;

    iget-object v2, p0, Lcom/android/server/backup/internal/RunInitializeReceiver;->mUserBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    const/4 v3, 0x0

    invoke-direct {v0, v2, p2, v3, v1}, Lcom/android/server/backup/internal/PerformInitializeTask;-><init>(Lcom/android/server/backup/UserBackupManagerService;[Ljava/lang/String;Landroid/app/backup/IBackupObserver;Lcom/android/server/backup/internal/OnTaskFinishedListener;)V

    .line 70
    iget-object p2, p0, Lcom/android/server/backup/internal/RunInitializeReceiver;->mUserBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    invoke-virtual {p2}, Lcom/android/server/backup/UserBackupManagerService;->getBackupHandler()Landroid/os/Handler;

    move-result-object p2

    invoke-virtual {p2, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 72
    :cond_6f
    monitor-exit p1

    .line 73
    return-void

    .line 72
    :catchall_71
    move-exception p2

    monitor-exit p1
    :try_end_73
    .catchall {:try_start_14 .. :try_end_73} :catchall_71

    throw p2
.end method
