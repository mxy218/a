.class public Lcom/android/server/backup/restore/ActiveRestoreSession$EndRestoreRunnable;
.super Ljava/lang/Object;
.source "ActiveRestoreSession.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/backup/restore/ActiveRestoreSession;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "EndRestoreRunnable"
.end annotation


# instance fields
.field mBackupManager:Lcom/android/server/backup/UserBackupManagerService;

.field mSession:Lcom/android/server/backup/restore/ActiveRestoreSession;

.field final synthetic this$0:Lcom/android/server/backup/restore/ActiveRestoreSession;


# direct methods
.method public constructor <init>(Lcom/android/server/backup/restore/ActiveRestoreSession;Lcom/android/server/backup/UserBackupManagerService;Lcom/android/server/backup/restore/ActiveRestoreSession;)V
    .registers 4
    .param p1, "this$0"  # Lcom/android/server/backup/restore/ActiveRestoreSession;
    .param p2, "manager"  # Lcom/android/server/backup/UserBackupManagerService;
    .param p3, "session"  # Lcom/android/server/backup/restore/ActiveRestoreSession;

    .line 419
    iput-object p1, p0, Lcom/android/server/backup/restore/ActiveRestoreSession$EndRestoreRunnable;->this$0:Lcom/android/server/backup/restore/ActiveRestoreSession;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 420
    iput-object p2, p0, Lcom/android/server/backup/restore/ActiveRestoreSession$EndRestoreRunnable;->mBackupManager:Lcom/android/server/backup/UserBackupManagerService;

    .line 421
    iput-object p3, p0, Lcom/android/server/backup/restore/ActiveRestoreSession$EndRestoreRunnable;->mSession:Lcom/android/server/backup/restore/ActiveRestoreSession;

    .line 422
    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .line 426
    iget-object v0, p0, Lcom/android/server/backup/restore/ActiveRestoreSession$EndRestoreRunnable;->mSession:Lcom/android/server/backup/restore/ActiveRestoreSession;

    monitor-enter v0

    .line 427
    :try_start_3
    iget-object v1, p0, Lcom/android/server/backup/restore/ActiveRestoreSession$EndRestoreRunnable;->mSession:Lcom/android/server/backup/restore/ActiveRestoreSession;

    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/android/server/backup/restore/ActiveRestoreSession;->mEnded:Z

    .line 428
    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_11

    .line 432
    iget-object v0, p0, Lcom/android/server/backup/restore/ActiveRestoreSession$EndRestoreRunnable;->mBackupManager:Lcom/android/server/backup/UserBackupManagerService;

    iget-object v1, p0, Lcom/android/server/backup/restore/ActiveRestoreSession$EndRestoreRunnable;->mSession:Lcom/android/server/backup/restore/ActiveRestoreSession;

    invoke-virtual {v0, v1}, Lcom/android/server/backup/UserBackupManagerService;->clearRestoreSession(Lcom/android/server/backup/restore/ActiveRestoreSession;)V

    .line 433
    return-void

    .line 428
    :catchall_11
    move-exception v1

    :try_start_12
    monitor-exit v0
    :try_end_13
    .catchall {:try_start_12 .. :try_end_13} :catchall_11

    throw v1
.end method
