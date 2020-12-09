.class Lcom/android/server/wm/TaskSnapshotPersister$RemoveObsoleteFilesQueueItem;
.super Lcom/android/server/wm/TaskSnapshotPersister$WriteQueueItem;
.source "TaskSnapshotPersister.java"


# annotations
.annotation build Lcom/android/internal/annotations/VisibleForTesting;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/TaskSnapshotPersister;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "RemoveObsoleteFilesQueueItem"
.end annotation


# instance fields
.field private final mPersistentTaskIds:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mRunningUserIds:[I

.field final synthetic this$0:Lcom/android/server/wm/TaskSnapshotPersister;


# direct methods
.method constructor <init>(Lcom/android/server/wm/TaskSnapshotPersister;Landroid/util/ArraySet;[I)V
    .registers 5
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArraySet<",
            "Ljava/lang/Integer;",
            ">;[I)V"
        }
    .end annotation

    .line 456
    iput-object p1, p0, Lcom/android/server/wm/TaskSnapshotPersister$RemoveObsoleteFilesQueueItem;->this$0:Lcom/android/server/wm/TaskSnapshotPersister;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/server/wm/TaskSnapshotPersister$WriteQueueItem;-><init>(Lcom/android/server/wm/TaskSnapshotPersister;Lcom/android/server/wm/TaskSnapshotPersister$1;)V

    .line 457
    new-instance p1, Landroid/util/ArraySet;

    invoke-direct {p1, p2}, Landroid/util/ArraySet;-><init>(Landroid/util/ArraySet;)V

    iput-object p1, p0, Lcom/android/server/wm/TaskSnapshotPersister$RemoveObsoleteFilesQueueItem;->mPersistentTaskIds:Landroid/util/ArraySet;

    .line 458
    array-length p1, p3

    invoke-static {p3, p1}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/wm/TaskSnapshotPersister$RemoveObsoleteFilesQueueItem;->mRunningUserIds:[I

    .line 459
    return-void
.end method


# virtual methods
.method getTaskId(Ljava/lang/String;)I
    .registers 6
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 485
    const-string v0, ".proto"

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, -0x1

    if-nez v0, :cond_12

    const-string v0, ".jpg"

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_12

    .line 486
    return v1

    .line 488
    :cond_12
    const/16 v0, 0x2e

    invoke-virtual {p1, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    .line 489
    if-ne v0, v1, :cond_1b

    .line 490
    return v1

    .line 492
    :cond_1b
    const/4 v2, 0x0

    invoke-virtual {p1, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 493
    const-string v0, "_reduced"

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_35

    .line 494
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    sub-int/2addr v3, v0

    invoke-virtual {p1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 497
    :cond_35
    :try_start_35
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1
    :try_end_39
    .catch Ljava/lang/NumberFormatException; {:try_start_35 .. :try_end_39} :catch_3a

    return p1

    .line 498
    :catch_3a
    move-exception p1

    .line 499
    return v1
.end method

.method write()V
    .registers 14

    .line 464
    iget-object v0, p0, Lcom/android/server/wm/TaskSnapshotPersister$RemoveObsoleteFilesQueueItem;->this$0:Lcom/android/server/wm/TaskSnapshotPersister;

    invoke-static {v0}, Lcom/android/server/wm/TaskSnapshotPersister;->access$100(Lcom/android/server/wm/TaskSnapshotPersister;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 465
    :try_start_7
    new-instance v1, Landroid/util/ArraySet;

    iget-object v2, p0, Lcom/android/server/wm/TaskSnapshotPersister$RemoveObsoleteFilesQueueItem;->this$0:Lcom/android/server/wm/TaskSnapshotPersister;

    invoke-static {v2}, Lcom/android/server/wm/TaskSnapshotPersister;->access$1200(Lcom/android/server/wm/TaskSnapshotPersister;)Landroid/util/ArraySet;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/util/ArraySet;-><init>(Landroid/util/ArraySet;)V

    .line 466
    monitor-exit v0
    :try_end_13
    .catchall {:try_start_7 .. :try_end_13} :catchall_58

    .line 467
    iget-object v0, p0, Lcom/android/server/wm/TaskSnapshotPersister$RemoveObsoleteFilesQueueItem;->mRunningUserIds:[I

    array-length v2, v0

    const/4 v3, 0x0

    move v4, v3

    :goto_18
    if-ge v4, v2, :cond_57

    aget v5, v0, v4

    .line 468
    iget-object v6, p0, Lcom/android/server/wm/TaskSnapshotPersister$RemoveObsoleteFilesQueueItem;->this$0:Lcom/android/server/wm/TaskSnapshotPersister;

    invoke-static {v6, v5}, Lcom/android/server/wm/TaskSnapshotPersister;->access$900(Lcom/android/server/wm/TaskSnapshotPersister;I)Ljava/io/File;

    move-result-object v5

    .line 469
    invoke-virtual {v5}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v6

    .line 470
    if-nez v6, :cond_29

    .line 471
    goto :goto_54

    .line 473
    :cond_29
    array-length v7, v6

    move v8, v3

    :goto_2b
    if-ge v8, v7, :cond_54

    aget-object v9, v6, v8

    .line 474
    invoke-virtual {p0, v9}, Lcom/android/server/wm/TaskSnapshotPersister$RemoveObsoleteFilesQueueItem;->getTaskId(Ljava/lang/String;)I

    move-result v10

    .line 475
    iget-object v11, p0, Lcom/android/server/wm/TaskSnapshotPersister$RemoveObsoleteFilesQueueItem;->mPersistentTaskIds:Landroid/util/ArraySet;

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_51

    .line 476
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v1, v10}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_51

    .line 477
    new-instance v10, Ljava/io/File;

    invoke-direct {v10, v5, v9}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v10}, Ljava/io/File;->delete()Z

    .line 473
    :cond_51
    add-int/lit8 v8, v8, 0x1

    goto :goto_2b

    .line 467
    :cond_54
    :goto_54
    add-int/lit8 v4, v4, 0x1

    goto :goto_18

    .line 481
    :cond_57
    return-void

    .line 466
    :catchall_58
    move-exception v1

    :try_start_59
    monitor-exit v0
    :try_end_5a
    .catchall {:try_start_59 .. :try_end_5a} :catchall_58

    throw v1
.end method
