.class Lcom/android/server/rollback/RollbackManagerServiceImpl$SessionCallback;
.super Landroid/content/pm/PackageInstaller$SessionCallback;
.source "RollbackManagerServiceImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/rollback/RollbackManagerServiceImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SessionCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/rollback/RollbackManagerServiceImpl;


# direct methods
.method private constructor <init>(Lcom/android/server/rollback/RollbackManagerServiceImpl;)V
    .registers 2

    .line 1298
    iput-object p1, p0, Lcom/android/server/rollback/RollbackManagerServiceImpl$SessionCallback;->this$0:Lcom/android/server/rollback/RollbackManagerServiceImpl;

    invoke-direct {p0}, Landroid/content/pm/PackageInstaller$SessionCallback;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/rollback/RollbackManagerServiceImpl;Lcom/android/server/rollback/RollbackManagerServiceImpl$1;)V
    .registers 3

    .line 1298
    invoke-direct {p0, p1}, Lcom/android/server/rollback/RollbackManagerServiceImpl$SessionCallback;-><init>(Lcom/android/server/rollback/RollbackManagerServiceImpl;)V

    return-void
.end method


# virtual methods
.method public onActiveChanged(IZ)V
    .registers 3

    .line 1307
    return-void
.end method

.method public onBadgingChanged(I)V
    .registers 2

    .line 1304
    return-void
.end method

.method public onCreated(I)V
    .registers 2

    .line 1301
    return-void
.end method

.method public onFinished(IZ)V
    .registers 5

    .line 1315
    iget-object v0, p0, Lcom/android/server/rollback/RollbackManagerServiceImpl$SessionCallback;->this$0:Lcom/android/server/rollback/RollbackManagerServiceImpl;

    invoke-static {v0}, Lcom/android/server/rollback/RollbackManagerServiceImpl;->access$300(Lcom/android/server/rollback/RollbackManagerServiceImpl;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 1316
    :try_start_7
    iget-object v1, p0, Lcom/android/server/rollback/RollbackManagerServiceImpl$SessionCallback;->this$0:Lcom/android/server/rollback/RollbackManagerServiceImpl;

    invoke-virtual {v1, p1}, Lcom/android/server/rollback/RollbackManagerServiceImpl;->getNewRollbackForPackageSessionLocked(I)Lcom/android/server/rollback/RollbackManagerServiceImpl$NewRollback;

    move-result-object p1

    .line 1317
    if-eqz p1, :cond_18

    .line 1318
    iget-object v1, p0, Lcom/android/server/rollback/RollbackManagerServiceImpl$SessionCallback;->this$0:Lcom/android/server/rollback/RollbackManagerServiceImpl;

    invoke-static {v1}, Lcom/android/server/rollback/RollbackManagerServiceImpl;->access$400(Lcom/android/server/rollback/RollbackManagerServiceImpl;)Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 1320
    :cond_18
    monitor-exit v0
    :try_end_19
    .catchall {:try_start_7 .. :try_end_19} :catchall_2f

    .line 1322
    if-eqz p1, :cond_2e

    .line 1323
    iget-object v0, p0, Lcom/android/server/rollback/RollbackManagerServiceImpl$SessionCallback;->this$0:Lcom/android/server/rollback/RollbackManagerServiceImpl;

    invoke-static {v0, p1, p2}, Lcom/android/server/rollback/RollbackManagerServiceImpl;->access$1300(Lcom/android/server/rollback/RollbackManagerServiceImpl;Lcom/android/server/rollback/RollbackManagerServiceImpl$NewRollback;Z)Lcom/android/server/rollback/RollbackData;

    move-result-object p1

    .line 1324
    if-eqz p1, :cond_2e

    invoke-virtual {p1}, Lcom/android/server/rollback/RollbackData;->isStaged()Z

    move-result p2

    if-nez p2, :cond_2e

    .line 1325
    iget-object p2, p0, Lcom/android/server/rollback/RollbackManagerServiceImpl$SessionCallback;->this$0:Lcom/android/server/rollback/RollbackManagerServiceImpl;

    invoke-static {p2, p1}, Lcom/android/server/rollback/RollbackManagerServiceImpl;->access$1400(Lcom/android/server/rollback/RollbackManagerServiceImpl;Lcom/android/server/rollback/RollbackData;)V

    .line 1328
    :cond_2e
    return-void

    .line 1320
    :catchall_2f
    move-exception p1

    :try_start_30
    monitor-exit v0
    :try_end_31
    .catchall {:try_start_30 .. :try_end_31} :catchall_2f

    throw p1
.end method

.method public onProgressChanged(IF)V
    .registers 3

    .line 1310
    return-void
.end method
