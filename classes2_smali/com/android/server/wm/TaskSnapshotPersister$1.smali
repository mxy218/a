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

    .line 245
    iput-object p1, p0, Lcom/android/server/wm/TaskSnapshotPersister$1;->this$0:Lcom/android/server/wm/TaskSnapshotPersister;

    invoke-direct {p0, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .line 247
    const/16 v0, 0xa

    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    .line 250
    :goto_5
    nop

    .line 251
    iget-object v0, p0, Lcom/android/server/wm/TaskSnapshotPersister$1;->this$0:Lcom/android/server/wm/TaskSnapshotPersister;

    invoke-static {v0}, Lcom/android/server/wm/TaskSnapshotPersister;->access$100(Lcom/android/server/wm/TaskSnapshotPersister;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 252
    :try_start_d
    iget-object v1, p0, Lcom/android/server/wm/TaskSnapshotPersister$1;->this$0:Lcom/android/server/wm/TaskSnapshotPersister;

    invoke-static {v1}, Lcom/android/server/wm/TaskSnapshotPersister;->access$200(Lcom/android/server/wm/TaskSnapshotPersister;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_19

    .line 253
    const/4 v1, 0x0

    move v3, v2

    goto :goto_3c

    .line 255
    :cond_19
    iget-object v1, p0, Lcom/android/server/wm/TaskSnapshotPersister$1;->this$0:Lcom/android/server/wm/TaskSnapshotPersister;

    invoke-static {v1}, Lcom/android/server/wm/TaskSnapshotPersister;->access$300(Lcom/android/server/wm/TaskSnapshotPersister;)Ljava/util/ArrayDeque;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayDeque;->poll()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/TaskSnapshotPersister$WriteQueueItem;

    .line 256
    if-eqz v1, :cond_3b

    .line 257
    invoke-virtual {v1}, Lcom/android/server/wm/TaskSnapshotPersister$WriteQueueItem;->isReady()Z

    move-result v3

    if-eqz v3, :cond_32

    .line 258
    const/4 v3, 0x1

    .line 259
    invoke-virtual {v1}, Lcom/android/server/wm/TaskSnapshotPersister$WriteQueueItem;->onDequeuedLocked()V

    goto :goto_3c

    .line 261
    :cond_32
    iget-object v3, p0, Lcom/android/server/wm/TaskSnapshotPersister$1;->this$0:Lcom/android/server/wm/TaskSnapshotPersister;

    invoke-static {v3}, Lcom/android/server/wm/TaskSnapshotPersister;->access$300(Lcom/android/server/wm/TaskSnapshotPersister;)Ljava/util/ArrayDeque;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/util/ArrayDeque;->addLast(Ljava/lang/Object;)V

    .line 265
    :cond_3b
    move v3, v2

    :goto_3c
    monitor-exit v0
    :try_end_3d
    .catchall {:try_start_d .. :try_end_3d} :catchall_80

    .line 266
    if-eqz v1, :cond_49

    .line 267
    if-eqz v3, :cond_44

    .line 268
    invoke-virtual {v1}, Lcom/android/server/wm/TaskSnapshotPersister$WriteQueueItem;->write()V

    .line 270
    :cond_44
    const-wide/16 v0, 0x64

    invoke-static {v0, v1}, Landroid/os/SystemClock;->sleep(J)V

    .line 272
    :cond_49
    iget-object v0, p0, Lcom/android/server/wm/TaskSnapshotPersister$1;->this$0:Lcom/android/server/wm/TaskSnapshotPersister;

    invoke-static {v0}, Lcom/android/server/wm/TaskSnapshotPersister;->access$100(Lcom/android/server/wm/TaskSnapshotPersister;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 273
    :try_start_50
    iget-object v0, p0, Lcom/android/server/wm/TaskSnapshotPersister$1;->this$0:Lcom/android/server/wm/TaskSnapshotPersister;

    invoke-static {v0}, Lcom/android/server/wm/TaskSnapshotPersister;->access$300(Lcom/android/server/wm/TaskSnapshotPersister;)Ljava/util/ArrayDeque;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v0

    .line 274
    if-nez v0, :cond_66

    iget-object v3, p0, Lcom/android/server/wm/TaskSnapshotPersister$1;->this$0:Lcom/android/server/wm/TaskSnapshotPersister;

    invoke-static {v3}, Lcom/android/server/wm/TaskSnapshotPersister;->access$200(Lcom/android/server/wm/TaskSnapshotPersister;)Z

    move-result v3

    if-nez v3, :cond_66

    .line 275
    monitor-exit v1
    :try_end_65
    .catchall {:try_start_50 .. :try_end_65} :catchall_7d

    goto :goto_5

    .line 278
    :cond_66
    :try_start_66
    iget-object v3, p0, Lcom/android/server/wm/TaskSnapshotPersister$1;->this$0:Lcom/android/server/wm/TaskSnapshotPersister;

    invoke-static {v3, v0}, Lcom/android/server/wm/TaskSnapshotPersister;->access$402(Lcom/android/server/wm/TaskSnapshotPersister;Z)Z

    .line 279
    iget-object v0, p0, Lcom/android/server/wm/TaskSnapshotPersister$1;->this$0:Lcom/android/server/wm/TaskSnapshotPersister;

    invoke-static {v0}, Lcom/android/server/wm/TaskSnapshotPersister;->access$100(Lcom/android/server/wm/TaskSnapshotPersister;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->wait()V

    .line 280
    iget-object v0, p0, Lcom/android/server/wm/TaskSnapshotPersister$1;->this$0:Lcom/android/server/wm/TaskSnapshotPersister;

    invoke-static {v0, v2}, Lcom/android/server/wm/TaskSnapshotPersister;->access$402(Lcom/android/server/wm/TaskSnapshotPersister;Z)Z
    :try_end_79
    .catch Ljava/lang/InterruptedException; {:try_start_66 .. :try_end_79} :catch_7a
    .catchall {:try_start_66 .. :try_end_79} :catchall_7d

    .line 282
    goto :goto_7b

    .line 281
    :catch_7a
    move-exception v0

    .line 283
    :goto_7b
    :try_start_7b
    monitor-exit v1

    .line 284
    goto :goto_5

    .line 283
    :catchall_7d
    move-exception v0

    monitor-exit v1
    :try_end_7f
    .catchall {:try_start_7b .. :try_end_7f} :catchall_7d

    throw v0

    .line 265
    :catchall_80
    move-exception v1

    :try_start_81
    monitor-exit v0
    :try_end_82
    .catchall {:try_start_81 .. :try_end_82} :catchall_80

    throw v1
.end method
