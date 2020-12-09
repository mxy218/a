.class public Lcom/android/server/wm/TaskPersister;
.super Ljava/lang/Object;
.source "TaskPersister.java"

# interfaces
.implements Lcom/android/server/wm/PersisterQueue$Listener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wm/TaskPersister$ImageWriteQueueItem;,
        Lcom/android/server/wm/TaskPersister$TaskWriteQueueItem;
    }
.end annotation


# static fields
.field static final DEBUG:Z = false

.field private static final IMAGES_DIRNAME:Ljava/lang/String; = "recent_images"

.field static final IMAGE_EXTENSION:Ljava/lang/String; = ".png"

.field private static final PERSISTED_TASK_IDS_FILENAME:Ljava/lang/String; = "persisted_taskIds.txt"

.field static final TAG:Ljava/lang/String; = "TaskPersister"

.field private static final TAG_TASK:Ljava/lang/String; = "task"

.field private static final TASKS_DIRNAME:Ljava/lang/String; = "recent_tasks"

.field private static final TASK_FILENAME_SUFFIX:Ljava/lang/String; = "_task.xml"


# instance fields
.field private final mIoLock:Ljava/lang/Object;

.field private final mPersisterQueue:Lcom/android/server/wm/PersisterQueue;

.field private final mRecentTasks:Lcom/android/server/wm/RecentTasks;

.field private final mService:Lcom/android/server/wm/ActivityTaskManagerService;

.field private final mStackSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

.field private final mTaskIdsDir:Ljava/io/File;

.field private final mTaskIdsInFile:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/util/SparseBooleanArray;",
            ">;"
        }
    .end annotation
.end field

.field private final mTmpTaskIds:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/io/File;)V
    .registers 3
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 112
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 77
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/TaskPersister;->mTaskIdsInFile:Landroid/util/SparseArray;

    .line 80
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/TaskPersister;->mIoLock:Ljava/lang/Object;

    .line 83
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/TaskPersister;->mTmpTaskIds:Landroid/util/ArraySet;

    .line 113
    iput-object p1, p0, Lcom/android/server/wm/TaskPersister;->mTaskIdsDir:Ljava/io/File;

    .line 114
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/server/wm/TaskPersister;->mStackSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    .line 115
    iput-object p1, p0, Lcom/android/server/wm/TaskPersister;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 116
    iput-object p1, p0, Lcom/android/server/wm/TaskPersister;->mRecentTasks:Lcom/android/server/wm/RecentTasks;

    .line 117
    new-instance p1, Lcom/android/server/wm/PersisterQueue;

    invoke-direct {p1}, Lcom/android/server/wm/PersisterQueue;-><init>()V

    iput-object p1, p0, Lcom/android/server/wm/TaskPersister;->mPersisterQueue:Lcom/android/server/wm/PersisterQueue;

    .line 118
    iget-object p1, p0, Lcom/android/server/wm/TaskPersister;->mPersisterQueue:Lcom/android/server/wm/PersisterQueue;

    invoke-virtual {p1, p0}, Lcom/android/server/wm/PersisterQueue;->addListener(Lcom/android/server/wm/PersisterQueue$Listener;)V

    .line 119
    return-void
.end method

.method constructor <init>(Ljava/io/File;Lcom/android/server/wm/ActivityStackSupervisor;Lcom/android/server/wm/ActivityTaskManagerService;Lcom/android/server/wm/RecentTasks;Lcom/android/server/wm/PersisterQueue;)V
    .registers 10

    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 77
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/TaskPersister;->mTaskIdsInFile:Landroid/util/SparseArray;

    .line 80
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/TaskPersister;->mIoLock:Ljava/lang/Object;

    .line 83
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/TaskPersister;->mTmpTaskIds:Landroid/util/ArraySet;

    .line 89
    new-instance v0, Ljava/io/File;

    const-string v1, "recent_images"

    invoke-direct {v0, p1, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 90
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    const-string v2, "TaskPersister"

    if-eqz v1, :cond_47

    .line 91
    invoke-static {v0}, Landroid/os/FileUtils;->deleteContents(Ljava/io/File;)Z

    move-result v1

    if-eqz v1, :cond_33

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v1

    if-nez v1, :cond_47

    .line 92
    :cond_33
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failure deleting legacy images directory: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 96
    :cond_47
    new-instance v0, Ljava/io/File;

    const-string v1, "recent_tasks"

    invoke-direct {v0, p1, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 97
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p1

    if-eqz p1, :cond_74

    .line 98
    invoke-static {v0}, Landroid/os/FileUtils;->deleteContents(Ljava/io/File;)Z

    move-result p1

    if-eqz p1, :cond_60

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result p1

    if-nez p1, :cond_74

    .line 99
    :cond_60
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Failure deleting legacy tasks directory: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    :cond_74
    new-instance p1, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v0

    const-string v1, "system_de"

    invoke-direct {p1, v0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/android/server/wm/TaskPersister;->mTaskIdsDir:Ljava/io/File;

    .line 104
    iput-object p2, p0, Lcom/android/server/wm/TaskPersister;->mStackSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    .line 105
    iput-object p3, p0, Lcom/android/server/wm/TaskPersister;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 106
    iput-object p4, p0, Lcom/android/server/wm/TaskPersister;->mRecentTasks:Lcom/android/server/wm/RecentTasks;

    .line 107
    iput-object p5, p0, Lcom/android/server/wm/TaskPersister;->mPersisterQueue:Lcom/android/server/wm/PersisterQueue;

    .line 108
    iget-object p1, p0, Lcom/android/server/wm/TaskPersister;->mPersisterQueue:Lcom/android/server/wm/PersisterQueue;

    invoke-virtual {p1, p0}, Lcom/android/server/wm/PersisterQueue;->addListener(Lcom/android/server/wm/PersisterQueue$Listener;)V

    .line 109
    return-void
.end method

.method static synthetic access$000(I)Ljava/io/File;
    .registers 1

    .line 62
    invoke-static {p0}, Lcom/android/server/wm/TaskPersister;->getUserTasksDir(I)Ljava/io/File;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$100(Ljava/lang/String;)Z
    .registers 1

    .line 62
    invoke-static {p0}, Lcom/android/server/wm/TaskPersister;->createParentDirectory(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method private static createParentDirectory(Ljava/lang/String;)Z
    .registers 2

    .line 504
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object p0

    .line 505
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_18

    invoke-virtual {p0}, Ljava/io/File;->mkdirs()Z

    move-result p0

    if-eqz p0, :cond_16

    goto :goto_18

    :cond_16
    const/4 p0, 0x0

    goto :goto_19

    :cond_18
    :goto_18
    const/4 p0, 0x1

    :goto_19
    return p0
.end method

.method private fileToString(Ljava/io/File;)Ljava/lang/String;
    .registers 7

    .line 243
    invoke-static {}, Ljava/lang/System;->lineSeparator()Ljava/lang/String;

    move-result-object v0

    .line 245
    :try_start_4
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v2, Ljava/io/FileReader;

    invoke-direct {v2, p1}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-direct {v1, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 246
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-virtual {p1}, Ljava/io/File;->length()J

    move-result-wide v3

    long-to-int v3, v3

    mul-int/lit8 v3, v3, 0x2

    invoke-direct {v2, v3}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 248
    :goto_1a
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_33

    .line 249
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1a

    .line 251
    :cond_33
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V

    .line 252
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1
    :try_end_3a
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_3a} :catch_3b

    return-object p1

    .line 253
    :catch_3b
    move-exception v0

    .line 254
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Couldn\'t read file "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "TaskPersister"

    invoke-static {v0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 255
    const/4 p1, 0x0

    return-object p1
.end method

.method private getImageFromWriteQueue(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .registers 4

    .line 237
    iget-object v0, p0, Lcom/android/server/wm/TaskPersister;->mPersisterQueue:Lcom/android/server/wm/PersisterQueue;

    new-instance v1, Lcom/android/server/wm/-$$Lambda$TaskPersister$mW0HULrR8EtZ9La-pL9kLTnHSzk;

    invoke-direct {v1, p1}, Lcom/android/server/wm/-$$Lambda$TaskPersister$mW0HULrR8EtZ9La-pL9kLTnHSzk;-><init>(Ljava/lang/String;)V

    const-class p1, Lcom/android/server/wm/TaskPersister$ImageWriteQueueItem;

    invoke-virtual {v0, v1, p1}, Lcom/android/server/wm/PersisterQueue;->findLastItem(Ljava/util/function/Predicate;Ljava/lang/Class;)Lcom/android/server/wm/PersisterQueue$WriteQueueItem;

    move-result-object p1

    check-cast p1, Lcom/android/server/wm/TaskPersister$ImageWriteQueueItem;

    .line 239
    if-eqz p1, :cond_14

    iget-object p1, p1, Lcom/android/server/wm/TaskPersister$ImageWriteQueueItem;->mImage:Landroid/graphics/Bitmap;

    goto :goto_15

    :cond_14
    const/4 p1, 0x0

    :goto_15
    return-object p1
.end method

.method static getUserImagesDir(I)Ljava/io/File;
    .registers 3

    .line 500
    new-instance v0, Ljava/io/File;

    invoke-static {p0}, Landroid/os/Environment;->getDataSystemCeDirectory(I)Ljava/io/File;

    move-result-object p0

    const-string v1, "recent_images"

    invoke-direct {v0, p0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method private getUserPersistedTaskIdsFile(I)Ljava/io/File;
    .registers 4

    .line 488
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/android/server/wm/TaskPersister;->mTaskIdsDir:Ljava/io/File;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, v1, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 489
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p1

    if-nez p1, :cond_2d

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    move-result p1

    if-nez p1, :cond_2d

    .line 490
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Error while creating user directory: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "TaskPersister"

    invoke-static {v1, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 492
    :cond_2d
    new-instance p1, Ljava/io/File;

    const-string v1, "persisted_taskIds.txt"

    invoke-direct {p1, v0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object p1
.end method

.method private static getUserTasksDir(I)Ljava/io/File;
    .registers 3

    .line 496
    new-instance v0, Ljava/io/File;

    invoke-static {p0}, Landroid/os/Environment;->getDataSystemCeDirectory(I)Ljava/io/File;

    move-result-object p0

    const-string v1, "recent_tasks"

    invoke-direct {v0, p0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method static synthetic lambda$getImageFromWriteQueue$2(Ljava/lang/String;Lcom/android/server/wm/TaskPersister$ImageWriteQueueItem;)Z
    .registers 2

    .line 238
    iget-object p1, p1, Lcom/android/server/wm/TaskPersister$ImageWriteQueueItem;->mFilePath:Ljava/lang/String;

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method static synthetic lambda$removeThumbnails$0(Lcom/android/server/wm/TaskRecord;Lcom/android/server/wm/TaskPersister$ImageWriteQueueItem;)Z
    .registers 3

    .line 124
    new-instance v0, Ljava/io/File;

    iget-object p1, p1, Lcom/android/server/wm/TaskPersister$ImageWriteQueueItem;->mFilePath:Ljava/lang/String;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 125
    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p1

    iget p0, p0, Lcom/android/server/wm/TaskRecord;->taskId:I

    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method static synthetic lambda$wakeup$1(Lcom/android/server/wm/TaskRecord;Lcom/android/server/wm/TaskPersister$TaskWriteQueueItem;)Z
    .registers 2

    .line 192
    invoke-static {p1}, Lcom/android/server/wm/TaskPersister$TaskWriteQueueItem;->access$200(Lcom/android/server/wm/TaskPersister$TaskWriteQueueItem;)Lcom/android/server/wm/TaskRecord;

    move-result-object p1

    if-ne p0, p1, :cond_8

    const/4 p0, 0x1

    goto :goto_9

    :cond_8
    const/4 p0, 0x0

    :goto_9
    return p0
.end method

.method private removeObsoleteFiles(Landroid/util/ArraySet;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArraySet<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 471
    iget-object v0, p0, Lcom/android/server/wm/TaskPersister;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_5
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 474
    iget-object v1, p0, Lcom/android/server/wm/TaskPersister;->mRecentTasks:Lcom/android/server/wm/RecentTasks;

    invoke-virtual {v1}, Lcom/android/server/wm/RecentTasks;->usersWithRecentsLoadedLocked()[I

    move-result-object v1

    .line 475
    monitor-exit v0
    :try_end_f
    .catchall {:try_start_5 .. :try_end_f} :catchall_32

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 476
    array-length v0, v1

    const/4 v2, 0x0

    :goto_14
    if-ge v2, v0, :cond_31

    aget v3, v1, v2

    .line 477
    invoke-static {v3}, Lcom/android/server/wm/TaskPersister;->getUserImagesDir(I)Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v4

    invoke-static {p1, v4}, Lcom/android/server/wm/TaskPersister;->removeObsoleteFiles(Landroid/util/ArraySet;[Ljava/io/File;)V

    .line 478
    invoke-static {v3}, Lcom/android/server/wm/TaskPersister;->getUserTasksDir(I)Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v3

    invoke-static {p1, v3}, Lcom/android/server/wm/TaskPersister;->removeObsoleteFiles(Landroid/util/ArraySet;[Ljava/io/File;)V

    .line 476
    add-int/lit8 v2, v2, 0x1

    goto :goto_14

    .line 480
    :cond_31
    return-void

    .line 475
    :catchall_32
    move-exception p1

    :try_start_33
    monitor-exit v0
    :try_end_34
    .catchall {:try_start_33 .. :try_end_34} :catchall_32

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p1
.end method

.method private static removeObsoleteFiles(Landroid/util/ArraySet;[Ljava/io/File;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArraySet<",
            "Ljava/lang/Integer;",
            ">;[",
            "Ljava/io/File;",
            ")V"
        }
    .end annotation

    .line 422
    const-string v0, "TaskPersister"

    if-nez p1, :cond_a

    .line 423
    const-string p0, "File error accessing recents directory (directory doesn\'t exist?)."

    invoke-static {v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 424
    return-void

    .line 426
    :cond_a
    const/4 v1, 0x0

    move v2, v1

    :goto_c
    array-length v3, p1

    if-ge v2, v3, :cond_53

    .line 427
    aget-object v3, p1, v2

    .line 428
    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    .line 429
    const/16 v5, 0x5f

    invoke-virtual {v4, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v5

    .line 430
    if-lez v5, :cond_50

    .line 433
    :try_start_1d
    invoke-virtual {v4, v1, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4
    :try_end_25
    .catch Ljava/lang/Exception; {:try_start_1d .. :try_end_25} :catch_34

    .line 439
    nop

    .line 440
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {p0, v4}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_50

    .line 442
    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    goto :goto_50

    .line 435
    :catch_34
    move-exception v4

    .line 436
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "removeObsoleteFiles: Can\'t parse file="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 437
    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    .line 426
    :cond_50
    :goto_50
    add-int/lit8 v2, v2, 0x1

    goto :goto_c

    .line 446
    :cond_53
    return-void
.end method

.method private removeThumbnails(Lcom/android/server/wm/TaskRecord;)V
    .registers 4

    .line 122
    iget-object v0, p0, Lcom/android/server/wm/TaskPersister;->mPersisterQueue:Lcom/android/server/wm/PersisterQueue;

    new-instance v1, Lcom/android/server/wm/-$$Lambda$TaskPersister$8TcnoL7JFvpj8NzBRg91ns5JOBw;

    invoke-direct {v1, p1}, Lcom/android/server/wm/-$$Lambda$TaskPersister$8TcnoL7JFvpj8NzBRg91ns5JOBw;-><init>(Lcom/android/server/wm/TaskRecord;)V

    const-class p1, Lcom/android/server/wm/TaskPersister$ImageWriteQueueItem;

    invoke-virtual {v0, v1, p1}, Lcom/android/server/wm/PersisterQueue;->removeItems(Ljava/util/function/Predicate;Ljava/lang/Class;)V

    .line 128
    return-void
.end method

.method static restoreImage(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .registers 1

    .line 484
    invoke-static {p0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method private taskIdToTask(ILjava/util/ArrayList;)Lcom/android/server/wm/TaskRecord;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList<",
            "Lcom/android/server/wm/TaskRecord;",
            ">;)",
            "Lcom/android/server/wm/TaskRecord;"
        }
    .end annotation

    .line 260
    const/4 v0, 0x0

    if-gez p1, :cond_4

    .line 261
    return-object v0

    .line 263
    :cond_4
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_a
    if-ltz v1, :cond_1a

    .line 264
    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/TaskRecord;

    .line 265
    iget v3, v2, Lcom/android/server/wm/TaskRecord;->taskId:I

    if-ne v3, p1, :cond_17

    .line 266
    return-object v2

    .line 263
    :cond_17
    add-int/lit8 v1, v1, -0x1

    goto :goto_a

    .line 269
    :cond_1a
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Restore affiliation error looking for taskId="

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "TaskPersister"

    invoke-static {p2, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 270
    return-object v0
.end method

.method private writeTaskIdsFiles()V
    .registers 10

    .line 449
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 450
    iget-object v1, p0, Lcom/android/server/wm/TaskPersister;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v1, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v1

    :try_start_a
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 451
    iget-object v2, p0, Lcom/android/server/wm/TaskPersister;->mRecentTasks:Lcom/android/server/wm/RecentTasks;

    invoke-virtual {v2}, Lcom/android/server/wm/RecentTasks;->usersWithRecentsLoadedLocked()[I

    move-result-object v2

    array-length v3, v2

    const/4 v4, 0x0

    move v5, v4

    :goto_16
    if-ge v5, v3, :cond_40

    aget v6, v2, v5

    .line 452
    iget-object v7, p0, Lcom/android/server/wm/TaskPersister;->mRecentTasks:Lcom/android/server/wm/RecentTasks;

    invoke-virtual {v7, v6}, Lcom/android/server/wm/RecentTasks;->getTaskIdsForUser(I)Landroid/util/SparseBooleanArray;

    move-result-object v7

    .line 453
    iget-object v8, p0, Lcom/android/server/wm/TaskPersister;->mTaskIdsInFile:Landroid/util/SparseArray;

    invoke-virtual {v8, v6}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/util/SparseBooleanArray;

    .line 454
    if-eqz v8, :cond_31

    invoke-virtual {v8, v7}, Landroid/util/SparseBooleanArray;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_31

    .line 455
    goto :goto_3d

    .line 457
    :cond_31
    invoke-virtual {v7}, Landroid/util/SparseBooleanArray;->clone()Landroid/util/SparseBooleanArray;

    move-result-object v7

    .line 458
    iget-object v8, p0, Lcom/android/server/wm/TaskPersister;->mTaskIdsInFile:Landroid/util/SparseArray;

    invoke-virtual {v8, v6, v7}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 459
    invoke-virtual {v0, v6, v7}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 451
    :goto_3d
    add-int/lit8 v5, v5, 0x1

    goto :goto_16

    .line 462
    :cond_40
    monitor-exit v1
    :try_end_41
    .catchall {:try_start_a .. :try_end_41} :catchall_5c

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 463
    nop

    :goto_45
    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v4, v1, :cond_5b

    .line 464
    invoke-virtual {v0, v4}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/SparseBooleanArray;

    .line 465
    invoke-virtual {v0, v4}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v2

    .line 464
    invoke-virtual {p0, v1, v2}, Lcom/android/server/wm/TaskPersister;->writePersistedTaskIdsForUser(Landroid/util/SparseBooleanArray;I)V

    .line 463
    add-int/lit8 v4, v4, 0x1

    goto :goto_45

    .line 467
    :cond_5b
    return-void

    .line 462
    :catchall_5c
    move-exception v0

    :try_start_5d
    monitor-exit v1
    :try_end_5e
    .catchall {:try_start_5d .. :try_end_5e} :catchall_5c

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v0
.end method


# virtual methods
.method flush()V
    .registers 2

    .line 215
    iget-object v0, p0, Lcom/android/server/wm/TaskPersister;->mPersisterQueue:Lcom/android/server/wm/PersisterQueue;

    invoke-virtual {v0}, Lcom/android/server/wm/PersisterQueue;->flush()V

    .line 216
    return-void
.end method

.method getTaskDescriptionIcon(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .registers 3

    .line 229
    invoke-direct {p0, p1}, Lcom/android/server/wm/TaskPersister;->getImageFromWriteQueue(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 230
    if-eqz v0, :cond_7

    .line 231
    return-object v0

    .line 233
    :cond_7
    invoke-static {p1}, Lcom/android/server/wm/TaskPersister;->restoreImage(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1
.end method

.method loadPersistedTaskIdsForUser(I)Landroid/util/SparseBooleanArray;
    .registers 11

    .line 132
    iget-object v0, p0, Lcom/android/server/wm/TaskPersister;->mTaskIdsInFile:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_15

    .line 133
    iget-object v0, p0, Lcom/android/server/wm/TaskPersister;->mTaskIdsInFile:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/util/SparseBooleanArray;

    invoke-virtual {p1}, Landroid/util/SparseBooleanArray;->clone()Landroid/util/SparseBooleanArray;

    move-result-object p1

    return-object p1

    .line 135
    :cond_15
    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    .line 136
    iget-object v1, p0, Lcom/android/server/wm/TaskPersister;->mIoLock:Ljava/lang/Object;

    monitor-enter v1

    .line 137
    const/4 v2, 0x0

    .line 140
    :try_start_1e
    new-instance v3, Ljava/io/BufferedReader;

    new-instance v4, Ljava/io/FileReader;

    invoke-direct {p0, p1}, Lcom/android/server/wm/TaskPersister;->getUserPersistedTaskIdsFile(I)Ljava/io/File;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-direct {v3, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_2c
    .catch Ljava/io/FileNotFoundException; {:try_start_1e .. :try_end_2c} :catch_74
    .catch Ljava/lang/Exception; {:try_start_1e .. :try_end_2c} :catch_54
    .catchall {:try_start_1e .. :try_end_2c} :catchall_51

    .line 141
    :cond_2c
    :try_start_2c
    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_49

    .line 142
    const-string v4, "\\s+"

    invoke-virtual {v2, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    array-length v4, v2

    const/4 v5, 0x0

    :goto_3a
    if-ge v5, v4, :cond_2c

    aget-object v6, v2, v5

    .line 143
    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    .line 144
    const/4 v7, 0x1

    invoke-virtual {v0, v6, v7}, Landroid/util/SparseBooleanArray;->put(IZ)V
    :try_end_46
    .catch Ljava/io/FileNotFoundException; {:try_start_2c .. :try_end_46} :catch_4f
    .catch Ljava/lang/Exception; {:try_start_2c .. :try_end_46} :catch_4d
    .catchall {:try_start_2c .. :try_end_46} :catchall_6f

    .line 142
    add-int/lit8 v5, v5, 0x1

    goto :goto_3a

    .line 152
    :cond_49
    :goto_49
    :try_start_49
    invoke-static {v3}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V
    :try_end_4c
    .catchall {:try_start_49 .. :try_end_4c} :catchall_85

    goto :goto_79

    .line 149
    :catch_4d
    move-exception v2

    goto :goto_58

    .line 147
    :catch_4f
    move-exception v2

    goto :goto_76

    .line 152
    :catchall_51
    move-exception p1

    move-object v3, v2

    goto :goto_70

    .line 149
    :catch_54
    move-exception v3

    move-object v8, v3

    move-object v3, v2

    move-object v2, v8

    .line 150
    :goto_58
    :try_start_58
    const-string v4, "TaskPersister"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Error while reading taskIds file for user "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_6e
    .catchall {:try_start_58 .. :try_end_6e} :catchall_6f

    goto :goto_49

    .line 152
    :catchall_6f
    move-exception p1

    :goto_70
    :try_start_70
    invoke-static {v3}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    throw p1

    .line 147
    :catch_74
    move-exception v3

    move-object v3, v2

    .line 152
    :goto_76
    invoke-static {v3}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 153
    :goto_79
    nop

    .line 154
    monitor-exit v1
    :try_end_7b
    .catchall {:try_start_70 .. :try_end_7b} :catchall_85

    .line 155
    iget-object v1, p0, Lcom/android/server/wm/TaskPersister;->mTaskIdsInFile:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 156
    invoke-virtual {v0}, Landroid/util/SparseBooleanArray;->clone()Landroid/util/SparseBooleanArray;

    move-result-object p1

    return-object p1

    .line 154
    :catchall_85
    move-exception p1

    :try_start_86
    monitor-exit v1
    :try_end_87
    .catchall {:try_start_86 .. :try_end_87} :catchall_85

    throw p1
.end method

.method public onPreProcessItem(Z)V
    .registers 5

    .line 405
    if-eqz p1, :cond_35

    .line 407
    iget-object p1, p0, Lcom/android/server/wm/TaskPersister;->mTmpTaskIds:Landroid/util/ArraySet;

    invoke-virtual {p1}, Landroid/util/ArraySet;->clear()V

    .line 408
    iget-object p1, p0, Lcom/android/server/wm/TaskPersister;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object p1, p1, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter p1

    :try_start_c
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 410
    iget-object v0, p0, Lcom/android/server/wm/TaskPersister;->mRecentTasks:Lcom/android/server/wm/RecentTasks;

    iget-object v1, p0, Lcom/android/server/wm/TaskPersister;->mTmpTaskIds:Landroid/util/ArraySet;

    invoke-virtual {v0, v1}, Lcom/android/server/wm/RecentTasks;->getPersistableTaskIds(Landroid/util/ArraySet;)V

    .line 411
    iget-object v0, p0, Lcom/android/server/wm/TaskPersister;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, p0, Lcom/android/server/wm/TaskPersister;->mTmpTaskIds:Landroid/util/ArraySet;

    iget-object v2, p0, Lcom/android/server/wm/TaskPersister;->mRecentTasks:Lcom/android/server/wm/RecentTasks;

    .line 412
    invoke-virtual {v2}, Lcom/android/server/wm/RecentTasks;->usersWithRecentsLoadedLocked()[I

    move-result-object v2

    .line 411
    invoke-virtual {v0, v1, v2}, Lcom/android/server/wm/WindowManagerService;->removeObsoleteTaskFiles(Landroid/util/ArraySet;[I)V

    .line 413
    monitor-exit p1
    :try_end_26
    .catchall {:try_start_c .. :try_end_26} :catchall_2f

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 414
    iget-object p1, p0, Lcom/android/server/wm/TaskPersister;->mTmpTaskIds:Landroid/util/ArraySet;

    invoke-direct {p0, p1}, Lcom/android/server/wm/TaskPersister;->removeObsoleteFiles(Landroid/util/ArraySet;)V

    goto :goto_35

    .line 413
    :catchall_2f
    move-exception v0

    :try_start_30
    monitor-exit p1
    :try_end_31
    .catchall {:try_start_30 .. :try_end_31} :catchall_2f

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v0

    .line 416
    :cond_35
    :goto_35
    invoke-direct {p0}, Lcom/android/server/wm/TaskPersister;->writeTaskIdsFiles()V

    .line 417
    return-void
.end method

.method restoreTasksForUserLocked(ILandroid/util/SparseBooleanArray;)Ljava/util/List;
    .registers 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/util/SparseBooleanArray;",
            ")",
            "Ljava/util/List<",
            "Lcom/android/server/wm/TaskRecord;",
            ">;"
        }
    .end annotation

    .line 274
    move-object/from16 v1, p0

    move/from16 v2, p1

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 275
    new-instance v4, Landroid/util/ArraySet;

    invoke-direct {v4}, Landroid/util/ArraySet;-><init>()V

    .line 277
    invoke-static/range {p1 .. p1}, Lcom/android/server/wm/TaskPersister;->getUserTasksDir(I)Ljava/io/File;

    move-result-object v5

    .line 279
    invoke-virtual {v5}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v6

    .line 280
    const-string v7, "TaskPersister"

    if-nez v6, :cond_2f

    .line 281
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "restoreTasksForUserLocked: Unable to list files from "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 282
    return-object v3

    .line 285
    :cond_2f
    const/4 v8, 0x0

    move v9, v8

    :goto_31
    array-length v0, v6

    const/4 v10, 0x1

    if-ge v9, v0, :cond_1b6

    .line 286
    aget-object v11, v6, v9

    .line 292
    invoke-virtual {v11}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v12, "_task.xml"

    invoke-virtual {v0, v12}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_47

    .line 293
    move-object/from16 v12, p2

    goto/16 :goto_1b1

    .line 296
    :cond_47
    :try_start_47
    invoke-virtual {v11}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    .line 298
    invoke-virtual {v11}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v13

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v12

    sub-int/2addr v13, v12

    .line 296
    invoke-virtual {v0, v8, v13}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0
    :try_end_60
    .catch Ljava/lang/NumberFormatException; {:try_start_47 .. :try_end_60} :catch_1a8

    .line 299
    move-object/from16 v12, p2

    :try_start_62
    invoke-virtual {v12, v0, v8}, Landroid/util/SparseBooleanArray;->get(IZ)Z

    move-result v13

    if-eqz v13, :cond_83

    .line 300
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Task #"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " has already been created so we don\'t restore again"

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_81
    .catch Ljava/lang/NumberFormatException; {:try_start_62 .. :try_end_81} :catch_1a6

    .line 302
    goto/16 :goto_1b1

    .line 307
    :cond_83
    nop

    .line 309
    const/4 v13, 0x0

    .line 310
    nop

    .line 312
    :try_start_86
    new-instance v14, Ljava/io/BufferedReader;

    new-instance v0, Ljava/io/FileReader;

    invoke-direct {v0, v11}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-direct {v14, v0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_90
    .catch Ljava/lang/Exception; {:try_start_86 .. :try_end_90} :catch_166
    .catchall {:try_start_86 .. :try_end_90} :catchall_163

    .line 313
    :try_start_90
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v0

    .line 314
    invoke-interface {v0, v14}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/Reader;)V

    .line 317
    :goto_97
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v13

    if-eq v13, v10, :cond_15a

    const/4 v15, 0x3

    if-eq v13, v15, :cond_15a

    .line 319
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v15

    .line 320
    const/4 v8, 0x2

    if-ne v13, v8, :cond_153

    .line 322
    const-string v8, "task"

    invoke-virtual {v8, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_137

    .line 323
    iget-object v8, v1, Lcom/android/server/wm/TaskPersister;->mStackSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    invoke-static {v0, v8}, Lcom/android/server/wm/TaskRecord;->restoreFromXml(Lorg/xmlpull/v1/XmlPullParser;Lcom/android/server/wm/ActivityStackSupervisor;)Lcom/android/server/wm/TaskRecord;

    move-result-object v8

    .line 326
    if-eqz v8, :cond_116

    .line 332
    iget v13, v8, Lcom/android/server/wm/TaskRecord;->taskId:I

    .line 333
    iget-object v15, v1, Lcom/android/server/wm/TaskPersister;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v15, v15, Lcom/android/server/wm/ActivityTaskManagerService;->mRootActivityContainer:Lcom/android/server/wm/RootActivityContainer;

    invoke-virtual {v15, v13, v10}, Lcom/android/server/wm/RootActivityContainer;->anyTaskForId(II)Lcom/android/server/wm/TaskRecord;

    move-result-object v15

    if-eqz v15, :cond_dd

    .line 336
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Existing task with taskId "

    invoke-virtual {v8, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v13, "found"

    invoke-virtual {v8, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_115

    .line 337
    :cond_dd
    iget v15, v8, Lcom/android/server/wm/TaskRecord;->userId:I

    if-eq v2, v15, :cond_104

    .line 339
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Task with userId "

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v8, v8, Lcom/android/server/wm/TaskRecord;->userId:I

    invoke-virtual {v13, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, " found in "

    invoke-virtual {v13, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 340
    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v13, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 339
    invoke-static {v7, v8}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_115

    .line 343
    :cond_104
    iget-object v15, v1, Lcom/android/server/wm/TaskPersister;->mStackSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    invoke-virtual {v15, v13, v2}, Lcom/android/server/wm/ActivityStackSupervisor;->setNextTaskIdForUserLocked(II)V

    .line 344
    iput-boolean v10, v8, Lcom/android/server/wm/TaskRecord;->isPersistable:Z

    .line 345
    invoke-virtual {v3, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 346
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v4, v8}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 348
    :goto_115
    goto :goto_136

    .line 349
    :cond_116
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "restoreTasksForUserLocked: Unable to restore taskFile="

    invoke-virtual {v8, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v13, ": "

    invoke-virtual {v8, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 350
    invoke-direct {v1, v11}, Lcom/android/server/wm/TaskPersister;->fileToString(Ljava/io/File;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v8, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 349
    invoke-static {v7, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 352
    :goto_136
    goto :goto_153

    .line 353
    :cond_137
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "restoreTasksForUserLocked: Unknown xml event="

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, " name="

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 357
    :cond_153
    :goto_153
    invoke-static {v0}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V
    :try_end_156
    .catch Ljava/lang/Exception; {:try_start_90 .. :try_end_156} :catch_160
    .catchall {:try_start_90 .. :try_end_156} :catchall_15e

    .line 358
    const/4 v8, 0x0

    const/4 v10, 0x1

    goto/16 :goto_97

    .line 364
    :cond_15a
    invoke-static {v14}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 365
    goto :goto_1b1

    .line 364
    :catchall_15e
    move-exception v0

    goto :goto_1a1

    .line 359
    :catch_160
    move-exception v0

    move-object v13, v14

    goto :goto_167

    .line 364
    :catchall_163
    move-exception v0

    move-object v14, v13

    goto :goto_1a1

    .line 359
    :catch_166
    move-exception v0

    .line 360
    :goto_167
    :try_start_167
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Unable to parse "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v10, ". Error "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 361
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Failing file: "

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {v1, v11}, Lcom/android/server/wm/TaskPersister;->fileToString(Ljava/io/File;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_198
    .catchall {:try_start_167 .. :try_end_198} :catchall_163

    .line 362
    nop

    .line 364
    invoke-static {v13}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 365
    nop

    .line 367
    invoke-virtual {v11}, Ljava/io/File;->delete()Z

    goto :goto_1b1

    .line 364
    :goto_1a1
    invoke-static {v14}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 365
    nop

    .line 367
    throw v0

    .line 304
    :catch_1a6
    move-exception v0

    goto :goto_1ab

    :catch_1a8
    move-exception v0

    move-object/from16 v12, p2

    .line 305
    :goto_1ab
    const-string v8, "Unexpected task file name"

    invoke-static {v7, v8, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 306
    nop

    .line 285
    :goto_1b1
    add-int/lit8 v9, v9, 0x1

    const/4 v8, 0x0

    goto/16 :goto_31

    .line 373
    :cond_1b6
    invoke-virtual {v5}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    invoke-static {v4, v0}, Lcom/android/server/wm/TaskPersister;->removeObsoleteFiles(Landroid/util/ArraySet;[Ljava/io/File;)V

    .line 377
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v2, 0x1

    sub-int/2addr v0, v2

    :goto_1c3
    if-ltz v0, :cond_1e0

    .line 378
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/TaskRecord;

    .line 379
    iget v4, v2, Lcom/android/server/wm/TaskRecord;->mPrevAffiliateTaskId:I

    invoke-direct {v1, v4, v3}, Lcom/android/server/wm/TaskPersister;->taskIdToTask(ILjava/util/ArrayList;)Lcom/android/server/wm/TaskRecord;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/android/server/wm/TaskRecord;->setPrevAffiliate(Lcom/android/server/wm/TaskRecord;)V

    .line 380
    iget v4, v2, Lcom/android/server/wm/TaskRecord;->mNextAffiliateTaskId:I

    invoke-direct {v1, v4, v3}, Lcom/android/server/wm/TaskPersister;->taskIdToTask(ILjava/util/ArrayList;)Lcom/android/server/wm/TaskRecord;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/android/server/wm/TaskRecord;->setNextAffiliate(Lcom/android/server/wm/TaskRecord;)V

    .line 377
    add-int/lit8 v0, v0, -0x1

    goto :goto_1c3

    .line 383
    :cond_1e0
    new-instance v0, Lcom/android/server/wm/TaskPersister$1;

    invoke-direct {v0, v1}, Lcom/android/server/wm/TaskPersister$1;-><init>(Lcom/android/server/wm/TaskPersister;)V

    invoke-static {v3, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 396
    return-object v3
.end method

.method saveImage(Landroid/graphics/Bitmap;Ljava/lang/String;)V
    .registers 5

    .line 219
    iget-object v0, p0, Lcom/android/server/wm/TaskPersister;->mPersisterQueue:Lcom/android/server/wm/PersisterQueue;

    new-instance v1, Lcom/android/server/wm/TaskPersister$ImageWriteQueueItem;

    invoke-direct {v1, p2, p1}, Lcom/android/server/wm/TaskPersister$ImageWriteQueueItem;-><init>(Ljava/lang/String;Landroid/graphics/Bitmap;)V

    const/4 p1, 0x0

    invoke-virtual {v0, v1, p1}, Lcom/android/server/wm/PersisterQueue;->updateLastOrAddItem(Lcom/android/server/wm/PersisterQueue$WriteQueueItem;Z)V

    .line 225
    return-void
.end method

.method unloadUserDataFromMemory(I)V
    .registers 3

    .line 185
    iget-object v0, p0, Lcom/android/server/wm/TaskPersister;->mTaskIdsInFile:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->delete(I)V

    .line 186
    return-void
.end method

.method wakeup(Lcom/android/server/wm/TaskRecord;Z)V
    .registers 7

    .line 189
    iget-object v0, p0, Lcom/android/server/wm/TaskPersister;->mPersisterQueue:Lcom/android/server/wm/PersisterQueue;

    monitor-enter v0

    .line 190
    if-eqz p1, :cond_30

    .line 191
    :try_start_5
    iget-object v1, p0, Lcom/android/server/wm/TaskPersister;->mPersisterQueue:Lcom/android/server/wm/PersisterQueue;

    new-instance v2, Lcom/android/server/wm/-$$Lambda$TaskPersister$xdLXwftXa6l84QTg1zpxMnmtQ0g;

    invoke-direct {v2, p1}, Lcom/android/server/wm/-$$Lambda$TaskPersister$xdLXwftXa6l84QTg1zpxMnmtQ0g;-><init>(Lcom/android/server/wm/TaskRecord;)V

    const-class v3, Lcom/android/server/wm/TaskPersister$TaskWriteQueueItem;

    invoke-virtual {v1, v2, v3}, Lcom/android/server/wm/PersisterQueue;->findLastItem(Ljava/util/function/Predicate;Ljava/lang/Class;)Lcom/android/server/wm/PersisterQueue$WriteQueueItem;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/TaskPersister$TaskWriteQueueItem;

    .line 193
    if-eqz v1, :cond_1d

    iget-boolean v2, p1, Lcom/android/server/wm/TaskRecord;->inRecents:Z

    if-nez v2, :cond_1d

    .line 194
    invoke-direct {p0, p1}, Lcom/android/server/wm/TaskPersister;->removeThumbnails(Lcom/android/server/wm/TaskRecord;)V

    .line 197
    :cond_1d
    if-nez v1, :cond_2f

    iget-boolean v1, p1, Lcom/android/server/wm/TaskRecord;->isPersistable:Z

    if-eqz v1, :cond_2f

    .line 198
    iget-object v1, p0, Lcom/android/server/wm/TaskPersister;->mPersisterQueue:Lcom/android/server/wm/PersisterQueue;

    new-instance v2, Lcom/android/server/wm/TaskPersister$TaskWriteQueueItem;

    iget-object v3, p0, Lcom/android/server/wm/TaskPersister;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-direct {v2, p1, v3}, Lcom/android/server/wm/TaskPersister$TaskWriteQueueItem;-><init>(Lcom/android/server/wm/TaskRecord;Lcom/android/server/wm/ActivityTaskManagerService;)V

    invoke-virtual {v1, v2, p2}, Lcom/android/server/wm/PersisterQueue;->addItem(Lcom/android/server/wm/PersisterQueue$WriteQueueItem;Z)V

    .line 200
    :cond_2f
    goto :goto_37

    .line 203
    :cond_30
    iget-object p1, p0, Lcom/android/server/wm/TaskPersister;->mPersisterQueue:Lcom/android/server/wm/PersisterQueue;

    sget-object v1, Lcom/android/server/wm/PersisterQueue;->EMPTY_ITEM:Lcom/android/server/wm/PersisterQueue$WriteQueueItem;

    invoke-virtual {p1, v1, p2}, Lcom/android/server/wm/PersisterQueue;->addItem(Lcom/android/server/wm/PersisterQueue$WriteQueueItem;Z)V

    .line 209
    :goto_37
    monitor-exit v0
    :try_end_38
    .catchall {:try_start_5 .. :try_end_38} :catchall_3e

    .line 211
    iget-object p1, p0, Lcom/android/server/wm/TaskPersister;->mPersisterQueue:Lcom/android/server/wm/PersisterQueue;

    invoke-virtual {p1}, Lcom/android/server/wm/PersisterQueue;->yieldIfQueueTooDeep()V

    .line 212
    return-void

    .line 209
    :catchall_3e
    move-exception p1

    :try_start_3f
    monitor-exit v0
    :try_end_40
    .catchall {:try_start_3f .. :try_end_40} :catchall_3e

    throw p1
.end method

.method writePersistedTaskIdsForUser(Landroid/util/SparseBooleanArray;I)V
    .registers 8
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 162
    if-gez p2, :cond_3

    .line 163
    return-void

    .line 165
    :cond_3
    invoke-direct {p0, p2}, Lcom/android/server/wm/TaskPersister;->getUserPersistedTaskIdsFile(I)Ljava/io/File;

    move-result-object v0

    .line 166
    iget-object v1, p0, Lcom/android/server/wm/TaskPersister;->mIoLock:Ljava/lang/Object;

    monitor-enter v1

    .line 167
    const/4 v2, 0x0

    .line 169
    :try_start_b
    new-instance v3, Ljava/io/BufferedWriter;

    new-instance v4, Ljava/io/FileWriter;

    invoke-direct {v4, v0}, Ljava/io/FileWriter;-><init>(Ljava/io/File;)V

    invoke-direct {v3, v4}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_15} :catch_3f
    .catchall {:try_start_b .. :try_end_15} :catchall_3d

    .line 170
    const/4 v0, 0x0

    :goto_16
    :try_start_16
    invoke-virtual {p1}, Landroid/util/SparseBooleanArray;->size()I

    move-result v2

    if-ge v0, v2, :cond_33

    .line 171
    invoke-virtual {p1, v0}, Landroid/util/SparseBooleanArray;->valueAt(I)Z

    move-result v2

    if-eqz v2, :cond_30

    .line 172
    invoke-virtual {p1, v0}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 173
    invoke-virtual {v3}, Ljava/io/BufferedWriter;->newLine()V
    :try_end_30
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_30} :catch_3a
    .catchall {:try_start_16 .. :try_end_30} :catchall_37

    .line 170
    :cond_30
    add-int/lit8 v0, v0, 0x1

    goto :goto_16

    .line 179
    :cond_33
    :try_start_33
    invoke-static {v3}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V
    :try_end_36
    .catchall {:try_start_33 .. :try_end_36} :catchall_60

    .line 180
    :goto_36
    goto :goto_5a

    .line 179
    :catchall_37
    move-exception p1

    move-object v2, v3

    goto :goto_5c

    .line 176
    :catch_3a
    move-exception p1

    move-object v2, v3

    goto :goto_40

    .line 179
    :catchall_3d
    move-exception p1

    goto :goto_5c

    .line 176
    :catch_3f
    move-exception p1

    .line 177
    :goto_40
    :try_start_40
    const-string v0, "TaskPersister"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error while writing taskIds file for user "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_56
    .catchall {:try_start_40 .. :try_end_56} :catchall_3d

    .line 179
    :try_start_56
    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    goto :goto_36

    .line 181
    :goto_5a
    monitor-exit v1

    .line 182
    return-void

    .line 179
    :goto_5c
    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    throw p1

    .line 181
    :catchall_60
    move-exception p1

    monitor-exit v1
    :try_end_62
    .catchall {:try_start_56 .. :try_end_62} :catchall_60

    throw p1
.end method
