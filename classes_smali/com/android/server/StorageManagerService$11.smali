.class Lcom/android/server/StorageManagerService$11;
.super Landroid/os/IVoldTaskListener$Stub;
.source "StorageManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/StorageManagerService;->setPrimaryStorageUuid(Ljava/lang/String;Landroid/content/pm/IPackageMoveObserver;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/StorageManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/StorageManagerService;)V
    .registers 2

    .line 2313
    iput-object p1, p0, Lcom/android/server/StorageManagerService$11;->this$0:Lcom/android/server/StorageManagerService;

    invoke-direct {p0}, Landroid/os/IVoldTaskListener$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onFinished(ILandroid/os/PersistableBundle;)V
    .registers 3

    .line 2324
    return-void
.end method

.method public onStatus(ILandroid/os/PersistableBundle;)V
    .registers 4

    .line 2316
    iget-object p2, p0, Lcom/android/server/StorageManagerService$11;->this$0:Lcom/android/server/StorageManagerService;

    invoke-static {p2}, Lcom/android/server/StorageManagerService;->access$2700(Lcom/android/server/StorageManagerService;)Ljava/lang/Object;

    move-result-object p2

    monitor-enter p2

    .line 2317
    :try_start_7
    iget-object v0, p0, Lcom/android/server/StorageManagerService$11;->this$0:Lcom/android/server/StorageManagerService;

    invoke-static {v0, p1}, Lcom/android/server/StorageManagerService;->access$4600(Lcom/android/server/StorageManagerService;I)V

    .line 2318
    monitor-exit p2

    .line 2319
    return-void

    .line 2318
    :catchall_e
    move-exception p1

    monitor-exit p2
    :try_end_10
    .catchall {:try_start_7 .. :try_end_10} :catchall_e

    throw p1
.end method
