.class final Lcom/meizu/server/FindPhoneMonitor$MonitoredApkObserver;
.super Landroid/os/FileObserver;
.source "FindPhoneMonitor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/server/FindPhoneMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "MonitoredApkObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meizu/server/FindPhoneMonitor;


# direct methods
.method public constructor <init>(Lcom/meizu/server/FindPhoneMonitor;Ljava/lang/String;I)V
    .registers 4
    .param p2, "path"  # Ljava/lang/String;
    .param p3, "mask"  # I

    .line 214
    iput-object p1, p0, Lcom/meizu/server/FindPhoneMonitor$MonitoredApkObserver;->this$0:Lcom/meizu/server/FindPhoneMonitor;

    .line 215
    invoke-direct {p0, p2, p3}, Landroid/os/FileObserver;-><init>(Ljava/lang/String;I)V

    .line 216
    return-void
.end method


# virtual methods
.method public onEvent(ILjava/lang/String;)V
    .registers 12
    .param p1, "event"  # I
    .param p2, "path"  # Ljava/lang/String;

    .line 219
    iget-object v0, p0, Lcom/meizu/server/FindPhoneMonitor$MonitoredApkObserver;->this$0:Lcom/meizu/server/FindPhoneMonitor;

    invoke-static {v0}, Lcom/meizu/server/FindPhoneMonitor;->access$1000(Lcom/meizu/server/FindPhoneMonitor;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 220
    :try_start_7
    iget-object v1, p0, Lcom/meizu/server/FindPhoneMonitor$MonitoredApkObserver;->this$0:Lcom/meizu/server/FindPhoneMonitor;

    invoke-static {v1, p1}, Lcom/meizu/server/FindPhoneMonitor;->access$1176(Lcom/meizu/server/FindPhoneMonitor;I)I

    .line 221
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MonitoredApkObserver.onEvent(), event = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", path = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/meizu/server/FindPhoneMonitor;->access$900(Ljava/lang/String;)V

    .line 222
    iget-object v1, p0, Lcom/meizu/server/FindPhoneMonitor$MonitoredApkObserver;->this$0:Lcom/meizu/server/FindPhoneMonitor;

    invoke-static {v1}, Lcom/meizu/server/FindPhoneMonitor;->access$700(Lcom/meizu/server/FindPhoneMonitor;)Landroid/os/Handler;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 223
    iget-object v3, p0, Lcom/meizu/server/FindPhoneMonitor$MonitoredApkObserver;->this$0:Lcom/meizu/server/FindPhoneMonitor;

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-wide/16 v7, 0xbb8

    invoke-static/range {v3 .. v8}, Lcom/meizu/server/FindPhoneMonitor;->access$1200(Lcom/meizu/server/FindPhoneMonitor;IILjava/lang/Object;J)V

    .line 224
    monitor-exit v0

    .line 225
    return-void

    .line 224
    :catchall_42
    move-exception v1

    monitor-exit v0
    :try_end_44
    .catchall {:try_start_7 .. :try_end_44} :catchall_42

    throw v1
.end method
