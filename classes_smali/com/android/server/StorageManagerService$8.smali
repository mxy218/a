.class Lcom/android/server/StorageManagerService$8;
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
    .param p1, "this$0"  # Lcom/android/server/StorageManagerService;

    .line 1958
    iput-object p1, p0, Lcom/android/server/StorageManagerService$8;->this$0:Lcom/android/server/StorageManagerService;

    iput-object p2, p0, Lcom/android/server/StorageManagerService$8;->val$listener:Landroid/os/IVoldTaskListener;

    invoke-direct {p0}, Landroid/os/IVoldTaskListener$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onFinished(ILandroid/os/PersistableBundle;)V
    .registers 16
    .param p1, "status"  # I
    .param p2, "extras"  # Landroid/os/PersistableBundle;

    .line 1966
    iget-object v0, p0, Lcom/android/server/StorageManagerService$8;->this$0:Lcom/android/server/StorageManagerService;

    iget-object v1, p0, Lcom/android/server/StorageManagerService$8;->val$listener:Landroid/os/IVoldTaskListener;

    invoke-static {v0, v1, p1, p2}, Lcom/android/server/StorageManagerService;->access$4000(Lcom/android/server/StorageManagerService;Landroid/os/IVoldTaskListener;ILandroid/os/PersistableBundle;)V

    .line 1968
    const-string/jumbo v0, "path"

    invoke-virtual {p2, v0}, Landroid/os/PersistableBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1969
    .local v0, "path":Ljava/lang/String;
    const-string/jumbo v1, "ident"

    invoke-virtual {p2, v1}, Landroid/os/PersistableBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1970
    .local v1, "ident":Ljava/lang/String;
    const-string v2, "create"

    invoke-virtual {p2, v2}, Landroid/os/PersistableBundle;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    .line 1971
    .local v2, "create":J
    const-string/jumbo v4, "run"

    invoke-virtual {p2, v4}, Landroid/os/PersistableBundle;->getLong(Ljava/lang/String;)J

    move-result-wide v4

    .line 1972
    .local v4, "run":J
    const-string v6, "destroy"

    invoke-virtual {p2, v6}, Landroid/os/PersistableBundle;->getLong(Ljava/lang/String;)J

    move-result-wide v6

    .line 1974
    .local v6, "destroy":J
    iget-object v8, p0, Lcom/android/server/StorageManagerService$8;->this$0:Lcom/android/server/StorageManagerService;

    invoke-static {v8}, Lcom/android/server/StorageManagerService;->access$1800(Lcom/android/server/StorageManagerService;)Landroid/content/Context;

    move-result-object v8

    const-class v9, Landroid/os/DropBoxManager;

    invoke-virtual {v8, v9}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/os/DropBoxManager;

    .line 1975
    .local v8, "dropBox":Landroid/os/DropBoxManager;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v10, p0, Lcom/android/server/StorageManagerService$8;->this$0:Lcom/android/server/StorageManagerService;

    invoke-static {v10, v0}, Lcom/android/server/StorageManagerService;->access$4100(Lcom/android/server/StorageManagerService;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, " "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, " "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v10, " "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v10, " "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const-string/jumbo v10, "storage_benchmark"

    invoke-virtual {v8, v10, v9}, Landroid/os/DropBoxManager;->addText(Ljava/lang/String;Ljava/lang/String;)V

    .line 1978
    iget-object v9, p0, Lcom/android/server/StorageManagerService$8;->this$0:Lcom/android/server/StorageManagerService;

    invoke-static {v9}, Lcom/android/server/StorageManagerService;->access$2800(Lcom/android/server/StorageManagerService;)Ljava/lang/Object;

    move-result-object v9

    monitor-enter v9

    .line 1979
    :try_start_75
    iget-object v10, p0, Lcom/android/server/StorageManagerService$8;->this$0:Lcom/android/server/StorageManagerService;

    invoke-static {v10, v0}, Lcom/android/server/StorageManagerService;->access$4200(Lcom/android/server/StorageManagerService;Ljava/lang/String;)Landroid/os/storage/VolumeRecord;

    move-result-object v10

    .line 1980
    .local v10, "rec":Landroid/os/storage/VolumeRecord;
    if-eqz v10, :cond_88

    .line 1981
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v11

    iput-wide v11, v10, Landroid/os/storage/VolumeRecord;->lastBenchMillis:J

    .line 1982
    iget-object v11, p0, Lcom/android/server/StorageManagerService$8;->this$0:Lcom/android/server/StorageManagerService;

    invoke-static {v11}, Lcom/android/server/StorageManagerService;->access$4300(Lcom/android/server/StorageManagerService;)V

    .line 1984
    .end local v10  # "rec":Landroid/os/storage/VolumeRecord;
    :cond_88
    monitor-exit v9

    .line 1985
    return-void

    .line 1984
    :catchall_8a
    move-exception v10

    monitor-exit v9
    :try_end_8c
    .catchall {:try_start_75 .. :try_end_8c} :catchall_8a

    throw v10
.end method

.method public onStatus(ILandroid/os/PersistableBundle;)V
    .registers 5
    .param p1, "status"  # I
    .param p2, "extras"  # Landroid/os/PersistableBundle;

    .line 1961
    iget-object v0, p0, Lcom/android/server/StorageManagerService$8;->this$0:Lcom/android/server/StorageManagerService;

    iget-object v1, p0, Lcom/android/server/StorageManagerService$8;->val$listener:Landroid/os/IVoldTaskListener;

    invoke-static {v0, v1, p1, p2}, Lcom/android/server/StorageManagerService;->access$3900(Lcom/android/server/StorageManagerService;Landroid/os/IVoldTaskListener;ILandroid/os/PersistableBundle;)V

    .line 1962
    return-void
.end method
