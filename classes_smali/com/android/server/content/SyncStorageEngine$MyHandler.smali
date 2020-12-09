.class Lcom/android/server/content/SyncStorageEngine$MyHandler;
.super Landroid/os/Handler;
.source "SyncStorageEngine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/content/SyncStorageEngine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/content/SyncStorageEngine;


# direct methods
.method public constructor <init>(Lcom/android/server/content/SyncStorageEngine;Landroid/os/Looper;)V
    .registers 3

    .line 571
    iput-object p1, p0, Lcom/android/server/content/SyncStorageEngine$MyHandler;->this$0:Lcom/android/server/content/SyncStorageEngine;

    .line 572
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 573
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 4

    .line 577
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_16

    .line 578
    iget-object p1, p0, Lcom/android/server/content/SyncStorageEngine$MyHandler;->this$0:Lcom/android/server/content/SyncStorageEngine;

    invoke-static {p1}, Lcom/android/server/content/SyncStorageEngine;->access$100(Lcom/android/server/content/SyncStorageEngine;)Landroid/util/SparseArray;

    move-result-object v0

    monitor-enter v0

    .line 579
    :try_start_c
    iget-object p1, p0, Lcom/android/server/content/SyncStorageEngine$MyHandler;->this$0:Lcom/android/server/content/SyncStorageEngine;

    invoke-static {p1}, Lcom/android/server/content/SyncStorageEngine;->access$200(Lcom/android/server/content/SyncStorageEngine;)V

    .line 580
    monitor-exit v0

    goto :goto_2c

    :catchall_13
    move-exception p1

    monitor-exit v0
    :try_end_15
    .catchall {:try_start_c .. :try_end_15} :catchall_13

    throw p1

    .line 581
    :cond_16
    iget p1, p1, Landroid/os/Message;->what:I

    const/4 v0, 0x2

    if-ne p1, v0, :cond_2c

    .line 582
    iget-object p1, p0, Lcom/android/server/content/SyncStorageEngine$MyHandler;->this$0:Lcom/android/server/content/SyncStorageEngine;

    invoke-static {p1}, Lcom/android/server/content/SyncStorageEngine;->access$100(Lcom/android/server/content/SyncStorageEngine;)Landroid/util/SparseArray;

    move-result-object p1

    monitor-enter p1

    .line 583
    :try_start_22
    iget-object v0, p0, Lcom/android/server/content/SyncStorageEngine$MyHandler;->this$0:Lcom/android/server/content/SyncStorageEngine;

    invoke-static {v0}, Lcom/android/server/content/SyncStorageEngine;->access$300(Lcom/android/server/content/SyncStorageEngine;)V

    .line 584
    monitor-exit p1

    goto :goto_2c

    :catchall_29
    move-exception v0

    monitor-exit p1
    :try_end_2b
    .catchall {:try_start_22 .. :try_end_2b} :catchall_29

    throw v0

    .line 586
    :cond_2c
    :goto_2c
    return-void
.end method
