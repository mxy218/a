.class Lcom/android/server/am/ActivityManagerService$9;
.super Ljava/lang/Object;
.source "ActivityManagerService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/am/ActivityManagerService;->processStartTimedOutLocked(Lcom/android/server/am/ProcessRecord;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/am/ActivityManagerService;

.field final synthetic val$app:Lcom/android/server/am/ProcessRecord;


# direct methods
.method constructor <init>(Lcom/android/server/am/ActivityManagerService;Lcom/android/server/am/ProcessRecord;)V
    .registers 3
    .param p1, "this$0"  # Lcom/android/server/am/ActivityManagerService;

    .line 5052
    iput-object p1, p0, Lcom/android/server/am/ActivityManagerService$9;->this$0:Lcom/android/server/am/ActivityManagerService;

    iput-object p2, p0, Lcom/android/server/am/ActivityManagerService$9;->val$app:Lcom/android/server/am/ProcessRecord;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .line 5056
    :try_start_0
    const-string v0, "backup"

    .line 5057
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 5056
    invoke-static {v0}, Landroid/app/backup/IBackupManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/backup/IBackupManager;

    move-result-object v0

    .line 5058
    .local v0, "bm":Landroid/app/backup/IBackupManager;
    iget-object v1, p0, Lcom/android/server/am/ActivityManagerService$9;->val$app:Lcom/android/server/am/ProcessRecord;

    iget v1, v1, Lcom/android/server/am/ProcessRecord;->userId:I

    iget-object v2, p0, Lcom/android/server/am/ActivityManagerService$9;->val$app:Lcom/android/server/am/ProcessRecord;

    iget-object v2, v2, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Landroid/app/backup/IBackupManager;->agentDisconnectedForUser(ILjava/lang/String;)V
    :try_end_17
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_17} :catch_18

    .line 5061
    .end local v0  # "bm":Landroid/app/backup/IBackupManager;
    goto :goto_19

    .line 5059
    :catch_18
    move-exception v0

    .line 5062
    :goto_19
    return-void
.end method
