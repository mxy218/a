.class Lcom/android/server/StorageManagerService$8;
.super Landroid/os/IVoldTaskListener$Stub;
.source "StorageManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/StorageManagerService;->fstrim(ILandroid/os/IVoldTaskListener;)V
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

    .line 2028
    iput-object p1, p0, Lcom/android/server/StorageManagerService$8;->this$0:Lcom/android/server/StorageManagerService;

    iput-object p2, p0, Lcom/android/server/StorageManagerService$8;->val$listener:Landroid/os/IVoldTaskListener;

    invoke-direct {p0}, Landroid/os/IVoldTaskListener$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onFinished(ILandroid/os/PersistableBundle;)V
    .registers 5

    .line 2054
    iget-object v0, p0, Lcom/android/server/StorageManagerService$8;->this$0:Lcom/android/server/StorageManagerService;

    iget-object v1, p0, Lcom/android/server/StorageManagerService$8;->val$listener:Landroid/os/IVoldTaskListener;

    invoke-static {v0, v1, p1, p2}, Lcom/android/server/StorageManagerService;->access$4000(Lcom/android/server/StorageManagerService;Landroid/os/IVoldTaskListener;ILandroid/os/PersistableBundle;)V

    .line 2057
    return-void
.end method

.method public onStatus(ILandroid/os/PersistableBundle;)V
    .registers 9

    .line 2031
    iget-object v0, p0, Lcom/android/server/StorageManagerService$8;->this$0:Lcom/android/server/StorageManagerService;

    iget-object v1, p0, Lcom/android/server/StorageManagerService$8;->val$listener:Landroid/os/IVoldTaskListener;

    invoke-static {v0, v1, p1, p2}, Lcom/android/server/StorageManagerService;->access$3900(Lcom/android/server/StorageManagerService;Landroid/os/IVoldTaskListener;ILandroid/os/PersistableBundle;)V

    .line 2034
    if-eqz p1, :cond_a

    return-void

    .line 2036
    :cond_a
    const-string/jumbo p1, "path"

    invoke-virtual {p2, p1}, Landroid/os/PersistableBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 2037
    const-string v0, "bytes"

    invoke-virtual {p2, v0}, Landroid/os/PersistableBundle;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    .line 2038
    const-string/jumbo v2, "time"

    invoke-virtual {p2, v2}, Landroid/os/PersistableBundle;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    .line 2040
    iget-object p2, p0, Lcom/android/server/StorageManagerService$8;->this$0:Lcom/android/server/StorageManagerService;

    invoke-static {p2}, Lcom/android/server/StorageManagerService;->access$1800(Lcom/android/server/StorageManagerService;)Landroid/content/Context;

    move-result-object p2

    const-class v4, Landroid/os/DropBoxManager;

    invoke-virtual {p2, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/os/DropBoxManager;

    .line 2041
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/android/server/StorageManagerService$8;->this$0:Lcom/android/server/StorageManagerService;

    invoke-static {v5, p1}, Lcom/android/server/StorageManagerService;->access$4100(Lcom/android/server/StorageManagerService;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, " "

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "storage_trim"

    invoke-virtual {p2, v1, v0}, Landroid/os/DropBoxManager;->addText(Ljava/lang/String;Ljava/lang/String;)V

    .line 2043
    iget-object p2, p0, Lcom/android/server/StorageManagerService$8;->this$0:Lcom/android/server/StorageManagerService;

    invoke-static {p2}, Lcom/android/server/StorageManagerService;->access$2700(Lcom/android/server/StorageManagerService;)Ljava/lang/Object;

    move-result-object p2

    monitor-enter p2

    .line 2044
    :try_start_5b
    iget-object v0, p0, Lcom/android/server/StorageManagerService$8;->this$0:Lcom/android/server/StorageManagerService;

    invoke-static {v0, p1}, Lcom/android/server/StorageManagerService;->access$4200(Lcom/android/server/StorageManagerService;Ljava/lang/String;)Landroid/os/storage/VolumeRecord;

    move-result-object p1

    .line 2045
    if-eqz p1, :cond_6e

    .line 2046
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p1, Landroid/os/storage/VolumeRecord;->lastTrimMillis:J

    .line 2047
    iget-object p1, p0, Lcom/android/server/StorageManagerService$8;->this$0:Lcom/android/server/StorageManagerService;

    invoke-static {p1}, Lcom/android/server/StorageManagerService;->access$4300(Lcom/android/server/StorageManagerService;)V

    .line 2049
    :cond_6e
    monitor-exit p2

    .line 2050
    return-void

    .line 2049
    :catchall_70
    move-exception p1

    monitor-exit p2
    :try_end_72
    .catchall {:try_start_5b .. :try_end_72} :catchall_70

    throw p1
.end method
