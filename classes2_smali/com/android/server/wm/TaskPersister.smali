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
.field static final DEBUG:Z = true

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
    .param p1, "workingDir"  # Ljava/io/File;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 115
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 80
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/TaskPersister;->mTaskIdsInFile:Landroid/util/SparseArray;

    .line 83
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/TaskPersister;->mIoLock:Ljava/lang/Object;

    .line 86
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/TaskPersister;->mTmpTaskIds:Landroid/util/ArraySet;

    .line 116
    iput-object p1, p0, Lcom/android/server/wm/TaskPersister;->mTaskIdsDir:Ljava/io/File;

    .line 117
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/wm/TaskPersister;->mStackSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    .line 118
    iput-object v0, p0, Lcom/android/server/wm/TaskPersister;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 119
    iput-object v0, p0, Lcom/android/server/wm/TaskPersister;->mRecentTasks:Lcom/android/server/wm/RecentTasks;

    .line 120
    new-instance v0, Lcom/android/server/wm/PersisterQueue;

    invoke-direct {v0}, Lcom/android/server/wm/PersisterQueue;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/TaskPersister;->mPersisterQueue:Lcom/android/server/wm/PersisterQueue;

    .line 121
    iget-object v0, p0, Lcom/android/server/wm/TaskPersister;->mPersisterQueue:Lcom/android/server/wm/PersisterQueue;

    invoke-virtual {v0, p0}, Lcom/android/server/wm/PersisterQueue;->addListener(Lcom/android/server/wm/PersisterQueue$Listener;)V

    .line 122
    return-void
.end method

.method constructor <init>(Ljava/io/File;Lcom/android/server/wm/ActivityStackSupervisor;Lcom/android/server/wm/ActivityTaskManagerService;Lcom/android/server/wm/RecentTasks;Lcom/android/server/wm/PersisterQueue;)V
    .registers 11
    .param p1, "systemDir"  # Ljava/io/File;
    .param p2, "stackSupervisor"  # Lcom/android/server/wm/ActivityStackSupervisor;
    .param p3, "service"  # Lcom/android/server/wm/ActivityTaskManagerService;
    .param p4, "recentTasks"  # Lcom/android/server/wm/RecentTasks;
    .param p5, "persisterQueue"  # Lcom/android/server/wm/PersisterQueue;

    .line 90
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 80
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/TaskPersister;->mTaskIdsInFile:Landroid/util/SparseArray;

    .line 83
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/TaskPersister;->mIoLock:Ljava/lang/Object;

    .line 86
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/TaskPersister;->mTmpTaskIds:Landroid/util/ArraySet;

    .line 92
    new-instance v0, Ljava/io/File;

    const-string v1, "recent_images"

    invoke-direct {v0, p1, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 93
    .local v0, "legacyImagesDir":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    const-string v2, "TaskPersister"

    if-eqz v1, :cond_47

    .line 94
    invoke-static {v0}, Landroid/os/FileUtils;->deleteContents(Ljava/io/File;)Z

    move-result v1

    if-eqz v1, :cond_33

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v1

    if-nez v1, :cond_47

    .line 95
    :cond_33
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failure deleting legacy images directory: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 99
    :cond_47
    new-instance v1, Ljava/io/File;

    const-string v3, "recent_tasks"

    invoke-direct {v1, p1, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 100
    .local v1, "legacyTasksDir":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_74

    .line 101
    invoke-static {v1}, Landroid/os/FileUtils;->deleteContents(Ljava/io/File;)Z

    move-result v3

    if-eqz v3, :cond_60

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    move-result v3

    if-nez v3, :cond_74

    .line 102
    :cond_60
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failure deleting legacy tasks directory: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 106
    :cond_74
    new-instance v2, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v3

    const-string v4, "system_de"

    invoke-direct {v2, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v2, p0, Lcom/android/server/wm/TaskPersister;->mTaskIdsDir:Ljava/io/File;

    .line 107
    iput-object p2, p0, Lcom/android/server/wm/TaskPersister;->mStackSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    .line 108
    iput-object p3, p0, Lcom/android/server/wm/TaskPersister;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 109
    iput-object p4, p0, Lcom/android/server/wm/TaskPersister;->mRecentTasks:Lcom/android/server/wm/RecentTasks;

    .line 110
    iput-object p5, p0, Lcom/android/server/wm/TaskPersister;->mPersisterQueue:Lcom/android/server/wm/PersisterQueue;

    .line 111
    iget-object v2, p0, Lcom/android/server/wm/TaskPersister;->mPersisterQueue:Lcom/android/server/wm/PersisterQueue;

    invoke-virtual {v2, p0}, Lcom/android/server/wm/PersisterQueue;->addListener(Lcom/android/server/wm/PersisterQueue$Listener;)V

    .line 112
    return-void
.end method

.method static synthetic access$000(I)Ljava/io/File;
    .registers 2
    .param p0, "x0"  # I

    .line 62
    invoke-static {p0}, Lcom/android/server/wm/TaskPersister;->getUserTasksDir(I)Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(Ljava/lang/String;)Z
    .registers 2
    .param p0, "x0"  # Ljava/lang/String;

    .line 62
    invoke-static {p0}, Lcom/android/server/wm/TaskPersister;->createParentDirectory(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private static createParentDirectory(Ljava/lang/String;)Z
    .registers 3
    .param p0, "filePath"  # Ljava/lang/String;

    .line 507
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    .line 508
    .local v0, "parentDir":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_18

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    move-result v1

    if-eqz v1, :cond_16

    goto :goto_18

    :cond_16
    const/4 v1, 0x0

    goto :goto_19

    :cond_18
    :goto_18
    const/4 v1, 0x1

    :goto_19
    return v1
.end method

.method private fileToString(Ljava/io/File;)Ljava/lang/String;
    .registers 7
    .param p1, "file"  # Ljava/io/File;

    .line 246
    invoke-static {}, Ljava/lang/System;->lineSeparator()Ljava/lang/String;

    move-result-object v0

    .line 248
    .local v0, "newline":Ljava/lang/String;
    :try_start_4
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v2, Ljava/io/FileReader;

    invoke-direct {v2, p1}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-direct {v1, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 249
    .local v1, "reader":Ljava/io/BufferedReader;
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-virtual {p1}, Ljava/io/File;->length()J

    move-result-wide v3

    long-to-int v3, v3

    mul-int/lit8 v3, v3, 0x2

    invoke-direct {v2, v3}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 251
    .local v2, "sb":Ljava/lang/StringBuffer;
    :goto_1a
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    move-object v4, v3

    .local v4, "line":Ljava/lang/String;
    if-eqz v3, :cond_34

    .line 252
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1a

    .line 254
    :cond_34
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V

    .line 255
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3
    :try_end_3b
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_3b} :catch_3c

    return-object v3

    .line 256
    .end local v1  # "reader":Ljava/io/BufferedReader;
    .end local v2  # "sb":Ljava/lang/StringBuffer;
    .end local v4  # "line":Ljava/lang/String;
    :catch_3c
    move-exception v1

    .line 257
    .local v1, "ioe":Ljava/io/IOException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Couldn\'t read file "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "TaskPersister"

    invoke-static {v3, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 258
    const/4 v2, 0x0

    return-object v2
.end method

.method private getImageFromWriteQueue(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .registers 5
    .param p1, "filePath"  # Ljava/lang/String;

    .line 240
    iget-object v0, p0, Lcom/android/server/wm/TaskPersister;->mPersisterQueue:Lcom/android/server/wm/PersisterQueue;

    new-instance v1, Lcom/android/server/wm/-$$Lambda$TaskPersister$mW0HULrR8EtZ9La-pL9kLTnHSzk;

    invoke-direct {v1, p1}, Lcom/android/server/wm/-$$Lambda$TaskPersister$mW0HULrR8EtZ9La-pL9kLTnHSzk;-><init>(Ljava/lang/String;)V

    const-class v2, Lcom/android/server/wm/TaskPersister$ImageWriteQueueItem;

    invoke-virtual {v0, v1, v2}, Lcom/android/server/wm/PersisterQueue;->findLastItem(Ljava/util/function/Predicate;Ljava/lang/Class;)Lcom/android/server/wm/PersisterQueue$WriteQueueItem;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/TaskPersister$ImageWriteQueueItem;

    .line 242
    .local v0, "item":Lcom/android/server/wm/TaskPersister$ImageWriteQueueItem;
    if-eqz v0, :cond_14

    iget-object v1, v0, Lcom/android/server/wm/TaskPersister$ImageWriteQueueItem;->mImage:Landroid/graphics/Bitmap;

    goto :goto_15

    :cond_14
    const/4 v1, 0x0

    :goto_15
    return-object v1
.end method

.method static getUserImagesDir(I)Ljava/io/File;
    .registers 4
    .param p0, "userId"  # I

    .line 503
    new-instance v0, Ljava/io/File;

    invoke-static {p0}, Landroid/os/Environment;->getDataSystemCeDirectory(I)Ljava/io/File;

    move-result-object v1

    const-string v2, "recent_images"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method private getUserPersistedTaskIdsFile(I)Ljava/io/File;
    .registers 5
    .param p1, "userId"  # I

    .line 491
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/android/server/wm/TaskPersister;->mTaskIdsDir:Ljava/io/File;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 492
    .local v0, "userTaskIdsDir":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_2d

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    move-result v1

    if-nez v1, :cond_2d

    .line 493
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error while creating user directory: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "TaskPersister"

    invoke-static {v2, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 495
    :cond_2d
    new-instance v1, Ljava/io/File;

    const-string v2, "persisted_taskIds.txt"

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v1
.end method

.method private static getUserTasksDir(I)Ljava/io/File;
    .registers 4
    .param p0, "userId"  # I

    .line 499
    new-instance v0, Ljava/io/File;

    invoke-static {p0}, Landroid/os/Environment;->getDataSystemCeDirectory(I)Ljava/io/File;

    move-result-object v1

    const-string v2, "recent_tasks"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method static synthetic lambda$getImageFromWriteQueue$2(Ljava/lang/String;Lcom/android/server/wm/TaskPersister$ImageWriteQueueItem;)Z
    .registers 3
    .param p0, "filePath"  # Ljava/lang/String;
    .param p1, "queueItem"  # Lcom/android/server/wm/TaskPersister$ImageWriteQueueItem;

    .line 241
    iget-object v0, p1, Lcom/android/server/wm/TaskPersister$ImageWriteQueueItem;->mFilePath:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method static synthetic lambda$removeThumbnails$0(Lcom/android/server/wm/TaskRecord;Lcom/android/server/wm/TaskPersister$ImageWriteQueueItem;)Z
    .registers 5
    .param p0, "task"  # Lcom/android/server/wm/TaskRecord;
    .param p1, "item"  # Lcom/android/server/wm/TaskPersister$ImageWriteQueueItem;

    .line 127
    new-instance v0, Ljava/io/File;

    iget-object v1, p1, Lcom/android/server/wm/TaskPersister$ImageWriteQueueItem;->mFilePath:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 128
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Lcom/android/server/wm/TaskRecord;->taskId:I

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    return v1
.end method

.method static synthetic lambda$wakeup$1(Lcom/android/server/wm/TaskRecord;Lcom/android/server/wm/TaskPersister$TaskWriteQueueItem;)Z
    .registers 3
    .param p0, "task"  # Lcom/android/server/wm/TaskRecord;
    .param p1, "queueItem"  # Lcom/android/server/wm/TaskPersister$TaskWriteQueueItem;

    .line 195
    invoke-static {p1}, Lcom/android/server/wm/TaskPersister$TaskWriteQueueItem;->access$200(Lcom/android/server/wm/TaskPersister$TaskWriteQueueItem;)Lcom/android/server/wm/TaskRecord;

    move-result-object v0

    if-ne p0, v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
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

    .line 474
    .local p1, "persistentTaskIds":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/Integer;>;"
    iget-object v0, p0, Lcom/android/server/wm/TaskPersister;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_5
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 477
    iget-object v1, p0, Lcom/android/server/wm/TaskPersister;->mRecentTasks:Lcom/android/server/wm/RecentTasks;

    invoke-virtual {v1}, Lcom/android/server/wm/RecentTasks;->usersWithRecentsLoadedLocked()[I

    move-result-object v1

    .line 478
    .local v1, "candidateUserIds":[I
    monitor-exit v0
    :try_end_f
    .catchall {:try_start_5 .. :try_end_f} :catchall_32

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 479
    array-length v0, v1

    const/4 v2, 0x0

    :goto_14
    if-ge v2, v0, :cond_31

    aget v3, v1, v2

    .line 480
    .local v3, "userId":I
    invoke-static {v3}, Lcom/android/server/wm/TaskPersister;->getUserImagesDir(I)Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v4

    invoke-static {p1, v4}, Lcom/android/server/wm/TaskPersister;->removeObsoleteFiles(Landroid/util/ArraySet;[Ljava/io/File;)V

    .line 481
    invoke-static {v3}, Lcom/android/server/wm/TaskPersister;->getUserTasksDir(I)Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v4

    invoke-static {p1, v4}, Lcom/android/server/wm/TaskPersister;->removeObsoleteFiles(Landroid/util/ArraySet;[Ljava/io/File;)V

    .line 479
    .end local v3  # "userId":I
    add-int/lit8 v2, v2, 0x1

    goto :goto_14

    .line 483
    :cond_31
    return-void

    .line 478
    .end local v1  # "candidateUserIds":[I
    :catchall_32
    move-exception v1

    :try_start_33
    monitor-exit v0
    :try_end_34
    .catchall {:try_start_33 .. :try_end_34} :catchall_32

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method private static removeObsoleteFiles(Landroid/util/ArraySet;[Ljava/io/File;)V
    .registers 10
    .param p1, "files"  # [Ljava/io/File;
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

    .line 423
    .local p0, "persistentTaskIds":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/Integer;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "removeObsoleteFiles: persistentTaskIds="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " files="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TaskPersister"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 425
    if-nez p1, :cond_26

    .line 426
    const-string v0, "File error accessing recents directory (directory doesn\'t exist?)."

    invoke-static {v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 427
    return-void

    .line 429
    :cond_26
    const/4 v0, 0x0

    .local v0, "fileNdx":I
    :goto_27
    array-length v2, p1

    if-ge v0, v2, :cond_9b

    .line 430
    aget-object v2, p1, v0

    .line 431
    .local v2, "file":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    .line 432
    .local v3, "filename":Ljava/lang/String;
    const/16 v4, 0x5f

    invoke-virtual {v3, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    .line 433
    .local v4, "taskIdEnd":I
    if-lez v4, :cond_98

    .line 436
    const/4 v5, 0x0

    :try_start_39
    invoke-virtual {v3, v5, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    .line 437
    .local v5, "taskId":I
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "removeObsoleteFiles: Found taskId="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_55
    .catch Ljava/lang/Exception; {:try_start_39 .. :try_end_55} :catch_7c

    .line 442
    nop

    .line 443
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {p0, v6}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_98

    .line 444
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "removeObsoleteFiles: deleting file="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 445
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    goto :goto_98

    .line 438
    .end local v5  # "taskId":I
    :catch_7c
    move-exception v5

    .line 439
    .local v5, "e":Ljava/lang/Exception;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "removeObsoleteFiles: Can\'t parse file="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v6}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 440
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 429
    .end local v2  # "file":Ljava/io/File;
    .end local v3  # "filename":Ljava/lang/String;
    .end local v4  # "taskIdEnd":I
    .end local v5  # "e":Ljava/lang/Exception;
    :cond_98
    :goto_98
    add-int/lit8 v0, v0, 0x1

    goto :goto_27

    .line 449
    .end local v0  # "fileNdx":I
    :cond_9b
    return-void
.end method

.method private removeThumbnails(Lcom/android/server/wm/TaskRecord;)V
    .registers 5
    .param p1, "task"  # Lcom/android/server/wm/TaskRecord;

    .line 125
    iget-object v0, p0, Lcom/android/server/wm/TaskPersister;->mPersisterQueue:Lcom/android/server/wm/PersisterQueue;

    new-instance v1, Lcom/android/server/wm/-$$Lambda$TaskPersister$8TcnoL7JFvpj8NzBRg91ns5JOBw;

    invoke-direct {v1, p1}, Lcom/android/server/wm/-$$Lambda$TaskPersister$8TcnoL7JFvpj8NzBRg91ns5JOBw;-><init>(Lcom/android/server/wm/TaskRecord;)V

    const-class v2, Lcom/android/server/wm/TaskPersister$ImageWriteQueueItem;

    invoke-virtual {v0, v1, v2}, Lcom/android/server/wm/PersisterQueue;->removeItems(Ljava/util/function/Predicate;Ljava/lang/Class;)V

    .line 131
    return-void
.end method

.method static restoreImage(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .registers 3
    .param p0, "filename"  # Ljava/lang/String;

    .line 486
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "restoreImage: restoring "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TaskPersister"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 487
    invoke-static {p0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method private taskIdToTask(ILjava/util/ArrayList;)Lcom/android/server/wm/TaskRecord;
    .registers 7
    .param p1, "taskId"  # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList<",
            "Lcom/android/server/wm/TaskRecord;",
            ">;)",
            "Lcom/android/server/wm/TaskRecord;"
        }
    .end annotation

    .line 263
    .local p2, "tasks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wm/TaskRecord;>;"
    const/4 v0, 0x0

    if-gez p1, :cond_4

    .line 264
    return-object v0

    .line 266
    :cond_4
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .local v1, "taskNdx":I
    :goto_a
    if-ltz v1, :cond_1a

    .line 267
    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/TaskRecord;

    .line 268
    .local v2, "task":Lcom/android/server/wm/TaskRecord;
    iget v3, v2, Lcom/android/server/wm/TaskRecord;->taskId:I

    if-ne v3, p1, :cond_17

    .line 269
    return-object v2

    .line 266
    .end local v2  # "task":Lcom/android/server/wm/TaskRecord;
    :cond_17
    add-int/lit8 v1, v1, -0x1

    goto :goto_a

    .line 272
    .end local v1  # "taskNdx":I
    :cond_1a
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Restore affiliation error looking for taskId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "TaskPersister"

    invoke-static {v2, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 273
    return-object v0
.end method

.method private writeTaskIdsFiles()V
    .registers 11

    .line 452
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 453
    .local v0, "changedTaskIdsPerUser":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/util/SparseBooleanArray;>;"
    iget-object v1, p0, Lcom/android/server/wm/TaskPersister;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v1, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v1

    :try_start_a
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 454
    iget-object v2, p0, Lcom/android/server/wm/TaskPersister;->mRecentTasks:Lcom/android/server/wm/RecentTasks;

    invoke-virtual {v2}, Lcom/android/server/wm/RecentTasks;->usersWithRecentsLoadedLocked()[I

    move-result-object v2

    array-length v3, v2

    const/4 v4, 0x0

    :goto_15
    if-ge v4, v3, :cond_3f

    aget v5, v2, v4

    .line 455
    .local v5, "userId":I
    iget-object v6, p0, Lcom/android/server/wm/TaskPersister;->mRecentTasks:Lcom/android/server/wm/RecentTasks;

    invoke-virtual {v6, v5}, Lcom/android/server/wm/RecentTasks;->getTaskIdsForUser(I)Landroid/util/SparseBooleanArray;

    move-result-object v6

    .line 456
    .local v6, "taskIdsToSave":Landroid/util/SparseBooleanArray;
    iget-object v7, p0, Lcom/android/server/wm/TaskPersister;->mTaskIdsInFile:Landroid/util/SparseArray;

    invoke-virtual {v7, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/util/SparseBooleanArray;

    .line 457
    .local v7, "persistedIdsInFile":Landroid/util/SparseBooleanArray;
    if-eqz v7, :cond_30

    invoke-virtual {v7, v6}, Landroid/util/SparseBooleanArray;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_30

    .line 458
    goto :goto_3c

    .line 460
    :cond_30
    invoke-virtual {v6}, Landroid/util/SparseBooleanArray;->clone()Landroid/util/SparseBooleanArray;

    move-result-object v8

    .line 461
    .local v8, "taskIdsToSaveCopy":Landroid/util/SparseBooleanArray;
    iget-object v9, p0, Lcom/android/server/wm/TaskPersister;->mTaskIdsInFile:Landroid/util/SparseArray;

    invoke-virtual {v9, v5, v8}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 462
    invoke-virtual {v0, v5, v8}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 454
    .end local v5  # "userId":I
    .end local v6  # "taskIdsToSave":Landroid/util/SparseBooleanArray;
    .end local v7  # "persistedIdsInFile":Landroid/util/SparseBooleanArray;
    .end local v8  # "taskIdsToSaveCopy":Landroid/util/SparseBooleanArray;
    :goto_3c
    add-int/lit8 v4, v4, 0x1

    goto :goto_15

    .line 465
    :cond_3f
    monitor-exit v1
    :try_end_40
    .catchall {:try_start_a .. :try_end_40} :catchall_5b

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 466
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_44
    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_5a

    .line 467
    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/SparseBooleanArray;

    .line 468
    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v3

    .line 467
    invoke-virtual {p0, v2, v3}, Lcom/android/server/wm/TaskPersister;->writePersistedTaskIdsForUser(Landroid/util/SparseBooleanArray;I)V

    .line 466
    add-int/lit8 v1, v1, 0x1

    goto :goto_44

    .line 470
    .end local v1  # "i":I
    :cond_5a
    return-void

    .line 465
    :catchall_5b
    move-exception v2

    :try_start_5c
    monitor-exit v1
    :try_end_5d
    .catchall {:try_start_5c .. :try_end_5d} :catchall_5b

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v2
.end method


# virtual methods
.method flush()V
    .registers 2

    .line 218
    iget-object v0, p0, Lcom/android/server/wm/TaskPersister;->mPersisterQueue:Lcom/android/server/wm/PersisterQueue;

    invoke-virtual {v0}, Lcom/android/server/wm/PersisterQueue;->flush()V

    .line 219
    return-void
.end method

.method getTaskDescriptionIcon(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .registers 4
    .param p1, "filePath"  # Ljava/lang/String;

    .line 232
    invoke-direct {p0, p1}, Lcom/android/server/wm/TaskPersister;->getImageFromWriteQueue(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 233
    .local v0, "icon":Landroid/graphics/Bitmap;
    if-eqz v0, :cond_7

    .line 234
    return-object v0

    .line 236
    :cond_7
    invoke-static {p1}, Lcom/android/server/wm/TaskPersister;->restoreImage(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v1

    return-object v1
.end method

.method loadPersistedTaskIdsForUser(I)Landroid/util/SparseBooleanArray;
    .registers 12
    .param p1, "userId"  # I

    .line 135
    iget-object v0, p0, Lcom/android/server/wm/TaskPersister;->mTaskIdsInFile:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_15

    .line 136
    iget-object v0, p0, Lcom/android/server/wm/TaskPersister;->mTaskIdsInFile:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/SparseBooleanArray;

    invoke-virtual {v0}, Landroid/util/SparseBooleanArray;->clone()Landroid/util/SparseBooleanArray;

    move-result-object v0

    return-object v0

    .line 138
    :cond_15
    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    .line 139
    .local v0, "persistedTaskIds":Landroid/util/SparseBooleanArray;
    iget-object v1, p0, Lcom/android/server/wm/TaskPersister;->mIoLock:Ljava/lang/Object;

    monitor-enter v1

    .line 140
    const/4 v2, 0x0

    .line 143
    .local v2, "reader":Ljava/io/BufferedReader;
    :try_start_1e
    new-instance v3, Ljava/io/BufferedReader;

    new-instance v4, Ljava/io/FileReader;

    invoke-direct {p0, p1}, Lcom/android/server/wm/TaskPersister;->getUserPersistedTaskIdsFile(I)Ljava/io/File;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-direct {v3, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    move-object v2, v3

    .line 144
    :cond_2d
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    move-object v4, v3

    .local v4, "line":Ljava/lang/String;
    if-eqz v3, :cond_4b

    .line 145
    const-string v3, "\\s+"

    invoke-virtual {v4, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    array-length v5, v3

    const/4 v6, 0x0

    :goto_3c
    if-ge v6, v5, :cond_2d

    aget-object v7, v3, v6

    .line 146
    .local v7, "taskIdString":Ljava/lang/String;
    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    .line 147
    .local v8, "id":I
    const/4 v9, 0x1

    invoke-virtual {v0, v8, v9}, Landroid/util/SparseBooleanArray;->put(IZ)V
    :try_end_48
    .catch Ljava/io/FileNotFoundException; {:try_start_1e .. :try_end_48} :catch_71
    .catch Ljava/lang/Exception; {:try_start_1e .. :try_end_48} :catch_51
    .catchall {:try_start_1e .. :try_end_48} :catchall_4f

    .line 145
    .end local v7  # "taskIdString":Ljava/lang/String;
    .end local v8  # "id":I
    add-int/lit8 v6, v6, 0x1

    goto :goto_3c

    .line 155
    :cond_4b
    :try_start_4b
    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V
    :try_end_4e
    .catchall {:try_start_4b .. :try_end_4e} :catchall_81

    .line 156
    goto :goto_76

    .line 155
    .end local v4  # "line":Ljava/lang/String;
    :catchall_4f
    move-exception v3

    goto :goto_6d

    .line 152
    :catch_51
    move-exception v3

    .line 153
    .local v3, "e":Ljava/lang/Exception;
    :try_start_52
    const-string v4, "TaskPersister"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Error while reading taskIds file for user "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_68
    .catchall {:try_start_52 .. :try_end_68} :catchall_4f

    .line 155
    nop

    .end local v3  # "e":Ljava/lang/Exception;
    :try_start_69
    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    goto :goto_75

    :goto_6d
    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .end local v0  # "persistedTaskIds":Landroid/util/SparseBooleanArray;
    .end local p0  # "this":Lcom/android/server/wm/TaskPersister;
    .end local p1  # "userId":I
    throw v3

    .line 150
    .restart local v0  # "persistedTaskIds":Landroid/util/SparseBooleanArray;
    .restart local p0  # "this":Lcom/android/server/wm/TaskPersister;
    .restart local p1  # "userId":I
    :catch_71
    move-exception v3

    .line 155
    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 156
    :goto_75
    nop

    .line 157
    .end local v2  # "reader":Ljava/io/BufferedReader;
    :goto_76
    monitor-exit v1
    :try_end_77
    .catchall {:try_start_69 .. :try_end_77} :catchall_81

    .line 158
    iget-object v1, p0, Lcom/android/server/wm/TaskPersister;->mTaskIdsInFile:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 159
    invoke-virtual {v0}, Landroid/util/SparseBooleanArray;->clone()Landroid/util/SparseBooleanArray;

    move-result-object v1

    return-object v1

    .line 157
    :catchall_81
    move-exception v2

    :try_start_82
    monitor-exit v1
    :try_end_83
    .catchall {:try_start_82 .. :try_end_83} :catchall_81

    throw v2
.end method

.method public onPreProcessItem(Z)V
    .registers 6
    .param p1, "queueEmpty"  # Z

    .line 408
    if-eqz p1, :cond_54

    .line 409
    const-string v0, "TaskPersister"

    const-string v1, "Looking for obsolete files."

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 410
    iget-object v0, p0, Lcom/android/server/wm/TaskPersister;->mTmpTaskIds:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->clear()V

    .line 411
    iget-object v0, p0, Lcom/android/server/wm/TaskPersister;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_13
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 412
    const-string v1, "TaskPersister"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mRecents="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/wm/TaskPersister;->mRecentTasks:Lcom/android/server/wm/RecentTasks;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 413
    iget-object v1, p0, Lcom/android/server/wm/TaskPersister;->mRecentTasks:Lcom/android/server/wm/RecentTasks;

    iget-object v2, p0, Lcom/android/server/wm/TaskPersister;->mTmpTaskIds:Landroid/util/ArraySet;

    invoke-virtual {v1, v2}, Lcom/android/server/wm/RecentTasks;->getPersistableTaskIds(Landroid/util/ArraySet;)V

    .line 414
    iget-object v1, p0, Lcom/android/server/wm/TaskPersister;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v1, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, p0, Lcom/android/server/wm/TaskPersister;->mTmpTaskIds:Landroid/util/ArraySet;

    iget-object v3, p0, Lcom/android/server/wm/TaskPersister;->mRecentTasks:Lcom/android/server/wm/RecentTasks;

    .line 415
    invoke-virtual {v3}, Lcom/android/server/wm/RecentTasks;->usersWithRecentsLoadedLocked()[I

    move-result-object v3

    .line 414
    invoke-virtual {v1, v2, v3}, Lcom/android/server/wm/WindowManagerService;->removeObsoleteTaskFiles(Landroid/util/ArraySet;[I)V

    .line 416
    monitor-exit v0
    :try_end_45
    .catchall {:try_start_13 .. :try_end_45} :catchall_4e

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 417
    iget-object v0, p0, Lcom/android/server/wm/TaskPersister;->mTmpTaskIds:Landroid/util/ArraySet;

    invoke-direct {p0, v0}, Lcom/android/server/wm/TaskPersister;->removeObsoleteFiles(Landroid/util/ArraySet;)V

    goto :goto_54

    .line 416
    :catchall_4e
    move-exception v1

    :try_start_4f
    monitor-exit v0
    :try_end_50
    .catchall {:try_start_4f .. :try_end_50} :catchall_4e

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1

    .line 419
    :cond_54
    :goto_54
    invoke-direct {p0}, Lcom/android/server/wm/TaskPersister;->writeTaskIdsFiles()V

    .line 420
    return-void
.end method

.method restoreTasksForUserLocked(ILandroid/util/SparseBooleanArray;)Ljava/util/List;
    .registers 22
    .param p1, "userId"  # I
    .param p2, "preaddedTasks"  # Landroid/util/SparseBooleanArray;
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

    .line 277
    move-object/from16 v1, p0

    move/from16 v2, p1

    const-string v3, "Deleting file="

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v4, v0

    .line 278
    .local v4, "tasks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wm/TaskRecord;>;"
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    move-object v5, v0

    .line 280
    .local v5, "recoveredTaskIds":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/Integer;>;"
    invoke-static/range {p1 .. p1}, Lcom/android/server/wm/TaskPersister;->getUserTasksDir(I)Ljava/io/File;

    move-result-object v6

    .line 282
    .local v6, "userTasksDir":Ljava/io/File;
    invoke-virtual {v6}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v7

    .line 283
    .local v7, "recentFiles":[Ljava/io/File;
    const-string v8, "TaskPersister"

    if-nez v7, :cond_33

    .line 284
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "restoreTasksForUserLocked: Unable to list files from "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v8, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 285
    return-object v4

    .line 288
    :cond_33
    const/4 v0, 0x0

    move v9, v0

    .local v9, "taskNdx":I
    :goto_35
    array-length v0, v7

    const/4 v10, 0x1

    if-ge v9, v0, :cond_2aa

    .line 289
    aget-object v11, v7, v9

    .line 291
    .local v11, "taskFile":Ljava/io/File;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "restoreTasksForUserLocked: userId="

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v12, ", taskFile="

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 292
    invoke-virtual {v11}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 291
    invoke-static {v8, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 295
    invoke-virtual {v11}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v12, "_task.xml"

    invoke-virtual {v0, v12}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_6d

    .line 296
    move-object/from16 v16, v7

    move/from16 v17, v9

    goto/16 :goto_2a4

    .line 299
    :cond_6d
    :try_start_6d
    invoke-virtual {v11}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    .line 301
    invoke-virtual {v11}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v13

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v12

    sub-int/2addr v13, v12

    .line 299
    const/4 v12, 0x0

    invoke-virtual {v0, v12, v13}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 302
    .local v0, "taskId":I
    move-object/from16 v13, p2

    invoke-virtual {v13, v0, v12}, Landroid/util/SparseBooleanArray;->get(IZ)Z

    move-result v12
    :try_end_8d
    .catch Ljava/lang/NumberFormatException; {:try_start_6d .. :try_end_8d} :catch_299

    if-eqz v12, :cond_b5

    .line 303
    :try_start_8f
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Task #"

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v12, " has already been created so we don\'t restore again"

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v10}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_a8
    .catch Ljava/lang/NumberFormatException; {:try_start_8f .. :try_end_a8} :catch_ae

    .line 305
    move-object/from16 v16, v7

    move/from16 v17, v9

    goto/16 :goto_2a4

    .line 307
    .end local v0  # "taskId":I
    :catch_ae
    move-exception v0

    move-object/from16 v16, v7

    move/from16 v17, v9

    goto/16 :goto_29e

    .line 310
    :cond_b5
    nop

    .line 312
    const/4 v12, 0x0

    .line 313
    .local v12, "reader":Ljava/io/BufferedReader;
    const/4 v14, 0x0

    .line 315
    .local v14, "deleteFile":Z
    :try_start_b8
    new-instance v0, Ljava/io/BufferedReader;

    new-instance v15, Ljava/io/FileReader;

    invoke-direct {v15, v11}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-direct {v0, v15}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    move-object v12, v0

    .line 316
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v0

    .line 317
    .local v0, "in":Lorg/xmlpull/v1/XmlPullParser;
    invoke-interface {v0, v12}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/Reader;)V

    .line 320
    :goto_ca
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v15

    move/from16 v16, v15

    .local v16, "event":I
    if-eq v15, v10, :cond_1ef

    const/4 v15, 0x3

    move/from16 v10, v16

    .end local v16  # "event":I
    .local v10, "event":I
    if-eq v10, v15, :cond_1e8

    .line 322
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v15
    :try_end_db
    .catch Ljava/lang/Exception; {:try_start_b8 .. :try_end_db} :catch_223
    .catchall {:try_start_b8 .. :try_end_db} :catchall_21d

    .line 323
    .local v15, "name":Ljava/lang/String;
    move-object/from16 v16, v7

    .end local v7  # "recentFiles":[Ljava/io/File;
    .local v16, "recentFiles":[Ljava/io/File;
    const/4 v7, 0x2

    if-ne v10, v7, :cond_1cd

    .line 324
    :try_start_e0
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "restoreTasksForUserLocked: START_TAG name="

    invoke-virtual {v7, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v8, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 325
    const-string v7, "task"

    invoke-virtual {v7, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1a3

    .line 326
    iget-object v7, v1, Lcom/android/server/wm/TaskPersister;->mStackSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    invoke-static {v0, v7}, Lcom/android/server/wm/TaskRecord;->restoreFromXml(Lorg/xmlpull/v1/XmlPullParser;Lcom/android/server/wm/ActivityStackSupervisor;)Lcom/android/server/wm/TaskRecord;

    move-result-object v7

    .line 327
    .local v7, "task":Lcom/android/server/wm/TaskRecord;
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_107
    .catch Ljava/lang/Exception; {:try_start_e0 .. :try_end_107} :catch_1c9
    .catchall {:try_start_e0 .. :try_end_107} :catchall_1c4

    move/from16 v17, v9

    .end local v9  # "taskNdx":I
    .local v17, "taskNdx":I
    :try_start_109
    const-string v9, "restoreTasksForUserLocked: restored task="

    invoke-virtual {v13, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 329
    if-eqz v7, :cond_17d

    .line 335
    iget v9, v7, Lcom/android/server/wm/TaskRecord;->taskId:I

    .line 336
    .local v9, "taskId":I
    iget-object v13, v1, Lcom/android/server/wm/TaskPersister;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v13, v13, Lcom/android/server/wm/ActivityTaskManagerService;->mRootActivityContainer:Lcom/android/server/wm/RootActivityContainer;
    :try_end_120
    .catch Ljava/lang/Exception; {:try_start_109 .. :try_end_120} :catch_1a0
    .catchall {:try_start_109 .. :try_end_120} :catchall_279

    move-object/from16 v18, v3

    const/4 v3, 0x1

    :try_start_123
    invoke-virtual {v13, v9, v3}, Lcom/android/server/wm/RootActivityContainer;->anyTaskForId(II)Lcom/android/server/wm/TaskRecord;

    move-result-object v13

    if-eqz v13, :cond_143

    .line 339
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Existing task with taskId "

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v13, "found"

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v8, v3}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_17c

    .line 340
    :cond_143
    iget v3, v7, Lcom/android/server/wm/TaskRecord;->userId:I

    if-eq v2, v3, :cond_16a

    .line 342
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Task with userId "

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v13, v7, Lcom/android/server/wm/TaskRecord;->userId:I

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v13, " found in "

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 343
    invoke-virtual {v6}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 342
    invoke-static {v8, v3}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_17c

    .line 346
    :cond_16a
    iget-object v3, v1, Lcom/android/server/wm/TaskPersister;->mStackSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    invoke-virtual {v3, v9, v2}, Lcom/android/server/wm/ActivityStackSupervisor;->setNextTaskIdForUserLocked(II)V

    .line 347
    const/4 v3, 0x1

    iput-boolean v3, v7, Lcom/android/server/wm/TaskRecord;->isPersistable:Z

    .line 348
    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 349
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v5, v3}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 351
    .end local v9  # "taskId":I
    :goto_17c
    goto :goto_19f

    .line 352
    :cond_17d
    move-object/from16 v18, v3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "restoreTasksForUserLocked: Unable to restore taskFile="

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v9, ": "

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 353
    invoke-direct {v1, v11}, Lcom/android/server/wm/TaskPersister;->fileToString(Ljava/io/File;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 352
    invoke-static {v8, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 355
    .end local v7  # "task":Lcom/android/server/wm/TaskRecord;
    :goto_19f
    goto :goto_1d1

    .line 362
    .end local v0  # "in":Lorg/xmlpull/v1/XmlPullParser;
    .end local v10  # "event":I
    .end local v15  # "name":Ljava/lang/String;
    :catch_1a0
    move-exception v0

    goto/16 :goto_228

    .line 356
    .end local v17  # "taskNdx":I
    .restart local v0  # "in":Lorg/xmlpull/v1/XmlPullParser;
    .local v9, "taskNdx":I
    .restart local v10  # "event":I
    .restart local v15  # "name":Ljava/lang/String;
    :cond_1a3
    move-object/from16 v18, v3

    move/from16 v17, v9

    .end local v9  # "taskNdx":I
    .restart local v17  # "taskNdx":I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "restoreTasksForUserLocked: Unknown xml event="

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " name="

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v8, v3}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1d1

    .line 367
    .end local v0  # "in":Lorg/xmlpull/v1/XmlPullParser;
    .end local v10  # "event":I
    .end local v15  # "name":Ljava/lang/String;
    .end local v17  # "taskNdx":I
    .restart local v9  # "taskNdx":I
    :catchall_1c4
    move-exception v0

    move/from16 v17, v9

    .end local v9  # "taskNdx":I
    .restart local v17  # "taskNdx":I
    goto/16 :goto_27a

    .line 362
    .end local v17  # "taskNdx":I
    .restart local v9  # "taskNdx":I
    :catch_1c9
    move-exception v0

    move/from16 v17, v9

    .end local v9  # "taskNdx":I
    .restart local v17  # "taskNdx":I
    goto :goto_228

    .line 323
    .end local v17  # "taskNdx":I
    .restart local v0  # "in":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v9  # "taskNdx":I
    .restart local v10  # "event":I
    .restart local v15  # "name":Ljava/lang/String;
    :cond_1cd
    move-object/from16 v18, v3

    move/from16 v17, v9

    .line 360
    .end local v9  # "taskNdx":I
    .restart local v17  # "taskNdx":I
    :goto_1d1
    invoke-static {v0}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V
    :try_end_1d4
    .catch Ljava/lang/Exception; {:try_start_123 .. :try_end_1d4} :catch_1e4
    .catchall {:try_start_123 .. :try_end_1d4} :catchall_1df

    .line 361
    .end local v15  # "name":Ljava/lang/String;
    move-object/from16 v13, p2

    move-object/from16 v7, v16

    move/from16 v9, v17

    move-object/from16 v3, v18

    const/4 v10, 0x1

    goto/16 :goto_ca

    .line 367
    .end local v0  # "in":Lorg/xmlpull/v1/XmlPullParser;
    .end local v10  # "event":I
    :catchall_1df
    move-exception v0

    move-object/from16 v3, v18

    goto/16 :goto_27a

    .line 362
    :catch_1e4
    move-exception v0

    move-object/from16 v3, v18

    goto :goto_228

    .line 320
    .end local v16  # "recentFiles":[Ljava/io/File;
    .end local v17  # "taskNdx":I
    .restart local v0  # "in":Lorg/xmlpull/v1/XmlPullParser;
    .local v7, "recentFiles":[Ljava/io/File;
    .restart local v9  # "taskNdx":I
    .restart local v10  # "event":I
    :cond_1e8
    move-object/from16 v18, v3

    move-object/from16 v16, v7

    move/from16 v17, v9

    .end local v7  # "recentFiles":[Ljava/io/File;
    .end local v9  # "taskNdx":I
    .restart local v16  # "recentFiles":[Ljava/io/File;
    .restart local v17  # "taskNdx":I
    goto :goto_1f7

    .end local v10  # "event":I
    .end local v17  # "taskNdx":I
    .restart local v7  # "recentFiles":[Ljava/io/File;
    .restart local v9  # "taskNdx":I
    .local v16, "event":I
    :cond_1ef
    move-object/from16 v18, v3

    move/from16 v17, v9

    move/from16 v10, v16

    move-object/from16 v16, v7

    .line 367
    .end local v0  # "in":Lorg/xmlpull/v1/XmlPullParser;
    .end local v7  # "recentFiles":[Ljava/io/File;
    .end local v9  # "taskNdx":I
    .local v16, "recentFiles":[Ljava/io/File;
    .restart local v17  # "taskNdx":I
    :goto_1f7
    invoke-static {v12}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 368
    if-eqz v14, :cond_219

    .line 369
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v3, v18

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v8, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 370
    invoke-virtual {v11}, Ljava/io/File;->delete()Z

    goto/16 :goto_2a4

    .line 368
    :cond_219
    move-object/from16 v3, v18

    goto/16 :goto_2a4

    .line 367
    .end local v16  # "recentFiles":[Ljava/io/File;
    .end local v17  # "taskNdx":I
    .restart local v7  # "recentFiles":[Ljava/io/File;
    .restart local v9  # "taskNdx":I
    :catchall_21d
    move-exception v0

    move-object/from16 v16, v7

    move/from16 v17, v9

    .end local v7  # "recentFiles":[Ljava/io/File;
    .end local v9  # "taskNdx":I
    .restart local v16  # "recentFiles":[Ljava/io/File;
    .restart local v17  # "taskNdx":I
    goto :goto_27a

    .line 362
    .end local v16  # "recentFiles":[Ljava/io/File;
    .end local v17  # "taskNdx":I
    .restart local v7  # "recentFiles":[Ljava/io/File;
    .restart local v9  # "taskNdx":I
    :catch_223
    move-exception v0

    move-object/from16 v16, v7

    move/from16 v17, v9

    .line 363
    .end local v7  # "recentFiles":[Ljava/io/File;
    .end local v9  # "taskNdx":I
    .local v0, "e":Ljava/lang/Exception;
    .restart local v16  # "recentFiles":[Ljava/io/File;
    .restart local v17  # "taskNdx":I
    :goto_228
    :try_start_228
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Unable to parse "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v9, ". Error "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v8, v7, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 364
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Failing file: "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {v1, v11}, Lcom/android/server/wm/TaskPersister;->fileToString(Ljava/io/File;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v8, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_259
    .catchall {:try_start_228 .. :try_end_259} :catchall_279

    .line 365
    const/4 v0, 0x1

    .line 367
    .end local v14  # "deleteFile":Z
    .local v0, "deleteFile":Z
    invoke-static {v12}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 368
    if-eqz v0, :cond_2a4

    .line 369
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v8, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 370
    invoke-virtual {v11}, Ljava/io/File;->delete()Z

    goto :goto_2a4

    .line 367
    .end local v0  # "deleteFile":Z
    .restart local v14  # "deleteFile":Z
    :catchall_279
    move-exception v0

    :goto_27a
    invoke-static {v12}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 368
    if-eqz v14, :cond_298

    .line 369
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v8, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 370
    invoke-virtual {v11}, Ljava/io/File;->delete()Z

    :cond_298
    throw v0

    .line 307
    .end local v12  # "reader":Ljava/io/BufferedReader;
    .end local v14  # "deleteFile":Z
    .end local v16  # "recentFiles":[Ljava/io/File;
    .end local v17  # "taskNdx":I
    .restart local v7  # "recentFiles":[Ljava/io/File;
    .restart local v9  # "taskNdx":I
    :catch_299
    move-exception v0

    move-object/from16 v16, v7

    move/from16 v17, v9

    .line 308
    .end local v7  # "recentFiles":[Ljava/io/File;
    .end local v9  # "taskNdx":I
    .local v0, "e":Ljava/lang/NumberFormatException;
    .restart local v16  # "recentFiles":[Ljava/io/File;
    .restart local v17  # "taskNdx":I
    :goto_29e
    const-string v7, "Unexpected task file name"

    invoke-static {v8, v7, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 309
    nop

    .line 288
    .end local v0  # "e":Ljava/lang/NumberFormatException;
    .end local v11  # "taskFile":Ljava/io/File;
    :cond_2a4
    :goto_2a4
    add-int/lit8 v9, v17, 0x1

    move-object/from16 v7, v16

    .end local v17  # "taskNdx":I
    .restart local v9  # "taskNdx":I
    goto/16 :goto_35

    .end local v16  # "recentFiles":[Ljava/io/File;
    .restart local v7  # "recentFiles":[Ljava/io/File;
    :cond_2aa
    move-object/from16 v16, v7

    move/from16 v17, v9

    .line 380
    .end local v7  # "recentFiles":[Ljava/io/File;
    .end local v9  # "taskNdx":I
    .restart local v16  # "recentFiles":[Ljava/io/File;
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v3, 0x1

    sub-int/2addr v0, v3

    .local v0, "taskNdx":I
    :goto_2b4
    if-ltz v0, :cond_2d1

    .line 381
    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/TaskRecord;

    .line 382
    .local v3, "task":Lcom/android/server/wm/TaskRecord;
    iget v7, v3, Lcom/android/server/wm/TaskRecord;->mPrevAffiliateTaskId:I

    invoke-direct {v1, v7, v4}, Lcom/android/server/wm/TaskPersister;->taskIdToTask(ILjava/util/ArrayList;)Lcom/android/server/wm/TaskRecord;

    move-result-object v7

    invoke-virtual {v3, v7}, Lcom/android/server/wm/TaskRecord;->setPrevAffiliate(Lcom/android/server/wm/TaskRecord;)V

    .line 383
    iget v7, v3, Lcom/android/server/wm/TaskRecord;->mNextAffiliateTaskId:I

    invoke-direct {v1, v7, v4}, Lcom/android/server/wm/TaskPersister;->taskIdToTask(ILjava/util/ArrayList;)Lcom/android/server/wm/TaskRecord;

    move-result-object v7

    invoke-virtual {v3, v7}, Lcom/android/server/wm/TaskRecord;->setNextAffiliate(Lcom/android/server/wm/TaskRecord;)V

    .line 380
    .end local v3  # "task":Lcom/android/server/wm/TaskRecord;
    add-int/lit8 v0, v0, -0x1

    goto :goto_2b4

    .line 386
    .end local v0  # "taskNdx":I
    :cond_2d1
    new-instance v0, Lcom/android/server/wm/TaskPersister$1;

    invoke-direct {v0, v1}, Lcom/android/server/wm/TaskPersister$1;-><init>(Lcom/android/server/wm/TaskPersister;)V

    invoke-static {v4, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 399
    return-object v4
.end method

.method saveImage(Landroid/graphics/Bitmap;Ljava/lang/String;)V
    .registers 6
    .param p1, "image"  # Landroid/graphics/Bitmap;
    .param p2, "filePath"  # Ljava/lang/String;

    .line 222
    iget-object v0, p0, Lcom/android/server/wm/TaskPersister;->mPersisterQueue:Lcom/android/server/wm/PersisterQueue;

    new-instance v1, Lcom/android/server/wm/TaskPersister$ImageWriteQueueItem;

    invoke-direct {v1, p2, p1}, Lcom/android/server/wm/TaskPersister$ImageWriteQueueItem;-><init>(Ljava/lang/String;Landroid/graphics/Bitmap;)V

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/server/wm/PersisterQueue;->updateLastOrAddItem(Lcom/android/server/wm/PersisterQueue$WriteQueueItem;Z)V

    .line 225
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "saveImage: filePath="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " now="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 226
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " Callers="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x4

    invoke-static {v1}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 225
    const-string v1, "TaskPersister"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 228
    return-void
.end method

.method unloadUserDataFromMemory(I)V
    .registers 3
    .param p1, "userId"  # I

    .line 188
    iget-object v0, p0, Lcom/android/server/wm/TaskPersister;->mTaskIdsInFile:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->delete(I)V

    .line 189
    return-void
.end method

.method wakeup(Lcom/android/server/wm/TaskRecord;Z)V
    .registers 8
    .param p1, "task"  # Lcom/android/server/wm/TaskRecord;
    .param p2, "flush"  # Z

    .line 192
    iget-object v0, p0, Lcom/android/server/wm/TaskPersister;->mPersisterQueue:Lcom/android/server/wm/PersisterQueue;

    monitor-enter v0

    .line 193
    if-eqz p1, :cond_30

    .line 194
    :try_start_5
    iget-object v1, p0, Lcom/android/server/wm/TaskPersister;->mPersisterQueue:Lcom/android/server/wm/PersisterQueue;

    new-instance v2, Lcom/android/server/wm/-$$Lambda$TaskPersister$xdLXwftXa6l84QTg1zpxMnmtQ0g;

    invoke-direct {v2, p1}, Lcom/android/server/wm/-$$Lambda$TaskPersister$xdLXwftXa6l84QTg1zpxMnmtQ0g;-><init>(Lcom/android/server/wm/TaskRecord;)V

    const-class v3, Lcom/android/server/wm/TaskPersister$TaskWriteQueueItem;

    invoke-virtual {v1, v2, v3}, Lcom/android/server/wm/PersisterQueue;->findLastItem(Ljava/util/function/Predicate;Ljava/lang/Class;)Lcom/android/server/wm/PersisterQueue$WriteQueueItem;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/TaskPersister$TaskWriteQueueItem;

    .line 196
    .local v1, "item":Lcom/android/server/wm/TaskPersister$TaskWriteQueueItem;
    if-eqz v1, :cond_1d

    iget-boolean v2, p1, Lcom/android/server/wm/TaskRecord;->inRecents:Z

    if-nez v2, :cond_1d

    .line 197
    invoke-direct {p0, p1}, Lcom/android/server/wm/TaskPersister;->removeThumbnails(Lcom/android/server/wm/TaskRecord;)V

    .line 200
    :cond_1d
    if-nez v1, :cond_2f

    iget-boolean v2, p1, Lcom/android/server/wm/TaskRecord;->isPersistable:Z

    if-eqz v2, :cond_2f

    .line 201
    iget-object v2, p0, Lcom/android/server/wm/TaskPersister;->mPersisterQueue:Lcom/android/server/wm/PersisterQueue;

    new-instance v3, Lcom/android/server/wm/TaskPersister$TaskWriteQueueItem;

    iget-object v4, p0, Lcom/android/server/wm/TaskPersister;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-direct {v3, p1, v4}, Lcom/android/server/wm/TaskPersister$TaskWriteQueueItem;-><init>(Lcom/android/server/wm/TaskRecord;Lcom/android/server/wm/ActivityTaskManagerService;)V

    invoke-virtual {v2, v3, p2}, Lcom/android/server/wm/PersisterQueue;->addItem(Lcom/android/server/wm/PersisterQueue$WriteQueueItem;Z)V

    .line 203
    .end local v1  # "item":Lcom/android/server/wm/TaskPersister$TaskWriteQueueItem;
    :cond_2f
    goto :goto_37

    .line 206
    :cond_30
    iget-object v1, p0, Lcom/android/server/wm/TaskPersister;->mPersisterQueue:Lcom/android/server/wm/PersisterQueue;

    sget-object v2, Lcom/android/server/wm/PersisterQueue;->EMPTY_ITEM:Lcom/android/server/wm/PersisterQueue$WriteQueueItem;

    invoke-virtual {v1, v2, p2}, Lcom/android/server/wm/PersisterQueue;->addItem(Lcom/android/server/wm/PersisterQueue$WriteQueueItem;Z)V

    .line 209
    :goto_37
    const-string v1, "TaskPersister"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "wakeup: task="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " flush="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, " Callers="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v3, 0x4

    .line 210
    invoke-static {v3}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 209
    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 212
    monitor-exit v0
    :try_end_63
    .catchall {:try_start_5 .. :try_end_63} :catchall_69

    .line 214
    iget-object v0, p0, Lcom/android/server/wm/TaskPersister;->mPersisterQueue:Lcom/android/server/wm/PersisterQueue;

    invoke-virtual {v0}, Lcom/android/server/wm/PersisterQueue;->yieldIfQueueTooDeep()V

    .line 215
    return-void

    .line 212
    :catchall_69
    move-exception v1

    :try_start_6a
    monitor-exit v0
    :try_end_6b
    .catchall {:try_start_6a .. :try_end_6b} :catchall_69

    throw v1
.end method

.method writePersistedTaskIdsForUser(Landroid/util/SparseBooleanArray;I)V
    .registers 10
    .param p1, "taskIds"  # Landroid/util/SparseBooleanArray;
    .param p2, "userId"  # I
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 165
    if-gez p2, :cond_3

    .line 166
    return-void

    .line 168
    :cond_3
    invoke-direct {p0, p2}, Lcom/android/server/wm/TaskPersister;->getUserPersistedTaskIdsFile(I)Ljava/io/File;

    move-result-object v0

    .line 169
    .local v0, "persistedTaskIdsFile":Ljava/io/File;
    iget-object v1, p0, Lcom/android/server/wm/TaskPersister;->mIoLock:Ljava/lang/Object;

    monitor-enter v1

    .line 170
    const/4 v2, 0x0

    .line 172
    .local v2, "writer":Ljava/io/BufferedWriter;
    :try_start_b
    new-instance v3, Ljava/io/BufferedWriter;

    new-instance v4, Ljava/io/FileWriter;

    invoke-direct {v4, v0}, Ljava/io/FileWriter;-><init>(Ljava/io/File;)V

    invoke-direct {v3, v4}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    move-object v2, v3

    .line 173
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_17
    invoke-virtual {p1}, Landroid/util/SparseBooleanArray;->size()I

    move-result v4

    if-ge v3, v4, :cond_34

    .line 174
    invoke-virtual {p1, v3}, Landroid/util/SparseBooleanArray;->valueAt(I)Z

    move-result v4

    if-eqz v4, :cond_31

    .line 175
    invoke-virtual {p1, v3}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 176
    invoke-virtual {v2}, Ljava/io/BufferedWriter;->newLine()V
    :try_end_31
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_31} :catch_3a
    .catchall {:try_start_b .. :try_end_31} :catchall_38

    .line 173
    :cond_31
    add-int/lit8 v3, v3, 0x1

    goto :goto_17

    .line 182
    .end local v3  # "i":I
    :cond_34
    :try_start_34
    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V
    :try_end_37
    .catchall {:try_start_34 .. :try_end_37} :catchall_5c

    .line 183
    :goto_37
    goto :goto_56

    .line 182
    :catchall_38
    move-exception v3

    goto :goto_58

    .line 179
    :catch_3a
    move-exception v3

    .line 180
    .local v3, "e":Ljava/lang/Exception;
    :try_start_3b
    const-string v4, "TaskPersister"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Error while writing taskIds file for user "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_51
    .catchall {:try_start_3b .. :try_end_51} :catchall_38

    .line 182
    nop

    .end local v3  # "e":Ljava/lang/Exception;
    :try_start_52
    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    goto :goto_37

    .line 184
    .end local v2  # "writer":Ljava/io/BufferedWriter;
    :goto_56
    monitor-exit v1

    .line 185
    return-void

    .line 182
    .restart local v2  # "writer":Ljava/io/BufferedWriter;
    :goto_58
    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .end local v0  # "persistedTaskIdsFile":Ljava/io/File;
    .end local p0  # "this":Lcom/android/server/wm/TaskPersister;
    .end local p1  # "taskIds":Landroid/util/SparseBooleanArray;
    .end local p2  # "userId":I
    throw v3

    .line 184
    .end local v2  # "writer":Ljava/io/BufferedWriter;
    .restart local v0  # "persistedTaskIdsFile":Ljava/io/File;
    .restart local p0  # "this":Lcom/android/server/wm/TaskPersister;
    .restart local p1  # "taskIds":Landroid/util/SparseBooleanArray;
    .restart local p2  # "userId":I
    :catchall_5c
    move-exception v2

    monitor-exit v1
    :try_end_5e
    .catchall {:try_start_52 .. :try_end_5e} :catchall_5c

    throw v2
.end method
