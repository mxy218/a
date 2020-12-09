.class public Lcom/android/server/backup/restore/AdbRestoreFinishedRunnable;
.super Ljava/lang/Object;
.source "AdbRestoreFinishedRunnable.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final mAgent:Landroid/app/IBackupAgent;

.field private final mBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

.field private final mToken:I


# direct methods
.method constructor <init>(Landroid/app/IBackupAgent;ILcom/android/server/backup/UserBackupManagerService;)V
    .registers 4

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-object p1, p0, Lcom/android/server/backup/restore/AdbRestoreFinishedRunnable;->mAgent:Landroid/app/IBackupAgent;

    .line 21
    iput p2, p0, Lcom/android/server/backup/restore/AdbRestoreFinishedRunnable;->mToken:I

    .line 22
    iput-object p3, p0, Lcom/android/server/backup/restore/AdbRestoreFinishedRunnable;->mBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    .line 23
    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .line 28
    :try_start_0
    iget-object v0, p0, Lcom/android/server/backup/restore/AdbRestoreFinishedRunnable;->mAgent:Landroid/app/IBackupAgent;

    iget v1, p0, Lcom/android/server/backup/restore/AdbRestoreFinishedRunnable;->mToken:I

    iget-object v2, p0, Lcom/android/server/backup/restore/AdbRestoreFinishedRunnable;->mBackupManagerService:Lcom/android/server/backup/UserBackupManagerService;

    invoke-virtual {v2}, Lcom/android/server/backup/UserBackupManagerService;->getBackupManagerBinder()Landroid/app/backup/IBackupManager;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/app/IBackupAgent;->doRestoreFinished(ILandroid/app/backup/IBackupManager;)V
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_d} :catch_e

    .line 31
    goto :goto_f

    .line 29
    :catch_e
    move-exception v0

    .line 32
    :goto_f
    return-void
.end method
