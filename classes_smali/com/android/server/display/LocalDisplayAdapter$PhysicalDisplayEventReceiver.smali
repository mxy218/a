.class final Lcom/android/server/display/LocalDisplayAdapter$PhysicalDisplayEventReceiver;
.super Landroid/view/DisplayEventReceiver;
.source "LocalDisplayAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/display/LocalDisplayAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "PhysicalDisplayEventReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/display/LocalDisplayAdapter;


# direct methods
.method constructor <init>(Lcom/android/server/display/LocalDisplayAdapter;Landroid/os/Looper;)V
    .registers 3
    .param p2, "looper"  # Landroid/os/Looper;

    .line 914
    iput-object p1, p0, Lcom/android/server/display/LocalDisplayAdapter$PhysicalDisplayEventReceiver;->this$0:Lcom/android/server/display/LocalDisplayAdapter;

    .line 915
    const/4 p1, 0x0

    invoke-direct {p0, p2, p1}, Landroid/view/DisplayEventReceiver;-><init>(Landroid/os/Looper;I)V

    .line 916
    return-void
.end method


# virtual methods
.method public onConfigChanged(JJI)V
    .registers 11
    .param p1, "timestampNanos"  # J
    .param p3, "physicalDisplayId"  # J
    .param p5, "physIndex"  # I

    .line 932
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onConfigChanged(timestampNanos="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", physicalDisplayId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", physIndex="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "LocalDisplayAdapter"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 937
    iget-object v0, p0, Lcom/android/server/display/LocalDisplayAdapter$PhysicalDisplayEventReceiver;->this$0:Lcom/android/server/display/LocalDisplayAdapter;

    invoke-virtual {v0}, Lcom/android/server/display/LocalDisplayAdapter;->getSyncRoot()Lcom/android/server/display/DisplayManagerService$SyncRoot;

    move-result-object v0

    monitor-enter v0

    .line 938
    :try_start_33
    iget-object v1, p0, Lcom/android/server/display/LocalDisplayAdapter$PhysicalDisplayEventReceiver;->this$0:Lcom/android/server/display/LocalDisplayAdapter;

    invoke-static {v1}, Lcom/android/server/display/LocalDisplayAdapter;->access$700(Lcom/android/server/display/LocalDisplayAdapter;)Landroid/util/LongSparseArray;

    move-result-object v1

    invoke-virtual {v1, p3, p4}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;

    .line 939
    .local v1, "device":Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;
    if-nez v1, :cond_59

    .line 941
    const-string v2, "LocalDisplayAdapter"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Received config change for unhandled physical display: physicalDisplayId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 944
    monitor-exit v0

    return-void

    .line 946
    :cond_59
    invoke-virtual {v1, p5}, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->onActivePhysicalDisplayModeChangedLocked(I)V

    .line 947
    .end local v1  # "device":Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;
    monitor-exit v0

    .line 948
    return-void

    .line 947
    :catchall_5e
    move-exception v1

    monitor-exit v0
    :try_end_60
    .catchall {:try_start_33 .. :try_end_60} :catchall_5e

    throw v1
.end method

.method public onHotplug(JJZ)V
    .registers 8
    .param p1, "timestampNanos"  # J
    .param p3, "physicalDisplayId"  # J
    .param p5, "connected"  # Z

    .line 920
    iget-object v0, p0, Lcom/android/server/display/LocalDisplayAdapter$PhysicalDisplayEventReceiver;->this$0:Lcom/android/server/display/LocalDisplayAdapter;

    invoke-virtual {v0}, Lcom/android/server/display/LocalDisplayAdapter;->getSyncRoot()Lcom/android/server/display/DisplayManagerService$SyncRoot;

    move-result-object v0

    monitor-enter v0

    .line 921
    if-eqz p5, :cond_f

    .line 922
    :try_start_9
    iget-object v1, p0, Lcom/android/server/display/LocalDisplayAdapter$PhysicalDisplayEventReceiver;->this$0:Lcom/android/server/display/LocalDisplayAdapter;

    invoke-static {v1, p3, p4}, Lcom/android/server/display/LocalDisplayAdapter;->access$500(Lcom/android/server/display/LocalDisplayAdapter;J)V

    goto :goto_14

    .line 924
    :cond_f
    iget-object v1, p0, Lcom/android/server/display/LocalDisplayAdapter$PhysicalDisplayEventReceiver;->this$0:Lcom/android/server/display/LocalDisplayAdapter;

    invoke-static {v1, p3, p4}, Lcom/android/server/display/LocalDisplayAdapter;->access$600(Lcom/android/server/display/LocalDisplayAdapter;J)V

    .line 926
    :goto_14
    monitor-exit v0

    .line 927
    return-void

    .line 926
    :catchall_16
    move-exception v1

    monitor-exit v0
    :try_end_18
    .catchall {:try_start_9 .. :try_end_18} :catchall_16

    throw v1
.end method
