.class Lcom/android/server/wm/TaskSnapshotPersister$1;
.super Ljava/lang/Thread;
.source "TaskSnapshotPersister.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/TaskSnapshotPersister;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/wm/TaskSnapshotPersister;


# direct methods
.method constructor <init>(Lcom/android/server/wm/TaskSnapshotPersister;Ljava/lang/String;)V
    .registers 3
    .param p1, "this$0"  # Lcom/android/server/wm/TaskSnapshotPersister;
    .param p2, "x0"  # Ljava/lang/String;

    .line 241
    iput-object p1, p0, Lcom/android/server/wm/TaskSnapshotPersister$1;->this$0:Lcom/android/server/wm/TaskSnapshotPersister;

    invoke-direct {p0, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    .line 243
    const/16 v0, 0xa

    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    .line 246
    :goto_5
    iget-object v0, p0, Lcom/android/server/wm/TaskSnapshotPersister$1;->this$0:Lcom/android/server/wm/TaskSnapshotPersister;

    invoke-static {v0}, Lcom/android/server/wm/TaskSnapshotPersister;->access$100(Lcom/android/server/wm/TaskSnapshotPersister;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 247
    :try_start_c
    iget-object v1, p0, Lcom/android/server/wm/TaskSnapshotPersister$1;->this$0:Lcom/android/server/wm/TaskSnapshotPersister;

    invoke-static {v1}, Lcom/android/server/wm/TaskSnapshotPersister;->access$200(Lcom/android/server/wm/TaskSnapshotPersister;)Z

    move-result v1

    if-eqz v1, :cond_16

    .line 248
    const/4 v1, 0x0

    .local v1, "next":Lcom/android/server/wm/TaskSnapshotPersister$WriteQueueItem;
    goto :goto_27

    .line 250
    .end local v1  # "next":Lcom/android/server/wm/TaskSnapshotPersister$WriteQueueItem;
    :cond_16
    iget-object v1, p0, Lcom/android/server/wm/TaskSnapshotPersister$1;->this$0:Lcom/android/server/wm/TaskSnapshotPersister;

    invoke-static {v1}, Lcom/android/server/wm/TaskSnapshotPersister;->access$300(Lcom/android/server/wm/TaskSnapshotPersister;)Ljava/util/ArrayDeque;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayDeque;->poll()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/TaskSnapshotPersister$WriteQueueItem;

    .line 251
    .restart local v1  # "next":Lcom/android/server/wm/TaskSnapshotPersister$WriteQueueItem;
    if-eqz v1, :cond_27

    .line 252
    invoke-virtual {v1}, Lcom/android/server/wm/TaskSnapshotPersister$WriteQueueItem;->onDequeuedLocked()V

    .line 255
    :cond_27
    :goto_27
    monitor-exit v0
    :try_end_28
    .catchall {:try_start_c .. :try_end_28} :catchall_6a

    .line 256
    if-eqz v1, :cond_32

    .line 257
    invoke-virtual {v1}, Lcom/android/server/wm/TaskSnapshotPersister$WriteQueueItem;->write()V

    .line 258
    const-wide/16 v2, 0x64

    invoke-static {v2, v3}, Landroid/os/SystemClock;->sleep(J)V

    .line 260
    :cond_32
    iget-object v0, p0, Lcom/android/server/wm/TaskSnapshotPersister$1;->this$0:Lcom/android/server/wm/TaskSnapshotPersister;

    invoke-static {v0}, Lcom/android/server/wm/TaskSnapshotPersister;->access$100(Lcom/android/server/wm/TaskSnapshotPersister;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    .line 261
    :try_start_39
    iget-object v0, p0, Lcom/android/server/wm/TaskSnapshotPersister$1;->this$0:Lcom/android/server/wm/TaskSnapshotPersister;

    invoke-static {v0}, Lcom/android/server/wm/TaskSnapshotPersister;->access$300(Lcom/android/server/wm/TaskSnapshotPersister;)Ljava/util/ArrayDeque;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v0

    .line 262
    .local v0, "writeQueueEmpty":Z
    if-nez v0, :cond_4f

    iget-object v3, p0, Lcom/android/server/wm/TaskSnapshotPersister$1;->this$0:Lcom/android/server/wm/TaskSnapshotPersister;

    invoke-static {v3}, Lcom/android/server/wm/TaskSnapshotPersister;->access$200(Lcom/android/server/wm/TaskSnapshotPersister;)Z

    move-result v3

    if-nez v3, :cond_4f

    .line 263
    monitor-exit v2
    :try_end_4e
    .catchall {:try_start_39 .. :try_end_4e} :catchall_67

    goto :goto_5

    .line 266
    :cond_4f
    :try_start_4f
    iget-object v3, p0, Lcom/android/server/wm/TaskSnapshotPersister$1;->this$0:Lcom/android/server/wm/TaskSnapshotPersister;

    invoke-static {v3, v0}, Lcom/android/server/wm/TaskSnapshotPersister;->access$402(Lcom/android/server/wm/TaskSnapshotPersister;Z)Z

    .line 267
    iget-object v3, p0, Lcom/android/server/wm/TaskSnapshotPersister$1;->this$0:Lcom/android/server/wm/TaskSnapshotPersister;

    invoke-static {v3}, Lcom/android/server/wm/TaskSnapshotPersister;->access$100(Lcom/android/server/wm/TaskSnapshotPersister;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->wait()V

    .line 268
    iget-object v3, p0, Lcom/android/server/wm/TaskSnapshotPersister$1;->this$0:Lcom/android/server/wm/TaskSnapshotPersister;

    const/4 v4, 0x0

    invoke-static {v3, v4}, Lcom/android/server/wm/TaskSnapshotPersister;->access$402(Lcom/android/server/wm/TaskSnapshotPersister;Z)Z
    :try_end_63
    .catch Ljava/lang/InterruptedException; {:try_start_4f .. :try_end_63} :catch_64
    .catchall {:try_start_4f .. :try_end_63} :catchall_67

    .line 270
    goto :goto_65

    .line 269
    :catch_64
    move-exception v3

    .line 271
    .end local v0  # "writeQueueEmpty":Z
    :goto_65
    :try_start_65
    monitor-exit v2

    .line 272
    .end local v1  # "next":Lcom/android/server/wm/TaskSnapshotPersister$WriteQueueItem;
    goto :goto_5

    .line 271
    .restart local v1  # "next":Lcom/android/server/wm/TaskSnapshotPersister$WriteQueueItem;
    :catchall_67
    move-exception v0

    monitor-exit v2
    :try_end_69
    .catchall {:try_start_65 .. :try_end_69} :catchall_67

    throw v0

    .line 255
    .end local v1  # "next":Lcom/android/server/wm/TaskSnapshotPersister$WriteQueueItem;
    :catchall_6a
    move-exception v1

    :try_start_6b
    monitor-exit v0
    :try_end_6c
    .catchall {:try_start_6b .. :try_end_6c} :catchall_6a

    throw v1
.end method
