.class public final synthetic Lcom/android/server/backup/internal/-$$Lambda$RunInitializeReceiver$P5klzxUXc7WxTPKz3eSndgIx-xA;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/android/server/backup/internal/OnTaskFinishedListener;


# instance fields
.field private final synthetic f$0:Lcom/android/server/backup/UserBackupManagerService$BackupWakeLock;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/backup/UserBackupManagerService$BackupWakeLock;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/backup/internal/-$$Lambda$RunInitializeReceiver$P5klzxUXc7WxTPKz3eSndgIx-xA;->f$0:Lcom/android/server/backup/UserBackupManagerService$BackupWakeLock;

    return-void
.end method


# virtual methods
.method public final onFinished(Ljava/lang/String;)V
    .registers 3

    iget-object v0, p0, Lcom/android/server/backup/internal/-$$Lambda$RunInitializeReceiver$P5klzxUXc7WxTPKz3eSndgIx-xA;->f$0:Lcom/android/server/backup/UserBackupManagerService$BackupWakeLock;

    invoke-static {v0, p1}, Lcom/android/server/backup/internal/RunInitializeReceiver;->lambda$onReceive$0(Lcom/android/server/backup/UserBackupManagerService$BackupWakeLock;Ljava/lang/String;)V

    return-void
.end method
