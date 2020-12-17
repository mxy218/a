.class Lcom/android/server/backup/UserBackupManagerService$3;
.super Ljava/lang/Object;
.source "UserBackupManagerService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/backup/UserBackupManagerService;->endFullBackup()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/backup/UserBackupManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/backup/UserBackupManagerService;)V
    .registers 2
    .param p1, "this$0"  # Lcom/android/server/backup/UserBackupManagerService;

    .line 2224
    iput-object p1, p0, Lcom/android/server/backup/UserBackupManagerService$3;->this$0:Lcom/android/server/backup/UserBackupManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .line 2227
    const/4 v0, 0x0

    .line 2228
    .local v0, "pftbt":Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;
    iget-object v1, p0, Lcom/android/server/backup/UserBackupManagerService$3;->this$0:Lcom/android/server/backup/UserBackupManagerService;

    invoke-static {v1}, Lcom/android/server/backup/UserBackupManagerService;->access$000(Lcom/android/server/backup/UserBackupManagerService;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 2229
    :try_start_8
    iget-object v2, p0, Lcom/android/server/backup/UserBackupManagerService$3;->this$0:Lcom/android/server/backup/UserBackupManagerService;

    invoke-static {v2}, Lcom/android/server/backup/UserBackupManagerService;->access$1200(Lcom/android/server/backup/UserBackupManagerService;)Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;

    move-result-object v2

    if-eqz v2, :cond_17

    .line 2230
    iget-object v2, p0, Lcom/android/server/backup/UserBackupManagerService$3;->this$0:Lcom/android/server/backup/UserBackupManagerService;

    invoke-static {v2}, Lcom/android/server/backup/UserBackupManagerService;->access$1200(Lcom/android/server/backup/UserBackupManagerService;)Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;

    move-result-object v2

    move-object v0, v2

    .line 2232
    :cond_17
    monitor-exit v1
    :try_end_18
    .catchall {:try_start_8 .. :try_end_18} :catchall_26

    .line 2233
    if-eqz v0, :cond_25

    .line 2235
    const-string v1, "BackupManagerService"

    const-string v2, "Telling running backup to stop"

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2237
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->handleCancel(Z)V

    .line 2239
    :cond_25
    return-void

    .line 2232
    :catchall_26
    move-exception v2

    :try_start_27
    monitor-exit v1
    :try_end_28
    .catchall {:try_start_27 .. :try_end_28} :catchall_26

    throw v2
.end method
