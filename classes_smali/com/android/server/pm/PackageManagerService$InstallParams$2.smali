.class Lcom/android/server/pm/PackageManagerService$InstallParams$2;
.super Landroid/content/BroadcastReceiver;
.source "PackageManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/pm/PackageManagerService$InstallParams;->handleStartCopy()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/pm/PackageManagerService$InstallParams;

.field final synthetic val$enableRollbackToken:I


# direct methods
.method constructor <init>(Lcom/android/server/pm/PackageManagerService$InstallParams;I)V
    .registers 3

    .line 15612
    iput-object p1, p0, Lcom/android/server/pm/PackageManagerService$InstallParams$2;->this$1:Lcom/android/server/pm/PackageManagerService$InstallParams;

    iput p2, p0, Lcom/android/server/pm/PackageManagerService$InstallParams$2;->val$enableRollbackToken:I

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 7

    .line 15616
    const-wide/16 p1, 0x2710

    const-string/jumbo v0, "rollback"

    const-string v1, "enable_rollback_timeout"

    invoke-static {v0, v1, p1, p2}, Landroid/provider/DeviceConfig;->getLong(Ljava/lang/String;Ljava/lang/String;J)J

    move-result-wide v0

    .line 15620
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-gez v2, :cond_12

    .line 15621
    goto :goto_13

    .line 15620
    :cond_12
    move-wide p1, v0

    .line 15623
    :goto_13
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$InstallParams$2;->this$1:Lcom/android/server/pm/PackageManagerService$InstallParams;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mHandler:Lcom/android/server/pm/PackageManagerService$PackageHandler;

    const/16 v1, 0x16

    invoke-virtual {v0, v1}, Lcom/android/server/pm/PackageManagerService$PackageHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 15625
    iget v1, p0, Lcom/android/server/pm/PackageManagerService$InstallParams$2;->val$enableRollbackToken:I

    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 15626
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService$InstallParams$2;->this$1:Lcom/android/server/pm/PackageManagerService$InstallParams;

    iget-object v1, v1, Lcom/android/server/pm/PackageManagerService$InstallParams;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v1, v1, Lcom/android/server/pm/PackageManagerService;->mHandler:Lcom/android/server/pm/PackageManagerService$PackageHandler;

    invoke-virtual {v1, v0, p1, p2}, Lcom/android/server/pm/PackageManagerService$PackageHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 15627
    return-void
.end method
