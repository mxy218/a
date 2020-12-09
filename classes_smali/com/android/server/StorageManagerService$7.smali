.class Lcom/android/server/StorageManagerService$7;
.super Landroid/os/IVoldTaskListener$Stub;
.source "StorageManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/StorageManagerService;->benchmark(Ljava/lang/String;Landroid/os/IVoldTaskListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/StorageManagerService;

.field final synthetic val$listener:Landroid/os/IVoldTaskListener;


# direct methods
.method constructor <init>(Lcom/android/server/StorageManagerService;Landroid/os/IVoldTaskListener;)V
    .registers 3

    .line 1861
    iput-object p1, p0, Lcom/android/server/StorageManagerService$7;->this$0:Lcom/android/server/StorageManagerService;

    iput-object p2, p0, Lcom/android/server/StorageManagerService$7;->val$listener:Landroid/os/IVoldTaskListener;

    invoke-direct {p0}, Landroid/os/IVoldTaskListener$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onFinished(ILandroid/os/PersistableBundle;)V
    .registers 12

    .line 1869
    iget-object v0, p0, Lcom/android/server/StorageManagerService$7;->this$0:Lcom/android/server/StorageManagerService;

    iget-object v1, p0, Lcom/android/server/StorageManagerService$7;->val$listener:Landroid/os/IVoldTaskListener;

    invoke-static {v0, v1, p1, p2}, Lcom/android/server/StorageManagerService;->access$4000(Lcom/android/server/StorageManagerService;Landroid/os/IVoldTaskListener;ILandroid/os/PersistableBundle;)V

    .line 1871
    const-string/jumbo p1, "path"

    invoke-virtual {p2, p1}, Landroid/os/PersistableBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 1872
    const-string v0, "ident"

    invoke-virtual {p2, v0}, Landroid/os/PersistableBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1873
    const-string v1, "create"

    invoke-virtual {p2, v1}, Landroid/os/PersistableBundle;->getLong(Ljava/lang/String;)J

    move-result-wide v1

    .line 1874
    const-string/jumbo v3, "run"

    invoke-virtual {p2, v3}, Landroid/os/PersistableBundle;->getLong(Ljava/lang/String;)J

    move-result-wide v3

    .line 1875
    const-string v5, "destroy"

    invoke-virtual {p2, v5}, Landroid/os/PersistableBundle;->getLong(Ljava/lang/String;)J

    move-result-wide v5

    .line 1877
    iget-object p2, p0, Lcom/android/server/StorageManagerService$7;->this$0:Lcom/android/server/StorageManagerService;

    invoke-static {p2}, Lcom/android/server/StorageManagerService;->access$1800(Lcom/android/server/StorageManagerService;)Landroid/content/Context;

    move-result-object p2

    const-class v7, Landroid/os/DropBoxManager;

    invoke-virtual {p2, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/os/DropBoxManager;

    .line 1878
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, p0, Lcom/android/server/StorageManagerService$7;->this$0:Lcom/android/server/StorageManagerService;

    invoke-static {v8, p1}, Lcom/android/server/StorageManagerService;->access$4100(Lcom/android/server/StorageManagerService;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " "

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, " "

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, " "

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "storage_benchmark"

    invoke-virtual {p2, v1, v0}, Landroid/os/DropBoxManager;->addText(Ljava/lang/String;Ljava/lang/String;)V

    .line 1881
    iget-object p2, p0, Lcom/android/server/StorageManagerService$7;->this$0:Lcom/android/server/StorageManagerService;

    invoke-static {p2}, Lcom/android/server/StorageManagerService;->access$2700(Lcom/android/server/StorageManagerService;)Ljava/lang/Object;

    move-result-object p2

    monitor-enter p2

    .line 1882
    :try_start_74
    iget-object v0, p0, Lcom/android/server/StorageManagerService$7;->this$0:Lcom/android/server/StorageManagerService;

    invoke-static {v0, p1}, Lcom/android/server/StorageManagerService;->access$4200(Lcom/android/server/StorageManagerService;Ljava/lang/String;)Landroid/os/storage/VolumeRecord;

    move-result-object p1

    .line 1883
    if-eqz p1, :cond_87

    .line 1884
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p1, Landroid/os/storage/VolumeRecord;->lastBenchMillis:J

    .line 1885
    iget-object p1, p0, Lcom/android/server/StorageManagerService$7;->this$0:Lcom/android/server/StorageManagerService;

    invoke-static {p1}, Lcom/android/server/StorageManagerService;->access$4300(Lcom/android/server/StorageManagerService;)V

    .line 1887
    :cond_87
    monitor-exit p2

    .line 1888
    return-void

    .line 1887
    :catchall_89
    move-exception p1

    monitor-exit p2
    :try_end_8b
    .catchall {:try_start_74 .. :try_end_8b} :catchall_89

    throw p1
.end method

.method public onStatus(ILandroid/os/PersistableBundle;)V
    .registers 5

    .line 1864
    iget-object v0, p0, Lcom/android/server/StorageManagerService$7;->this$0:Lcom/android/server/StorageManagerService;

    iget-object v1, p0, Lcom/android/server/StorageManagerService$7;->val$listener:Landroid/os/IVoldTaskListener;

    invoke-static {v0, v1, p1, p2}, Lcom/android/server/StorageManagerService;->access$3900(Lcom/android/server/StorageManagerService;Landroid/os/IVoldTaskListener;ILandroid/os/PersistableBundle;)V

    .line 1865
    return-void
.end method
