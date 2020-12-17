.class Lcom/android/server/pm/PackageInstallerService$InternalCallback;
.super Ljava/lang/Object;
.source "PackageInstallerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pm/PackageInstallerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "InternalCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/pm/PackageInstallerService;


# direct methods
.method constructor <init>(Lcom/android/server/pm/PackageInstallerService;)V
    .registers 2
    .param p1, "this$0"  # Lcom/android/server/pm/PackageInstallerService;

    .line 1228
    iput-object p1, p0, Lcom/android/server/pm/PackageInstallerService$InternalCallback;->this$0:Lcom/android/server/pm/PackageInstallerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSessionActiveChanged(Lcom/android/server/pm/PackageInstallerSession;Z)V
    .registers 6
    .param p1, "session"  # Lcom/android/server/pm/PackageInstallerSession;
    .param p2, "active"  # Z

    .line 1238
    iget-object v0, p1, Lcom/android/server/pm/PackageInstallerSession;->params:Landroid/content/pm/PackageInstaller$SessionParams;

    iget v0, v0, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    const/high16 v1, 0x800000

    and-int/2addr v0, v1

    if-nez v0, :cond_16

    .line 1239
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerService$InternalCallback;->this$0:Lcom/android/server/pm/PackageInstallerService;

    invoke-static {v0}, Lcom/android/server/pm/PackageInstallerService;->access$400(Lcom/android/server/pm/PackageInstallerService;)Lcom/android/server/pm/PackageInstallerService$Callbacks;

    move-result-object v0

    iget v1, p1, Lcom/android/server/pm/PackageInstallerSession;->sessionId:I

    iget v2, p1, Lcom/android/server/pm/PackageInstallerSession;->userId:I

    invoke-static {v0, v1, v2, p2}, Lcom/android/server/pm/PackageInstallerService$Callbacks;->access$700(Lcom/android/server/pm/PackageInstallerService$Callbacks;IIZ)V

    .line 1242
    :cond_16
    return-void
.end method

.method public onSessionBadgingChanged(Lcom/android/server/pm/PackageInstallerSession;)V
    .registers 5
    .param p1, "session"  # Lcom/android/server/pm/PackageInstallerSession;

    .line 1230
    iget-object v0, p1, Lcom/android/server/pm/PackageInstallerSession;->params:Landroid/content/pm/PackageInstaller$SessionParams;

    iget v0, v0, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    const/high16 v1, 0x800000

    and-int/2addr v0, v1

    if-nez v0, :cond_16

    .line 1231
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerService$InternalCallback;->this$0:Lcom/android/server/pm/PackageInstallerService;

    invoke-static {v0}, Lcom/android/server/pm/PackageInstallerService;->access$400(Lcom/android/server/pm/PackageInstallerService;)Lcom/android/server/pm/PackageInstallerService$Callbacks;

    move-result-object v0

    iget v1, p1, Lcom/android/server/pm/PackageInstallerSession;->sessionId:I

    iget v2, p1, Lcom/android/server/pm/PackageInstallerSession;->userId:I

    invoke-static {v0, v1, v2}, Lcom/android/server/pm/PackageInstallerService$Callbacks;->access$500(Lcom/android/server/pm/PackageInstallerService$Callbacks;II)V

    .line 1234
    :cond_16
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerService$InternalCallback;->this$0:Lcom/android/server/pm/PackageInstallerService;

    invoke-static {v0}, Lcom/android/server/pm/PackageInstallerService;->access$600(Lcom/android/server/pm/PackageInstallerService;)V

    .line 1235
    return-void
.end method

.method public onSessionFinished(Lcom/android/server/pm/PackageInstallerSession;Z)V
    .registers 6
    .param p1, "session"  # Lcom/android/server/pm/PackageInstallerSession;
    .param p2, "success"  # Z

    .line 1264
    iget-object v0, p1, Lcom/android/server/pm/PackageInstallerSession;->params:Landroid/content/pm/PackageInstaller$SessionParams;

    iget v0, v0, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    const/high16 v1, 0x800000

    and-int/2addr v0, v1

    if-nez v0, :cond_16

    .line 1265
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerService$InternalCallback;->this$0:Lcom/android/server/pm/PackageInstallerService;

    invoke-static {v0}, Lcom/android/server/pm/PackageInstallerService;->access$400(Lcom/android/server/pm/PackageInstallerService;)Lcom/android/server/pm/PackageInstallerService$Callbacks;

    move-result-object v0

    iget v1, p1, Lcom/android/server/pm/PackageInstallerSession;->sessionId:I

    iget v2, p1, Lcom/android/server/pm/PackageInstallerSession;->userId:I

    invoke-virtual {v0, v1, v2, p2}, Lcom/android/server/pm/PackageInstallerService$Callbacks;->notifySessionFinished(IIZ)V

    .line 1268
    :cond_16
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerService$InternalCallback;->this$0:Lcom/android/server/pm/PackageInstallerService;

    invoke-static {v0}, Lcom/android/server/pm/PackageInstallerService;->access$1400(Lcom/android/server/pm/PackageInstallerService;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/server/pm/PackageInstallerService$InternalCallback$1;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/server/pm/PackageInstallerService$InternalCallback$1;-><init>(Lcom/android/server/pm/PackageInstallerService$InternalCallback;Lcom/android/server/pm/PackageInstallerSession;Z)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1291
    return-void
.end method

.method public onSessionPrepared(Lcom/android/server/pm/PackageInstallerSession;)V
    .registers 3
    .param p1, "session"  # Lcom/android/server/pm/PackageInstallerSession;

    .line 1296
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerService$InternalCallback;->this$0:Lcom/android/server/pm/PackageInstallerService;

    invoke-static {v0}, Lcom/android/server/pm/PackageInstallerService;->access$600(Lcom/android/server/pm/PackageInstallerService;)V

    .line 1297
    return-void
.end method

.method public onSessionProgressChanged(Lcom/android/server/pm/PackageInstallerSession;F)V
    .registers 6
    .param p1, "session"  # Lcom/android/server/pm/PackageInstallerSession;
    .param p2, "progress"  # F

    .line 1245
    iget-object v0, p1, Lcom/android/server/pm/PackageInstallerSession;->params:Landroid/content/pm/PackageInstaller$SessionParams;

    iget v0, v0, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    const/high16 v1, 0x800000

    and-int/2addr v0, v1

    if-nez v0, :cond_16

    .line 1246
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerService$InternalCallback;->this$0:Lcom/android/server/pm/PackageInstallerService;

    invoke-static {v0}, Lcom/android/server/pm/PackageInstallerService;->access$400(Lcom/android/server/pm/PackageInstallerService;)Lcom/android/server/pm/PackageInstallerService$Callbacks;

    move-result-object v0

    iget v1, p1, Lcom/android/server/pm/PackageInstallerSession;->sessionId:I

    iget v2, p1, Lcom/android/server/pm/PackageInstallerSession;->userId:I

    invoke-static {v0, v1, v2, p2}, Lcom/android/server/pm/PackageInstallerService$Callbacks;->access$800(Lcom/android/server/pm/PackageInstallerService$Callbacks;IIF)V

    .line 1249
    :cond_16
    return-void
.end method

.method public onSessionSealedBlocking(Lcom/android/server/pm/PackageInstallerSession;)V
    .registers 4
    .param p1, "session"  # Lcom/android/server/pm/PackageInstallerSession;

    .line 1303
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerService$InternalCallback;->this$0:Lcom/android/server/pm/PackageInstallerService;

    invoke-static {v0}, Lcom/android/server/pm/PackageInstallerService;->access$000(Lcom/android/server/pm/PackageInstallerService;)Landroid/util/SparseArray;

    move-result-object v0

    monitor-enter v0

    .line 1304
    :try_start_7
    iget-object v1, p0, Lcom/android/server/pm/PackageInstallerService$InternalCallback;->this$0:Lcom/android/server/pm/PackageInstallerService;

    invoke-static {v1}, Lcom/android/server/pm/PackageInstallerService;->access$100(Lcom/android/server/pm/PackageInstallerService;)V

    .line 1305
    monitor-exit v0

    .line 1306
    return-void

    .line 1305
    :catchall_e
    move-exception v1

    monitor-exit v0
    :try_end_10
    .catchall {:try_start_7 .. :try_end_10} :catchall_e

    throw v1
.end method

.method public onStagedSessionChanged(Lcom/android/server/pm/PackageInstallerSession;)V
    .registers 5
    .param p1, "session"  # Lcom/android/server/pm/PackageInstallerSession;

    .line 1252
    invoke-virtual {p1}, Lcom/android/server/pm/PackageInstallerSession;->markUpdated()V

    .line 1253
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerService$InternalCallback;->this$0:Lcom/android/server/pm/PackageInstallerService;

    invoke-static {v0}, Lcom/android/server/pm/PackageInstallerService;->access$600(Lcom/android/server/pm/PackageInstallerService;)V

    .line 1254
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerService$InternalCallback;->this$0:Lcom/android/server/pm/PackageInstallerService;

    invoke-static {v0}, Lcom/android/server/pm/PackageInstallerService;->access$900(Lcom/android/server/pm/PackageInstallerService;)Z

    move-result v0

    if-eqz v0, :cond_22

    .line 1257
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerService$InternalCallback;->this$0:Lcom/android/server/pm/PackageInstallerService;

    invoke-static {v0}, Lcom/android/server/pm/PackageInstallerService;->access$1000(Lcom/android/server/pm/PackageInstallerService;)Lcom/android/server/pm/PackageManagerService;

    move-result-object v0

    const/4 v1, 0x0

    const/16 v2, 0x3e8

    .line 1258
    invoke-virtual {p1, v1, v2}, Lcom/android/server/pm/PackageInstallerSession;->generateInfoForCaller(ZI)Landroid/content/pm/PackageInstaller$SessionInfo;

    move-result-object v1

    iget v2, p1, Lcom/android/server/pm/PackageInstallerSession;->userId:I

    .line 1257
    invoke-virtual {v0, v1, v2}, Lcom/android/server/pm/PackageManagerService;->sendSessionUpdatedBroadcast(Landroid/content/pm/PackageInstaller$SessionInfo;I)V

    .line 1261
    :cond_22
    return-void
.end method
